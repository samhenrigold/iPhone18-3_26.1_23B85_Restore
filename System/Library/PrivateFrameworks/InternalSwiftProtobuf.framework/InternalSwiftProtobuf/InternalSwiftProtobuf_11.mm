uint64_t sub_1AC5078C0()
{
  result = sub_1AC50A208();
  if (v1)
  {
    result = sub_1AC50A480();
    if ((result & 1) == 0)
    {
      result = sub_1AC50A4D4();
      if ((result & 0x100000000) != 0)
      {
        v2 = sub_1AC477954();
        v3 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v2);
        return OUTLINED_FUNCTION_15(v3, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1AC507934()
{
  OUTLINED_FUNCTION_6_24();
  if (v1 || *v0 != 91)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v0);
  sub_1AC509980();
  return 1;
}

uint64_t sub_1AC507970()
{
  OUTLINED_FUNCTION_6_24();
  if (v1 || *v0 != 93)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v0);
  sub_1AC509980();
  return 1;
}

uint64_t sub_1AC5079AC()
{
  result = sub_1AC50A208();
  if (v1)
  {
    result = sub_1AC50A480();
    if ((result & 1) == 0)
    {
      result = sub_1AC50A4D4();
      if ((result & 0x100000000) != 0)
      {
        v2 = sub_1AC477954();
        v3 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v2);
        return OUTLINED_FUNCTION_15(v3, v4);
      }
    }
  }

  return result;
}

unint64_t sub_1AC507A20(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48))
  {
    goto LABEL_10;
  }

  if (*v3 != 45)
  {
    result = sub_1AC507AC8(a1);
    if (v2 || (result & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_10:
    v9 = sub_1AC477954();
    v10 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v9);
    return OUTLINED_FUNCTION_15(v10, v11);
  }

  OUTLINED_FUNCTION_12_18();
  if (v5 == v6 || *v5 - 58 <= 0xFFFFFFF5)
  {
    goto LABEL_10;
  }

  result = sub_1AC507AC8(v4);
  if (!v2)
  {
    v8 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      return -result;
    }

    result = 0x8000000000000000;
    if (v8 != 0x8000000000000000)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t sub_1AC507AC8(uint64_t a1)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v4 == v3)
  {
LABEL_14:
    v11 = sub_1AC477954();
    v12 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v11);
    OUTLINED_FUNCTION_15(v12, v13);
    return v2;
  }

  v5 = v4 + 1;
  v6 = *v4;
  *(v1 + 40) = v4 + 1;
  if (v6 != 48)
  {
    if ((v6 - 58) >= 0xF7u)
    {
      v2 = (v6 - 48);
      v14 = 0x1999999999999999;
      while (v5 != v3 && (*v5 - 58) > 0xF5u)
      {
        if (v2 > v14 || __CFADD__((*v5 - 48), 10 * v2))
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_18();
        v2 = v16 + v15;
        if (__CFADD__(v16, v15))
        {
          __break(1u);
          return 0;
        }
      }

      goto LABEL_30;
    }

    goto LABEL_14;
  }

  if (v5 != v3)
  {
    if (*v5 == 120)
    {
      v7 = (v4 + 2);
      *(v1 + 40) = v4 + 2;
      if (v4 + 2 == v3)
      {
        v2 = 0;
      }

      else
      {
        v2 = 0;
        do
        {
          v8 = *v7;
          if ((*v7 - 58) <= 0xF5u && (v8 - 103) <= 0xF9u && (v8 - 71) <= 0xF9u)
          {
            break;
          }

          if (v2 >> 60)
          {
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_12_18();
          v2 = 16 * v2 + v9;
        }

        while (v7 != v10);
      }
    }

    else
    {
      v2 = 0;
      while (v5 != v3 && (*v5 - 56) > 0xF7u)
      {
        if (v2 >> 61)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_18();
        v2 = v17 | (8 * v2);
      }
    }

LABEL_30:
    sub_1AC509980();
    return v2;
  }

  return 0;
}

uint64_t sub_1AC507C74(uint64_t a1)
{
  sub_1AC509980();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v3 == v4)
  {
    goto LABEL_23;
  }

  v7 = *v3;
  v5 = v3 + 1;
  v6 = v7;
  *(v1 + 40) = v5;
  if (v7 == 48)
  {
    goto LABEL_11;
  }

  if (v6 != 116)
  {
    if (v6 == 70)
    {
LABEL_9:
      if (v5 != v4)
      {
        sub_1AC50A394(&unk_1F2127730);
        v5 = *(v1 + 40);
      }

LABEL_11:
      v2 = 0;
      goto LABEL_15;
    }

    if (v6 != 84)
    {
      if (v6 != 102)
      {
        if (v6 != 49)
        {
LABEL_23:
          v10 = sub_1AC477954();
          v11 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v10);
          OUTLINED_FUNCTION_5_0(v11, v12);
          return v2 & 1;
        }

        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  if (v5 != v4)
  {
    sub_1AC50A394(&unk_1F2127758);
    v5 = *(v1 + 40);
  }

LABEL_14:
  v2 = 1;
LABEL_15:
  if (v5 != v4)
  {
    v8 = *v5;
    v9 = v8 > 0x3E || ((1 << v8) & 0x4800100900002600) == 0;
    if (v9 && v8 != 125 && v8 != 93)
    {
      goto LABEL_23;
    }

    sub_1AC509980();
  }

  return v2 & 1;
}

unint64_t sub_1AC507D8C(uint64_t a1)
{
  sub_1AC509980();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2 != v3 && ((v4 = *v2, v4 == 39) || v4 == 34) && (OUTLINED_FUNCTION_9_19(v2), v6 = sub_1AC50A11C(v5), v7))
  {
    v17 = v6;
    for (i = *(v1 + 40); i != v3; i = *(v1 + 40))
    {
      v9 = *i;
      if (v9 != 34 && v9 != 39)
      {
        break;
      }

      OUTLINED_FUNCTION_9_19(i);
      v11 = sub_1AC50A11C(v10);
      if (!v12)
      {

        goto LABEL_12;
      }

      MEMORY[0x1AC5B4340](v11);
    }

    return v17;
  }

  else
  {
LABEL_12:
    v14 = sub_1AC477954();
    v15 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v14);
    return OUTLINED_FUNCTION_5_0(v15, v16);
  }
}

void sub_1AC507E80(uint64_t a1)
{
  v3 = v1;
  sub_1AC509980();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 != v5 && ((v6 = *v4, v6 == 34) || v6 == 39))
  {
    OUTLINED_FUNCTION_9_19(v4);
    v29 = 0;
    sub_1AC509AA4(v6, &v29);
    if (!v2)
    {
      v8 = v7;
      if (v29 != 1)
      {
        v13 = *(v3 + 40);
        v30 = MEMORY[0x1AC5B4090](v13, v7);
        v31 = v14;
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
        }

        goto LABEL_12;
      }

      v30 = MEMORY[0x1AC5B40A0](v7);
      v31 = v9;
      sub_1AC476FE4(&v30, v3, v6);
      while (1)
      {
        sub_1AC509980();
        v19 = *(v3 + 40);
        if (v19 == v5)
        {
          break;
        }

        v20 = *v19;
        if (v20 != 39 && v20 != 34)
        {
          break;
        }

        OUTLINED_FUNCTION_9_19(v19);
        v28 = 0;
        sub_1AC509AA4(v20, &v28);
        v22 = v21;
        if (v28 == 1)
        {
          v26 = MEMORY[0x1AC5B40A0](v21);
          v27 = v16;
          sub_1AC476FE4(&v26, v3, v20);
          v17 = v26;
          v18 = v27;
          sub_1AC51EC98();
          sub_1AC4513F8(v17, v18);
        }

        else
        {
          v13 = *(v3 + 40);
          v23 = MEMORY[0x1AC5B4090](v13, v21);
          v25 = v24;
          sub_1AC51EC98();
          sub_1AC4513F8(v23, v25);
          v15 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            return;
          }

LABEL_12:
          *(v3 + 40) = v13 + v15;
        }
      }
    }
  }

  else
  {
    v10 = sub_1AC477954();
    v11 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v10);
    OUTLINED_FUNCTION_5_0(v11, v12);
  }
}

unsigned __int8 *sub_1AC508078(uint64_t a1)
{
  sub_1AC509980();
  OUTLINED_FUNCTION_6_24();
  if (v2)
  {
    v4 = sub_1AC477954();
    v5 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v4);
    return OUTLINED_FUNCTION_5_0(v5, v6);
  }

  else if ((*v1 & 0xDFu) - 91 >= 0xFFFFFFE6)
  {
    return sub_1AC5099F8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC5080F0()
{
  OUTLINED_FUNCTION_6_24();
  if (v1 || *v0 != 58)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v0);
  sub_1AC509980();
  return 1;
}

uint64_t sub_1AC50812C()
{
  OUTLINED_FUNCTION_6_24();
  if (v3 || *v2 != v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v2);
  sub_1AC509980();
  v4 = *(v0 + 80);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = v6;
    if (*(v0 + 64) >= v6)
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_2_26();
  result = sub_1AC51F388();
  __break(1u);
  return result;
}

uint64_t sub_1AC5081B8(uint64_t a1)
{
  v3 = a1;
  sub_1AC509980();
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v5 == v4)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 == 91)
  {
    if (v3)
    {
      result = sub_1AC50A578();
      if (!v2)
      {
        MEMORY[0x1AC5B4340](result);

        MEMORY[0x1AC5B4340](93, 0xE100000000000000);
        return 91;
      }

      return result;
    }

    v11 = sub_1AC477954();
    OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v11);
    *v12 = 7;
    return swift_willThrow();
  }

  if ((v6 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6)
  {
    return sub_1AC509A74();
  }

  if ((v6 - 58) < 0xFFFFFFF7)
  {
LABEL_14:
    v9 = sub_1AC477954();
    OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v9);
    *v10 = 0;
    return swift_willThrow();
  }

  v8 = 1;
  while (&v5[v8] != v4)
  {
    if (v5[v8] - 58 < 0xFFFFFFF6)
    {
      v4 = &v5[v8];
      break;
    }

    if (++v8 >= 10)
    {
      *(v1 + 40) = v5 + 10;
      goto LABEL_14;
    }
  }

  *(v1 + 40) = v4;
  v13 = v4 - v5;
  sub_1AC509980();
  result = sub_1AC456544(v5, v13);
  if (!v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC50832C(char a1)
{
  v1 = (a1 - 58);
  v2 = (a1 - 71);
  v3 = (a1 - 103);
  v4 = a1 - 87;
  v6 = v3 >= 0xFA;
  v5 = v3 < 0xFA;
  if (!v6)
  {
    v4 = 0;
  }

  v6 = v2 >= 0xFA;
  if (v2 >= 0xFA)
  {
    v7 = a1 - 55;
  }

  else
  {
    v7 = v4;
  }

  if (v6)
  {
    v5 = 0;
  }

  v8 = v1 >= 0xF6;
  if (v1 >= 0xF6)
  {
    v9 = a1 - 48;
  }

  else
  {
    v9 = v7;
  }

  v10 = !v8 && v5;
  return v9 | (v10 << 8);
}

unint64_t sub_1AC508388(char a1)
{
  if ((a1 - 58) > 0xF5u)
  {
    v3 = -48;
LABEL_8:
    v2 = 0;
    v1 = (v3 + a1);
    return v1 | (v2 << 32);
  }

  if ((a1 - 71) > 0xF9u)
  {
    v3 = -55;
    goto LABEL_8;
  }

  if ((a1 - 103) >= 0xFAu)
  {
    v3 = -87;
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v1 | (v2 << 32);
}

unint64_t sub_1AC5083FC(unint64_t a1, unint64_t a2)
{
  v114 = a1;
  v115 = a2;
  v4 = 15;
  v116 = 15;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 4 * v5;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v110 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v111 = a2 & 0xFFFFFFFFFFFFFFLL;

  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v4 >> 14)
    {
      v107 = sub_1AC456544(v9 + 32, *(v9 + 16));

      return v107;
    }

    result = v4;
    if ((v4 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v4, a1, a2);
    }

    v11 = result >> 16;
    if (result >> 16 >= v5)
    {
      __break(1u);
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
LABEL_250:
      __break(1u);
      return result;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
      v12 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v112 = a1;
      v113 = v111;
      v12 = *(&v112 + v11);
    }

    else
    {
      result = v110;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1AC51F308();
      }

      v12 = *(result + v11);
    }

    if ((v4 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v4, a1, a2);
      v4 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v13 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v5 <= v4 >> 16)
    {
      goto LABEL_238;
    }

    v13 = sub_1AC51EF58();
LABEL_24:
    v116 = v13;
    if (v12 != 92)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC45A78C();
        v9 = v17;
      }

      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v18;
      }

      *(v9 + 16) = v15 + 1;
      *(v9 + v15 + 32) = v12;
      goto LABEL_174;
    }

    if (v6 == v13 >> 14)
    {
      goto LABEL_235;
    }

    result = v13;
    if ((v13 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v13, a1, a2);
    }

    v14 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_239;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
      LOBYTE(v14) = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v112 = a1;
      v113 = v111;
      LOBYTE(v14) = *(&v112 + v14);
    }

    else
    {
      result = v110;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1AC51F308();
      }

      LOBYTE(v14) = *(result + v14);
    }

    if ((v13 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v13, a1, a2);
      v13 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_43:
        v16 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_47;
      }
    }

    else if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_43;
    }

    if (v5 <= v13 >> 16)
    {
      goto LABEL_240;
    }

    v16 = sub_1AC51EF58();
LABEL_47:
    v116 = v16;
    if ((v14 - 56) < 0xF8u)
    {
      break;
    }

    v23 = v14 - 48;
    if (v6 == v16 >> 14)
    {
      goto LABEL_169;
    }

    result = v16;
    if ((v16 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v16, a1, a2);
    }

    v24 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_241;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = sub_1AC51EF88();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v112 = a1;
      v113 = v111;
      v26 = *(&v112 + v24);
    }

    else
    {
      v25 = v110;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v25 = sub_1AC51F308();
      }

      v26 = *(v25 + v24);
    }

    result = v16;
    if ((v16 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v16, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_166:
        if (v5 <= result >> 16)
        {
          goto LABEL_242;
        }

        v41 = sub_1AC51EF58();
        goto LABEL_168;
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_166;
    }

    v41 = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_168:
    if ((v26 - 56) < 0xF8u)
    {
LABEL_169:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC45A78C();
        v9 = v64;
      }

      v6 = 4 * v5;
      v57 = *(v9 + 16);
      if (v57 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v65;
      }

      *(v9 + 16) = v57 + 1;
      *(v9 + v57 + 32) = v23;

      v114 = a1;
      v115 = a2;
      v116 = v16;
      goto LABEL_174;
    }

    v109 = v26 - 48;
    v6 = 4 * v5;
    if (4 * v5 != v41 >> 14)
    {
      result = v41;
      if ((v41 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v41, a1, a2);
      }

      v58 = result >> 16;
      if (result >> 16 >= v5)
      {
        goto LABEL_243;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v60 = sub_1AC51EF88();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v112 = a1;
        v113 = v111;
        v60 = *(&v112 + v58);
      }

      else
      {
        v59 = v110;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v59 = sub_1AC51F308();
        }

        v60 = *(v59 + v58);
      }

      result = v41;
      if ((v41 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v41, a1, a2);
      }

      v6 = 4 * v5;
      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v5 <= result >> 16)
        {
          goto LABEL_246;
        }

        v61 = sub_1AC51EF58();
      }

      else
      {
        v61 = (result & 0xFFFFFFFFFFFF0000) + 65540;
      }

      v116 = v61;
      if ((v60 - 56) >= 0xF8u)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v9 = v93;
        }

        v63 = *(v9 + 16);
        if (v63 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v94;
        }

        *(v9 + 16) = v63 + 1;
        *(v9 + v63 + 32) = v60 + ((8 * v109) | (v14 << 6)) - 48;
        goto LABEL_203;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC45A78C();
      v9 = v68;
    }

    v62 = *(v9 + 16);
    if (v62 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v69;
    }

    *(v9 + 16) = v62 + 1;
    *(v9 + v62 + 32) = v109 | (8 * v23);

    v114 = a1;
    v115 = a2;
    v116 = v41;
LABEL_174:
    v4 = v116;
  }

  v19 = v14 - 34;
  if (v19 > 0x3F)
  {
    goto LABEL_49;
  }

  if (((1 << (v14 - 34)) & 0x400000020000021) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC45A78C();
      v9 = v66;
    }

    v27 = *(v9 + 16);
    v28 = v27 + 1;
    if (v27 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v67;
    }

LABEL_69:
    *(v9 + 16) = v28;
    *(v9 + v27 + 32) = v14;
    goto LABEL_174;
  }

  if (v19 == 51)
  {
LABEL_85:
    v31 = sub_1AC5094D0(&v114);
    if ((v31 & 0x100000000) != 0)
    {
      goto LABEL_235;
    }

    v32 = v31;
    if (v14 == 85)
    {
      result = sub_1AC5094D0(&v114);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_235;
      }

      v33 = __CFADD__(result, v32 << 16);
      v32 = result + (v32 << 16);
      if (v33)
      {
        goto LABEL_245;
      }
    }

    if (v32 > 0x7F)
    {
      v34 = v32 & 0x3F | 0x80;
      if (v32 <= 0x7FF)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v9 = v95;
        }

        v49 = *(v9 + 16);
        v50 = *(v9 + 24) >> 1;
        v39 = v49 + 1;
        if (v50 <= v49)
        {
          sub_1AC45A78C();
          v9 = v96;
          v50 = *(v96 + 24) >> 1;
        }

        *(v9 + 16) = v39;
        *(v9 + v49 + 32) = (v32 >> 6) | 0xC0;
        v40 = v49 + 2;
        if (v50 < (v49 + 2))
        {
          sub_1AC45A78C();
          v9 = v97;
        }

        goto LABEL_150;
      }

      v108 = (v32 >> 6) & 0x3F | 0xFFFFFF80;
      if (HIWORD(v32))
      {
        if (v32 >= 0x110000)
        {
          goto LABEL_235;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v9 = v102;
        }

        v35 = *(v9 + 16);
        v36 = *(v9 + 24) >> 1;
        v37 = v35 + 1;
        if (v36 <= v35)
        {
          sub_1AC45A78C();
          v9 = v103;
          v36 = *(v103 + 24) >> 1;
        }

        *(v9 + 16) = v37;
        *(v9 + v35 + 32) = (v32 >> 18) | 0xF0;
        v38 = v35 + 2;
        if (v36 < (v35 + 2))
        {
          sub_1AC45A78C();
          v9 = v104;
          v36 = *(v104 + 24) >> 1;
        }

        *(v9 + 16) = v38;
        *(v9 + v37 + 32) = (v32 >> 12) & 0x3F | 0x80;
        v39 = v35 + 3;
        if (v36 < (v35 + 3))
        {
          sub_1AC45A78C();
          v9 = v105;
          v36 = *(v105 + 24) >> 1;
        }

        *(v9 + 16) = v39;
        *(v9 + v38 + 32) = v108;
        v40 = v35 + 4;
        if (v36 < (v35 + 4))
        {
          sub_1AC45A78C();
          v9 = v106;
        }

LABEL_150:
        *(v9 + 16) = v40;
        v51 = v9 + v39;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v9 = v98;
        }

        v53 = *(v9 + 16);
        v54 = *(v9 + 24) >> 1;
        v55 = v53 + 1;
        if (v54 <= v53)
        {
          sub_1AC45A78C();
          v9 = v99;
          v54 = *(v99 + 24) >> 1;
        }

        *(v9 + 16) = v55;
        *(v9 + v53 + 32) = (v32 >> 12) | 0xE0;
        v56 = v53 + 2;
        if (v54 < (v53 + 2))
        {
          sub_1AC45A78C();
          v9 = v100;
          v54 = *(v100 + 24) >> 1;
        }

        *(v9 + 16) = v56;
        *(v9 + v55 + 32) = v108;
        if (v54 < (v53 + 3))
        {
          sub_1AC45A78C();
          v9 = v101;
        }

        *(v9 + 16) = v53 + 3;
        v51 = v9 + v56;
      }

      *(v51 + 32) = v34;
LABEL_203:
      v6 = 4 * v5;
      goto LABEL_174;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC45A78C();
      v9 = v89;
    }

    v48 = *(v9 + 16);
    if (v48 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v90;
    }

    *(v9 + 16) = v48 + 1;
    *(v9 + v48 + 32) = v32;
    goto LABEL_174;
  }

  if (v19 == 63)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC45A78C();
      v9 = v78;
    }

    v29 = *(v9 + 16);
    if (v29 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v79;
    }

    *(v9 + 16) = v29 + 1;
    v21 = v9 + v29;
    v22 = 7;
LABEL_137:
    *(v21 + 32) = v22;
    goto LABEL_174;
  }

LABEL_49:
  switch(v14)
  {
    case 'n':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC45A78C();
        v9 = v72;
      }

      v20 = *(v9 + 16);
      if (v20 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v73;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + v20;
      v22 = 10;
      goto LABEL_137;
    case 'o':
    case 'p':
    case 'q':
    case 's':
    case 'w':
      goto LABEL_235;
    case 'r':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC45A78C();
        v9 = v70;
      }

      v44 = *(v9 + 16);
      if (v44 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v71;
      }

      *(v9 + 16) = v44 + 1;
      v21 = v9 + v44;
      v22 = 13;
      goto LABEL_137;
    case 't':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC45A78C();
        v9 = v74;
      }

      v45 = *(v9 + 16);
      if (v45 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v75;
      }

      *(v9 + 16) = v45 + 1;
      v21 = v9 + v45;
      v22 = 9;
      goto LABEL_137;
    case 'u':
      goto LABEL_85;
    case 'v':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC45A78C();
        v9 = v76;
      }

      v46 = *(v9 + 16);
      if (v46 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v77;
      }

      *(v9 + 16) = v46 + 1;
      v21 = v9 + v46;
      v22 = 11;
      goto LABEL_137;
    case 'x':
      if (v6 == v16 >> 14)
      {
        goto LABEL_235;
      }

      result = v16;
      if ((v16 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v16, a1, a2);
      }

      v42 = result >> 16;
      if (result >> 16 >= v5)
      {
        goto LABEL_244;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1AC51EF88();
        v43 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v112 = a1;
        v113 = v111;
        v43 = *(&v112 + v42);
      }

      else
      {
        result = v110;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = sub_1AC51F308();
        }

        v43 = *(result + v42);
      }

      if ((v16 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v16, a1, a2);
        v16 = result;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_154:
          v52 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_207;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_154;
      }

      if (v5 <= v16 >> 16)
      {
        goto LABEL_247;
      }

      v52 = sub_1AC51EF58();
