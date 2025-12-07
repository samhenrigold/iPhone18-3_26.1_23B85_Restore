uint64_t sub_1B0C96A40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B07ACD88(v1, v2);

  return _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v1, v2);
}

uint64_t sub_1B0C96A84(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 109 && v5 == 117 && v6 == 108 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_6;
  }

  if (v4 == 105)
  {
    if (v5 == 109 && v6 == 97 && v7 == 103)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_6;
    }

LABEL_28:
    v12 = v5 == 101;
    goto LABEL_29;
  }

  if (v4 == 97)
  {
    if (v5 == 117)
    {
      if (v6 == 100 && v7 == 105)
      {
        v8 = a1;
        v9 = a2;
        v10 = 2;
        goto LABEL_6;
      }
    }

    else if (v5 == 112 && v6 == 112 && v7 == 108)
    {
      v8 = a1;
      v9 = a2;
      v10 = 1;
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v12 = v5 == 101;
  if (v4 == 109 && v5 == 101 && v6 == 115 && v7 == 115)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_6;
  }

LABEL_29:
  if (v4 > 0x73u)
  {
    if (v4 == 118)
    {
      if (v5 != 105 || v6 != 100 || v7 != 101)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 6;
      goto LABEL_6;
    }

    if (v4 == 116)
    {
      if (v6 != 120)
      {
        v12 = 0;
      }

      if (!v12 || v7 != 116)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 5;
      goto LABEL_6;
    }

    goto LABEL_43;
  }

  if (v4 == 101)
  {
    if (v5 != 120 || v6 != 97 || v7 != 109)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 8;
    goto LABEL_6;
  }

  if (v4 != 102)
  {
LABEL_43:
    if (v4 != 109 || v5 != 111 || v6 != 100 || v7 != 101)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 9;
LABEL_6:
    result = sub_1B0C7BDD0(v8, v9, v10);
    if (result != 10)
    {
      return result;
    }

    return 10;
  }

  if (v5 == 111 && v6 == 110 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 7;
    goto LABEL_6;
  }

  return 10;
}

uint64_t sub_1B0C96D88(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 100)
  {
    if (v5 == 105 && v6 == 103 && v7 == 101)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_16;
    }
  }

  else if (v4 == 109 && v5 == 105 && v6 == 120 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 6;
    goto LABEL_16;
  }

  if (v4 == 97 && v5 == 108 && v6 == 116 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_16;
  }

  if (v4 > 0x71u)
  {
    switch(v4)
    {
      case 'x':
        if (v5 != 45 || v6 != 109 || v7 != 105)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 7;
        goto LABEL_16;
      case 's':
        if (v5 != 105 || v6 != 103 || v7 != 110)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 10;
        goto LABEL_16;
      case 'r':
        if (v5 != 101)
        {
          return 11;
        }

        if (v6 == 112)
        {
          if (v7 != 111)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 9;
        }

        else
        {
          if (v6 != 108 || v7 != 97)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 8;
        }

LABEL_16:
        result = sub_1B0C7BC9C(v8, v9, v10);
        if (result != 11)
        {
          return result;
        }

        return 11;
    }

LABEL_43:
    if (v4 != 97 || v5 != 112 || v6 != 112 || v7 != 108)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 == 98)
  {
    if (v5 != 121 || v6 != 116 || v7 != 101)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_16;
  }

  if (v4 == 101)
  {
    if (v5 != 110 || v6 != 99 || v7 != 114)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_16;
  }

  if (v4 != 102)
  {
    goto LABEL_43;
  }

  if (v5 == 111 && v6 == 114 && v7 == 109)
  {
    v8 = a1;
    v9 = a2;
    v10 = 5;
    goto LABEL_16;
  }

  return 11;
}

uint64_t sub_1B0C970A8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_1B0C96A84(a1, a2);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        v19 = 0;
        v18 = a5 & 1;
        v14 = 16;
        goto LABEL_42;
      }

      if ((a5 & 1) == 0)
      {
        result = sub_1B0C96D88(a3, a4);
        if (result <= 5u)
        {
          if (result > 2u)
          {
            if (result == 3)
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              a3 = 3;
            }

            else
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              if (result == 4)
              {
                a3 = 4;
              }

              else
              {
                a3 = 5;
              }
            }
          }

          else if (result)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 1)
            {
              a3 = 1;
            }

            else
            {
              a3 = 2;
            }
          }

          else
          {
            a3 = 0;
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
          }

          goto LABEL_42;
        }

        if (result <= 8u)
        {
          if (result == 6)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            a3 = result;
          }

          else
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 7)
            {
              a3 = 7;
            }

            else
            {
              a3 = 8;
            }
          }

          goto LABEL_42;
        }

        if (result == 9)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 9;
          goto LABEL_42;
        }

        if (result == 10)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 10;
          goto LABEL_42;
        }
      }

      v19 = 0;
      v14 = 0;
      v18 = (a5 | 0x80u) & 0x81;
      goto LABEL_42;
    }

    v13 = a5 & 1;
    v14 = 32;
    v15 = v13;
    if (result == 3)
    {
      v16 = 48;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 64;
    }

    v17 = result == 2;
    goto LABEL_12;
  }

  v13 = a5 & 1;
  if (result <= 7u)
  {
    v14 = 80;
    v15 = a5 & 1;
    if (result == 6)
    {
      v16 = 96;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 112;
    }

    v17 = result == 5;
LABEL_12:
    if (v17)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    v19 = 0;
    if (!v17)
    {
      v14 = v16;
    }

    goto LABEL_42;
  }

  v20 = a5 & 1;
  if (result == 9)
  {
    v21 = a3;
  }

  else
  {
    v21 = a1;
  }

  if (result == 9)
  {
    v22 = a4;
  }

  else
  {
    v22 = a2;
  }

  if (result == 9)
  {
    v23 = 0;
  }

  else
  {
    v20 = a3;
    v23 = a4;
  }

  if (result == 9)
  {
    v24 = -112;
  }

  else
  {
    v24 = a5 & 1 | 0xA0;
  }

  if (result == 8)
  {
    v18 = a5 & 1;
  }

  else
  {
    a3 = v21;
    a4 = v22;
    v18 = v20;
  }

  if (result == 8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v23;
  }

  if (result == 8)
  {
    v14 = 0x80;
  }

  else
  {
    v14 = v24;
  }

LABEL_42:
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v14;
  return result;
}

char *sub_1B0C97374@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 - result;
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
    goto LABEL_59;
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_35:
      if (v4)
      {
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 1;
        v5 = v3;
LABEL_42:
        v23 = &result[v5];
        if (result)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = &v17[v16];
        if (v17)
        {
          v26 = v14;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = &v17[v15];
        }

        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v25;
        }

        v29 = a3;
        result = sub_1B0C970A8(result, v24, v27, v28, v14, v32);
        a3 = v29;
        v12 = v32[0];
        v30 = v32[1];
        v31 = v33;
        goto LABEL_56;
      }

      v12 = 0uLL;
      goto LABEL_55;
    }

    v6 = result[v5];
    if ((v6 - 127) <= 0xFFFFFFA1)
    {
      goto LABEL_18;
    }

    v7 = v6 - 34;
    v8 = v7 > 0x3B;
    v9 = (1 << v7) & 0xE0000007F0024C1;
    if (!v8 && v9 != 0)
    {
      goto LABEL_18;
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v4 < v5 + 1)
    {
      goto LABEL_58;
    }

    v11 = v5 + 1 <= v5;
    ++v5;
    if (v11)
    {
      __break(1u);
LABEL_18:
      v12 = 0uLL;
      if (!v5)
      {
        goto LABEL_55;
      }

      if (v5 >= v4)
      {
        goto LABEL_60;
      }

      v13 = result[v5];
      v14 = v13 != 47;
      if (v13 == 47)
      {
        v16 = v5 + 1;
        v15 = v5 + 1;
        v3 = 1;
        while (v4 != v16)
        {
          v19 = result[v16];
          if ((v19 - 127) < 0xFFFFFFA2)
          {
            goto LABEL_39;
          }

          v20 = v19 - 34;
          v8 = v20 > 0x3B;
          v21 = (1 << v20) & 0xE0000007F0024C1;
          if (!v8 && v21 != 0)
          {
            goto LABEL_39;
          }

          if (__OFADD__(v16, 1))
          {
            goto LABEL_61;
          }

          if (v4 < ++v16)
          {
            goto LABEL_62;
          }

          if (__OFSUB__(v16, v16 - 1))
          {
            __break(1u);
            goto LABEL_35;
          }
        }

        v16 = v4;
LABEL_39:
        if (v16 - 1 == v5)
        {
          goto LABEL_55;
        }

        v17 = result;
        v18 = v16;
        if (v16 <= v5)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v5;
      }

      if (v18 == v4)
      {
        goto LABEL_42;
      }

LABEL_55:
      v31 = -2;
      v30 = 0uLL;
LABEL_56:
      *a3 = v12;
      *(a3 + 16) = v30;
      *(a3 + 32) = v31;
      return result;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1B0C97560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = v7 >> 4;
  if (v7 >> 4 <= 4)
  {
    if (v8)
    {
LABEL_10:
      if (v6)
      {
LABEL_11:
        result = 0;
        v11 = 0;
        goto LABEL_14;
      }

LABEL_13:
      result = sub_1B0C895C4(v4, v5);
      goto LABEL_14;
    }

    v18 = v4;
    if ((v6 & 0x80) != 0)
    {
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    result = 0;
    v15 = 0;
    v17 = 0;
    v11 = qword_1B0EDFCB0[v18];
  }

  else
  {
    if (v7 >> 4 <= 9)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 24);
    result = sub_1B0C895C4(v4, v5);
    if (v7)
    {
LABEL_14:
      v15 = 0;
      v17 = 0;
      goto LABEL_15;
    }

    v12 = result;
    v13 = v6;
    v14 = v11;
    v15 = sub_1B0C895C4(v13, v9);
    result = v12;
    v17 = v16;
    v11 = v14;
  }

LABEL_15:
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v8;
  return result;
}

BOOL _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  if (v6 > 4)
  {
    if (*(a1 + 32) > 7u)
    {
      if (v6 == 8)
      {
        if (*(a2 + 32) != 8)
        {
          return 0;
        }
      }

      else
      {
        if (v6 != 9)
        {
          if (*(a2 + 32) != 10)
          {
            return 0;
          }

          v9 = a1[2];
          v8 = a1[3];
          v11 = a2[2];
          v10 = a2[3];
          if ((v4 != *a2 || v5 != a2[1]) && (sub_1B0E46A78() & 1) == 0)
          {
            return 0;
          }

          if (v8)
          {
            if (v10)
            {
              if (v9 == v11 && v8 == v10)
              {
                return 1;
              }

              return (sub_1B0E46A78() & 1) != 0;
            }
          }

          else if (!v10)
          {
            return 1;
          }

          return 0;
        }

        if (*(a2 + 32) != 9)
        {
          return 0;
        }
      }
    }

    else if (v6 == 5)
    {
      if (*(a2 + 32) != 5)
      {
        return 0;
      }
    }

    else if (v6 == 6)
    {
      if (*(a2 + 32) != 6)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 7)
    {
      return 0;
    }

LABEL_35:
    v7 = a2[1];
    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
          goto LABEL_38;
        }

        return (sub_1B0E46A78() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (*(a1 + 32) > 1u)
  {
    if (v6 == 2)
    {
      if (*(a2 + 32) != 2)
      {
        return 0;
      }
    }

    else if (v6 == 3)
    {
      if (*(a2 + 32) != 3)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 4)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a1 + 32))
  {
    if (*(a2 + 32) != 1)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v7 = a2[1];
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if (v7 != 5)
      {
        return 0;
      }

      return 1;
    }

    if (v5 == 1)
    {
      return v7 == 1;
    }

    if (v5 == 2)
    {
      return v7 == 2;
    }

LABEL_80:
    if ((v7 - 1) < 0xB)
    {
      return 0;
    }

    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
LABEL_38:
          if (v5 == v7)
          {
            return 1;
          }
        }

        return (sub_1B0E46A78() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (v5 > 8)
  {
    switch(v5)
    {
      case 9:
        return v7 == 9;
      case 10:
        return v7 == 10;
      case 11:
        return v7 == 11;
    }

    goto LABEL_80;
  }

  if (v5 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v5 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v7 != 8)
  {
    return 0;
  }

  return 1;
}

BOOL _s9IMAP2MIME9MediaTypeO9MultipartO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }

    if (a2 == 2)
    {
      return a4 == 2;
    }
  }

  else
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  if ((a4 - 1) < 0xB)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (sub_1B0E46A78() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(uint64_t result, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }
    }

    else if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0x646578696DLL;
    }

    else if (a2 == 2)
    {
      return 0x747365676964;
    }
  }

  else
  {
    sub_1B07ACFA8(result, a2);
    return 0;
  }

  return result;
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (*(a1 + 32) <= 7u)
    {
      if (v3 == 5)
      {
        if (!v1)
        {
          sub_1B07AD0E0(a1);
          return 1954047348;
        }

        v11 = 1954047348;
      }

      else
      {
        if (v3 == 6)
        {
          if (v1)
          {
            v4 = 1701079414;
LABEL_21:
            v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x2F6F00000000;
            goto LABEL_34;
          }

          sub_1B07AD0E0(a1);
          return 0x6F65646976;
        }

        if (!v1)
        {
          sub_1B07AD0E0(a1);
          return 1953394534;
        }

        v11 = 1953394534;
      }

      v5 = v11 & 0xFFFF0000FFFFFFFFLL | 0x2F00000000;
      goto LABEL_34;
    }

    if (v3 != 8)
    {
      if (v3 != 9)
      {
        v15 = *(a1 + 24);
        if (v15)
        {
          v16 = *(a1 + 16);
          v20 = *a1;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](47, 0xE100000000000000);
          MEMORY[0x1B2726E80](v16, v15);
          v10 = a1;
          goto LABEL_35;
        }

        v18 = *a1;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B07AD0E0(a1);
        return v18;
      }

      if (!v1)
      {
        sub_1B07AD0E0(a1);
        return 0x6C65646F6DLL;
      }

      v5 = 0x2F6C65646F6DLL;
LABEL_34:
      v20 = v5;
      MEMORY[0x1B2726E80](v2);
      v10 = a1;
      goto LABEL_35;
    }

    if (!v1)
    {
      sub_1B07AD0E0(a1);
      return 0x656C706D617865;
    }

    v12 = 0x6C706D617865;
    goto LABEL_28;
  }

  if (*(a1 + 32) <= 1u)
  {
    if (*(a1 + 32))
    {
      if (v1)
      {
        v5 = 0x746163696C707061;
        goto LABEL_34;
      }

      sub_1B07AD0E0(a1);
      return 0x746163696C707061;
    }

    else
    {
      if (v1)
      {
        v20 = 0x72617069746C756DLL;
        v6 = *a1;
        v8 = *(a1 + 8);
        sub_1B07ACD88(v2, v1);
        v9 = _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v6, v8);
        MEMORY[0x1B2726E80](v9);

        v10 = a1;
LABEL_35:
        sub_1B07AD0E0(v10);
        return v20;
      }

      sub_1B07AD0E0(a1);
      return 0x72617069746C756DLL;
    }
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (!v1)
      {
        sub_1B07AD0E0(a1);
        return 0x6567616D69;
      }

      v5 = 0x2F6567616D69;
      goto LABEL_34;
    }

    if (!v1)
    {
      sub_1B07AD0E0(a1);
      return 0x6567617373656DLL;
    }

    v12 = 0x67617373656DLL;
LABEL_28:
    v5 = v12 & 0xFFFFFFFFFFFFLL | 0x2F65000000000000;
    goto LABEL_34;
  }

  if (v1)
  {
    v4 = 1768191329;
    goto LABEL_21;
  }

  sub_1B07AD0E0(a1);
  return 0x6F69647561;
}

uint64_t sub_1B0C97FDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 33))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C98024(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
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

uint64_t sub_1B0C98084(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0xC)
  {
    return (v3 - 11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C980E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_1B0C98134(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0C982D8()
{
  result = qword_1EB6E5FC8;
  if (!qword_1EB6E5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FC8);
  }

  return result;
}

unint64_t sub_1B0C98330()
{
  result = qword_1EB6E5FD0;
  if (!qword_1EB6E5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FD0);
  }

  return result;
}

unint64_t sub_1B0C98384(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0C983D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 33))
  {
    return (*a1 + 118);
  }

  v3 = ((*(a1 + 32) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 32) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 118;
    *(result + 8) = 0;
    if (a3 >= 0x76)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1B0C985F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char **a7@<X8>)
{
  v82 = a7;
  v13 = sub_1B0E443C8();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v84) = a2;
  v86[16] = a2;
  v87 = a3;
  v88 = a4;
  v18 = a5;
  v89 = a5;
  v90 = a6;
  v83 = a6;
  v85[2] = sub_1B0CA1E64;
  v85[3] = v86;
  swift_retain_n();
  v19 = Message.isEmpty.getter();
  if (v19)
  {
    v82 = &v79;
    v117 = 0;
    MEMORY[0x1EEE9AC00](v19);
    *(&v79 - 48) = 0;
    *(&v79 - 5) = a3;
    *(&v79 - 4) = a4;
    *(&v79 - 3) = &v117;
    *(&v79 - 2) = a5;
    v20 = a5;
    *(&v79 - 1) = v83;
    v21 = a4;
    v22 = swift_allocObject();
    v80 = a3;
    v23 = v22 + 1;
    sub_1B0C835A8(&v118);
    v24 = v127;
    v22[9] = v126;
    v22[10] = v24;
    v22[11] = v128[0];
    *(v22 + 185) = *(v128 + 9);
    v25 = v123;
    v22[5] = v122;
    v22[6] = v25;
    v26 = v125;
    v22[7] = v124;
    v22[8] = v26;
    v27 = v119;
    v22[1] = v118;
    v22[2] = v27;
    v28 = v121;
    v22[3] = v120;
    v22[4] = v28;
    v29 = swift_allocObject();
    v81 = &v79;
    *(v29 + 16) = 2;
    MEMORY[0x1EEE9AC00](v29);
    *(&v79 - 4) = v22;
    *(&v79 - 3) = v30;
    *(&v79 - 2) = sub_1B0C84510;
    *(&v79 - 1) = (&v79 - 8);
    MEMORY[0x1EEE9AC00](v30);
    *(&v79 - 4) = (v22 + 1);
    v31 = MEMORY[0x1E69E7CC0];
    *(&v79 - 3) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    *(&v79 - 2) = 0;
    v130 = v31;
    v131 = v84;
    v133 = 0;
    v134 = 0;
    v132 = 0;

    v32 = v135;
    sub_1B0CA286C(sub_1B0C844F4, (&v79 - 6), sub_1B0C8450C, (&v79 - 6), 0, 0);
    if (v32)
    {
    }

    else
    {
      v84 = v20;
      v135 = v29;
      swift_beginAccess();
      if (*(v29 + 16) == 2 && (swift_beginAccess(), v43 = v22[10], v44 = v22[8], v103 = v22[9], v104 = v43, v45 = v22[10], v105[0] = v22[11], *(v105 + 9) = *(v22 + 185), v46 = v22[6], v47 = v22[4], v99 = v22[5], v100 = v46, v48 = v22[6], v49 = v22[8], v101 = v22[7], v102 = v49, v50 = v22[2], v95 = *v23, v96 = v50, v51 = v22[4], v53 = *v23, v52 = v22[2], v97 = v22[3], v98 = v51, v114 = v103, v115 = v45, v116[0] = v22[11], *(v116 + 9) = *(v22 + 185), v110 = v99, v111 = v48, v112 = v101, v113 = v44, v106 = v53, v107 = v52, v108 = v97, v109 = v47, sub_1B03BCF14(&v106) != 1))
      {
        v128[10] = v114;
        v128[11] = v115;
        v129[0] = v116[0];
        *(v129 + 9) = *(v116 + 9);
        v128[6] = v110;
        v128[7] = v111;
        v128[8] = v112;
        v128[9] = v113;
        v128[2] = v106;
        v128[3] = v107;
        v128[4] = v108;
        v128[5] = v109;
        v93[8] = v103;
        v93[9] = v104;
        v94[0] = v105[0];
        *(v94 + 9) = *(v105 + 9);
        v93[4] = v99;
        v93[5] = v100;
        v93[6] = v101;
        v93[7] = v102;
        v93[0] = v95;
        v93[1] = v96;
        v93[2] = v97;
        v93[3] = v98;
        sub_1B0C83634(v93, v91);
        v64 = sub_1B0C84278(0, v80, v21);
        if (v65)
        {
          v66 = (v84)(v64);

          v117 = v66 & 1;
        }

        else
        {
          v66 = v117;
        }

        sub_1B0398EFC(&v95, &qword_1EB6E5F00, &unk_1B0EDE440);
        if (v66)
        {
          v67 = 0;
        }

        else
        {
          v67 = 2;
        }

        v135[16] = v67;
        v68 = v22[10];
        v91[8] = v22[9];
        v91[9] = v68;
        v92[0] = v22[11];
        *(v92 + 9) = *(v22 + 185);
        v69 = v22[6];
        v91[4] = v22[5];
        v91[5] = v69;
        v70 = v22[8];
        v91[6] = v22[7];
        v91[7] = v70;
        v71 = v22[2];
        v91[0] = *v23;
        v91[1] = v71;
        v72 = v22[4];
        v91[2] = v22[3];
        v91[3] = v72;
        v73 = v127;
        v22[9] = v126;
        v22[10] = v73;
        v22[11] = v128[0];
        *(v22 + 185) = *(v128 + 9);
        v74 = v123;
        v22[5] = v122;
        v22[6] = v74;
        v75 = v125;
        v22[7] = v124;
        v22[8] = v75;
        v76 = v119;
        *v23 = v118;
        v22[2] = v76;
        v77 = v121;
        v22[3] = v120;
        v22[4] = v77;
        sub_1B0398EFC(v91, &qword_1EB6E5F00, &unk_1B0EDE440);
      }

      else
      {
        swift_beginAccess();
        v54 = v22[10];
        v114 = v22[9];
        v115 = v54;
        v116[0] = v22[11];
        *(v116 + 9) = *(v22 + 185);
        v55 = v22[6];
        v110 = v22[5];
        v111 = v55;
        v56 = v22[8];
        v112 = v22[7];
        v113 = v56;
        v57 = v22[2];
        v106 = *v23;
        v107 = v57;
        v58 = v22[4];
        v108 = v22[3];
        v109 = v58;
        v59 = v127;
        v22[9] = v126;
        v22[10] = v59;
        v22[11] = v128[0];
        *(v22 + 185) = *(v128 + 9);
        v60 = v123;
        v22[5] = v122;
        v22[6] = v60;
        v61 = v125;
        v22[7] = v124;
        v22[8] = v61;
        v62 = v119;
        *v23 = v118;
        v22[2] = v62;
        v63 = v121;
        v22[3] = v120;
        v22[4] = v63;
        sub_1B0398EFC(&v106, &qword_1EB6E5F00, &unk_1B0EDE440);
      }
    }

    goto LABEL_21;
  }

  v33 = v84;
  v34 = a4;
  sub_1B0C934C4(a1, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = *v17;
    v41 = v17[1];

    v42 = v135;
    sub_1B0C9B80C(v40, v41, v33, a3, v34, v18, v83);
    sub_1B0391D50(v40, v41);
    if (v42)
    {
    }

    goto LABEL_21;
  }

  v35 = v79;
  v36 = v80;
  v37 = v81;
  v38 = (*(v80 + 4))(v79, v17, v81);
  MEMORY[0x1EEE9AC00](v38);
  *(&v79 - 4) = v35;
  *(&v79 - 3) = sub_1B0CA1EFC;
  *(&v79 - 2) = v85;
  v39 = v135;
  sub_1B0E44328();
  if (!v39)
  {
    (*(v36 + 8))(v35, v37);
LABEL_21:
  }

  (*(v36 + 8))(v35, v37);
}

