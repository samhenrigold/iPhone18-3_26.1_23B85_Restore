unint64_t sub_1AC4E581C(unint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_9:
      result = sub_1AC4E6960(result, v8, v7, a3);
      if (!v3)
      {
        v5 = HIDWORD(result) & 1;
        goto LABEL_12;
      }

      break;
    case 3uLL:
      if (!v3)
      {
        LODWORD(result) = 0;
        LOBYTE(v5) = 1;
        goto LABEL_12;
      }

      break;
    default:
      result = sub_1AC4E6694(result, a2 & 0xFFFFFFFFFFFFFFLL, a3);
      if (!v3)
      {
        v5 = HIDWORD(result) & 1;
LABEL_12:
        result = result | (v5 << 32);
      }

      break;
  }

  return result;
}

uint64_t sub_1AC4E58D8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *, uint64_t *, uint64_t), uint64_t (*a5)(uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v9 = v10;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v7 = *(result + 24);
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v9 = v7;
LABEL_8:
      result = sub_1AC4E68A0(result, v9, v8, a3, a5);
      break;
    case 3uLL:
      if (!v5)
      {
        result = 0;
      }

      break;
    default:
      result = sub_1AC4E67A4(result, a2 & 0xFFFFFFFFFFFFFFLL, a3, a4);
      break;
  }

  return result;
}

uint64_t sub_1AC4E597C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1AC51EEE8();

  return MEMORY[0x1EEE68FA8](a1);
}

void sub_1AC4E59E4()
{
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_8();
  sub_1AC458F28();
  v6 = *v0;
  if (*v0)
  {
    v7 = *(v2 + 8) - v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v2 + 16);
  if (v8 == v7)
  {
LABEL_5:
    v9 = sub_1AC477660();
    v10 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v9);
    v12 = xmmword_1AC51FB60;
LABEL_6:
    OUTLINED_FUNCTION_36(v12, v10, v11);
    return;
  }

  if (*(v6 + v8) != 34)
  {
    OUTLINED_FUNCTION_16_8();
    v20 = OUTLINED_FUNCTION_0_25();
    OUTLINED_FUNCTION_24_7(v20, v21, v22, v23);
    if (!v1)
    {
      OUTLINED_FUNCTION_20();
      sub_1AC457DC4(v42);
      if (v2)
      {
        goto LABEL_51;
      }

      v24 = *&v0;
      if ((LODWORD(v24) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        goto LABEL_51;
      }

      return;
    }

LABEL_17:
    sub_1AC457DC4(v42);
    return;
  }

  *(v2 + 16) = OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_16_8();
  v13 = OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_24_7(v13, v4, v14, v15);
  if (v1)
  {
    goto LABEL_17;
  }

  v17 = v16;
  sub_1AC457DC4(v42);
  if (v17)
  {
    *(v2 + 16) = v8;
    OUTLINED_FUNCTION_17_0();
    sub_1AC45993C();
    OUTLINED_FUNCTION_12_13();
    v19 = v19 && v18 == 0xE300000000000000;
    if (v19 || (OUTLINED_FUNCTION_2_17(5136718, 0xE300000000000000) & 1) != 0 || (v6 == 6712905 ? (v27 = v17 == 0xE300000000000000) : (v27 = 0), v27 || (OUTLINED_FUNCTION_2_17(6712905, 0xE300000000000000) & 1) != 0 || (v6 == 1718503725 ? (v28 = v17 == 0xE400000000000000) : (v28 = 0), v28 || (OUTLINED_FUNCTION_2_17(1718503725, 0xE400000000000000) & 1) != 0 || ((v29 = OUTLINED_FUNCTION_13_10(), v19) ? (v30 = v17 == 0xE800000000000000) : (v30 = 0), v30 || (OUTLINED_FUNCTION_2_17(v29, 0xE800000000000000) & 1) != 0 || ((v31 = OUTLINED_FUNCTION_5_16(), v19) ? (v33 = v17 == v32) : (v33 = 0), v33 || (OUTLINED_FUNCTION_2_17(v31, 0xE900000000000079) & 1) != 0)))))
    {
    }

    else
    {
      sub_1AC51EE18();
      OUTLINED_FUNCTION_23_8();
      v34 = OUTLINED_FUNCTION_9_14();
      v35(v34);
      if (v6 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {

        v36 = OUTLINED_FUNCTION_12_0();
        v38 = sub_1AC4E581C(v36, v37, v2);
        v39 = OUTLINED_FUNCTION_12_0();
        sub_1AC45AC74(v39, v40);
        if ((v38 & 0x100000000) != 0)
        {
          goto LABEL_51;
        }
      }
    }
  }

  else
  {
    v25 = *(v2 + 16);
    v26 = *v2;
    if (*v2)
    {
      v26 = *(v2 + 8) - v26;
    }

    if (v25 == v26)
    {
      goto LABEL_5;
    }

    if (*(v6 + v25) != 34)
    {
LABEL_51:
      v41 = sub_1AC477660();
      v10 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v41);
      v12 = xmmword_1AC528340;
      goto LABEL_6;
    }

    *(v2 + 16) = sub_1AC458F9C(v25, v6, v4);
  }
}

uint64_t sub_1AC4E5D54()
{
  OUTLINED_FUNCTION_8_15();
  if (v1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v2 = 0;
  }

  if (v0 == v2)
  {
    goto LABEL_19;
  }

  if (*(v1 + v0) != 34)
  {
    goto LABEL_19;
  }

  v3 = sub_1AC459B18();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v3;
  v6 = v4;
  v7 = v3 == 0x65736C6166 && v4 == 0xE500000000000000;
  if (!v7 && (sub_1AC51F3D8() & 1) == 0)
  {
    if (v5 == 1702195828 && v6 == 0xE400000000000000)
    {
    }

    else
    {
      v10 = sub_1AC51F3D8();

      if ((v10 & 1) == 0)
      {
LABEL_19:
        v11 = sub_1AC477660();
        v12 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v11);
        OUTLINED_FUNCTION_17_10(v12, v13, v14, v15);
        return v8 & 1;
      }
    }

    v8 = 1;
    return v8 & 1;
  }

  v8 = 0;
  return v8 & 1;
}

unint64_t sub_1AC4E5E7C(int a1)
{
  if ((a1 - 58) >= 0xFFFFFFF6)
  {
    v1 = 0;
    v2 = (a1 - 48);
  }

  else
  {
    v1 = 0;
    v2 = 10;
    if ((a1 - 58) <= 0xFFFFFFF6)
    {
      switch(a1)
      {
        case 'A':
          return v2 | (v1 << 32);
        case 'B':
LABEL_7:
          v1 = 0;
          v2 = 11;
          break;
        case 'C':
LABEL_9:
          v1 = 0;
          v2 = 12;
          break;
        case 'D':
LABEL_10:
          v1 = 0;
          v2 = 13;
          break;
        case 'E':
LABEL_8:
          v1 = 0;
          v2 = 14;
          break;
        case 'F':
LABEL_11:
          v1 = 0;
          v2 = 15;
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      switch(a1)
      {
        case 'a':
          return v2 | (v1 << 32);
        case 'b':
          goto LABEL_7;
        case 'c':
          goto LABEL_9;
        case 'd':
          goto LABEL_10;
        case 'e':
          goto LABEL_8;
        case 'f':
          goto LABEL_11;
        default:
          v2 = 0;
          v1 = 1;
          break;
      }
    }
  }

  return v2 | (v1 << 32);
}

uint64_t sub_1AC4E5F50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = result;
  v8 = a2 - result;
  if (a2 - result < 1)
  {
    goto LABEL_10;
  }

  v16 = 0;
  sub_1AC45BD44(a3, v15);
  sub_1AC457E18(v7, a2, &v16, v8);
  if (v4)
  {
    return sub_1AC457DC4(v15);
  }

  v11 = v9;
  v12 = v10;
  result = sub_1AC457DC4(v15);
  if ((v12 & 1) == 0 && (v16 == v8 ? (v14 = COERCE_UNSIGNED_INT(fabs(v11)) <= 0x7F7FFFFF) : (v14 = 0), v14))
  {
    v13 = v11;
    *a4 = v13;
    *(a4 + 4) = 0;
  }

  else
  {
LABEL_10:
    *a4 = 0;
    *(a4 + 4) = 1;
  }

  return result;
}

uint64_t sub_1AC4E6038@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = a2 - result;
  if (a2 - result < 1)
  {
    goto LABEL_8;
  }

  v15 = 0;
  sub_1AC45BD44(a3, v14);
  v9 = OUTLINED_FUNCTION_12_0();
  v10 = a4(v9);
  if (v5)
  {
    return sub_1AC457DC4(v14);
  }

  v12 = v10;
  v13 = v11;
  result = sub_1AC457DC4(v14);
  if ((v13 & 1) == 0 && v15 == v7)
  {
    *a5 = v12;
    *(a5 + 8) = 0;
  }

  else
  {
LABEL_8:
    *a5 = 0;
    *(a5 + 8) = 1;
  }

  return result;
}

uint64_t sub_1AC4E6114(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_1AC51EF88();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1AC51F308();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_1AC4E61A4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1AC51EFC8();
  }

  else
  {
    return 0;
  }
}

void sub_1AC4E61EC()
{
  v2 = v1;
  sub_1AC458F28();
  v3 = 0;
  while (1)
  {
    v4 = 0;
    v6 = *v0;
    v5 = v0[1];
    v7 = v5 - *v0;
    if (*v0)
    {
      v8 = v5 - *v0;
    }

    else
    {
      v8 = 0;
    }

    while (1)
    {
      sub_1AC458F28();
      v9 = v0[2];
      if (v6)
      {
        if (v9 == v7)
        {
          goto LABEL_63;
        }
      }

      else if (!v9)
      {
        goto LABEL_63;
      }

      v10 = *(v6 + v9);
      if (v10 != 91)
      {
        break;
      }

      if (v9 < 0 || v9 >= v8)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v23 = sub_1AC477660();
        v24 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v23);
        OUTLINED_FUNCTION_16_6(v24, v25);
LABEL_64:
        swift_willThrow();
        return;
      }

      v0[2] = v9 + 1;
      v11 = __OFADD__(v4++, 1);
      if (v11)
      {
        goto LABEL_67;
      }
    }

    switch(v10)
    {
      case '{':
        v15 = sub_1AC458E74(0x7Bu);
        if (v2)
        {
          return;
        }

        sub_1AC458FC0(v15);
        v2 = 0;
        if ((sub_1AC459020(0x7Du) & 1) == 0)
        {
          while (1)
          {
            sub_1AC458F28();
            sub_1AC4E6548();
            sub_1AC458E74(0x3Au);
            sub_1AC4E61EC();
            v2 = 0;
            if (sub_1AC459020(0x7Du))
            {
              break;
            }

            sub_1AC458E74(0x2Cu);
          }
        }

        sub_1AC45A9B0();
        goto LABEL_44;
      case ']':
        if (!v4)
        {
          goto LABEL_69;
        }

        while (1)
        {
          sub_1AC458F28();
          v13 = v0[2];
          if (v6)
          {
            if (v13 == v7)
            {
              goto LABEL_44;
            }
          }

          else if (!v13)
          {
            goto LABEL_44;
          }

          if (*(v6 + v13) != 93)
          {
            goto LABEL_44;
          }

          if (v13 < 0 || v13 >= v8)
          {
            __break(1u);
            goto LABEL_71;
          }

          v0[2] = v13 + 1;
          v14 = v4-- <= 1;
          if (v14)
          {
            v4 = 0;
            goto LABEL_44;
          }
        }

      case 'f':
        v12 = &unk_1F2126DD0;
        goto LABEL_25;
      case 'n':
        v12 = &unk_1F2126DA8;
LABEL_25:
        if ((sub_1AC459FB0(v12) & 1) == 0)
        {
LABEL_63:
          v21 = sub_1AC477660();
          OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v21);
          *v22 = xmmword_1AC51FB60;
          goto LABEL_64;
        }

        goto LABEL_44;
      case 't':
        v12 = &unk_1F2126DF8;
        goto LABEL_25;
      case '""':
        sub_1AC4E6548();
        break;
      default:
        sub_1AC45CC3C();
        break;
    }

    if (v2)
    {
      return;
    }

LABEL_44:
    v11 = __OFADD__(v3, v4);
    v3 += v4;
    if (v11)
    {
      break;
    }

    if (v3 >= 1)
    {
      v17 = *v0;
      v16 = v0[1];
      v18 = v16 - *v0;
      v19 = *v0 ? v16 - *v0 : 0;
      while (1)
      {
        sub_1AC458F28();
        v20 = v0[2];
        if (v17)
        {
          if (v20 == v18)
          {
            break;
          }
        }

        else if (!v20)
        {
          break;
        }

        if (*(v17 + v20) != 93)
        {
          break;
        }

        if (v20 < 0 || v20 >= v19)
        {
          goto LABEL_68;
        }

        v0[2] = v20 + 1;
        v14 = v3-- <= 1;
        if (v14)
        {
          return;
        }
      }

      sub_1AC458E74(0x2Cu);
      if (!v2)
      {
        continue;
      }
    }

    return;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_1AC4E64CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  sub_1AC477660();
  swift_allocError();
  *v4 = xmmword_1AC528EC0;
  return swift_willThrow();
}

uint64_t sub_1AC4E6548()
{
  v1 = v0[2];
  v2 = *v0;
  if (*v0)
  {
    v3 = v0[1] - v2;
  }

  else
  {
    v3 = 0;
  }

  if (v1 == v3)
  {
    goto LABEL_30;
  }

  if (*(v2 + v1) != 34)
  {
    v10 = 5;
LABEL_31:
    sub_1AC477660();
    swift_allocError();
    *v11 = 0;
    v11[1] = v10;
    return swift_willThrow();
  }

  v4 = v0[1];
  result = sub_1AC458F9C(v1, *v0, v4);
  v0[2] = result;
  v6 = v4 - v2;
  if (v2)
  {
    v7 = v4 - v2;
  }

  else
  {
    v7 = 0;
  }

  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (result == v6)
  {
LABEL_29:
    v0[2] = v6;
LABEL_30:
    v10 = 13;
    goto LABEL_31;
  }

  while (1)
  {
    v8 = *(v2 + result);
    if (v8 == 92)
    {
      break;
    }

    if (v8 == 34)
    {
      v0[2] = result;
      result = sub_1AC458F9C(result, v2, v4);
      v0[2] = result;
      return result;
    }

    if (result < 0 || result >= v7)
    {
      goto LABEL_33;
    }

    v9 = 1;
LABEL_24:
    result += v9;
    if (v2)
    {
      goto LABEL_10;
    }

LABEL_12:
    if (!result)
    {
      v6 = 0;
      goto LABEL_29;
    }
  }

  if ((result & 0x8000000000000000) == 0 && result < v7)
  {
    if (!v2)
    {
      goto LABEL_34;
    }

    if (result + 1 == v6)
    {
      goto LABEL_29;
    }

    if (result + 1 >= v6)
    {
      goto LABEL_34;
    }

    v9 = 2;
    goto LABEL_24;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1AC4E6694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = BYTE6(a2);
  v14 = a1;
  v16 = WORD2(a2);
  v15 = a2;
  if (!BYTE6(a2))
  {
    goto LABEL_7;
  }

  v13 = 0;
  sub_1AC45BD44(a3, v17);
  sub_1AC457E18(&v14, &v14 + v4, &v13, v4);
  if (v3)
  {
    return sub_1AC457DC4(v17);
  }

  v8 = v5;
  v9 = v6;
  sub_1AC457DC4(v17);
  if ((v9 & 1) == 0 && v13 == v4 && (*&v10 = v8, v11 = v10, (~v10 & 0x7F800000) != 0))
  {
    v12 = 0;
  }

  else
  {
LABEL_7:
    v11 = 0;
    v12 = 1;
  }

  v17[0] = v12;
  return v11 | (v12 << 32);
}

uint64_t sub_1AC4E67A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *, uint64_t *, uint64_t))
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = BYTE6(a2);
  v13 = a1;
  v15 = WORD2(a2);
  v14 = a2;
  if (!BYTE6(a2))
  {
    return 0;
  }

  v12 = 0;
  sub_1AC45BD44(a3, v16);
  v7 = a4(&v13, &v13 + v5, &v12, v5);
  if (v4)
  {
    return sub_1AC457DC4(v16);
  }

  v10 = v7;
  v11 = v8;
  sub_1AC457DC4(v16);
  if (v11 & 1 | (v12 != v5))
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1AC4E68A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = sub_1AC51EB78();
  v11 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_1AC51EB98();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = sub_1AC4E6038(v11, v17, a4, a5, &v18);
  if (!v5)
  {
    return v18;
  }

  return result;
}

unint64_t sub_1AC4E6960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC51EB78();
  v9 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1AC51EB98();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = sub_1AC4E5F50(v9, v15, a4, &v16);
  if (!v4)
  {
    return v16 | (v17 << 32);
  }

  return result;
}

uint64_t sub_1AC4E6A24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1AC4E6A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4E6ACC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1AC51EEF8();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

uint64_t sub_1AC4E6B64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v23[0] = *v1;
  v23[1] = v2;
  v23[2] = *(v1 + 32);
  v24 = *(v1 + 48);
  sub_1AC47782C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v14;
  v5 = *(&v15 + 1);
  v4 = v15;
  v7 = *(&v16 + 1);
  v6 = v16;
  v8 = v17;
  if (!*(&v14 + 1))
  {
LABEL_5:
    sub_1AC4ED750(v3, 0, v4, v5, v6, v7, v8);
    v9 = 0;
    return v9 & 1;
  }

  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v9 = static Google_Protobuf_Option.== infix(_:_:)(v23);
  v10 = v20;
  v12 = v21;
  v11 = v22;

  sub_1AC4513F8(v10, *(&v10 + 1));
  sub_1AC48532C(v12, *(&v12 + 1), v11);
  return v9 & 1;
}