LABEL_207:
      v84 = sub_1AC50832C(v43);
      if ((v84 & 0x100) == 0)
      {
        LOBYTE(v14) = v84;
        if (v6 == v52 >> 14)
        {
          goto LABEL_228;
        }

        result = v52;
        if ((v52 & 0xC) == v8)
        {
          result = sub_1AC488FF0(v52, a1, a2);
        }

        v85 = result >> 16;
        if (result >> 16 >= v5)
        {
          goto LABEL_248;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          v87 = sub_1AC51EF88();
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v112 = a1;
          v113 = v111;
          v87 = *(&v112 + v85);
        }

        else
        {
          v86 = v110;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v86 = sub_1AC51F308();
          }

          v87 = *(v86 + v85);
        }

        result = v52;
        if ((v52 & 0xC) == v8)
        {
          result = sub_1AC488FF0(v52, a1, a2);
        }

        v6 = 4 * v5;
        if ((a2 & 0x1000000000000000) != 0)
        {
          if (v5 <= result >> 16)
          {
            goto LABEL_249;
          }

          v88 = sub_1AC51EF58();
        }

        else
        {
          v88 = (result & 0xFFFFFFFFFFFF0000) + 65540;
        }

        v116 = v88;
        result = sub_1AC50832C(v87);
        if ((result & 0x100) != 0)
        {
LABEL_228:
          v114 = a1;
          v115 = a2;
          v116 = v52;
        }

        else
        {
          LOWORD(v14) = 16 * (v14 & 0xF) + result;
          if ((v14 & 0x100) != 0)
          {
            goto LABEL_250;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v9 = v91;
        }

        v27 = *(v9 + 16);
        v28 = v27 + 1;
        if (v27 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v92;
        }

        goto LABEL_69;
      }

LABEL_235:

      return 0;
    default:
      if (v14 == 98)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v9 = v82;
        }

        v47 = *(v9 + 16);
        if (v47 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v83;
        }

        *(v9 + 16) = v47 + 1;
        v21 = v9 + v47;
        v22 = 8;
      }

      else
      {
        if (v14 != 102)
        {
          goto LABEL_235;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v9 = v80;
        }

        v30 = *(v9 + 16);
        if (v30 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v81;
        }

        *(v9 + 16) = v30 + 1;
        v21 = v9 + v30;
        v22 = 12;
      }

      goto LABEL_137;
  }
}

unint64_t sub_1AC5094D0(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 4 * v3;
  v5 = a1[2];
  if (4 * v3 == v5 >> 14)
  {
LABEL_5:
    v6 = 0;
    v7 = 1;
    goto LABEL_6;
  }

  v10 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = a1[2] & 0xC;
  v12 = 4 << v10;
  v13 = a1[2];
  if (v11 == 4 << v10)
  {
    v13 = sub_1AC488FF0(v5, v1, v2);
  }

  v14 = v13 >> 16;
  if (v13 >> 16 >= v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
LABEL_22:
    v14 = sub_1AC51EF88();
    goto LABEL_18;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v35 = v1;
    v36 = v2 & 0xFFFFFFFFFFFFFFLL;
    v14 = *(&v35 + v14);
    goto LABEL_18;
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    goto LABEL_43;
  }

  for (i = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = sub_1AC51F308())
  {
    v14 = *(i + v14);
LABEL_18:
    if (v11 == v12)
    {
      v5 = sub_1AC488FF0(v5, v1, v2);
      if ((v2 & 0x1000000000000000) == 0)
      {
LABEL_20:
        v11 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_26;
      }
    }

    else if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    if (v3 <= v5 >> 16)
    {
      __break(1u);
LABEL_41:
      v17 = sub_1AC488FF0(v11, v1, v2);
      goto LABEL_29;
    }

    v11 = sub_1AC51EF58();
LABEL_26:
    a1[2] = v11;
    v16 = sub_1AC508388(v14);
    v6 = 0;
    v7 = 1;
    if ((v16 & 0x100000000) != 0 || v11 >> 14 == v4)
    {
      goto LABEL_6;
    }

    v5 = v16;
    v14 = v11 & 0xC;
    v17 = v11;
    if (v14 == v12)
    {
      goto LABEL_41;
    }

LABEL_29:
    v18 = v17 >> 16;
    if (v17 >> 16 < v3)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v20 = sub_1AC51EF88();
  }

  else if ((v2 & 0x2000000000000000) != 0)
  {
    v35 = v1;
    v36 = v2 & 0xFFFFFFFFFFFFFFLL;
    v20 = *(&v35 + v18);
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v19 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v19 = sub_1AC51F308();
    }

    v20 = *(v19 + v18);
  }

  if (v14 == v12)
  {
    v11 = sub_1AC488FF0(v11, v1, v2);
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_39:
    v14 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_47:
    a1[2] = v14;
    v21 = sub_1AC508388(v20);
    v6 = 0;
    v7 = 1;
    if ((v21 & 0x100000000) == 0)
    {
      v34 = v21;
      if (v14 >> 14 != v4)
      {
        v20 = v14 & 0xC;
        v22 = v14;
        if (v20 == v12)
        {
          goto LABEL_62;
        }

        goto LABEL_50;
      }
    }
  }

  else
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_45:
    if (v3 > v11 >> 16)
    {
      v14 = sub_1AC51EF58();
      goto LABEL_47;
    }

    __break(1u);
LABEL_62:
    v22 = sub_1AC488FF0(v14, v1, v2);
LABEL_50:
    v23 = v22 >> 16;
    if (v22 >> 16 >= v3)
    {
      __break(1u);
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v23 = sub_1AC51EF88();
      }

      else if ((v2 & 0x2000000000000000) != 0)
      {
        v35 = v1;
        v36 = v2 & 0xFFFFFFFFFFFFFFLL;
        v23 = *(&v35 + v23);
      }

      else
      {
        if ((v1 & 0x1000000000000000) != 0)
        {
          v24 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v24 = sub_1AC51F308();
        }

        v23 = *(v24 + v23);
      }

      if (v20 != v12)
      {
        if ((v2 & 0x1000000000000000) == 0)
        {
          goto LABEL_60;
        }

LABEL_65:
        if (v3 > v14 >> 16)
        {
          v20 = sub_1AC51EF58();
          goto LABEL_67;
        }

        __break(1u);
LABEL_83:
        v26 = sub_1AC488FF0(v20, v1, v2);
LABEL_70:
        v27 = v26 >> 16;
        if (v26 >> 16 >= v3)
        {
          __break(1u);
          goto LABEL_85;
        }

        if ((v2 & 0x1000000000000000) != 0)
        {
          v27 = sub_1AC51EF88();
          goto LABEL_78;
        }

        if ((v2 & 0x2000000000000000) != 0)
        {
          v35 = v1;
          v36 = v2 & 0xFFFFFFFFFFFFFFLL;
          v27 = *(&v35 + v27);
          goto LABEL_78;
        }

        if ((v1 & 0x1000000000000000) == 0)
        {
          goto LABEL_98;
        }

        v28 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        while (2)
        {
          LOBYTE(v27) = *(v28 + v27);
LABEL_78:
          if (v23 != v12)
          {
            if ((v2 & 0x1000000000000000) == 0)
            {
              goto LABEL_80;
            }

LABEL_86:
            if (v3 > v20 >> 16)
            {
              v29 = sub_1AC51EF58();
              goto LABEL_88;
            }

            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

LABEL_85:
          v20 = sub_1AC488FF0(v20, v1, v2);
          if ((v2 & 0x1000000000000000) != 0)
          {
            goto LABEL_86;
          }

LABEL_80:
          v29 = (v20 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_88:
          a1[2] = v29;
          v30 = sub_1AC508388(v27);
          if ((v30 & 0x100000000) != 0)
          {
            goto LABEL_5;
          }

          v31 = (v5 << 12) + (v34 << 8);
          if (__CFADD__(v5 << 12, v34 << 8))
          {
            goto LABEL_95;
          }

          v32 = __CFADD__(v31, 16 * v14);
          v33 = v31 + 16 * v14;
          if (v32)
          {
LABEL_96:
            __break(1u);
          }

          else
          {
            v32 = __CFADD__(v33, v30);
            v6 = v33 + v30;
            if (!v32)
            {
              v7 = 0;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_98:
          v28 = sub_1AC51F308();
          continue;
        }
      }
    }

    v14 = sub_1AC488FF0(v14, v1, v2);
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_60:
    v20 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_67:
    a1[2] = v20;
    v25 = sub_1AC508388(v23);
    v6 = 0;
    v7 = 1;
    if ((v25 & 0x100000000) == 0 && v20 >> 14 != v4)
    {
      LODWORD(v14) = v25;
      v23 = v20 & 0xC;
      v26 = v20;
      if (v23 == v12)
      {
        goto LABEL_83;
      }

      goto LABEL_70;
    }
  }

LABEL_6:
  LOBYTE(v35) = v7;
  return v6 | (v7 << 32);
}

void sub_1AC509980()
{
  v2 = *(v0 + 40);
  for (i = *(v0 + 48); v2 != i; *(v0 + 40) = v2)
  {
    v3 = *v2;
    if (v3 > 0x23)
    {
      break;
    }

    if (((1 << v3) & 0x100002600) != 0)
    {
      ++v2;
    }

    else
    {
      if (v3 != 35)
      {
        return;
      }

      ++v2;
      while (v2 != i)
      {
        v5 = *v2++;
        v4 = v5;
        if (v5 == 10 || v4 == 13)
        {
          goto LABEL_5;
        }
      }

      v2 = i;
    }

LABEL_5:
    ;
  }
}

unsigned __int8 *sub_1AC5099F8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v2 != v1)
  {
    v3 = *(v0 + 40);
    do
    {
      v4 = *v3;
      if ((v4 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v4 != 95 && (v4 - 48) > 9)
      {
        break;
      }

      *(v0 + 40) = ++v3;
    }

    while (v3 != v1);
  }

  sub_1AC509980();
  return v2;
}