uint64_t sub_1B0C98E34@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char **a7@<X8>)
{
  v82 = a7;
  v13 = sub_1B0E443C8();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v84) = a2;
  v86[16] = a2;
  v87 = a3;
  v88 = a4;
  v18 = a5;
  v89 = a5;
  v90 = a6;
  v83 = a6;
  v85[2] = sub_1B0CA1E38;
  v85[3] = v86;
  swift_retain_n();
  v19 = Message.isEmpty.getter();
  if (v19)
  {
    v82 = &v79;
    v117 = 0;
    MEMORY[0x1EEE9AC00](v19);
    *(&v79 - 48) = 1;
    *(&v79 - 5) = a3;
    *(&v79 - 4) = a4;
    *(&v79 - 3) = &v117;
    *(&v79 - 2) = a5;
    v20 = a5;
    *(&v79 - 1) = v83;
    v21 = a4;
    v22 = swift_allocObject();
    v80 = a3;
    v23 = v22 + 1;
    sub_1B0C835A8(&v118);
    v24 = v127;
    v22[9] = v126;
    v22[10] = v24;
    v22[11] = v128[0];
    *(v22 + 185) = *(v128 + 9);
    v25 = v123;
    v22[5] = v122;
    v22[6] = v25;
    v26 = v125;
    v22[7] = v124;
    v22[8] = v26;
    v27 = v119;
    v22[1] = v118;
    v22[2] = v27;
    v28 = v121;
    v22[3] = v120;
    v22[4] = v28;
    v29 = swift_allocObject();
    v81 = &v79;
    *(v29 + 16) = 2;
    MEMORY[0x1EEE9AC00](v29);
    *(&v79 - 4) = v22;
    *(&v79 - 3) = v30;
    *(&v79 - 2) = sub_1B0C84488;
    *(&v79 - 1) = (&v79 - 8);
    MEMORY[0x1EEE9AC00](v30);
    *(&v79 - 4) = (v22 + 1);
    v31 = MEMORY[0x1E69E7CC0];
    *(&v79 - 3) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    *(&v79 - 2) = 0;
    v130 = v31;
    v131 = v84;
    v133 = 0;
    v134 = 0;
    v132 = 0;

    v32 = v135;
    sub_1B0CA286C(sub_1B0C844F4, (&v79 - 6), sub_1B0C8450C, (&v79 - 6), 0, 0);
    if (v32)
    {
    }

    else
    {
      v84 = v20;
      v135 = v29;
      swift_beginAccess();
      if (*(v29 + 16) == 2 && (swift_beginAccess(), v43 = v22[10], v44 = v22[8], v103 = v22[9], v104 = v43, v45 = v22[10], v105[0] = v22[11], *(v105 + 9) = *(v22 + 185), v46 = v22[6], v47 = v22[4], v99 = v22[5], v100 = v46, v48 = v22[6], v49 = v22[8], v101 = v22[7], v102 = v49, v50 = v22[2], v95 = *v23, v96 = v50, v51 = v22[4], v53 = *v23, v52 = v22[2], v97 = v22[3], v98 = v51, v114 = v103, v115 = v45, v116[0] = v22[11], *(v116 + 9) = *(v22 + 185), v110 = v99, v111 = v48, v112 = v101, v113 = v44, v106 = v53, v107 = v52, v108 = v97, v109 = v47, sub_1B03BCF14(&v106) != 1))
      {
        v128[10] = v114;
        v128[11] = v115;
        v129[0] = v116[0];
        *(v129 + 9) = *(v116 + 9);
        v128[6] = v110;
        v128[7] = v111;
        v128[8] = v112;
        v128[9] = v113;
        v128[2] = v106;
        v128[3] = v107;
        v128[4] = v108;
        v128[5] = v109;
        v93[8] = v103;
        v93[9] = v104;
        v94[0] = v105[0];
        *(v94 + 9) = *(v105 + 9);
        v93[4] = v99;
        v93[5] = v100;
        v93[6] = v101;
        v93[7] = v102;
        v93[0] = v95;
        v93[1] = v96;
        v93[2] = v97;
        v93[3] = v98;
        sub_1B0C83634(v93, v91);
        v64 = sub_1B0C84278(1, v80, v21);
        if (v65)
        {
          v66 = (v84)(v64);

          v117 = v66 & 1;
        }

        else
        {
          v66 = v117;
        }

        sub_1B0398EFC(&v95, &qword_1EB6E5F00, &unk_1B0EDE440);
        if (v66)
        {
          v67 = 0;
        }

        else
        {
          v67 = 2;
        }

        v135[16] = v67;
        v68 = v22[10];
        v91[8] = v22[9];
        v91[9] = v68;
        v92[0] = v22[11];
        *(v92 + 9) = *(v22 + 185);
        v69 = v22[6];
        v91[4] = v22[5];
        v91[5] = v69;
        v70 = v22[8];
        v91[6] = v22[7];
        v91[7] = v70;
        v71 = v22[2];
        v91[0] = *v23;
        v91[1] = v71;
        v72 = v22[4];
        v91[2] = v22[3];
        v91[3] = v72;
        v73 = v127;
        v22[9] = v126;
        v22[10] = v73;
        v22[11] = v128[0];
        *(v22 + 185) = *(v128 + 9);
        v74 = v123;
        v22[5] = v122;
        v22[6] = v74;
        v75 = v125;
        v22[7] = v124;
        v22[8] = v75;
        v76 = v119;
        *v23 = v118;
        v22[2] = v76;
        v77 = v121;
        v22[3] = v120;
        v22[4] = v77;
        sub_1B0398EFC(v91, &qword_1EB6E5F00, &unk_1B0EDE440);
      }

      else
      {
        swift_beginAccess();
        v54 = v22[10];
        v114 = v22[9];
        v115 = v54;
        v116[0] = v22[11];
        *(v116 + 9) = *(v22 + 185);
        v55 = v22[6];
        v110 = v22[5];
        v111 = v55;
        v56 = v22[8];
        v112 = v22[7];
        v113 = v56;
        v57 = v22[2];
        v106 = *v23;
        v107 = v57;
        v58 = v22[4];
        v108 = v22[3];
        v109 = v58;
        v59 = v127;
        v22[9] = v126;
        v22[10] = v59;
        v22[11] = v128[0];
        *(v22 + 185) = *(v128 + 9);
        v60 = v123;
        v22[5] = v122;
        v22[6] = v60;
        v61 = v125;
        v22[7] = v124;
        v22[8] = v61;
        v62 = v119;
        *v23 = v118;
        v22[2] = v62;
        v63 = v121;
        v22[3] = v120;
        v22[4] = v63;
        sub_1B0398EFC(&v106, &qword_1EB6E5F00, &unk_1B0EDE440);
      }
    }

    goto LABEL_21;
  }

  v33 = v84;
  v34 = a4;
  sub_1B0C934C4(a1, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = *v17;
    v41 = v17[1];

    v42 = v135;
    sub_1B0C9CF04(v40, v41, v33, a3, v34, v18, v83);
    sub_1B0391D50(v40, v41);
    if (v42)
    {
    }

    goto LABEL_21;
  }

  v35 = v79;
  v36 = v80;
  v37 = v81;
  v38 = (*(v80 + 4))(v79, v17, v81);
  MEMORY[0x1EEE9AC00](v38);
  *(&v79 - 4) = v35;
  *(&v79 - 3) = sub_1B0CA1EFC;
  *(&v79 - 2) = v85;
  v39 = v135;
  sub_1B0E44328();
  if (!v39)
  {
    (*(v36 + 8))(v35, v37);
LABEL_21:
  }

  (*(v36 + 8))(v35, v37);
}

uint64_t sub_1B0C9967C@<X0>(uint64_t a1@<X0>, char a2@<W1>, int64_t a3@<X2>, void *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v84 = a7;
  v13 = sub_1B0E443C8();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a2 & 1;
  v89[16] = v18;
  v86 = a6;
  v87 = a3;
  v90 = a3;
  v91 = a4;
  v85 = a5;
  v92 = a5;
  v93 = a6;
  v88[2] = sub_1B0CA1D98;
  v88[3] = v89;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v19 = sub_1B0CA3C44(0, 0, 0, 0);
    v20 = MEMORY[0x1E69E7CC0];
    v21 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v19);
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      *&v117 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
      sub_1B0CA4364(v23, v24, v18, &v117, v19);

      v25 = v117;
    }

    else
    {

      v25 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    }

    v35 = v85;
    v34 = v86;
    v36 = swift_allocObject();
    v84 = &v80;
    *(v36 + 16) = v25;
    MEMORY[0x1EEE9AC00](v36);
    *(&v80 - 4) = v87;
    *(&v80 - 3) = a4;
    *(&v80 - 2) = v35;
    *(&v80 - 1) = v34;
    v37 = swift_allocObject();
    v38 = v37 + 1;
    sub_1B0C835A8(&v117);
    v39 = v126;
    v37[9] = v125;
    v37[10] = v39;
    v37[11] = v127[0];
    *(v37 + 185) = *(v127 + 9);
    v40 = v122;
    v37[5] = v121;
    v37[6] = v40;
    v41 = v124;
    v37[7] = v123;
    v37[8] = v41;
    v42 = v118;
    v37[1] = v117;
    v37[2] = v42;
    v43 = v120;
    v37[3] = v119;
    v37[4] = v43;
    v44 = swift_allocObject();
    v83 = &v80;
    *(v44 + 16) = 2;
    MEMORY[0x1EEE9AC00](v44);
    *(&v80 - 4) = v37;
    *(&v80 - 3) = v45;
    *(&v80 - 2) = sub_1B0C86A10;
    *(&v80 - 1) = (&v80 - 6);
    MEMORY[0x1EEE9AC00](v45);
    *(&v80 - 4) = (v37 + 1);
    *(&v80 - 3) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    *(&v80 - 2) = 0;
    v140 = v20;
    v141 = 3;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    v46 = v145;
    sub_1B0CA286C(sub_1B0C844A0, v47, sub_1B0C844C0, (&v80 - 6), sub_1B0C86A08, v36);
    if (v46)
    {
    }

    else
    {
      swift_beginAccess();
      if (*(v44 + 16) == 2 && (swift_beginAccess(), v48 = v37[10], v49 = v37[8], v103 = v37[9], v104 = v48, v50 = v37[10], v105[0] = v37[11], *(v105 + 9) = *(v37 + 185), v51 = v37[6], v52 = v37[4], v99 = v37[5], v100 = v51, v53 = v37[6], v54 = v37[8], v101 = v37[7], v102 = v54, v55 = v37[2], v96[0] = *v38, v96[1] = v55, v56 = v37[4], v58 = *v38, v57 = v37[2], v97 = v37[3], v98 = v56, v114 = v103, v115 = v50, v116[0] = v37[11], *(v116 + 9) = *(v37 + 185), v110 = v99, v111 = v53, v112 = v101, v113 = v49, v106 = v58, v107 = v57, v108 = v97, v109 = v52, sub_1B03BCF14(&v106) != 1))
      {
        v145 = v36;
        v138[8] = v114;
        v138[9] = v115;
        v139[0] = v116[0];
        *(v139 + 9) = *(v116 + 9);
        v138[4] = v110;
        v138[5] = v111;
        v138[6] = v112;
        v138[7] = v113;
        v138[0] = v106;
        v138[1] = v107;
        v138[2] = v108;
        v138[3] = v109;
        sub_1B0CA1DC8(v96, v94);

        sub_1B0CA1DC8(v96, v94);
        sub_1B0C85B6C(v138, v87, a4, v128);
        v133 = v128[4];
        v134 = v128[5];
        v135 = v128[6];
        v136 = v128[7];
        v129 = v128[0];
        v130 = v128[1];
        v131 = v128[2];
        v132 = v128[3];
        if (sub_1B0C8699C(&v129) != 1)
        {
          v137[4] = v133;
          v137[5] = v134;
          v137[6] = v135;
          v137[7] = v136;
          v137[0] = v129;
          v137[1] = v130;
          v137[2] = v131;
          v137[3] = v132;
          v85(v137);
          sub_1B0398EFC(v128, &qword_1EB6E5F30, "nP\b");
        }

        sub_1B0398EFC(v96, &qword_1EB6E5F00, &unk_1B0EDE440);
        *(v44 + 16) = 2;
        v69 = v37[10];
        v94[8] = v37[9];
        v94[9] = v69;
        v95[0] = v37[11];
        *(v95 + 9) = *(v37 + 185);
        v70 = v37[6];
        v94[4] = v37[5];
        v94[5] = v70;
        v71 = v37[8];
        v94[6] = v37[7];
        v94[7] = v71;
        v72 = v37[2];
        v94[0] = *v38;
        v94[1] = v72;
        v73 = v37[4];
        v94[2] = v37[3];
        v94[3] = v73;
        v74 = v126;
        v37[9] = v125;
        v37[10] = v74;
        v37[11] = v127[0];
        *(v37 + 185) = *(v127 + 9);
        v75 = v122;
        v37[5] = v121;
        v37[6] = v75;
        v76 = v124;
        v37[7] = v123;
        v37[8] = v76;
        v77 = v118;
        *v38 = v117;
        v37[2] = v77;
        v78 = v120;
        v37[3] = v119;
        v37[4] = v78;
        sub_1B0398EFC(v94, &qword_1EB6E5F00, &unk_1B0EDE440);
      }

      else
      {
        swift_beginAccess();
        v59 = v37[10];
        v114 = v37[9];
        v115 = v59;
        v116[0] = v37[11];
        *(v116 + 9) = *(v37 + 185);
        v60 = v37[6];
        v110 = v37[5];
        v111 = v60;
        v61 = v37[8];
        v112 = v37[7];
        v113 = v61;
        v62 = v37[2];
        v106 = *v38;
        v107 = v62;
        v63 = v37[4];
        v108 = v37[3];
        v109 = v63;
        v64 = v126;
        v37[9] = v125;
        v37[10] = v64;
        v37[11] = v127[0];
        *(v37 + 185) = *(v127 + 9);
        v65 = v122;
        v37[5] = v121;
        v37[6] = v65;
        v66 = v124;
        v37[7] = v123;
        v37[8] = v66;
        v67 = v118;
        *v38 = v117;
        v37[2] = v67;
        v68 = v120;
        v37[3] = v119;
        v37[4] = v68;
        sub_1B0398EFC(&v106, &qword_1EB6E5F00, &unk_1B0EDE440);
      }
    }

    goto LABEL_20;
  }

  sub_1B0C934C4(a1, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = *v17;
    v32 = v17[1];

    v33 = v145;
    sub_1B0C9E60C(v31, v32, v18, v87, a4, v85, v86);
    sub_1B0391D50(v31, v32);
    if (v33)
    {
    }

    goto LABEL_20;
  }

  v26 = v81;
  v27 = v82;
  v28 = v83;
  v29 = (*(v82 + 32))(v81, v17, v83);
  MEMORY[0x1EEE9AC00](v29);
  *(&v80 - 4) = v26;
  *(&v80 - 3) = sub_1B0CA1EFC;
  *(&v80 - 2) = v88;
  v30 = v145;
  sub_1B0E44328();
  if (!v30)
  {
    (*(v27 + 8))(v26, v28);
LABEL_20:
  }

  (*(v27 + 8))(v26, v28);
}

uint64_t sub_1B0C99F70@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v49 = a7;
  v48 = a8;
  v14 = sub_1B0E443C8();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a2;
  v53[16] = a2;
  v51 = a3;
  v54 = a3;
  v55 = a4;
  v19 = a5;
  v85 = a4;
  v20 = a6;
  v21 = v49;
  v56 = a5;
  v57 = v20;
  v58 = v49;
  v52[2] = sub_1B0CA1D28;
  v52[3] = v53;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v22 = v50;
    sub_1B0C88870(3u, 0, 0, 0, 0, v21, &v60);
    if (!v22)
    {
      v23 = v67;
      *&v69 = v60;
      BYTE8(v69) = v61;
      v70 = v62;
      v71 = v63;
      *&v72 = v64;
      WORD4(v72) = v65;
      v73 = v66;
      sub_1B0C87794();
      v83[2] = v71;
      v83[3] = v72;
      v84 = v73;
      v83[0] = v69;
      v83[1] = v70;
      sub_1B0C86F90(3u, v47, v19, v20);
      sub_1B0C8880C(v83);
      v30 = v23[2];
      if (v30)
      {
        v50 = 0;
        v31 = v30 - 1;
        v48 = v23;
        for (i = v23 + 7; ; i += 11)
        {
          v33 = *(i - 2);
          v34 = *(i - 1);
          v35 = *i;
          v36 = i[1];
          v37 = i[2];
          v38 = i[3];
          v39 = i[4];
          v40 = i[6];
          v41 = i[7];
          v42 = *(i + 40);
          v74[0] = *(i - 3);
          v74[1] = v33;
          v74[2] = v34;
          v75 = v35;
          v76 = v36;
          v77 = v37;
          v78 = v38;
          v79 = v39;
          v80 = v42;
          v81 = v40;
          v82 = v41;
          v60 = v74[0];
          v61 = v33;
          *&v62 = v34;
          BYTE8(v62) = v35;
          *&v63 = v36;
          *(&v63 + 1) = v37;
          v64 = v38;
          v65 = v39;
          LOBYTE(v66) = v42;
          v67 = v40;
          v68 = v41;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C8926C(v36, v37, v38, v39, v42);
          sub_1B07B47AC(v74, &v59);
          sub_1B07AD030(&v60);
          v51(v74);
          sub_1B07AD030(v74);
          if (!v31)
          {
            break;
          }

          --v31;
        }
      }
    }
  }

  else
  {
    sub_1B0C934C4(a1, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v44;
      v25 = v45;
      v26 = v46;
      v27 = (*(v45 + 32))(v44, v18, v46);
      MEMORY[0x1EEE9AC00](v27);
      *(&v44 - 4) = v24;
      *(&v44 - 3) = sub_1B0CA1D5C;
      *(&v44 - 2) = v52;
      sub_1B0E44328();
      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v28 = *v18;
      v29 = v18[1];

      sub_1B0CA01E4(v28, v29, v47, v51, v85, v19, v20, v21);
      sub_1B0391D50(v28, v29);
    }
  }
}

uint64_t sub_1B0C9A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1B0E443C8();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a2;
  v24 = a3;
  v20 = sub_1B0CA1D0C;
  v21 = &v22;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1B0C8D8F8(0, 0, 0, 0, a2, a3, a4);
  }

  else
  {
    sub_1B0C934C4(a1, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = v25;
      v15 = (*(v25 + 32))(v10, v13, v8);
      MEMORY[0x1EEE9AC00](v15);
      *&v19[-32] = v10;
      *&v19[-24] = sub_1B0C9B7D0;
      *&v19[-16] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380);
      sub_1B0E44328();
      (*(v14 + 8))(v10, v8);
    }

    else
    {
      v16 = *v13;
      v17 = v13[1];

      sub_1B0CA0B0C(v16, v17, a2, a3, a4);
      sub_1B0391D50(v16, v17);
    }
  }
}

uint64_t sub_1B0C9A6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1B0C9B7B4;
  v20 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1B0CB9328(0, 0, 0, 0, a2, a3);