uint64_t sub_1AC4E6C90(uint64_t a1)
{
  memcpy(__dst, v1, 0x68uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*&__src[8])
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB559820, "Vr");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Method.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC486084(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E6D94(uint64_t a1)
{
  v2 = v1[1];
  v26[0] = *v1;
  v26[1] = v2;
  v26[2] = v1[2];
  sub_1AC47782C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v3 = 0x2000000000000000;
    v4 = -1;
LABEL_6:
    sub_1AC4CA7E4(v5, v6, v3, v4, v7, v8);
    v9 = 0;
    return v9 & 1;
  }

  v4 = v16;
  v3 = v15;
  v5 = v13;
  v6 = v14;
  v7 = v17;
  v8 = v18;
  if ((v15 & 0x3000000000000000) == 0x2000000000000000 && v16 == 255)
  {
    goto LABEL_6;
  }

  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v9 = static Google_Protobuf_Value.== infix(_:_:)(v26, &v20);
  v10 = v24;
  v11 = v25;
  sub_1AC4854E8(v20, v21, v22, v23);
  sub_1AC4513F8(v10, v11);
  return v9 & 1;
}

uint64_t sub_1AC4E6EB4(uint64_t a1)
{
  v2 = v1[1];
  v14[0] = *v1;
  v14[1] = v2;
  v14[2] = v1[2];
  sub_1AC47782C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v7;
  if (!*(&v7 + 1))
  {
LABEL_5:
    sub_1AC4EDA58(v3, 0);
    v4 = 0;
    return v4 & 1;
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v4 = static Google_Protobuf_Mixin.== infix(_:_:)(v14);
  v5 = v13;

  sub_1AC4513F8(v5, *(&v5 + 1));
  return v4 & 1;
}

uint64_t sub_1AC4E6FB0(uint64_t a1)
{
  memcpy(__dst, v1, 0x80uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1();
    v3 = __src;
  }

  else
  {
    sub_1AC4ED810(v6);
    memcpy(__src, v6, sizeof(__src));
    v3 = v6;
  }

  memcpy(v9, v3, sizeof(v9));
  if (sub_1AC4ED828(v9) == 1)
  {
    memcpy(v9, __src, sizeof(v9));
    sub_1AC4575D8(v9, &qword_1EB5597B0, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v9, __src, sizeof(v9));
    v4 = static Google_Protobuf_Field.== infix(_:_:)(__dst, v9);
    memcpy(v6, v9, sizeof(v6));
    sub_1AC4853C8(v6);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E70E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1AC47782C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_5;
  }

  v6 = v10;
  v5 = v9;
  if (v10 >> 60 == 15)
  {
LABEL_5:
    sub_1AC45AC74(v5, v6);
    v7 = 0;
    return v7 & 1;
  }

  sub_1AC4578F4(a2, a3);
  v7 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC45AC74(v9, v10);
  sub_1AC4513F8(a2, a3);
  return v7 & 1;
}

uint64_t sub_1AC4E71D0(uint64_t a1)
{
  memcpy(__dst, v1, 0x78uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*&__src[8])
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB5597B8, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Type.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC4ED840(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E72D8(uint64_t a1)
{
  memcpy(__dst, v1, 0x70uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*(&__src[0] + 1))
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB5597A8, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Enum.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC4ED7BC(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E73D8(uint64_t a1)
{
  memcpy(__dst, v1, 0x78uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*&__src[8])
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB559828, "Vr");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Api.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC4EDAB4(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E74E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AC47782C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = v15;
  v8 = v14;
  if (!v16)
  {
LABEL_7:
    v10 = v8;
    v11 = v7;
    v12 = 0;
LABEL_8:
    sub_1AC48532C(v10, v11, v12);
    v9 = 0;
    return v9 & 1;
  }

  if (v16 != a4 && (sub_1AC472EE4(v16) & 1) == 0)
  {
    v10 = v14;
    v11 = v15;
    v12 = v16;
    goto LABEL_8;
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC4578F4(v14, v15);
  v9 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC4513F8(v14, v15);
  sub_1AC4513F8(a2, a3);
  sub_1AC48532C(v14, v15, v16);
  return v9 & 1;
}

uint64_t sub_1AC4E7610(uint64_t a1)
{
  memcpy(__dst, v1, 0x99uLL);
  sub_1AC47782C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1();
    v3 = __src;
  }

  else
  {
    sub_1AC4ED9A0(v7);
    memcpy(__src, v7, 0x99uLL);
    v3 = v7;
  }

  memcpy(v10, v3, 0x99uLL);
  if (sub_1AC470BC0(v10) == 1)
  {
    memcpy(v10, __src, 0x99uLL);
    sub_1AC4575D8(v10, &qword_1EB5597E8, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v10, __src, 0x99uLL);
    static Google_Protobuf_EnumValueDescriptorProto.== infix(_:_:)(__dst, v10);
    v4 = v5;
    memcpy(v7, v10, 0x99uLL);
    sub_1AC48596C(v7);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E7740(uint64_t a1)
{
  memcpy(__dst, v1, 0x67uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*__src)
  {
LABEL_5:
    memcpy(v9, __src, 0x67uLL);
    sub_1AC4575D8(v9, &qword_1EB5597E0, "^r");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, 0x67uLL);
  static Google_Protobuf_ServiceDescriptorProto.== infix(_:_:)(__dst, v9);
  v4 = v3;
  memcpy(v6, v9, 0x67uLL);
  sub_1AC485E98(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E7844(uint64_t a1)
{
  memcpy(__dst, v1, 0x88uLL);
  sub_1AC47782C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1();
    v3 = __src;
  }

  else
  {
    sub_1AC4ED97C(v7);
    memcpy(__src, v7, sizeof(__src));
    v3 = v7;
  }

  memcpy(v10, v3, sizeof(v10));
  if (sub_1AC470BC0(v10) == 1)
  {
    memcpy(v10, __src, sizeof(v10));
    sub_1AC4575D8(v10, &qword_1EB5597D8, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v10, __src, sizeof(v10));
    static Google_Protobuf_MethodDescriptorProto.== infix(_:_:)(__dst, v10);
    v4 = v5;
    memcpy(v7, v10, sizeof(v7));
    sub_1AC4857B0(v7);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E7974(uint64_t a1)
{
  memcpy(__dst, v1, 0x47uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 71);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x47uLL);
    sub_1AC4575D8(v8, &qword_1EB5589B0, &qword_1AC520E18);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x47uLL);
  v3 = static Google_Protobuf_ExtensionRangeOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x47uLL);
  sub_1AC4AEF10(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E7A70(uint64_t a1)
{
  v2 = v1[1];
  v15[0] = *v1;
  v15[1] = v2;
  v16[0] = v1[2];
  *(v16 + 10) = *(v1 + 42);
  sub_1AC47782C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0u;
    v9 = 0u;
    *&v10[16] = 0;
    *v10 = 1uLL;
    *&v10[24] = 0;
    goto LABEL_5;
  }

  if (*v10 == 1)
  {
LABEL_5:
    v12 = v8;
    v13 = v9;
    v14[0] = *v10;
    *(v14 + 10) = *&v10[10];
    sub_1AC4575D8(&v12, &qword_1EB559808, "^r");
    v4 = 0;
    return v4 & 1;
  }

  v12 = v8;
  v13 = v9;
  v14[0] = *v10;
  *(v14 + 10) = *&v10[10];
  static Google_Protobuf_ExtensionRangeOptions.Declaration.== infix(_:_:)(v15, &v12);
  v4 = v3;
  v6[0] = v12;
  v6[1] = v13;
  v7[0] = v14[0];
  *(v7 + 10) = *(v14 + 10);
  sub_1AC485A78(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E7B9C(uint64_t a1)
{
  memcpy(__dst, v1, 0x5EuLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 1;
    memset(&__src[2], 0, 62);
    goto LABEL_5;
  }

  if (*(&__src[1] + 1) == 1)
  {
LABEL_5:
    memcpy(v9, __src, 0x5EuLL);
    sub_1AC4575D8(v9, &qword_1EB5597F8, "^r");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, 0x5EuLL);
  static Google_Protobuf_OneofDescriptorProto.== infix(_:_:)(__dst, v9);
  v4 = v3;
  memcpy(v6, v9, 0x5EuLL);
  sub_1AC485BD8(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E7CA8(uint64_t a1)
{
  memcpy(__dst, v1, 0x91uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1();
    v3 = __src;
  }

  else
  {
    sub_1AC4ED9E4(v6);
    memcpy(__src, v6, 0x91uLL);
    v3 = v6;
  }

  memcpy(v9, v3, 0x91uLL);
  if (sub_1AC470BC0(v9) == 1)
  {
    memcpy(v9, __src, 0x91uLL);
    sub_1AC4575D8(v9, &qword_1EB559800, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v9, __src, 0x91uLL);
    v4 = static Google_Protobuf_FieldDescriptorProto.== infix(_:_:)(__dst, v9);
    memcpy(v6, v9, 0x91uLL);
    sub_1AC485DE8(v6);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E7DD8(uint64_t a1)
{
  memcpy(__dst, v1, 0x78uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*__src)
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB5597D0, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_UninterpretedOption.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC485B28(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E7EE0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v2;
  v20 = *(v1 + 32);
  sub_1AC47782C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v8;
  v4 = v9;
  v5 = v10;
  if (v11 == 1)
  {
LABEL_5:
    sub_1AC4ED938(v3, v4, v5, 1);
    v6 = 0;
    return v6 & 1;
  }

  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v6 = static Google_Protobuf_UninterpretedOption.NamePart.== infix(_:_:)(v19, &v14);
  sub_1AC4513F8(v14, v15);

  return v6 & 1;
}

uint64_t sub_1AC4E7FC8(uint64_t a1)
{
  memcpy(__dst, v1, 0xB1uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1();
    v3 = __src;
  }

  else
  {
    sub_1AC4EDA0C(v6);
    memcpy(__src, v6, 0xB1uLL);
    v3 = v6;
  }

  memcpy(v9, v3, 0xB1uLL);
  if (sub_1AC470BE4(v9) == 1)
  {
    memcpy(v9, __src, 0xB1uLL);
    sub_1AC4575D8(v9, &qword_1EB559818, "Vr");
    v4 = 0;
  }

  else
  {
    memcpy(v9, __src, 0xB1uLL);
    v4 = static Google_Protobuf_FileDescriptorProto.== infix(_:_:)(__dst, v9);
    memcpy(v6, v9, 0xB1uLL);
    sub_1AC485FF8(v6);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E80F8(uint64_t a1)
{
  memcpy(__dst, v1, 0x7EuLL);
  sub_1AC47782C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1();
    v3 = __src;
  }

  else
  {
    sub_1AC4ED9C8(v7);
    memcpy(__src, v7, 0x7EuLL);
    v3 = v7;
  }

  memcpy(v10, v3, 0x7EuLL);
  if (sub_1AC470BE4(v10) == 1)
  {
    memcpy(v10, __src, 0x7EuLL);
    sub_1AC4575D8(v10, &qword_1EB5597F0, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v10, __src, 0x7EuLL);
    static Google_Protobuf_EnumDescriptorProto.== infix(_:_:)(__dst, v10);
    v4 = v5;
    memcpy(v7, v10, 0x7EuLL);
    sub_1AC485F48(v7);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v22 = a5;
  sub_1AC47782C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v5 = v13;
  v6 = v14;
  if (!v12)
  {
LABEL_5:
    sub_1AC4AEE04(0, v5, v6);
    v8 = 0;
    return v8 & 1;
  }

  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v15;
  static Google_Protobuf_FeatureSetDefaults.== infix(_:_:)(v21, &v17);
  v8 = v7;
  v9 = v18;
  v10 = v19;

  sub_1AC4513F8(v9, v10);
  return v8 & 1;
}

uint64_t sub_1AC4E8314(uint64_t a1)
{
  memcpy(__dst, v1, 0x56uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 40);
    *&__src[40] = 1;
    memset(&__src[48], 0, 38);
    goto LABEL_5;
  }

  if (*&__src[40] == 1)
  {
LABEL_5:
    memcpy(v8, __src, 0x56uLL);
    sub_1AC4575D8(v8, &qword_1EB5597C8, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x56uLL);
  v3 = static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x56uLL);
  sub_1AC4856C0(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1AC47782C(a1, v30);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v8, v9, v10, v11, v12, v13, v14, v15, v28);
  if (!swift_dynamicCast() || !v29)
  {
    v26 = 0;
LABEL_6:
    sub_1AC4EDA14(v26);
    v21 = 0;
    return v21 & 1;
  }

  if ((a6(a2, v29) & 1) == 0)
  {
    v26 = v29;
    goto LABEL_6;
  }

  v16 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v16, v17);
  v18 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v18, v19);
  OUTLINED_FUNCTION_7_15();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v22, v23);
  v24 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v24, v25);
  sub_1AC4EDA14(v29);
  return v21 & 1;
}

uint64_t sub_1AC4E8530(uint64_t a1)
{
  v2 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v2;
  v13[0] = *(v1 + 32);
  *(v13 + 14) = *(v1 + 46);
  sub_1AC47782C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v6 = 0;
    memset(&v9[2], 0, 54);
LABEL_6:
    sub_1AC4ED8DC(0, v6, v5);
    v4 = 0;
    return v4 & 1;
  }

  if (!*&v9[2])
  {
    v6 = *(&v9[2] + 1);
    v5 = *&v9[3];
    goto LABEL_6;
  }

  *&v11[8] = *(&v9[2] + 8);
  *&v11[24] = *(&v9[3] + 8);
  *v11 = *&v9[2];
  *&v11[40] = *(&v9[4] + 1);
  *&v11[52] = WORD2(v9[5]);
  *&v11[48] = v9[5];
  static Google_Protobuf_GeneratedCodeInfo.Annotation.== infix(_:_:)(v12);
  v4 = v3;
  v8[0] = *v11;
  v8[1] = *&v11[16];
  v9[0] = *&v11[32];
  *(v9 + 14) = *&v11[46];
  sub_1AC485610(v8);
  return v4 & 1;
}

uint64_t sub_1AC4E8670(uint64_t a1)
{
  memcpy(__dst, v1, 0x71uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 113);
    goto LABEL_5;
  }

  if (!__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x71uLL);
    sub_1AC4575D8(v8, &qword_1EB5589C0, &qword_1AC520E30);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x71uLL);
  v3 = static Google_Protobuf_EnumValueOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x71uLL);
  sub_1AC4B3334(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8778(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AC47782C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = v17;
  v8 = v16;
  if (!v18)
  {
LABEL_7:
    v12 = v8;
    v13 = v7;
    v14 = 0;
LABEL_8:
    sub_1AC48532C(v12, v13, v14);
    v11 = 0;
    return v11 & 1;
  }

  if (v18 != a4)
  {

    sub_1AC4A718C(a4, v18);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      v12 = v16;
      v13 = v17;
      v14 = v18;
      goto LABEL_8;
    }
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC4578F4(v16, v17);
  v11 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC4513F8(v16, v17);
  sub_1AC4513F8(a2, a3);
  sub_1AC48532C(v16, v17, v18);
  return v11 & 1;
}

uint64_t sub_1AC4E88D8(uint64_t a1)
{
  memcpy(__dst, v1, 0x67uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 32);
    *&__src[32] = 1;
    memset(&__src[40], 0, 63);
    goto LABEL_5;
  }

  if (*&__src[32] == 1)
  {
LABEL_5:
    memcpy(v9, __src, 0x67uLL);
    sub_1AC4575D8(v9, &qword_1EB559810, "Vr");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, 0x67uLL);
  static Google_Protobuf_DescriptorProto.ExtensionRange.== infix(_:_:)(__dst, v9);
  v4 = v3;
  memcpy(v6, v9, 0x67uLL);
  sub_1AC485C88(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E89EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, __int128 *), void (*a8)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v34[0] = a2;
  v34[1] = a3;
  v34[2] = a4;
  v35 = a5;
  v36 = BYTE4(a5);
  sub_1AC47782C(a1, v28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v10, v11, v12, v13, v14, v15, v16, v17, v24);
  if (!swift_dynamicCast())
  {
    v21 = 0;
    v20 = 0;
    v18 = 0;
    v19 = 0xF000000000000000;
    goto LABEL_5;
  }

  v19 = *(&v24 + 1);
  v18 = v24;
  v20 = v25;
  v21 = v26 | (v27 << 32);
  if (*(&v24 + 1) >> 60 == 15)
  {
LABEL_5:
    a8(v18, v19, v20, v21);
    v22 = 0;
    return v22 & 1;
  }

  v29 = v24;
  v30 = v25;
  v31 = BYTE4(v25) & 1;
  v32 = v26;
  v33 = BYTE4(v21) & 1;
  v22 = a7(v34, &v29);
  sub_1AC4513F8(v29, *(&v29 + 1));
  return v22 & 1;
}

uint64_t sub_1AC4E8B00(uint64_t a1)
{
  memcpy(__dst, v1, 0x48uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 72);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v9, __src, sizeof(v9));
    sub_1AC4575D8(v9, &qword_1EB5597C0, "^r");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, sizeof(v9));
  static Google_Protobuf_SourceCodeInfo.Location.== infix(_:_:)(__dst);
  v4 = v3;
  memcpy(v6, v9, sizeof(v6));
  sub_1AC485D38(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E8BFC(uint64_t a1)
{
  v2 = v1[1];
  v14[0] = *v1;
  v14[1] = v2;
  v15[0] = v1[2];
  *(v15 + 15) = *(v1 + 47);
  sub_1AC47782C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0u;
    memset(v9, 0, 31);
    v7 = 0u;
    goto LABEL_5;
  }

  if (!v7)
  {
LABEL_5:
    v11 = v7;
    v12 = v8;
    v13[0] = v9[0];
    *(v13 + 15) = *(v9 + 15);
    sub_1AC4575D8(&v11, &qword_1EB5580B0, &qword_1AC5203B8);
    v3 = 0;
    return v3 & 1;
  }

  v11 = v7;
  v12 = v8;
  v13[0] = v9[0];
  *(v13 + 15) = *(v9 + 15);
  v3 = static Google_Protobuf_ServiceOptions.== infix(_:_:)(v14, &v11);
  v5[0] = v11;
  v5[1] = v12;
  v6[0] = v13[0];
  *(v6 + 15) = *(v13 + 15);
  sub_1AC4B3364(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8D1C(uint64_t a1)
{
  memcpy(__dst, v1, 0x46uLL);
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 70);
    goto LABEL_5;
  }

  if (!*__src)
  {
LABEL_5:
    memcpy(v20, __src, 0x46uLL);
    sub_1AC4575D8(v20, &qword_1EB5589A8, &qword_1AC520E10);
    v9 = 0;
    return v9 & 1;
  }

  memcpy(v20, __src, 0x46uLL);
  v9 = static Google_Protobuf_MessageOptions.== infix(_:_:)(__dst, v20, v3, v4, v5, v6, v7, v8, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], SWORD2(v12[8]), *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v14, v15[0], v15[1], v16, v17, v18, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], __dst[0], __dst[1]);
  memcpy(v12, v20, 0x46uLL);
  sub_1AC4AEEA8(v12);
  return v9 & 1;
}

uint64_t sub_1AC4E8E18(uint64_t a1)
{
  memcpy(__dst, v1, 0x46uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 70);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x46uLL);
    sub_1AC4575D8(v8, &qword_1EB5580B8, &qword_1AC5203C0);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x46uLL);
  v3 = static Google_Protobuf_MethodOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x46uLL);
  sub_1AC4B3430(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8F14(uint64_t a1)
{
  v2 = v1[1];
  v22 = *v1;
  v23 = v2;
  *v24 = v1[2];
  *(&v24[1] + 6) = *(v1 + 46);
  sub_1AC47782C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v15 = 0u;
    memset(v16, 0, 30);
    v14 = 0u;
    goto LABEL_5;
  }

  if (!v14)
  {
LABEL_5:
    v19 = v14;
    v20 = v15;
    v21[0] = v16[0];
    *(v21 + 14) = *(v16 + 14);
    sub_1AC4575D8(&v19, &qword_1EB5580C0, &unk_1AC520E20);
    v9 = 0;
    return v9 & 1;
  }

  *(&v21[0] + 1) = *(&v16[0] + 1);
  *(v21 + 14) = *(v16 + 14);
  v9 = static Google_Protobuf_OneofOptions.== infix(_:_:)(&v22, &v19, v3, v4, v5, v6, v7, v8, v11, *(&v11 + 1), v12, *(&v12 + 1), *&v13[0], *(&v13[0] + 1), *&v13[1], *(&v13[1] + 1), v14, SDWORD2(v14), SWORD6(v14), v15, *(&v15 + 1), *&v16[0], *(&v16[0] + 1), *&v16[1], *(&v16[1] + 1), v17, v18[0], v18[1], v18[2], v18[3], v18[4], v14, SWORD2(v14), *(&v14 + 1), v15, *(&v15 + 1), *&v16[0], *(&v21[0] + 1), *(v16 + 14) >> 16, *(&v21[1] + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24[0], v24[1]);
  v11 = v19;
  v12 = v20;
  v13[0] = v21[0];
  *(v13 + 14) = *(v21 + 14);
  sub_1AC4B3264(&v11);
  return v9 & 1;
}

uint64_t sub_1AC4E9034(uint64_t a1)
{
  v2 = v1[1];
  v21 = *v1;
  v22[0] = v2;
  *(v22 + 9) = *(v1 + 25);
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    goto LABEL_5;
  }

  v3 = v12;
  v5 = *(&v10 + 1);
  v4 = v10;
  v6 = v11;
  if (v13 == 1)
  {
LABEL_5:
    sub_1AC4B39AC(v4, v5, v6, v3, 1);
    v8 = 0;
    return v8 & 1;
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)(&v21, &v16);
  v8 = v7;
  sub_1AC4513F8(v16, *(&v16 + 1));

  return v8 & 1;
}

uint64_t sub_1AC4E9134(uint64_t a1)
{
  v2 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v2;
  v19 = *(v1 + 32);
  sub_1AC47782C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    goto LABEL_5;
  }

  v3 = v11;
  v5 = *(&v9 + 1);
  v4 = v9;
  v6 = v10;
  if (v12 == 1)
  {
LABEL_5:
    sub_1AC4B39AC(v4, v5, v6, v3, 1);
    v7 = 0;
    return v7 & 1;
  }

  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v7 = static Google_Protobuf_FieldOptions.EditionDefault.== infix(_:_:)(v18, &v14);
  sub_1AC4513F8(v14, *(&v14 + 1));

  return v7 & 1;
}

uint64_t sub_1AC4E921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1AC47782C(a1, v36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  v17 = OUTLINED_FUNCTION_17_11(v9, v10, v11, v12, v13, v14, v15, v16, v31);
  if (!OUTLINED_FUNCTION_23_9(v17, v18, v19, v20, v21, v22, v23, v24))
  {
    v25 = 0;
    goto LABEL_10;
  }

  v25 = v32;
  if (!v33)
  {
LABEL_10:
    v28 = v25;
    v29 = 0;
LABEL_11:
    sub_1AC4ED894(v28, v29);
    v27 = 0;
    return v27 & 1;
  }

  v26 = v32 == a2 && v33 == a3;
  if (!v26 && (sub_1AC51F3D8() & 1) == 0)
  {
    v28 = v32;
    v29 = v33;
    goto LABEL_11;
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(v34, v35);
  v27 = MEMORY[0x1AC5B4070](a4, a5);
  sub_1AC4513F8(v34, v35);
  sub_1AC4513F8(a4, a5);
  sub_1AC4ED894(v32, v33);
  return v27 & 1;
}

uint64_t sub_1AC4E9364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, __int128 *))
{
  v33[0] = a2;
  v33[1] = a3;
  v33[2] = a4;
  v33[3] = a5;
  sub_1AC47782C(a1, v31);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  v16 = OUTLINED_FUNCTION_17_11(v8, v9, v10, v11, v12, v13, v14, v15, v29);
  if (!OUTLINED_FUNCTION_23_9(v16, v17, v18, v19, v20, v21, v22, v23))
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    goto LABEL_5;
  }

  v25 = *(&v29 + 1);
  v24 = v29;
  v26 = *(&v30 + 1);
  if (!v30)
  {
LABEL_5:
    sub_1AC4B3218(v24, v25, 0, v26);
    v27 = 0;
    return v27 & 1;
  }

  v32[0] = v29;
  v32[1] = v30;
  v27 = a7(v33, v32);
  sub_1AC4513F8(*&v32[0], *(&v32[0] + 1));

  return v27 & 1;
}

uint64_t sub_1AC4E9434(uint64_t a1)
{
  memcpy(__dst, v1, 0x46uLL);
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 70);
    goto LABEL_5;
  }

  if (!*__src)
  {
LABEL_5:
    memcpy(v20, __src, 0x46uLL);
    sub_1AC4575D8(v20, &qword_1EB5589B8, "R6");
    v9 = 0;
    return v9 & 1;
  }

  memcpy(v20, __src, 0x46uLL);
  v9 = static Google_Protobuf_EnumOptions.== infix(_:_:)(__dst, v20, v3, v4, v5, v6, v7, v8, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], SWORD2(v12[8]), *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v14, v15[0], v15[1], v16, v17, v18, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], __dst[0], __dst[1]);
  memcpy(v12, v20, 0x46uLL);
  sub_1AC4B32CC(v12);
  return v9 & 1;
}