uint64_t sub_1AC509A74()
{
  result = sub_1AC5099F8();
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = sub_1AC456544(result, v1 - result);
  if (!v2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1AC509AA4(unsigned __int8 a1, _BYTE *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a1;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = 1;
  v9 = 0x400000020000021;
  v10 = 2760739;
  v11 = v6;
  do
  {
    while (1)
    {
      if (v11 == v7)
      {
        goto LABEL_75;
      }

      v12 = v11;
      v14 = *v11++;
      v13 = v14;
      *(v2 + 40) = v11;
      if (v14 == v5)
      {
        goto LABEL_73;
      }

      if (v13 != 92)
      {
        break;
      }

      v4 = 1;
      if (v11 != v7)
      {
        v17 = v12[1];
        v18 = v12 + 2;
        *(v2 + 40) = v12 + 2;
        if (v17 - 56 >= 0xFFFFFFF8)
        {
          if (v18 != v7 && *v18 - 56 >= 0xFFFFFFF8)
          {
            *(v2 + 40) = v12 + 3;
            if (v12 + 3 != v7 && v12[3] - 56 >= 0xFFFFFFF8)
            {
              if (v17 > 0x33)
              {
                goto LABEL_74;
              }

              *(v2 + 40) = v12 + 4;
            }
          }

          OUTLINED_FUNCTION_8_20();
          if (v16)
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v17 - 97 > 0x17)
          {
            goto LABEL_39;
          }

          if (((v8 << (v17 - 97)) & v10) != 0)
          {
LABEL_41:
            OUTLINED_FUNCTION_8_20();
            if (v16)
            {
              goto LABEL_77;
            }
          }

          else
          {
            if (v17 == 117)
            {
              v23 = 4;
              goto LABEL_47;
            }

            if (v17 == 120)
            {
              if (v18 == v7)
              {
                goto LABEL_74;
              }

              v19 = *v18;
              if ((v19 - 58) <= 0xF5u)
              {
                v4 = 1;
                v20 = v19 - 65;
                if (v20 > 0x25 || ((v8 << v20) & 0x3F0000003FLL) == 0)
                {
                  goto LABEL_75;
                }
              }

              *(v2 + 40) = v12 + 3;
              if (v12 + 3 != v7)
              {
                if ((v12[3] - 58) > 0xF5u || (v21 = v12[3] - 65, v21 <= 0x25) && ((v8 << v21) & 0x3F0000003FLL) != 0)
                {
                  *(v2 + 40) = v12 + 4;
                }
              }

              OUTLINED_FUNCTION_8_20();
              if (v16)
              {
                goto LABEL_78;
              }
            }

            else
            {
LABEL_39:
              v4 = 1;
              v22 = v17 - 34;
              if (v22 > 0x3A)
              {
                goto LABEL_75;
              }

              if (((v8 << (v17 - 34)) & v9) != 0)
              {
                goto LABEL_41;
              }

              if (v22 != 51)
              {
                goto LABEL_75;
              }

              v23 = 8;
LABEL_47:
              if (v7 - v18 < v23)
              {
                goto LABEL_74;
              }

              v24 = 0;
              v25 = v18;
              v26 = v23;
              do
              {
                v28 = *v25++;
                v27 = v28;
                if ((v28 - 58) > 0xF5u)
                {
                  v29 = -48;
                }

                else if ((v27 - 71) > 0xF9u)
                {
                  v29 = -55;
                }

                else
                {
                  if ((v27 - 103) < 0xFAu)
                  {
                    goto LABEL_74;
                  }

                  v29 = -87;
                }

                v24 = 16 * v24 + (v27 + v29);
                --v26;
              }

              while (v26);
              v11 = &v18[v23];
              *(v2 + 40) = v11;
              if (v24 <= 0x7F)
              {
                OUTLINED_FUNCTION_8_20();
                if (v16)
                {
                  goto LABEL_79;
                }
              }

              else if (v24 <= 0x7FF)
              {
                v4 = 1;
                v16 = __OFADD__(v3, 2);
                v3 += 2;
                if (v16)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                if (v24 - 57344 > 0xFFFFF7FF)
                {
                  goto LABEL_74;
                }

                v30 = HIWORD(v24);
                if (v30)
                {
                  if (v30 > 0x10)
                  {
LABEL_74:
                    v4 = 1;
LABEL_75:
                    *a2 = v4 & 1;
                    v31 = sub_1AC477954();
                    OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v31);
                    *v32 = 0;
                    swift_willThrow();
                    return;
                  }

                  v4 = 1;
                  v16 = __OFADD__(v3, 4);
                  v3 += 4;
                  if (v16)
                  {
                    goto LABEL_81;
                  }
                }

                else
                {
                  v4 = 1;
                  v16 = __OFADD__(v3, 3);
                  v3 += 3;
                  if (v16)
                  {
                    __break(1u);
LABEL_73:
                    *a2 = v4 & 1;
                    *(v2 + 40) = v6;
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v13 == 10 || v13 == 13)
    {
      goto LABEL_75;
    }

    v16 = __OFADD__(v3++, 1);
  }

  while (!v16);
  __break(1u);
LABEL_76:
  __break(1u);
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
}

_BYTE *sub_1AC509DE0(_BYTE *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!result || a2 - result < 1)
  {
    return result;
  }

  v4 = a4;
  v5 = *(a3 + 40);
  v6 = *v5;
  if (v6 == a4)
  {
LABEL_4:
    *(a3 + 40) = v5 + 1;
    return result;
  }

  while (2)
  {
    *(a3 + 40) = v5 + 1;
    if (v6 != 92)
    {
      goto LABEL_53;
    }

    v7 = v5[1];
    v8 = (v5 + 2);
    *(a3 + 40) = v5 + 2;
    if ((v7 - 56) >= 0xF8u)
    {
      LOBYTE(v6) = v7 - 48;
      v10 = *v8;
      if ((*v8 - 56) >= 0xF8u)
      {
        *(a3 + 40) = v5 + 3;
        v11 = v10 - 48;
        v12 = v5[3];
        if ((v12 - 56) >= 0xF8u)
        {
          *(a3 + 40) = v5 + 4;
          LOBYTE(v6) = v12 + ((8 * v11) | (v7 << 6)) - 48;
        }

        else
        {
          LOBYTE(v6) = v11 | (8 * v6);
        }
      }

LABEL_53:
      *result = v6;
LABEL_54:
      v20 = 1;
      goto LABEL_55;
    }

    v9 = 4;
    switch(v7)
    {
      case 'n':
        *result = 10;
        goto LABEL_54;
      case 'o':
      case 'p':
      case 'q':
      case 's':
      case 'w':
        goto LABEL_32;
      case 'r':
        *result = 13;
        goto LABEL_54;
      case 't':
        *result = 9;
        goto LABEL_54;
      case 'u':
        goto LABEL_18;
      case 'v':
        *result = 11;
        goto LABEL_54;
      case 'x':
        v21 = *v8;
        if ((*v8 - 58) > 0xF5u)
        {
          v22 = -48;
        }

        else if ((v21 - 71) > 0xF9u)
        {
          v22 = -55;
        }

        else
        {
          if ((v21 - 103) < 0xFAu)
          {
            goto LABEL_59;
          }

          v22 = -87;
        }

        LOBYTE(v6) = v21 + v22;
        *(a3 + 40) = v5 + 3;
        v23 = v5[3];
        if ((v23 - 58) > 0xF5u)
        {
          v24 = -48;
        }

        else if ((v23 - 71) > 0xF9u)
        {
          v24 = -55;
        }

        else
        {
          if ((v23 - 103) < 0xFAu)
          {
            goto LABEL_53;
          }

          v24 = -87;
        }

        LOBYTE(v6) = v23 + v24 + 16 * v6;
        *(a3 + 40) = v5 + 4;
        goto LABEL_53;
      default:
        switch(v7)
        {
          case 'f':
            *result = 12;
            goto LABEL_54;
          case 'a':
            *result = 7;
            goto LABEL_54;
          case 'b':
            *result = 8;
            goto LABEL_54;
        }

        if (v7 != 85)
        {
LABEL_32:
          *result = v7;
          goto LABEL_54;
        }

        v9 = 8;
LABEL_18:
        v6 = 0;
        v13 = (v5 + 2);
        v14 = v9;
        do
        {
          v16 = *v13++;
          v15 = v16;
          if ((v16 - 58) > 0xF5u)
          {
            v17 = -48;
          }

          else if ((v15 - 71) > 0xF9u)
          {
            v17 = -55;
          }

          else
          {
            if ((v15 - 103) < 0xFAu)
            {
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v17 = -87;
          }

          v6 = 16 * v6 + (v15 + v17);
          --v14;
        }

        while (v14);
        *(a3 + 40) = &v8[v9];
        if (v6 <= 0x7F)
        {
          goto LABEL_53;
        }

        v18 = v6 & 0x3F | 0x80;
        if (v6 <= 0x7FF)
        {
          *result = (v6 >> 6) | 0xC0;
          result[1] = v18;
          v20 = 2;
LABEL_55:
          result += v20;
          v5 = *(a3 + 40);
          v6 = *v5;
          if (v6 == v4)
          {
            goto LABEL_4;
          }

          continue;
        }

        v19 = (v6 >> 6) & 0x3F | 0x80;
        if (!HIWORD(v6))
        {
          *result = (v6 >> 12) | 0xE0;
          result[1] = v19;
          result[2] = v18;
          v20 = 3;
          goto LABEL_55;
        }

        if (HIWORD(v6) <= 0x10u)
        {
          *result = (v6 >> 18) | 0xF0;
          result[1] = (v6 >> 12) & 0x3F | 0x80;
          result[2] = v19;
          result[3] = v18;
          v20 = 4;
          goto LABEL_55;
        }

LABEL_60:
        __break(1u);
        return result;
    }
  }
}

unint64_t sub_1AC50A11C(unsigned __int8 a1)
{
  v2 = 0;
  v3 = a1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = v4;
LABEL_2:
  v7 = &v6[-v4];
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *v6;
    if (v8 == v3)
    {
      break;
    }

    *(v1 + 40) = ++v6;
    if (v8 == 10 || v8 == 13)
    {
      return 0;
    }

    ++v7;
    if (v8 == 92)
    {
      if (v6 != v5)
      {
        *(v1 + 40) = ++v6;
        v2 = 1;
        goto LABEL_2;
      }

      return 0;
    }
  }

  v10 = sub_1AC456544(v4, v7);
  v13 = v12;
  *(v1 + 40) = v6 + 1;
  sub_1AC509980();
  if (v13 != 0 && (v2 & 1) != 0)
  {
    v10 = sub_1AC5083FC(v10, v13);
  }

  return v10;
}

uint64_t sub_1AC50A208()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (v1 != v2)
  {
    v3 = *v1;
    v4 = *(v0 + 40);
    if (v3 == 45)
    {
      v4 = v1 + 1;
      *(v0 + 40) = v1 + 1;
      if (v1 + 1 == v2)
      {
        goto LABEL_16;
      }

      v3 = *v4;
    }

    if (v3 == 46)
    {
      *(v0 + 40) = ++v4;
      if (v4 == v2 || *v4 - 58 <= 0xFFFFFFF5)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (v3 == 48)
    {
      *(v0 + 40) = ++v4;
      if (v4 != v2 && *v4 - 58 >= 0xFFFFFFF6)
      {
        goto LABEL_16;
      }

LABEL_13:
      if (v4 == v2)
      {
LABEL_22:
        v6 = v2;
        goto LABEL_23;
      }

LABEL_17:
      v6 = v4;
      while (1)
      {
        v7 = *v6;
        if ((v7 - 58) <= 0xFFFFFFF5)
        {
          v8 = v7 - 43;
          if (v8 > 0x3B)
          {
            goto LABEL_23;
          }

          if (((1 << v8) & 0x40000000400000DLL) == 0)
          {
            break;
          }
        }

        *(v0 + 40) = ++v6;
        ++v4;
        if (v6 == v2)
        {
          goto LABEL_22;
        }
      }

      if (((1 << v8) & 0x800000008000000) != 0)
      {
        sub_1AC45D17C(v1, v4);
        v5 = v11;
        *(v0 + 40) = v6 + 1;
        goto LABEL_24;
      }

LABEL_23:
      sub_1AC45D17C(v1, v6);
      v5 = v9;
LABEL_24:
      sub_1AC509980();
      return v5;
    }

    if ((v3 - 58) > 0xFFFFFFF6)
    {
      goto LABEL_17;
    }

LABEL_16:
    v5 = 0;
    *(v0 + 40) = v1;
    return v5;
  }

  return 0;
}

uint64_t sub_1AC50A394(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(result + 16);
  v4 = (result + 32);
  v5 = v2;
  if (v3)
  {
    while (v5 != *(v1 + 48) && *v5 == *v4)
    {
      *(v1 + 40) = ++v5;
      ++v4;
      if (!--v3)
      {
        return result;
      }
    }

    *(v1 + 40) = v2;
  }

  return result;
}

uint64_t sub_1AC50A3E4(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = v2;
  if (v3)
  {
    while (v5 != *(v1 + 48))
    {
      v6 = *v5;
      if ((v6 - 91) >= 0xFFFFFFE6)
      {
        v6 |= 0x20u;
      }

      if (v6 != *v4)
      {
        break;
      }

      *(v1 + 40) = ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_11;
  }

LABEL_7:
  if (v5 == *(v1 + 48))
  {
    return 1;
  }

  if ((*v5 & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    sub_1AC509980();
    return 1;
  }

LABEL_11:
  result = 0;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1AC50A480()
{
  v1 = *(v0 + 40);
  if (v1 != *(v0 + 48) && *v1 == 45)
  {
    *(v0 + 40) = v1 + 1;
  }

  v2 = sub_1AC50A3E4(&unk_1F2126E20);
  if ((v2 & 1) == 0)
  {
    *(v0 + 40) = v1;
  }

  return v2 & 1;
}

unint64_t sub_1AC50A4D4()
{
  v1 = *(v0 + 40);
  if (v1 == *(v0 + 48))
  {
    v4 = 0;
LABEL_11:
    v3 = 1;
    return v4 | (v3 << 32);
  }

  v2 = *v1;
  if (v2 == 45)
  {
    *(v0 + 40) = v1 + 1;
  }

  if ((sub_1AC50A3E4(&unk_1F2126E48) & 1) == 0 && (sub_1AC50A3E4(&unk_1F2126E70) & 1) == 0)
  {
    v4 = 0;
    *(v0 + 40) = v1;
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 2139095040;
  if (v2 == 45)
  {
    v4 = 4286578688;
  }

  return v4 | (v3 << 32);
}

uint64_t sub_1AC50A578()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = (v3 + 1);
  *(v0 + 40) = v3 + 1;
  if ((v3 + 1) == v2 || (*v4 & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    goto LABEL_17;
  }

  for (i = (v3 + 2); ; ++i)
  {
    *(v0 + 40) = i;
    if (i == v2)
    {
      break;
    }

    v6 = *i;
    v7 = (v6 - 58) > 0xFFFFFFF5 || (v6 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
    if (!v7 && (v6 - 46) >= 2 && v6 != 95)
    {
      if (v6 != 93)
      {
        goto LABEL_17;
      }

      break;
    }
  }

  if (i == v2 || *i != 93 || (v8 = sub_1AC456544(v4, i - v4), !v9))
  {
LABEL_17:
    v10 = sub_1AC477954();
    v11 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v10);
    OUTLINED_FUNCTION_5_0(v11, v12);
  }

  else
  {
    v1 = v8;
    *(v0 + 40) = i + 1;
    sub_1AC509980();
  }

  return v1;
}

void sub_1AC50A674(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 40);
  v5 = *v4;
  if (v5 == 39 || v5 == 34)
  {
    sub_1AC507E80(a1);
    if (!v2)
    {
      sub_1AC4513F8(v6, v7);
    }

    return;
  }

  v8 = *(v1 + 48);
  if (v5 != 91 || v4 == v8)
  {
    sub_1AC508078(a1);
    if (v2)
    {
      return;
    }

    if ((v10 & 1) == 0)
    {
LABEL_19:
      sub_1AC509980();
      return;
    }

    v11 = sub_1AC50AB10();
    if (v11)
    {
      if (v5 == 45)
      {
        sub_1AC507A20(v11);
      }

      else
      {
        sub_1AC507AC8(v11);
      }
    }

    else
    {
      sub_1AC5079AC();
    }
  }

  else
  {
    v12 = a1;
    OUTLINED_FUNCTION_11_14(v4);
    sub_1AC509980();
    if ((v12 & 1) == 0 || (v13 = *(v1 + 40), v13 == v8))
    {
LABEL_54:
      v23 = sub_1AC477954();
      v24 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v23);
      OUTLINED_FUNCTION_5_0(v24, v25);
      return;
    }

    v14 = *v13;
    if (v14 == 93)
    {
LABEL_18:
      *(v1 + 40) = v13 + 1;
      goto LABEL_19;
    }

    while (1)
    {
      if (v14 == 60 || v14 == 123)
      {
        v15 = v3;
        sub_1AC50A8AC();
      }

      else
      {
        v15 = v3;
        sub_1AC50A674(0);
      }

      v3 = v15;
      if (v15)
      {
        break;
      }

      v13 = *(v1 + 40);
      v16 = *(v1 + 48);
      if (v13 != v16)
      {
        v17 = *v13;
        if (v17 == 93)
        {
          goto LABEL_18;
        }

        while (v17 <= 0x23)
        {
          if (((1 << v17) & 0x100002600) != 0)
          {
            ++v13;
          }

          else
          {
            if (v17 != 35)
            {
              break;
            }

            ++v13;
            while (v13 != v16)
            {
              v19 = *v13++;
              v18 = v19;
              if (v19 == 10 || v18 == 13)
              {
                goto LABEL_30;
              }
            }

            v13 = v16;
          }

LABEL_30:
          *(v1 + 40) = v13;
          if (v13 == v16)
          {
            break;
          }

          v17 = *v13;
        }
      }

      if (v13 == v16 || *v13 != 44)
      {
        goto LABEL_54;
      }

LABEL_41:
      ++v13;
LABEL_42:
      while (1)
      {
        *(v1 + 40) = v13;
        if (v13 == v16)
        {
          break;
        }

        v20 = *v13;
        if (v20 > 0x23)
        {
          break;
        }

        if (((1 << v20) & 0x100002600) != 0)
        {
          goto LABEL_41;
        }

        if (v20 != 35)
        {
          break;
        }

        ++v13;
        while (v13 != v16)
        {
          v22 = *v13++;
          v21 = v22;
          if (v22 == 10 || v21 == 13)
          {
            goto LABEL_42;
          }
        }

        v13 = v16;
      }

      if (v13 == v16)
      {
        goto LABEL_54;
      }

      v14 = *v13;
    }
  }
}

void sub_1AC50A8AC()
{
  sub_1AC507264();
  if (!v1)
  {
    v3 = v2;
    v4 = v0[5];
    v5 = v0[6];
    while (1)
    {
      if (v4 == v5)
      {
LABEL_57:
        v19 = sub_1AC477954();
        v20 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v19);
        OUTLINED_FUNCTION_5_0(v20, v21);
        return;
      }

      if (*v4 == v3)
      {
        OUTLINED_FUNCTION_11_14(v4);
        sub_1AC509980();
        v22 = v0[10];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          __break(1u);
        }

        else
        {
          v0[10] = v24;
          if (v0[8] >= v24)
          {
            return;
          }
        }

        OUTLINED_FUNCTION_10_15();
        OUTLINED_FUNCTION_2_26();
        sub_1AC51F388();
        __break(1u);
        return;
      }

      sub_1AC5081B8(1);
      if (!v6)
      {
        goto LABEL_57;
      }

      for (i = v0[5]; i != v5; v0[5] = i)
      {
        OUTLINED_FUNCTION_17();
        if (!v11 & v9)
        {
          break;
        }

        if (((1 << v8) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v8 != 35)
          {
            break;
          }

          ++i;
          while (i != v5)
          {
            OUTLINED_FUNCTION_10_0();
            v11 = v11 || v10 == 13;
            if (v11)
            {
              goto LABEL_11;
            }
          }

          i = v5;
        }

LABEL_11:
        ;
      }

      if (i == v5 || *i != 58)
      {
        break;
      }

LABEL_24:
      ++i;
LABEL_25:
      while (1)
      {
        v0[5] = i;
        if (i == v5)
        {
          break;
        }

        OUTLINED_FUNCTION_17();
        if (!v11 & v9)
        {
          break;
        }

        if (((1 << v12) & 0x100002600) != 0)
        {
          goto LABEL_24;
        }

        if (v12 != 35)
        {
          break;
        }

        ++i;
        while (i != v5)
        {
          OUTLINED_FUNCTION_10_0();
          if (v11 || v13 == 13)
          {
            goto LABEL_25;
          }
        }

        i = v5;
      }

      if (i == v5)
      {
        goto LABEL_57;
      }

      v15 = *i;
      if (v15 == 60 || v15 == 123)
      {
        break;
      }

      sub_1AC50A674(1);
LABEL_42:
      v4 = v0[5];
      v5 = v0[6];
      if (v4 != v5)
      {
        v16 = *v4;
        if (v16 == 59 || v16 == 44)
        {
LABEL_45:
          ++v4;
LABEL_46:
          while (1)
          {
            v0[5] = v4;
            if (v4 == v5)
            {
              break;
            }

            OUTLINED_FUNCTION_17();
            if (!v11 & v9)
            {
              break;
            }

            if (((1 << v17) & 0x100002600) != 0)
            {
              goto LABEL_45;
            }

            if (v17 != 35)
            {
              break;
            }

            ++v4;
            while (v4 != v5)
            {
              OUTLINED_FUNCTION_10_0();
              if (v11 || v18 == 13)
              {
                goto LABEL_46;
              }
            }

            v4 = v5;
          }
        }
      }
    }

    sub_1AC50A8AC();
    goto LABEL_42;
  }
}

BOOL sub_1AC50AB10()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  if (v2 == 45)
  {
    if (++v1 == *(v0 + 48))
    {
      return 0;
    }

    v2 = *v1;
  }

  if (v2 != 48)
  {
    return 0;
  }

  v3 = v1 + 1;
  if (v3 == *(v0 + 48))
  {
    return 1;
  }

  v4 = *v3;
  return v4 == 120 || (v4 & 0xF8) == 48;
}

void sub_1AC50AB78(unsigned __int8 a1)
{
  sub_1AC509980();
  OUTLINED_FUNCTION_6_24();
  if (v3 || *v2 != a1)
  {
    v4 = sub_1AC477954();
    v5 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v4);
    OUTLINED_FUNCTION_5_0(v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_11_14(v2);
    sub_1AC509980();
  }
}

uint64_t sub_1AC50ABE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1AC50AC24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}

void Google_Protobuf_Timestamp.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t static Google_Protobuf_Timestamp._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED6E33D8 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ED6E33E8;
  v3 = qword_1ED6E33F0;
  v4 = unk_1ED6E33F8;
  *a1 = qword_1ED6E33E0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

void sub_1AC50AE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](a2);
  }

  if (a3)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48D0](a3);
  }

  switch(a5 >> 62)
  {
    case 1uLL:
      v9 = a4;
      v10 = a4 >> 32;
      goto LABEL_10;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_10:
      if (v9 != v10)
      {
        goto LABEL_11;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a5 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t static Google_Protobuf_Timestamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1AC4578F4(v7, v6);
  sub_1AC4578F4(v5, v4);
  v8 = MEMORY[0x1AC5B4070](v7, v6, v5, v4);
  sub_1AC4513F8(v5, v4);
  sub_1AC4513F8(v7, v6);
  return v8 & 1;
}

uint64_t Google_Protobuf_Timestamp.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC50AE10(__dst, v1, v2, v4, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B050(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC50AE10(__dst, v2, v3, v5, v4);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC50B0E4(uint64_t a1)
{
  result = sub_1AC50B10C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC50B10C()
{
  result = qword_1ED6E4290;
  if (!qword_1ED6E4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4290);
  }

  return result;
}

unint64_t sub_1AC50B160(uint64_t a1)
{
  *(a1 + 8) = sub_1AC4D50A4();
  result = sub_1AC50B190();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC50B190()
{
  result = qword_1EB559D30;
  if (!qword_1EB559D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D30);
  }

  return result;
}

unint64_t sub_1AC50B1E8()
{
  result = qword_1EB559D38;
  if (!qword_1EB559D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D38);
  }

  return result;
}

uint64_t sub_1AC50B23C()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_87_1();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B27C()
{
  OUTLINED_FUNCTION_56_3();
  MEMORY[0x1AC5B48A0](v0 & 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B2B8()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_87_1();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B2F8()
{
  OUTLINED_FUNCTION_56_3();
  MEMORY[0x1AC5B48A0](v0 + 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B338()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_87_1();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B378()
{
  OUTLINED_FUNCTION_56_3();
  MEMORY[0x1AC5B48A0](v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B3B4(uint64_t a1, char a2)
{
  sub_1AC51F468();
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1AC5B48A0](v4);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B404(uint64_t a1)
{
  sub_1AC51F468();
  sub_1AC471208(v3, a1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B454(uint64_t a1)
{
  sub_1AC51F468();
  sub_1AC51F488();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B4D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1AC5B48A0](v3, a2);
}

uint64_t sub_1AC50B564(uint64_t a1, uint64_t a2)
{
  sub_1AC51F468();
  sub_1AC51F488();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B5A8(uint64_t a1)
{
  OUTLINED_FUNCTION_84_2(a1);
  OUTLINED_FUNCTION_87_1();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B5E8(uint64_t a1, uint64_t a2)
{
  sub_1AC51F468();
  sub_1AC471208(v4, a2);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B634(uint64_t a1, uint64_t a2)
{
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](a2);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B678(uint64_t a1)
{
  OUTLINED_FUNCTION_84_2(a1);
  MEMORY[0x1AC5B48A0](v1 & 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B6B4(uint64_t a1)
{
  OUTLINED_FUNCTION_84_2(a1);
  OUTLINED_FUNCTION_87_1();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B6F4(uint64_t a1)
{
  OUTLINED_FUNCTION_84_2(a1);
  MEMORY[0x1AC5B48A0](v1 + 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B734(uint64_t a1)
{
  OUTLINED_FUNCTION_84_2(a1);
  OUTLINED_FUNCTION_87_1();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B774(uint64_t a1)
{
  OUTLINED_FUNCTION_84_2(a1);
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B7B0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1AC51F468();
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1AC5B48A0](v5);
  return sub_1AC51F4C8();
}

void sub_1AC50B7FC()
{
  OUTLINED_FUNCTION_60();
  v284 = v2;
  v3 = v1;
  v6 = OUTLINED_FUNCTION_37_6(v4, v5);
  MEMORY[0x1AC5B48A0](v6);
  v293 = *(v0 + 16);
  if (v293)
  {
    v7 = v0 + 32;
    v8 = 0;
    v264 = v3;
    v290 = v7;
    while (2)
    {
      v9 = v7 + 48 * v8;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      v15 = *(v9 + 40);
      OUTLINED_FUNCTION_83_2(v303);
      v16 = v13;
      v306 = v13;
      if ((~v12 & 0x3000000000000000) == 0 && v13 == 255)
      {
        v17 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v21, v22);
LABEL_165:
        ++v8;
        switch(v15 >> 62)
        {
          case 1uLL:
            v229 = v14;
            v230 = v14 >> 32;
            goto LABEL_170;
          case 2uLL:
            v229 = *(v14 + 16);
            v230 = *(v14 + 24);
LABEL_170:
            if (v229 != v230)
            {
              goto LABEL_171;
            }

            goto LABEL_172;
          case 3uLL:
            goto LABEL_172;
          default:
            if ((v15 & 0xFF000000000000) == 0)
            {
              goto LABEL_172;
            }

LABEL_171:
            sub_1AC51EC58();
LABEL_172:
            v231 = OUTLINED_FUNCTION_9_17();
            sub_1AC4854E8(v231, v232, v233, v306);
            v234 = OUTLINED_FUNCTION_40_7();
            sub_1AC4513F8(v234, v235);
            OUTLINED_FUNCTION_77_1(v236, v303);
            if (v8 == v293)
            {
              goto LABEL_173;
            }

            continue;
        }
      }

      break;
    }

    v23 = v11;
    switch((v12 >> 60) & 3 | (4 * (v16 & 1u)))
    {
      case 1uLL:
        v192 = OUTLINED_FUNCTION_9_17();
        v194 = v193;
        sub_1AC48541C(v192, v195, v196, v193);
        v197 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v197, v198);
        v199 = OUTLINED_FUNCTION_9_17();
        sub_1AC4854E8(v199, v200, v201, v194);
        MEMORY[0x1AC5B48A0](2);
        if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v202 = v10;
        }

        else
        {
          v202 = 0;
        }

        MEMORY[0x1AC5B48D0](v202);
        goto LABEL_141;
      case 2uLL:
        v176 = v16;
        MEMORY[0x1AC5B48A0](3);
        v177 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v177, v178, v179, v176);
        v180 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v180, v181);
        OUTLINED_FUNCTION_28_8();
        sub_1AC51EEB8();
        goto LABEL_141;
      case 3uLL:
        v182 = OUTLINED_FUNCTION_9_17();
        v184 = v183;
        sub_1AC48541C(v182, v185, v186, v183);
        v187 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v187, v188);
        v189 = OUTLINED_FUNCTION_9_17();
        sub_1AC4854E8(v189, v190, v191, v184);
        MEMORY[0x1AC5B48A0](4);
        sub_1AC51F488();
        goto LABEL_141;
      case 4uLL:
        v281 = v12 >> 62;
        v273 = v11 >> 32;
        MEMORY[0x1AC5B48A0](5);
        memcpy(__dst, v303, sizeof(__dst));
        if (!*(v10 + 16))
        {
          v214 = OUTLINED_FUNCTION_9_17();
          sub_1AC48541C(v214, v215, v216, v306);
          v217 = OUTLINED_FUNCTION_40_7();
          sub_1AC4578F4(v217, v218);
          v219 = OUTLINED_FUNCTION_9_17();
          sub_1AC48541C(v219, v220, v221, v306);
          goto LABEL_157;
        }

        v274 = v11;
        v282 = v8;
        MEMORY[0x1AC5B48A0](1);
        v280 = v10 + 64;
        OUTLINED_FUNCTION_73_1();
        v37 = v36 & v35;
        v38 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v38, v39, v40, v306);
        v41 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v41, v42);
        v43 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v43, v44, v45, v306);
        v46 = (v8 + 63) >> 6;

        v47 = 0;
        v48 = 0;
        v275 = v46;
        v276 = v11;
        v288 = v10;
        v277 = v12;
        v278 = v15;
        v279 = v14;
LABEL_13:
        v289 = v47;
        if (v37)
        {
          goto LABEL_19;
        }

        v8 = v282;
        while (1)
        {
          v49 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v49 >= v46)
          {
            goto LABEL_156;
          }

          v37 = *(v280 + 8 * v49);
          ++v48;
          if (v37)
          {
            v48 = v49;
LABEL_19:
            v50 = *(*(v288 + 48) + 16 * (__clz(__rbit64(v37)) | (v48 << 6)) + 8);
            OUTLINED_FUNCTION_96_2();
            v52 = *v51;
            v53 = *(v51 + 8);
            v54 = *(v51 + 16);
            v55 = *(v51 + 24);
            v57 = *(v51 + 32);
            v56 = *(v51 + 40);

            v291 = v53;
            v292 = v52;
            v58 = OUTLINED_FUNCTION_60_3();
            v59 = v54;
            v305 = v55;
            sub_1AC48541C(v58, v60, v54, v55);
            v285 = v56;
            v286 = v57;
            sub_1AC4578F4(v57, v56);
            if (!v50)
            {
              v8 = v282;
              v15 = v278;
              v14 = v279;
              v11 = v276;
              v12 = v277;
LABEL_156:

              MEMORY[0x1AC5B48A0](v289);
              v23 = v274;
LABEL_157:
              v7 = v290;
              switch(v281)
              {
                case 1:
                  v224 = v273;
                  goto LABEL_162;
                case 2:
                  v23 = *(v11 + 16);
                  v224 = *(v11 + 24);
LABEL_162:
                  if (v23 != v224)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_164;
                case 3:
                  goto LABEL_164;
                default:
                  if ((v12 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_163;
              }
            }

            memcpy(__src, __dst, sizeof(__src));
            OUTLINED_FUNCTION_38_7();
            sub_1AC51EEB8();

            memcpy(v300, __src, sizeof(v300));
            v14 = v279;
            v11 = v276;
            v287 = v54;
            if ((~v54 & 0x3000000000000000) != 0 || v55 != 255)
            {
              v12 = v277;
              v15 = v278;
              switch((v59 >> 60) & 3 | (4 * (v305 & 1u)))
              {
                case 1uLL:
                  v154 = OUTLINED_FUNCTION_70_2();
                  sub_1AC4854E8(v154, v155, v156, v157);
                  MEMORY[0x1AC5B48A0](2);
                  if ((v52 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v158 = v52;
                  }

                  else
                  {
                    v158 = 0;
                  }

                  MEMORY[0x1AC5B48D0](v158);
                  goto LABEL_102;
                case 2uLL:
                  MEMORY[0x1AC5B48A0](3);
                  OUTLINED_FUNCTION_27_8();
                  sub_1AC51EEB8();
                  goto LABEL_102;
                case 3uLL:
                  v150 = OUTLINED_FUNCTION_70_2();
                  sub_1AC4854E8(v150, v151, v152, v153);
                  MEMORY[0x1AC5B48A0](4);
                  sub_1AC51F488();
                  goto LABEL_102;
                case 4uLL:
                  v260 = v59 >> 62;
                  v256 = v291 >> 32;
                  v257 = v291;
                  MEMORY[0x1AC5B48A0](5);
                  memcpy(v299, v300, sizeof(v299));
                  if (*(v52 + 16))
                  {
                    MEMORY[0x1AC5B48A0](1);
                    v259 = v52 + 64;
                    OUTLINED_FUNCTION_73_1();
                    v270 = v70 & v69;
                    sub_1AC48541C(v52, v291, v287, v305);
                    v71 = (v52 + 63) >> 6;

                    v72 = 0;
                    v73 = 0;
                    v258 = (v292 + 63) >> 6;
                    while (1)
                    {
                      v74 = v270;
                      v265 = v72;
                      if (!v270)
                      {
                        do
                        {
                          v75 = v73 + 1;
                          if (__OFADD__(v73, 1))
                          {
                            goto LABEL_175;
                          }

                          if (v75 >= v71)
                          {
                            goto LABEL_125;
                          }

                          v74 = *(v259 + 8 * v75);
                          ++v73;
                        }

                        while (!v74);
                        v73 = v75;
                      }

                      v271 = v74;
                      v76 = (*(v292 + 48) + 16 * (__clz(__rbit64(v74)) | (v73 << 6)));
                      v77 = v76[1];
                      v261 = v73;
                      v262 = *v76;
                      OUTLINED_FUNCTION_96_2();
                      v79 = *v78;
                      v80 = *(v78 + 8);
                      v81 = *(v78 + 16);
                      v82 = *(v78 + 24);
                      v268 = *(v78 + 32);
                      v272 = *(v78 + 40);

                      v269 = v79;
                      v267 = v80;
                      HIDWORD(v263) = v82;
                      sub_1AC48541C(v79, v80, v81, v82);
                      sub_1AC4578F4(v268, v272);
                      if (!v77)
                      {
                        break;
                      }

                      memcpy(v298, v299, sizeof(v298));
                      sub_1AC51EEB8();

                      v83 = memcpy(v297, v298, sizeof(v297));
                      v89 = v81;
                      v90 = (~v81 & 0x3000000000000000) == 0;
                      v15 = v278;
                      v14 = v279;
                      v266 = v89;
                      if (!v90 || v82 != 255)
                      {
                        switch((v89 >> 60) & 3 | (4 * (v82 & 1u)))
                        {
                          case 1uLL:
                            v124 = OUTLINED_FUNCTION_55_3(v83, v267, v89, v84, v85, v86, v87, v88, v237, v238, v240, v242, v243, v244, v246, v247, v248, v249, v250, v251, v252, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v89, v267, v268, v79);
                            sub_1AC4854E8(v124, v125, v126, v127);
                            MEMORY[0x1AC5B48A0](2);
                            if ((v269 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v128 = v269;
                            }

                            else
                            {
                              v128 = 0;
                            }

                            MEMORY[0x1AC5B48D0](v128);
                            goto LABEL_64;
                          case 2uLL:
                            MEMORY[0x1AC5B48A0](3);
                            v14 = v279;
                            sub_1AC51EEB8();
                            goto LABEL_64;
                          case 3uLL:
                            v120 = OUTLINED_FUNCTION_55_3(v83, v267, v89, v84, v85, v86, v87, v88, v237, v238, v240, v242, v243, v244, v246, v247, v248, v249, v250, v251, v252, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v89, v267, v268, v79);
                            sub_1AC4854E8(v120, v121, v122, v123);
                            MEMORY[0x1AC5B48A0](4);
                            sub_1AC51F488();
                            goto LABEL_64;
                          case 4uLL:
                            v245 = v89 >> 62;
                            v239 = v267 >> 32;
                            v241 = v267;
                            MEMORY[0x1AC5B48A0](5);
                            memcpy(v296, v297, sizeof(v296));
                            if (*(v79 + 16))
                            {
                              MEMORY[0x1AC5B48A0](1);
                              v243 = v79 + 64;
                              v97 = 1 << *(v79 + 32);
                              if (v97 < 64)
                              {
                                v98 = ~(-1 << v97);
                              }

                              else
                              {
                                v98 = -1;
                              }

                              v99 = v82;
                              v100 = v98 & *(v79 + 64);
                              sub_1AC48541C(v79, v267, v266, v99);
                              v101 = (v97 + 63) >> 6;

                              v103 = 0;
                              v104 = 0;
                              v242 = v101;
                              while (1)
                              {
                                v252 = v103;
                                if (!v100)
                                {
                                  do
                                  {
                                    v105 = v104 + 1;
                                    if (__OFADD__(v104, 1))
                                    {
                                      goto LABEL_176;
                                    }

                                    if (v105 >= v101)
                                    {
                                      goto LABEL_87;
                                    }

                                    v100 = *(v243 + 8 * v105);
                                    ++v104;
                                  }

                                  while (!v100);
                                  v104 = v105;
                                }

                                v249 = v104;
                                v250 = v100;
                                v248 = *(*(v102 + 48) + 16 * (__clz(__rbit64(v100)) | (v104 << 6)));
                                OUTLINED_FUNCTION_96_2();
                                v108 = *v106;
                                v107 = *(v106 + 8);
                                v262 = *(v106 + 16);
                                v109 = *(v106 + 24);
                                v251 = *(v106 + 32);
                                v254 = *(v106 + 40);
                                v255 = v110;

                                v246 = v107;
                                v247 = v108;
                                v111 = OUTLINED_FUNCTION_29_8();
                                sub_1AC48541C(v111, v112, v262, v109);
                                sub_1AC4578F4(v251, v254);
                                if (!v255)
                                {
                                  break;
                                }

                                v304[0] = v108;
                                v304[1] = v107;
                                v304[2] = v262;
                                v304[3] = v109;
                                v304[4] = v251;
                                v304[5] = v254;
                                memcpy(v295, v296, sizeof(v295));
                                sub_1AC51EEB8();

                                memcpy(v294, v295, sizeof(v294));
                                sub_1AC4F7938(v294);
                                if (v284)
                                {
                                  MEMORY[0x1AC5B4BA0](v284);
                                }

                                v100 = (v250 - 1) & v250;
                                sub_1AC4DD16C(v304);
                                OUTLINED_FUNCTION_104_2(v295, v113, v114, v115, v116, v117, v118, v119, v237, v239, v241, v242, v243, v245, v246, v108, v248, v249, v250, v251, v252, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, 0, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294[0]);
                                v103 = sub_1AC51F4C8() ^ v253;
                                v102 = v269;
                                v101 = v242;
                                v104 = v249;
                              }

LABEL_87:
                              LOBYTE(v82) = BYTE4(v263);

                              v133 = MEMORY[0x1AC5B48A0](v252);
                            }

                            else
                            {
                              sub_1AC485440(v79, v267, v266, v82 & 1);
                            }

                            v129 = v271;
                            v141 = v267;
                            switch(v245)
                            {
                              case 1:
                                v145 = v239;
                                v144 = v241;
                                goto LABEL_93;
                              case 2:
                                v144 = *(v267 + 16);
                                v145 = *(v267 + 24);
LABEL_93:
                                if (v144 != v145)
                                {
                                  goto LABEL_94;
                                }

                                goto LABEL_95;
                              case 3:
                                goto LABEL_95;
                              default:
                                if ((v266 & 0xFF000000000000) != 0)
                                {
                                  goto LABEL_94;
                                }

                                goto LABEL_95;
                            }

                          case 5uLL:
                            v245 = v89 >> 62;
                            v239 = v267 >> 32;
                            v241 = v267;
                            MEMORY[0x1AC5B48A0](6);
                            memcpy(v296, v297, sizeof(v296));
                            v132 = *(v79 + 16);
                            sub_1AC485440(v79, v267, v266, v82 & 1);
                            if (v132)
                            {
                              v140 = v284;
                              sub_1AC50B7FC();
                              v14 = v279;
                              if (v284)
                              {
                                v133 = MEMORY[0x1AC5B4BA0](v284);
                                v284 = 0;
                                v129 = v271;
                                v141 = v267;
                                goto LABEL_95;
                              }

                              v129 = v271;
                            }

                            else
                            {
                              v140 = v284;
                              v129 = v271;
                              v14 = v279;
                            }

                            v284 = v140;
                            v141 = v267;
                            switch(v245)
                            {
                              case 1:
                                v143 = v267 >> 32;
                                v142 = v267;
                                goto LABEL_85;
                              case 2:
                                v142 = *(v267 + 16);
                                v143 = *(v267 + 24);
LABEL_85:
                                if (v142 != v143)
                                {
                                  goto LABEL_94;
                                }

                                break;
                              case 3:
                                break;
                              default:
                                if ((v266 & 0xFF000000000000) == 0)
                                {
                                  break;
                                }

LABEL_94:
                                v133 = sub_1AC51EC58();
                                v141 = v267;
                                break;
                            }

LABEL_95:
                            v146 = OUTLINED_FUNCTION_55_3(v133, v141, v134, v135, v136, v137, v138, v139, v237, v239, v241, v242, v243, v245, v246, v247, v248, v249, v250, v251, v252, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269);
                            sub_1AC4854E8(v146, v147, v148, v149);
                            memcpy(v297, v296, sizeof(v297));
                            v89 = v266;
                            goto LABEL_66;
                          default:
                            v91 = OUTLINED_FUNCTION_55_3(v83, v267, v89, v84, v85, v86, v87, v88, v237, v238, v240, v242, v243, v244, v246, v247, v248, v249, v250, v251, v252, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v89, v267, v268, v79);
                            v93 = v92;
                            sub_1AC4854E8(v91, v92, v94, v95);
                            MEMORY[0x1AC5B48A0](1);
                            v90 = (v93 & 1) == 0;
                            v14 = v279;
                            if (v90)
                            {
                              v96 = v269;
                            }

                            else
                            {
                              v96 = 0;
                            }

                            MEMORY[0x1AC5B48A0](v96);
LABEL_64:
                            v89 = v266;
                            break;
                        }
                      }

                      v129 = v271;
LABEL_66:
                      v270 = (v129 - 1) & v129;
                      switch(v272 >> 62)
                      {
                        case 1uLL:
                          v130 = v268;
                          v131 = v268 >> 32;
                          goto LABEL_71;
                        case 2uLL:
                          v130 = *(v268 + 16);
                          v131 = *(v268 + 24);
LABEL_71:
                          if (v130 != v131)
                          {
                            goto LABEL_72;
                          }

                          goto LABEL_73;
                        case 3uLL:
                          goto LABEL_73;
                        default:
                          if ((v272 & 0xFF000000000000) == 0)
                          {
                            goto LABEL_73;
                          }

LABEL_72:
                          sub_1AC51EC58();
                          v89 = v266;
LABEL_73:
                          sub_1AC4854E8(v269, v267, v89, v82);
                          sub_1AC4513F8(v268, v272);
                          memcpy(v298, v297, sizeof(v298));
                          v72 = sub_1AC51F4C8() ^ v265;
                          v71 = v258;
                          v73 = v261;
                          break;
                      }
                    }

                    v15 = v278;
                    v14 = v279;
LABEL_125:

                    MEMORY[0x1AC5B48A0](v265);
                  }

                  else
                  {
                    v168 = OUTLINED_FUNCTION_93_2();
                    sub_1AC485440(v168, v169, v287, v170);
                  }

                  v62 = v285;
                  v61 = v286;
                  v171 = v291;
                  switch(v260)
                  {
                    case 1:
                      v175 = v256;
                      v174 = v257;
                      goto LABEL_131;
                    case 2:
                      v174 = *(v291 + 16);
                      v175 = *(v291 + 24);
LABEL_131:
                      if (v174 != v175)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_134;
                    case 3:
                      goto LABEL_134;
                    default:
                      if ((v287 & 0xFF000000000000) != 0)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_134;
                  }

                case 5uLL:
                  MEMORY[0x1AC5B48A0](6);
                  memcpy(v299, v300, sizeof(v299));
                  v163 = *(v52 + 16);
                  v164 = OUTLINED_FUNCTION_93_2();
                  sub_1AC485440(v164, v165, v59, v166);
                  if (v163)
                  {
                    v167 = v284;
                    sub_1AC50B7FC();
                    if (v284)
                    {
                      MEMORY[0x1AC5B4BA0](v284);
                      v284 = 0;
                      v62 = v285;
                      v61 = v286;
                      goto LABEL_133;
                    }

                    v62 = v285;
                    v61 = v286;
                  }

                  else
                  {
                    v167 = v284;
                    v62 = v285;
                    v61 = v286;
                  }

                  v284 = v167;
                  v171 = v291;
                  switch(v59 >> 62)
                  {
                    case 1uLL:
                      v173 = v291 >> 32;
                      v172 = v291;
                      goto LABEL_122;
                    case 2uLL:
                      v172 = *(v291 + 16);
                      v173 = *(v291 + 24);
LABEL_122:
                      if (v172 != v173)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_134;
                    case 3uLL:
                      goto LABEL_134;
                    default:
                      if ((v287 & 0xFF000000000000) == 0)
                      {
                        goto LABEL_134;
                      }

LABEL_132:
                      sub_1AC51EC58();
                      break;
                  }

LABEL_133:
                  v171 = v291;
LABEL_134:
                  sub_1AC4854E8(v292, v171, v287, v305);
                  memcpy(v300, v299, sizeof(v300));
                  goto LABEL_103;
                default:
                  v63 = OUTLINED_FUNCTION_70_2();
                  v65 = v64;
                  sub_1AC4854E8(v63, v64, v66, v67);
                  MEMORY[0x1AC5B48A0](1);
                  if (v65)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = v52;
                  }

                  MEMORY[0x1AC5B48A0](v68);
LABEL_102:
                  v62 = v285;
                  v61 = v286;
                  goto LABEL_103;
              }
            }

            v62 = v285;
            v61 = v286;
            v12 = v277;
            v15 = v278;
LABEL_103:
            v37 &= v37 - 1;
            switch(v62 >> 62)
            {
              case 1uLL:
                v159 = v61;
                v160 = v61 >> 32;
                goto LABEL_108;
              case 2uLL:
                v159 = *(v61 + 16);
                v160 = *(v61 + 24);
LABEL_108:
                if (v159 != v160)
                {
                  goto LABEL_109;
                }

                goto LABEL_110;
              case 3uLL:
                goto LABEL_110;
              default:
                if ((v62 & 0xFF000000000000) == 0)
                {
                  goto LABEL_110;
                }

LABEL_109:
                OUTLINED_FUNCTION_38_7();
                sub_1AC51EC58();
LABEL_110:
                sub_1AC4854E8(v292, v291, v287, v305);
                v161 = OUTLINED_FUNCTION_44();
                sub_1AC4513F8(v161, v162);
                memcpy(__src, v300, sizeof(__src));
                v47 = sub_1AC51F4C8() ^ v289;
                v46 = v275;
                break;
            }

            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        return;
      case 5uLL:
        v283 = v8;
        v203 = v16;
        MEMORY[0x1AC5B48A0](6);
        memcpy(__dst, v303, sizeof(__dst));
        v204 = *(v10 + 16);
        v205 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v205, v206, v207, v203);
        v208 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v208, v209);
        v210 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v210, v211, v212, v203);
        if (v204)
        {
          v213 = v284;
          sub_1AC50B7FC();
          if (v284)
          {
            MEMORY[0x1AC5B4BA0](v284);
            v284 = 0;
            v8 = v283;
            v7 = v290;
LABEL_164:
            v225 = OUTLINED_FUNCTION_9_17();
            sub_1AC4854E8(v225, v226, v227, v228);
            memcpy(v303, __dst, sizeof(v303));
            goto LABEL_165;
          }

          v8 = v283;
        }

        else
        {
          v8 = v283;
          v213 = v284;
        }

        v7 = v290;
        v284 = v213;
        v222 = v11;
        switch(v12 >> 62)
        {
          case 1uLL:
            v223 = v11 >> 32;
            goto LABEL_153;
          case 2uLL:
            v222 = *(v11 + 16);
            v223 = *(v11 + 24);
LABEL_153:
            if (v222 != v223)
            {
              goto LABEL_163;
            }

            goto LABEL_164;
          case 3uLL:
            goto LABEL_164;
          default:
            if ((v12 & 0xFF000000000000) == 0)
            {
              goto LABEL_164;
            }

LABEL_163:
            sub_1AC51EC58();
            break;
        }

        goto LABEL_164;
      default:
        v24 = OUTLINED_FUNCTION_9_17();
        v26 = v25;
        sub_1AC48541C(v24, v27, v28, v25);
        v29 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v29, v30);
        v31 = OUTLINED_FUNCTION_9_17();
        sub_1AC4854E8(v31, v32, v33, v26);
        MEMORY[0x1AC5B48A0](1);
        if (v11)
        {
          v34 = 0;
        }

        else
        {
          v34 = v10;
        }

        MEMORY[0x1AC5B48A0](v34);
LABEL_141:
        v7 = v290;
        goto LABEL_165;
    }
  }

LABEL_173:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC50C78C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v6 = *(v2 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_64_2(__src);
    v37 = v6 - 1;
    v7 = (v2 + 80);
    while (1)
    {
      v8 = *(v7 - 6);
      v9 = *(v7 - 5);
      v10 = *(v7 - 4);
      v11 = *(v7 - 3);
      v12 = *v7;
      memcpy(__dst, __src, sizeof(__dst));
      v13 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v13 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        MEMORY[0x1AC5B48A0](1);

        sub_1AC4578F4(v10, v11);
        v14 = OUTLINED_FUNCTION_41_5();
        sub_1AC4852EC(v14, v15, v12);
        sub_1AC51EEB8();
      }

      else
      {

        sub_1AC4578F4(v10, v11);
        v16 = OUTLINED_FUNCTION_41_5();
        sub_1AC4852EC(v16, v17, v12);
      }

      v18 = v37;
      if (v12)
      {
        MEMORY[0x1AC5B48A0](2);
        v19 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v19, v20);

        sub_1AC476370(__dst);
        v21 = OUTLINED_FUNCTION_41_5();
        sub_1AC48532C(v21, v22, v12);
      }

      v7 += 7;
      switch(v11 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_15;
        case 2uLL:
          v23 = *(v10 + 16);
          v24 = *(v10 + 24);
LABEL_15:
          if (v23 != v24)
          {
            goto LABEL_16;
          }

          goto LABEL_17;
        case 3uLL:
          goto LABEL_17;
        default:
          if ((v11 & 0xFF000000000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          sub_1AC51EC58();
LABEL_17:

          sub_1AC4513F8(v10, v11);
          v25 = OUTLINED_FUNCTION_41_5();
          v27 = sub_1AC48532C(v25, v26, v12);
          if (!v18)
          {
            return OUTLINED_FUNCTION_86_2(v27, __dst, v28, v29, v30, v31, v32, v33, v34, v3);
          }

          memcpy(__src, __dst, 0x48uLL);
          v37 = v18 - 1;
          break;
      }
    }
  }

  return result;
}

void *sub_1AC50C974(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  result = MEMORY[0x1AC5B48A0](a2);
  v8 = *(a1 + 16);
  if (v8)
  {
    memcpy(__dst, v5, sizeof(__dst));
    v9 = (a1 + 32);
    for (i = v8 - 1; ; --i)
    {
      memcpy(v14, v9, sizeof(v14));
      memcpy(__src, __dst, sizeof(__src));
      sub_1AC48536C(v14, &v11);
      sub_1AC512FD4();
      if (v4)
      {
        MEMORY[0x1AC5B4BA0](v4);
        v4 = 0;
      }

      sub_1AC4853C8(v14);
      if (!i)
      {
        break;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v9 += 128;
    }

    return memcpy(v5, __src, 0x48uLL);
  }

  return result;
}

void *sub_1AC50CA68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MEMORY[0x1AC5B48A0](a2);
  v30 = *(a1 + 16);
  if (v30)
  {
    memcpy(__dst, v2, sizeof(__dst));
    v6 = 0;
    v29 = a1 + 32;
    while (1)
    {
      v7 = (v29 + 48 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v7 + 4);
      v12 = v7[3];
      v11 = v7[4];
      v13 = v7[5];
      memcpy(__src, __dst, sizeof(__src));
      v14 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v14 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        break;
      }

      sub_1AC4578F4(v11, v13);
      if (v10)
      {
        goto LABEL_7;
      }

LABEL_8:
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_27;
      }

      v31 = v13;
      v32 = v11;
      v33 = v6;
      MEMORY[0x1AC5B48A0](3);
      memcpy(v35, __src, sizeof(v35));
      v38 = v15 - 1;
      v16 = (v12 + 80);
      while (2)
      {
        v18 = *(v16 - 6);
        v17 = *(v16 - 5);
        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v22 = *(v16 - 2);
        v21 = *(v16 - 1);
        v23 = *v16;
        memcpy(v34, v35, sizeof(v34));
        v24 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v24 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          MEMORY[0x1AC5B48A0](1);

          sub_1AC4578F4(v20, v19);
          sub_1AC4852EC(v22, v21, v23);
          sub_1AC51EEB8();
          if (!v23)
          {
            goto LABEL_15;
          }

LABEL_14:
          MEMORY[0x1AC5B48A0](2);
          sub_1AC4578F4(v22, v21);

          sub_1AC476370(v34);
          sub_1AC48532C(v22, v21, v23);
          goto LABEL_15;
        }

        sub_1AC4578F4(v20, v19);
        sub_1AC4852EC(v22, v21, v23);
        if (v23)
        {
          goto LABEL_14;
        }

LABEL_15:
        v16 += 7;
        switch(v19 >> 62)
        {
          case 1uLL:
            v25 = v20;
            v26 = v20 >> 32;
            goto LABEL_22;
          case 2uLL:
            v25 = *(v20 + 16);
            v26 = *(v20 + 24);
LABEL_22:
            if (v25 != v26)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          case 3uLL:
            goto LABEL_24;
          default:
            if ((v19 & 0xFF000000000000) == 0)
            {
              goto LABEL_24;
            }

LABEL_23:
            sub_1AC51EC58();
LABEL_24:

            sub_1AC4513F8(v20, v19);
            sub_1AC48532C(v22, v21, v23);
            if (v38)
            {
              memcpy(v35, v34, sizeof(v35));
              --v38;
              continue;
            }

            memcpy(__src, v34, sizeof(__src));
            v3 = v2;
            v6 = v33;
            v13 = v31;
            v11 = v32;
LABEL_27:
            ++v6;
            switch(v13 >> 62)
            {
              case 1uLL:
                v27 = v11;
                v28 = v11 >> 32;
                goto LABEL_34;
              case 2uLL:
                v27 = *(v11 + 16);
                v28 = *(v11 + 24);
LABEL_34:
                if (v27 != v28)
                {
                  goto LABEL_35;
                }

                goto LABEL_36;
              case 3uLL:
                goto LABEL_36;
              default:
                if ((v13 & 0xFF000000000000) == 0)
                {
                  goto LABEL_36;
                }

LABEL_35:
                sub_1AC51EC58();
LABEL_36:

                sub_1AC4513F8(v11, v13);
                if (v6 == v30)
                {
                  return memcpy(v3, __src, 0x48uLL);
                }

                memcpy(__dst, __src, sizeof(__dst));
                break;
            }

            break;
        }

        break;
      }
    }

    MEMORY[0x1AC5B48A0](1);

    sub_1AC4578F4(v11, v13);
    sub_1AC51EEB8();
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_7:
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48D0](v10);
    goto LABEL_8;
  }

  return result;
}

void sub_1AC50CE2C()
{
  OUTLINED_FUNCTION_76_2();
  v3 = *(v2 + 16);
  if (v3)
  {
    v50 = v1;
    __dst = v0;
    v4 = OUTLINED_FUNCTION_64_2(v49);
    v12 = v3 - 1;
    v13 = (v2 + 72);
    while (1)
    {
      v15 = *(v13 - 5);
      v14 = *(v13 - 4);
      v17 = *(v13 - 3);
      v16 = *(v13 - 2);
      v18 = *(v13 - 1);
      v19 = *v13;
      v20 = OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v44, __dst, v48[0]);
      memcpy(v20, v21, v22);
      v23 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v23 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        MEMORY[0x1AC5B48A0](1);

        v24 = OUTLINED_FUNCTION_100();
        sub_1AC4578F4(v24, v25);
        sub_1AC51EEB8();
      }

      else
      {

        v26 = OUTLINED_FUNCTION_100();
        sub_1AC4578F4(v26, v27);
      }

      v28 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v28 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        MEMORY[0x1AC5B48A0](2);
        sub_1AC51EEB8();
      }

      v13 += 6;
      switch(v19 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_17;
        case 2uLL:
          v29 = *(v18 + 16);
          v30 = *(v18 + 24);
LABEL_17:
          if (v29 != v30)
          {
            goto LABEL_18;
          }

          goto LABEL_19;
        case 3uLL:
          goto LABEL_19;
        default:
          if ((v19 & 0xFF000000000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_18:
          OUTLINED_FUNCTION_175();
          sub_1AC51EC58();
LABEL_19:

          v31 = OUTLINED_FUNCTION_100();
          sub_1AC4513F8(v31, v32);
          if (!v12)
          {
            OUTLINED_FUNCTION_86_2(v33, v48, v35, v36, v37, v38, v39, v40, v45, __dsta);
            return;
          }

          v41 = OUTLINED_FUNCTION_18_13(v33, v34, v35, v36, v37, v38, v39, v40, v45, __dsta, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v49[0]);
          v4 = memcpy(v41, v42, v43);
          --v12;
          break;
      }
    }
  }
}

void sub_1AC50CFCC()
{
  v2 = v0;
  OUTLINED_FUNCTION_59_3();
  v3 = *(v1 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_83_2(__src);
    v4 = (v1 + 32);
    for (i = v3 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(v8, __src, sizeof(v8));
      sub_1AC48604C(__dst, &v7);
      sub_1AC4838E0(v8);
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
        v2 = 0;
      }

      v6 = sub_1AC486084(__dst);
      if (!i)
      {
        break;
      }

      memcpy(__src, v8, sizeof(__src));
      v4 += 104;
    }

    OUTLINED_FUNCTION_77_1(v6, v8);
  }
}

void sub_1AC50D0A4()
{
  OUTLINED_FUNCTION_60();
  v54 = v2;
  v5 = OUTLINED_FUNCTION_37_6(v3, v4);
  MEMORY[0x1AC5B48A0](v5);
  v56 = *(v0 + 16);
  if (v56)
  {
    v53 = v1;
    OUTLINED_FUNCTION_64_2(v74);
    v6 = 0;
    v55 = v0 + 32;
    while (1)
    {
      v7 = v55 + 120 * v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 32);
      HIDWORD(v68) = *(v7 + 48);
      v63 = *(v7 + 40);
      v64 = *(v7 + 56);
      v65 = *(v7 + 72);
      v66 = *(v7 + 24);
      LODWORD(v69) = *(v7 + 64);
      HIDWORD(v69) = *(v7 + 80);
      v12 = v6;
      v13 = *(v7 + 88);
      v14 = *(v7 + 96);
      v15 = *(v7 + 112);
      v67 = *(v7 + 104);
      OUTLINED_FUNCTION_75_2(v73);
      v16 = *(v9 + 16);
      v70 = v14;
      if (v16)
      {
        v62 = v12;
        MEMORY[0x1AC5B48A0](2);
        memcpy(__dst, v73, sizeof(__dst));

        v61 = v8;
        v59 = v10;
        sub_1AC4578F4(v8, v10);
        v60 = v11;

        v57 = v13;
        v17 = OUTLINED_FUNCTION_19();
        sub_1AC4B39F0(v17, v18);

        v26 = v16 - 1;
        v58 = v9;
        v27 = (v9 + 64);
        while (1)
        {
          v28 = *(v27 - 4);
          v29 = *(v27 - 3);
          v30 = *(v27 - 1);
          v31 = *v27;
          OUTLINED_FUNCTION_88_2(__src, v19, v20, v21, v22, v23, v24, v25, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          if (v30)
          {
            MEMORY[0x1AC5B48A0](1);
            sub_1AC4578F4(v28, v29);

            sub_1AC51EEB8();
          }

          else
          {
            sub_1AC4578F4(v28, v29);
          }

          if (v31 != 2)
          {
            MEMORY[0x1AC5B48A0](2);
            sub_1AC51F488();
          }

          v27 += 40;
          switch(v29 >> 62)
          {
            case 1uLL:
              v32 = v28;
              v33 = v28 >> 32;
              goto LABEL_15;
            case 2uLL:
              v32 = *(v28 + 16);
              v33 = *(v28 + 24);
LABEL_15:
              if (v32 != v33)
              {
                goto LABEL_16;
              }

              goto LABEL_17;
            case 3uLL:
              goto LABEL_17;
            default:
              if ((v29 & 0xFF000000000000) == 0)
              {
                goto LABEL_17;
              }

LABEL_16:
              sub_1AC51EC58();
LABEL_17:
              sub_1AC4513F8(v28, v29);

              if (!v26)
              {
                memcpy(v73, __src, sizeof(v73));
                v8 = v61;
                v34 = v62;
                v10 = v59;
                v35 = v57;
                if (v60)
                {
                  goto LABEL_20;
                }

                goto LABEL_21;
              }

              memcpy(__dst, __src, sizeof(__dst));
              --v26;
              break;
          }
        }
      }

      v37 = OUTLINED_FUNCTION_40_7();
      sub_1AC4578F4(v37, v38);

      v39 = OUTLINED_FUNCTION_19();
      sub_1AC4B39F0(v39, v40);

      v35 = v13;
      v34 = v12;
      if (v11)
      {
LABEL_20:
        MEMORY[0x1AC5B48A0](3);
        sub_1AC51EEB8();
      }

LABEL_21:
      if ((v68 & 0x100000000) == 0)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48D0](v63);
      }

      if ((v69 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48D0](v64);
      }

      if ((v69 & 0x100000000) == 0)
      {
        MEMORY[0x1AC5B48A0](6);
        if ((v65 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v65;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x1AC5B48D0](v36);
      }

      if (v70 >> 60 != 15)
      {
        MEMORY[0x1AC5B48A0](7);
        sub_1AC4578F4(v35, v70);
        sub_1AC51EC58();
        sub_1AC45AC74(v35, v70);
      }

      if (v15)
      {
        MEMORY[0x1AC5B48A0](8);
        sub_1AC51EEB8();
      }

      v6 = v34 + 1;
      switch(v10 >> 62)
      {
        case 1uLL:
          v41 = v8;
          v42 = v8 >> 32;
          goto LABEL_41;
        case 2uLL:
          v41 = *(v8 + 16);
          v42 = *(v8 + 24);
LABEL_41:
          if (v41 != v42)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 3uLL:
          goto LABEL_43;
        default:
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_43;
          }

LABEL_42:
          sub_1AC51EC58();
LABEL_43:

          v43 = OUTLINED_FUNCTION_40_7();
          sub_1AC4513F8(v43, v44);

          sub_1AC45AC74(v35, v70);

          if (v6 == v56)
          {
            OUTLINED_FUNCTION_86_2(v45, v73, v46, v47, v48, v49, v50, v51, v52, v53);
            goto LABEL_46;
          }

          memcpy(v74, v73, 0x48uLL);
          break;
      }
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_61();
}

void sub_1AC50D4C4()
{
  OUTLINED_FUNCTION_59_3();
  v2 = *(v1 + 16);
  if (v2)
  {
    v43 = v0;
    v3 = OUTLINED_FUNCTION_83_2(v42);
    v11 = v2 - 1;
    v12 = (v1 + 64);
    while (1)
    {
      v13 = *(v12 - 4);
      v14 = *(v12 - 3);
      v15 = *(v12 - 1);
      v16 = *v12;
      OUTLINED_FUNCTION_78_1(v3, v4, v5, v6, v7, v8, v9, v10, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      if (v15)
      {
        MEMORY[0x1AC5B48A0](1);
        v17 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v17, v18);

        sub_1AC51EEB8();
      }

      else
      {
        v19 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v19, v20);
      }

      if (v16 != 2)
      {
        MEMORY[0x1AC5B48A0](2);
        sub_1AC51F488();
      }

      v12 += 40;
      switch(v14 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_13;
        case 2uLL:
          v21 = *(v13 + 16);
          v22 = *(v13 + 24);
LABEL_13:
          if (v21 != v22)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        case 3uLL:
          goto LABEL_15;
        default:
          if ((v14 & 0xFF000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          sub_1AC51EC58();
LABEL_15:
          v23 = OUTLINED_FUNCTION_41_5();
          sub_1AC4513F8(v23, v24);

          if (!v11)
          {
            OUTLINED_FUNCTION_77_1(v25, &v33);
            return;
          }

          v3 = OUTLINED_FUNCTION_79_1(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          --v11;
          break;
      }
    }
  }
}

void *sub_1AC50D620(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v6 = *(v2 + 16);
  if (v6)
  {
    v31 = v3;
    OUTLINED_FUNCTION_64_2(__src);
    v35 = v6 - 1;
    v7 = (v2 + 89);
    while (1)
    {
      v8 = *(v7 - 57);
      v9 = *(v7 - 49);
      v10 = *(v7 - 41);
      v11 = *(v7 - 37);
      v12 = *(v7 - 25);
      v13 = *(v7 - 9);
      v14 = *(v7 - 1);
      v32 = *v7;
      memcpy(__dst, __src, sizeof(__dst));
      if ((v11 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48D0](v10);
      }

      if (!v12)
      {
        break;
      }

      MEMORY[0x1AC5B48A0](2);
      v15 = OUTLINED_FUNCTION_100();
      sub_1AC4578F4(v15, v16);

      sub_1AC51EEB8();
      if (v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (v14 != 2)
      {
        MEMORY[0x1AC5B48A0](5);
        sub_1AC51F488();
      }

      if (v32 != 2)
      {
        MEMORY[0x1AC5B48A0](6);
        sub_1AC51F488();
      }

      v7 += 64;
      switch(v9 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_19;
        case 2uLL:
          v19 = *(v8 + 16);
          v20 = *(v8 + 24);
LABEL_19:
          if (v19 != v20)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        case 3uLL:
          goto LABEL_21;
        default:
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          OUTLINED_FUNCTION_175();
          sub_1AC51EC58();
LABEL_21:
          v21 = OUTLINED_FUNCTION_100();
          sub_1AC4513F8(v21, v22);

          if (!v35)
          {
            return OUTLINED_FUNCTION_86_2(v23, __dst, v24, v25, v26, v27, v28, v29, v30, v31);
          }

          memcpy(__src, __dst, 0x48uLL);
          --v35;
          break;
      }
    }

    v17 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v17, v18);

    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51EEB8();
    goto LABEL_8;
  }

  return result;
}

void sub_1AC50D840()
{
  OUTLINED_FUNCTION_76_2();
  v3 = *(v2 + 16);
  if (v3)
  {
    v46 = v1;
    __dst = v0;
    v4 = OUTLINED_FUNCTION_64_2(v45);
    v12 = v3 - 1;
    v13 = (v2 + 64);
    while (1)
    {
      v14 = *(v13 - 4);
      v15 = *(v13 - 3);
      v16 = *(v13 - 16);
      v17 = *v13;
      v18 = OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v40, __dst, v44[0]);
      memcpy(v18, v19, v20);
      if (v17)
      {
        MEMORY[0x1AC5B48A0](2);
        v21 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v21, v22);

        sub_1AC51EEB8();
      }

      else
      {
        v23 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v23, v24);
      }

      if (v16 != 12)
      {
        MEMORY[0x1AC5B48A0](3);
        MEMORY[0x1AC5B48A0](qword_1AC52BD98[v16]);
      }

      v13 += 5;
      switch(v15 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_13;
        case 2uLL:
          v25 = *(v14 + 16);
          v26 = *(v14 + 24);
LABEL_13:
          if (v25 != v26)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        case 3uLL:
          goto LABEL_15;
        default:
          if ((v15 & 0xFF000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          sub_1AC51EC58();
LABEL_15:
          v27 = OUTLINED_FUNCTION_41_5();
          sub_1AC4513F8(v27, v28);

          if (!v12)
          {
            OUTLINED_FUNCTION_86_2(v29, v44, v31, v32, v33, v34, v35, v36, v41, __dsta);
            return;
          }

          v37 = OUTLINED_FUNCTION_18_13(v29, v30, v31, v32, v33, v34, v35, v36, v41, __dsta, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v45[0]);
          v4 = memcpy(v37, v38, v39);
          --v12;
          break;
      }
    }
  }
}

void *sub_1AC50D9AC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v30 = *(v2 + 16);
  if (v30)
  {
    v28 = v3;
    OUTLINED_FUNCTION_64_2(__src);
    v6 = 0;
    v29 = v2 + 32;
    while (1)
    {
      v7 = (v29 + 72 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v7[4];
      v33 = v7[6];
      v13 = v7[8];
      memcpy(__dst, __src, sizeof(__dst));
      v14 = *(v8 + 16);
      if (v14)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48A0](*(v8 + 16));
        v15 = v8 + 32;
        do
        {
          v15 += 4;
          sub_1AC51F498();
          --v14;
        }

        while (v14);
      }

      v16 = *(v9 + 16);
      if (v16)
      {
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48A0](*(v9 + 16));
        v17 = v9 + 32;
        do
        {
          v17 += 4;
          sub_1AC51F498();
          --v16;
        }

        while (v16);
      }

      if (v33)
      {
        break;
      }

      v22 = OUTLINED_FUNCTION_22_0();
      sub_1AC4578F4(v22, v23);

      if (v13)
      {
        goto LABEL_11;
      }

LABEL_12:
      v20 = *(v10 + 16);
      if (v20)
      {
        MEMORY[0x1AC5B48A0](6);
        MEMORY[0x1AC5B48A0](*(v10 + 16));
        v21 = v10 + 40;
        do
        {

          sub_1AC51EEB8();

          v21 += 16;
          --v20;
        }

        while (v20);
      }

      ++v6;
      switch(v12 >> 62)
      {
        case 1uLL:
          v24 = v11;
          v25 = v11 >> 32;
          goto LABEL_22;
        case 2uLL:
          v24 = *(v11 + 16);
          v25 = *(v11 + 24);
LABEL_22:
          if (v24 != v25)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        case 3uLL:
          goto LABEL_24;
        default:
          if ((v12 & 0xFF000000000000) == 0)
          {
            goto LABEL_24;
          }

LABEL_23:
          sub_1AC51EC58();
LABEL_24:

          v26 = OUTLINED_FUNCTION_22_0();
          sub_1AC4513F8(v26, v27);

          if (v6 == v30)
          {
            return memcpy(v28, __dst, 0x48uLL);
          }

          memcpy(__src, __dst, 0x48uLL);
          break;
      }
    }

    MEMORY[0x1AC5B48A0](3);

    v18 = OUTLINED_FUNCTION_22_0();
    sub_1AC4578F4(v18, v19);

    sub_1AC51EEB8();
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    MEMORY[0x1AC5B48A0](4);
    sub_1AC51EEB8();
    goto LABEL_12;
  }

  return result;
}