LABEL_3:
  }

  sub_1B0C934C4(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = (*(v8 + 32))(v10, v13, v7);
    MEMORY[0x1EEE9AC00](v15);
    *&v18[-32] = v10;
    *&v18[-24] = sub_1B0C9B7D0;
    *&v18[-16] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3D58, &qword_1B0EE0DD0);
    sub_1B0E44328();
    if (!v3)
    {
      (*(v8 + 8))(v10, v7);
      goto LABEL_3;
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v16 = *v13;
    v17 = v13[1];

    sub_1B0CA0DC0(v16, v17, a2, a3);
    sub_1B0391D50(v16, v17);
    if (!v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0C9A9DC(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Message.isEmpty.getter())
  {
    a1(&v20, 0, 0);
    if (!v3)
    {
      v13 = v20;
    }
  }

  else
  {
    sub_1B0C934C4(v2, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = (*(v7 + 32))(v9, v12, v6);
      MEMORY[0x1EEE9AC00](v14);
      *(&v19 - 4) = v9;
      *(&v19 - 3) = a1;
      *(&v19 - 2) = a2;
      sub_1B0E44328();
      (*(v7 + 8))(v9, v6);
      if (!v3)
      {
        v13 = v20;
      }
    }

    else
    {
      v15 = *v12;
      v16 = v12[1];
      v17 = sub_1B0C9B660(a1, a2, *v12, v16);
      sub_1B0391D50(v15, v16);
      if (!v3)
      {
        LOBYTE(v20) = v17 & 1;
        v13 = v17 & 1;
      }
    }
  }

  return v13 & 1;
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E443C8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0C9AD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v8 = sub_1B0E443C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = a1;
  v43 = a2;
  result = Message.isEmpty.getter();
  if (result)
  {
    v16 = a1 == 0;
LABEL_56:
    *v39 = v16;
    return result;
  }

  sub_1B0C934C4(a3, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = 0;
    v19 = *v14;
    v18 = v14[1];
    v20 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v27 = *(v19 + 16);
        v38 = *(v19 + 24);
        v28 = sub_1B0E42A98();
        if (v28)
        {
          v29 = v28;
          v30 = sub_1B0E42AC8();
          if (__OFSUB__(v27, v30))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v21 = v27 - v30 + v29;
        }

        else
        {
          v21 = 0;
        }

        v31 = v38 - v27;
        if (!__OFSUB__(v38, v27))
        {
          v32 = sub_1B0E42AB8();
          v33 = a2 - a1;
          if (!a1)
          {
            v33 = 0;
          }

          if (!v21)
          {
            goto LABEL_46;
          }

          v16 = 0;
          if (v32 >= v31)
          {
            v34 = v31;
          }

          else
          {
            v34 = v32;
          }

          if (a1 && v33 == v34)
          {
            goto LABEL_48;
          }

          goto LABEL_54;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else if (v20)
    {
      v21 = (v19 >> 32) - v19;
      if (v19 >> 32 >= v19)
      {
        v22 = sub_1B0E42A98();
        if (!v22)
        {
          goto LABEL_12;
        }

        v23 = sub_1B0E42AC8();
        if (!__OFSUB__(v19, v23))
        {
          v22 += v19 - v23;
LABEL_12:
          v24 = sub_1B0E42AB8();
          v25 = a2 - a1;
          if (!a1)
          {
            v25 = 0;
          }

          if (v22)
          {
            v16 = 0;
            if (v24 >= v21)
            {
              v26 = (v19 >> 32) - v19;
            }

            else
            {
              v26 = v24;
            }

            if (!a1 || v25 != v26)
            {
LABEL_44:
              while (v4)
              {

                sub_1B0391D50(v19, v18);
                __break(1u);
LABEL_46:
                v16 = v33 == 0;
                if (a1 && !v33)
                {
LABEL_48:
                  if (v21)
                  {
                    v36 = v21 == a1;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v16 = v36;
                }

LABEL_54:
                ;
              }

              goto LABEL_55;
            }
          }

          else
          {
            v16 = v25 == 0;
            if (!a1 || v25)
            {
              goto LABEL_44;
            }
          }

          if (v22)
          {
            v35 = v22 == a1;
          }

          else
          {
            v35 = 0;
          }

          v16 = v35;
          goto LABEL_44;
        }

LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    result = sub_1B0391D50(v19, v18);
    goto LABEL_56;
  }

  v17 = (*(v9 + 32))(v11, v14, v8);
  MEMORY[0x1EEE9AC00](v17);
  *(&v37 - 4) = v11;
  *(&v37 - 3) = sub_1B0CA1C40;
  *(&v37 - 2) = &v41;
  sub_1B0E44328();
  if (!v4)
  {
    result = (*(v9 + 8))(v11, v8);
    v16 = v40;
    goto LABEL_56;
  }

  result = (*(v9 + 8))(v11, v8);
  __break(1u);
  return result;
}

BOOL Message.isEmpty.getter()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0C934C4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1B075CEE0();
    sub_1B0E45668();
    sub_1B0E456C8();
    (*(v3 + 8))(v5, v2);
    return v18[1] == v18[0];
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        sub_1B0391D50(v11, v12);
        return v16 == v15;
      }

      else
      {
        sub_1B0391D50(v11, v12);
        return 1;
      }
    }

    else if (v13)
    {
      v17 = *v8;
      sub_1B0391D50(v11, v12);
      return v17 == v17 >> 32;
    }

    else
    {
      v14 = v8[1];
      sub_1B0391D50(v11, v12);
      return BYTE6(v14) == 0;
    }
  }
}

unint64_t Message.count.getter()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0C934C4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v3 + 8))(v5, v2);
    return v9;
  }

  result = *v8;
  v11 = v8[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = v8[1];
      sub_1B0391D50(result, v11);
      return BYTE6(v13);
    }

    goto LABEL_11;
  }

  if (v12 != 2)
  {
    sub_1B0391D50(result, v11);
    return 0;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  sub_1B0391D50(result, v11);
  result = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_11:
    v16 = HIDWORD(result);
    v17 = result;
    result = sub_1B0391D50(result, v11);
    if (__OFSUB__(v16, v17))
    {
      __break(1u);
    }

    else
    {
      return v16 - v17;
    }
  }

  return result;
}