uint64_t sub_1AC4E9530(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v9 = 0;
    v7 = 0xF000000000000000;
LABEL_6:
    sub_1AC470B50(v9, v8, v7);
    v10 = 0;
    return v10 & 1;
  }

  v8 = v13;
  v7 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC470B6C(v12, v13, v14);
  v10 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC470B50(v12, v13, v14);
  sub_1AC4513F8(a2, a3);
  sub_1AC470B50(v12, v13, v14);
  return v10 & 1;
}

uint64_t sub_1AC4E9664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  sub_1AC47782C(a1, v35);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v10, v11, v12, v13, v14, v15, v16, v17, v31);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    v20 = 0;
    v18 = 0xF000000000000000;
LABEL_6:
    (a7)(v20, v19, v18);
    v25 = 0;
    return v25 & 1;
  }

  v19 = v33;
  v18 = v34;
  v20 = v32;
  if (v34 >> 60 == 15 || v32 != a2)
  {
    goto LABEL_6;
  }

  v21 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v21, v22);
  v23 = OUTLINED_FUNCTION_35_1();
  a6(v23);
  v24 = OUTLINED_FUNCTION_121();
  v25 = MEMORY[0x1AC5B4070](v24);
  v26 = OUTLINED_FUNCTION_35_1();
  a7(v26);
  v27 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v27, v28);
  v29 = OUTLINED_FUNCTION_35_1();
  a7(v29);
  return v25 & 1;
}

uint64_t sub_1AC4E9780(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  sub_1AC47782C(a1, v29);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v12, v13, v14, v15, v16, v17, v18, v19, v26);
  if (swift_dynamicCast() && v28 >> 60 != 15 && v27 == a2)
  {
    sub_1AC4578F4(a3, a4);
    v20 = OUTLINED_FUNCTION_14_11();
    a6(v20);
    v21 = MEMORY[0x1AC5B4070](a3, a4);
    v22 = OUTLINED_FUNCTION_14_11();
    a7(v22);
    sub_1AC4513F8(a3, a4);
    v23 = OUTLINED_FUNCTION_14_11();
    a7(v23);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_14_11();
    a7(v24);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1AC4E98A4(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v9 = 0;
    v7 = 0xF000000000000000;
LABEL_6:
    sub_1AC470B50(v9, v8, v7);
    v10 = 0;
    return v10 & 1;
  }

  v8 = v13;
  v7 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC470B6C(v12, v13, v14);
  v10 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC470B50(v12, v13, v14);
  sub_1AC4513F8(a2, a3);
  sub_1AC470B50(v12, v13, v14);
  return v10 & 1;
}

uint64_t sub_1AC4E99D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v15 = a5;
  v16 = WORD2(a5);
  sub_1AC47782C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v5 = 0;
    v10 = 0uLL;
    memset(v11, 0, 14);
LABEL_6:
    sub_1AC485714(v5, v7, 0);
    v6 = 0;
    return v6 & 1;
  }

  v5 = v10;
  if (!v11[0])
  {
    v7 = *(&v10 + 1);
    goto LABEL_6;
  }

  *v13 = v10;
  *&v13[16] = v11[0];
  *&v13[28] = WORD2(v11[1]);
  *&v13[24] = v11[1];
  v6 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v14, v13);
  v9[0] = *v13;
  *(v9 + 14) = *&v13[14];
  sub_1AC4AEF78(v9);
  return v6 & 1;
}

uint64_t sub_1AC4E9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1AC47782C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0xF000000000000000;
LABEL_6:
    sub_1AC4ED6C8(v9, v10, v12, v11);
    v13 = 0;
    return v13 & 1;
  }

  v10 = v16;
  v9 = v15;
  v12 = v17;
  v11 = v18;
  if (v16 >> 60 == 15 || (MEMORY[0x1AC5B4070](a2, a3) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(v17, v18);
  v13 = MEMORY[0x1AC5B4070](a4, a5);
  sub_1AC4513F8(v17, v18);
  sub_1AC4513F8(a4, a5);
  sub_1AC4ED6C8(v15, v16, v17, v18);
  return v13 & 1;
}

uint64_t sub_1AC4E9C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(void))
{
  sub_1AC47782C(a1, v29);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!OUTLINED_FUNCTION_23_9(&v25, v15, v14, v16, v17, v18, v19, v20))
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0xF000000000000000;
LABEL_7:
    OUTLINED_FUNCTION_15_10();
    a7();
    v23 = 0;
    return v23 & 1;
  }

  v21 = v27;
  v22 = v28;
  if (v28 >> 60 == 15 || v25 != a2 || v26 != a3)
  {
    goto LABEL_7;
  }

  sub_1AC4578F4(a4, a5);
  OUTLINED_FUNCTION_15_10();
  a8();
  v23 = MEMORY[0x1AC5B4070](a4, a5, v21, v22);
  OUTLINED_FUNCTION_15_10();
  a7();
  sub_1AC4513F8(a4, a5);
  OUTLINED_FUNCTION_15_10();
  a7();
  return v23 & 1;
}

uint64_t sub_1AC4E9D74(uint64_t a1)
{
  v2 = v1[1];
  v16[0] = *v1;
  v16[1] = v2;
  v16[2] = v1[2];
  sub_1AC47782C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v7;
  if (!*(&v7 + 1))
  {
LABEL_5:
    sub_1AC4EDA58(v3, 0);
    v4 = 0;
    return v4 & 1;
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v4 = static Google_Protobuf_EnumValue.== infix(_:_:)(v16);
  v5 = v15;

  sub_1AC4513F8(v5, *(&v5 + 1));
  return v4 & 1;
}

uint64_t sub_1AC4E9E74(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    if ((v12 & 1) == (a2 & 1))
    {
      sub_1AC4578F4(a3, a4);
      sub_1AC4ED734(v12, v13, v14);
      v10 = MEMORY[0x1AC5B4070](a3, a4);
      sub_1AC4ED718(v12, v13, v14);
      sub_1AC4513F8(a3, a4);
      sub_1AC4ED718(v12, v13, v14);
      return v10 & 1;
    }

    v7 = v12;
    v8 = v13;
    v9 = v14;
  }

  else
  {
    v7 = 2;
    v8 = 0;
    v9 = 0;
  }

  sub_1AC4ED718(v7, v8, v9);
  v10 = 0;
  return v10 & 1;
}

uint64_t _MessageImplementationBase.isEqualTo(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AC51F228();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8 - 8];
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AC47782C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, a2);
    (*(v10 + 32))(v12, v9, a2);
    v13 = sub_1AC51EDE8();
    (*(v10 + 8))(v12, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, a2);
    (*(v6 + 8))(v9, v5);
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1AC4EA1CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 != a3 && (sub_1AC472EE4(a3) & 1) == 0)
  {
    return 0;
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(a1, a2);
  v10 = MEMORY[0x1AC5B4070](a4, a5, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a4, a5);
  return v10 & 1;
}

uint64_t sub_1AC4EA274(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Api.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EA2C8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Method.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EA314(_OWORD *a1)
{
  v2 = a1[1];
  v5[3] = *a1;
  v5[4] = v2;
  v5[5] = a1[2];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  return static Google_Protobuf_Mixin.== infix(_:_:)(v5) & 1;
}

uint64_t sub_1AC4EA360(void *__src)
{
  memcpy(__dst, __src, 0xB1uLL);
  memcpy(v3, v1, 0xB1uLL);
  return static Google_Protobuf_FileDescriptorProto.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA3B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 != a3)
  {

    sub_1AC4A718C(a6, a3);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(a1, a2);
  v14 = MEMORY[0x1AC5B4070](a4, a5, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a4, a5);
  return v14 & 1;
}

uint64_t sub_1AC4EA490(void *__src)
{
  memcpy(__dst, __src, 0x67uLL);
  memcpy(v4, v1, 0x67uLL);
  static Google_Protobuf_DescriptorProto.ExtensionRange.== infix(_:_:)(v4, __dst);
  return v2 & 1;
}

uint64_t sub_1AC4EA4DC(void *__src)
{
  memcpy(__dst, __src, 0x47uLL);
  memcpy(v3, v1, 0x47uLL);
  return static Google_Protobuf_ExtensionRangeOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA528(_OWORD *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v9[0] = a1[2];
  *(v9 + 10) = *(a1 + 42);
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  static Google_Protobuf_ExtensionRangeOptions.Declaration.== infix(_:_:)(v6, v8);
  return v4 & 1;
}

uint64_t sub_1AC4EA584(void *__src)
{
  memcpy(__dst, __src, 0x91uLL);
  memcpy(v3, v1, 0x91uLL);
  return static Google_Protobuf_FieldDescriptorProto.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA5D8(void *__src)
{
  memcpy(__dst, __src, 0x5EuLL);
  memcpy(v4, v1, 0x5EuLL);
  static Google_Protobuf_OneofDescriptorProto.== infix(_:_:)(v4, __dst);
  return v2 & 1;
}

uint64_t sub_1AC4EA624(void *__src)
{
  memcpy(__dst, __src, 0x7EuLL);
  memcpy(v4, v1, 0x7EuLL);
  static Google_Protobuf_EnumDescriptorProto.== infix(_:_:)(v4, __dst);
  return v2 & 1;
}

uint64_t sub_1AC4EA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, void *))
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = a4;
  v15 = BYTE4(a4);
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v12 = BYTE4(a8);
  v11 = a8;
  return a9(v10, v13) & 1;
}

uint64_t sub_1AC4EA6D4(void *__src)
{
  memcpy(__dst, __src, 0x99uLL);
  memcpy(v4, v1, 0x99uLL);
  static Google_Protobuf_EnumValueDescriptorProto.== infix(_:_:)(v4, __dst);
  return v2 & 1;
}

uint64_t sub_1AC4EA728(void *__src)
{
  memcpy(__dst, __src, 0x67uLL);
  memcpy(v4, v1, 0x67uLL);
  static Google_Protobuf_ServiceDescriptorProto.== infix(_:_:)(v4, __dst);
  return v2 & 1;
}

uint64_t sub_1AC4EA774(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_MethodDescriptorProto.== infix(_:_:)(v4, __dst);
  return v2 & 1;
}