void sub_1AC50DC94()
{
  v2 = v0;
  OUTLINED_FUNCTION_59_3();
  v3 = *(v1 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_83_2(v16);
    v4 = (v1 + 32);
    for (i = v3 - 1; ; --i)
    {
      memcpy(__dst, v4, 0x91uLL);
      OUTLINED_FUNCTION_88_2(__src, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      sub_1AC485D8C(__dst, v14);
      sub_1AC4AA0CC();
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
        v2 = 0;
      }

      v13 = sub_1AC485DE8(__dst);
      if (!i)
      {
        break;
      }

      memcpy(v16, __src, sizeof(v16));
      v4 += 152;
    }

    OUTLINED_FUNCTION_77_1(v13, __src);
  }
}

void sub_1AC50DD64()
{
  OUTLINED_FUNCTION_60();
  v101 = v2;
  v5 = OUTLINED_FUNCTION_37_6(v3, v4);
  MEMORY[0x1AC5B48A0](v5);
  v92 = *(v0 + 16);
  if (!v92)
  {
    goto LABEL_130;
  }

  v99 = v1;
  OUTLINED_FUNCTION_64_2(v128);
  v93 = v0 + 32;
  v94 = 0;
  while (1)
  {
    memcpy(__dst, (v93 + 104 * v94), 0x67uLL);
    v6 = __dst[4];
    OUTLINED_FUNCTION_75_2(__src);
    if (v6)
    {
      MEMORY[0x1AC5B48A0](1);
      sub_1AC485E3C(__dst, v124);
      OUTLINED_FUNCTION_94_2();
      sub_1AC51EEB8();
    }

    else
    {
      sub_1AC485E3C(__dst, v124);
    }

    v7 = __dst[0];
    v98 = *(__dst[0] + 16);
    if (!v98)
    {
      v11 = v99;
      goto LABEL_90;
    }

    MEMORY[0x1AC5B48A0](2);
    memcpy(v125, __src, sizeof(v125));
    v102 = 0;
    v97 = v7 + 32;
LABEL_8:
    memcpy(v124, (v97 + 136 * v102), sizeof(v124));
    memcpy(v123, v125, sizeof(v123));
    if (v124[3])
    {
      MEMORY[0x1AC5B48A0](1);
      sub_1AC485754(v124, v122);
      OUTLINED_FUNCTION_94_2();
      sub_1AC51EEB8();
    }

    else
    {
      sub_1AC485754(v124, v122);
    }

    if (v124[5])
    {
      MEMORY[0x1AC5B48A0](2);
      sub_1AC51EEB8();
    }

    if (v124[7])
    {
      MEMORY[0x1AC5B48A0](3);
      sub_1AC51EEB8();
    }

    v8 = v124[8];
    if (v124[8])
    {
      break;
    }

LABEL_75:
    if (BYTE6(v124[16]) != 2)
    {
      MEMORY[0x1AC5B48A0](5);
      sub_1AC51F488();
    }

    if (HIBYTE(v124[16]) != 2)
    {
      MEMORY[0x1AC5B48A0](6);
      sub_1AC51F488();
    }

    ++v102;
    v11 = v99;
    switch(v124[1] >> 62)
    {
      case 1:
        OUTLINED_FUNCTION_73();
        goto LABEL_84;
      case 2:
        v60 = *(v124[0] + 16);
        v61 = *(v124[0] + 24);
LABEL_84:
        if (v60 != v61)
        {
          goto LABEL_85;
        }

        goto LABEL_86;
      case 3:
        goto LABEL_86;
      default:
        if ((v124[1] & 0xFF000000000000) == 0)
        {
          goto LABEL_86;
        }

LABEL_85:
        sub_1AC51EC58();
LABEL_86:
        sub_1AC4857B0(v124);
        if (v102 != v98)
        {
          memcpy(v125, v123, sizeof(v125));
          goto LABEL_8;
        }

        memcpy(__src, v123, sizeof(__src));
        break;
    }

LABEL_90:
    v62 = __dst[5];
    if (__dst[5])
    {
      v129 = __dst[6];
      v117 = __dst[7];
      v63 = __dst[8];
      v64 = __dst[9];
      v65 = __dst[10];
      v66 = __dst[11];
      v67 = WORD2(__dst[12]);
      v68 = LODWORD(__dst[12]);
      v69 = BYTE6(__dst[12]);
      MEMORY[0x1AC5B48A0](3);
      memcpy(v124, __src, 0x48uLL);
      if (v69 != 2)
      {
        MEMORY[0x1AC5B48A0](33);
        sub_1AC51F488();
      }

      if (v66)
      {
        v70 = v68 | (v67 << 32);
        MEMORY[0x1AC5B48A0](34);
        memcpy(v122, v124, 0x48uLL);
        if (v70 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v70);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v71)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v70));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v71)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v70));
        }

        if (BYTE3(v70) != 3)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v70)]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v71)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v70));
        }

        if (BYTE5(v70) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v70));
        }

        sub_1AC4B3394(&__dst[5], v125, &qword_1EB5580B0, &qword_1AC5203B8);
        v72 = OUTLINED_FUNCTION_20_14();
        sub_1AC485860(v72, v73, v74);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v75, v76, v77, v66);
        if (v101)
        {
          v11 = v99;
          MEMORY[0x1AC5B4BA0](v101);
        }

        else
        {
          sub_1AC4937B8(v122, v64, v65);
          v11 = v99;
        }

        v101 = 0;
        v83 = OUTLINED_FUNCTION_20_14();
        sub_1AC485714(v83, v84, v85);
        OUTLINED_FUNCTION_102_2(v124);
      }

      else
      {

        v78 = OUTLINED_FUNCTION_29_8();
        sub_1AC4578F4(v78, v79);

        v80 = OUTLINED_FUNCTION_20_14();
        sub_1AC485860(v80, v81, v82);
        v11 = v99;
      }

      if (*(v62 + 16))
      {
        v86 = v101;
        sub_1AC50D0A4();
        if (v101)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v86 = v101;
      }

      OUTLINED_FUNCTION_154();
      sub_1AC5175D4(v87, v88, v89, v63);
      if (!v86)
      {
        sub_1AC4937B8(v124, v129, v117);
        v101 = 0;
LABEL_118:
        sub_1AC5165E8(&__dst[5], &qword_1EB5580B0);
        memcpy(__src, v124, sizeof(__src));
        goto LABEL_119;
      }