uint64_t sub_1B0C9B588(uint64_t a1)
{
  result = type metadata accessor for Message.Data(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0C9B5F4(uint64_t a1)
{
  result = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0C9B660(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v13[0] = a3;
      LOWORD(v13[1]) = a4;
      BYTE2(v13[1]) = BYTE2(a4);
      BYTE3(v13[1]) = BYTE3(a4);
      BYTE4(v13[1]) = BYTE4(a4);
      BYTE5(v13[1]) = BYTE5(a4);
      v7 = v13 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B0CA0F78(v8, v9, a1);
    return v10 & 1;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v7 = v13;
LABEL_9:
  v10 = (a1)(&v12, v13, v7);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1B0C9B80C(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v245 = a3;
  v321 = *MEMORY[0x1E69E9840];
  v14 = a2 >> 62;
  swift_retain_n();
  v246 = v7;
  v247 = a5;
  v243 = a7;
  v244 = a4;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      memset(v249, 0, 14);

      v242 = &v237;
      v248 = 0;
      MEMORY[0x1EEE9AC00](v75);
      v231 = 0;
      v232 = a4;
      v233 = a5;
      v234 = &v248;
      v235 = a6;
      v236 = a7;
      v17 = swift_allocObject();
      sub_1B0C835A8(&v294);
      v76 = v303;
      v17[9] = v302;
      v17[10] = v76;
      v17[11] = v304[0];
      *(v17 + 185) = *(v304 + 9);
      v77 = v299;
      v17[5] = v298;
      v17[6] = v77;
      v78 = v301;
      v17[7] = v300;
      v17[8] = v78;
      v79 = v295;
      v17[1] = v294;
      v17[2] = v79;
      v80 = v297;
      v17[3] = v296;
      v17[4] = v80;
      v81 = swift_allocObject();
      v240 = v230;
      *(v81 + 16) = 2;
      v82 = (v81 + 16);
      MEMORY[0x1EEE9AC00](v81);
      v226 = v17;
      v227 = v83;
      v241 = v83;
      v228 = sub_1B0C84510;
      v229 = v230;
      MEMORY[0x1EEE9AC00](v83);
      v222 = v17 + 1;
      v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
      v224 = 0;
      swift_retain_n();
      v27 = v246;
      sub_1B0CA33D0(v245, 0, 0, v249, v249);
      if (!v27)
      {
        v18 = v17 + 1;
        v32 = v17 + 1;
        v316 = MEMORY[0x1E69E7CC0];
        v317 = v84;
        v318 = v85;
        v319 = v86;
        v320 = v87;
        sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
        swift_beginAccess();
        if (*v82 != 2)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v107 = v17[10];
        v108 = v17[8];
        v280 = v17[9];
        v281 = v107;
        v109 = v17[10];
        v282[0] = v17[11];
        *(v282 + 9) = *(v17 + 185);
        v110 = v17[6];
        v111 = v17[4];
        v276 = v17[5];
        v277 = v110;
        v112 = v17[6];
        v113 = v17[8];
        v278 = v17[7];
        v279 = v113;
        v114 = v17[2];
        v272 = *v18;
        v273 = v114;
        v115 = v17[4];
        v117 = *v18;
        v116 = v17[2];
        v274 = v17[3];
        v275 = v115;
        v291 = v280;
        v292 = v109;
        v293[0] = v17[11];
        *(v293 + 9) = *(v17 + 185);
        v287 = v276;
        v288 = v112;
        v289 = v278;
        v290 = v108;
        v283 = v117;
        v284 = v116;
        v285 = v274;
        v286 = v111;
        if (sub_1B03BCF14(&v283) == 1)
        {
          goto LABEL_49;
        }

        v313 = v291;
        v314 = v292;
        v315[0] = v293[0];
        *(v315 + 9) = *(v293 + 9);
        v309 = v287;
        v310 = v288;
        v311 = v289;
        v312 = v290;
        v305 = v283;
        v306 = v284;
        v307 = v285;
        v308 = v286;
        v269 = v280;
        v270 = v281;
        v271[0] = v282[0];
        *(v271 + 9) = *(v282 + 9);
        v265 = v276;
        v266 = v277;
        v267 = v278;
        v268 = v279;
        v261 = v272;
        v262 = v273;
        v263 = v274;
        v264 = v275;
        sub_1B0C83634(&v261, &v250);
        v174 = sub_1B0C84278(0, v244, v247);
        if (v175)
        {
          v176 = (a6)(v174);

          v248 = v176 & 1;
        }

        else
        {
          v176 = v248;
        }

        sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
        v183 = v17[9];
        v195 = v17[11];
        v259 = v17[10];
        v260[0] = v195;
        *(v260 + 9) = *(v17 + 185);
        v196 = v17[6];
        v254 = v17[5];
        v255 = v196;
        v186 = v17[8];
        v256 = v17[7];
        if (v176)
        {
          v187 = 0;
        }

        else
        {
          v187 = 2;
        }

        goto LABEL_70;
      }

      goto LABEL_30;
    }

    v242 = a6;
    v44 = *(a1 + 16);
    a6 = *(a1 + 24);

    v241 = &v237;
    swift_retain_n();
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1B0E42AC8();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      v48 = v44 - v47 + v46;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v48 = 0;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
LABEL_11:
        v50 = sub_1B0E42AB8();
        if (v50 >= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        if (v48)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        if ((v52 & 0x8000000000000000) == 0)
        {
          v240 = &v237;
          v53 = &v51[v48];
          if (!v48)
          {
            v53 = 0;
          }

          v237 = v53;
          LOBYTE(v249[0]) = 0;
          MEMORY[0x1EEE9AC00](v50);
          v231 = 0;
          v232 = v244;
          v233 = a5;
          v234 = v249;
          v235 = v242;
          v236 = v243;
          v54 = swift_allocObject();
          sub_1B0C835A8(&v294);
          v55 = v303;
          v54[9] = v302;
          v54[10] = v55;
          v54[11] = v304[0];
          *(v54 + 185) = *(v304 + 9);
          v56 = v299;
          v54[5] = v298;
          v54[6] = v56;
          v57 = v301;
          v54[7] = v300;
          v54[8] = v57;
          v58 = v295;
          v54[1] = v294;
          v54[2] = v58;
          v59 = v297;
          v54[3] = v296;
          v54[4] = v59;
          v60 = swift_allocObject();
          v238 = v230;
          *(v60 + 16) = 2;
          v61 = (v60 + 16);
          MEMORY[0x1EEE9AC00](v60);
          v226 = v54;
          v227 = v62;
          v239 = v62;
          v228 = sub_1B0C84510;
          v229 = v230;
          MEMORY[0x1EEE9AC00](v62);
          v222 = v54 + 1;
          v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
          v224 = 0;

          v63 = v246;
          sub_1B0CA33D0(v245, 0, v52, v48, v237);
          if (!v63)
          {
            v68 = v54 + 1;
            v69 = v244;
            v316 = MEMORY[0x1E69E7CC0];
            v317 = v64;
            v318 = v65;
            v319 = v66;
            v320 = v67;
            sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
            swift_beginAccess();
            if (*v61 == 2 && (swift_beginAccess(), v129 = v54[10], v130 = v54[8], v280 = v54[9], v281 = v129, v131 = v54[10], v282[0] = v54[11], *(v282 + 9) = *(v54 + 185), v132 = v54[6], v133 = v54[4], v276 = v54[5], v277 = v132, v134 = v54[6], v135 = v54[8], v278 = v54[7], v279 = v135, v136 = v54[2], v272 = *v68, v273 = v136, v137 = v54[4], v139 = *v68, v138 = v54[2], v274 = v54[3], v275 = v137, v291 = v280, v292 = v131, v293[0] = v54[11], *(v293 + 9) = *(v54 + 185), v287 = v276, v288 = v134, v289 = v278, v290 = v130, v283 = v139, v284 = v138, v285 = v274, v286 = v133, sub_1B03BCF14(&v283) != 1))
            {
              v313 = v291;
              v314 = v292;
              v315[0] = v293[0];
              *(v315 + 9) = *(v293 + 9);
              v309 = v287;
              v310 = v288;
              v311 = v289;
              v312 = v290;
              v305 = v283;
              v306 = v284;
              v307 = v285;
              v308 = v286;
              v269 = v280;
              v270 = v281;
              v271[0] = v282[0];
              *(v271 + 9) = *(v282 + 9);
              v265 = v276;
              v266 = v277;
              v267 = v278;
              v268 = v279;
              v261 = v272;
              v262 = v273;
              v263 = v274;
              v264 = v275;
              sub_1B0C83634(&v261, &v250);
              v177 = sub_1B0C84278(0, v69, v247);
              if (v178)
              {
                v179 = (v242)(v177);

                LOBYTE(v249[0]) = v179 & 1;
              }

              else
              {
                v179 = v249[0];
              }

              sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
              v197 = v54[9];
              v198 = v54[11];
              v259 = v54[10];
              v260[0] = v198;
              *(v260 + 9) = *(v54 + 185);
              v199 = v54[6];
              v254 = v54[5];
              v255 = v199;
              v200 = v54[8];
              v256 = v54[7];
              if (v179)
              {
                v201 = 0;
              }

              else
              {
                v201 = 2;
              }

              *(v239 + 16) = v201;
              v257 = v200;
              v258 = v197;
              v202 = v54[2];
              v250 = *v68;
              v251 = v202;
              v203 = v54[4];
              v252 = v54[3];
              v253 = v203;
              v204 = v303;
              v54[9] = v302;
              v54[10] = v204;
              v54[11] = v304[0];
              *(v54 + 185) = *(v304 + 9);
              v205 = v299;
              v54[5] = v298;
              v54[6] = v205;
              v206 = v301;
              v54[7] = v300;
              v54[8] = v206;
              v207 = v295;
              *v68 = v294;
              v54[2] = v207;
              v208 = v297;
              v54[3] = v296;
              v54[4] = v208;
              sub_1B0398EFC(&v250, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            else
            {
              swift_beginAccess();
              v140 = v54[10];
              v313 = v54[9];
              v314 = v140;
              v315[0] = v54[11];
              *(v315 + 9) = *(v54 + 185);
              v141 = v54[6];
              v309 = v54[5];
              v310 = v141;
              v142 = v54[8];
              v311 = v54[7];
              v312 = v142;
              v143 = v54[2];
              v305 = *v68;
              v306 = v143;
              v144 = v54[4];
              v307 = v54[3];
              v308 = v144;
              v145 = v303;
              v54[9] = v302;
              v54[10] = v145;
              v54[11] = v304[0];
              *(v54 + 185) = *(v304 + 9);
              v146 = v299;
              v54[5] = v298;
              v54[6] = v146;
              v147 = v301;
              v54[7] = v300;
              v54[8] = v147;
              v148 = v295;
              *v68 = v294;
              v54[2] = v148;
              v149 = v297;
              v54[3] = v296;
              v54[4] = v149;
              sub_1B0398EFC(&v305, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }

        goto LABEL_88;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!v14)
  {
    v249[0] = a1;
    LOWORD(v249[1]) = a2;
    BYTE2(v249[1]) = BYTE2(a2);
    BYTE3(v249[1]) = BYTE3(a2);
    BYTE4(v249[1]) = BYTE4(a2);
    v15 = BYTE6(a2);
    BYTE5(v249[1]) = BYTE5(a2);

    v242 = &v237;
    v248 = 0;
    MEMORY[0x1EEE9AC00](v16);
    v231 = 0;
    v232 = a4;
    v233 = a5;
    v234 = &v248;
    v235 = a6;
    v236 = a7;
    v17 = swift_allocObject();
    v18 = v17 + 1;
    sub_1B0C835A8(&v294);
    v19 = v303;
    v17[9] = v302;
    v17[10] = v19;
    v17[11] = v304[0];
    *(v17 + 185) = *(v304 + 9);
    v20 = v299;
    v17[5] = v298;
    v17[6] = v20;
    v21 = v301;
    v17[7] = v300;
    v17[8] = v21;
    v22 = v295;
    v17[1] = v294;
    v17[2] = v22;
    v23 = v297;
    v17[3] = v296;
    v17[4] = v23;
    v24 = swift_allocObject();
    v240 = v230;
    *(v24 + 16) = 2;
    v25 = (v24 + 16);
    MEMORY[0x1EEE9AC00](v24);
    v226 = v17;
    v227 = v26;
    v241 = v26;
    v228 = sub_1B0C84510;
    v229 = v230;
    MEMORY[0x1EEE9AC00](v26);
    v222 = v17 + 1;
    v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    v224 = 0;
    swift_retain_n();
    v27 = v246;
    sub_1B0CA33D0(v245, 0, v15, v249, v249 + v15);
    if (!v27)
    {
      v32 = v17 + 1;
      v316 = MEMORY[0x1E69E7CC0];
      v317 = v28;
      v318 = v29;
      v319 = v30;
      v320 = v31;
      sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
      swift_beginAccess();
      if (*v25 != 2 || (swift_beginAccess(), v33 = v17[10], v34 = v17[8], v280 = v17[9], v281 = v33, v35 = v17[10], v282[0] = v17[11], *(v282 + 9) = *(v17 + 185), v36 = v17[6], v37 = v17[4], v276 = v17[5], v277 = v36, v38 = v17[6], v39 = v17[8], v278 = v17[7], v279 = v39, v40 = v17[2], v272 = *v18, v273 = v40, v41 = v17[4], v43 = *v18, v42 = v17[2], v274 = v17[3], v275 = v41, v291 = v280, v292 = v35, v293[0] = v17[11], *(v293 + 9) = *(v17 + 185), v287 = v276, v288 = v38, v289 = v278, v290 = v34, v283 = v43, v284 = v42, v285 = v274, v286 = v37, sub_1B03BCF14(&v283) == 1))
      {
LABEL_49:
        swift_beginAccess();
        v118 = v17[10];
        v313 = v17[9];
        v314 = v118;
        v315[0] = v17[11];
        *(v315 + 9) = *(v17 + 185);
        v119 = v17[6];
        v309 = v17[5];
        v310 = v119;
        v120 = v17[8];
        v311 = v17[7];
        v312 = v120;
        v121 = v17[2];
        v305 = *v18;
        v306 = v121;
        v122 = v17[4];
        v307 = v17[3];
        v308 = v122;
        v123 = v303;
        v17[9] = v302;
        v17[10] = v123;
        v17[11] = v304[0];
        *(v17 + 185) = *(v304 + 9);
        v124 = v299;
        v17[5] = v298;
        v17[6] = v124;
        v125 = v301;
        v17[7] = v300;
        v17[8] = v125;
        v126 = v295;
        *v18 = v294;
        v17[2] = v126;
        v127 = v297;
        v17[3] = v296;
        v17[4] = v127;
        sub_1B0398EFC(&v305, &qword_1EB6E5F00, &unk_1B0EDE440);

LABEL_50:
      }

      v313 = v291;
      v314 = v292;
      v315[0] = v293[0];
      *(v315 + 9) = *(v293 + 9);
      v309 = v287;
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v305 = v283;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v269 = v280;
      v270 = v281;
      v271[0] = v282[0];
      *(v271 + 9) = *(v282 + 9);
      v265 = v276;
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v261 = v272;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      sub_1B0C83634(&v261, &v250);
      v171 = sub_1B0C84278(0, v244, v247);
      if (v172)
      {
        v173 = (a6)(v171);

        v248 = v173 & 1;
      }

      else
      {
        v173 = v248;
      }

      sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
      v183 = v17[9];
      v184 = v17[11];
      v259 = v17[10];
      v260[0] = v184;
      *(v260 + 9) = *(v17 + 185);
      v185 = v17[6];
      v254 = v17[5];
      v255 = v185;
      v186 = v17[8];
      v256 = v17[7];
      if (v173)
      {
        v187 = 0;
      }

      else
      {
        v187 = 2;
      }

LABEL_70:
      *(v241 + 16) = v187;
      v257 = v186;
      v258 = v183;
      v188 = v32[1];
      v250 = *v32;
      v251 = v188;
      v189 = v32[3];
      v252 = v32[2];
      v253 = v189;
      v190 = v303;
      v32[8] = v302;
      v32[9] = v190;
      v32[10] = v304[0];
      *(v32 + 169) = *(v304 + 9);
      v191 = v299;
      v32[4] = v298;
      v32[5] = v191;
      v192 = v301;
      v32[6] = v300;
      v32[7] = v192;
      v193 = v295;
      *v32 = v294;
      v32[1] = v193;
      v194 = v297;
      v32[2] = v296;
      v32[3] = v194;
      sub_1B0398EFC(&v250, &qword_1EB6E5F00, &unk_1B0EDE440);

      goto LABEL_50;
    }

LABEL_30:
  }

  v70 = a1;
  v44 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v241 = &v237;
  swift_retain_n();
  v71 = sub_1B0E42A98();
  if (!v71)
  {
LABEL_34:
    v74 = 0;
    goto LABEL_35;
  }

  v72 = v71;
  v73 = sub_1B0E42AC8();
  if (__OFSUB__(v70, v73))
  {
    goto LABEL_91;
  }

  v74 = v70 - v73 + v72;
LABEL_35:
  v88 = sub_1B0E42AB8();
  if (v88 >= v44)
  {
    v89 = v44;
  }

  else
  {
    v89 = v88;
  }

  if (v74)
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  if (v90 < 0)
  {
    goto LABEL_89;
  }

  v240 = &v237;
  v91 = v89 + v74;
  if (!v74)
  {
    v91 = 0;
  }

  v237 = v91;
  LOBYTE(v249[0]) = 0;
  MEMORY[0x1EEE9AC00](v88);
  v231 = 0;
  v232 = v244;
  v233 = a5;
  v234 = v249;
  v235 = a6;
  v236 = v243;
  v92 = swift_allocObject();
  v93 = v92 + 1;
  sub_1B0C835A8(&v294);
  v94 = v303;
  v92[9] = v302;
  v92[10] = v94;
  v92[11] = v304[0];
  *(v92 + 185) = *(v304 + 9);
  v95 = v299;
  v92[5] = v298;
  v92[6] = v95;
  v96 = v301;
  v92[7] = v300;
  v92[8] = v96;
  v97 = v295;
  v92[1] = v294;
  v92[2] = v97;
  v98 = v297;
  v92[3] = v296;
  v92[4] = v98;
  v99 = swift_allocObject();
  v238 = v230;
  v242 = a6;
  *(v99 + 16) = 2;
  v100 = (v99 + 16);
  MEMORY[0x1EEE9AC00](v99);
  v226 = v92;
  v227 = v101;
  v239 = v101;
  v228 = sub_1B0C84510;
  v229 = v230;
  MEMORY[0x1EEE9AC00](v101);
  v222 = v92 + 1;
  v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v224 = 0;

  v63 = v246;
  sub_1B0CA33D0(v245, 0, v90, v74, v237);
  if (!v63)
  {
    v106 = v242;
    v316 = MEMORY[0x1E69E7CC0];
    v317 = v102;
    v318 = v103;
    v319 = v104;
    v320 = v105;
    sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
    swift_beginAccess();
    if (*v100 == 2 && (swift_beginAccess(), v150 = v92[10], v151 = v92[8], v280 = v92[9], v281 = v150, v152 = v92[10], v282[0] = v92[11], *(v282 + 9) = *(v92 + 185), v153 = v92[6], v154 = v92[4], v276 = v92[5], v277 = v153, v155 = v92[6], v156 = v92[8], v278 = v92[7], v279 = v156, v157 = v92[2], v272 = *v93, v273 = v157, v158 = v92[4], v160 = *v93, v159 = v92[2], v274 = v92[3], v275 = v158, v291 = v280, v292 = v152, v293[0] = v92[11], *(v293 + 9) = *(v92 + 185), v287 = v276, v288 = v155, v289 = v278, v290 = v151, v283 = v160, v284 = v159, v285 = v274, v286 = v154, sub_1B03BCF14(&v283) != 1))
    {
      v313 = v291;
      v314 = v292;
      v315[0] = v293[0];
      *(v315 + 9) = *(v293 + 9);
      v309 = v287;
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v305 = v283;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v269 = v280;
      v270 = v281;
      v271[0] = v282[0];
      *(v271 + 9) = *(v282 + 9);
      v265 = v276;
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v261 = v272;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      sub_1B0C83634(&v261, &v250);
      v180 = sub_1B0C84278(0, v244, v247);
      if (v181)
      {
        v182 = (v106)(v180);

        LOBYTE(v249[0]) = v182 & 1;
      }

      else
      {
        v182 = v249[0];
      }

      sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
      v209 = v92[9];
      v210 = v92[11];
      v259 = v92[10];
      v260[0] = v210;
      *(v260 + 9) = *(v92 + 185);
      v211 = v92[6];
      v254 = v92[5];
      v255 = v211;
      v212 = v92[8];
      v256 = v92[7];
      if (v182)
      {
        v213 = 0;
      }

      else
      {
        v213 = 2;
      }

      *(v239 + 16) = v213;
      v257 = v212;
      v258 = v209;
      v214 = v92[2];
      v250 = *v93;
      v251 = v214;
      v215 = v92[4];
      v252 = v92[3];
      v253 = v215;
      v216 = v303;
      v92[9] = v302;
      v92[10] = v216;
      v92[11] = v304[0];
      *(v92 + 185) = *(v304 + 9);
      v217 = v299;
      v92[5] = v298;
      v92[6] = v217;
      v218 = v301;
      v92[7] = v300;
      v92[8] = v218;
      v219 = v295;
      *v93 = v294;
      v92[2] = v219;
      v220 = v297;
      v92[3] = v296;
      v92[4] = v220;
      sub_1B0398EFC(&v250, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    else
    {
      swift_beginAccess();
      v161 = v92[10];
      v313 = v92[9];
      v314 = v161;
      v315[0] = v92[11];
      *(v315 + 9) = *(v92 + 185);
      v162 = v92[6];
      v309 = v92[5];
      v310 = v162;
      v163 = v92[8];
      v311 = v92[7];
      v312 = v163;
      v164 = v92[2];
      v305 = *v93;
      v306 = v164;
      v165 = v92[4];
      v307 = v92[3];
      v308 = v165;
      v166 = v303;
      v92[9] = v302;
      v92[10] = v166;
      v92[11] = v304[0];
      *(v92 + 185) = *(v304 + 9);
      v167 = v299;
      v92[5] = v298;
      v92[6] = v167;
      v168 = v301;
      v92[7] = v300;
      v92[8] = v168;
      v169 = v295;
      *v93 = v294;
      v92[2] = v169;
      v170 = v297;
      v92[3] = v296;
      v92[4] = v170;
      sub_1B0398EFC(&v305, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    goto LABEL_23;
  }

LABEL_22:

LABEL_23:
}

uint64_t sub_1B0C9CF04(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v245 = a3;
  v321 = *MEMORY[0x1E69E9840];
  v14 = a2 >> 62;
  swift_retain_n();
  v246 = v7;
  v247 = a5;
  v243 = a7;
  v244 = a4;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      memset(v249, 0, 14);

      v242 = &v237;
      v248 = 0;
      MEMORY[0x1EEE9AC00](v75);
      v231 = 1;
      v232 = a4;
      v233 = a5;
      v234 = &v248;
      v235 = a6;
      v236 = a7;
      v17 = swift_allocObject();
      sub_1B0C835A8(&v294);
      v76 = v303;
      v17[9] = v302;
      v17[10] = v76;
      v17[11] = v304[0];
      *(v17 + 185) = *(v304 + 9);
      v77 = v299;
      v17[5] = v298;
      v17[6] = v77;
      v78 = v301;
      v17[7] = v300;
      v17[8] = v78;
      v79 = v295;
      v17[1] = v294;
      v17[2] = v79;
      v80 = v297;
      v17[3] = v296;
      v17[4] = v80;
      v81 = swift_allocObject();
      v240 = v230;
      *(v81 + 16) = 2;
      v82 = (v81 + 16);
      MEMORY[0x1EEE9AC00](v81);
      v226 = v17;
      v227 = v83;
      v241 = v83;
      v228 = sub_1B0C84510;
      v229 = v230;
      MEMORY[0x1EEE9AC00](v83);
      v222 = v17 + 1;
      v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
      v224 = 0;
      swift_retain_n();
      v27 = v246;
      sub_1B0CA33D0(v245, 0, 0, v249, v249);
      if (!v27)
      {
        v18 = v17 + 1;
        v32 = v17 + 1;
        v316 = MEMORY[0x1E69E7CC0];
        v317 = v84;
        v318 = v85;
        v319 = v86;
        v320 = v87;
        sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
        swift_beginAccess();
        if (*v82 != 2)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v107 = v17[10];
        v108 = v17[8];
        v280 = v17[9];
        v281 = v107;
        v109 = v17[10];
        v282[0] = v17[11];
        *(v282 + 9) = *(v17 + 185);
        v110 = v17[6];
        v111 = v17[4];
        v276 = v17[5];
        v277 = v110;
        v112 = v17[6];
        v113 = v17[8];
        v278 = v17[7];
        v279 = v113;
        v114 = v17[2];
        v272 = *v18;
        v273 = v114;
        v115 = v17[4];
        v117 = *v18;
        v116 = v17[2];
        v274 = v17[3];
        v275 = v115;
        v291 = v280;
        v292 = v109;
        v293[0] = v17[11];
        *(v293 + 9) = *(v17 + 185);
        v287 = v276;
        v288 = v112;
        v289 = v278;
        v290 = v108;
        v283 = v117;
        v284 = v116;
        v285 = v274;
        v286 = v111;
        if (sub_1B03BCF14(&v283) == 1)
        {
          goto LABEL_49;
        }

        v313 = v291;
        v314 = v292;
        v315[0] = v293[0];
        *(v315 + 9) = *(v293 + 9);
        v309 = v287;
        v310 = v288;
        v311 = v289;
        v312 = v290;
        v305 = v283;
        v306 = v284;
        v307 = v285;
        v308 = v286;
        v269 = v280;
        v270 = v281;
        v271[0] = v282[0];
        *(v271 + 9) = *(v282 + 9);
        v265 = v276;
        v266 = v277;
        v267 = v278;
        v268 = v279;
        v261 = v272;
        v262 = v273;
        v263 = v274;
        v264 = v275;
        sub_1B0C83634(&v261, &v250);
        v174 = sub_1B0C84278(1, v244, v247);
        if (v175)
        {
          v176 = (a6)(v174);

          v248 = v176 & 1;
        }

        else
        {
          v176 = v248;
        }

        sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
        v183 = v17[9];
        v195 = v17[11];
        v259 = v17[10];
        v260[0] = v195;
        *(v260 + 9) = *(v17 + 185);
        v196 = v17[6];
        v254 = v17[5];
        v255 = v196;
        v186 = v17[8];
        v256 = v17[7];
        if (v176)
        {
          v187 = 0;
        }

        else
        {
          v187 = 2;
        }

        goto LABEL_70;
      }

      goto LABEL_30;
    }

    v242 = a6;
    v44 = *(a1 + 16);
    a6 = *(a1 + 24);

    v241 = &v237;
    swift_retain_n();
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1B0E42AC8();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      v48 = v44 - v47 + v46;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v48 = 0;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
LABEL_11:
        v50 = sub_1B0E42AB8();
        if (v50 >= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        if (v48)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        if ((v52 & 0x8000000000000000) == 0)
        {
          v240 = &v237;
          v53 = &v51[v48];
          if (!v48)
          {
            v53 = 0;
          }

          v237 = v53;
          LOBYTE(v249[0]) = 0;
          MEMORY[0x1EEE9AC00](v50);
          v231 = 1;
          v232 = v244;
          v233 = a5;
          v234 = v249;
          v235 = v242;
          v236 = v243;
          v54 = swift_allocObject();
          sub_1B0C835A8(&v294);
          v55 = v303;
          v54[9] = v302;
          v54[10] = v55;
          v54[11] = v304[0];
          *(v54 + 185) = *(v304 + 9);
          v56 = v299;
          v54[5] = v298;
          v54[6] = v56;
          v57 = v301;
          v54[7] = v300;
          v54[8] = v57;
          v58 = v295;
          v54[1] = v294;
          v54[2] = v58;
          v59 = v297;
          v54[3] = v296;
          v54[4] = v59;
          v60 = swift_allocObject();
          v238 = v230;
          *(v60 + 16) = 2;
          v61 = (v60 + 16);
          MEMORY[0x1EEE9AC00](v60);
          v226 = v54;
          v227 = v62;
          v239 = v62;
          v228 = sub_1B0C84510;
          v229 = v230;
          MEMORY[0x1EEE9AC00](v62);
          v222 = v54 + 1;
          v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
          v224 = 0;

          v63 = v246;
          sub_1B0CA33D0(v245, 0, v52, v48, v237);
          if (!v63)
          {
            v68 = v54 + 1;
            v69 = v244;
            v316 = MEMORY[0x1E69E7CC0];
            v317 = v64;
            v318 = v65;
            v319 = v66;
            v320 = v67;
            sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
            swift_beginAccess();
            if (*v61 == 2 && (swift_beginAccess(), v129 = v54[10], v130 = v54[8], v280 = v54[9], v281 = v129, v131 = v54[10], v282[0] = v54[11], *(v282 + 9) = *(v54 + 185), v132 = v54[6], v133 = v54[4], v276 = v54[5], v277 = v132, v134 = v54[6], v135 = v54[8], v278 = v54[7], v279 = v135, v136 = v54[2], v272 = *v68, v273 = v136, v137 = v54[4], v139 = *v68, v138 = v54[2], v274 = v54[3], v275 = v137, v291 = v280, v292 = v131, v293[0] = v54[11], *(v293 + 9) = *(v54 + 185), v287 = v276, v288 = v134, v289 = v278, v290 = v130, v283 = v139, v284 = v138, v285 = v274, v286 = v133, sub_1B03BCF14(&v283) != 1))
            {
              v313 = v291;
              v314 = v292;
              v315[0] = v293[0];
              *(v315 + 9) = *(v293 + 9);
              v309 = v287;
              v310 = v288;
              v311 = v289;
              v312 = v290;
              v305 = v283;
              v306 = v284;
              v307 = v285;
              v308 = v286;
              v269 = v280;
              v270 = v281;
              v271[0] = v282[0];
              *(v271 + 9) = *(v282 + 9);
              v265 = v276;
              v266 = v277;
              v267 = v278;
              v268 = v279;
              v261 = v272;
              v262 = v273;
              v263 = v274;
              v264 = v275;
              sub_1B0C83634(&v261, &v250);
              v177 = sub_1B0C84278(1, v69, v247);
              if (v178)
              {
                v179 = (v242)(v177);

                LOBYTE(v249[0]) = v179 & 1;
              }

              else
              {
                v179 = v249[0];
              }

              sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
              v197 = v54[9];
              v198 = v54[11];
              v259 = v54[10];
              v260[0] = v198;
              *(v260 + 9) = *(v54 + 185);
              v199 = v54[6];
              v254 = v54[5];
              v255 = v199;
              v200 = v54[8];
              v256 = v54[7];
              if (v179)
              {
                v201 = 0;
              }

              else
              {
                v201 = 2;
              }

              *(v239 + 16) = v201;
              v257 = v200;
              v258 = v197;
              v202 = v54[2];
              v250 = *v68;
              v251 = v202;
              v203 = v54[4];
              v252 = v54[3];
              v253 = v203;
              v204 = v303;
              v54[9] = v302;
              v54[10] = v204;
              v54[11] = v304[0];
              *(v54 + 185) = *(v304 + 9);
              v205 = v299;
              v54[5] = v298;
              v54[6] = v205;
              v206 = v301;
              v54[7] = v300;
              v54[8] = v206;
              v207 = v295;
              *v68 = v294;
              v54[2] = v207;
              v208 = v297;
              v54[3] = v296;
              v54[4] = v208;
              sub_1B0398EFC(&v250, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            else
            {
              swift_beginAccess();
              v140 = v54[10];
              v313 = v54[9];
              v314 = v140;
              v315[0] = v54[11];
              *(v315 + 9) = *(v54 + 185);
              v141 = v54[6];
              v309 = v54[5];
              v310 = v141;
              v142 = v54[8];
              v311 = v54[7];
              v312 = v142;
              v143 = v54[2];
              v305 = *v68;
              v306 = v143;
              v144 = v54[4];
              v307 = v54[3];
              v308 = v144;
              v145 = v303;
              v54[9] = v302;
              v54[10] = v145;
              v54[11] = v304[0];
              *(v54 + 185) = *(v304 + 9);
              v146 = v299;
              v54[5] = v298;
              v54[6] = v146;
              v147 = v301;
              v54[7] = v300;
              v54[8] = v147;
              v148 = v295;
              *v68 = v294;
              v54[2] = v148;
              v149 = v297;
              v54[3] = v296;
              v54[4] = v149;
              sub_1B0398EFC(&v305, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }

        goto LABEL_88;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!v14)
  {
    v249[0] = a1;
    LOWORD(v249[1]) = a2;
    BYTE2(v249[1]) = BYTE2(a2);
    BYTE3(v249[1]) = BYTE3(a2);
    BYTE4(v249[1]) = BYTE4(a2);
    v15 = BYTE6(a2);
    BYTE5(v249[1]) = BYTE5(a2);

    v242 = &v237;
    v248 = 0;
    MEMORY[0x1EEE9AC00](v16);
    v231 = 1;
    v232 = a4;
    v233 = a5;
    v234 = &v248;
    v235 = a6;
    v236 = a7;
    v17 = swift_allocObject();
    v18 = v17 + 1;
    sub_1B0C835A8(&v294);
    v19 = v303;
    v17[9] = v302;
    v17[10] = v19;
    v17[11] = v304[0];
    *(v17 + 185) = *(v304 + 9);
    v20 = v299;
    v17[5] = v298;
    v17[6] = v20;
    v21 = v301;
    v17[7] = v300;
    v17[8] = v21;
    v22 = v295;
    v17[1] = v294;
    v17[2] = v22;
    v23 = v297;
    v17[3] = v296;
    v17[4] = v23;
    v24 = swift_allocObject();
    v240 = v230;
    *(v24 + 16) = 2;
    v25 = (v24 + 16);
    MEMORY[0x1EEE9AC00](v24);
    v226 = v17;
    v227 = v26;
    v241 = v26;
    v228 = sub_1B0C84510;
    v229 = v230;
    MEMORY[0x1EEE9AC00](v26);
    v222 = v17 + 1;
    v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    v224 = 0;
    swift_retain_n();
    v27 = v246;
    sub_1B0CA33D0(v245, 0, v15, v249, v249 + v15);
    if (!v27)
    {
      v32 = v17 + 1;
      v316 = MEMORY[0x1E69E7CC0];
      v317 = v28;
      v318 = v29;
      v319 = v30;
      v320 = v31;
      sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
      swift_beginAccess();
      if (*v25 != 2 || (swift_beginAccess(), v33 = v17[10], v34 = v17[8], v280 = v17[9], v281 = v33, v35 = v17[10], v282[0] = v17[11], *(v282 + 9) = *(v17 + 185), v36 = v17[6], v37 = v17[4], v276 = v17[5], v277 = v36, v38 = v17[6], v39 = v17[8], v278 = v17[7], v279 = v39, v40 = v17[2], v272 = *v18, v273 = v40, v41 = v17[4], v43 = *v18, v42 = v17[2], v274 = v17[3], v275 = v41, v291 = v280, v292 = v35, v293[0] = v17[11], *(v293 + 9) = *(v17 + 185), v287 = v276, v288 = v38, v289 = v278, v290 = v34, v283 = v43, v284 = v42, v285 = v274, v286 = v37, sub_1B03BCF14(&v283) == 1))
      {
LABEL_49:
        swift_beginAccess();
        v118 = v17[10];
        v313 = v17[9];
        v314 = v118;
        v315[0] = v17[11];
        *(v315 + 9) = *(v17 + 185);
        v119 = v17[6];
        v309 = v17[5];
        v310 = v119;
        v120 = v17[8];
        v311 = v17[7];
        v312 = v120;
        v121 = v17[2];
        v305 = *v18;
        v306 = v121;
        v122 = v17[4];
        v307 = v17[3];
        v308 = v122;
        v123 = v303;
        v17[9] = v302;
        v17[10] = v123;
        v17[11] = v304[0];
        *(v17 + 185) = *(v304 + 9);
        v124 = v299;
        v17[5] = v298;
        v17[6] = v124;
        v125 = v301;
        v17[7] = v300;
        v17[8] = v125;
        v126 = v295;
        *v18 = v294;
        v17[2] = v126;
        v127 = v297;
        v17[3] = v296;
        v17[4] = v127;
        sub_1B0398EFC(&v305, &qword_1EB6E5F00, &unk_1B0EDE440);

LABEL_50:
      }

      v313 = v291;
      v314 = v292;
      v315[0] = v293[0];
      *(v315 + 9) = *(v293 + 9);
      v309 = v287;
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v305 = v283;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v269 = v280;
      v270 = v281;
      v271[0] = v282[0];
      *(v271 + 9) = *(v282 + 9);
      v265 = v276;
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v261 = v272;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      sub_1B0C83634(&v261, &v250);
      v171 = sub_1B0C84278(1, v244, v247);
      if (v172)
      {
        v173 = (a6)(v171);

        v248 = v173 & 1;
      }

      else
      {
        v173 = v248;
      }

      sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
      v183 = v17[9];
      v184 = v17[11];
      v259 = v17[10];
      v260[0] = v184;
      *(v260 + 9) = *(v17 + 185);
      v185 = v17[6];
      v254 = v17[5];
      v255 = v185;
      v186 = v17[8];
      v256 = v17[7];
      if (v173)
      {
        v187 = 0;
      }

      else
      {
        v187 = 2;
      }

LABEL_70:
      *(v241 + 16) = v187;
      v257 = v186;
      v258 = v183;
      v188 = v32[1];
      v250 = *v32;
      v251 = v188;
      v189 = v32[3];
      v252 = v32[2];
      v253 = v189;
      v190 = v303;
      v32[8] = v302;
      v32[9] = v190;
      v32[10] = v304[0];
      *(v32 + 169) = *(v304 + 9);
      v191 = v299;
      v32[4] = v298;
      v32[5] = v191;
      v192 = v301;
      v32[6] = v300;
      v32[7] = v192;
      v193 = v295;
      *v32 = v294;
      v32[1] = v193;
      v194 = v297;
      v32[2] = v296;
      v32[3] = v194;
      sub_1B0398EFC(&v250, &qword_1EB6E5F00, &unk_1B0EDE440);

      goto LABEL_50;
    }

LABEL_30:
  }

  v70 = a1;
  v44 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v241 = &v237;
  swift_retain_n();
  v71 = sub_1B0E42A98();
  if (!v71)
  {
LABEL_34:
    v74 = 0;
    goto LABEL_35;
  }

  v72 = v71;
  v73 = sub_1B0E42AC8();
  if (__OFSUB__(v70, v73))
  {
    goto LABEL_91;
  }

  v74 = v70 - v73 + v72;
LABEL_35:
  v88 = sub_1B0E42AB8();
  if (v88 >= v44)
  {
    v89 = v44;
  }

  else
  {
    v89 = v88;
  }

  if (v74)
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  if (v90 < 0)
  {
    goto LABEL_89;
  }

  v240 = &v237;
  v91 = v89 + v74;
  if (!v74)
  {
    v91 = 0;
  }

  v237 = v91;
  LOBYTE(v249[0]) = 0;
  MEMORY[0x1EEE9AC00](v88);
  v231 = 1;
  v232 = v244;
  v233 = a5;
  v234 = v249;
  v235 = a6;
  v236 = v243;
  v92 = swift_allocObject();
  v93 = v92 + 1;
  sub_1B0C835A8(&v294);
  v94 = v303;
  v92[9] = v302;
  v92[10] = v94;
  v92[11] = v304[0];
  *(v92 + 185) = *(v304 + 9);
  v95 = v299;
  v92[5] = v298;
  v92[6] = v95;
  v96 = v301;
  v92[7] = v300;
  v92[8] = v96;
  v97 = v295;
  v92[1] = v294;
  v92[2] = v97;
  v98 = v297;
  v92[3] = v296;
  v92[4] = v98;
  v99 = swift_allocObject();
  v238 = v230;
  v242 = a6;
  *(v99 + 16) = 2;
  v100 = (v99 + 16);
  MEMORY[0x1EEE9AC00](v99);
  v226 = v92;
  v227 = v101;
  v239 = v101;
  v228 = sub_1B0C84510;
  v229 = v230;
  MEMORY[0x1EEE9AC00](v101);
  v222 = v92 + 1;
  v223 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v224 = 0;

  v63 = v246;
  sub_1B0CA33D0(v245, 0, v90, v74, v237);
  if (!v63)
  {
    v106 = v242;
    v316 = MEMORY[0x1E69E7CC0];
    v317 = v102;
    v318 = v103;
    v319 = v104;
    v320 = v105;
    sub_1B0CA286C(sub_1B0C844F4, v225, sub_1B0C8450C, v221, 0, 0);
    swift_beginAccess();
    if (*v100 == 2 && (swift_beginAccess(), v150 = v92[10], v151 = v92[8], v280 = v92[9], v281 = v150, v152 = v92[10], v282[0] = v92[11], *(v282 + 9) = *(v92 + 185), v153 = v92[6], v154 = v92[4], v276 = v92[5], v277 = v153, v155 = v92[6], v156 = v92[8], v278 = v92[7], v279 = v156, v157 = v92[2], v272 = *v93, v273 = v157, v158 = v92[4], v160 = *v93, v159 = v92[2], v274 = v92[3], v275 = v158, v291 = v280, v292 = v152, v293[0] = v92[11], *(v293 + 9) = *(v92 + 185), v287 = v276, v288 = v155, v289 = v278, v290 = v151, v283 = v160, v284 = v159, v285 = v274, v286 = v154, sub_1B03BCF14(&v283) != 1))
    {
      v313 = v291;
      v314 = v292;
      v315[0] = v293[0];
      *(v315 + 9) = *(v293 + 9);
      v309 = v287;
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v305 = v283;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v269 = v280;
      v270 = v281;
      v271[0] = v282[0];
      *(v271 + 9) = *(v282 + 9);
      v265 = v276;
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v261 = v272;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      sub_1B0C83634(&v261, &v250);
      v180 = sub_1B0C84278(1, v244, v247);
      if (v181)
      {
        v182 = (v106)(v180);

        LOBYTE(v249[0]) = v182 & 1;
      }

      else
      {
        v182 = v249[0];
      }

      sub_1B0398EFC(&v272, &qword_1EB6E5F00, &unk_1B0EDE440);
      v209 = v92[9];
      v210 = v92[11];
      v259 = v92[10];
      v260[0] = v210;
      *(v260 + 9) = *(v92 + 185);
      v211 = v92[6];
      v254 = v92[5];
      v255 = v211;
      v212 = v92[8];
      v256 = v92[7];
      if (v182)
      {
        v213 = 0;
      }

      else
      {
        v213 = 2;
      }

      *(v239 + 16) = v213;
      v257 = v212;
      v258 = v209;
      v214 = v92[2];
      v250 = *v93;
      v251 = v214;
      v215 = v92[4];
      v252 = v92[3];
      v253 = v215;
      v216 = v303;
      v92[9] = v302;
      v92[10] = v216;
      v92[11] = v304[0];
      *(v92 + 185) = *(v304 + 9);
      v217 = v299;
      v92[5] = v298;
      v92[6] = v217;
      v218 = v301;
      v92[7] = v300;
      v92[8] = v218;
      v219 = v295;
      *v93 = v294;
      v92[2] = v219;
      v220 = v297;
      v92[3] = v296;
      v92[4] = v220;
      sub_1B0398EFC(&v250, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    else
    {
      swift_beginAccess();
      v161 = v92[10];
      v313 = v92[9];
      v314 = v161;
      v315[0] = v92[11];
      *(v315 + 9) = *(v92 + 185);
      v162 = v92[6];
      v309 = v92[5];
      v310 = v162;
      v163 = v92[8];
      v311 = v92[7];
      v312 = v163;
      v164 = v92[2];
      v305 = *v93;
      v306 = v164;
      v165 = v92[4];
      v307 = v92[3];
      v308 = v165;
      v166 = v303;
      v92[9] = v302;
      v92[10] = v166;
      v92[11] = v304[0];
      *(v92 + 185) = *(v304 + 9);
      v167 = v299;
      v92[5] = v298;
      v92[6] = v167;
      v168 = v301;
      v92[7] = v300;
      v92[8] = v168;
      v169 = v295;
      *v93 = v294;
      v92[2] = v169;
      v170 = v297;
      v92[3] = v296;
      v92[4] = v170;
      sub_1B0398EFC(&v305, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    goto LABEL_23;
  }

LABEL_22:

LABEL_23:
}

uint64_t sub_1B0C9E60C(uint64_t a1, unint64_t a2, char a3, int64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v256 = a4;
  v13 = &v291;
  v342 = *MEMORY[0x1E69E9840];
  v14 = a2 >> 62;
  swift_retain_n();
  v254 = a7;
  v255 = a5;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v252 = a6;
      v22 = *(a1 + 16);
      a6 = *(a1 + 24);

      v251 = v246;
      swift_retain_n();
      v23 = sub_1B0E42A98();
      if (v23)
      {
        v24 = v23;
        v25 = sub_1B0E42AC8();
        if (__OFSUB__(v22, v25))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
        }

        v13 = (v22 - v25 + v24);
        v26 = a6 - v22;
        if (!__OFSUB__(a6, v22))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = 0;
        v26 = a6 - v22;
        if (!__OFSUB__(a6, v22))
        {
LABEL_9:
          v27 = sub_1B0E42AB8();
          if (v27 >= v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = v27;
          }

          if (v13)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if (v13)
          {
            v30 = v13 + v28;
          }

          else
          {
            v30 = 0;
          }

          if ((v29 & 0x8000000000000000) == 0)
          {

            v248 = v30;
            v31 = sub_1B0CA3C44(0, v29, v13, v30);
            v32 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v31);
            if (v32)
            {
              v34 = v32;
              v35 = v33;
              *&v326 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
              sub_1B0CA4364(v34, v35, a3 & 1, &v326, v31);

              v36 = v326;
            }

            else
            {

              v36 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
            }

            v90 = swift_allocObject();
            v250 = v246;
            *(v90 + 16) = v36;
            MEMORY[0x1EEE9AC00](v90);
            v242 = v256;
            v243 = a5;
            v244 = v252;
            v245 = v254;
            v91 = swift_allocObject();
            v92 = v91 + 1;
            sub_1B0C835A8(&v291);
            v93 = v300;
            v91[9] = v299;
            v91[10] = v93;
            v91[11] = v301[0];
            *(v91 + 185) = *(v301 + 9);
            v94 = v296;
            v91[5] = v295;
            v91[6] = v94;
            v95 = v298;
            v91[7] = v297;
            v91[8] = v95;
            v96 = v292;
            v91[1] = v291;
            v91[2] = v96;
            v97 = v294;
            v91[3] = v293;
            v91[4] = v97;
            v98 = swift_allocObject();
            v247 = v241;
            *(v98 + 16) = 2;
            v99 = (v98 + 16);
            MEMORY[0x1EEE9AC00](v98);
            v237 = v91;
            v238 = v100;
            v249 = v100;
            v239 = sub_1B0CA1EE4;
            v240 = v241;
            MEMORY[0x1EEE9AC00](v100);
            v233 = v91 + 1;
            v234 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
            v235 = 0;
            v101 = v253;
            sub_1B0CA33D0(3, 0, v29, v13, v248);
            if (v101)
            {
              goto LABEL_58;
            }

            v106 = v91 + 1;
            v337 = MEMORY[0x1E69E7CC0];
            v338 = v102;
            v339 = v103;
            v340 = v104;
            v341 = v105;
            sub_1B0CA286C(sub_1B0C844F4, v236, sub_1B0C8450C, v232, sub_1B0CA1F5C, v90);
            swift_beginAccess();
            if (*v99 == 2)
            {
              swift_beginAccess();
              v166 = v91[10];
              v167 = v91[8];
              v277 = v91[9];
              v278 = v166;
              v168 = v91[10];
              v279[0] = v91[11];
              *(v279 + 9) = *(v91 + 185);
              v169 = v91[6];
              v170 = v91[4];
              v273 = v91[5];
              v274 = v169;
              v171 = v91[6];
              v172 = v91[8];
              v275 = v91[7];
              v276 = v172;
              v173 = v91[2];
              v269 = *v92;
              v270 = v173;
              v174 = v91[4];
              v176 = *v92;
              v175 = v91[2];
              v271 = v91[3];
              v272 = v174;
              v288 = v277;
              v289 = v168;
              v290[0] = v91[11];
              *(v290 + 9) = *(v91 + 185);
              v284 = v273;
              v285 = v171;
              v286 = v275;
              v287 = v167;
              v280 = v176;
              v281 = v175;
              v282 = v271;
              v283 = v170;
              if (sub_1B03BCF14(&v280) != 1)
              {
                v334 = v288;
                v335 = v289;
                v336[0] = v290[0];
                *(v336 + 9) = *(v290 + 9);
                v330 = v284;
                v331 = v285;
                v332 = v286;
                v333 = v287;
                v326 = v280;
                v327 = v281;
                v328 = v282;
                v329 = v283;
                sub_1B0CA1DC8(&v269, &v258);
                v210 = v255;

                sub_1B0CA1DC8(&v269, &v258);
                sub_1B0C85B6C(&v326, v256, v210, &v302);
                v314 = v306;
                v315 = v307;
                v316 = v308;
                v317 = v309;
                v310 = v302;
                v311 = v303;
                v312 = v304;
                v313 = v305;
                if (sub_1B0C8699C(&v310) != 1)
                {
                  v322 = v314;
                  v323 = v315;
                  v324 = v316;
                  v325 = v317;
                  v318 = v310;
                  v319 = v311;
                  v320 = v312;
                  v321 = v313;
                  v252(&v318);
                  sub_1B0398EFC(&v302, &qword_1EB6E5F30, "nP\b");
                }

                sub_1B0398EFC(&v269, &qword_1EB6E5F00, &unk_1B0EDE440);
                v249[16] = 2;
                v211 = v91[10];
                v266 = v91[9];
                v267 = v211;
                v268[0] = v91[11];
                *(v268 + 9) = *(v91 + 185);
                v212 = v91[6];
                v262 = v91[5];
                v263 = v212;
                v213 = v91[8];
                v264 = v91[7];
                v265 = v213;
                v214 = v91[2];
                v258 = *v106;
                v259 = v214;
                v215 = v91[4];
                v260 = v91[3];
                v261 = v215;
                v216 = v300;
                v91[9] = v299;
                v91[10] = v216;
                v91[11] = v301[0];
                *(v91 + 185) = *(v301 + 9);
                v217 = v296;
                v91[5] = v295;
                v91[6] = v217;
                v218 = v298;
                v91[7] = v297;
                v91[8] = v218;
                v219 = v292;
                *v106 = v291;
                v91[2] = v219;
                v220 = v294;
                v91[3] = v293;
                v91[4] = v220;
                sub_1B0398EFC(&v258, &qword_1EB6E5F00, &unk_1B0EDE440);
                goto LABEL_88;
              }
            }

            goto LABEL_73;
          }

          goto LABEL_90;
        }
      }

      __break(1u);
    }

    else
    {
      memset(v257, 0, 14);
      swift_retain_n();
      v41 = sub_1B0CA3C44(0, 0, v257, v257);
      v42 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v41);
      if (v42)
      {
        v44 = v42;
        v45 = v43;
        *&v326 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
        sub_1B0CA4364(v44, v45, a3 & 1, &v326, v41);

        v46 = v326;
LABEL_34:
        v64 = v256;
        v65 = swift_allocObject();
        v251 = v246;
        *(v65 + 16) = v46;
        MEMORY[0x1EEE9AC00](v65);
        v242 = v64;
        v243 = a5;
        v244 = a6;
        v245 = v254;
        v66 = swift_allocObject();
        v49 = v66 + 1;
        sub_1B0C835A8(&v291);
        v67 = v300;
        v66[9] = v299;
        v66[10] = v67;
        v66[11] = v301[0];
        *(v66 + 185) = *(v13 + 169);
        v68 = v296;
        v66[5] = v295;
        v66[6] = v68;
        v69 = v298;
        v66[7] = v297;
        v66[8] = v69;
        v70 = v292;
        v66[1] = v291;
        v66[2] = v70;
        v71 = v294;
        v66[3] = v293;
        v66[4] = v71;
        v72 = swift_allocObject();
        *(v72 + 16) = 2;
        v73 = (v72 + 16);
        MEMORY[0x1EEE9AC00](v72);
        v237 = v66;
        v238 = v74;
        v250 = v74;
        v239 = sub_1B0CA1EE4;
        v240 = v241;
        MEMORY[0x1EEE9AC00](v74);
        v233 = v66 + 1;
        v234 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
        v235 = 0;
        v75 = v253;
        sub_1B0CA33D0(3, 0, 0, v257, v257);
        if (v75)
        {
          v63 = v75;
          goto LABEL_38;
        }

        v252 = a6;
        v337 = MEMORY[0x1E69E7CC0];
        v338 = v76;
        v339 = v77;
        v340 = v78;
        v341 = v79;
        sub_1B0CA286C(sub_1B0C844F4, v236, sub_1B0C8450C, v232, sub_1B0CA1F5C, v65);
        swift_beginAccess();
        if (*v73 != 2 || (swift_beginAccess(), v145 = v66[10], v146 = v66[8], v277 = v66[9], v278 = v145, v147 = v66[10], v279[0] = v66[11], *(v279 + 9) = *(v66 + 185), v148 = v66[6], v149 = v66[4], v273 = v66[5], v274 = v148, v150 = v66[6], v151 = v66[8], v275 = v66[7], v276 = v151, v152 = v66[2], v269 = *v49, v270 = v152, v153 = v66[4], v155 = *v49, v154 = v66[2], v271 = v66[3], v272 = v153, v288 = v277, v289 = v147, v290[0] = v66[11], *(v290 + 9) = *(v66 + 185), v284 = v273, v285 = v150, v286 = v275, v287 = v146, v280 = v155, v281 = v154, v282 = v271, v283 = v149, sub_1B03BCF14(&v280) == 1))
        {
          swift_beginAccess();
          v156 = v66[10];
          v334 = v66[9];
          v335 = v156;
          v336[0] = v66[11];
          *(v336 + 9) = *(v66 + 185);
          v157 = v66[6];
          v330 = v66[5];
          v331 = v157;
          v158 = v66[8];
          v332 = v66[7];
          v333 = v158;
          v159 = v66[2];
          v326 = *v49;
          v327 = v159;
          v160 = v66[4];
          v328 = v66[3];
          v329 = v160;
          v161 = v300;
          v66[9] = v299;
          v66[10] = v161;
          v66[11] = v301[0];
          *(v66 + 185) = *(v301 + 9);
          v162 = v296;
          v66[5] = v295;
          v66[6] = v162;
          v163 = v298;
          v66[7] = v297;
          v66[8] = v163;
          v164 = v292;
          *v49 = v291;
          v66[2] = v164;
          v165 = v294;
          v66[3] = v293;
          v66[4] = v165;
          sub_1B0398EFC(&v326, &qword_1EB6E5F00, &unk_1B0EDE440);

LABEL_81:
        }

        v334 = v288;
        v335 = v289;
        v336[0] = v290[0];
        *(v336 + 9) = *(v290 + 9);
        v330 = v284;
        v331 = v285;
        v332 = v286;
        v333 = v287;
        v326 = v280;
        v327 = v281;
        v328 = v282;
        v329 = v283;
        sub_1B0CA1DC8(&v269, &v258);
        v199 = v255;

        sub_1B0CA1DC8(&v269, &v258);
        sub_1B0C85B6C(&v326, v256, v199, &v302);
        v314 = v306;
        v315 = v307;
        v316 = v308;
        v317 = v309;
        v310 = v302;
        v311 = v303;
        v312 = v304;
        v313 = v305;
        if (sub_1B0C8699C(&v310) != 1)
        {
          v322 = v314;
          v323 = v315;
          v324 = v316;
          v325 = v317;
          v318 = v310;
          v319 = v311;
          v320 = v312;
          v321 = v313;
          v252(&v318);
          sub_1B0398EFC(&v302, &qword_1EB6E5F30, "nP\b");
        }

        goto LABEL_79;
      }
    }

    v46 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    goto LABEL_34;
  }

  if (v14)
  {
    if (a1 >> 32 >= a1)
    {

      v250 = v246;
      swift_retain_n();
      v37 = sub_1B0E42A98();
      v252 = a6;
      if (v37)
      {
        v38 = v37;
        v39 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v39))
        {
          goto LABEL_93;
        }

        v40 = a1 - v39 + v38;
      }

      else
      {
        v40 = 0;
      }

      v80 = sub_1B0E42AB8();
      if (v80 >= (a1 >> 32) - a1)
      {
        v81 = (a1 >> 32) - a1;
      }

      else
      {
        v81 = v80;
      }

      if (v40)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0;
      }

      if (v40)
      {
        v83 = v81 + v40;
      }

      else
      {
        v83 = 0;
      }

      if ((v82 & 0x8000000000000000) == 0)
      {

        v247 = v83;
        v84 = sub_1B0CA3C44(0, v82, v40, v83);
        v85 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v84);
        if (v85)
        {
          v87 = v85;
          v88 = v86;
          *&v326 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
          sub_1B0CA4364(v87, v88, a3 & 1, &v326, v84);

          v89 = v326;
        }

        else
        {

          v89 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
        }

        v107 = swift_allocObject();
        v249 = v246;
        v251 = v107;
        *(v107 + 16) = v89;
        MEMORY[0x1EEE9AC00](v107);
        v242 = v256;
        v243 = a5;
        v108 = v252;
        v244 = v252;
        v245 = v254;
        v109 = swift_allocObject();
        v110 = v109 + 1;
        sub_1B0C835A8(&v291);
        v111 = v300;
        v109[9] = v299;
        v109[10] = v111;
        v109[11] = v301[0];
        *(v109 + 185) = *(v301 + 9);
        v112 = v296;
        v109[5] = v295;
        v109[6] = v112;
        v113 = v298;
        v109[7] = v297;
        v109[8] = v113;
        v114 = v292;
        v109[1] = v291;
        v109[2] = v114;
        v115 = v294;
        v109[3] = v293;
        v109[4] = v115;
        v116 = swift_allocObject();
        v246[1] = v241;
        *(v116 + 16) = 2;
        v117 = (v116 + 16);
        MEMORY[0x1EEE9AC00](v116);
        v237 = v109;
        v238 = v118;
        v248 = v118;
        v239 = sub_1B0CA1EE4;
        v240 = v241;
        MEMORY[0x1EEE9AC00](v118);
        v233 = v109 + 1;
        v234 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
        v235 = 0;
        v101 = v253;
        sub_1B0CA33D0(3, 0, v82, v40, v247);
        if (v101)
        {
LABEL_58:

LABEL_60:
        }

        v106 = v109 + 1;
        v337 = MEMORY[0x1E69E7CC0];
        v338 = v119;
        v339 = v120;
        v340 = v121;
        v341 = v122;
        sub_1B0CA286C(sub_1B0C844F4, v236, sub_1B0C8450C, v232, sub_1B0CA1F5C, v251);
        swift_beginAccess();
        if (*v117 == 2)
        {
          swift_beginAccess();
          v177 = v109[10];
          v178 = v109[8];
          v277 = v109[9];
          v278 = v177;
          v179 = v109[10];
          v279[0] = v109[11];
          *(v279 + 9) = *(v109 + 185);
          v180 = v109[6];
          v181 = v109[4];
          v273 = v109[5];
          v274 = v180;
          v182 = v109[6];
          v183 = v109[8];
          v275 = v109[7];
          v276 = v183;
          v184 = v109[2];
          v269 = *v110;
          v270 = v184;
          v185 = v109[4];
          v187 = *v110;
          v186 = v109[2];
          v271 = v109[3];
          v272 = v185;
          v288 = v277;
          v289 = v179;
          v290[0] = v109[11];
          *(v290 + 9) = *(v109 + 185);
          v284 = v273;
          v285 = v182;
          v286 = v275;
          v287 = v178;
          v280 = v187;
          v281 = v186;
          v282 = v271;
          v283 = v181;
          if (sub_1B03BCF14(&v280) != 1)
          {
            v334 = v288;
            v335 = v289;
            v336[0] = v290[0];
            *(v336 + 9) = *(v290 + 9);
            v330 = v284;
            v331 = v285;
            v332 = v286;
            v333 = v287;
            v326 = v280;
            v327 = v281;
            v328 = v282;
            v329 = v283;
            sub_1B0CA1DC8(&v269, &v258);
            v221 = v255;

            sub_1B0CA1DC8(&v269, &v258);
            sub_1B0C85B6C(&v326, v256, v221, &v302);
            v314 = v306;
            v315 = v307;
            v316 = v308;
            v317 = v309;
            v310 = v302;
            v311 = v303;
            v312 = v304;
            v313 = v305;
            if (sub_1B0C8699C(&v310) != 1)
            {
              v322 = v314;
              v323 = v315;
              v324 = v316;
              v325 = v317;
              v318 = v310;
              v319 = v311;
              v320 = v312;
              v321 = v313;
              v108(&v318);
              sub_1B0398EFC(&v302, &qword_1EB6E5F30, "nP\b");
            }

            sub_1B0398EFC(&v269, &qword_1EB6E5F00, &unk_1B0EDE440);
            *(v248 + 16) = 2;
            v222 = v109[10];
            v266 = v109[9];
            v267 = v222;
            v268[0] = v109[11];
            *(v268 + 9) = *(v109 + 185);
            v223 = v109[6];
            v262 = v109[5];
            v263 = v223;
            v224 = v109[8];
            v264 = v109[7];
            v265 = v224;
            v225 = v109[2];
            v258 = *v106;
            v259 = v225;
            v226 = v109[4];
            v260 = v109[3];
            v261 = v226;
            v227 = v300;
            v109[9] = v299;
            v109[10] = v227;
            v109[11] = v301[0];
            *(v109 + 185) = *(v301 + 9);
            v228 = v296;
            v109[5] = v295;
            v109[6] = v228;
            v229 = v298;
            v109[7] = v297;
            v109[8] = v229;
            v230 = v292;
            *v106 = v291;
            v109[2] = v230;
            v231 = v294;
            v109[3] = v293;
            v109[4] = v231;
            sub_1B0398EFC(&v258, &qword_1EB6E5F00, &unk_1B0EDE440);
            goto LABEL_88;
          }
        }

LABEL_73:
        swift_beginAccess();
        v188 = v106[9];
        v334 = v106[8];
        v335 = v188;
        v336[0] = v106[10];
        *(v336 + 9) = *(v106 + 169);
        v189 = v106[5];
        v330 = v106[4];
        v331 = v189;
        v190 = v106[7];
        v332 = v106[6];
        v333 = v190;
        v191 = v106[1];
        v326 = *v106;
        v327 = v191;
        v192 = v106[3];
        v328 = v106[2];
        v329 = v192;
        v193 = v300;
        v106[8] = v299;
        v106[9] = v193;
        v106[10] = v301[0];
        *(v106 + 169) = *(v301 + 9);
        v194 = v296;
        v106[4] = v295;
        v106[5] = v194;
        v195 = v298;
        v106[6] = v297;
        v106[7] = v195;
        v196 = v292;
        *v106 = v291;
        v106[1] = v196;
        v197 = v294;
        v106[2] = v293;
        v106[3] = v197;
        sub_1B0398EFC(&v326, &qword_1EB6E5F00, &unk_1B0EDE440);
LABEL_88:

        goto LABEL_60;
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v257[0] = a1;
  LOWORD(v257[1]) = a2;
  BYTE2(v257[1]) = BYTE2(a2);
  BYTE3(v257[1]) = BYTE3(a2);
  BYTE4(v257[1]) = BYTE4(a2);
  v15 = BYTE6(a2);
  BYTE5(v257[1]) = BYTE5(a2);
  swift_retain_n();
  v16 = sub_1B0CA3C44(0, BYTE6(a2), v257, v257 + BYTE6(a2));
  v17 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v16);
  if (v17)
  {
    v19 = v17;
    v20 = v18;
    *&v326 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    sub_1B0CA4364(v19, v20, a3 & 1, &v326, v16);

    v21 = v326;
  }

  else
  {

    v21 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
  }

  v47 = swift_allocObject();
  v251 = v246;
  *(v47 + 16) = v21;
  MEMORY[0x1EEE9AC00](v47);
  v242 = v256;
  v243 = a5;
  v244 = a6;
  v245 = v254;
  v48 = swift_allocObject();
  v49 = v48 + 1;
  sub_1B0C835A8(&v291);
  v50 = v300;
  v48[9] = v299;
  v48[10] = v50;
  v48[11] = v301[0];
  *(v48 + 185) = *(v301 + 9);
  v51 = v296;
  v48[5] = v295;
  v48[6] = v51;
  v52 = v298;
  v48[7] = v297;
  v48[8] = v52;
  v53 = v292;
  v48[1] = v291;
  v48[2] = v53;
  v54 = v294;
  v48[3] = v293;
  v48[4] = v54;
  v55 = swift_allocObject();
  v249 = v241;
  *(v55 + 16) = 2;
  v56 = (v55 + 16);
  MEMORY[0x1EEE9AC00](v55);
  v237 = v48;
  v238 = v57;
  v250 = v57;
  v239 = sub_1B0CA1EE4;
  v240 = v241;
  MEMORY[0x1EEE9AC00](v57);
  v233 = v48 + 1;
  v234 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v235 = 0;
  v58 = v253;
  sub_1B0CA33D0(3, 0, v15, v257, v257 + v15);
  if (!v58)
  {
    v252 = a6;
    v337 = MEMORY[0x1E69E7CC0];
    v338 = v59;
    v339 = v60;
    v340 = v61;
    v341 = v62;
    sub_1B0CA286C(sub_1B0C844F4, v236, sub_1B0C8450C, v232, sub_1B0CA1F5C, v47);
    swift_beginAccess();
    if (*v56 != 2 || (swift_beginAccess(), v124 = v48[10], v125 = v48[8], v277 = v48[9], v278 = v124, v126 = v48[10], v279[0] = v48[11], *(v279 + 9) = *(v48 + 185), v127 = v48[6], v128 = v48[4], v273 = v48[5], v274 = v127, v129 = v48[6], v130 = v48[8], v275 = v48[7], v276 = v130, v131 = v48[2], v269 = *v49, v270 = v131, v132 = v48[4], v134 = *v49, v133 = v48[2], v271 = v48[3], v272 = v132, v288 = v277, v289 = v126, v290[0] = v48[11], *(v290 + 9) = *(v48 + 185), v284 = v273, v285 = v129, v286 = v275, v287 = v125, v280 = v134, v281 = v133, v282 = v271, v283 = v128, sub_1B03BCF14(&v280) == 1))
    {
      swift_beginAccess();
      v135 = v48[10];
      v334 = v48[9];
      v335 = v135;
      v336[0] = v48[11];
      *(v336 + 9) = *(v48 + 185);
      v136 = v48[6];
      v330 = v48[5];
      v331 = v136;
      v137 = v48[8];
      v332 = v48[7];
      v333 = v137;
      v138 = v48[2];
      v326 = *v49;
      v327 = v138;
      v139 = v48[4];
      v328 = v48[3];
      v329 = v139;
      v140 = v300;
      v48[9] = v299;
      v48[10] = v140;
      v48[11] = v301[0];
      *(v48 + 185) = *(v301 + 9);
      v141 = v296;
      v48[5] = v295;
      v48[6] = v141;
      v142 = v298;
      v48[7] = v297;
      v48[8] = v142;
      v143 = v292;
      *v49 = v291;
      v48[2] = v143;
      v144 = v294;
      v48[3] = v293;
      v48[4] = v144;
      sub_1B0398EFC(&v326, &qword_1EB6E5F00, &unk_1B0EDE440);
LABEL_80:

      goto LABEL_81;
    }

    v334 = v288;
    v335 = v289;
    v336[0] = v290[0];
    *(v336 + 9) = *(v290 + 9);
    v330 = v284;
    v331 = v285;
    v332 = v286;
    v333 = v287;
    v326 = v280;
    v327 = v281;
    v328 = v282;
    v329 = v283;
    sub_1B0CA1DC8(&v269, &v258);
    v198 = v255;

    sub_1B0CA1DC8(&v269, &v258);
    sub_1B0C85B6C(&v326, v256, v198, &v302);
    v314 = v306;
    v315 = v307;
    v316 = v308;
    v317 = v309;
    v310 = v302;
    v311 = v303;
    v312 = v304;
    v313 = v305;
    if (sub_1B0C8699C(&v310) != 1)
    {
      v322 = v314;
      v323 = v315;
      v324 = v316;
      v325 = v317;
      v318 = v310;
      v319 = v311;
      v320 = v312;
      v321 = v313;
      v252(&v318);
      sub_1B0398EFC(&v302, &qword_1EB6E5F30, "nP\b");
    }

LABEL_79:
    sub_1B0398EFC(&v269, &qword_1EB6E5F00, &unk_1B0EDE440);
    *(v250 + 16) = 2;
    v200 = v49[9];
    v266 = v49[8];
    v267 = v200;
    v268[0] = v49[10];
    *(v268 + 9) = *(v49 + 169);
    v201 = v49[5];
    v262 = v49[4];
    v263 = v201;
    v202 = v49[7];
    v264 = v49[6];
    v265 = v202;
    v203 = v49[1];
    v258 = *v49;
    v259 = v203;
    v204 = v49[3];
    v260 = v49[2];
    v261 = v204;
    v205 = v300;
    v49[8] = v299;
    v49[9] = v205;
    v49[10] = v301[0];
    *(v49 + 169) = *(v301 + 9);
    v206 = v296;
    v49[4] = v295;
    v49[5] = v206;
    v207 = v298;
    v49[6] = v297;
    v49[7] = v207;
    v208 = v292;
    *v49 = v291;
    v49[1] = v208;
    v209 = v294;
    v49[2] = v293;
    v49[3] = v209;
    sub_1B0398EFC(&v258, &qword_1EB6E5F00, &unk_1B0EDE440);
    goto LABEL_80;
  }

  v63 = v58;
LABEL_38:
}

uint64_t sub_1B0CA01E4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8)
{
  v95 = a4;
  v96 = a5;
  v157 = *MEMORY[0x1E69E9840];
  v15 = a2 >> 62;
  swift_retain_n();
  if (v15 <= 1)
  {
    if (!v15)
    {
      v97[0] = a1;
      LOWORD(v97[1]) = a2;
      BYTE2(v97[1]) = BYTE2(a2);
      BYTE3(v97[1]) = BYTE3(a2);
      BYTE4(v97[1]) = BYTE4(a2);
      BYTE5(v97[1]) = BYTE5(a2);

      swift_retain_n();
      sub_1B0C88870(3u, 0, BYTE6(a2), v97, v97 + BYTE6(a2), a8, &v99);
      if (!v8)
      {
        v16 = v106;
        *&v108 = v99;
        BYTE8(v108) = v100;
        v109 = v101;
        v110 = v102;
        *&v111 = v103;
        WORD4(v111) = v104;
        v112 = v105;
        sub_1B0C87794();
        v133[2] = v110;
        v133[3] = v111;
        v134 = v112;
        v133[0] = v108;
        v133[1] = v109;
        sub_1B0C86F90(3u, a3, a6, a7);
        sub_1B0C8880C(v133);
        v40 = *(v16 + 16);
        if (v40)
        {
          v41 = v40 - 1;
          v94 = v16;
          for (i = v16 + 56; ; i += 88)
          {
            v43 = *(i - 16);
            v44 = *(i - 8);
            v45 = *i;
            v46 = *(i + 8);
            v47 = *(i + 16);
            v48 = *(i + 24);
            v49 = *(i + 32);
            v50 = *(i + 48);
            v51 = *(i + 56);
            v52 = *(i + 40);
            v124[0] = *(i - 24);
            v124[1] = v43;
            v124[2] = v44;
            v125 = v45;
            v126 = v46;
            v127 = v47;
            v128 = v48;
            v129 = v49;
            v130 = v52;
            v131 = v50;
            v132 = v51;
            v99 = v124[0];
            v100 = v43;
            *&v101 = v44;
            BYTE8(v101) = v45;
            *&v102 = v46;
            *(&v102 + 1) = v47;
            v103 = v48;
            v104 = v49;
            LOBYTE(v105) = v52;
            v106 = v50;
            v107 = v51;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0C8926C(v46, v47, v48, v49, v52);
            sub_1B07B47AC(v124, v98);
            sub_1B07AD030(&v99);
            v95(v124);
            sub_1B07AD030(v124);
            if (!v41)
            {
              break;
            }

            --v41;
          }
        }

LABEL_59:

        goto LABEL_60;
      }

      goto LABEL_60;
    }

    if (a1 >> 32 >= a1)
    {
      v94 = a7;
      v30 = v8;

      v93 = &v93;
      swift_retain_n();
      v31 = sub_1B0E42A98();
      if (v31)
      {
        v32 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v32))
        {
          goto LABEL_68;
        }

        v31 += a1 - v32;
      }

      v33 = sub_1B0E42AB8();
      if (v33 >= (a1 >> 32) - a1)
      {
        v34 = (a1 >> 32) - a1;
      }

      else
      {
        v34 = v33;
      }

      if (v31)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 0x8000000000000000) == 0)
      {
        v36 = v34 + v31;
        if (v31)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        sub_1B0C88870(3u, 0, v35, v31, v37, a8, &v99);
        if (!v30)
        {
          v38 = v106;
          *&v108 = v99;
          BYTE8(v108) = v100;
          v109 = v101;
          v110 = v102;
          *&v111 = v103;
          WORD4(v111) = v104;
          v112 = v105;
          sub_1B0C87794();
          v144[2] = v110;
          v144[3] = v111;
          v145 = v112;
          v144[0] = v108;
          v144[1] = v109;
          sub_1B0C86F90(3u, a3, a6, v94);
          sub_1B0C8880C(v144);
          v79 = *(v38 + 16);
          if (v79)
          {
            v80 = v79 - 1;
            v94 = v38;
            for (j = v38 + 56; ; j += 88)
            {
              v82 = *(j - 16);
              v83 = *(j - 8);
              v84 = *j;
              v85 = *(j + 8);
              v86 = *(j + 16);
              v87 = *(j + 24);
              v88 = *(j + 32);
              v89 = *(j + 48);
              v90 = *(j + 56);
              v91 = *(j + 40);
              v135[0] = *(j - 24);
              v135[1] = v82;
              v135[2] = v83;
              v136 = v84;
              v137 = v85;
              v138 = v86;
              v139 = v87;
              v140 = v88;
              v141 = v91;
              v142 = v89;
              v143 = v90;
              v99 = v135[0];
              v100 = v82;
              *&v101 = v83;
              BYTE8(v101) = v84;
              *&v102 = v85;
              *(&v102 + 1) = v86;
              v103 = v87;
              v104 = v88;
              LOBYTE(v105) = v91;
              v106 = v89;
              v107 = v90;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C8926C(v85, v86, v87, v88, v91);
              sub_1B07B47AC(v135, v98);
              sub_1B07AD030(&v99);
              v95(v135);
              sub_1B07AD030(v135);
              if (!v80)
              {
                break;
              }

              --v80;
            }
          }

LABEL_62:
        }

        goto LABEL_38;
      }

      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_64;
  }

  if (v15 != 2)
  {
    memset(v97, 0, 14);

    swift_retain_n();
    sub_1B0C88870(3u, 0, 0, v97, v97, a8, &v99);
    if (!v8)
    {
      v39 = v106;
      *&v108 = v99;
      BYTE8(v108) = v100;
      v109 = v101;
      v110 = v102;
      *&v111 = v103;
      WORD4(v111) = v104;
      v112 = v105;
      sub_1B0C87794();
      v122[2] = v110;
      v122[3] = v111;
      v123 = v112;
      v122[0] = v108;
      v122[1] = v109;
      sub_1B0C86F90(3u, a3, a6, a7);
      sub_1B0C8880C(v122);
      v53 = *(v39 + 16);
      if (v53)
      {
        v54 = v53 - 1;
        v94 = v39;
        for (k = v39 + 56; ; k += 88)
        {
          v56 = *(k - 16);
          v57 = *(k - 8);
          v58 = *k;
          v59 = *(k + 8);
          v60 = *(k + 16);
          v61 = *(k + 24);
          v62 = *(k + 32);
          v63 = *(k + 48);
          v64 = *(k + 56);
          v65 = *(k + 40);
          v113[0] = *(k - 24);
          v113[1] = v56;
          v113[2] = v57;
          v114 = v58;
          v115 = v59;
          v116 = v60;
          v117 = v61;
          v118 = v62;
          v119 = v65;
          v120 = v63;
          v121 = v64;
          v99 = v113[0];
          v100 = v56;
          *&v101 = v57;
          BYTE8(v101) = v58;
          *&v102 = v59;
          *(&v102 + 1) = v60;
          v103 = v61;
          v104 = v62;
          LOBYTE(v105) = v65;
          v106 = v63;
          v107 = v64;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C8926C(v59, v60, v61, v62, v65);
          sub_1B07B47AC(v113, v98);
          sub_1B07AD030(&v99);
          v95(v113);
          sub_1B07AD030(v113);
          if (!v54)
          {
            break;
          }

          --v54;
        }
      }

      goto LABEL_59;
    }

LABEL_60:
  }

  v94 = a7;
  v17 = v8;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);

  v93 = &v93;
  swift_retain_n();
  v20 = sub_1B0E42A98();
  if (v20)
  {
    v21 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v21))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v20 += v18 - v21;
  }

  v22 = __OFSUB__(v19, v18);
  v23 = v19 - v18;
  if (v22)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v24 = sub_1B0E42AB8();
  if (v24 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 < 0)
  {
    goto LABEL_65;
  }

  v27 = v25 + v20;
  if (v20)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  sub_1B0C88870(3u, 0, v26, v20, v28, a8, &v99);
  if (!v17)
  {
    v29 = v106;
    *&v108 = v99;
    BYTE8(v108) = v100;
    v109 = v101;
    v110 = v102;
    *&v111 = v103;
    WORD4(v111) = v104;
    v112 = v105;
    sub_1B0C87794();
    v155[2] = v110;
    v155[3] = v111;
    v156 = v112;
    v155[0] = v108;
    v155[1] = v109;
    sub_1B0C86F90(3u, a3, a6, v94);
    sub_1B0C8880C(v155);
    v66 = *(v29 + 16);
    if (v66)
    {
      v67 = v66 - 1;
      v94 = v29;
      for (m = v29 + 56; ; m += 88)
      {
        v69 = *(m - 16);
        v70 = *(m - 8);
        v71 = *m;
        v72 = *(m + 8);
        v73 = *(m + 16);
        v74 = *(m + 24);
        v75 = *(m + 32);
        v76 = *(m + 48);
        v77 = *(m + 56);
        v78 = *(m + 40);
        v146[0] = *(m - 24);
        v146[1] = v69;
        v146[2] = v70;
        v147 = v71;
        v148 = v72;
        v149 = v73;
        v150 = v74;
        v151 = v75;
        v152 = v78;
        v153 = v76;
        v154 = v77;
        v99 = v146[0];
        v100 = v69;
        *&v101 = v70;
        BYTE8(v101) = v71;
        *&v102 = v72;
        *(&v102 + 1) = v73;
        v103 = v74;
        v104 = v75;
        LOBYTE(v105) = v78;
        v106 = v76;
        v107 = v77;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C8926C(v72, v73, v74, v75, v78);
        sub_1B07B47AC(v146, v98);
        sub_1B07AD030(&v99);
        v95(v146);
        sub_1B07AD030(v146);
        if (!v67)
        {
          break;
        }

        --v67;
      }
    }

    goto LABEL_62;
  }

LABEL_38:
}

uint64_t sub_1B0CA0B0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v10 = a2 >> 62;
  swift_retain_n();
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      memset(v28, 0, 14);
      swift_retain_n();
      v11 = v28;
      v12 = a5;
      v13 = 0;
      goto LABEL_33;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);

    v27 = &v27;
    swift_retain_n();
    v16 = sub_1B0E42A98();
    if (v16)
    {
      v17 = sub_1B0E42AC8();
      if (__OFSUB__(v15, v17))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v16 += v15 - v17;
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (v18)
    {
      goto LABEL_36;
    }

    v20 = sub_1B0E42AB8();
    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    if (v16)
    {
      a1 = v21;
    }

    else
    {
      a1 = 0;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v28[0] = a1;
    LOWORD(v28[1]) = a2;
    BYTE2(v28[1]) = BYTE2(a2);
    BYTE3(v28[1]) = BYTE3(a2);
    BYTE4(v28[1]) = BYTE4(a2);
    BYTE5(v28[1]) = BYTE5(a2);
    swift_retain_n();
    v11 = v28 + BYTE6(a2);
    v12 = a5;
    v13 = BYTE6(a2);
LABEL_33:
    sub_1B0C8D8F8(0, v13, v28, v11, a3, a4, v12);
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = &v27;
  swift_retain_n();
  v16 = sub_1B0E42A98();
  if (v16)
  {
    v22 = sub_1B0E42AC8();
    if (__OFSUB__(a1, v22))
    {
      goto LABEL_39;
    }

    v16 += a1 - v22;
  }

  v23 = sub_1B0E42AB8();
  if (v23 >= (a1 >> 32) - a1)
  {
    v21 = (a1 >> 32) - a1;
  }

  else
  {
    v21 = v23;
  }

  if (v16)
  {
    a1 = v21;
  }

  else
  {
    a1 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v24 = v21 + v16;
  if (v16)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1B0C8D8F8(0, a1, v16, v25, a3, a4, a5);
}

uint64_t sub_1B0CA0DC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  swift_retain_n();
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      memset(v15, 0, 14);
      swift_retain_n();
      v9 = v15;
      v10 = a4;
      v11 = 0;
      goto LABEL_9;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v8)
    {
      v15[0] = a1;
      LOWORD(v15[1]) = a2;
      BYTE2(v15[1]) = BYTE2(a2);
      BYTE3(v15[1]) = BYTE3(a2);
      BYTE4(v15[1]) = BYTE4(a2);
      BYTE5(v15[1]) = BYTE5(a2);
      swift_retain_n();
      v9 = v15 + BYTE6(a2);
      v10 = a4;
      v11 = BYTE6(a2);
LABEL_9:
      sub_1B0CB9328(0, v11, v15, v9, a3, v10);
    }

    v13 = a1;
    v12 = a1 >> 32;
    if (v12 < v13)
    {
      __break(1u);
    }
  }

  swift_retain_n();
  sub_1B0CA102C(v13, v12, a3, a4);
}

uint64_t sub_1B0CA0F78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1B0E42A98();
  v8 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1B0E42AB8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_1B0CA102C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{

  result = sub_1B0E42A98();
  v10 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_1B0E42AB8();
  if (result >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_17;
  }

  v15 = v13 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_1B0CB9328(0, v14, v10, v16, a4, x8_0);
}

uint64_t sub_1B0CA1108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;

  result = sub_1B0E42A98();
  v10 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1B0E42AB8();
  if (result >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_19;
  }

  v15 = v13 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_1B0C646B4(0, v14, v10, v16, a4, &v17);

  if (!v5)
  {
    return v17;
  }

  return result;
}

void *sub_1B0CA11F4(uint64_t a1, unint64_t a2, void *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v15[0] = a1;
      LOWORD(v15[1]) = a2;
      BYTE2(v15[1]) = BYTE2(a2);
      BYTE3(v15[1]) = BYTE3(a2);
      BYTE4(v15[1]) = BYTE4(a2);
      v4 = v15;
      v8 = BYTE6(a2);
      BYTE5(v15[1]) = BYTE5(a2);
      swift_retain_n();
      v9 = v15 + v8;
      v10 = v8;
      goto LABEL_9;
    }

    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    swift_retain_n();
    v4 = sub_1B0CA1108(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v15, 0, 14);
  swift_retain_n();
  v9 = v15;
  v10 = 0;
LABEL_9:
  sub_1B0C646B4(0, v10, v15, v9, a3, &v14);

  if (!v3)
  {
    v4 = v14;
  }

LABEL_11:

  return v4;
}

void *sub_1B0CA13C0(uint64_t a1, void *a2)
{
  v5 = sub_1B0E443C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1B0CA1EC8;
  v19 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1B0C646B4(0, 0, 0, 0, a2, v20);
    v12 = v2;

    if (!v2)
    {
      return v20[0];
    }
  }

  else
  {
    sub_1B0C934C4(a1, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = (*(v6 + 32))(v8, v11, v5);
      MEMORY[0x1EEE9AC00](v13);
      *&v17[-32] = v8;
      *&v17[-24] = sub_1B0C74D94;
      *&v17[-16] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FD8, "2K\b");
      v12 = v8;
      sub_1B0E44328();
      (*(v6 + 8))(v8, v5);

      if (!v2)
      {
        return v20[1];
      }
    }

    else
    {
      v14 = *v11;
      v15 = v11[1];

      v12 = sub_1B0CA11F4(v14, v15, a2);

      sub_1B0391D50(v14, v15);
    }
  }

  return v12;
}