uint64_t sub_1AC4EA814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  return a9(v10, v11) & 1;
}

uint64_t sub_1AC4EA858(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6 = *(v1 + 32);
  return static Google_Protobuf_FieldOptions.EditionDefault.== infix(_:_:)(v5, v7) & 1;
}

uint64_t sub_1AC4EA8A4(__int128 *a1)
{
  v2 = a1[1];
  v8 = *a1;
  v9[0] = v2;
  *(v9 + 9) = *(a1 + 25);
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)(&v6, &v8);
  return v4 & 1;
}

uint64_t sub_1AC4EA998(void *__src)
{
  memcpy(__dst, __src, 0x71uLL);
  memcpy(v3, v1, 0x71uLL);
  return static Google_Protobuf_EnumValueOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA9EC(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  *(v8 + 15) = *(a1 + 47);
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v6[0] = v1[2];
  *(v6 + 15) = *(v1 + 47);
  return static Google_Protobuf_ServiceOptions.== infix(_:_:)(v5, v7) & 1;
}

uint64_t sub_1AC4EAA48(void *__src)
{
  memcpy(__dst, __src, 0x46uLL);
  memcpy(v3, v1, 0x46uLL);
  return static Google_Protobuf_MethodOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EAA94(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_UninterpretedOption.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EAAE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6 = *(v1 + 32);
  return static Google_Protobuf_UninterpretedOption.NamePart.== infix(_:_:)(v5, v7) & 1;
}

uint64_t sub_1AC4EAB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v14 = WORD2(a4);
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v11 = WORD2(a8);
  v10 = a8;
  return static Google_Protobuf_FeatureSet.== infix(_:_:)(v9, v12) & 1;
}

uint64_t sub_1AC4EAB88(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v11 = a8;
  static Google_Protobuf_FeatureSetDefaults.== infix(_:_:)(v10, v12);
  return v8 & 1;
}

uint64_t sub_1AC4EABCC(void *__src)
{
  memcpy(__dst, __src, 0x56uLL);
  memcpy(v3, v1, 0x56uLL);
  return static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EAC18(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_SourceCodeInfo.Location.== infix(_:_:)(v4);
  return v2 & 1;
}

uint64_t sub_1AC4EAC64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[2] = *a1;
  v7[3] = v2;
  v8[0] = *(a1 + 32);
  *(v8 + 14) = *(a1 + 46);
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = *(v1 + 32);
  *(v7 + 14) = *(v1 + 46);
  static Google_Protobuf_GeneratedCodeInfo.Annotation.== infix(_:_:)(v6);
  return v4 & 1;
}

uint64_t sub_1AC4EACC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1AC4578F4(a3, a4);
  sub_1AC4578F4(a1, a2);
  v8 = MEMORY[0x1AC5B4070](a3, a4, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a3, a4);
  return v8 & 1;
}

uint64_t sub_1AC4EAD48(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if ((a1 ^ a4))
  {
    return 0;
  }

  sub_1AC4578F4(a5, a6);
  sub_1AC4578F4(a2, a3);
  v11 = MEMORY[0x1AC5B4070](a5, a6, a2, a3);
  sub_1AC4513F8(a2, a3);
  sub_1AC4513F8(a5, a6);
  return v11 & 1;
}

uint64_t sub_1AC4EADE0(_OWORD *a1)
{
  v2 = a1[1];
  v5[3] = *a1;
  v5[4] = v2;
  v5[5] = a1[2];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  return static Google_Protobuf_EnumValue.== infix(_:_:)(v5) & 1;
}

uint64_t sub_1AC4EAE2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a5 != a1 || a6 != a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_8();
  sub_1AC4578F4(v8, v9);
  v10 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v10, v11);
  OUTLINED_FUNCTION_7_15();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v14, v15);
  v16 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v16, v17);
  return v13 & 1;
}

uint64_t sub_1AC4EAEA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((MEMORY[0x1AC5B4070](a5, a6, a1, a2) & 1) == 0)
  {
    return 0;
  }

  sub_1AC4578F4(a7, a8);
  sub_1AC4578F4(a3, a4);
  v12 = MEMORY[0x1AC5B4070](a7, a8, a3, a4);
  sub_1AC4513F8(a3, a4);
  sub_1AC4513F8(a7, a8);
  return v12 & 1;
}

uint64_t sub_1AC4EAF48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, float a5, float a6)
{
  if (a6 != a5)
  {
    return 0;
  }

  sub_1AC4578F4(a3, a4);
  sub_1AC4578F4(a1, a2);
  v10 = MEMORY[0x1AC5B4070](a3, a4, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a3, a4);
  return v10 & 1;
}

uint64_t sub_1AC4EAFE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  if (a6 != a5)
  {
    return 0;
  }

  sub_1AC4578F4(a3, a4);
  sub_1AC4578F4(a1, a2);
  v10 = MEMORY[0x1AC5B4070](a3, a4, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a3, a4);
  return v10 & 1;
}

uint64_t sub_1AC4EB078(int a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 != a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_11();
  sub_1AC4578F4(v4, v5);
  v6 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v6, v7);
  OUTLINED_FUNCTION_7_15();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v10, v11);
  v12 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v12, v13);
  return v9 & 1;
}

uint64_t sub_1AC4EB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_11();
  sub_1AC4578F4(v4, v5);
  v6 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v6, v7);
  OUTLINED_FUNCTION_7_15();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v10, v11);
  v12 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v12, v13);
  return v9 & 1;
}

uint64_t sub_1AC4EB158()
{
  OUTLINED_FUNCTION_24_8();
  v4 = v3 == v2 && v1 == v0;
  if (!v4 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v5, v6);
  v7 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v7, v8);
  OUTLINED_FUNCTION_7_15();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v11, v12);
  v13 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v13, v14);
  return v10 & 1;
}

uint64_t sub_1AC4EB1E4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Enum.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EB230(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Type.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EB284(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Field.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EB2D8(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  return static Google_Protobuf_Value.== infix(_:_:)(v5, v6) & 1;
}

uint64_t sub_1AC4EB324(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  v9 = a1[2];
  v10 = *(a1 + 6);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  return static Google_Protobuf_Option.== infix(_:_:)(v5) & 1;
}

uint64_t sub_1AC4EB380()
{
  OUTLINED_FUNCTION_13_11();
  if ((v2(v1, v0) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v3, v4);
  v5 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v5, v6);
  OUTLINED_FUNCTION_7_15();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v9, v10);
  v11 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v11, v12);
  return v8 & 1;
}

void *sub_1AC4EB438()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481A1C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB470()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E73D8(v2) & 1;
}

uint64_t sub_1AC4EB4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v10 = memcpy(v8, v9, 0x78uLL);
  v18 = OUTLINED_FUNCTION_22_9(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v26 = OUTLINED_FUNCTION_25_4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  return sub_1AC4EA274(v26) & 1;
}

void *sub_1AC4EB4EC()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x68uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481800(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB524()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x68uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E6C90(v2) & 1;
}

uint64_t sub_1AC4EB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x68uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA2C8(v12) & 1;
}

void *sub_1AC4EB6C0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0xB1uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482838(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB6F8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0xB1uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7FC8(v2) & 1;
}

uint64_t sub_1AC4EB734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0xB1uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA360(v12) & 1;
}

void *sub_1AC4EB7C8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482B74(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB800()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E88D8(v2) & 1;
}

uint64_t sub_1AC4EB83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x67uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA490(v12) & 1;
}

void *sub_1AC4EB8F0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x47uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4823D8(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB928()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x47uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7974(v2) & 1;
}

uint64_t sub_1AC4EB964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x47uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x47uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EA4DC(v28) & 1;
}

uint64_t sub_1AC4EBA20(__n128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  OUTLINED_FUNCTION_5_17();
  v9 = OUTLINED_FUNCTION_20_9(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  return sub_1AC4EA528(v9) & 1;
}

void *sub_1AC4EBA68()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x91uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC48270C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBAA0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x91uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7CA8(v2) & 1;
}

uint64_t sub_1AC4EBADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x91uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA584(v12) & 1;
}

void *sub_1AC4EBB2C()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x5EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC482468(v2);
}

uint64_t sub_1AC4EBB64()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x5EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E7B9C(v2) & 1;
}

uint64_t sub_1AC4EBBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x5EuLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA5D8(v12) & 1;
}

void *sub_1AC4EBBF0()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x7EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC482984(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBC28()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x7EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E80F8(v2) & 1;
}

uint64_t sub_1AC4EBC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x7EuLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA624(v12) & 1;
}

void *sub_1AC4EBE0C()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x99uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC481A34(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBE44()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x99uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E7610(v2) & 1;
}

uint64_t sub_1AC4EBE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x99uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA6D4(v12) & 1;
}

void *sub_1AC4EBED0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481C98(v2);
}

uint64_t sub_1AC4EBF08()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7740(v2) & 1;
}

uint64_t sub_1AC4EBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x67uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA728(v12) & 1;
}

void *sub_1AC4EBF94()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x88uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482378(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBFCC()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x88uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7844(v2) & 1;
}

uint64_t sub_1AC4EC008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x88uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA774(v12) & 1;
}

void *sub_1AC4EC0B0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482B0C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC0E8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8D1C(v2) & 1;
}

uint64_t sub_1AC4EC124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x46uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x46uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EA7C8(v28) & 1;
}

uint64_t sub_1AC4EC278(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = *(v1 + 4);
  return sub_1AC4EA858(v5) & 1;
}

uint64_t sub_1AC4EC340(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = v1[1];
  v6[2] = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  return sub_1AC4EA8A4(&v5) & 1;
}

uint64_t sub_1AC4EC408(__n128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  OUTLINED_FUNCTION_5_17();
  v9 = OUTLINED_FUNCTION_20_9(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  return sub_1AC4EA8F0(v9) & 1;
}

void *sub_1AC4EC450()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4829CC(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC488()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E9434(v2) & 1;
}

uint64_t sub_1AC4EC4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x46uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x46uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EA94C(v28) & 1;
}

void *sub_1AC4EC50C()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x71uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481A7C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC544()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x71uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8670(v2) & 1;
}

uint64_t sub_1AC4EC580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  memcpy(v9, v10, 0x71uLL);
  v11 = memcpy(__dst, v8, sizeof(__dst));
  v19 = OUTLINED_FUNCTION_25_4(v11, v12, v13, v14, v15, v16, v17, v18, v22);
  return sub_1AC4EA998(v19) & 1;
}

uint64_t sub_1AC4EC640(__n128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  OUTLINED_FUNCTION_5_17();
  v9 = OUTLINED_FUNCTION_20_9(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  return sub_1AC4EA9EC(v9) & 1;
}

void *sub_1AC4EC688()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4823C0(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC6C0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8E18(v2) & 1;
}

uint64_t sub_1AC4EC6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x46uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x46uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EAA48(v28) & 1;
}

void *sub_1AC4EC744()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481AC4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC77C()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7DD8(v2) & 1;
}

uint64_t sub_1AC4EC7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v10 = memcpy(v8, v9, 0x78uLL);
  v18 = OUTLINED_FUNCTION_22_9(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v26 = OUTLINED_FUNCTION_25_4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  return sub_1AC4EAA94(v26) & 1;
}

uint64_t sub_1AC4EC86C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = *(v1 + 32);
  return sub_1AC4EAAE8(v5) & 1;
}

void *sub_1AC4EC950()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x56uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482C1C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC988()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x56uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8314(v2) & 1;
}

uint64_t sub_1AC4EC9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x56uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EABCC(v12) & 1;
}

void *sub_1AC4ECA6C()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x48uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482898(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ECAA4()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x48uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8B00(v2) & 1;
}

uint64_t sub_1AC4ECAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x48uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x48uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EAC18(v28) & 1;
}

uint64_t sub_1AC4ECBF4(__n128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  OUTLINED_FUNCTION_5_17();
  v9 = OUTLINED_FUNCTION_20_9(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  return sub_1AC4EAC64(v9) & 1;
}

void *sub_1AC4ED080()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC48193C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ED0B8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E71D0(v2) & 1;
}

uint64_t sub_1AC4ED0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v10 = memcpy(v8, v9, 0x78uLL);
  v18 = OUTLINED_FUNCTION_22_9(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v26 = OUTLINED_FUNCTION_25_4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  return sub_1AC4EB230(v26) & 1;
}

void *sub_1AC4ED134()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x80uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC481860(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ED16C()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x80uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E6FB0(v2) & 1;
}

uint64_t sub_1AC4ED1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x80uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EB284(v12) & 1;
}

void *sub_1AC4ED1F8()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x70uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC48196C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ED230()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x70uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E72D8(v2) & 1;
}

uint64_t sub_1AC4ED26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x70uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EB1E4(v12) & 1;
}

uint64_t sub_1AC4ED3C4(__n128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  OUTLINED_FUNCTION_5_17();
  v9 = OUTLINED_FUNCTION_20_9(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  return sub_1AC4EB324(v9) & 1;
}

void sub_1AC4ED6C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1AC4513F8(a1, a2);

    sub_1AC4513F8(a3, a4);
  }
}

void sub_1AC4ED718(char a1, uint64_t a2, unint64_t a3)
{
  if (a1 != 2)
  {
    sub_1AC4513F8(a2, a3);
  }
}

uint64_t sub_1AC4ED734(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 2)
  {
    return sub_1AC4578F4(a2, a3);
  }

  return result;
}

uint64_t sub_1AC4ED750(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_1AC4513F8(a3, a4);
    return sub_1AC48532C(a5, a6, a7);
  }

  return result;
}

double sub_1AC4ED810(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AC4ED828(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AC4ED894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_76();

    sub_1AC4513F8(v2, v3);
  }
}

uint64_t sub_1AC4ED8DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    sub_1AC4513F8(a2, a3);
  }

  return result;
}

uint64_t sub_1AC4ED938(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

double sub_1AC4ED97C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

double sub_1AC4ED9A0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  return result;
}

double sub_1AC4ED9C8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 110) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1AC4ED9E4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

void sub_1AC4EDA14(uint64_t a1)
{
  if (a1)
  {

    v1 = OUTLINED_FUNCTION_76();

    sub_1AC4513F8(v1, v2);
  }
}

void sub_1AC4EDA58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_76();

    sub_1AC4513F8(v2, v3);
  }
}

uint64_t Message.init(unpackingAny:extensions:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = a1[1];
  v15 = *a1;
  v11 = *a3;
  v12 = *(a3 + 8);
  (*(a5 + 16))(a6, a4, a5);
  v16 = v11;
  v17 = v12;
  v13 = v18;
  sub_1AC474864(a6, a2, &v16, a4, a5);
  sub_1AC4513F8(v15, v10);

  result = sub_1AC455360(a2);
  if (v13)
  {
    return (*(*(a4 - 8) + 8))(a6, a4);
  }

  return result;
}

uint64_t Message.merge(serializedData:extensions:partial:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  v12[0] = a1;
  v12[1] = a2;
  v10 = v7;
  v11 = v8;
  return Message.merge<A>(serializedBytes:extensions:partial:options:)(v12, a3, a4, &v10, a6, MEMORY[0x1E6969080], a7, &protocol witness table for Data);
}

uint64_t Message.serializedData(partial:options:)(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  result = Message.serializedBytes<A>(partial:options:)(a1, &v6, a3, MEMORY[0x1E6969080], a4, &protocol witness table for Data);
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t static Message.isPathValid(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v12, v11);
  LOBYTE(a4) = sub_1AC4EDE4C(a1, a2, a3, a4);
  (*(v8 + 8))(v10, a3);
  return a4 & 1;
}

uint64_t sub_1AC4EDE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  sub_1AC4F0AE8(a1, a2, v6, &v5, a3, a4);
  sub_1AC4575D8(v6, qword_1EB559198, &unk_1AC5295F0);
  return 1;
}