LABEL_117:
      v101 = 0;
      MEMORY[0x1AC5B4BA0](v86);
      goto LABEL_118;
    }

LABEL_119:
    ++v94;
    switch(__dst[2] >> 62)
    {
      case 1:
        OUTLINED_FUNCTION_73();
        goto LABEL_124;
      case 2:
        v90 = *(__dst[1] + 16);
        v91 = *(__dst[1] + 24);
LABEL_124:
        if (v90 != v91)
        {
          goto LABEL_125;
        }

        goto LABEL_126;
      case 3:
        goto LABEL_126;
      default:
        if ((__dst[2] & 0xFF000000000000) == 0)
        {
          goto LABEL_126;
        }

LABEL_125:
        sub_1AC51EC58();
LABEL_126:
        sub_1AC485E98(__dst);
        if (v94 == v92)
        {
          goto LABEL_129;
        }

        memcpy(v128, __src, 0x48uLL);
        break;
    }
  }

  v95 = v124[10];
  v96 = v124[9];
  v100 = v124[11];
  v9 = LOBYTE(v124[12]);
  v10 = BYTE1(v124[12]);
  v11 = v124[13];
  v12 = v124[15];
  MEMORY[0x1AC5B48A0](4);
  memcpy(v122, v123, 0x48uLL);
  if (v9 != 2)
  {
    MEMORY[0x1AC5B48A0](33);
    sub_1AC51F488();
  }

  if (v10 != 3)
  {
    MEMORY[0x1AC5B48A0](34);
    MEMORY[0x1AC5B48A0](v10);
  }

  if (v12)
  {
    MEMORY[0x1AC5B48A0](35);
    OUTLINED_FUNCTION_102_2(v121);
    sub_1AC4B3394(&v124[8], v119, &qword_1EB5580B8, &qword_1AC5203C0);
    v13 = OUTLINED_FUNCTION_52_3();
    sub_1AC485860(v13, v14, v15);
    OUTLINED_FUNCTION_94_2();
    sub_1AC4BBFB4();
    if (v101)
    {
      MEMORY[0x1AC5B4BA0](v101);
    }

    v101 = 0;
    v21 = OUTLINED_FUNCTION_52_3();
    sub_1AC485714(v21, v22, v23);
    memcpy(v122, v121, 0x48uLL);
  }

  else
  {
    v11 = v124[10];

    v16 = OUTLINED_FUNCTION_29_8();
    sub_1AC4578F4(v16, v17);

    OUTLINED_FUNCTION_28_8();
    sub_1AC485860(v18, v19, v20);
  }

  v105 = *(v8 + 16);
  if (!v105)
  {
LABEL_71:
    OUTLINED_FUNCTION_154();
    sub_1AC5175D4(v57, v58, v59, v100);
    if (v101)
    {
      MEMORY[0x1AC5B4BA0](v101);
    }

    else
    {
      sub_1AC4937B8(v122, v96, v95);
    }

    v101 = 0;
    sub_1AC5165E8(&v124[8], &qword_1EB5580B8);
    OUTLINED_FUNCTION_102_2(v123);
    goto LABEL_75;
  }

  MEMORY[0x1AC5B48A0](999);
  OUTLINED_FUNCTION_102_2(v121);
  v24 = 0;
  v103 = v8;
  v104 = v8 + 32;
  while (2)
  {
    if (v24 < *(v8 + 16))
    {
      v25 = v8;
      v26 = (v104 + 120 * v24);
      v115 = v24;
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[4];
      v112 = *(v26 + 48);
      v109 = v26[5];
      v110 = v26[7];
      v111 = v26[9];
      v113 = *(v26 + 64);
      v114 = *(v26 + 80);
      v32 = v26[11];
      v31 = v26[12];
      v33 = v26[14];
      memcpy(v120, v121, sizeof(v120));
      v34 = *(v27 + 16);
      v116 = v31;
      if (v34)
      {
        MEMORY[0x1AC5B48A0](2);
        memcpy(v119, v120, sizeof(v119));

        v108 = v28;
        v107 = v29;
        sub_1AC4578F4(v28, v29);

        v106 = v32;
        sub_1AC4B39F0(v32, v31);

        v35 = v34 - 1;
        v36 = (v27 + 64);
        while (1)
        {
          v37 = *(v36 - 4);
          v38 = *(v36 - 3);
          v39 = *(v36 - 1);
          v40 = *v36;
          memcpy(v118, v119, sizeof(v118));
          if (v39)
          {
            MEMORY[0x1AC5B48A0](1);
            v41 = OUTLINED_FUNCTION_18();
            sub_1AC4578F4(v41, v42);

            sub_1AC51EEB8();
          }

          else
          {
            v43 = OUTLINED_FUNCTION_18();
            sub_1AC4578F4(v43, v44);
          }

          if (v40 != 2)
          {
            MEMORY[0x1AC5B48A0](2);
            sub_1AC51F488();
          }

          v36 += 40;
          switch(v38 >> 62)
          {
            case 1uLL:
              v45 = v37;
              v46 = v37 >> 32;
              goto LABEL_40;
            case 2uLL:
              v45 = *(v37 + 16);
              v46 = *(v37 + 24);
LABEL_40:
              if (v45 != v46)
              {
                goto LABEL_41;
              }

              goto LABEL_42;
            case 3uLL:
              goto LABEL_42;
            default:
              if ((v38 & 0xFF000000000000) == 0)
              {
                goto LABEL_42;
              }

LABEL_41:
              sub_1AC51EC58();
LABEL_42:
              v47 = OUTLINED_FUNCTION_18();
              sub_1AC4513F8(v47, v48);

              if (!v35)
              {
                memcpy(v120, v118, sizeof(v120));
                v8 = v103;
                v49 = v115;
                v28 = v108;
                v29 = v107;
                v11 = v106;
                if (v30)
                {
                  goto LABEL_45;
                }

                goto LABEL_46;
              }

              memcpy(v119, v118, sizeof(v119));
              --v35;
              break;
          }
        }
      }

      sub_1AC4578F4(v28, v29);

      sub_1AC4B39F0(v32, v31);

      v11 = v32;
      v8 = v25;
      v49 = v115;
      if (v30)
      {
LABEL_45:
        MEMORY[0x1AC5B48A0](3);
        sub_1AC51EEB8();
      }

LABEL_46:
      if ((v112 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48D0](v109);
      }

      if ((v113 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48D0](v110);
      }

      if ((v114 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](6);
        if ((v111 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v50 = v111;
        }

        else
        {
          v50 = 0;
        }

        MEMORY[0x1AC5B48D0](v50);
      }

      if (v116 >> 60 != 15)
      {
        MEMORY[0x1AC5B48A0](7);
        sub_1AC4578F4(v11, v116);
        OUTLINED_FUNCTION_38_7();
        sub_1AC51EC58();
        v51 = OUTLINED_FUNCTION_44();
        sub_1AC45AC74(v51, v52);
      }

      if (v33)
      {
        MEMORY[0x1AC5B48A0](8);
        sub_1AC51EEB8();
      }

      v24 = v49 + 1;
      switch(v29 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_66;
        case 2uLL:
          v53 = *(v28 + 16);
          v54 = *(v28 + 24);
LABEL_66:
          if (v53 != v54)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        case 3uLL:
          goto LABEL_68;
        default:
          if ((v29 & 0xFF000000000000) == 0)
          {
            goto LABEL_68;
          }

LABEL_67:
          sub_1AC51EC58();
LABEL_68:

          sub_1AC4513F8(v28, v29);

          v55 = OUTLINED_FUNCTION_44();
          sub_1AC45AC74(v55, v56);

          if (v24 != v105)
          {
            memcpy(v121, v120, sizeof(v121));
            continue;
          }

          memcpy(v122, v120, 0x48uLL);
          break;
      }

      goto LABEL_71;
    }

    break;
  }

  __break(1u);
LABEL_129:
  memcpy(v11, __src, 0x48uLL);
LABEL_130:
  OUTLINED_FUNCTION_61();
}