char *sub_1B0CA16C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = BYTE6(a2);
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v25, 0, 14);
      v5 = swift_retain_n();
      v6 = v25;
      v7 = 0;
      goto LABEL_33;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    swift_retain_n();
    v10 = sub_1B0E42A98();
    if (v10)
    {
      v11 = sub_1B0E42AC8();
      if (__OFSUB__(v8, v11))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_36;
    }

    a1 = sub_1B0E42AB8();
    if (a1 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = a1;
    }

    if (v10)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v25[0] = a1;
    LOWORD(v25[1]) = a2;
    BYTE2(v25[1]) = BYTE2(a2);
    BYTE3(v25[1]) = BYTE3(a2);
    BYTE4(v25[1]) = BYTE4(a2);
    BYTE5(v25[1]) = BYTE5(a2);
    v5 = swift_retain_n();
    v6 = v25 + v3;
    v7 = v3;
LABEL_33:
    v23 = sub_1B0CB0F14(v5, 0, v7, v25, v6);
    goto LABEL_34;
  }

  v16 = a1;
  v17 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_retain_n();
  v10 = sub_1B0E42A98();
  if (v10)
  {
    v18 = sub_1B0E42AC8();
    if (__OFSUB__(v16, v18))
    {
      goto LABEL_39;
    }

    v10 += v16 - v18;
  }

  v19 = sub_1B0E42AB8();
  if (v19 >= v17)
  {
    v14 = v17;
  }

  else
  {
    v14 = v19;
  }

  if (v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 < 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v20 = v14 + v10;
  if (v10)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v23 = sub_1B0CB0F14(v22, 0, v15, v10, v21);
LABEL_34:

  return v23;
}