uint64_t Message.merge(from:fieldMask:mergeOption:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *a3;
  v25[0] = sub_1AC4F2FB4(0);
  v25[1] = v10;
  v26 = v11;
  v12 = *(a5 + 72);
  v14 = type metadata accessor for PathVisitor(0, a4, a5, v13);
  v12(v25, v14, &off_1F2129B70, a4, a5);
  if (v5)
  {
  }

  else
  {
    v15 = v26;

    v16 = *(v8 + 16);
    if (v16)
    {
      v27 = v9;
      v17 = (v8 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        if (*(v15 + 16))
        {

          v20 = sub_1AC4EFE58(v18, v19);
          if (v21)
          {
            sub_1AC4EE7B8(*(v15 + 56) + 32 * v20, &v23);
          }

          else
          {
            v23 = 0u;
            v24 = 0u;
          }
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v28 = v27;
        sub_1AC4F0AE8(v18, v19, &v23, &v28, a4, a5);
        sub_1AC4575D8(&v23, qword_1EB559198, &unk_1AC5295F0);

        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t Message<>.trim(keeping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26[0] = a5;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v26 - v14;
  v16 = *v13;
  v17 = v13[1];
  v18 = v13[2];
  v28 = *v13;
  v29 = v17;
  v30 = v18;
  if ((Google_Protobuf_FieldMask.isValid<A>(for:)(v19, v19, v20, v21) & 1) != 0 && *(v16 + 16))
  {
    (*(v9 + 16))(v12, v5, a2);
    sub_1AC4EE35C(v12, a2, a3, v15);
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v27 = 0;
    Message.merge(from:fieldMask:mergeOption:)(v5, &v28, &v27, a2, a3);
    v23 = *(v9 + 32);
    v23(v12, v5, a2);
    v24 = sub_1AC51EDE8();
    (*(v9 + 8))(v12, a2);
    v25 = v24 ^ 1;
    v23(v6, v15, a2);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1AC4EE35C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v33 = a4;
  v34 = a1;
  v6 = sub_1AC51F228();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v31 - v8;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  (*(a3 + 16))(a2, a3);
  v20 = v9[2];
  v20(v17, v19, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1AC4575D8(&v37, &qword_1EB5597A0, &qword_1AC528E18);
    v21 = v34;
LABEL_7:
    v20(v33, v19, a2);
    goto LABEL_10;
  }

  sub_1AC458DF0(&v37, &v40);
  v21 = v34;
  v20(v14, v34, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1AC4575D8(v35, &qword_1EB5597A0, &qword_1AC528E18);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    goto LABEL_7;
  }

  sub_1AC458DF0(v35, &v37);
  v22 = *(&v38 + 1);
  v23 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  (*(v23 + 16))(v35, v22, v23);
  v24 = v41;
  v25 = v42;
  __swift_mutable_project_boxed_opaque_existential_1(&v40, v41);
  (*(v25 + 24))(v35, v24, v25);
  sub_1AC47782C(&v40, v35);
  v26 = v31;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v26, 0, 1, a2);
    v27 = v9[4];
    v28 = v32;
    v27(v32, v26, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v26, 1, 1, a2);
    v28 = v32;
    v20(v32, v19, a2);
    v27 = v9[4];
  }

  v27(v33, v28, a2);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v21 = v34;
LABEL_10:
  (*(a3 + 40))(&v40, a2, a3);
  v37 = v40;
  (*(a3 + 48))(&v37, a2, a3);
  v29 = v9[1];
  v29(v21, a2);
  return (v29)(v19, a2);
}

uint64_t sub_1AC4EE7B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_BYTE *_s12MergeOptionsVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void Message.init<A>(jsonUTF8Bytes:options:)()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_8();
  (*(v5 + 16))(v8 - v7, v3, v9);
  Message.init<A>(jsonUTF8Bytes:extensions:options:)();
  (*(v5 + 8))(v3, v1);
  OUTLINED_FUNCTION_61();
}

unint64_t sub_1AC4EEA20()
{
  result = qword_1EB559838[0];
  if (!qword_1EB559838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB559838);
  }

  return result;
}

void Message.init(jsonUTF8Data:extensions:options:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = a2;
  sub_1AC450324(a3, v6);
  sub_1AC4578F4(a1, a2);
  Message.init<A>(jsonUTF8Bytes:extensions:options:)();
  sub_1AC455360(a3);
  sub_1AC4513F8(a1, a2);
}

void *static Message.array(fromJSONString:options:)()
{
  v7[4] = &protocol witness table for SimpleExtensionMap;
  OUTLINED_FUNCTION_4_16();
  v4 = static Message.array(fromJSONString:extensions:options:)(v0, v1, v7, v6, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

void *static Message.array(fromJSONString:extensions:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v29 = a3;
  v11 = sub_1AC51EE28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12_8();
  v17 = v16 - v15;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 && (v25 = a5, a5 = *a4, v19 = *(a4 + 8), sub_1AC51EE18(), v20 = sub_1AC51EDF8(), v22 = v21, (*(v13 + 8))(v17, v11), v22 >> 60 != 15))
  {
    v28[0] = v20;
    v28[1] = v22;
    v26 = a5;
    v27 = v19;
    a5 = static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v28, v29, &v26, v25, MEMORY[0x1E6969080], a6, &protocol witness table for Data);
    sub_1AC45AC74(v20, v22);
  }

  else
  {
    sub_1AC477660();
    swift_allocError();
    *v23 = xmmword_1AC51FB60;
    swift_willThrow();
  }

  return a5;
}

void *static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v10;
  v16 = v11;
  v17 = a2;
  v12 = *(a7 + 32);
  v13 = sub_1AC51F108();
  result = v12(&v18, sub_1AC4EF140, v15, v13, a5, a7);
  if (!v7)
  {
    return v18;
  }

  return result;
}

void *static Message.array<A>(fromJSONUTF8Bytes:options:)()
{
  v8[4] = &protocol witness table for SimpleExtensionMap;
  OUTLINED_FUNCTION_4_16();
  v5 = static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v0, v8, &v7, v1, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

void sub_1AC4EEEB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v17 = sub_1AC51ED48();
  v46 = v17;
  if (!a1 || a2 - a1 < 1)
  {
    goto LABEL_27;
  }

  v47 = a8;
  sub_1AC47782C(a5, v41);
  sub_1AC450324(v41, &v39);
  type metadata accessor for DoubleParser();
  v18 = swift_allocObject();
  *(v18 + 16) = swift_slowAlloc();
  *(v18 + 24) = 128;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = 0;
  __src[3] = v18;
  __src[11] = a3;
  __src[4] = a3;
  LOBYTE(__src[5]) = a4 & 1;
  if (v40)
  {
    sub_1AC455360(v41);
    sub_1AC465B44(&v39, &v34);
  }

  else
  {
    v37 = &protocol witness table for SimpleExtensionMap;
    v36 = &type metadata for SimpleExtensionMap;
    *&v34 = MEMORY[0x1E69E7CC8];
    sub_1AC455360(v41);
    if (v40)
    {
      sub_1AC455360(&v39);
    }
  }

  sub_1AC465B44(&v34, &__src[6]);
  memcpy(__dst, __src, 0x60uLL);
  __dst[13] = a7;
  __dst[14] = 0;
  v43 = 0;
  v44 = 0u;
  v45 = 0u;
  __dst[12] = a6;
  sub_1AC45E30C(&v46, a6, a7, v19, v20, v21, v22, v23, v33, v34, *(&v34 + 1), v35, v36, v37, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
  a8 = v47;
  if (v8)
  {
    sub_1AC45AA7C(__dst);

    return;
  }

  v24 = __dst[1] - __dst[0];
  v25 = __dst[2];
  if (__dst[0])
  {
    v26 = __dst[1] - __dst[0];
  }

  else
  {
    v26 = 0;
  }

  v27 = __dst[2];
  if (!__dst[0])
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v24 == v27)
  {
LABEL_26:
    sub_1AC45AA7C(__dst);
    v17 = v46;
LABEL_27:
    *a8 = v17;
    return;
  }

  while (1)
  {
    v28 = *(__dst[0] + v27);
    v29 = v28 > 0x20;
    v30 = (1 << v28) & 0x100002600;
    if (v29 || v30 == 0)
    {
      break;
    }

    if (v25 < 0 || v27 >= v26)
    {
      __break(1u);
      return;
    }

    __dst[2] = ++v27;
    if (__dst[0])
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v27)
    {
      goto LABEL_26;
    }
  }

  if (__dst[0])
  {
    if (v24 == v27)
    {
      goto LABEL_26;
    }
  }

  else if (!v27)
  {
    goto LABEL_26;
  }

  sub_1AC477660();
  swift_allocError();
  *v32 = xmmword_1AC529040;
  swift_willThrow();
  sub_1AC45AA7C(__dst);
}

void *static Message.array(fromJSONUTF8Data:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v12[0] = a1;
  v12[1] = a2;
  v11[4] = &protocol witness table for SimpleExtensionMap;
  v11[3] = &type metadata for SimpleExtensionMap;
  v11[0] = MEMORY[0x1E69E7CC8];
  v9 = v5;
  v10 = v6;
  v7 = static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v12, v11, &v9, a4, MEMORY[0x1E6969080], a5, &protocol witness table for Data);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *static Message.array(fromJSONUTF8Data:extensions:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v11[0] = a1;
  v11[1] = a2;
  v9 = v6;
  v10 = v7;
  return static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v11, a3, &v9, a5, MEMORY[0x1E6969080], a6, &protocol witness table for Data);
}

uint64_t static Message.jsonUTF8Data<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11[0] = *a2;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  result = static Message.jsonUTF8Bytes<A, B>(from:options:)(a1, v11, a3, a4, MEMORY[0x1E6969080], a5, a6, &protocol witness table for Data, &v12);
  if (!v6)
  {
    return v12;
  }

  return result;
}

Swift::String __swiftcall Message.textFormatString()()
{
  v4 = 1;
  v2 = Message.textFormatString(options:)(&v4);
  object = v2._object;
  countAndFlagsBits = v2._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall Message.textFormatString(options:)(InternalSwiftProtobuf::TextFormatEncodingOptions options)
{
  v4 = v2;
  v5 = v1;
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_8();
  v11 = v10 - v9;
  v13 = *v12;
  v29[3] = v14;
  v29[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v17 = *(v7 + 16);
  v17(boxed_opaque_existential_1, v3, v5);
  LOBYTE(__dst[0]) = v13;
  v18 = sub_1AC501FA4(v29, __dst, __src);
  (v17)(v11, v3, v5, v18);
  if (swift_dynamicCast())
  {
    v19 = v29[0];
    v20 = v29[1];
    sub_1AC475F40(__src);
    sub_1AC4513F8(v19, v20);
  }

  else
  {
    (*(v4 + 72))(__src, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v5, v4);
  }

  memcpy(__dst, __src, 0x41uLL);
  v21 = __dst[0];
  sub_1AC4EF50C(__dst, v29);
  v22 = sub_1AC500C3C(v21);
  v24 = v23;
  memcpy(v29, __src, 0x41uLL);
  sub_1AC4EF568(v29);
  sub_1AC4EF568(__dst);
  v25 = v22;
  v26 = v24;
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t MessageExtension.fieldName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t *MessageExtension.__allocating_init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = *result;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  v8 = *(v7 + 88);
  v9 = *(v7 + 104);
  result[5] = v8;
  result[6] = v9;
  return result;
}

uint64_t *MessageExtension.init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = *(v4 + 88);
  v6 = *(v4 + 104);
  v3[5] = v5;
  v3[6] = v6;
  return v3;
}

uint64_t MessageExtension._protobuf_newField<A>(decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22 = a4;
  v23 = a3;
  v8 = *v4;
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = sub_1AC51F228();
  v21 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v24[3] = v9;
  v24[4] = &protocol witness table for MessageExtension<A, B>;
  v24[0] = v5;
  v14 = *(v8 + 96);
  v15 = *(v14 + 64);

  v16 = v24[6];
  result = v15(v24, a1, a2, v23, v10, v14);
  if (!v16)
  {
    v19 = v21;
    v18 = v22;
    if (__swift_getEnumTagSinglePayload(v13, 1, v10) == 1)
    {
      result = (*(v19 + 8))(v13, v11);
      *(v18 + 32) = 0;
      *v18 = 0u;
      *(v18 + 16) = 0u;
    }

    else
    {
      *(v18 + 24) = v10;
      *(v18 + 32) = *(v14 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      return (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, v13, v10);
    }
  }

  return result;
}

uint64_t MessageExtension.__deallocating_deinit()
{
  MessageExtension.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t _NameMap.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternPool();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = sub_1AC51ED58();
  sub_1AC46C9B4();
  a1[2] = OUTLINED_FUNCTION_34_5();
  result = OUTLINED_FUNCTION_34_5();
  a1[3] = result;
  return result;
}

uint64_t sub_1AC4EFB3C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 33))
  {
    return sub_1AC51F2E8();
  }

  return v1;
}

char *sub_1AC4EFB98(const void *a1, size_t a2)
{
  v3 = v2;
  result = swift_slowAlloc();
  v7 = result;
  if (!a1)
  {
    goto LABEL_4;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    memmove(result, a1, a2);
LABEL_4:
    swift_beginAccess();
    sub_1AC46D068();
    v8 = *(*(v3 + 16) + 16);
    sub_1AC46D148(v8);
    v9 = *(v3 + 16);
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = v7;
    *(v10 + 40) = &v7[a2];
    *(v3 + 16) = v9;
    swift_endAccess();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4EFC60()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      if (v4)
      {
        MEMORY[0x1AC5B4D30](v4, -1, -1);
      }

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1AC4EFCF0()
{
  v0 = sub_1AC4EFC60();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AC4EFD20(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (!*a1)
  {
    v4 = 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (v5)
  {
    if (v4 == v6 - v5)
    {
      return sub_1AC4EFD54(v5, v6, v2, v3);
    }
  }

  else if (!v4)
  {
    return sub_1AC4EFD54(v5, v6, v2, v3);
  }

  return 0;
}

uint64_t sub_1AC4EFD54(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  do
  {
    if (a3)
    {
      if (a3 == a4)
      {
        v4 = 0;
        v5 = 1;
        a3 = a4;
        if (!a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = 0;
        v8 = *a3++;
        v4 = v8;
        if (!a1)
        {
LABEL_10:
          v6 = 0;
          v7 = 1;
          if (v5)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 1;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    if (a1 == a2)
    {
      v6 = 0;
      v7 = 1;
      a1 = a2;
      if (v5)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      v9 = *a1++;
      v6 = v9;
      if (v5)
      {
        return v7;
      }
    }

LABEL_13:
    if (v4 != v6)
    {
      LODWORD(v7) = 1;
    }
  }

  while (v7 != 1);
  return 0;
}

uint64_t sub_1AC4EFDE0()
{
  sub_1AC51F468();
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[1];
    while (v1 != v2)
    {
      ++v1;
      sub_1AC51F488();
    }
  }

  return sub_1AC51F4C8();
}

unint64_t sub_1AC4EFE58(uint64_t a1, uint64_t a2)
{
  sub_1AC51F468();
  sub_1AC51EEB8();
  v4 = sub_1AC51F4C8();

  return sub_1AC4EFED0(a1, a2, v4);
}

unint64_t sub_1AC4EFED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1AC51F3D8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1AC4EFF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_19_10(a1, a2);
  sub_1AC4EFE58(v7, v8);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_14:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v13 = v9;
  v14 = v10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559760, &unk_1AC5294E0);
  if (OUTLINED_FUNCTION_29_5(v15))
  {
    sub_1AC4EFE58(a2, a3);
    OUTLINED_FUNCTION_9_16();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  v18 = *v4;
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1((v18[7] + 32 * v13));
    OUTLINED_FUNCTION_378();

    return sub_1AC4CA7D4(v19, v20);
  }

  else
  {
    sub_1AC4F04FC(v13, a2, a3, v3, v18);
    OUTLINED_FUNCTION_378();
  }
}

uint64_t sub_1AC4F009C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_1AC4F00B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC4EFE58(a2, a3);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_14:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v11 = v7;
  v12 = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559750, &qword_1AC5294F0);
  if (OUTLINED_FUNCTION_29_5(v13))
  {
    sub_1AC4EFE58(a2, a3);
    OUTLINED_FUNCTION_5_19();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_378();

    return sub_1AC4F0A54(v16, v17);
  }

  else
  {
    sub_1AC4F08F8(v11, a2, a3, a1, *v3);
    OUTLINED_FUNCTION_378();
  }
}

void sub_1AC4F01CC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_10(a1, a2);
  sub_1AC45AA38(v4);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v7, v8))
  {
    __break(1u);
LABEL_14:
    sub_1AC51F408();
    __break(1u);
    return;
  }

  v9 = v5;
  v10 = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558208, &unk_1AC520790);
  if (OUTLINED_FUNCTION_31_4(v11))
  {
    sub_1AC45AA38(a2);
    OUTLINED_FUNCTION_9_16();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v2 + 56) + 40 * v9));
    OUTLINED_FUNCTION_378();

    sub_1AC465B44(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_378();

    sub_1AC4F095C(v17, v18, v19, v20);
  }
}

void sub_1AC4F02D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1AC4EFE58(a3, a4);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_12:
    sub_1AC51F408();
    __break(1u);
    return;
  }

  v14 = v10;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598D8, &qword_1AC5294F8);
  if (sub_1AC51F338())
  {
    sub_1AC4EFE58(a3, a4);
    OUTLINED_FUNCTION_5_19();
    if (!v17)
    {
      goto LABEL_12;
    }

    v14 = v16;
  }

  v18 = *v5;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1AC4F09BC(v14, a3, a4, a1, a2, v18);
  }
}

void sub_1AC4F0400(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_19_10(a1, a2);
  sub_1AC45AA38(v5);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v6;
  v11 = v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598D0, &unk_1AC529940);
  if ((OUTLINED_FUNCTION_31_4(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1AC45AA38(a2);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1AC51F408();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  if (v11)
  {
    *(*(*v3 + 56) + 8 * v10) = v2;
    OUTLINED_FUNCTION_378();
  }

  else
  {
    OUTLINED_FUNCTION_378();

    sub_1AC4F0A08(v16, v17, v18, v19);
  }
}

_OWORD *sub_1AC4F04FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1AC4CA7D4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1AC4F0568(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_1AC4F05B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AC4F05F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4F0630(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 17);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AC4F0674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = -a2 << 8;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1AC4F06F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4F0734(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AC4F0794(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf8_NameMapV0D0VSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4F07FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 74))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 73);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4F083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AC4F08A4()
{
  result = qword_1ED6E4348;
  if (!qword_1ED6E4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4348);
  }

  return result;
}

void sub_1AC4F08F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_17(a5 + 8 * (a1 >> 6));
  v7 = (v5[6] + 16 * v6);
  *v7 = v8;
  v7[1] = v9;
  v10 = (v5[7] + 48 * v6);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v10[2] = v11[2];
  v13 = v5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v15;
  }
}

void sub_1AC4F095C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_17(a4 + 8 * (a1 >> 6));
  *(*(v5 + 48) + 8 * v6) = v7;
  sub_1AC465B44(v8, *(v5 + 56) + 40 * v6);
  OUTLINED_FUNCTION_21_8();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1AC4F09BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1AC4F0A08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_17(a4 + 8 * (a1 >> 6));
  *(v4[6] + 8 * v5) = v6;
  *(v4[7] + 8 * v5) = v7;
  v8 = v4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v10;
  }
}

void *sub_1AC4F0AE8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  v18[0] = a1;
  v18[1] = a2;
  *&v17[0] = 46;
  *(&v17[0] + 1) = 0xE100000000000000;
  sub_1AC4F28C0();
  v11 = sub_1AC51F268();
  sub_1AC4F2914(a3, v17);
  v16 = v10;
  result = sub_1AC4F1208(v11, v17, &v16, a5, v18);
  if (!v6)
  {
    v14 = *(a6 + 64);
    v15 = type metadata accessor for PathDecoder(0, a5, a6, v13);
    v14(v18, v15, &off_1F2129938, a5, a6);
    return (*(*(v15 - 8) + 8))(v18, v15);
  }

  return result;
}