void sub_1AC50E9D0()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_37_6(v4, v5);
  MEMORY[0x1AC5B48A0](v6);
  v82 = *(v0 + 16);
  if (v82)
  {
    v70 = v1;
    OUTLINED_FUNCTION_64_2(v104);
    v7 = 0;
    for (i = v0 + 32; ; OUTLINED_FUNCTION_104_2(v104, v63, v64, v65, v66, v67, v68, v69, v70, v71, v73, v75, v77, v79, i, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7], v83[8], v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v95, v96, v97, v98, v99, v100, v101, v102[0]))
    {
      memcpy(__dst, (i + (v7 << 7)), 0x7EuLL);
      v8 = __dst[6];
      OUTLINED_FUNCTION_75_2(v102);
      if (v8)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485EEC(__dst, __src);
        OUTLINED_FUNCTION_27_8();
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485EEC(__dst, __src);
      }

      if (*(__dst[0] + 16) && (sub_1AC50EFF0(), v3))
      {
        MEMORY[0x1AC5B4BA0](v3);
        v3 = 0;
      }

      else
      {
        v9 = __dst[7];
        if (__dst[7])
        {
          v105 = v3;
          v72 = __dst[9];
          v74 = __dst[8];
          v10 = LOBYTE(__dst[11]);
          v11 = BYTE1(__dst[11]);
          v12 = BYTE2(__dst[11]);
          v76 = __dst[10];
          v78 = __dst[12];
          v80 = __dst[13];
          v13 = __dst[14];
          v14 = WORD2(__dst[15]);
          v15 = LODWORD(__dst[15]);
          MEMORY[0x1AC5B48A0](3);
          OUTLINED_FUNCTION_104_2(__src, v16, v17, v18, v19, v20, v21, v22, v70, v72, v74, v76, v78, v80, i, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7], v83[8], v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v95, v96, v97, v98, v99, v100, v101, v102[0]);
          if (v10 != 2)
          {
            MEMORY[0x1AC5B48A0](2);
            sub_1AC51F488();
          }

          if (v11 != 2)
          {
            MEMORY[0x1AC5B48A0](3);
            sub_1AC51F488();
          }

          if (v12 != 2)
          {
            MEMORY[0x1AC5B48A0](6);
            sub_1AC51F488();
          }

          if (v13)
          {
            v23 = v13;
            v24 = v15 | (v14 << 32);
            MEMORY[0x1AC5B48A0](7);
            memcpy(v83, __src, sizeof(v83));
            if (v24 != 4)
            {
              MEMORY[0x1AC5B48A0](1);
              MEMORY[0x1AC5B48A0](v24);
            }

            OUTLINED_FUNCTION_22_13();
            if (!v25)
            {
              MEMORY[0x1AC5B48A0](2);
              MEMORY[0x1AC5B48A0](BYTE1(v24));
            }

            OUTLINED_FUNCTION_22_13();
            if (!v25)
            {
              MEMORY[0x1AC5B48A0](3);
              MEMORY[0x1AC5B48A0](BYTE2(v24));
            }

            if (BYTE3(v24) != 3)
            {
              MEMORY[0x1AC5B48A0](4);
              MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v24)]);
            }

            OUTLINED_FUNCTION_22_13();
            if (!v25)
            {
              MEMORY[0x1AC5B48A0](5);
              MEMORY[0x1AC5B48A0](BYTE4(v24));
            }

            if (BYTE5(v24) != 3)
            {
              MEMORY[0x1AC5B48A0](6);
              MEMORY[0x1AC5B48A0](BYTE5(v24));
            }

            sub_1AC4B3394(&__dst[7], &v84, &qword_1EB5589B8, "R6");
            sub_1AC485860(v77, v79, v13);
            OUTLINED_FUNCTION_61_2();
            sub_1AC5175D4(v26, v27, v28, v13);
            v29 = v105;
            if (v105)
            {
              MEMORY[0x1AC5B4BA0](v105);
              v29 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_38_7();
              sub_1AC4937B8(v30, v31, v32);
            }

            v33 = OUTLINED_FUNCTION_44();
            sub_1AC485714(v33, v34, v23);
            memcpy(__src, v83, sizeof(__src));
          }

          else
          {
            memcpy(v83, &__dst[7], 0x46uLL);
            sub_1AC4B3294(v83, &v84);
            v29 = v105;
          }

          if (*(v9 + 16) && (v35 = v29, sub_1AC50D0A4(), v29) || (OUTLINED_FUNCTION_154(), v35 = v29, sub_1AC5175D4(v36, v37, v38, v75), v29))
          {
            v3 = 0;
            MEMORY[0x1AC5B4BA0](v35);
          }

          else
          {
            sub_1AC4937B8(__src, v73, v71);
            v3 = 0;
          }

          sub_1AC5165E8(&__dst[7], &qword_1EB5589B8);
          memcpy(v102, __src, sizeof(v102));
        }

        v39 = __dst[1];
        v40 = *(__dst[1] + 16);
        if (v40)
        {
          v106 = v3;
          MEMORY[0x1AC5B48A0](4);
          OUTLINED_FUNCTION_104_2(__src, v41, v42, v43, v44, v45, v46, v47, v70, v71, v73, v75, v77, v79, i, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7], v83[8], v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v95, v96, v97, v98, v99, v100, v101, v102[0]);
          v48 = v40 - 1;
          v49 = (v39 + 60);
          while (1)
          {
            v50 = *(v49 - 28);
            v51 = *(v49 - 20);
            v52 = *(v49 - 3);
            v53 = *(v49 - 8);
            v54 = *(v49 - 1);
            v55 = *v49;
            memcpy(v93, __src, sizeof(v93));
            if ((v53 & 1) == 0)
            {
              MEMORY[0x1AC5B48A0](1);
              MEMORY[0x1AC5B48D0](v52);
            }

            if ((v55 & 1) == 0)
            {
              MEMORY[0x1AC5B48A0](2);
              MEMORY[0x1AC5B48D0](v54);
            }

            switch(v51 >> 62)
            {
              case 1uLL:
                v56 = v50;
                v57 = v50 >> 32;
                goto LABEL_51;
              case 2uLL:
                v56 = *(v50 + 16);
                v57 = *(v50 + 24);
LABEL_51:
                if (v56 != v57)
                {
                  goto LABEL_52;
                }

                goto LABEL_53;
              case 3uLL:
                goto LABEL_53;
              default:
                if ((v51 & 0xFF000000000000) == 0)
                {
                  goto LABEL_53;
                }

LABEL_52:
                sub_1AC4578F4(v50, v51);
                OUTLINED_FUNCTION_27_8();
                sub_1AC51EC58();
                sub_1AC4513F8(v50, v51);
LABEL_53:
                if (!v48)
                {
                  memcpy(v102, v93, sizeof(v102));
                  v3 = v106;
                  goto LABEL_56;
                }

                memcpy(__src, v93, sizeof(__src));
                --v48;
                v49 += 32;
                break;
            }
          }
        }

LABEL_56:
        v58 = __dst[2];
        v59 = *(__dst[2] + 16);
        if (v59)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](*(v58 + 16));
          v60 = v58 + 40;
          do
          {

            sub_1AC51EEB8();

            v60 += 16;
            --v59;
          }

          while (v59);
        }

        switch(__dst[4] >> 62)
        {
          case 1:
            OUTLINED_FUNCTION_73();
            goto LABEL_64;
          case 2:
            v61 = *(__dst[3] + 16);
            v62 = *(__dst[3] + 24);
LABEL_64:
            if (v61 != v62)
            {
              goto LABEL_65;
            }

            break;
          case 3:
            break;
          default:
            if ((__dst[4] & 0xFF000000000000) == 0)
            {
              break;
            }

LABEL_65:
            sub_1AC51EC58();
            break;
        }
      }

      ++v7;
      sub_1AC485F48(__dst);
      if (v7 == v82)
      {
        break;
      }
    }

    memcpy(v70, v102, 0x48uLL);
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC50EFF0()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v4 = v1;
  v7 = OUTLINED_FUNCTION_37_6(v5, v6);
  MEMORY[0x1AC5B48A0](v7);
  v8 = *(v0 + 16);
  if (v8)
  {
    memcpy(v82, v4, sizeof(v82));
    v9 = (v0 + 32);
    v10 = v8 - 1;
    v59 = v4;
    while (1)
    {
      memcpy(__dst, v9, 0x99uLL);
      v11 = __dst[3];
      OUTLINED_FUNCTION_75_2(__src);
      if (v11)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485910(__dst, v79);
        OUTLINED_FUNCTION_27_8();
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485910(__dst, v79);
      }

      if ((__dst[4] & 0x100000000) == 0)
      {
        v12 = SLODWORD(__dst[4]);
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48D0](v12);
      }

      v13 = __dst[5];
      if (!__dst[5])
      {
        goto LABEL_56;
      }

      v68 = v10;
      v69 = v9;
      v60 = __dst[7];
      v61 = __dst[6];
      v14 = LOBYTE(__dst[9]);
      v15 = __dst[10];
      v62 = __dst[8];
      v63 = __dst[11];
      v16 = __dst[12];
      v17 = WORD2(__dst[13]);
      v18 = LODWORD(__dst[13]);
      HIDWORD(v66) = BYTE6(__dst[13]);
      v64 = __dst[14];
      v67 = __dst[15];
      v83 = __dst[16];
      v65 = __dst[17];
      v19 = __dst[18];
      v70 = SLOBYTE(__dst[19]);
      MEMORY[0x1AC5B48A0](3);
      memcpy(v78, __src, sizeof(v78));
      if (v14 != 2)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC51F488();
      }

      if (v16)
      {
        v20 = v18 | (v17 << 32);
        MEMORY[0x1AC5B48A0](2);
        OUTLINED_FUNCTION_88_2(v71, v21, v22, v23, v24, v25, v26, v27, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77);
        v28 = v19;
        if (v20 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v20);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v29)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v20));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v29)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v20));
        }

        if (BYTE3(v20) != 3)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v20)]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v29)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v20));
        }

        if (BYTE5(v20) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v20));
        }

        sub_1AC4B3394(&__dst[5], v79, &qword_1EB5589C0, &qword_1AC520E30);
        sub_1AC485860(v15, v63, v16);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v30, v31, v32, v16);
        if (v3)
        {
          v4 = v59;
          MEMORY[0x1AC5B4BA0](v3);
          v3 = 0;
        }

        else
        {
          sub_1AC4937B8(v71, v15, v63);
          v3 = 0;
          v4 = v59;
        }

        sub_1AC485714(v15, v63, v16);
        memcpy(v78, v71, sizeof(v78));
      }

      else
      {
        memcpy(v79, &__dst[5], 0x71uLL);
        sub_1AC4B32FC(v79, v71);
        v4 = v59;
        v28 = v19;
      }

      v10 = v68;
      v9 = v69;
      v33 = v83;
      v34 = v67;
      if (HIDWORD(v66) != 2)
      {
        MEMORY[0x1AC5B48A0](3);
        v9 = v69;
        v10 = v68;
        v34 = v67;
        v33 = v83;
        sub_1AC51F488();
      }

      if (v28 != 1)
      {
        MEMORY[0x1AC5B48A0](4);
        OUTLINED_FUNCTION_88_2(v79, v35, v36, v37, v38, v39, v40, v41, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77);
        if (v33 != 12)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](qword_1AC52BD98[v33]);
        }

        if ((v33 & 0xFF00) != 0xC00)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](qword_1AC52BD98[v33 >> 8]);
        }

        if (v28)
        {
          MEMORY[0x1AC5B48A0](3);
          v42 = v64;
          sub_1AC4578F4(v64, v34);

          sub_1AC51EEB8();
        }

        else
        {
          v42 = v64;
          sub_1AC4578F4(v64, v34);
        }

        if (v70 != 12)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BD98[v70]);
          v42 = v64;
        }

        switch(v34 >> 62)
        {
          case 1uLL:
            v43 = v42;
            v44 = v42 >> 32;
            goto LABEL_46;
          case 2uLL:
            v43 = *(v42 + 16);
            v44 = *(v42 + 24);
LABEL_46:
            if (v43 != v44)
            {
              goto LABEL_47;
            }

            goto LABEL_48;
          case 3uLL:
            goto LABEL_48;
          default:
            if ((v34 & 0xFF000000000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_47:
            sub_1AC51EC58();
LABEL_48:
            sub_1AC4B39AC(v42, v34, v33, v65, v28);
            memcpy(v78, v79, sizeof(v78));
            break;
        }
      }

      if (*(v13 + 16))
      {
        sub_1AC50D0A4();
        if (v3)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_154();
      v45 = v3;
      sub_1AC5175D4(v46, v47, v48, v62);
      if (v3)
      {
        goto LABEL_54;
      }

      sub_1AC4937B8(v78, v61, v60);
LABEL_55:
      sub_1AC5165E8(&__dst[5], &qword_1EB5589C0);
      OUTLINED_FUNCTION_88_2(__src, v49, v50, v51, v52, v53, v54, v55, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77);
LABEL_56:
      switch(__dst[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_61;
        case 2:
          v56 = *(__dst[0] + 16);
          v57 = *(__dst[0] + 24);
LABEL_61:
          if (v56 != v57)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        case 3:
          goto LABEL_63;
        default:
          if ((__dst[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_62:
          sub_1AC51EC58();
LABEL_63:
          sub_1AC48596C(__dst);
          if (!v10)
          {
            memcpy(v4, __src, 0x48uLL);
            goto LABEL_66;
          }

          memcpy(v82, __src, sizeof(v82));
          --v10;
          v9 += 160;
          break;
      }
    }

    v45 = v3;
LABEL_54:
    v3 = 0;
    MEMORY[0x1AC5B4BA0](v45);
    goto LABEL_55;
  }

LABEL_66:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC50F660(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  result = MEMORY[0x1AC5B48A0](a2);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_64_2(v36);
    v16 = v7 - 1;
    for (i = a1 + 48; ; i += 24)
    {
      v18 = *(i - 16);
      v19 = *(i - 8);
      OUTLINED_FUNCTION_78_1(v8, v9, v10, v11, v12, v13, v14, v15, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8]);
      v20 = OUTLINED_FUNCTION_19();
      sub_1AC4578F4(v20, v21);

      sub_1AC4A6904(v22);
      if (v4)
      {
        MEMORY[0x1AC5B4BA0](v4);
        v4 = 0;
      }

      else
      {
        switch(v19 >> 62)
        {
          case 1uLL:
            OUTLINED_FUNCTION_94();
            goto LABEL_12;
          case 2uLL:
            v33 = *(v18 + 16);
            v34 = *(v18 + 24);
LABEL_12:
            if (v33 != v34)
            {
              goto LABEL_13;
            }

            break;
          case 3uLL:
            break;
          default:
            if ((v19 & 0xFF000000000000) == 0)
            {
              break;
            }

LABEL_13:
            OUTLINED_FUNCTION_28_8();
            sub_1AC51EC58();
            break;
        }
      }

      v23 = OUTLINED_FUNCTION_19();
      sub_1AC4513F8(v23, v24);

      if (!v16)
      {
        break;
      }

      v8 = OUTLINED_FUNCTION_79_1(v25, v26, v27, v28, v29, v30, v31, v32, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8]);
      --v16;
    }

    return memcpy(v2, v35, 0x48uLL);
  }

  return result;
}

void sub_1AC50F784()
{
  OUTLINED_FUNCTION_59_3();
  v2 = *(v1 + 16);
  if (v2)
  {
    v43 = v0;
    v3 = OUTLINED_FUNCTION_83_2(v42);
    v11 = v2 - 1;
    v12 = (v1 + 60);
    while (1)
    {
      v13 = *(v12 - 28);
      v14 = *(v12 - 20);
      v15 = *(v12 - 3);
      v16 = *(v12 - 8);
      v17 = *(v12 - 1);
      v18 = *v12;
      v19 = OUTLINED_FUNCTION_78_1(v3, v4, v5, v6, v7, v8, v9, v10, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      if ((v16 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](1);
        v19 = MEMORY[0x1AC5B48D0](v15);
      }

      if ((v18 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](2);
        v19 = MEMORY[0x1AC5B48D0](v17);
      }

      switch(v14 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_12;
        case 2uLL:
          v27 = *(v13 + 16);
          v28 = *(v13 + 24);
LABEL_12:
          if (v27 != v28)
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        case 3uLL:
          goto LABEL_14;
        default:
          if ((v14 & 0xFF000000000000) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          v29 = OUTLINED_FUNCTION_19();
          sub_1AC4578F4(v29, v30);
          OUTLINED_FUNCTION_28_8();
          sub_1AC51EC58();
          v31 = OUTLINED_FUNCTION_19();
          sub_1AC4513F8(v31, v32);
LABEL_14:
          if (!v11)
          {
            OUTLINED_FUNCTION_77_1(v19, &v33);
            return;
          }

          v3 = OUTLINED_FUNCTION_79_1(v19, v20, v21, v22, v23, v24, v25, v26, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          --v11;
          v12 += 32;
          break;
      }
    }
  }
}

void sub_1AC50F8C4()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_37_6(v4, v5);
  MEMORY[0x1AC5B48A0](v6);
  v7 = *(v0 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_64_2(v46);
    v8 = (v0 + 32);
    v9 = v7 - 1;
    while (1)
    {
      memcpy(v45, v8, 0x5EuLL);
      v10 = v45[3];
      OUTLINED_FUNCTION_75_2(__src);
      if (v10)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485B7C(v45, __dst);
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485B7C(v45, __dst);
      }

      v11 = v45[4];
      if (!v45[4])
      {
        goto LABEL_33;
      }

      v47 = v9;
      v38 = v45[6];
      v39 = v45[5];
      v40 = v45[7];
      v12 = v45[10];
      v13 = WORD2(v45[11]);
      v14 = LODWORD(v45[11]);
      MEMORY[0x1AC5B48A0](2);
      memcpy(__dst, __src, 0x48uLL);
      if (v12)
      {
        v15 = v14 | (v13 << 32);
        MEMORY[0x1AC5B48A0](1);
        memcpy(v42, __dst, sizeof(v42));
        if (v15 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v15);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v15));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v15));
        }

        OUTLINED_FUNCTION_69_2();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[v15]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v15));
        }

        if (BYTE5(v15) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v15));
        }

        sub_1AC4B3394(&v45[4], v41, &qword_1EB5580C0, &unk_1AC520E20);
        v17 = OUTLINED_FUNCTION_100();
        sub_1AC485860(v17, v18, v12);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v19, v20, v21, v12);
        if (v3)
        {
          v9 = v47;
          MEMORY[0x1AC5B4BA0](v3);
          v3 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_175();
          sub_1AC4937B8(v27, v28, v29);
          v9 = v47;
        }

        v30 = OUTLINED_FUNCTION_100();
        sub_1AC485714(v30, v31, v12);
        memcpy(__dst, v42, 0x48uLL);
      }

      else
      {

        v22 = OUTLINED_FUNCTION_24();
        sub_1AC4578F4(v22, v23);

        v24 = OUTLINED_FUNCTION_20_14();
        sub_1AC485860(v24, v25, v26);
        v9 = v47;
      }

      if (*(v11 + 16))
      {
        sub_1AC50D0A4();
        if (v3)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_154();
      v32 = v3;
      sub_1AC5175D4(v33, v34, v35, v40);
      if (v3)
      {
        goto LABEL_31;
      }

      sub_1AC4937B8(__dst, v39, v38);
LABEL_32:
      sub_1AC5165E8(&v45[4], &qword_1EB5580C0);
      memcpy(__src, __dst, sizeof(__src));
LABEL_33:
      switch(v45[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_38;
        case 2:
          v36 = *(v45[0] + 16);
          v37 = *(v45[0] + 24);
LABEL_38:
          if (v36 != v37)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 3:
          goto LABEL_40;
        default:
          if ((v45[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_40;
          }

LABEL_39:
          sub_1AC51EC58();
LABEL_40:
          sub_1AC485BD8(v45);
          if (!v9)
          {
            memcpy(v1, __src, 0x48uLL);
            goto LABEL_43;
          }

          memcpy(v46, __src, 0x48uLL);
          --v9;
          v8 += 96;
          break;
      }
    }

    v32 = v3;
LABEL_31:
    v3 = 0;
    MEMORY[0x1AC5B4BA0](v32);
    goto LABEL_32;
  }

LABEL_43:
  OUTLINED_FUNCTION_61();
}

void sub_1AC50FCB4()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v4 = v1;
  v7 = OUTLINED_FUNCTION_37_6(v5, v6);
  MEMORY[0x1AC5B48A0](v7);
  v8 = *(v0 + 16);
  if (v8)
  {
    memcpy(v72, v1, sizeof(v72));
    v9 = 0;
    v61 = v0 + 32;
    v49 = v8;
    v50 = v1;
    while (1)
    {
      memcpy(__dst, (v61 + 104 * v9), 0x67uLL);
      v10 = SLODWORD(__dst[2]);
      v11 = BYTE4(__dst[2]);
      OUTLINED_FUNCTION_75_2(__src);
      if ((v11 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48D0](v10);
      }

      if ((__dst[3] & 0x100000000) == 0)
      {
        v12 = SLODWORD(__dst[3]);
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48D0](v12);
      }

      v13 = __dst[4];
      if (__dst[4])
      {
        break;
      }

      sub_1AC485C2C(__dst, v69);
LABEL_59:
      ++v9;
      switch(__dst[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_64;
        case 2:
          v47 = *(__dst[0] + 16);
          v48 = *(__dst[0] + 24);
LABEL_64:
          if (v47 != v48)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        case 3:
          goto LABEL_66;
        default:
          if ((__dst[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_66;
          }

LABEL_65:
          sub_1AC51EC58();
LABEL_66:
          sub_1AC485C88(__dst);
          if (v9 == v8)
          {
            memcpy(v4, __src, 0x48uLL);
            goto LABEL_69;
          }

          memcpy(v72, __src, sizeof(v72));
          break;
      }
    }

    v14 = __dst[5];
    v51 = __dst[7];
    v52 = __dst[6];
    v59 = __dst[10];
    v60 = __dst[9];
    v15 = WORD2(__dst[12]);
    v57 = __dst[8];
    v58 = LODWORD(__dst[12]);
    v62 = BYTE6(__dst[12]);
    v63 = __dst[11];
    MEMORY[0x1AC5B48A0](3);
    memcpy(v68, __src, sizeof(v68));
    v16 = *(v14 + 16);
    if (v16)
    {
      v53 = v15;
      v54 = v13;
      v55 = v9;
      v56 = v3;
      MEMORY[0x1AC5B48A0](2);
      memcpy(v67, v68, sizeof(v67));
      sub_1AC485C2C(__dst, v69);
      sub_1AC4B3394(&__dst[4], v69, &qword_1EB5589B0, &qword_1AC520E18);
      v73 = v16 - 1;
      v17 = (v14 + 89);
      while (1)
      {
        v18 = *(v17 - 57);
        v19 = *(v17 - 49);
        v20 = *(v17 - 41);
        v21 = *(v17 - 37);
        v22 = *(v17 - 25);
        v23 = *(v17 - 9);
        v24 = *(v17 - 1);
        v64 = *v17;
        memcpy(v66, v67, sizeof(v66));
        if ((v21 & 1) == 0)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48D0](v20);
        }

        if (!v22)
        {
          break;
        }

        MEMORY[0x1AC5B48A0](2);
        v25 = OUTLINED_FUNCTION_22_0();
        sub_1AC4578F4(v25, v26);

        sub_1AC51EEB8();
        if (v23)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (v24 != 2)
        {
          MEMORY[0x1AC5B48A0](5);
          sub_1AC51F488();
        }

        if (v64 != 2)
        {
          MEMORY[0x1AC5B48A0](6);
          sub_1AC51F488();
        }

        v17 += 64;
        switch(v19 >> 62)
        {
          case 1uLL:
            v29 = v18;
            v30 = v18 >> 32;
            goto LABEL_26;
          case 2uLL:
            v29 = *(v18 + 16);
            v30 = *(v18 + 24);
LABEL_26:
            if (v29 != v30)
            {
              goto LABEL_27;
            }

            goto LABEL_28;
          case 3uLL:
            goto LABEL_28;
          default:
            if ((v19 & 0xFF000000000000) == 0)
            {
              goto LABEL_28;
            }

LABEL_27:
            sub_1AC51EC58();
LABEL_28:
            v31 = OUTLINED_FUNCTION_22_0();
            sub_1AC4513F8(v31, v32);

            if (!v73)
            {
              memcpy(v68, v66, sizeof(v68));
              v8 = v49;
              v4 = v50;
              v9 = v55;
              v3 = v56;
              v15 = v53;
              v13 = v54;
              goto LABEL_33;
            }

            memcpy(v67, v66, sizeof(v67));
            --v73;
            break;
        }
      }

      v27 = OUTLINED_FUNCTION_22_0();
      sub_1AC4578F4(v27, v28);

      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_14:
      MEMORY[0x1AC5B48A0](3);
      sub_1AC51EEB8();
      goto LABEL_15;
    }

    sub_1AC485C2C(__dst, v69);
    sub_1AC4B3394(&__dst[4], v69, &qword_1EB5589B0, &qword_1AC520E18);
LABEL_33:
    if (v62 != 2)
    {
      MEMORY[0x1AC5B48A0](3);
      MEMORY[0x1AC5B48A0](v62 & 1);
    }

    if (v63)
    {
      v33 = v58 | (v15 << 32);
      MEMORY[0x1AC5B48A0](50);
      memcpy(v69, v68, 0x48uLL);
      if (v33 != 4)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48A0](v33);
      }

      OUTLINED_FUNCTION_22_13();
      if (!v34)
      {
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48A0](BYTE1(v33));
      }

      OUTLINED_FUNCTION_22_13();
      if (!v34)
      {
        MEMORY[0x1AC5B48A0](3);
        MEMORY[0x1AC5B48A0](BYTE2(v33));
      }

      if (BYTE3(v33) != 3)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v33)]);
      }

      OUTLINED_FUNCTION_22_13();
      if (!v34)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48A0](BYTE4(v33));
      }

      if (BYTE5(v33) != 3)
      {
        MEMORY[0x1AC5B48A0](6);
        MEMORY[0x1AC5B48A0](BYTE5(v33));
      }

      v67[0] = v60;
      v67[1] = v59;
      v67[2] = v63;
      LODWORD(v67[3]) = v33;
      WORD2(v67[3]) = WORD2(v33);
      sub_1AC4AEF40(v67, v65);
      OUTLINED_FUNCTION_61_2();
      sub_1AC5175D4(v35, v36, v37, v63);
      if (v3)
      {
        MEMORY[0x1AC5B4BA0](v3);
        v3 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_38_7();
        sub_1AC4937B8(v38, v39, v40);
      }

      v41 = OUTLINED_FUNCTION_44();
      sub_1AC485714(v41, v42, v63);
      memcpy(v68, v69, sizeof(v68));
    }

    if (*(v13 + 16) && (sub_1AC50D0A4(), v3))
    {
      v43 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_154();
      v43 = v3;
      sub_1AC5175D4(v44, v45, v46, v57);
      if (!v3)
      {
        sub_1AC4937B8(v68, v52, v51);
LABEL_58:
        sub_1AC5165E8(&__dst[4], &qword_1EB5589B0);
        memcpy(__src, v68, sizeof(__src));
        goto LABEL_59;
      }
    }

    v3 = 0;
    MEMORY[0x1AC5B4BA0](v43);
    goto LABEL_58;
  }