char *sub_1B0CA192C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B0E443C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1B0CA1C0C;
  v20 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v13 = sub_1B0CB0F14(v12, 0, 0, 0, 0);
  }

  else
  {
    sub_1B0C934C4(a1, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = (*(v6 + 32))(v8, v11, v5);
      MEMORY[0x1EEE9AC00](v14);
      *&v18[-32] = v8;
      *&v18[-24] = sub_1B0C76E28;
      *&v18[-16] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
      v13 = v8;
      sub_1B0E44328();
      if (!v2)
      {
        (*(v6 + 8))(v8, v5);

        return v21;
      }

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v15 = *v11;
      v16 = v11[1];

      v13 = sub_1B0CA16C0(v15, v16, a2);

      sub_1B0391D50(v15, v16);
    }
  }

  return v13;
}

uint64_t sub_1B0CA1C40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24) - v4;
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    if (v4)
    {
      v6 = v5 == a2 - result;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      *a3 = 0;
      return result;
    }
  }

  else
  {
    v7 = v5 == 0;
    if (v4)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (result)
  {
    v9 = v4 == result;
  }

  else
  {
    v9 = 0;
  }

  v7 = v9;
LABEL_21:
  *a3 = v7;
  return result;
}

void *sub_1B0CA1C94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 24);
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = v6(&v9, a1, a1 + v7);
  if (!v3)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1B0CA1DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F00, &unk_1B0EDE440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CA1F60(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2 - isStackAllocationSafe;
  if (isStackAllocationSafe)
  {
    v4 = a2 - isStackAllocationSafe;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    v2 = isStackAllocationSafe;
    if (v5 < 1025)
    {
      goto LABEL_7;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v10 = swift_slowAlloc();
    v11 = sub_1B0CA20B0(v10, v2, a2);
    MEMORY[0x1B272C230](v10, -1, -1);
    return v11;
  }

LABEL_7:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v7 = v12 - v6;
  if (v2)
  {
    memmove(v12 - v6, v2, v3);
  }

  else
  {
    v3 = 0;
  }

  v7[v3] = 0;
  return CompactEncDet_EncodingNameAliasToEncoding(v7);
}

uint64_t sub_1B0CA20B0(void *a1, void *__src, uint64_t a3)
{
  if (a1)
  {
    if (!__src)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v4 = a3 - __src;
    v5 = a1;
    memmove(a1, __src, a3 - __src);
    a1 = v5;
  }

  else
  {
    v4 = a3 - __src;
  }

  if (__src)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  *(a1 + v6) = 0;
  return CompactEncDet_EncodingNameAliasToEncoding(a1);
}

uint64_t sub_1B0CA2130()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);
  MEMORY[0x1B2726E80](91, 0xE100000000000000);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](8285, 0xE200000000000000);
  v5 = sub_1B0CA2228(v4, v1, v2, v3);
  MEMORY[0x1B2726E80](v5);

  return 0;
}