uint64_t PathDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4F0CC4()
{
  result = qword_1EB5598E0;
  if (!qword_1EB5598E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5598E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PathDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC4F0DF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding))
  {
    return 0;
  }

  v37 = a1;
  v38 = a2;
  v5 = sub_1AC4F2B28(a1, a2);
  v6 = (v5 + 4);
  v7 = v5 + v5[2] + 32;
  v8 = OUTLINED_FUNCTION_6_19();
  v39 = v9;
  v9(v8);
  v43[0] = v6;
  v43[1] = v7;
  v43[2] = "";
  v43[3] = 0;
  v44 = 258;
  if (!*(v42 + 16))
  {

LABEL_16:

LABEL_18:

    return 0;
  }

  v10 = sub_1AC4599C0(v43);
  if ((v11 & 1) == 0)
  {

    goto LABEL_16;
  }

  v12 = *(*(v42 + 56) + 8 * v10);

  v13 = OUTLINED_FUNCTION_6_19();
  v39(v13);
  if (!*(v41 + 16) || (v14 = sub_1AC45AA38(v12), (v15 & 1) == 0))
  {

    goto LABEL_18;
  }

  v16 = *(v41 + 56) + 80 * v14;
  v17 = *v16;
  v40 = *(v16 + 8);
  v35 = *(v16 + 24);
  v36 = *(v16 + 16);
  v19 = *(v16 + 56);
  v18 = *(v16 + 64);
  v20 = *(v16 + 73);
  v34 = *(v16 + 32);
  sub_1AC4DB1E4(*v16, v40, v36, v35, *(v16 + 32));
  v21 = OUTLINED_FUNCTION_3_25();
  sub_1AC45AC88(v21, v22, v23, v20);

  v24 = OUTLINED_FUNCTION_3_25();
  sub_1AC45AC88(v24, v25, v26, v20);
  sub_1AC4DB20C(v17, v40, v36, v35, v34);
  v27 = OUTLINED_FUNCTION_3_25();
  sub_1AC45AE94(v27, v28, v29, v20);
  if (v20)
  {
    OUTLINED_FUNCTION_3_25();
    v19 = sub_1AC51F2E8();
    v18 = v30;
  }

  if (v19 == v37 && v18 == v38)
  {

    return v12;
  }

  v32 = sub_1AC51F3D8();

  if ((v32 & 1) == 0)
  {
    return 0;
  }

  return v12;
}

uint64_t sub_1AC4F1094(uint64_t a1, uint64_t a2)
{
  if (!dynamic_cast_existential_1_conditional(a2, a2, &protocol descriptor for _ProtoNameProviding))
  {
    return 0;
  }

  (*(v3 + 8))(&v25);
  v4 = v26;
  if (!*(v26 + 16) || (v5 = sub_1AC45AA38(a1), (v6 & 1) == 0))
  {

    return 0;
  }

  v7 = *(v4 + 56) + 80 * v5;
  v23 = *(v7 + 8);
  v24 = *v7;
  v8 = *(v7 + 16);
  v22 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = *(v7 + 73);
  v11 = *(v7 + 32);
  sub_1AC4DB1E4(*v7, v23, v8, v22, v11);
  v12 = OUTLINED_FUNCTION_1_25();
  sub_1AC45AC88(v12, v13, v14, v10);

  v15 = OUTLINED_FUNCTION_1_25();
  sub_1AC45AC88(v15, v16, v17, v10);
  sub_1AC4DB20C(v24, v23, v8, v22, v11);
  v18 = OUTLINED_FUNCTION_1_25();
  sub_1AC45AE94(v18, v19, v20, v10);
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    return sub_1AC51F2E8();
  }

  return v9;
}

uint64_t sub_1AC4F1208@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a1[2] || (v9 = *a3, v10 = a1[4], v11 = a1[5], , v12 = sub_1AC4F0DF4(v10, v11, a4), v14 = v13, , (v14 & 1) != 0))
  {

    sub_1AC4F299C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return sub_1AC4F29F0(a2);
  }

  *(a5 + 32) = v12;
  *(a5 + 40) = 0;
  v18 = sub_1AC4F13B8(1, a1);
  v20 = v19;
  v22 = v21;
  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = v17;
  sub_1AC51F3E8();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(v22 >> 1, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v26 != (v22 >> 1) - v20)
  {
LABEL_15:
    swift_unknownObjectRelease();
    v17 = v28;
LABEL_5:
    sub_1AC4F2A58(v18, v17, v20, v22);
    v24 = v23;
LABEL_12:
    result = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v24 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  if (!v24)
  {
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  *(a5 + 48) = v24;
  v27 = a2[1];
  *a5 = *a2;
  *(a5 + 16) = v27;
  *(a5 + 56) = v9;
  return result;
}

uint64_t sub_1AC4F13B8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1AC4F2C40(0, result, v2);
    if (v3)
    {
      result = v2;
    }

    if (v2 >= result)
    {
      v4 = sub_1AC4890FC();

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4F1450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AC51F228();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-v10];
  if (*(*(v4 + 48) + 16))
  {
    sub_1AC4F299C();
    swift_allocError();
    v13 = 1;
LABEL_3:
    *v12 = v13;
    return swift_willThrow();
  }

  sub_1AC4F2914(v4, v17);
  if (v18)
  {
    sub_1AC4F29F0(v17);
    sub_1AC4F2914(v4, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559198, &unk_1AC5295F0);
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v11, 1, 1, a4);
      (*(v9 + 8))(v11, v8);
      sub_1AC4F299C();
      swift_allocError();
      v13 = 0;
      goto LABEL_3;
    }

    v15 = *(a4 - 8);
    (*(v15 + 8))(a1, a4);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, a4);
    return (*(v15 + 32))(a1, v11, a4);
  }

  else
  {
    v16 = *(a4 - 8);
    (*(v16 + 8))(a1, a4);
    sub_1AC4F29F0(v17);
    return (*(v16 + 16))(a1, a2, a4);
  }
}

uint64_t sub_1AC4F1714(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 48) + 16))
  {
    sub_1AC4F299C();
    swift_allocError();
    v5 = 1;
LABEL_13:
    *v4 = v5;
    return swift_willThrow();
  }

  v7 = sub_1AC51F078();
  sub_1AC4F2914(v3, v9);
  if (v10)
  {

    sub_1AC4F29F0(v9);
    sub_1AC4F2914(v3, v9);
    if (v10)
    {
      sub_1AC51F108();
      if (swift_dynamicCast())
      {
        v7 = v11;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AC4F29F0(v9);
    }

    sub_1AC4F299C();
    swift_allocError();
    v5 = 0;
    goto LABEL_13;
  }

  sub_1AC4F29F0(v9);
LABEL_8:
  if (*(v3 + 56) == 1)
  {

    *a1 = v7;
  }

  else
  {
    v9[0] = v7;
    sub_1AC51F108();
    swift_getWitnessTable();
    return sub_1AC51F0C8();
  }

  return result;
}

uint64_t sub_1AC4F18B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(v5 + 48) + 16))
  {
    sub_1AC4F299C();
    swift_allocError();
    v7 = 1;
LABEL_13:
    *v6 = v7;
    return swift_willThrow();
  }

  swift_getTupleTypeMetadata2();
  sub_1AC51F078();
  v9 = sub_1AC51ED58();
  sub_1AC4F2914(v5, v12);
  if (v13)
  {

    sub_1AC4F29F0(v12);
    sub_1AC4F2914(v5, v12);
    if (v13)
    {
      sub_1AC51ED88();
      v10 = swift_dynamicCast();
      if (v10)
      {
        v9 = v14;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AC4F29F0(v12);
    }

    sub_1AC4F299C();
    swift_allocError();
    v7 = 0;
    goto LABEL_13;
  }

  v10 = sub_1AC4F29F0(v12);
LABEL_8:
  if (*(v5 + 56) == 1)
  {

    *a1 = v9;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1AC51ED88();
    return sub_1AC51ED78();
  }

  return result;
}

uint64_t sub_1AC4F1AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a2;
  v8 = sub_1AC51F228();
  v28 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  if (*(*(v4 + 48) + 16))
  {
    sub_1AC4F2914(v4, v29);
    v31 = *(v4 + 56);

    result = sub_1AC4F1208(v17, v29, &v31, a3, v30);
    if (!v5)
    {
      v19 = v28;
      (*(v28 + 16))(v14, a1, v8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, a3);
      (*(v19 + 8))(v14, v8);
      v21 = v26;
      if (EnumTagSinglePayload == 1)
      {
        (*(v26 + 16))(a3, v26);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, a3);
        (*(v19 + 40))(a1, v11, v8);
      }

      if (__swift_getEnumTagSinglePayload(a1, 1, a3))
      {
        v23 = type metadata accessor for PathDecoder(0, a3, v21, v22);
      }

      else
      {
        v24 = *(v21 + 64);
        v23 = type metadata accessor for PathDecoder(0, a3, v21, v22);
        v24(v30, v23, &off_1F2129938, a3, v21);
      }

      return (*(*(v23 - 8) + 8))(v30, v23);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v25 - v15, 1, 1, a3);
    sub_1AC4F1450(a1, v16, v27, v8);
    return (*(v28 + 8))(v16, v8);
  }

  return result;
}

uint64_t sub_1AC4F1DCC()
{
  result = *(v0 + 32);
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return result;
}

uint64_t sub_1AC4F202C()
{
  OUTLINED_FUNCTION_0_29();
  v6 = 0;
  v7 = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_1AC4F1450(v1, &v6, v0, v4);
}

uint64_t sub_1AC4F2084()
{
  OUTLINED_FUNCTION_0_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  return OUTLINED_FUNCTION_2_20(v2, v3, v4, v5, v6, v7, v8, v9, 0);
}

uint64_t sub_1AC4F2104()
{
  OUTLINED_FUNCTION_0_29();
  v4 = 2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559980, &qword_1AC5296A0);
  return sub_1AC4F1450(v1, &v4, v0, v2);
}

uint64_t sub_1AC4F2180(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  return sub_1AC4F1450(a1, v3, a2, MEMORY[0x1E69E6158]);
}

uint64_t sub_1AC4F21B8()
{
  OUTLINED_FUNCTION_0_29();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559978, &qword_1AC529698);
  return OUTLINED_FUNCTION_2_20(v0, v1, v2, v3, v4, v5, v6, v7, 0);
}

void sub_1AC4F2224(uint64_t a1, uint64_t a2)
{
  v2 = xmmword_1AC51F990;
  sub_1AC4F1450(a1, &v2, a2, MEMORY[0x1E6969080]);
  sub_1AC4513F8(v2, *(&v2 + 1));
}

uint64_t sub_1AC4F2278()
{
  OUTLINED_FUNCTION_0_29();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559970, &qword_1AC529690);
  return OUTLINED_FUNCTION_2_20(v0, v1, v2, v3, v4, v5, v6, v7, 0);
}

uint64_t sub_1AC4F22EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 24))(v10, v9);
  sub_1AC4F1450(a1, v8, a2, a3);
  return (*(v6 + 8))(v8, a3);
}

uint64_t sub_1AC4F2404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC51F228();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_storeEnumTagSinglePayload(&v11 - v8, 1, 1, a3);
  sub_1AC4F1450(a1, v9, a2, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AC4F2540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_1AC4F18B4(a1, a2, AssociatedTypeWitness, v9, AssociatedConformanceWitness);
}

uint64_t sub_1AC4F2620()
{
  OUTLINED_FUNCTION_4_18();
  swift_getAssociatedTypeWitness();
  v0 = OUTLINED_FUNCTION_48_0();
  return OUTLINED_FUNCTION_5_20(v0);
}

uint64_t sub_1AC4F268C()
{
  result = sub_1AC4F1DCC();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1AC4F28C0()
{
  result = qword_1EB557CB0;
  if (!qword_1EB557CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CB0);
  }

  return result;
}

uint64_t sub_1AC4F2914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559198, &unk_1AC5295F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC4F299C()
{
  result = qword_1EB5598E8[0];
  if (!qword_1EB5598E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5598E8);
  }

  return result;
}

uint64_t sub_1AC4F29F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559198, &unk_1AC5295F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AC4F2A58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558298, &qword_1AC520A50);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1AC4F2B28(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1AC51EF48())
  {
    result = sub_1AC4D7300(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51F2B8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1AC51F308();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AC4F2C40(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1AC4F2C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4F2CFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1AC4F2D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4F2F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC4F300C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC4F1094(a2, *(a3 + 16));
  if (v6)
  {
    v7 = result;
    v8 = v6;
    v9 = v3[1];
    if (v9)
    {
      v12 = *v3;
      v13 = v9;

      MEMORY[0x1AC5B4340](46, 0xE100000000000000);
      MEMORY[0x1AC5B4340](v7, v8);

      v10 = v12;
      v8 = v13;
      sub_1AC4EE7B8(a1, &v12);
      v11 = v10;
    }

    else
    {
      sub_1AC4EE7B8(a1, &v12);
      v11 = v7;
    }

    return sub_1AC4C9610(&v12, v11, v8);
  }

  return result;
}

uint64_t sub_1AC4F30E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1AC4F1094(a2, *(a3 + 16));
  if (v10)
  {
    v11 = result;
    v12 = v10;
    v13 = v5[1];
    if (v13)
    {
      v21 = *v5;
      v22 = v13;

      MEMORY[0x1AC5B4340](46, 0xE100000000000000);
      MEMORY[0x1AC5B4340](v11, v12);

      v11 = v21;
      v12 = v22;
    }

    v24 = a4;
    v14 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(*(a4 - 8) + 16))(v14, a1, a4);

    sub_1AC4C9610(&v21, v11, v12);
    v21 = sub_1AC4F2FB4(v11);
    v22 = v15;
    v23 = v16;
    v17 = *(a5 + 72);
    v19 = type metadata accessor for PathVisitor(0, a4, a5, v18);
    v17(&v21, v19, &off_1F2129B70, a4, a5);

    sub_1AC4F3CB8(v20, sub_1AC4F3C80, 0, v5 + 2);
  }

  return result;
}

uint64_t sub_1AC4F328C(uint64_t a1, uint64_t a2, float a3)
{
  *v4 = a3;
  v4[3] = MEMORY[0x1E69E6448];
  sub_1AC4F300C(v4, a1, a2);
  return OUTLINED_FUNCTION_1_26(v4);
}

uint64_t sub_1AC4F32DC(uint64_t a1, uint64_t a2, double a3)
{
  *v4 = a3;
  v4[3] = MEMORY[0x1E69E63B0];
  sub_1AC4F300C(v4, a1, a2);
  return OUTLINED_FUNCTION_1_26(v4);
}

uint64_t sub_1AC4F332C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  LODWORD(v5[0]) = a1;
  sub_1AC4F300C(v5, a2, a3);
  return OUTLINED_FUNCTION_1_26(v5);
}

uint64_t sub_1AC4F3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[0] = a1;
  sub_1AC4F300C(v5, a2, a3);
  return OUTLINED_FUNCTION_1_26(v5);
}

uint64_t sub_1AC4F33A4(char a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v4[0]) = a1;
  v4[3] = MEMORY[0x1E69E6370];
  sub_1AC4F300C(v4, a2, a3);
  return OUTLINED_FUNCTION_1_26(v4);
}

uint64_t sub_1AC4F33EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = a1;
  v7[1] = a2;

  sub_1AC4F300C(v7, a3, a4);
  return OUTLINED_FUNCTION_1_26(v7);
}

uint64_t sub_1AC4F344C(uint64_t a1, unint64_t a2)
{
  v11[3] = MEMORY[0x1E6969080];
  v11[0] = a1;
  v11[1] = a2;
  v2 = sub_1AC4578F4(a1, a2);
  OUTLINED_FUNCTION_2_21(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
  return OUTLINED_FUNCTION_1_26(v11);
}

uint64_t sub_1AC4F34A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  sub_1AC4F300C(v10, a2, a3);
  return OUTLINED_FUNCTION_1_26(v10);
}

uint64_t sub_1AC4F35B4()
{
  OUTLINED_FUNCTION_15_0();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);

  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  return OUTLINED_FUNCTION_1_26(v12);
}

uint64_t sub_1AC4F3624()
{
  OUTLINED_FUNCTION_15_0();
  v10[3] = sub_1AC51F108();

  OUTLINED_FUNCTION_2_21(v1, v2, v3, v4, v5, v6, v7, v8, v0);
  return OUTLINED_FUNCTION_1_26(v10);
}