LABEL_69:
  OUTLINED_FUNCTION_61();
}

void sub_1AC510320()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_76_2();
  v3 = *(v2 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_64_2(v37);
    v4 = (v2 + 32);
    v5 = v3 - 1;
    while (1)
    {
      memcpy(v36, v4, 0x56uLL);
      v6 = SLOBYTE(v36[2]);
      OUTLINED_FUNCTION_75_2(__src);
      if (v6 != 12)
      {
        MEMORY[0x1AC5B48A0](3);
        MEMORY[0x1AC5B48A0](qword_1AC52BD98[v6]);
      }

      v7 = v36[5];
      if (v36[5])
      {
        v8 = v36[3];
        v9 = v36[4];
        v10 = LODWORD(v36[6]) | (WORD2(v36[6]) << 32);
        v11 = LOBYTE(v36[6]);
        MEMORY[0x1AC5B48A0](4);
        memcpy(v32, __src, sizeof(v32));
        if (v11 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v10);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v10));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v10));
        }

        OUTLINED_FUNCTION_69_2();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[v11]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v10));
        }

        if (BYTE5(v10) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v10));
        }

        sub_1AC485664(v36, __dst);
        v13 = OUTLINED_FUNCTION_93_0();
        sub_1AC485860(v13, v14, v7);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v15, v16, v17, v7);
        if (v1)
        {
          MEMORY[0x1AC5B4BA0](v1);
        }

        else
        {
          sub_1AC4937B8(v32, v8, v9);
        }

        v1 = 0;
        v18 = OUTLINED_FUNCTION_93_0();
        sub_1AC485714(v18, v19, v7);
        memcpy(__src, v32, sizeof(__src));
      }

      else
      {
        sub_1AC485664(v36, __dst);
      }

      v20 = v36[9];
      if (v36[9])
      {
        v21 = v36[7];
        v22 = v36[8];
        v23 = LODWORD(v36[10]) | (WORD2(v36[10]) << 32);
        v24 = LOBYTE(v36[10]);
        MEMORY[0x1AC5B48A0](5);
        memcpy(__dst, __src, 0x48uLL);
        if (v24 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v23);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v23));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v23));
        }

        OUTLINED_FUNCTION_69_2();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[v24]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v23));
        }

        if (BYTE5(v23) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v23));
        }

        v32[0] = v21;
        v32[1] = v22;
        v32[2] = v20;
        LODWORD(v32[3]) = v23;
        WORD2(v32[3]) = WORD2(v23);
        sub_1AC4AEF40(v32, v33);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v25, v26, v27, v20);
        if (v1)
        {
          MEMORY[0x1AC5B4BA0](v1);
        }

        else
        {
          sub_1AC4937B8(__dst, v21, v22);
        }

        v1 = 0;
        v28 = OUTLINED_FUNCTION_93_0();
        sub_1AC485714(v28, v29, v20);
        memcpy(__src, __dst, sizeof(__src));
      }

      switch(v36[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_45;
        case 2:
          v30 = *(v36[0] + 16);
          v31 = *(v36[0] + 24);
LABEL_45:
          if (v30 != v31)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        case 3:
          goto LABEL_47;
        default:
          if ((v36[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_47;
          }

LABEL_46:
          sub_1AC51EC58();
LABEL_47:
          sub_1AC4856C0(v36);
          if (!v5)
          {
            memcpy(v0, __src, 0x48uLL);
            goto LABEL_50;
          }

          memcpy(v37, __src, 0x48uLL);
          --v5;
          v4 += 88;
          break;
      }
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC510784(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v33 = *(v2 + 16);
  if (v33)
  {
    v31 = v3;
    OUTLINED_FUNCTION_64_2(__src);
    v6 = 0;
    v32 = v2 + 32;
    while (1)
    {
      v40 = v6;
      v7 = (v32 + 56 * v6);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[2];
      v11 = v7[4];
      v12 = *(v7 + 44);
      v34 = *(v7 + 10);
      v35 = *(v7 + 12);
      v36 = *(v7 + 52);
      v37 = *(v7 + 53);
      memcpy(__dst, __src, sizeof(__dst));
      v13 = *(v9 + 16);
      if (v13)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48A0](*(v9 + 16));
        v14 = v9 + 32;
        do
        {
          v14 += 4;
          sub_1AC51F498();
          --v13;
        }

        while (v13);
      }

      if (!v11)
      {
        break;
      }

      MEMORY[0x1AC5B48A0](2);

      v15 = OUTLINED_FUNCTION_100();
      sub_1AC4578F4(v15, v16);

      sub_1AC51EEB8();
      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      if ((v36 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48D0](v35);
      }

      if (v37 != 3)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48A0](v37);
      }

      v6 = v40 + 1;
      switch(v10 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_20;
        case 2uLL:
          v19 = *(v8 + 16);
          v20 = *(v8 + 24);
LABEL_20:
          if (v19 != v20)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        case 3uLL:
          goto LABEL_22;
        default:
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_21:
          OUTLINED_FUNCTION_175();
          sub_1AC51EC58();
LABEL_22:

          v21 = OUTLINED_FUNCTION_100();
          sub_1AC4513F8(v21, v22);

          if (v6 == v33)
          {
            return OUTLINED_FUNCTION_86_2(v23, __dst, v24, v25, v26, v27, v28, v29, v30, v31);
          }

          memcpy(__src, __dst, 0x48uLL);
          break;
      }
    }

    v17 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v17, v18);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_8:
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48D0](v34);
    goto LABEL_9;
  }

  return result;
}

void sub_1AC5109CC()
{
  v2 = v0;
  OUTLINED_FUNCTION_59_3();
  v3 = *(v1 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_83_2(__src);
    v4 = (v1 + 32);
    for (i = v3 - 1; ; --i)
    {
      memcpy(__dst, v4, 0xB1uLL);
      memcpy(v8, __src, sizeof(v8));
      sub_1AC485F9C(__dst, &v7);
      sub_1AC4A49BC();
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
        v2 = 0;
      }

      v6 = sub_1AC485FF8(__dst);
      if (!i)
      {
        break;
      }

      memcpy(__src, v8, sizeof(__src));
      v4 += 184;
    }

    OUTLINED_FUNCTION_77_1(v6, v8);
  }
}

void *sub_1AC510AA4(void *result, void *a2)
{
  v4 = result[2];
  v5 = *(result + 24);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 5)
  {
    MEMORY[0x1AC5B48A0](6);
    OUTLINED_FUNCTION_64_2(__src);
    v6 = OUTLINED_FUNCTION_52_3();
    sub_1AC485440(v6, v7, v8, v9);
    OUTLINED_FUNCTION_94_2();
    sub_1AC4F85C0();
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    v10 = OUTLINED_FUNCTION_52_3();
    sub_1AC4854E8(v10, v11, v12, v5);
    return memcpy(a2, __src, 0x48uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Google_Protobuf_Type.name.setter()
{
  OUTLINED_FUNCTION_69();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Type.fields.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_Type.oneofs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Google_Protobuf_Type.options.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

double sub_1AC510D48@<D0>(uint64_t a1@<X8>)
{
  Google_Protobuf_Type.sourceContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  result = *&v5;
  *(a1 + 16) = v5;
  return result;
}

double sub_1AC510D8C(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5.n128_u64[0] = *a1;
  v5.n128_u64[1] = v1;
  v6 = v2;
  v7 = v3;

  sub_1AC4578F4(v2, v3);
  *&result = Google_Protobuf_Type.sourceContext.setter(&v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Type.sourceContext.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_1AC4802C0(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
  result = v5;
  *(v1 + 88) = v5;
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

void (*Google_Protobuf_Type.sourceContext.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_95_2();
  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v10 = v6;
    v12 = v7;
  }

  if (!v4)
  {
    v9 = v8;
  }

  *v3 = v11;
  v3[1] = v10;
  v3[2] = v12;
  v3[3] = v9;
  sub_1AC480274(v5, v6, v7, v8);
  return sub_1AC510EB8;
}

void sub_1AC510EB8()
{
  OUTLINED_FUNCTION_92_2();
  if (v6)
  {

    v7 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v7, v8);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v9, v10, v11, v12);
    v4[11] = v5;
    v4[12] = v3;
    v4[13] = v2;
    v4[14] = v1;

    v13 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v15, v16, v17, v18);
    v4[11] = v5;
    v4[12] = v3;
    v4[13] = v2;
    v4[14] = v1;
  }

  free(v0);
}

Swift::Void __swiftcall Google_Protobuf_Type.clearSourceContext()()
{
  sub_1AC4802C0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
}

uint64_t Google_Protobuf_Type.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Google_Protobuf_Type.edition.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

void Google_Protobuf_Type.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

double Google_Protobuf_Type.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t Google_Protobuf_Field.kind.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Google_Protobuf_Field.cardinality.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Google_Protobuf_Field.name.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Google_Protobuf_Field.typeURL.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Google_Protobuf_Field.options.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Google_Protobuf_Field.jsonName.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Google_Protobuf_Field.defaultValue.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

void Google_Protobuf_Field.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
}

double Google_Protobuf_Field.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 112) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_Enum.name.setter()
{
  OUTLINED_FUNCTION_69();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Enum.enumvalue.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_Enum.options.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

double sub_1AC5116B0@<D0>(uint64_t a1@<X8>)
{
  Google_Protobuf_Enum.sourceContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  result = *&v5;
  *(a1 + 16) = v5;
  return result;
}

double sub_1AC5116F4(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5.n128_u64[0] = *a1;
  v5.n128_u64[1] = v1;
  v6 = v2;
  v7 = v3;

  sub_1AC4578F4(v2, v3);
  *&result = Google_Protobuf_Enum.sourceContext.setter(&v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Enum.sourceContext.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_1AC4802C0(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  result = v5;
  *(v1 + 80) = v5;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return result;
}

void (*Google_Protobuf_Enum.sourceContext.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_95_2();
  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v10 = v6;
    v12 = v7;
  }

  if (!v4)
  {
    v9 = v8;
  }

  *v3 = v11;
  v3[1] = v10;
  v3[2] = v12;
  v3[3] = v9;
  sub_1AC480274(v5, v6, v7, v8);
  return sub_1AC511820;
}

void sub_1AC511820()
{
  OUTLINED_FUNCTION_92_2();
  if (v6)
  {

    v7 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v7, v8);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v9, v10, v11, v12);
    v4[10] = v5;
    v4[11] = v3;
    v4[12] = v2;
    v4[13] = v1;

    v13 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v15, v16, v17, v18);
    v4[10] = v5;
    v4[11] = v3;
    v4[12] = v2;
    v4[13] = v1;
  }

  free(v0);
}

Swift::Void __swiftcall Google_Protobuf_Enum.clearSourceContext()()
{
  sub_1AC4802C0(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
}

uint64_t Google_Protobuf_Enum.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Google_Protobuf_Enum.edition.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Google_Protobuf_Enum.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
}

double Google_Protobuf_Enum.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 64) = xmmword_1AC51F990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

uint64_t Google_Protobuf_EnumValue.name.setter()
{
  OUTLINED_FUNCTION_69();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_EnumValue.options.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void Google_Protobuf_EnumValue.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

double Google_Protobuf_EnumValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_Option.name.setter()
{
  OUTLINED_FUNCTION_69();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Option.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  if (v5)
  {
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
  }

  else
  {
    *a1 = xmmword_1AC51F990;
    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1ED6E3410);
    }

    a1[2] = qword_1ED6E4C40;
  }

  return sub_1AC4852EC(v4, v3, v5);
}

double sub_1AC511CC4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[6];
  v10 = *a1;
  v11 = v3;
  v5 = *(a1 + 2);
  v12 = *(a1 + 1);
  v13 = v5;
  v14 = v4;
  Google_Protobuf_Option.value.getter(&v8);
  v6 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v6;
  return result;
}

double sub_1AC511D24(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4.n128_u64[0] = *a1;
  v4.n128_u64[1] = v1;
  v5 = v2;
  sub_1AC4578F4(v4.n128_i64[0], v1);

  *&result = Google_Protobuf_Option.value.setter(&v4).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Option.value.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1AC48532C(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v4;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

uint64_t (*Google_Protobuf_Option.value.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  if (v5)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }

  else
  {
    *a1 = xmmword_1AC51F990;
    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1ED6E3410);
    }

    a1[2] = qword_1ED6E4C40;
  }

  sub_1AC4852EC(v3, v4, v5);
  return sub_1AC511E68;
}

uint64_t sub_1AC511E68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    v6 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v6, v7);

    OUTLINED_FUNCTION_28_8();
    sub_1AC48532C(v8, v9, v10);
    v5[4] = v3;
    v5[5] = v2;
    v5[6] = v4;
    v11 = OUTLINED_FUNCTION_24();
    sub_1AC4513F8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_28_8();
    result = sub_1AC48532C(v14, v15, v16);
    v5[4] = v3;
    v5[5] = v2;
    v5[6] = v4;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_Option.clearValue()()
{
  sub_1AC48532C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

void Google_Protobuf_Option.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

double Google_Protobuf_Option.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static Google_Protobuf_Syntax._protobuf_nameMap.getter()
{
  if (qword_1EB557F18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559D40);
}

uint64_t static Google_Protobuf_Type._protobuf_nameMap.getter()
{
  if (qword_1EB557F20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559D60);
}

uint64_t Google_Protobuf_Type.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    result = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_7;
      case 2:
        v14 = OUTLINED_FUNCTION_7();
        sub_1AC512224(v14, v15, v16, v17);
        break;
      case 3:
      case 7:
LABEL_7:
        OUTLINED_FUNCTION_36_0();
        v9();
        break;
      case 4:
        v10 = OUTLINED_FUNCTION_7();
        sub_1AC5122A4(v10, v11, v12, v13);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC480CB4(v5, v6, v7, v8);
        break;
      case 6:
        v18 = OUTLINED_FUNCTION_7();
        sub_1AC512324(v18, v19, v20, v21);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC512224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC5126A8();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Field, v8, a3, a4);
}