uint64_t sub_1B0CA21F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3 - a2 >= a4)
    {
      return a2 + a4;
    }

    __break(1u);
  }

  else if (a4 <= 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CA2228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x3E6C696E3CLL;
  }

  if (a3 - a2 < a4)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E46508();
    MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
    sub_1B0E46508();
    return 0;
  }

  return result;
}

char *sub_1B0CA233C(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v7 = a3;
  v8 = a2;
  v9 = 0;
  v10 = a5 - a4;
  v48 = a5 - a4;
  if (!a4)
  {
    v10 = 0;
  }

  v50 = v10;
  v11 = result;
  v49 = result;
  while (1)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        if (!a4)
        {
          goto LABEL_45;
        }

        v16 = a4 + v8;
        result = memchr((a4 + v8), 10, v7 - v8);
        if (!result)
        {
          goto LABEL_45;
        }

        v17 = &result[-v16];
        if (&result[-v16] < 0)
        {
          goto LABEL_45;
        }

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_144;
        }

        if (v7 - v8 < v18)
        {
          goto LABEL_45;
        }

        v15 = &v17[v8];
        if (__OFADD__(v17, v8))
        {
          goto LABEL_152;
        }

        v5 = &v18[v8];
        if (__OFADD__(v18, v8))
        {
          goto LABEL_154;
        }

        if (v18 < v17 || v5 < v15)
        {
          goto LABEL_160;
        }
      }

      else
      {
        if (!a4)
        {
          goto LABEL_45;
        }

        v22 = a4 + v8;
        result = memchr((a4 + v8), 10, v7 - v8);
        if (!result)
        {
          goto LABEL_45;
        }

        v23 = &result[-v22];
        if (&result[-v22] < 0)
        {
          goto LABEL_45;
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_146;
        }

        if (v7 - v8 < v24)
        {
LABEL_45:
          v5 = 0;
          v25 = 1;
          v15 = v7;
          v26 = v7 - v8;
          if (v7 == v8)
          {
            goto LABEL_119;
          }

          goto LABEL_46;
        }

        v15 = &v23[v8];
        if (__OFADD__(v23, v8))
        {
          goto LABEL_149;
        }

        v5 = &v24[v8];
        if (__OFADD__(v24, v8))
        {
          goto LABEL_156;
        }

        if (v24 < v23 || v5 < v15)
        {
          goto LABEL_157;
        }

        if (v8 < v15)
        {
          if (v15 > v7)
          {
            goto LABEL_162;
          }

          if (v15[a4 - 1] == 13)
          {
            --v15;
          }
        }
      }
    }

    else if (v11)
    {
      if (!a4)
      {
        goto LABEL_45;
      }

      v19 = a4 + v8;
      result = memchr((a4 + v8), 13, v7 - v8);
      if (!result)
      {
        goto LABEL_45;
      }

      v20 = &result[-v19];
      if (&result[-v19] < 0)
      {
        goto LABEL_45;
      }

      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_143;
      }

      if (v7 - v8 < v21)
      {
        goto LABEL_45;
      }

      v15 = &v20[v8];
      if (__OFADD__(v20, v8))
      {
        goto LABEL_151;
      }

      v5 = &v21[v8];
      if (__OFADD__(v21, v8))
      {
        goto LABEL_153;
      }

      if (v21 < v20 || v5 < v15)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_45;
      }

      v12 = a4 + v8;
      result = memmem((a4 + v8), v7 - v8, "\r\n", 2uLL);
      if (!result)
      {
        goto LABEL_45;
      }

      v13 = &result[-v12];
      if (&result[-v12] < 0)
      {
        goto LABEL_45;
      }

      v14 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
        goto LABEL_145;
      }

      if (v7 - v8 < v14)
      {
        goto LABEL_45;
      }

      v15 = &v13[v8];
      if (__OFADD__(v13, v8))
      {
        goto LABEL_150;
      }

      v5 = &v14[v8];
      if (__OFADD__(v14, v8))
      {
        goto LABEL_155;
      }

      if (v14 < v13 || v5 < v15)
      {
        goto LABEL_159;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_135;
    }

    if (v15 > v7)
    {
      goto LABEL_136;
    }

    v25 = 0;
    v26 = &v15[-v8];
    if (v15 == v8)
    {
      goto LABEL_119;
    }

LABEL_46:
    if (v8 < 0 || v50 < v8)
    {
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
      return result;
    }

    if ((v15 & 0x8000000000000000) != 0 || v50 < v15)
    {
      goto LABEL_125;
    }

    if (!a4)
    {
      break;
    }

    if (v26 > 399)
    {
      break;
    }

    v27 = a4 + v8;
    v28 = v9;
    v29 = v7;
    v30 = v25;
    v31 = v5;
    result = memchr((a4 + v8), 58, v26);
    v5 = v31;
    v25 = v30;
    v7 = v29;
    v9 = v28;
    if (!result)
    {
      break;
    }

    v32 = &result[-v27];
    if (&result[-v27] < 0)
    {
      break;
    }

    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_133;
    }

    if (v26 < v33)
    {
      break;
    }

    v34 = &v32[v8];
    if (__OFADD__(v32, v8))
    {
      goto LABEL_137;
    }

    if (__OFADD__(v33, v8))
    {
      goto LABEL_138;
    }

    if (v33 < v32 || &v33[v8] < v34)
    {
      goto LABEL_139;
    }

    if (v48 < v8)
    {
      goto LABEL_140;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_141;
    }

    if (v48 < v34)
    {
      goto LABEL_142;
    }

    if ((v32 - 61) < 0xFFFFFFFFFFFFFFC4)
    {
      break;
    }

    if (v34 < v8)
    {
      goto LABEL_147;
    }

    if (v15 < v34)
    {
      goto LABEL_148;
    }

    if (v34 != v8)
    {
      v44 = v8;
      while (v44 < v34)
      {
        v45 = *(a4 + v44);
        v38 = v45 > 0x20;
        v46 = (1 << v45) & 0x100002600;
        if (!v38 && v46 != 0)
        {
          goto LABEL_64;
        }

        if (v34 == ++v44)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_134;
    }

LABEL_90:
    if (v25)
    {
      if (v7 >= v8)
      {
        return v7;
      }

      goto LABEL_161;
    }

    if (v5 > v7)
    {
      goto LABEL_129;
    }

    if (v5 < v8)
    {
      goto LABEL_130;
    }

    if (v9 <= 0x12)
    {
      ++v9;
      v8 = v5;
      v11 = v49;
      if (v5 != v7)
      {
        continue;
      }
    }

    return v5;
  }

LABEL_64:
  if (!v9)
  {
    return 0;
  }

  if (v26 <= 399)
  {
    if (v15 <= v8)
    {
      v35 = v8;
    }

    else
    {
      v35 = v15;
    }

    v36 = v8;
    while (1)
    {
      if (v35 == v36)
      {
        __break(1u);
        goto LABEL_124;
      }

      v37 = *(a4 + v36);
      v38 = v37 > 0x20;
      v39 = (1 << v37) & 0x100002600;
      if (v38 || v39 == 0)
      {
        break;
      }

      if (v15 == ++v36)
      {
        v41 = 1;
        v36 = v15;
        v42 = &v15[-v8];
        if (v15 < v8)
        {
          goto LABEL_126;
        }

        goto LABEL_79;
      }
    }

    v41 = 0;
    v42 = v36 - v8;
    if (v36 < v8)
    {
      goto LABEL_126;
    }

LABEL_79:
    if (v15 < v36)
    {
      goto LABEL_127;
    }

    if (a4)
    {
      if (v48 < v8)
      {
        goto LABEL_131;
      }

      if (v48 < v36)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (v8 > 0)
      {
        goto LABEL_132;
      }

      if (v36 > 0)
      {
        goto LABEL_128;
      }
    }

    if ((v42 - 13) < 0xFFFFFFFFFFFFFFF4)
    {
      v43 = 1;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      goto LABEL_119;
    }

    goto LABEL_90;
  }

LABEL_119:
  v5 = v8;
  if (v9)
  {
    return v5;
  }

  return 0;
}