uint64_t sub_1AC4F367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11[3] = sub_1AC51ED88();
  v11[0] = a1;

  sub_1AC4F300C(v11, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1AC4F377C()
{
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_6_20(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_4_19();
  v9[3] = OUTLINED_FUNCTION_5_21(v7);
  v9[0] = v2;

  sub_1AC4F300C(v9, v1, v0);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1AC4F3928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559A78, &qword_1AC5297A0);
  v33 = v4;
  result = sub_1AC51F398();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1AC4F3BDC(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_1AC4CA7D4(v22, v34);
    }

    else
    {
      sub_1AC4EE7B8(v22, v34);
    }

    sub_1AC51F468();
    sub_1AC51EEB8();
    result = sub_1AC51F4C8();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1AC4CA7D4(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1AC4F3BDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1AC528340;
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

uint64_t sub_1AC4F3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC4EE7B8(a4, a1);

  return a2;
}

uint64_t sub_1AC4F3C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AC4F3C40((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AC4F3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1AC4F3D2C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1AC4F3D2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1AC4F3F5C(a1, a2, a3, v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    sub_1AC4F3F98(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_1AC460BE4(v30);
    }

    v8 = v28;
    sub_1AC4CA7D4(&v29, v27);
    v9 = *a5;
    v11 = sub_1AC4EFE58(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559760, &unk_1AC5294E0);
        sub_1AC51F348();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1AC4F3928(v14, a4 & 1);
      v16 = sub_1AC4EFE58(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_1AC4EE7B8(v27, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);

        v19 = (v18[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1AC4CA7D4(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1AC4CA7D4(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1AC51F408();
  __break(1u);
  return result;
}

uint64_t sub_1AC4F3F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1AC4F3F98@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1AC4EE7B8(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_1AC4CA7D4(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_1AC4F40D8(v18);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4F40D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559A80, qword_1AC5297A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1AC4F42E0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SimpleExtensionMap.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_1AC47782C(v3, v5);
      SimpleExtensionMap.insert(_:)(v5);
      __swift_destroy_boxed_opaque_existential_1(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Void __swiftcall SimpleExtensionMap.insert(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v1 = *(contentsOf._rawValue + 2);
  if (v1)
  {
    v2 = contentsOf._rawValue + 32;
    do
    {
      SimpleExtensionMap.insert(_:)(v2);
      v2 += 5;
      --v1;
    }

    while (v1);
  }
}

uint64_t SimpleExtensionMap.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = MEMORY[0x1E69E7CC8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      SimpleExtensionMap.formUnion(_:)();
      v4 += 8;
      --v3;
    }

    while (v3);

    v6 = v7;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v6;
  return result;
}

uint64_t SimpleExtensionMap.formUnion(_:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_32();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v43 = v7;

  v8 = 0;
  v41 = v6;
  v42 = v0;
  v39 = v0;
  if (!v4)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = (v8 << 9) | (8 * v10);
    v12 = *(*(v43 + 48) + v11);
    v13 = *(*(v43 + 56) + v11);
    v14 = *v1;
    v44 = v13;
    if (*(*v1 + 16))
    {
      v15 = sub_1AC45AA38(v12);
      if (v16)
      {
        v40 = v12;
        v17 = *(*(v14 + 56) + 8 * v15);
        v18 = *(v17 + 16);
        v19 = v17 + 32;

        v20 = 0;
        v21 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v18 == v20)
          {

            *&v46[0] = v21;
            sub_1AC486674(v13);
            v37 = *&v46[0];
            v1 = v39;
            swift_isUniquelyReferenced_nonNull_native();
            *&v45[0] = *v39;
            sub_1AC4F0400(v37, v40);
            *v39 = *&v45[0];
            goto LABEL_30;
          }

          if (v20 >= *(v17 + 16))
          {
            break;
          }

          sub_1AC47782C(v19, v46);
          if (sub_1AC4F4F14(v46, v13))
          {
            sub_1AC465B44(v46, v45);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_2_22(*(v21 + 16));
              v21 = v47;
            }

            v24 = *(v21 + 16);
            v23 = *(v21 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_1AC4D0AF0(v23 > 1, v24 + 1, 1);
              v21 = v47;
            }

            *(v21 + 16) = v24 + 1;
            sub_1AC465B44(v45, v21 + 40 * v24 + 32);
            v13 = v44;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v46);
          }

          v19 += 40;
          ++v20;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = *v1;
    v25 = *&v46[0];
    *v1 = 0x8000000000000000;
    v26 = sub_1AC45AA38(v12);
    if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
    {
      goto LABEL_35;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598D0, &unk_1AC529940);
    if (sub_1AC51F338())
    {
      v30 = v12;
      v31 = sub_1AC45AA38(v12);
      if ((v29 & 1) != (v32 & 1))
      {
        goto LABEL_37;
      }

      v28 = v31;
    }

    else
    {
      v30 = v12;
    }

    v33 = *&v46[0];
    if (v29)
    {
      *(*(*&v46[0] + 56) + 8 * v28) = v44;
    }

    else
    {
      *(*&v46[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v33[6] + 8 * v28) = v30;
      *(v33[7] + 8 * v28) = v44;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_36;
      }

      v33[2] = v36;
    }

    *v1 = v33;
LABEL_30:
    v6 = v41;
    v0 = v42;
  }

  while (v4);
LABEL_2:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v4 = v0[v9];
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_6;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  MEMORY[0x1AC5B4BA0](0);

  __swift_destroy_boxed_opaque_existential_1(v46);

  __break(1u);
LABEL_37:
  result = sub_1AC51F408();
  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = result, result = sub_1AC45AA38(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * result);
    v9 = *(v8 + 16);
    v10 = v8 + 32;

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        goto LABEL_9;
      }

      if (i >= *(v8 + 16))
      {
        break;
      }

      sub_1AC47782C(v10, v15);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      OUTLINED_FUNCTION_1_27();
      if (v14(v12, v13) == v6)
      {

        sub_1AC47782C(v15, a3);
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v15);
      v10 += 40;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t SimpleExtensionMap.fieldNumberForProto(messageType:protoFieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_32();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v31 = v4;
  v32 = result;
  v30 = v10;
  do
  {
LABEL_2:
    if (!v8)
    {
      do
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_24;
        }

        if (v13 >= v10)
        {

          return 0;
        }

        v8 = *(v4 + 8 * v13);
        ++v12;
      }

      while (!v8);
      v12 = v13;
    }

    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(*(result + 56) + ((v12 << 9) | (8 * v14)));
    v16 = *(v15 + 16);
  }

  while (!v16);
  v17 = v15 + 32;

  v18 = 0;
  while (v18 < *(v15 + 16))
  {
    sub_1AC47782C(v17, v35);
    v19 = v36;
    v20 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    if ((*(v20 + 16))(v19, v20) == a3 && v21 == a4)
    {
    }

    else
    {
      v23 = sub_1AC51F3D8();

      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v24 = v36;
    v25 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    OUTLINED_FUNCTION_1_27();
    if (v26(v24, v25) == a1)
    {

      v27 = v36;
      v28 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v29 = (*(v28 + 8))(v27, v28);

      __swift_destroy_boxed_opaque_existential_1(v35);
      return v29;
    }

LABEL_18:
    ++v18;
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v17 += 40;
    if (v16 == v18)
    {

      v4 = v31;
      result = v32;
      v10 = v30;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void SimpleExtensionMap.insert(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = sub_1AC4CFB74(v5, *v1);
  if (v6)
  {
    v7 = v6;
    v26 = v5;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    OUTLINED_FUNCTION_1_27();
    v11 = v10(v8, v9);
    v12 = 0;
    v13 = *(v7 + 16);
    v14 = v7 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    while (v13 != v12)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_1AC47782C(v14, &v28);
      v16 = v29;
      v17 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      OUTLINED_FUNCTION_1_27();
      if (v18(v16, v17) == v11)
      {
        __swift_destroy_boxed_opaque_existential_1(&v28);
      }

      else
      {
        sub_1AC465B44(&v28, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_2_22(*(v15 + 16));
          v15 = v31;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1AC4D0AF0(v20 > 1, v21 + 1, 1);
          v15 = v31;
        }

        *(v15 + 16) = v21 + 1;
        sub_1AC465B44(v27, v15 + 40 * v21 + 32);
      }

      v14 += 40;
      ++v12;
    }

    sub_1AC47782C(a1, &v28);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }

LABEL_19:
    sub_1AC48F3FC();
    v15 = v24;
LABEL_14:
    v22 = *(v15 + 16);
    if (v22 >= *(v15 + 24) >> 1)
    {
      sub_1AC48F3FC();
      v15 = v25;
    }

    *(v15 + 16) = v22 + 1;
    sub_1AC465B44(&v28, v15 + 40 * v22 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *v1;
    sub_1AC4F0400(v15, v26);
    *v1 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558288, &qword_1AC520A48);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AC529930;
    sub_1AC47782C(a1, v23 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *v1;
    sub_1AC4F0400(v23, v5);
    *v1 = v28;
  }
}

BOOL sub_1AC4F4F14(void *a1, uint64_t a2)
{
  v3 = (a2 + 32);
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    v7 = (*(v6 + 24))(v5, v6);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v8);
    v3 += 5;
  }

  while (v7 != (*(v9 + 24))(v8, v9));
  return v4 == 0;
}

uint64_t SimpleExtensionMap.union(_:)@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  return SimpleExtensionMap.formUnion(_:)();
}

double Google_Protobuf_SourceContext.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_SourceContext.fileName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Google_Protobuf_SourceContext.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}

void Google_Protobuf_SourceContext.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t static Google_Protobuf_SourceContext._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB557EF8 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EB559C18;
  v3 = qword_1EB559C20;
  v4 = unk_1EB559C28;
  *a1 = qword_1EB559C10;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t Google_Protobuf_SourceContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  while (1)
  {
    result = v7(a2, a3);
    if (v4 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      (*(a3 + 336))(v3, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1AC4F5320(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x1AC5B48A0](1);
    v8 = sub_1AC51EEB8();
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
        return sub_1AC51EC58();
      }

      return v8;
    case 3uLL:
      return v8;
    default:
      if ((a5 & 0xFF000000000000) == 0)
      {
        return v8;
      }

      return sub_1AC51EC58();
  }
}

void Google_Protobuf_SourceContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || ((*(a3 + 112))(), !v4))
  {
    sub_1AC4578F4(v9, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    sub_1AC4513F8(v9, v10);
  }
}

uint64_t static Google_Protobuf_SourceContext.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v5, v6);
  sub_1AC4578F4(v2, v3);
  v7 = OUTLINED_FUNCTION_44();
  v8 = MEMORY[0x1AC5B4070](v7);
  sub_1AC4513F8(v2, v3);
  v9 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v9, v10);
  return v8 & 1;
}

uint64_t Google_Protobuf_SourceContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4F5320(__dst, v1, v2, v4, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F5664(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4F5320(__dst, v2, v3, v5, v4);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4F56F4(uint64_t a1)
{
  result = sub_1AC4F571C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F571C()
{
  result = qword_1EB559C30;
  if (!qword_1EB559C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559C30);
  }

  return result;
}

unint64_t sub_1AC4F5770(uint64_t a1)
{
  *(a1 + 8) = sub_1AC4860B4();
  result = sub_1AC4F57A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4F57A0()
{
  result = qword_1EB559C38;
  if (!qword_1EB559C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559C38);
  }

  return result;
}

unint64_t sub_1AC4F57F8()
{
  result = qword_1EB559C40;
  if (!qword_1EB559C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559C40);
  }

  return result;
}

double Google_Protobuf_Value.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3000000000000000;
  *(a1 + 24) = -1;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_ListValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Struct.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1AC51ED58();
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_NullValue.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1AC4F5934@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_NullValue.rawValue.getter();
  *a1 = result;
  return result;
}

void Google_Protobuf_Value.kind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_1AC48541C(v2, v3, v4, v5);
}

__n128 Google_Protobuf_Value.kind.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  OUTLINED_FUNCTION_11_13();
  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

void Google_Protobuf_Value.nullValue.getter(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || v3 != 255)
  {
    v6 = (v2 >> 60) & 3 | (4 * (v3 & 1));
    v7 = v6 == 0;
    v8 = v6 != 0;
    if (v7)
    {
      v4 = *v1;
    }

    else
    {
      v4 = 0;
    }

    v5 = v8 | v1[1];
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = v5 & 1;
}

void sub_1AC4F5AB4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = a1[2];
  Google_Protobuf_Value.nullValue.getter(&v6);
  v5 = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
}

void sub_1AC4F5B18(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  Google_Protobuf_Value.nullValue.setter(&v2);
}

void Google_Protobuf_Value.nullValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_11_13();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

void (*Google_Protobuf_Value.nullValue.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = v1[2];
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || v3 != 255)
  {
    v6 = (v2 >> 60) & 3 | (4 * (v3 & 1));
    v7 = v6 == 0;
    v8 = v6 != 0;
    if (v7)
    {
      v4 = *v1;
    }

    else
    {
      v4 = 0;
    }

    v5 = v8 | v1[1];
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = v5 & 1;
  return sub_1AC4F5C08;
}

void sub_1AC4F5C08(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_23_11();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

double Google_Protobuf_Value.numberValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((~v1 & 0x3000000000000000) != 0 || (result = 0.0, v2 != 255))
  {
    result = *v0;
    if (((v1 >> 60) & 3 | (4 * (v2 & 1u))) != 1)
    {
      return 0.0;
    }
  }

  return result;
}

double Google_Protobuf_Value.numberValue.setter(double a1)
{
  OUTLINED_FUNCTION_11_13();
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528320;
  *(v1 + 24) = 0;
  return result;
}

double (*Google_Protobuf_Value.numberValue.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || (v4 = 0.0, v3 != 255))
  {
    v4 = *v1;
    if (((v2 >> 60) & 3 | (4 * (v3 & 1u))) != 1)
    {
      v4 = 0.0;
    }
  }

  *a1 = v4;
  return sub_1AC4F5D74;
}

double sub_1AC4F5D74(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  OUTLINED_FUNCTION_23_11();
  *v1 = v2;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528320;
  *(v1 + 24) = 0;
  return result;
}

uint64_t Google_Protobuf_Value.stringValue.getter()
{
  OUTLINED_FUNCTION_5_22();
  if (!v1 || v0 != 255)
  {
    OUTLINED_FUNCTION_21_9();
    if (v2 == 2)
    {
      v3 = OUTLINED_FUNCTION_1_1();
      sub_1AC485440(v3, v4, v5, v6);
    }
  }

  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_1AC4F5E0C@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_Value.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1AC4F5E60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Google_Protobuf_Value.stringValue.setter(v1, v2);
}

void Google_Protobuf_Value.stringValue.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_13();
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0x2000000000000000;
  *(v2 + 24) = 0;
}

void (*Google_Protobuf_Value.stringValue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v4 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_5_22();
  if (v6 && v5 == 255 || (OUTLINED_FUNCTION_21_9(), v9 != 2))
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    sub_1AC485440(v4, v3, v7, v8 & 1);
  }

  *a1 = v4;
  a1[1] = v3;
  return sub_1AC4F5F68;
}

void sub_1AC4F5F68(uint64_t a1, char a2)
{
  if (a2)
  {

    OUTLINED_FUNCTION_22_11();
  }

  else
  {
    OUTLINED_FUNCTION_22_11();
  }
}

uint64_t Google_Protobuf_Value.BOOLValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((~v1 & 0x3000000000000000) != 0 || v2 != 255)
  {
    return (((v1 >> 60) & 3 | (4 * (v2 & 1u))) == 3) & *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4F6030@<X0>(_BYTE *a1@<X8>)
{
  result = Google_Protobuf_Value.BOOLValue.getter();
  *a1 = result & 1;
  return result;
}

double Google_Protobuf_Value.BOOLValue.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_11_13();
  *v1 = v2;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528330;
  *(v1 + 24) = 0;
  return result;
}

double (*Google_Protobuf_Value.BOOLValue.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || v3 != 255)
  {
    v4 = (((v2 >> 60) & 3 | (4 * (v3 & 1u))) == 3) & *v1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4;
  return sub_1AC4F6124;
}

double sub_1AC4F6124(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_23_11();
  *v1 = v2;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528330;
  *(v1 + 24) = 0;
  return result;
}

double Google_Protobuf_Value.structValue.getter@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_22();
  if (v3 && v2 == 255 || (OUTLINED_FUNCTION_21_9(), v8 != 4))
  {
    *a1 = sub_1AC51ED58();
    result = 0.0;
    *(a1 + 8) = xmmword_1AC51F990;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;

    sub_1AC485440(v4, v5, v6, v7 & 1);
  }

  return result;
}

__n128 Google_Protobuf_Value.structValue.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  OUTLINED_FUNCTION_11_13();
  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = 1;
  return result;
}

void (*Google_Protobuf_Value.structValue.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_5_22();
  if (v4 && v3 == 255 || (OUTLINED_FUNCTION_21_9(), v9 != 4))
  {
    *a1 = sub_1AC51ED58();
    *(a1 + 8) = xmmword_1AC51F990;
  }

  else
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    sub_1AC485440(v5, v6, v7, v8 & 1);
  }

  return sub_1AC4F62EC;
}

void sub_1AC4F62EC(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v2, v3);
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_32_7();

    v4 = OUTLINED_FUNCTION_44();

    sub_1AC4513F8(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_32_7();
  }
}

double Google_Protobuf_Value.listValue.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 5)
  {
    *a1 = v2;
    a1[1] = v3;
    a1[2] = v4 & 0xCFFFFFFFFFFFFFFFLL;
    sub_1AC485440(v2, v3, v4, v5 & 1);
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    result = 0.0;
    *(a1 + 1) = xmmword_1AC51F990;
  }

  return result;
}

double sub_1AC4F63EC@<D0>(__int128 *a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v9 = *a1;
  v10 = v4;
  v11 = v5;
  v12 = a1[2];
  a2(&v7);
  *a3 = v7;
  result = *&v8;
  *(a3 + 8) = v8;
  return result;
}

uint64_t sub_1AC4F6454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6 = a1[1];
  v7 = a1[2];
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = v7;

  sub_1AC4578F4(v6, v7);
  return a5(v9);
}

void Google_Protobuf_Value.listValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2] | 0x1000000000000000;
  OUTLINED_FUNCTION_11_13();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = 1;
}

void (*Google_Protobuf_Value.listValue.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_5_22();
  if (v4 && v3 == 255 || (OUTLINED_FUNCTION_21_9(), v9 != 5))
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = xmmword_1AC51F990;
  }

  else
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7 & 0xCFFFFFFFFFFFFFFFLL;
    sub_1AC485440(v5, v6, v7, v8 & 1);
  }

  return sub_1AC4F658C;
}

void sub_1AC4F658C(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_1_1();
    sub_1AC4578F4(v2, v3);
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_31_5();

    v4 = OUTLINED_FUNCTION_1_1();

    sub_1AC4513F8(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_31_5();
  }
}