uint64_t sub_1AC5122A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 32, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC512324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 40, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC5123A4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_0();
  if (v3)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v4 = *(v2 + 16);
  if (!*(v4 + 16) || (sub_1AC50C974(v4, 2), !v0))
  {
    if (*(*(v2 + 24) + 16))
    {
      MEMORY[0x1AC5B48A0](3);
      OUTLINED_FUNCTION_48();
      sub_1AC51AAC4();
    }

    v5 = *(v2 + 32);
    if (!*(v5 + 16) || (sub_1AC50C78C(v5, 4), !v0))
    {
      sub_1AC4811B0(v2, v1);
      if (!v0)
      {
        v6 = *(v2 + 40);
        if (v6)
        {
          v7 = *(v2 + 48);
          MEMORY[0x1AC5B48A0](6);
          v8 = 1;
          if (v6 == 2)
          {
            v8 = 2;
          }

          if (v7)
          {
            v9 = v8;
          }

          else
          {
            v9 = v6;
          }

          MEMORY[0x1AC5B48A0](v9);
        }

        OUTLINED_FUNCTION_11_0();
        if (v10)
        {
          MEMORY[0x1AC5B48A0](7);
          OUTLINED_FUNCTION_11_17();
          sub_1AC51EEB8();
        }

        sub_1AC4937B8(v1, *(v2 + 72), *(v2 + 80));
      }
    }
  }
}

void Google_Protobuf_Type.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  memcpy(__dst, v1, sizeof(__dst));
  OUTLINED_FUNCTION_29();
  if (!v4 || (OUTLINED_FUNCTION_9_6(), v5(), (v0 = v2) == 0))
  {
    if (!*(__dst[2] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC5126A8(), OUTLINED_FUNCTION_28(), v3(), (v0 = v2) == 0))
    {
      if (!*(__dst[3] + 16) || (v2 = v0, OUTLINED_FUNCTION_25_7(), v6(), !v0))
      {
        if (!*(__dst[4] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), v3(), (v0 = v2) == 0))
        {
          OUTLINED_FUNCTION_25_7();
          sub_1AC481280(v7, v8, v9, v10);
          if (!v0)
          {
            if (__dst[5])
            {
              OUTLINED_FUNCTION_101_1();
              OUTLINED_FUNCTION_28();
              v3();
            }

            OUTLINED_FUNCTION_29();
            if (v21)
            {
              OUTLINED_FUNCTION_27();
              v11 = v22();
            }

            OUTLINED_FUNCTION_69_1(*&__dst[9], v11, v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v20);
            OUTLINED_FUNCTION_36_0();
            UnknownStorage.traverse<A>(visitor:)(v23, v24, v25);
            sub_1AC4513F8(v28, v29);
          }
        }
      }
    }
  }
}

unint64_t sub_1AC5126A8()
{
  result = qword_1EB559E40;
  if (!qword_1EB559E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E40);
  }

  return result;
}

uint64_t static Google_Protobuf_Type.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v109 = *(v3 + 48);
  v103 = *(v3 + 56);
  v101 = *(v3 + 64);
  v96 = *(v3 + 72);
  v95 = *(v3 + 80);
  v6 = *(v3 + 96);
  v110 = *(v3 + 40);
  v111 = *(v3 + 88);
  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v107 = *(v2 + 40);
  v106 = *(v2 + 48);
  v97 = *(v2 + 64);
  v99 = *(v2 + 56);
  v93 = *(v2 + 80);
  v94 = *(v2 + 72);
  v11 = *(v2 + 96);
  v112 = *(v2 + 88);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v113 = *(v2 + 104);
  v114 = *(v2 + 112);
  if (!v12 && (sub_1AC51F3D8() & 1) == 0 || (sub_1AC477F88() & 1) == 0 || (sub_1AC47808C(v5, v9) & 1) == 0 || (sub_1AC477E08(v4, v10) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v11)
    {
      v13 = v111 == v112 && v6 == v11;
      if (v13 || (OUTLINED_FUNCTION_95(), (sub_1AC51F3D8() & 1) != 0))
      {
        v14 = OUTLINED_FUNCTION_3_31();
        sub_1AC480274(v14, v15, v16, v17);
        v18 = OUTLINED_FUNCTION_93_0();
        sub_1AC480274(v18, v19, v113, v114);
        v20 = OUTLINED_FUNCTION_3_31();
        sub_1AC480274(v20, v21, v22, v23);
        v24 = OUTLINED_FUNCTION_65_2();
        sub_1AC4578F4(v24, v25);
        sub_1AC4578F4(v113, v114);
        v26 = OUTLINED_FUNCTION_65_2();
        v27 = MEMORY[0x1AC5B4070](v26);
        sub_1AC4513F8(v113, v114);
        v28 = OUTLINED_FUNCTION_65_2();
        sub_1AC4513F8(v28, v29);
        v30 = OUTLINED_FUNCTION_93_0();
        sub_1AC4802C0(v30, v31, v113, v114);

        v32 = OUTLINED_FUNCTION_65_2();
        sub_1AC4513F8(v32, v33);
        v34 = OUTLINED_FUNCTION_3_31();
        sub_1AC4802C0(v34, v35, v36, v37);
        if ((v27 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_24;
      }

      v79 = OUTLINED_FUNCTION_3_31();
      sub_1AC480274(v79, v80, v81, v82);
      v83 = OUTLINED_FUNCTION_93_0();
      sub_1AC480274(v83, v84, v113, v114);
      v85 = OUTLINED_FUNCTION_3_31();
      sub_1AC480274(v85, v86, v87, v88);
      v89 = OUTLINED_FUNCTION_93_0();
      sub_1AC4802C0(v89, v90, v113, v114);

      v91 = OUTLINED_FUNCTION_65_2();
      sub_1AC4513F8(v91, v92);
      v63 = OUTLINED_FUNCTION_3_31();
LABEL_22:
      sub_1AC4802C0(v63, v64, v65, v66);
      return 0;
    }

    v49 = OUTLINED_FUNCTION_3_31();
    sub_1AC480274(v49, v50, v51, v52);
    v46 = v112;
    v48 = v113;
    v47 = v114;
    sub_1AC480274(v112, 0, v113, v114);
    v53 = OUTLINED_FUNCTION_3_31();
    sub_1AC480274(v53, v54, v55, v56);

    v57 = OUTLINED_FUNCTION_65_2();
    sub_1AC4513F8(v57, v58);
LABEL_21:
    v59 = OUTLINED_FUNCTION_3_31();
    sub_1AC4802C0(v59, v60, v61, v62);
    v63 = v46;
    v64 = v11;
    v65 = v48;
    v66 = v47;
    goto LABEL_22;
  }

  sub_1AC480274(v111, 0, v7, v8);
  if (v11)
  {
    v46 = v112;
    v48 = v113;
    v47 = v114;
    sub_1AC480274(v112, v11, v113, v114);
    goto LABEL_21;
  }

  sub_1AC480274(v112, 0, v113, v114);
  sub_1AC4802C0(v111, 0, v7, v8);
LABEL_24:
  if (OUTLINED_FUNCTION_99_2(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v99, v101, v103, v105, v106, v107, v108, v109, v110))
  {
    v67 = v104 == v100 && v102 == v98;
    if (v67 || (sub_1AC51F3D8() & 1) != 0)
    {
      v68 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v68, v69);
      v70 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v70, v71);
      v72 = OUTLINED_FUNCTION_52();
      v73 = MEMORY[0x1AC5B4070](v72);
      v74 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v74, v75);
      v76 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v76, v77);
      return v73 & 1;
    }
  }

  return 0;
}

uint64_t Google_Protobuf_Type.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC5123A4();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC512BD0(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC5123A4();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Field._protobuf_nameMap.getter()
{
  if (qword_1EB557F28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559D80);
}

void Google_Protobuf_Field.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC512E54(v5, v6, v7, v8);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC512ED4(v13, v14, v15, v16);
        break;
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 10:
      case 11:
        OUTLINED_FUNCTION_36_0();
        v17();
        break;
      case 9:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC512F54(v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC512E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC5154E8();
  return v7(a2, &type metadata for Google_Protobuf_Field.Kind, v8, a3, a4);
}

uint64_t sub_1AC512ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC51553C();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Field.Cardinality, v8, a3, a4);
}

uint64_t sub_1AC512F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 72, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

void sub_1AC512FD4()
{
  OUTLINED_FUNCTION_49();
  if (*v2)
  {
    MEMORY[0x1AC5B48A0](1);
    v3 = OUTLINED_FUNCTION_48();
    sub_1AC471208(v3, v4);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48A0](v5);
  }

  v6 = *(v2 + 28);
  if (v6)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48D0](v6);
  }

  OUTLINED_FUNCTION_11_0();
  if (v7)
  {
    MEMORY[0x1AC5B48A0](4);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  OUTLINED_FUNCTION_11_0();
  if (v8)
  {
    MEMORY[0x1AC5B48A0](6);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v9 = *(v2 + 64);
  if (v9)
  {
    MEMORY[0x1AC5B48A0](7);
    MEMORY[0x1AC5B48D0](v9);
  }

  if (*(v2 + 68))
  {
    MEMORY[0x1AC5B48A0](8);
    sub_1AC51F488();
  }

  v10 = *(v2 + 72);
  if (!*(v10 + 16) || (sub_1AC50C78C(v10, 9), !v0))
  {
    OUTLINED_FUNCTION_11_0();
    if (v11)
    {
      MEMORY[0x1AC5B48A0](10);
      OUTLINED_FUNCTION_11_17();
      sub_1AC51EEB8();
    }

    OUTLINED_FUNCTION_11_0();
    if (v12)
    {
      MEMORY[0x1AC5B48A0](11);
      OUTLINED_FUNCTION_11_17();
      sub_1AC51EEB8();
    }

    sub_1AC4937B8(v1, *(v2 + 112), *(v2 + 120));
  }
}

void Google_Protobuf_Field.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = *v3;
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 28);
  v12 = *(v3 + 40);
  v42 = *(v3 + 32);
  v39 = v12;
  v37 = *(v3 + 68);
  v38 = *(v3 + 64);
  v34 = *(v3 + 72);
  v35 = *(v3 + 88);
  v36 = *(v3 + 80);
  v32 = *(v3 + 120);
  v33 = *(v3 + 112);
  if (v8)
  {
    v13 = *(v3 + 8);
    v40 = v8;
    LOBYTE(v41) = v13;
    v15 = *(a3 + 128);
    v16 = sub_1AC5154E8();
    v15(&v40, 1, &type metadata for Google_Protobuf_Field.Kind, v16, a2, a3);
    if (v4)
    {
      return;
    }

    v7 = a1;
  }

  if (!v9 || (v40 = v9, LOBYTE(v41) = v10, v17 = *(a3 + 128), sub_1AC51553C(), OUTLINED_FUNCTION_53_0(), v17(), !v4))
  {
    if (!v11 || (OUTLINED_FUNCTION_53_0(), v18(), !v4))
    {
      v19 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v19 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), v20(), !v4))
      {
        OUTLINED_FUNCTION_29();
        if (!v21 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), v22(), !v4))
        {
          if (!v38 || (OUTLINED_FUNCTION_53_0(), v23(), !v4))
          {
            if (!v37 || (OUTLINED_FUNCTION_53_0(), v24(), !v4))
            {
              v26 = v35;
              v25 = v36;
              if (*(v34 + 16))
              {
                v27 = *(a3 + 280);
                sub_1AC4847F8();
                OUTLINED_FUNCTION_53_0();
                v27();
                if (v4)
                {
                  return;
                }

                v26 = v35;
                v25 = v36;
              }

              v28 = HIBYTE(v26) & 0xF;
              if ((v26 & 0x2000000000000000) == 0)
              {
                v28 = v25 & 0xFFFFFFFFFFFFLL;
              }

              if (!v28 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), v29(), !v4))
              {
                OUTLINED_FUNCTION_29();
                if (!v30 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), v31(), !v4))
                {
                  v40 = v33;
                  v41 = v32;
                  sub_1AC4578F4(v33, v32);
                  UnknownStorage.traverse<A>(visitor:)(v7, a2, a3);
                  sub_1AC4513F8(v40, v41);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t static Google_Protobuf_Field.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v42 = *(a1 + 56);
  v43 = *(a1 + 48);
  v39 = *(a1 + 64);
  v37 = *(a1 + 68);
  v35 = *(a1 + 72);
  v33 = *(a1 + 80);
  v32 = *(a1 + 88);
  v29 = *(a1 + 96);
  v28 = *(a1 + 104);
  v7 = *(a2 + 16);
  v8 = *(a2 + 28);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v40 = *(a2 + 56);
  v41 = *(a2 + 48);
  v38 = *(a2 + 64);
  v36 = *(a2 + 68);
  v34 = *(a2 + 72);
  v31 = *(a2 + 80);
  v30 = *(a2 + 88);
  v27 = *(a2 + 96);
  v26 = *(a2 + 104);
  if (!sub_1AC48610C(*a1, *(a1 + 8), *a2) || !sub_1AC48610C(v2, v3, v7) || v4 != v8)
  {
    return 0;
  }

  v11 = v5 == v9 && v6 == v10;
  if (!v11 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v12 = v43 == v41 && v42 == v40;
  if (!v12 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v39 != v38 || ((v37 ^ v36) & 1) != 0 || (sub_1AC477E08(v35, v34) & 1) == 0)
  {
    return 0;
  }

  v13 = v33 == v31 && v32 == v30;
  if (!v13 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v14 = v29 == v27 && v28 == v26;
  if (!v14 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v15 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v15, v16);
  v17 = OUTLINED_FUNCTION_18();
  sub_1AC4578F4(v17, v18);
  v19 = OUTLINED_FUNCTION_52();
  v20 = MEMORY[0x1AC5B4070](v19);
  v21 = OUTLINED_FUNCTION_18();
  sub_1AC4513F8(v21, v22);
  v23 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v23, v24);
  return v20 & 1;
}

uint64_t Google_Protobuf_Field.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_17_17(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28);
  memcpy(v9, v10, v11);
  sub_1AC512FD4();
  v20 = OUTLINED_FUNCTION_18_13(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  memcpy(v20, v21, v22);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC513820(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC512FD4();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Field.Kind._protobuf_nameMap.getter()
{
  if (qword_1EB557F30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559DA0);
}

uint64_t static Google_Protobuf_Field.Cardinality._protobuf_nameMap.getter()
{
  if (qword_1EB557F38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559DC0);
}

uint64_t static Google_Protobuf_Enum._protobuf_nameMap.getter()
{
  if (qword_1EB557F40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559DE0);
}

uint64_t Google_Protobuf_Enum.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    result = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_10;
      case 2:
        v17 = OUTLINED_FUNCTION_7();
        sub_1AC513B8C(v17, v18, v19, v20);
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC513C0C(v9, v10, v11, v12);
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC513C8C(v13, v14, v15, v16);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC513D0C(v5, v6, v7, v8);
        break;
      case 6:
LABEL_10:
        OUTLINED_FUNCTION_36_0();
        v21();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC513B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC515590();
  return v7(a2 + 16, &type metadata for Google_Protobuf_EnumValue, v8, a3, a4);
}

uint64_t sub_1AC513C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 24, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC513C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4860B4();
  return v7(a2 + 80, &type metadata for Google_Protobuf_SourceContext, v8, a3, a4);
}

uint64_t sub_1AC513D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 32, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC513D8C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_0();
  if (v3)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v4 = *(v2 + 16);
  if (!*(v4 + 16) || (sub_1AC50CA68(v4, 2), !v0))
  {
    v5 = *(v2 + 24);
    if (!*(v5 + 16) || (sub_1AC50C78C(v5, 3), !v0))
    {
      sub_1AC51403C(v2, v1);
      if (!v0)
      {
        v6 = *(v2 + 32);
        if (v6)
        {
          v7 = *(v2 + 40);
          MEMORY[0x1AC5B48A0](5);
          v8 = 1;
          if (v6 == 2)
          {
            v8 = 2;
          }

          if (v7)
          {
            v9 = v8;
          }

          else
          {
            v9 = v6;
          }

          MEMORY[0x1AC5B48A0](v9);
        }

        OUTLINED_FUNCTION_11_0();
        if (v10)
        {
          MEMORY[0x1AC5B48A0](6);
          OUTLINED_FUNCTION_11_17();
          sub_1AC51EEB8();
        }

        sub_1AC4937B8(v1, *(v2 + 64), *(v2 + 72));
      }
    }
  }
}

void Google_Protobuf_Enum.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  memcpy(__dst, v1, sizeof(__dst));
  OUTLINED_FUNCTION_29();
  if (!v4 || (OUTLINED_FUNCTION_9_6(), v5(), (v0 = v2) == 0))
  {
    if (!*(__dst[1].n128_u64[0] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC515590(), OUTLINED_FUNCTION_28(), v3(), (v0 = v2) == 0))
    {
      if (!*(__dst[1].n128_u64[1] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), v3(), (v0 = v2) == 0))
      {
        OUTLINED_FUNCTION_25_7();
        sub_1AC51410C(v6, v7, v8, v9);
        if (!v0)
        {
          if (__dst[2].n128_u64[0])
          {
            OUTLINED_FUNCTION_101_1();
            OUTLINED_FUNCTION_28();
            v3();
          }

          OUTLINED_FUNCTION_29();
          if (v20)
          {
            OUTLINED_FUNCTION_27();
            v10 = v21();
          }

          OUTLINED_FUNCTION_69_1(__dst[4], v10, v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v19);
          OUTLINED_FUNCTION_36_0();
          UnknownStorage.traverse<A>(visitor:)(v22, v23, v24);
          sub_1AC4513F8(v27, v28);
        }
      }
    }
  }
}

void *sub_1AC51403C(void *result, void *a2)
{
  v3 = result[11];
  if (v3)
  {
    v5 = result[10];
    v6 = result[12];
    v7 = result[13];
    MEMORY[0x1AC5B48A0](4);
    memcpy(__dst, a2, sizeof(__dst));

    sub_1AC4578F4(v6, v7);
    sub_1AC4F5320(__dst, v5, v3, v6, v7);
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    sub_1AC4802C0(v5, v3, v6, v7);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC51410C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 88);
  if (v4)
  {
    v7 = *(result + 80);
    v11 = *(result + 96);
    v10[0] = v7;
    v10[1] = v4;
    v8 = *(a4 + 136);
    v9 = sub_1AC4860B4();
    return v8(v10, 4, &type metadata for Google_Protobuf_SourceContext, v9, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_Enum.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v131 = *(v3 + 32);
  HIDWORD(v130) = *(v3 + 40);
  v124 = *(v3 + 56);
  v126 = *(v3 + 48);
  v118 = *(v3 + 72);
  v119 = *(v3 + 64);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = *(v3 + 96);
  v9 = *(v3 + 104);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v129 = *(v2 + 32);
  HIDWORD(v128) = *(v2 + 40);
  v120 = *(v2 + 56);
  v122 = *(v2 + 48);
  v116 = *(v2 + 72);
  v117 = *(v2 + 64);
  v12 = *(v2 + 80);
  v13 = *(v2 + 88);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v132 = *(v2 + 96);
  v133 = *(v2 + 104);
  if (!v14 && (sub_1AC51F3D8() & 1) == 0 || (sub_1AC478118(v4, v10) & 1) == 0 || (sub_1AC477E08(v5, v11) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v13)
    {
      v15 = v6 == v12 && v7 == v13;
      if (v15 || (OUTLINED_FUNCTION_95(), (sub_1AC51F3D8() & 1) != 0))
      {
        v16 = OUTLINED_FUNCTION_2_27();
        sub_1AC480274(v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_42_6(v20, v21, v22, v23, v24, v25, v26, v27, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
        v28 = OUTLINED_FUNCTION_2_27();
        sub_1AC480274(v28, v29, v30, v31);
        v32 = OUTLINED_FUNCTION_60_3();
        sub_1AC4578F4(v32, v33);
        sub_1AC4578F4(v7, v12);
        OUTLINED_FUNCTION_28_8();
        v34 = MEMORY[0x1AC5B4070]();
        sub_1AC4513F8(v7, v12);
        v35 = OUTLINED_FUNCTION_60_3();
        sub_1AC4513F8(v35, v36);
        v37 = OUTLINED_FUNCTION_93_0();
        sub_1AC4802C0(v37, v38, v7, v12);

        v39 = OUTLINED_FUNCTION_60_3();
        sub_1AC4513F8(v39, v40);
        v41 = OUTLINED_FUNCTION_2_27();
        sub_1AC4802C0(v41, v42, v43, v44);
        if ((v34 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_23;
      }

      v96 = OUTLINED_FUNCTION_2_27();
      sub_1AC480274(v96, v97, v98, v99);
      v100 = OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_42_6(v100, v101, v102, v103, v104, v105, v106, v107, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
      v108 = OUTLINED_FUNCTION_2_27();
      sub_1AC480274(v108, v109, v110, v111);
      v112 = OUTLINED_FUNCTION_93_0();
      sub_1AC4802C0(v112, v113, v7, v12);

      v114 = OUTLINED_FUNCTION_60_3();
      sub_1AC4513F8(v114, v115);
      v80 = OUTLINED_FUNCTION_2_27();
LABEL_21:
      sub_1AC4802C0(v80, v81, v82, v83);
      return 0;
    }

    v60 = OUTLINED_FUNCTION_2_27();
    sub_1AC480274(v60, v61, v62, v63);
    v59 = v12;
    OUTLINED_FUNCTION_42_6(v12, 0, v64, v65, v66, v67, v68, v69, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
    v70 = OUTLINED_FUNCTION_2_27();
    sub_1AC480274(v70, v71, v72, v73);

    v74 = OUTLINED_FUNCTION_60_3();
    sub_1AC4513F8(v74, v75);
LABEL_20:
    v76 = OUTLINED_FUNCTION_2_27();
    sub_1AC4802C0(v76, v77, v78, v79);
    v80 = v59;
    v81 = v13;
    v82 = v7;
    v83 = v12;
    goto LABEL_21;
  }

  sub_1AC480274(v6, 0, v8, v9);
  if (v13)
  {
    v59 = v12;
    OUTLINED_FUNCTION_42_6(v12, v13, v53, v54, v55, v56, v57, v58, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
    goto LABEL_20;
  }

  sub_1AC480274(v12, 0, v132, v133);
  sub_1AC4802C0(v6, 0, v8, v9);
LABEL_23:
  if (OUTLINED_FUNCTION_99_2(v45, v46, v47, v48, v49, v50, v51, v52, v116, v117, v118, v119, v120, v122, v124, v126, v128, HIDWORD(v128), v129, v130, HIDWORD(v130), v131))
  {
    v84 = v127 == v123 && v125 == v121;
    if (v84 || (sub_1AC51F3D8() & 1) != 0)
    {
      v85 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v85, v86);
      v87 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v87, v88);
      v89 = OUTLINED_FUNCTION_52();
      v90 = MEMORY[0x1AC5B4070](v89);
      v91 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v91, v92);
      v93 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v93, v94);
      return v90 & 1;
    }
  }

  return 0;
}