void sub_1B0CA286C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t, void), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = v6;
  v15 = a1(v6);
  if (!v7 && v15)
  {
    if (v15 == 1)
    {
      v16 = *(v6 + 32);
      if (v16 < 0)
      {
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
        __break(1u);
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
      }

      else
      {
        v17 = *(v6 + 16);
        v18 = v17 + v16;
        if (v17)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        sub_1B0CB7368(v17, v19, *(v6 + 8), v92);
        v20 = sub_1B0CB8540();
        if (v23 != 2)
        {
          v24 = v20;
          v25 = v21;
          v26 = v22;
          v27 = v23;
          do
          {
            sub_1B0CB7ED8(v24, v25, v26, v27 & 1, v93);
            a3(v93, v24, v25, v26, v27 & 1);
            sub_1B0CA39F4(v93);
            v24 = sub_1B0CB8540();
            v25 = v28;
            v26 = v29;
            v27 = v30;
          }

          while (v30 != 2);
        }
      }
    }

    else
    {
      v106 = 0;
      v31 = *(v6 + 8);
      v32 = v8[2];
      v90 = v8[3];
      v91 = v8[4];
      sub_1B0CA35F0(v91, a3, &v94, v31, v32);
      if (v97)
      {
        v88 = v32;
        v89 = v31;
        v87 = BYTE8(v94);
        v33 = v95;
        v34 = v96;
        v35 = sub_1B0CA38B4(&v94);
        if (v34 <= 0xF && v100 != 2)
        {
          if (!a5 || v33 & 0x80 | v87)
          {
            goto LABEL_23;
          }

          LODWORD(v87) = v100;
          v85 = v99;
          v86 = v98;
          v36 = *v8;
          sub_1B0CA3924(v8, v92);
          sub_1B0423B38(a5, a6);
          v37 = a5(v36);
          switch(v37)
          {
            case 0:
              sub_1B0CA3980(v8);
              v35 = sub_1B03B1AF0(a5, a6);
              goto LABEL_23;
            case 1:
LABEL_56:
              sub_1B0CA3980(v8);
              sub_1B03B1AF0(a5, a6);
              break;
            case 2:
              sub_1B0CA3980(v8);
              sub_1B03B1AF0(a5, a6);
              break;
            default:
              v71 = *(v36 + 16);
              if (v71 + 1 == *(v37 + 16))
              {
                v72 = 32;
                while (v71)
                {
                  v73 = *(v36 + v72);
                  v74 = *(v37 + v72);
                  --v71;
                  v72 += 8;
                  if (v73 != v74)
                  {
                    sub_1B03B1AF0(a5, a6);
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                while (1)
                {
                  v77 = v37;
                  sub_1B0CA39E4(v37);
                  swift_unknownObjectRelease();

                  if (!*(v77 + 16))
                  {
                    sub_1B03B1AF0(a5, a6);
                    v76 = v77;
                    goto LABEL_64;
                  }

                  sub_1B03B1AF0(a5, a6);
                  v35 = sub_1B0CA39D4(v77);
LABEL_23:
                  MEMORY[0x1EEE9AC00](v35);
                  if (v43)
                  {
                    if (v38)
                    {
                      v44 = v39 - v38;
                    }

                    else
                    {
                      v44 = 0;
                    }

                    if ((v44 & 0x8000000000000000) == 0)
                    {
                      sub_1B0C94D98(0, v44, v38, v39, sub_1B0CA38E4);
                      return;
                    }

                    goto LABEL_84;
                  }

                  v86 = v38;
                  v85 = v39;
                  v83 = v41;
                  v82 = v42;
                  if (v88)
                  {
                    v45 = v90 - v88 - v91;
                    if (v90 - v88 < v91)
                    {
                      goto LABEL_86;
                    }

                    if (v90 - v88 - v91 < 0)
                    {
                      goto LABEL_85;
                    }

                    v46 = (v88 + v91);
                    v47 = v90;
                  }

                  else
                  {
                    if (v91 > 0)
                    {
                      goto LABEL_88;
                    }

                    v47 = 0;
                    v46 = 0;
                    v45 = 0;
                  }

                  v84 = v45;
                  v88 = v46;
                  v87 = v47;
                  v48 = v40;
                  sub_1B0C77524(0, v45, v46, v47, v40, v86, v85);
                  if (v50 == -1)
                  {
                    return;
                  }

                  v37 = v49;
                  if ((v50 & 1) == 0)
                  {
                    break;
                  }

                  v51 = 0;
LABEL_68:
                  if (v84 < v37)
                  {
                    goto LABEL_87;
                  }

                  if (v37 >= v51)
                  {
                    return;
                  }

                  __break(1u);
                }

                v78[1] = v78;
                v52 = v84;
                v53 = v88;
                if (v84 < v37)
                {
                  goto LABEL_81;
                }

                if (v37 < 0)
                {
LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

                v54 = v48;
                v91 = 0;
                while (1)
                {
                  v55 = v53;
                  v56 = v37;
                  v57 = sub_1B0C77524(v37, v52, v55, v87, v54, v86, v85);
                  if (v59 == 0xFF)
                  {
                    break;
                  }

                  v60 = v57;
                  if (v57 < v56)
                  {
                    goto LABEL_82;
                  }

                  v90 = v56;
                  v61 = v91 + 1;
                  if (__OFADD__(v91, 1))
                  {
                    goto LABEL_83;
                  }

                  v62 = v58;
                  v63 = v82;
                  if (v83 == v61)
                  {
                    v63 = 1;
                  }

                  v53 = v88;
                  if (v63 == 1)
                  {
                    v79 = v59;
                    v80 = v58;
                    rawValue = SectionSpecifier.Part.appending(_:)(v61).array._rawValue;
                    v64 = v106;
                    sub_1B0CA33D0(v89, v90, v60, v53, v87);
                    if (v64)
                    {

                      if (v84 < v80)
                      {
                        goto LABEL_89;
                      }

                      if (v80 < v90)
                      {
                        goto LABEL_90;
                      }

                      return;
                    }

                    v101 = rawValue;
                    v102 = v65;
                    v103 = v66;
                    v104 = v67;
                    v105 = v68;
                    sub_1B0CA286C(a1, a2, a3, a4, a5, a6);
                    v106 = 0;
                    v70 = v69;

                    if (!v70)
                    {
                      if (v84 < v80)
                      {
                        goto LABEL_91;
                      }

                      if (v80 < v90)
                      {
                        goto LABEL_92;
                      }

                      return;
                    }

                    v51 = v90;
                    v62 = v80;
                    LOBYTE(v59) = v79;
                    v53 = v88;
                  }

                  else
                  {
                    v51 = v90;
                  }

                  v54 = v89;
                  if (v59)
                  {
                    v37 = v62;
                    goto LABEL_68;
                  }

                  v52 = v84;
                  if (v84 < v62)
                  {
                    goto LABEL_81;
                  }

                  ++v91;
                  v37 = v62;
                  if (v62 < v51)
                  {
                    goto LABEL_55;
                  }
                }
              }

              else
              {
                v75 = v37;
                sub_1B03B1AF0(a5, a6);
                sub_1B0CA3980(v8);
                v76 = v75;
LABEL_64:
                sub_1B0CA39D4(v76);
              }

              break;
          }
        }
      }
    }
  }
}

void *sub_1B0CA3074@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, void (*a8)(void *, uint64_t, uint64_t, uint64_t, void)@<X7>, char *a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t), uint64_t a12)
{
  __little = result;
  v42 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 32);
  if (v16)
  {
    v18 = *(a3 + 24) - v16;
    if (v18 < v17)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v19 = v18 - v17;
    if (v18 - v17 < 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = (v16 + v17);
    v21 = *(a3 + 24);
  }

  else
  {
    if (v17 >= 1)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  result = sub_1B0C77524(0, v19, v20, v21, *(a3 + 8), result, a2);
  if (v23 == -1)
  {
LABEL_11:
    v26 = 2;
LABEL_12:
    *a9 = v26;
    return result;
  }

  v24 = v22;
  if ((v23 & 1) == 0)
  {
    v43 = v21;
    v44 = v20;
    v41 = v12;
    v36 = a9;
    v27 = v42;
    if (v19 >= v22)
    {
      if (v22 < 0)
      {
LABEL_29:
        __break(1u);
      }

      else
      {
        v28 = 0;
        v37 = v19;
        while (1)
        {
          result = sub_1B0C77524(v24, v19, v44, v43, v27, __little, a2);
          if (v30 == -1)
          {
            break;
          }

          v31 = result;
          if (result < v24)
          {
            goto LABEL_43;
          }

          result = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            goto LABEL_44;
          }

          v21 = v29;
          v32 = v30;
          if ((a5 & 1) != 0 || result == a4)
          {
            SectionSpecifier.Part.appending(_:)(result);
            sub_1B0CA33D0(v27, v24, v31, v44, v43);
            if (v41)
            {
              goto LABEL_33;
            }

            sub_1B0CA286C(a6, a7, a8, a10, a11, a12);
            v34 = v33;

            v41 = 0;
            if (!v34)
            {
              if (v37 < v21)
              {
                goto LABEL_52;
              }

              if (v21 >= v24)
              {
                v26 = 0;
                goto LABEL_41;
              }

              goto LABEL_53;
            }

            v19 = v37;
            v27 = v42;
          }

          if (v32)
          {
            v25 = v24;
            v24 = v21;
            a9 = v36;
            if (v19 >= v21)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }

          if (v19 < v21)
          {
            goto LABEL_42;
          }

          ++v28;
          v35 = v21 < v24;
          v24 = v21;
          if (v35)
          {
            goto LABEL_29;
          }
        }
      }

      v26 = 2;
LABEL_41:
      a9 = v36;
      goto LABEL_12;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = 0;
  if (v19 >= v22)
  {
LABEL_10:
    if (v24 >= v25)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_32:
  __break(1u);
LABEL_33:

  if (v37 < v21)
  {
    goto LABEL_49;
  }

  if (v21 >= v24)
  {
    return result;
  }

  __break(1u);
  if (v37 >= v21)
  {
    if (v21 >= v24)
    {
      return result;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void sub_1B0CA3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5 - a4;
  if (a4)
  {
    v8 = a4 + a3;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a4)
  {
    v9 = a4 + a2;
  }

  else
  {
    v9 = 0;
  }

  if (a2 < 0 || v7 < a2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (a6 < 0 || v7 < a6)
  {
    goto LABEL_16;
  }

  v10 = a6 - a2;
  v11 = v8 - v9;
  if (!v9)
  {
    v11 = 0;
  }

  if (v11 < v10)
  {
    goto LABEL_17;
  }
}

void sub_1B0CA33D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    if (a2 >= a3)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v6 = a4 + a2;
    v7 = *(a4 + a2);
    if (v7 != 10 && v7 != 13)
    {
      sub_1B0C946BC(a1, a2, a3, a4);
      if (v26)
      {
        if ((sub_1B0C94A74(a1) & 1) != 0 && sub_1B0433338(a2, a3, a4, a5) <= 1499)
        {
          v15 = a1;
          v16 = a2;
          v17 = a3;
          v18 = a4;
          v19 = a5;
          v14 = a3;
          goto LABEL_30;
        }

        v27 = sub_1B0CA233C(a1, a2, a3, a4, a5);
        if (v28)
        {
          if (a4)
          {
            v29 = a4 + a3;
          }

          else
          {
            v29 = 0;
          }

          if (a4)
          {
            v30 = v6;
          }

          else
          {
            v30 = 0;
          }

          sub_1B0CA359C();
          swift_allocError();
          *v31 = v30;
          v31[1] = v29;
          swift_willThrow();
          return;
        }

        v14 = v27;
      }

      else
      {
        v14 = v25;
      }

      v15 = a1;
      v16 = a2;
      v17 = a3;
      v18 = a4;
      v19 = a5;
      goto LABEL_30;
    }

    sub_1B0C94298(a1);
    v14 = a2;
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
LABEL_30:
    sub_1B0CA3370(v15, v16, v17, v18, v19, v14);
    return;
  }

  v5 = a5 - a4;
  if (!a4)
  {
    v5 = 0;
  }

  if (a2 < 0 || v5 < a2)
  {
    goto LABEL_31;
  }
}

unint64_t sub_1B0CA359C()
{
  result = qword_1EB6E5FE0;
  if (!qword_1EB6E5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FE0);
  }

  return result;
}

void sub_1B0CA35F0(uint64_t a1@<X2>, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t, void)@<X3>, _OWORD *a3@<X8>, char w0_0@<W0>, uint64_t a5@<X1>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a5)
    {
      v7 = a1 + a5;
    }

    else
    {
      v7 = 0;
    }

    sub_1B0CB7368(a5, v7, w0_0, v70);
    v8 = sub_1B0CB8540();
    if (v11 == 2)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LOBYTE(v20) = 0;
      v21 = 2;
    }

    else
    {
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = 0;
      v19 = 0;
      v18 = 0;
      v20 = 0;
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v21 = 2;
      while (2)
      {
        v47 = v15;
        v48 = v26;
        v45 = v16;
        v46 = v18;
        v51 = v13;
        v53 = v14;
LABEL_9:
        v50 = v20;
        while (1)
        {
          sub_1B0CB7ED8(v22, v23, v24, v25 & 1, &v71);
          a2(&v71, v22, v23, v24, v25 & 1);
          if (v75 >> 59 == 14)
          {
            v22 = sub_1B0CB8540();
            v23 = v30;
            v24 = v31;
            v25 = v32;
            v20 = 1;
            if (v32 != 2)
            {
              goto LABEL_9;
            }

            v15 = v47;
            v12 = v48;
            v13 = v51;
            v14 = v53;
            goto LABEL_18;
          }

          if (v75 >> 59 == 9)
          {
            break;
          }

          sub_1B0CA39F4(&v71);
          v22 = sub_1B0CB8540();
          v23 = v27;
          v24 = v28;
          v25 = v29;
          if (v29 == 2)
          {
            v15 = v47;
            v12 = v48;
            v13 = v51;
            v14 = v53;
            LOBYTE(v20) = v50;
LABEL_18:
            v16 = v45;
            v18 = v46;
            goto LABEL_19;
          }
        }

        v12 = v76;
        v33 = v73;
        v54 = v74;
        v17 = v71;
        v34 = v72;
        v77 = v71;
        v78 = v72;
        v79 = v73;
        v80 = v74;
        v52 = v75;
        v81 = v75 & 0x7FFFFFFFFFFFFFFLL;
        v82 = v76;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v35 = sub_1B0C7EB6C();
        v19 = v36;
        v38 = v37;
        sub_1B0CA39F4(&v71);
        v39 = sub_1B0CB8540();
        v16 = v34;
        v21 = v38;
        v15 = v33;
        v22 = v39;
        v18 = v35;
        v23 = v40;
        v24 = v41;
        v25 = v42;
        v26 = v12;
        v13 = v52;
        v14 = v54;
        v20 = v50;
        if (v42 != 2)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
    LOBYTE(v56) = v20;
    *(&v56 + 1) = v17;
    *&v57 = v16;
    *(&v57 + 1) = v15;
    *&v58 = v14;
    *(&v58 + 1) = v13;
    *v59 = v12;
    *&v59[8] = v18;
    *&v59[16] = v19;
    v59[24] = v21;
    v60[0] = v20;
    v61 = v17;
    v62 = v16;
    v63 = v15;
    v64 = v14;
    v65 = v13;
    v66 = v12;
    v67 = v18;
    v68 = v19;
    v69 = v21;
    sub_1B0CA3A48(&v56, v55);
    sub_1B0CA38B4(v60);
    v43 = *v59;
    a3[2] = v58;
    a3[3] = v43;
    *(a3 + 57) = *&v59[9];
    v44 = v57;
    *a3 = v56;
    a3[1] = v44;
  }
}

unint64_t sub_1B0CA39D4(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

double sub_1B0CA39E4(unint64_t a1)
{
  if (a1 >= 3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CA3A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_1B0CA3ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0CA3B54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[32])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CA3B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1B0CA3BF0()
{
  result = qword_1EB6E5FE8;
  if (!qword_1EB6E5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FE8);
  }

  return result;
}

char *sub_1B0CA3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7CC0];
  v33[0] = MEMORY[0x1E69E7CC0];
  v28 = v33;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v9 = swift_allocObject();
  sub_1B0C835A8(v38);
  v10 = v38[9];
  v9[9] = v38[8];
  v9[10] = v10;
  v9[11] = v39[0];
  *(v9 + 185) = *(v39 + 9);
  v11 = v38[5];
  v9[5] = v38[4];
  v9[6] = v11;
  v12 = v38[7];
  v9[7] = v38[6];
  v9[8] = v12;
  v13 = v38[1];
  v9[1] = v38[0];
  v9[2] = v13;
  v14 = v38[3];
  v9[3] = v38[2];
  v9[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 2;
  v23 = v9;
  v24 = v15;
  v25 = sub_1B0CA5A20;
  v26 = &v27;
  v21[2] = v9 + 1;
  v21[3] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v21[4] = 0;
  sub_1B0CA33D0(3, a1, a2, a3, a4);
  v33[1] = v8;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  sub_1B0CA286C(sub_1B0C844A0, v22, sub_1B0C844C0, v21, sub_1B03CD508, 0);
  sub_1B0C8366C(v9, v15, v33);

  return v33[0];
}

uint64_t sub_1B0CA3E1C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v3);
}

uint64_t sub_1B0CA3E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1B0CA3EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a1;
    v4 = 0;
    v5 = v2 - 1;
    v6 = a2 + 32;
    while (!__OFSUB__(v5, v4))
    {
      v7 = v4 + (v5 - v4) / 2;
      if (__OFADD__(v4, (v5 - v4) / 2))
      {
        goto LABEL_15;
      }

      if (v7 >= v2)
      {
        goto LABEL_16;
      }

      v8 = *(v6 + 16 * v7);
      v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = static SectionSpecifier.Part.< infix(_:_:)(v10, v9, v3);

      if (v11)
      {
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = static SectionSpecifier.Part.< infix(_:_:)(v12, v3, v8);

        if ((v13 & 1) == 0)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return v8;
        }

        v5 = v7 - 1;
      }

      if (v5 < v4)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return a1;
}

void sub_1B0CA3FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = v2 - 1;
    v6 = a2 + 32;
    while (!__OFSUB__(v5, v4))
    {
      v7 = v4 + (v5 - v4) / 2;
      if (__OFADD__(v4, (v5 - v4) / 2))
      {
        goto LABEL_13;
      }

      if (v7 >= v2)
      {
        goto LABEL_14;
      }

      v8 = *(v6 + 16 * v7);
      v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = static SectionSpecifier.Part.< infix(_:_:)(v10, v9, a1);

      if (v11)
      {
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = static SectionSpecifier.Part.< infix(_:_:)(v12, a1, v8);

        if ((v13 & 1) == 0)
        {
          return;
        }

        v5 = v7 - 1;
      }

      if (v5 < v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1B0CA40A4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(a2 + 8 * v8 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    SectionSpecifier.Part.dropLast()();
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    v10.array._rawValue = SectionSpecifier.Part.appending(_:)(v9 + 1).array._rawValue;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10.array._rawValue = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CA3FB0(a2, a1);
  if (v12)
  {
    v11 = *(a1 + 16);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v11;
  *(a4 + 24) = v10;
  *(a4 + 32) = a3 & 1;
}

void sub_1B0CA415C()
{
  v1 = v0[2];
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v1 < v3)
  {
    v4 = v0[3];
    v5 = v2 + 16 * v1 + 40;
    while (v1 < v3)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v4)
      {
        v6 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v8 = static SectionSpecifier.Part.< infix(_:_:)(v7, v6, v4);

        if ((v8 & 1) == 0)
        {

LABEL_11:
          v0[2] = v1 + 1;
          return;
        }
      }

      if (*(v0 + 32) != 1)
      {
        goto LABEL_11;
      }

      v9.array._rawValue = v0[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v9.array._rawValue) = SectionSpecifier.Part.isChildPart(of:)(v9);

      if (v9.array._rawValue)
      {
        goto LABEL_11;
      }

      v0[2] = ++v1;
      v3 = *(v2 + 16);
      v5 += 16;
      if (v1 >= v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1B0CA4270(uint64_t a1@<X8>)
{
  sub_1B0CA415C();
  *a1 = v2;
  *(a1 + 8) = v3;
}

double sub_1B0CA429C@<D0>(uint64_t a1@<X8>)
{
  sub_1B0CA40A4(*v1, *(v1 + 8), *(v1 + 16), v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1B0CA4308()
{
  sub_1B0CA555C(*v0, *(v0 + 8), *(v0 + 16));
  v2 = v1;

  return v2;
}

uint64_t sub_1B0CA4364(uint64_t result, unsigned __int8 a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2 - 2 >= 5)
  {
    rawValue = result;
    if (!a2)
    {
      swift_bridgeObjectRetain_n();
      sub_1B0CA40A4(a5, rawValue, 1, &v68);
      v9 = v68;
      v10 = v70;
      v11 = v71;
      v73 = v71;
      v74[0] = v68;
      v61 = *(v68 + 16);
      if (v70 < v61)
      {
        v54 = 0;
        v52 = 0;
        v60 = v72;
        v12 = v68 + 40;
        v51 = a5 + 40;
        of.array._rawValue = v69;
        v56 = v68 + 40;
        v59 = v68;
LABEL_5:
        v13 = (v12 + 16 * v10);
        v14 = v10;
        while (1)
        {
          if (v10 < 0)
          {
            goto LABEL_75;
          }

          if (v14 >= *(v9 + 16))
          {
            goto LABEL_76;
          }

          v5 = *(v13 - 1);
          v58 = *v13;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          if (v11)
          {
            v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v17 = static SectionSpecifier.Part.< infix(_:_:)(v16, v15, v11);

            if ((v17 & 1) == 0)
            {

              sub_1B0CA59DC(v74);

              sub_1B0398EFC(&v73, &qword_1EB6E5FF0, &qword_1B0EDFEF0);

              v46 = v54;
              if (!v54)
              {
              }

              goto LABEL_65;
            }
          }

          if ((v60 & 1) == 0)
          {
            goto LABEL_15;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v18 = SectionSpecifier.Part.isChildPart(of:)(of);

          if (v18)
          {
            break;
          }

          ++v14;
          v13 += 16;
          v9 = v59;
          if (v14 >= v61)
          {
            goto LABEL_45;
          }
        }

        v10 = v14;
LABEL_15:
        v53 = rawValue;
        v19 = *(v5 + 16);
        v62 = a4;
        if (v19)
        {
          v20 = *(v5 + 8 * v19 + 24);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          rawValue = SectionSpecifier.Part.dropLast()().array._rawValue;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_77;
          }

          v21.array._rawValue = SectionSpecifier.Part.appending(_:)(v20 + 1).array._rawValue;
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v21.array._rawValue = 0;
        }

        sub_1B0CA3FB0(v5, a5);
        rawValue = v22;
        v24 = v23;

        if ((v24 & 1) != 0 || (v25 = *(a5 + 16), rawValue >= v25))
        {

          rawValue = v53;
          v12 = v56;
          goto LABEL_44;
        }

        v50 = a5;
        v26 = 0;
        v55 = 0;
        v57 = -v25;
        v27 = a3;
        v12 = v56;
LABEL_22:
        v49 = v26;
        if (rawValue < v25)
        {
          v28 = (v51 + 16 * rawValue++);
          v29 = v28;
          do
          {
            v30 = *v29;
            v29 += 16;
            a5 = v30;
            if (v21.array._rawValue)
            {
              v31 = *(v28 - 1);
              v32 = v11;
              v33 = v10;
              v34 = v25;
              swift_bridgeObjectRetain_n();
              a4 = static SectionSpecifier.Part.< infix(_:_:)(v35, v31, v21.array._rawValue);
              v12 = v56;
              swift_bridgeObjectRelease_n();
              v25 = v34;
              v10 = v33;
              v11 = v32;
              v27 = a3;
              if ((a4 & 1) == 0)
              {
LABEL_40:

                if (v55)
                {
                  goto LABEL_72;
                }

                a5 = v50;
                a4 = v62;
                rawValue = v53;
                if (v49)
                {
                  goto LABEL_42;
                }

LABEL_44:
                ++v10;
                v9 = v59;
                if (v10 >= v61)
                {
LABEL_45:

                  sub_1B0CA59DC(v74);

                  sub_1B0398EFC(&v73, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
                  v46 = v54;
                  if (!v54)
                  {
                  }

LABEL_65:
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v66 = *a4;
                  sub_1B0CA5128(v46, rawValue, isUniquelyReferenced_nonNull_native);

                  *a4 = v66;
                  sub_1B0CA4364(v46, v52, a3 & 1, a4, a5);
                }

                goto LABEL_5;
              }
            }

            if (v27)
            {
              if (a5 != 3)
              {
                if (a5 == 2)
                {
                  goto LABEL_36;
                }

LABEL_26:
                if (rawValue >= v25)
                {
                  goto LABEL_40;
                }

                goto LABEL_27;
              }
            }

            else if (a5 != 2)
            {
              if (a5 == 3)
              {
LABEL_36:
                v26 = 1;
                if (rawValue < v25)
                {
                  goto LABEL_22;
                }

                a5 = v50;
                a4 = v62;
                rawValue = v53;
                if (v55)
                {
                  goto LABEL_70;
                }

LABEL_42:

                v54 = v5;
                v52 = v58;
                goto LABEL_44;
              }

              goto LABEL_26;
            }

            if (rawValue >= v25)
            {
              rawValue = v53;

              goto LABEL_69;
            }

            v55 = 1;
LABEL_27:
            ++rawValue;
            v28 = v29;
          }

          while (v57 + rawValue != 1);
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_70;
      }

      swift_bridgeObjectRelease_n();
      sub_1B0CA59DC(v74);
      goto LABEL_60;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *a4;
    sub_1B0CA5128(0, rawValue, v36);

    v62 = a4;
    *a4 = v68;
    v37 = a5;
    sub_1B0CA40A4(a5, rawValue, 1, &v68);
    v38 = v68;
    rawValue = v69;
    a5 = v70;
    v39 = v71;
    v73 = v71;
    v74[0] = v68;
    v40 = *(v68 + 16);
    if (v70 >= v40)
    {
LABEL_59:
      sub_1B0CA59DC(v74);
LABEL_60:

      return sub_1B0398EFC(&v73, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
    }

    ofa.array._rawValue = v69;
    if ((v70 & 0x8000000000000000) == 0)
    {
      v41 = v72;
      a4 = v68 + 32;
      while (a5 < *(v38 + 16))
      {
        v42 = a4 + 16 * a5;
        rawValue = *v42;
        v43 = *(v42 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v39)
        {
          v44 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v5 = static SectionSpecifier.Part.< infix(_:_:)(v45, v44, v39);

          if ((v5 & 1) == 0)
          {
            sub_1B0CA59DC(v74);

            sub_1B0398EFC(&v73, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
          }
        }

        if (v41 & 1) == 0 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v5 = SectionSpecifier.Part.isChildPart(of:)(ofa), , (v5))
        {
          ++a5;
          sub_1B0CA4364(rawValue, v43, a3 & 1, v62, v37);

          if (a5 >= v40)
          {
            goto LABEL_59;
          }
        }

        else
        {

          if (++a5 >= v40)
          {
            goto LABEL_59;
          }
        }

        if ((a5 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    rawValue = v53;
LABEL_69:
    a5 = v50;
    a4 = v62;
LABEL_70:

    sub_1B0CA59DC(v74);

    sub_1B0398EFC(&v73, &qword_1EB6E5FF0, &qword_1B0EDFEF0);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *a4;
    sub_1B0CA5128(v5, rawValue, v48);

    *a4 = v67;
    sub_1B0CA4364(v5, v58, a3 & 1, a4, a5);
  }

  return result;
}