void Google_Protobuf_Value.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t static Google_Protobuf_Value.OneOf_Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v105[0] = *a1;
  v105[1] = v3;
  v105[2] = v4;
  v106 = v5;
  v107 = v6;
  v108 = v7;
  v109 = v8;
  v110 = v9;
  if (v5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  switch((v4 >> 60) & 3 | v10)
  {
    case 1uLL:
      OUTLINED_FUNCTION_7_17();
      if (v43)
      {
        v58 = 0;
      }

      if ((v57 | v58) != 1)
      {
        goto LABEL_53;
      }

      sub_1AC4F6AAC(v105);
      v56 = *&v2 == v6;
      return v56 & 1;
    case 2uLL:
      OUTLINED_FUNCTION_7_17();
      if (v43)
      {
        v42 = 0;
      }

      if ((v41 | v42) != 2)
      {

        goto LABEL_53;
      }

      v43 = v2 == *&v6 && v3 == v7;
      if (!v43)
      {
        v44 = sub_1AC51F3D8();
        v45 = OUTLINED_FUNCTION_1_28();
        sub_1AC485440(v45, v46, v47, v48);
        v49 = OUTLINED_FUNCTION_2_23();
        sub_1AC485440(v49, v50, v51, v52);
        sub_1AC4F6AAC(v105);
        return v44 & 1;
      }

      sub_1AC485440(v2, v3, v8, v9);
      v101 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v101, v102, v103, v104);
      sub_1AC4F6AAC(v105);
      goto LABEL_58;
    case 3uLL:
      OUTLINED_FUNCTION_7_17();
      if (v43)
      {
        v55 = 0;
      }

      if ((v54 | v55) != 3)
      {
        goto LABEL_53;
      }

      sub_1AC4F6AAC(v105);
      v56 = LOBYTE(v6) ^ v2 ^ 1;
      return v56 & 1;
    case 4uLL:
      OUTLINED_FUNCTION_7_17();
      if (v43)
      {
        v15 = 0;
      }

      if ((v14 | v15) != 4)
      {

        v87 = OUTLINED_FUNCTION_18_9();
        goto LABEL_52;
      }

      v16 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v16, v17, v18, v19);
      v20 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v20, v21, v22, v23);
      v24 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v28, v29, v30, v31);
      v32 = OUTLINED_FUNCTION_1_1();
      sub_1AC4F88B4(v32, v33);
      if ((v34 & 1) == 0)
      {
        goto LABEL_50;
      }

      v35 = OUTLINED_FUNCTION_18_9();
      sub_1AC4578F4(v35, v36);
      sub_1AC4578F4(v7, v8);
      v37 = OUTLINED_FUNCTION_18_9();
      v38 = MEMORY[0x1AC5B4070](v37);
      sub_1AC4513F8(v7, v8);
      v39 = OUTLINED_FUNCTION_18_9();
      goto LABEL_46;
    case 5uLL:
      OUTLINED_FUNCTION_7_17();
      if (v43)
      {
        v60 = 0;
      }

      if ((v59 | v60) != 5)
      {

        v88 = v4 & 0xCFFFFFFFFFFFFFFFLL;
        v87 = v3;
LABEL_52:
        sub_1AC4578F4(v87, v88);
LABEL_53:
        v97 = OUTLINED_FUNCTION_1_28();
        sub_1AC485440(v97, v98, v99, v100);
        sub_1AC4F6AAC(v105);
        goto LABEL_54;
      }

      v61 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v61, v62, v63, v64);
      v65 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v65, v66, v67, v68);
      v69 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v69, v70, v71, v72);
      v73 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v73, v74, v75, v76);
      v77 = OUTLINED_FUNCTION_1_1();
      if ((sub_1AC47E5E0(v77, v78) & 1) == 0)
      {
LABEL_50:
        sub_1AC4F6AAC(v105);
        v89 = OUTLINED_FUNCTION_1_28();
        sub_1AC48550C(v89, v90, v91, v92);
        v93 = OUTLINED_FUNCTION_2_23();
        sub_1AC48550C(v93, v94, v95, v96);
        goto LABEL_54;
      }

      sub_1AC4578F4(v3, v4 & 0xCFFFFFFFFFFFFFFFLL);
      sub_1AC4578F4(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
      v38 = MEMORY[0x1AC5B4070](v3, v4 & 0xCFFFFFFFFFFFFFFFLL, v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
      sub_1AC4513F8(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
      v40 = v4 & 0xCFFFFFFFFFFFFFFFLL;
      v39 = v3;
LABEL_46:
      sub_1AC4513F8(v39, v40);
      sub_1AC4F6AAC(v105);
      v79 = OUTLINED_FUNCTION_1_28();
      sub_1AC48550C(v79, v80, v81, v82);
      v83 = OUTLINED_FUNCTION_2_23();
      sub_1AC48550C(v83, v84, v85, v86);
      if (v38)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    default:
      OUTLINED_FUNCTION_7_17();
      if (v43)
      {
        v12 = 0;
      }

      if (v11 | v12)
      {
        goto LABEL_53;
      }

      sub_1AC4F6AAC(v105);
      if (v3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v2;
      }

      if (v7)
      {
        if (!v13)
        {
          goto LABEL_58;
        }

LABEL_54:
        v56 = 0;
        return v56 & 1;
      }

      if (v13 != *&v6)
      {
        goto LABEL_54;
      }

LABEL_58:
      v56 = 1;
      return v56 & 1;
  }
}

uint64_t sub_1AC4F6A14(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a2[1];
  v4 = a2[2];
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v5, v6);
  sub_1AC4578F4(v3, v4);
  v7 = OUTLINED_FUNCTION_44();
  v8 = MEMORY[0x1AC5B4070](v7);
  sub_1AC4513F8(v3, v4);
  v9 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v9, v10);
  return v8 & 1;
}

uint64_t sub_1AC4F6AAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559CA8, &qword_1AC529BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Google_Protobuf_ListValue.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void _s21InternalSwiftProtobuf07Google_C10_BoolValueV13unknownFieldsAA14UnknownStorageVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

uint64_t static Google_Protobuf_NullValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559C48);
}

uint64_t static Google_Protobuf_Struct._protobuf_nameMap.getter()
{
  if (qword_1EB557F08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559C68);
}

uint64_t sub_1AC4F6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 456);
  v8 = sub_1AC4D51A0();
  v9 = sub_1AC4F8B00();
  return v7(a2, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v8, v9, a3, a4);
}

void sub_1AC4F6DE0()
{
  OUTLINED_FUNCTION_17_13();
  if (v2)
  {
    MEMORY[0x1AC5B48A0](1);
    v3 = OUTLINED_FUNCTION_18_9();
    sub_1AC516414(v3, v4);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      v5 = v1;
      v6 = v1 >> 32;
      goto LABEL_8;
    case 2uLL:
      v5 = *(v1 + 16);
      v6 = *(v1 + 24);
LABEL_8:
      if (v5 != v6)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_Struct.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  if (!*(*v1 + 16) || (v7 = *(v2 + 424), v8 = sub_1AC4D51A0(), v9 = sub_1AC4F8B00(), v7(v5, 1, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v8, v9, v3, v2), !v0))
  {
    v10 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v10, v11);
    OUTLINED_FUNCTION_28_2();
    sub_1AC4513F8(v4, v6);
  }
}

uint64_t static Google_Protobuf_Value._protobuf_nameMap.getter()
{
  if (qword_1EB557AE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557AE8);
}

void Google_Protobuf_Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  while (1)
  {
    v7 = v6(a2, a3);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4F71AC(v9, v10, v11, v12);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_7();
        sub_1AC4F72C4(v23, v24, v25, v26);
        break;
      case 3:
        v15 = OUTLINED_FUNCTION_7();
        sub_1AC4F73BC(v15, v16, v17, v18);
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_7();
        sub_1AC4F74C4(v19, v20, v21, v22);
        break;
      case 5:
        v13 = OUTLINED_FUNCTION_44();
        sub_1AC4F75BC(v13, v14, a2, a3);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_44();
        sub_1AC4F7778(v27, v28, a2, a3);
        break;
      default:
        continue;
    }
  }
}

void sub_1AC4F71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 256;
  v8 = *(a4 + 392);
  v9 = sub_1AC4F930C();
  v8(&v16, &type metadata for Google_Protobuf_NullValue, v9, a3, a4);
  if (!v4 && (v17 & 0x100) == 0)
  {
    v10 = v16;
    v11 = v17;
    v12 = *(a2 + 16);
    if ((~v12 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
    {
      (*(a4 + 8))(a3, a4);
      v12 = *(a2 + 16);
      v13 = *(a2 + 24);
    }

    else
    {
      v13 = -1;
    }

    v14 = *a2;
    v15 = *(a2 + 8);
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    sub_1AC4854E8(v14, v15, v12, v13);
  }
}

void sub_1AC4F72C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 1;
  (*(a4 + 56))(&v13, a3, a4);
  if (!v4 && (v14 & 1) == 0)
  {
    v8 = v13;
    v9 = *(a2 + 16);
    if ((~v9 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
    {
      (*(a4 + 8))(a3, a4);
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
    }

    else
    {
      v10 = -1;
    }

    v11 = *a2;
    v12 = *(a2 + 8);
    *a2 = v8;
    *(a2 + 8) = xmmword_1AC528320;
    *(a2 + 24) = 0;
    sub_1AC4854E8(v11, v12, v9, v10);
  }
}

void sub_1AC4F73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  (*(a4 + 344))(&v14, a3, a4);
  if (v4)
  {
  }

  else
  {
    v8 = v15;
    if (v15)
    {
      v9 = v14;
      v10 = *(a2 + 16);
      if ((~v10 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
      {
        (*(a4 + 8))(a3, a4);
        v10 = *(a2 + 16);
        v11 = *(a2 + 24);
      }

      else
      {
        v11 = -1;
      }

      v12 = *a2;
      v13 = *(a2 + 8);
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0x2000000000000000;
      *(a2 + 24) = 0;
      sub_1AC4854E8(v12, v13, v10, v11);
    }
  }
}

void sub_1AC4F74C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 2;
  (*(a4 + 320))(&v13, a3, a4);
  if (!v4)
  {
    v8 = v13;
    if (v13 != 2)
    {
      v9 = *(a2 + 16);
      if ((~v9 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
      {
        (*(a4 + 8))(a3, a4);
        v9 = *(a2 + 16);
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = -1;
      }

      v11 = *a2;
      v12 = *(a2 + 8);
      *a2 = v8 & 1;
      *(a2 + 8) = xmmword_1AC528330;
      *(a2 + 24) = 0;
      sub_1AC4854E8(v11, v12, v9, v10);
    }
  }
}

void sub_1AC4F75BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = (~v8 & 0x3000000000000000) != 0 || v9 != 255;
  if (v11 && ((v8 >> 60) & 3 | (4 * (v9 & 1u))) == 4)
  {
    v13 = *a1;
    v14 = *(a1 + 8);
    sub_1AC485440(*a1, v14, v8, v9 & 1);
    sub_1AC4AEE04(0, 0, 0);
    v25 = v13;
    v26 = v14;
    v27 = v8;
  }

  v15 = *(a4 + 408);
  v16 = sub_1AC4D5050();
  v15(&v25, &type metadata for Google_Protobuf_Struct, v16, a3, a4);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  if (v4)
  {
    v20 = v25;
LABEL_15:
    sub_1AC4AEE04(v20, v26, v27);
    return;
  }

  if (!v25)
  {
    v20 = 0;
    goto LABEL_15;
  }

  if (v11)
  {
    v28 = *(a4 + 8);

    sub_1AC4578F4(v17, v19);
    v28(a3, a4);
  }

  else
  {

    sub_1AC4578F4(v17, v19);
  }

  sub_1AC4AEE04(v25, v26, v27);
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  v24 = *(a1 + 24);
  *(a1 + 24) = 1;
  sub_1AC4854E8(v21, v22, v23, v24);
}

void sub_1AC4F7778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v27 = 0;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = (~v8 & 0x3000000000000000) != 0 || v9 != 255;
  if (v11 && ((v8 >> 60) & 3 | (4 * (v9 & 1u))) == 5)
  {
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v8 & 0xCFFFFFFFFFFFFFFFLL;
    sub_1AC485440(*a1, v14, v8, v9 & 1);
    sub_1AC4AEE04(0, 0, 0);
    v26 = v13;
    v27 = v14;
    v28 = v15;
  }

  v16 = *(a4 + 408);
  v17 = sub_1AC4D4FA8();
  v16(&v26, &type metadata for Google_Protobuf_ListValue, v17, a3, a4);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  if (v4)
  {
    v21 = v26;
LABEL_15:
    sub_1AC4AEE04(v21, v27, v28);
    return;
  }

  if (!v26)
  {
    v21 = 0;
    goto LABEL_15;
  }

  if (v11)
  {
    v29 = *(a4 + 8);

    sub_1AC4578F4(v18, v20);
    v29(a3, a4);
  }

  else
  {

    sub_1AC4578F4(v18, v20);
  }

  sub_1AC4AEE04(v26, v27, v28);
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  *a1 = v19;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 | 0x1000000000000000;
  v25 = *(a1 + 24);
  *(a1 + 24) = 1;
  sub_1AC4854E8(v22, v23, v24, v25);
}

void *sub_1AC4F7938(void *result)
{
  v3 = v1;
  v4 = result;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if ((~v7 & 0x3000000000000000) == 0 && v8 == 255)
  {
    goto LABEL_3;
  }

  switch((v7 >> 60) & 3 | (4 * (v8 & 1u)))
  {
    case 1uLL:
      v27 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v27, v28, v29, v8);
      result = sub_1AC4DF9DC(v5);
      break;
    case 2uLL:
      MEMORY[0x1AC5B48A0](3);
      result = sub_1AC51EEB8();
      goto LABEL_3;
    case 3uLL:
      v24 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v24, v25, v26, v8);
      MEMORY[0x1AC5B48A0](4);
      result = sub_1AC51F488();
      goto LABEL_3;
    case 4uLL:
      MEMORY[0x1AC5B48A0](5);
      memcpy(__dst, v4, sizeof(__dst));
      v17 = OUTLINED_FUNCTION_9_17();
      sub_1AC485440(v17, v18, v19, v20);
      sub_1AC4F6DE0();
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
      }

      v21 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v21, v22, v23, v8);
      result = memcpy(v4, __dst, 0x48uLL);
      goto LABEL_3;
    case 5uLL:
      result = sub_1AC510AA4(v3, result);
      break;
    default:
      v11 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v11, v12, v13, v8);
      MEMORY[0x1AC5B48A0](1);
      if (v6)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v5;
      }

      result = MEMORY[0x1AC5B48A0](*&v14);
      goto LABEL_3;
  }

  if (!v2)
  {
LABEL_3:
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    switch(v10 >> 62)
    {
      case 1uLL:
        v15 = v9;
        v16 = v9 >> 32;
        goto LABEL_13;
      case 2uLL:
        v15 = *(v9 + 16);
        v16 = *(v9 + 24);
LABEL_13:
        if (v15 != v16)
        {
          goto LABEL_14;
        }

        return result;
      case 3uLL:
        return result;
      default:
        if ((v10 & 0xFF000000000000) == 0)
        {
          return result;
        }

LABEL_14:
        result = sub_1AC51EC58();
        break;
    }
  }

  return result;
}

void Google_Protobuf_Value.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v10 = v0[1];
  v40 = *v0;
  v41 = v10;
  v42 = v0[2];
  if ((~v10 & 0x3000000000000000) == 0 && BYTE8(v10) == 255)
  {
    goto LABEL_14;
  }

  v11 = (BYTE8(v10) & 1) != 0 ? 4 : 0;
  switch(v11 | (v41 >> 60) & 3)
  {
    case 1uLL:
      v28 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, *(&v39 + 1), v40);
      sub_1AC4F7CFC(v28, v32, v29, v30, v31);
      break;
    case 2uLL:
      v20 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, *(&v39 + 1), v40);
      sub_1AC4F7D7C(v20, v21, v22, v23);
      break;
    case 3uLL:
      v24 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, *(&v39 + 1), v40);
      sub_1AC4F7E00(v24, v25, v26, v27);
      break;
    case 4uLL:
      v16 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, *(&v39 + 1), v40);
      sub_1AC4F7E7C(v16, v17, v18, v19);
      break;
    case 5uLL:
      v33 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, *(&v39 + 1), v40);
      sub_1AC4F7F44(v33, v34, v35, v36);
      break;
    default:
      v12 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, *(&v39 + 1), v40);
      sub_1AC4F7C3C(v12, v13, v14, v15);
      break;
  }

  if (!v1)
  {
LABEL_14:
    v43 = v42;
    v39 = v42;
    sub_1AC4848F4(&v43, &v37);
    OUTLINED_FUNCTION_28_2();
    sub_1AC4513F8(v39, *(&v39 + 1));
  }
}

uint64_t *sub_1AC4F7C3C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result[1];
  v7 = result[2];
  v8 = *(result + 24);
  if ((~v7 & 0x3000000000000000) == 0 && v8 == 255 || ((v9 = (v7 >> 60) & 3, (v8 & 1) == 0) ? (v10 = 0) : (v10 = 4), v10 | v9))
  {
    __break(1u);
  }

  else
  {
    v13 = *result;
    v14 = v6;
    v11 = *(a4 + 128);
    v12 = sub_1AC4F930C();
    return v11(&v13, 1, &type metadata for Google_Protobuf_NullValue, v12, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4F7CFC(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  v6 = *(result + 24);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v7 = (v5 >> 60) & 3, (v6 & 1) == 0) ? (v8 = 0) : (v8 = 4), (v8 | v7) == 1))
  {
    a2.n128_u64[0] = *result;
    return (*(a5 + 16))(2, a4, a5, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}