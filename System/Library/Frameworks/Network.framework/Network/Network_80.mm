unint64_t sub_181F6A0A8@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 4) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F2934(v26, a2, 10);

    a3 = v27;
    v4 = (v8 >> 32) & 1;
LABEL_63:
    if (v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if (v17 != v17)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if (v22 != v22)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if (v11 != v11)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if (v25 != v25)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LODWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if (v14 != v14)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LODWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if (v20 != v20)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_181F6A38C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v28 = 0;
    v27 = 1;
LABEL_66:
    *a4 = v28;
    *(a4 + 8) = v27 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v29 = result;
    v30 = a4;

    v9 = a3(v29, a2, 10);
    v27 = v32;

    a4 = v30;
LABEL_63:
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v9;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v33 = a4;
      result = sub_182AD3CF8();
      a4 = v33;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v35 = v5;
        v27 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v34[0] = result;
  v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = v34;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v34 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v19 = v34 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6A6C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a1, a3, 0, a2, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_181F6A718@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    a3[1] = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v20 = result;
    v21 = a3;

    v8 = sub_1820F343C(v20, a2, 10);

    a3 = v21;
    LODWORD(v4) = (v8 >> 8) & 1;
LABEL_63:
    if (v4)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      LOBYTE(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v22 = a3;
      result = sub_182AD3CF8();
      a3 = v22;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOBYTE(v8) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v8) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v8 = (10 * v8) + v14;
              if ((v8 >> 8))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          while (1)
          {
            v17 = *result - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) + v17;
            if ((v8 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) - v10;
            if ((v8 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v24 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOBYTE(v8) = 0;
        v18 = v23;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF00) != 0)
          {
            break;
          }

          v8 = (10 * v8) + v19;
          if ((v8 >> 8))
          {
            break;
          }

          ++v18;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LOBYTE(v8) = 0;
        v11 = v23 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF00) != 0)
          {
            break;
          }

          v8 = (10 * v8) - v12;
          if ((v8 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v11;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOBYTE(v8) = 0;
      v15 = v23 + 1;
      while (1)
      {
        v16 = *v15 - 48;
        if (v16 > 9)
        {
          break;
        }

        if (((10 * v8) & 0xF00) != 0)
        {
          break;
        }

        v8 = (10 * v8) + v16;
        if ((v8 >> 8))
        {
          break;
        }

        ++v15;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6AA44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a1, a3, 0, a2, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_181F6AA98@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 2) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v20 = result;
    v21 = a3;

    v8 = sub_1820F3A10(v20, a2, 10);

    a3 = v21;
    LODWORD(v4) = HIWORD(v8) & 1;
LABEL_63:
    if (v4)
    {
      LOWORD(v6) = 0;
    }

    else
    {
      LOWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v22 = a3;
      result = sub_182AD3CF8();
      a3 = v22;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOWORD(v8) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v8) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v8 = (10 * v8) + v14;
              if ((v8 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v17 = *result - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) + v17;
            if ((v8 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) - v10;
            if ((v8 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v24 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOWORD(v8) = 0;
        v18 = v23;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF0000) != 0)
          {
            break;
          }

          v8 = (10 * v8) + v19;
          if ((v8 & 0x10000) != 0)
          {
            break;
          }

          ++v18;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LOWORD(v8) = 0;
        v11 = v23 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF0000) != 0)
          {
            break;
          }

          v8 = (10 * v8) - v12;
          if ((v8 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v11;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOWORD(v8) = 0;
      v15 = v23 + 1;
      while (1)
      {
        v16 = *v15 - 48;
        if (v16 > 9)
        {
          break;
        }

        if (((10 * v8) & 0xF0000) != 0)
        {
          break;
        }

        v8 = (10 * v8) + v16;
        if ((v8 & 0x10000) != 0)
        {
          break;
        }

        ++v15;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6ADC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a1, a3, 0, a2, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_181F6AE18@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 4) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F3FE4(v26, a2, 10);

    a3 = v27;
    v4 = (v8 >> 32) & 1;
LABEL_63:
    if (v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v17 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__CFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__CFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v11 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (v11 < v10)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v25 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__CFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LODWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v14 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (v14 < v13)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LODWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v20 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__CFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6B0FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a1, a3, 0, a2, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_181F6B150@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v23 = 0;
    v22 = 1;
LABEL_68:
    *a4 = v23;
    *(a4 + 8) = v22 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v24 = result;
    v25 = a4;

    v9 = a3(v24, a2, 10);
    v22 = v27;

    a4 = v25;
LABEL_65:
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v9;
    }

    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a4;
      result = sub_182AD3CF8();
      a4 = v28;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v9, 0xAuLL))
              {
                goto LABEL_63;
              }

              v12 = __CFADD__(10 * v9, v16);
              v9 = 10 * v9 + v16;
              if (v12)
              {
                goto LABEL_63;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              goto LABEL_63;
            }

            v12 = __CFADD__(10 * v9, v19);
            v9 = 10 * v9 + v19;
            if (v12)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v9 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_64;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              goto LABEL_63;
            }

            v12 = 10 * v9 >= v11;
            v9 = 10 * v9 - v11;
            if (!v12)
            {
              goto LABEL_63;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v5) = 0;
LABEL_64:
        v30 = v5;
        v22 = v5;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v9 = 0;
        v20 = v29;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (!is_mul_ok(v9, 0xAuLL))
          {
            break;
          }

          v12 = __CFADD__(10 * v9, v21);
          v9 = 10 * v9 + v21;
          if (v12)
          {
            break;
          }

          ++v20;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v29 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (!is_mul_ok(v9, 0xAuLL))
          {
            break;
          }

          v12 = 10 * v9 >= v14;
          v9 = 10 * v9 - v14;
          if (!v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v17 = v29 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v18);
        v9 = 10 * v9 + v18;
        if (v12)
        {
          break;
        }

        ++v17;
        if (!--v5)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_181F6B470()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000011;
  v0[1] = 0x8000000182BD5670;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 164;
  return swift_willThrow();
}

uint64_t sub_181F6B4FC()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000020;
  v0[1] = 0x8000000182BD5640;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 168;
  return swift_willThrow();
}

uint64_t sub_181F6B588()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD00000000000001FLL;
  v0[1] = 0x8000000182BD5620;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 172;
  return swift_willThrow();
}

uint64_t sub_181F6B614()
{
  sub_181F6C160();
  swift_allocError();
  strcpy(v0, "superDecoder()");
  v0[15] = -18;
  *(v0 + 2) = 0xD00000000000005ELL;
  *(v0 + 3) = 0x8000000182BD5580;
  *(v0 + 4) = 176;
  return swift_willThrow();
}

uint64_t sub_181F6B6A4()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000015;
  v0[1] = 0x8000000182BD5600;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 180;
  return swift_willThrow();
}

uint64_t sub_181F6BA34()
{
  result = sub_182AD4318();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BA84()
{
  result = sub_182AD4328();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BB2C()
{
  result = sub_182AD4358();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BB7C()
{
  result = sub_182AD4338();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BCBC()
{
  result = sub_182AD4368();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_181F6BDDC()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000012;
  v0[1] = 0x8000000182BD55E0;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 57;
  return swift_willThrow();
}

uint64_t sub_181F6BE6C()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000016;
  v0[1] = 0x8000000182BD5560;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 61;
  return swift_willThrow();
}

unint64_t sub_181F6BEFC()
{
  result = qword_1EA838B18;
  if (!qword_1EA838B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B18);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_181F6BF64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F6BFAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_181F6C014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F6C05C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_181F6C0AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F6C0F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181F6C160()
{
  result = qword_1EA838B20;
  if (!qword_1EA838B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B20);
  }

  return result;
}

uint64_t sub_181F6C1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F6C208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_181F6C250(uint64_t result, int a2, int a3)
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

unint64_t sub_181F6C298()
{
  result = qword_1EA838B28;
  if (!qword_1EA838B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B28);
  }

  return result;
}

unint64_t sub_181F6C2EC()
{
  result = qword_1EA838B30;
  if (!qword_1EA838B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B30);
  }

  return result;
}

_BYTE *sub_181F6C398@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t sub_181F6C424()
{
  result = qword_1EA838B38;
  if (!qword_1EA838B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWBrowser.Descriptor.Options.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NWBrowser.Descriptor.Options.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181F6C630(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  if (!a4 && a3 == 1)
  {
    return 1;
  }

  if (a4 <= 2u)
  {
    if (a4 == 1)
    {
      result = 1;
      if (a3 == 2)
      {
        return result;
      }

      v6 = a2;
      if (a3 == 4)
      {
        return result;
      }

      goto LABEL_20;
    }

    v6 = a2;
    if (a4 == 2 && a3 - 3 < 2)
    {
      return 1;
    }
  }

  else
  {
    v6 = a2;
    if (a4 == 3)
    {
      if ((a3 & 0xFE) == 4)
      {
        return 1;
      }
    }

    else
    {
      if (a4 != 4)
      {
        if (a4 != 5 || a3 != 4)
        {
          goto LABEL_20;
        }

        return 1;
      }

      if (a3 == 6)
      {
        return 1;
      }
    }
  }

LABEL_20:
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BD5700);
  MEMORY[0x1865D9CA0](a1, v6);
  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
  sub_182AD3E18();
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);

  v8 = sub_182AD2678();
  v9 = sub_182AD38C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v16);
    *(v10 + 22) = 2080;
    v15 = sub_181C64FFC(0, 0xE000000000000000, v16);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_181F6C974(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD56B0);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
    sub_182AD3E18();
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v11 = 136315650;
      v12 = sub_182AD3BF8();
      v14 = sub_181C64FFC(v12, v13, v18);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_181C64FFC(a1, a2, v18);
      *(v11 + 22) = 2080;
      v15 = sub_181C64FFC(0, 0xE000000000000000, v18);

      *(v11 + 24) = v15;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v17, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }
  }

  result = sub_181F6C630(a1, a2, a3, *v4);
  *v4 = a3;
  return result;
}

unint64_t sub_181F6CC78()
{
  result = qword_1EA838B50;
  if (!qword_1EA838B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B50);
  }

  return result;
}

uint64_t sub_181F6CCFC(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  if (!a4 && a3 == 1)
  {
    return 1;
  }

  v4 = a4;
  if (a4 > 2u)
  {
    if (a4 != 3)
    {
      if (a4 == 4)
      {
        v4 = 1;
        if (a3 == 3 || a3 == 6)
        {
          return v4;
        }
      }

      goto LABEL_18;
    }

    if ((a3 & 0xFE) != 4)
    {
      goto LABEL_18;
    }

    return 1;
  }

  if (a4 == 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      return v4;
    }

    goto LABEL_18;
  }

  if (a4 == 2 && a3 - 3 < 2)
  {
    return 1;
  }

LABEL_18:
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BD5740);
  MEMORY[0x1865D9CA0](a1, a2);
  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
  sub_182AD3E18();
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);

  v8 = sub_182AD2678();
  v9 = sub_182AD38C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v17);
    *(v10 + 22) = 2080;
    v15 = sub_181C64FFC(0, 0xE000000000000000, v17);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_181F6D028(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD5720);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
    sub_182AD3E18();
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v11 = 136315650;
      v12 = sub_182AD3BF8();
      v14 = sub_181C64FFC(v12, v13, v18);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_181C64FFC(a1, a2, v18);
      *(v11 + 22) = 2080;
      v15 = sub_181C64FFC(0, 0xE000000000000000, v18);

      *(v11 + 24) = v15;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v17, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }
  }

  result = sub_181F6CCFC(a1, a2, a3, *v4);
  *v4 = a3;
  return result;
}

unint64_t sub_181F6D32C()
{
  result = qword_1EA838B68;
  if (!qword_1EA838B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B68);
  }

  return result;
}

void sub_181F6D388()
{
  v0 = nw_protocol_copy_tls_definition();
  type metadata accessor for NWProtocolDefinition();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v3 = sub_182AD2F88();
  v5 = v4;

  v1[2] = v3;
  v1[3] = v5;
  qword_1EA836840 = v1;
}

double static NWProtocolTLS.definition.getter()
{
  if (qword_1EA836838 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t NWProtocolTLS.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_tls_create_options();
  return v0;
}

void InputHandlerLinkage.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

uint64_t OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 > 2)
  {
    if (*(v2 + 16) > 4u)
    {
      if (v9 == 5)
      {

        sub_181FE8374(0xD00000000000001DLL, 0x8000000182BD57F0);
        if (sub_181F73D10(*(v8 + 16), *(v8 + 24), *(v8 + 32), v5, v4, v6))
        {
          v13 = *(v8 + 16);
          v14 = *(v8 + 24);
          v15 = *(v8 + 32);
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
          *(v8 + 32) = 6;
          sub_181F68E5C(v13, v14, v15);
        }

        sub_181FE8710();
        v16 = v8;
        v17 = v7;
        v18 = 5;
        goto LABEL_17;
      }
    }

    else
    {
      if (v9 == 3)
      {
        ObjectType = swift_getObjectType();
        *&v22 = v5;
        *(&v22 + 1) = v4;
        v23 = v6;
        v11 = v7[2];
        swift_unknownObjectRetain();
        v12 = v11(&v22, a2 & 1, ObjectType, v7);
        sub_181F68E5C(v8, v7, 3u);
        return v12 & 1;
      }

      v19 = v7;
      output_handler = nw_protocol_swift_wrapper_get_output_handler(v8, v19);
      if (output_handler && nw_protocol_remove_input_handler_quiet(output_handler, v8))
      {
        nw_protocol_destroy_output_linkage_handle(v8, v19);
        v16 = v8;
        v17 = v7;
        v18 = 4;
LABEL_17:
        sub_181F68E5C(v16, v17, v18);
        v12 = 1;
        return v12 & 1;
      }

      sub_181F68E5C(v8, v7, 4u);
    }

    v12 = 0;
    return v12 & 1;
  }

  if (*(v2 + 16))
  {
    *&v22 = *a1;
    *(&v22 + 1) = v4;
    v23 = v6;
    if (v9 == 1)
    {

      v12 = sub_1822935B8(&v22, a2 & 1);
      sub_181F68E5C(v8, v7, 1u);
    }

    else
    {

      v12 = sub_1822935B8(&v22, a2 & 1);
      sub_181F68E5C(v8, v7, 2u);
    }
  }

  else
  {
    *&v22 = *a1;
    *(&v22 + 1) = v4;
    v23 = v6;

    v12 = sub_1822935B8(&v22, a2 & 1);
    sub_181F68E5C(v8, v7, 0);
  }

  return v12 & 1;
}

uint64_t OutputHandlerLinkage.invokeConnect(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 > 2)
  {
    if (*(v1 + 16) > 4u)
    {
      if (v7 == 5)
      {

        sub_181FE8374(0xD000000000000010, 0x8000000182BD5810);
        v11 = *(v6 + 16);
        v12 = *(v6 + 24);
        v13 = *(v6 + 32);
        v30 = v11;
        v31 = v12;
        v32 = v13;
        v27 = v6;
        v28 = v5;
        v29 = 5;
        sub_181F68EA8(v11, v12, v13);
        InputHandlerLinkage.invokeConnected(_:)(&v27);
        sub_181F68E5C(v6, v5, 5u);
        sub_181F68E5C(v11, v12, v13);
        v10 = 1;
        return v10 & 1;
      }
    }

    else
    {
      if (v7 == 3)
      {
        ObjectType = swift_getObjectType();
        v30 = v3;
        v31 = v2;
        v32 = v4;
        v9 = v5[4];
        swift_unknownObjectRetain();
        v10 = v9(&v30, ObjectType, v5);
        sub_181F68E5C(v6, v5, 3u);
        return v10 & 1;
      }

      output_handler = nw_protocol_swift_wrapper_get_output_handler(v6, v5);
      if (output_handler)
      {
        v10 = nw_protocol_connect_quiet(output_handler, v6);
        sub_181F68E5C(v6, v5, 4u);
        return v10 & 1;
      }

      sub_181F68E5C(v6, v5, 4u);
    }

    v10 = 0;
    return v10 & 1;
  }

  if (*(v1 + 16))
  {
    if (v7 == 1)
    {
      v30 = *a1;
      v31 = v2;
      v32 = v4;

      sub_182292F88(&v30, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v27);
      v15 = *(v6 + 40);
      v16 = *(v6 + 48);
      v17 = *(v6 + 56);
      v30 = v15;
      v31 = v16;
      v32 = v17;
      sub_181F68EA8(v15, v16, v17);
      sub_182292A10(&v27);
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v25[0] = v27;
      v25[1] = v28;
      v26 = v29;
      v10 = OutputHandlerLinkage.invokeConnect(_:)(v25);
      v21 = v6;
      v22 = v5;
      v23 = 1;
    }

    else
    {
      v30 = *a1;
      v31 = v2;
      v32 = v4;

      sub_182292F88(&v30, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v27);
      v15 = *(v6 + 40);
      v16 = *(v6 + 48);
      v17 = *(v6 + 56);
      v30 = v15;
      v31 = v16;
      v32 = v17;
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        sub_181F68EA8(v15, v16, v17);
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          *(v6 + 88) = v6;
          *(v6 + 96) = 0;
          *(v6 + 104) = 2;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v15, v16, v17);
      }

      v18 = *(v6 + 88);
      v19 = *(v6 + 96);
      v20 = *(v6 + 104);
      v27 = v18;
      v28 = v19;
      v29 = v20;
      sub_181F68EA8(v18, v19, v20);
      v10 = OutputHandlerLinkage.invokeConnect(_:)(&v27);
      v21 = v6;
      v22 = v5;
      v23 = 2;
    }
  }

  else
  {
    v30 = *a1;
    v31 = v2;
    v32 = v4;

    sub_182292F88(&v30, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v27);
    v15 = *(v6 + 40);
    v16 = *(v6 + 48);
    v17 = *(v6 + 56);
    v30 = v15;
    v31 = v16;
    v32 = v17;
    if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
    {
      sub_181F68EA8(v15, v16, v17);
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        *(v6 + 88) = v6;
        *(v6 + 96) = 0;
        *(v6 + 104) = 0;

        sub_181F68E5C(0, 0, 6u);
      }
    }

    else
    {
      sub_181F68EA8(v15, v16, v17);
    }

    v18 = *(v6 + 88);
    v19 = *(v6 + 96);
    v20 = *(v6 + 104);
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_181F68EA8(v18, v19, v20);
    v10 = OutputHandlerLinkage.invokeConnect(_:)(&v27);
    v21 = v6;
    v22 = v5;
    v23 = 0;
  }

  sub_181F68E5C(v21, v22, v23);
  sub_181F68E5C(v18, v19, v20);
  sub_181F68E5C(v15, v16, v17);
  return v10 & 1;
}

void OutputHandlerLinkage.invokeDisconnect(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v31 = *a1;
        v32 = v2;
        v33 = v4;

        sub_182292F88(&v31, 0x656E6E6F63736964, 0xEE00293A5F287463, &v28);
        v17 = *(v6 + 40);
        v18 = *(v6 + 48);
        v19 = *(v6 + 56);
        v31 = v17;
        v32 = v18;
        v33 = v19;
        sub_181F68EA8(v17, v18, v19);
        sub_182292A10(&v28);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v26[0] = v28;
        v26[1] = v29;
        v27 = v30;
        OutputHandlerLinkage.invokeDisconnect(_:)(v26);
        v23 = v6;
        v24 = v5;
        v25 = 1;
      }

      else
      {
        v31 = *a1;
        v32 = v2;
        v33 = v4;

        sub_182292F88(&v31, 0x656E6E6F63736964, 0xEE00293A5F287463, &v28);
        v17 = *(v6 + 40);
        v18 = *(v6 + 48);
        v19 = *(v6 + 56);
        v31 = v17;
        v32 = v18;
        v33 = v19;
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          sub_181F68EA8(v17, v18, v19);
          if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
          {
            *(v6 + 88) = v6;
            *(v6 + 96) = 0;
            *(v6 + 104) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v17, v18, v19);
        }

        v20 = *(v6 + 88);
        v21 = *(v6 + 96);
        v22 = *(v6 + 104);
        v28 = v20;
        v29 = v21;
        v30 = v22;
        sub_181F68EA8(v20, v21, v22);
        OutputHandlerLinkage.invokeDisconnect(_:)(&v28);
        v23 = v6;
        v24 = v5;
        v25 = 2;
      }
    }

    else
    {
      v31 = *a1;
      v32 = v2;
      v33 = v4;

      sub_182292F88(&v31, 0x656E6E6F63736964, 0xEE00293A5F287463, &v28);
      v17 = *(v6 + 40);
      v18 = *(v6 + 48);
      v19 = *(v6 + 56);
      v31 = v17;
      v32 = v18;
      v33 = v19;
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        sub_181F68EA8(v17, v18, v19);
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          *(v6 + 88) = v6;
          *(v6 + 96) = 0;
          *(v6 + 104) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v17, v18, v19);
      }

      v20 = *(v6 + 88);
      v21 = *(v6 + 96);
      v22 = *(v6 + 104);
      v28 = v20;
      v29 = v21;
      v30 = v22;
      sub_181F68EA8(v20, v21, v22);
      OutputHandlerLinkage.invokeDisconnect(_:)(&v28);
      v23 = v6;
      v24 = v5;
      v25 = 0;
    }

    sub_181F68E5C(v23, v24, v25);
    v13 = v20;
    v14 = v21;
    v15 = v22;
  }

  else
  {
    if (*(v1 + 16) <= 4u)
    {
      if (v7 == 3)
      {
        ObjectType = swift_getObjectType();
        v31 = v3;
        v32 = v2;
        v33 = v4;
        v9 = v5[5];
        swift_unknownObjectRetain();
        v9(&v31, ObjectType, v5);
        v10 = v6;
        v11 = v5;
        v12 = 3;
      }

      else
      {
        output_handler = nw_protocol_swift_wrapper_get_output_handler(v6, v5);
        if (output_handler)
        {
          nw_protocol_disconnect_quiet(output_handler, v6);
        }

        v10 = v6;
        v11 = v5;
        v12 = 4;
      }

      goto LABEL_25;
    }

    if (v7 != 5)
    {
      return;
    }

    sub_181FE8374(0xD000000000000013, 0x8000000182BD5830);
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    v19 = *(v6 + 32);
    v31 = v17;
    v32 = v18;
    v33 = v19;
    v28 = v6;
    v29 = v5;
    v30 = 5;
    sub_181F68EA8(v17, v18, v19);
    InputHandlerLinkage.invokeDisconnected(_:)(&v28);
    v13 = v6;
    v14 = v5;
    v15 = 5;
  }

  sub_181F68E5C(v13, v14, v15);
  v10 = v17;
  v11 = v18;
  v12 = v19;
LABEL_25:
  sub_181F68E5C(v10, v11, v12);
}

void InputHandlerLinkage.invokeConnected(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v33 = *a1;
        v34 = v2;
        v35 = v4;

        sub_182293124(&v33, 0x657463656E6E6F63, 0xED0000293A5F2864, &v30);
        if ((*(v6 + 312) & 0x400) == 0)
        {
          sub_182094100();
        }

        v19 = *(v6 + 16);
        v20 = *(v6 + 24);
        v21 = *(v6 + 32);
        v33 = v19;
        v34 = v20;
        v35 = v21;
        sub_181F68EA8(v19, v20, v21);
        sub_182292B80(&v30);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v28[0] = v30;
        v28[1] = v31;
        v29 = v32;
        InputHandlerLinkage.invokeConnected(_:)(v28);
        v25 = v6;
        v26 = v5;
        v27 = 1;
      }

      else
      {
        v33 = *a1;
        v34 = v2;
        v35 = v4;

        sub_182293124(&v33, 0x657463656E6E6F63, 0xED0000293A5F2864, &v30);
        v19 = *(v6 + 16);
        v20 = *(v6 + 24);
        v21 = *(v6 + 32);
        v33 = v19;
        v34 = v20;
        v35 = v21;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v19, v20, v21);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v19, v20, v21);
        }

        v22 = *(v6 + 112);
        v23 = *(v6 + 120);
        v24 = *(v6 + 128);
        v30 = v22;
        v31 = v23;
        v32 = v24;
        sub_181F68EA8(v22, v23, v24);
        InputHandlerLinkage.invokeConnected(_:)(&v30);
        v25 = v6;
        v26 = v5;
        v27 = 2;
      }
    }

    else
    {
      v33 = *a1;
      v34 = v2;
      v35 = v4;

      sub_182293124(&v33, 0x657463656E6E6F63, 0xED0000293A5F2864, &v30);
      v19 = *(v6 + 16);
      v20 = *(v6 + 24);
      v21 = *(v6 + 32);
      v33 = v19;
      v34 = v20;
      v35 = v21;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v19, v20, v21);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v19, v20, v21);
      }

      v22 = *(v6 + 112);
      v23 = *(v6 + 120);
      v24 = *(v6 + 128);
      v30 = v22;
      v31 = v23;
      v32 = v24;
      sub_181F68EA8(v22, v23, v24);
      InputHandlerLinkage.invokeConnected(_:)(&v30);
      v25 = v6;
      v26 = v5;
      v27 = 0;
    }

    sub_181F68E5C(v25, v26, v27);
    sub_181F68E5C(v22, v23, v24);
    v11 = v19;
    v12 = v20;
    v13 = v21;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000012, 0x8000000182BD5850);
    v14 = *(v6 + 832);
    if (v14)
    {
      v15 = *(v6 + 840);

      v14(1);
      sub_181A554F4(v14, v15);
      v16 = *(v6 + 832);
      v17 = *(v6 + 840);
      *(v6 + 832) = 0;
      *(v6 + 840) = 0;
      sub_181A554F4(v16, v17);
    }

    v11 = v6;
    v12 = v5;
    v13 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v33 = v3;
    v34 = v2;
    v35 = v4;
    v9 = v5[2];
    v10 = *(v9 + 16);
    swift_unknownObjectRetain();
    v10(&v33, ObjectType, v9);
    v11 = v6;
    v12 = v5;
    v13 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_connected_quiet(input_handler, v6);
    }

    v11 = v6;
    v12 = v5;
    v13 = 4;
  }

  sub_181F68E5C(v11, v12, v13);
}

void InputHandlerLinkage.invokeDisconnected(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v29 = *a1;
        v30 = v2;
        v31 = v4;

        sub_182293124(&v29, 0xD000000000000010, 0x8000000182BD5870, &v26);
        v15 = *(v6 + 16);
        v16 = *(v6 + 24);
        v17 = *(v6 + 32);
        v29 = v15;
        v30 = v16;
        v31 = v17;
        sub_181F68EA8(v15, v16, v17);
        sub_182292B80(&v26);
        v18 = v26;
        v19 = v27;
        v20 = v28;
        v24[0] = v26;
        v24[1] = v27;
        v25 = v28;
        InputHandlerLinkage.invokeDisconnected(_:)(v24);
        v21 = v6;
        v22 = v5;
        v23 = 1;
      }

      else
      {
        v29 = *a1;
        v30 = v2;
        v31 = v4;

        sub_182293124(&v29, 0xD000000000000010, 0x8000000182BD5870, &v26);
        v15 = *(v6 + 16);
        v16 = *(v6 + 24);
        v17 = *(v6 + 32);
        v29 = v15;
        v30 = v16;
        v31 = v17;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v15, v16, v17);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v15, v16, v17);
        }

        v18 = *(v6 + 112);
        v19 = *(v6 + 120);
        v20 = *(v6 + 128);
        v26 = v18;
        v27 = v19;
        v28 = v20;
        sub_181F68EA8(v18, v19, v20);
        InputHandlerLinkage.invokeDisconnected(_:)(&v26);
        v21 = v6;
        v22 = v5;
        v23 = 2;
      }
    }

    else
    {
      v29 = *a1;
      v30 = v2;
      v31 = v4;

      sub_182293124(&v29, 0xD000000000000010, 0x8000000182BD5870, &v26);
      v15 = *(v6 + 16);
      v16 = *(v6 + 24);
      v17 = *(v6 + 32);
      v29 = v15;
      v30 = v16;
      v31 = v17;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v15, v16, v17);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v15, v16, v17);
      }

      v18 = *(v6 + 112);
      v19 = *(v6 + 120);
      v20 = *(v6 + 128);
      v26 = v18;
      v27 = v19;
      v28 = v20;
      sub_181F68EA8(v18, v19, v20);
      InputHandlerLinkage.invokeDisconnected(_:)(&v26);
      v21 = v6;
      v22 = v5;
      v23 = 0;
    }

    sub_181F68E5C(v21, v22, v23);
    sub_181F68E5C(v18, v19, v20);
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    v29 = *a1;
    v30 = v2;
    v31 = v4;

    InputHarnessProtocol.disconnected(_:)();
    v11 = v6;
    v12 = v5;
    v13 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v29 = v3;
    v30 = v2;
    v31 = v4;
    v9 = v5[2];
    v10 = *(v9 + 24);
    swift_unknownObjectRetain();
    v10(&v29, ObjectType, v9);
    v11 = v6;
    v12 = v5;
    v13 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_disconnected_quiet(input_handler, v6);
    }

    v11 = v6;
    v12 = v5;
    v13 = 4;
  }

  sub_181F68E5C(v11, v12, v13);
}

void InputHandlerLinkage.invokeInputAvailable(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v32 = *a1;
        v33 = v2;
        v34 = v4;

        sub_182293124(&v32, 0xD000000000000012, 0x8000000182BD58B0, &v29);
        v18 = *(v6 + 16);
        v19 = *(v6 + 24);
        v20 = *(v6 + 32);
        v32 = v18;
        v33 = v19;
        v34 = v20;
        sub_181F68EA8(v18, v19, v20);
        sub_182292B80(&v29);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v27[0] = v29;
        v27[1] = v30;
        v28 = v31;
        InputHandlerLinkage.invokeInputAvailable(_:)(v27);
        v24 = v6;
        v25 = v5;
        v26 = 1;
      }

      else
      {
        v32 = *a1;
        v33 = v2;
        v34 = v4;

        sub_182293124(&v32, 0xD000000000000012, 0x8000000182BD58B0, &v29);
        v18 = *(v6 + 16);
        v19 = *(v6 + 24);
        v20 = *(v6 + 32);
        v32 = v18;
        v33 = v19;
        v34 = v20;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v18, v19, v20);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v18, v19, v20);
        }

        v21 = *(v6 + 112);
        v22 = *(v6 + 120);
        v23 = *(v6 + 128);
        v29 = v21;
        v30 = v22;
        v31 = v23;
        sub_181F68EA8(v21, v22, v23);
        InputHandlerLinkage.invokeInputAvailable(_:)(&v29);
        v24 = v6;
        v25 = v5;
        v26 = 2;
      }
    }

    else
    {
      v32 = *a1;
      v33 = v2;
      v34 = v4;

      sub_182293124(&v32, 0xD000000000000012, 0x8000000182BD58B0, &v29);
      v18 = *(v6 + 16);
      v19 = *(v6 + 24);
      v20 = *(v6 + 32);
      v32 = v18;
      v33 = v19;
      v34 = v20;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v18, v19, v20);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v18, v19, v20);
      }

      v21 = *(v6 + 112);
      v22 = *(v6 + 120);
      v23 = *(v6 + 128);
      v29 = v21;
      v30 = v22;
      v31 = v23;
      sub_181F68EA8(v21, v22, v23);
      InputHandlerLinkage.invokeInputAvailable(_:)(&v29);
      v24 = v6;
      v25 = v5;
      v26 = 0;
    }

    sub_181F68E5C(v24, v25, v26);
    sub_181F68E5C(v21, v22, v23);
    v10 = v18;
    v11 = v19;
    v12 = v20;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000018, 0x8000000182BD5890);
    v13 = *(v6 + 848);
    if (v13)
    {
      v14 = *(v6 + 856);

      v13(1);
      sub_181A554F4(v13, v14);
      v15 = *(v6 + 848);
      v16 = *(v6 + 856);
      *(v6 + 848) = 0;
      *(v6 + 856) = 0;
      sub_181A554F4(v15, v16);
    }

    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v32 = v3;
    v33 = v2;
    v34 = v4;
    v9 = v5[3];
    swift_unknownObjectRetain();
    v9(&v32, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_input_available_quiet(input_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

void sub_181F6EE30(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = *(v1 + 16);
  if (v6 <= 2)
  {
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    v15 = *(v5 + 32);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v17[0] = v3;
    v17[1] = v2;
    v18 = v4;
    sub_181F68EA8(v13, v14, v15);
    sub_181F6EE30(v17);
    v10 = v13;
    v11 = v14;
    v12 = v15;
  }

  else
  {
    v7 = *(v1 + 8);
    if (*(v1 + 16) > 4u)
    {
      if (v6 != 5)
      {
        return;
      }

      sub_181FE62E8(0xD000000000000014, 0x8000000182BD5B60);
      v10 = v5;
      v11 = v7;
      v12 = 5;
    }

    else if (v6 == 3)
    {
      ObjectType = swift_getObjectType();
      v19 = v3;
      v20 = v2;
      v21 = v4;
      v9 = v7[6];
      swift_unknownObjectRetain();
      v9(&v19, ObjectType, v7);
      v10 = v5;
      v11 = v7;
      v12 = 3;
    }

    else
    {
      input_handler = nw_protocol_swift_wrapper_get_input_handler(v5, v7);
      if (input_handler)
      {
        nw_protocol_input_flush_quiet(input_handler, v5);
      }

      v10 = v5;
      v11 = v7;
      v12 = 4;
    }
  }

  sub_181F68E5C(v10, v11, v12);
}

void InputHandlerLinkage.invokeOutputAvailable(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000013, 0x8000000182BD58F0, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        sub_181F68EA8(v14, v15, v16);
        sub_182292B80(&v25);
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        InputHandlerLinkage.invokeOutputAvailable(_:)(v23);
        v20 = v6;
        v21 = v5;
        v22 = 1;
      }

      else
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000013, 0x8000000182BD58F0, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v14, v15, v16);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v14, v15, v16);
        }

        v17 = *(v6 + 112);
        v18 = *(v6 + 120);
        v19 = *(v6 + 128);
        v25 = v17;
        v26 = v18;
        v27 = v19;
        sub_181F68EA8(v17, v18, v19);
        InputHandlerLinkage.invokeOutputAvailable(_:)(&v25);
        v20 = v6;
        v21 = v5;
        v22 = 2;
      }
    }

    else
    {
      v28 = *a1;
      v29 = v2;
      v30 = v4;

      sub_182293124(&v28, 0xD000000000000013, 0x8000000182BD58F0, &v25);
      v14 = *(v6 + 16);
      v15 = *(v6 + 24);
      v16 = *(v6 + 32);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v14, v15, v16);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v14, v15, v16);
      }

      v17 = *(v6 + 112);
      v18 = *(v6 + 120);
      v19 = *(v6 + 128);
      v25 = v17;
      v26 = v18;
      v27 = v19;
      sub_181F68EA8(v17, v18, v19);
      InputHandlerLinkage.invokeOutputAvailable(_:)(&v25);
      v20 = v6;
      v21 = v5;
      v22 = 0;
    }

    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v17, v18, v19);
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000019, 0x8000000182BD58D0);
    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v9 = v5[4];
    swift_unknownObjectRetain();
    v9(&v28, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_output_available_quiet(input_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

void InputHandlerLinkage.invokeError(_:error:)(uint64_t a1, int *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = *v2;
  v9 = *(v2 + 16);
  if (v9 <= 2)
  {
    v17 = *(v8 + 16);
    v18 = *(v8 + 24);
    v19 = *(v8 + 32);
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v23[0] = v4;
    v23[1] = v3;
    v24 = v5;
    v21 = v6;
    v22 = v7;
    sub_181F68EA8(v17, v18, v19);
    InputHandlerLinkage.invokeError(_:error:)(v23, &v21);
    v14 = v17;
    v15 = v18;
    v16 = v19;
  }

  else
  {
    v10 = *(v2 + 8);
    if (*(v2 + 16) > 4u)
    {
      if (v9 != 5)
      {
        return;
      }

      sub_181FE62E8(0x6465766965636552, 0xEE00726F72726520);
      v14 = v8;
      v15 = v10;
      v16 = 5;
    }

    else if (v9 == 3)
    {
      ObjectType = swift_getObjectType();
      v25 = v4;
      v26 = v3;
      v27 = v5;
      LODWORD(v23[0]) = v6;
      BYTE4(v23[0]) = v7;
      v12 = v10[2];
      v13 = *(v12 + 32);
      swift_unknownObjectRetain();
      v13(&v25, v23, ObjectType, v12);
      v14 = v8;
      v15 = v10;
      v16 = 3;
    }

    else
    {
      input_handler = nw_protocol_swift_wrapper_get_input_handler(v8, v10);
      if (input_handler)
      {
        nw_protocol_error_quiet(input_handler, v8);
      }

      v14 = v8;
      v15 = v10;
      v16 = 4;
    }
  }

  sub_181F68E5C(v14, v15, v16);
}

void OutputHandlerLinkage.invokeGetMessageProperties(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 <= 2)
  {
    if (*(v2 + 16))
    {
      if (v9 == 1)
      {
        v34 = *a1;
        v35 = v4;
        v36 = v6;

        sub_182292F88(&v34, 0xD000000000000018, 0x8000000182BD5910, &v37);
        swift_beginAccess();
        v32 = *(v8 + 304);
        sub_181F68E5C(v8, v7, 1u);
        v33 = 4000;
        if (v32 > 0)
        {
          v33 = v32;
        }

        if (v33 > 0xFFFFFFFFLL)
        {
          __break(1u);
        }

        *(a2 + 6) = 0;
        *a2 = v33;
        v15 = 1;
        goto LABEL_9;
      }

      v34 = *a1;
      v35 = v4;
      v36 = v6;

      sub_182292F88(&v34, 0xD000000000000018, 0x8000000182BD5910, &v37);
      v23 = *(v8 + 40);
      v24 = *(v8 + 48);
      v25 = *(v8 + 56);
      v34 = v23;
      v35 = v24;
      v36 = v25;
      if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
      {
        sub_181F68EA8(v23, v24, v25);
        if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
        {
          *(v8 + 88) = v8;
          *(v8 + 96) = 0;
          *(v8 + 104) = 2;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v23, v24, v25);
      }

      v26 = *(v8 + 88);
      v27 = *(v8 + 96);
      v28 = *(v8 + 104);
      v37 = v26;
      v38 = v27;
      v39 = v28;
      sub_181F68EA8(v26, v27, v28);
      OutputHandlerLinkage.invokeGetMessageProperties(_:)(&v37, a2);
      v29 = v8;
      v30 = v7;
      v31 = 2;
    }

    else
    {
      v34 = *a1;
      v35 = v4;
      v36 = v6;

      sub_182292F88(&v34, 0xD000000000000018, 0x8000000182BD5910, &v37);
      v23 = *(v8 + 40);
      v24 = *(v8 + 48);
      v25 = *(v8 + 56);
      v34 = v23;
      v35 = v24;
      v36 = v25;
      if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
      {
        sub_181F68EA8(v23, v24, v25);
        if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
        {
          *(v8 + 88) = v8;
          *(v8 + 96) = 0;
          *(v8 + 104) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v23, v24, v25);
      }

      v26 = *(v8 + 88);
      v27 = *(v8 + 96);
      v28 = *(v8 + 104);
      v37 = v26;
      v38 = v27;
      v39 = v28;
      sub_181F68EA8(v26, v27, v28);
      OutputHandlerLinkage.invokeGetMessageProperties(_:)(&v37, a2);
      v29 = v8;
      v30 = v7;
      v31 = 0;
    }

    sub_181F68E5C(v29, v30, v31);
    sub_181F68E5C(v26, v27, v28);
    v12 = v23;
    v13 = v24;
    v14 = v25;
    goto LABEL_29;
  }

  if (*(v2 + 16) > 4u)
  {
LABEL_8:
    *(a2 + 6) = 0;
    *a2 = 0;
    v15 = 2;
LABEL_9:
    *(a2 + 4) = v15;
    return;
  }

  if (v9 == 3)
  {
    ObjectType = swift_getObjectType();
    v34 = v5;
    v35 = v4;
    v36 = v6;
    v11 = v7[11];
    swift_unknownObjectRetain();
    v11(&v34, ObjectType, v7);
    v12 = v8;
    v13 = v7;
    v14 = 3;
LABEL_29:
    sub_181F68E5C(v12, v13, v14);
    return;
  }

  output_handler = nw_protocol_swift_wrapper_get_output_handler(v8, v7);
  if (!output_handler)
  {
    sub_181F68E5C(v8, v7, 4u);
    goto LABEL_8;
  }

  v34 = 0;
  nw_protocol_get_message_properties_quiet(output_handler, v8, &v34);
  v17 = v34;
  v18 = v34 | (HIDWORD(v34) << 32);
  v19 = sub_181F73C94(v18);
  v20 = sub_181F73C9C(v18);
  v21 = sub_181F73CA4(v18);
  sub_181F68E5C(v8, v7, 4u);
  v22 = 256;
  if ((v20 & 1) == 0)
  {
    v22 = 0;
  }

  *a2 = v17;
  *(a2 + 4) = ((v19 & 1) != 0) | WORD2(v17) | v22;
  *(a2 + 6) = (v21 & 1) != 0;
}

void OutputHandlerLinkage.invokeGetInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *v5;
  v13 = *(v5 + 8);
  v14 = *(v5 + 16);
  if (v14 <= 2)
  {
    if (*(v5 + 16))
    {
      if (v14 == 1)
      {
        *&v37 = *a1;
        *(&v37 + 1) = v10;
        LOBYTE(v38) = v11;

        sub_182292F88(&v37, 0xD00000000000003ELL, 0x8000000182BD5950, v52);
        UDPProtocol.UDPInstance.getInputFrames(minimumBytes:maximumBytes:maximumFrameCount:)(a2, a3, a4, a5);
        sub_181F68E5C(v12, v13, 1u);
        return;
      }

      *&v37 = *a1;
      *(&v37 + 1) = v10;
      LOBYTE(v38) = v11;

      sub_182292F88(&v37, 0xD00000000000003ELL, 0x8000000182BD5950, v52);
      v19 = v12;
      v20 = v13;
      v21 = 2;
    }

    else
    {
      *&v37 = *a1;
      *(&v37 + 1) = v10;
      LOBYTE(v38) = v11;

      sub_182292F88(&v37, 0xD00000000000003ELL, 0x8000000182BD5950, v52);
      v19 = v12;
      v20 = v13;
      v21 = 0;
    }

    goto LABEL_34;
  }

  if (*(v5 + 16) <= 4u)
  {
    if (v14 == 3)
    {
      v15 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      *&v53 = v9;
      *(&v53 + 1) = v10;
      LOBYTE(v54) = v11;
      v17 = v15[8];
      swift_unknownObjectRetain();
      v17(&v53, a2, a3, a4, ObjectType, v15);
      sub_181F68E5C(v12, v15, 3u);
      return;
    }

    output_handler = nw_protocol_swift_wrapper_get_output_handler(v12, v13);
    if (!output_handler)
    {
LABEL_33:
      v19 = v12;
      v20 = v13;
      v21 = 4;
      goto LABEL_34;
    }

    v23 = output_handler;
    v52[0] = 0;
    v52[1] = 0;
    nw_frame_array_init(v52);
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a2 = 0xFFFFFFFFLL;
      v24 = a4;
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = a4;
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (HIDWORD(a2))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_16:
        a3 = 0xFFFFFFFFLL;
        v25 = 0xFFFFFFFFLL;
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_30:
          if (nw_protocol_get_input_frames_quiet(v23, v12, a2, a3, v25, v52))
          {
            sub_182285C4C(v52, 1uLL, &v37);
            sub_181F68E5C(v12, v13, 4u);
            v65 = v49;
            v66 = v50;
            v67 = v51;
            v61 = v45;
            v62 = v46;
            v63 = v47;
            v64 = v48;
            v57 = v41;
            v58 = v42;
            v59 = v43;
            v60 = v44;
            v53 = v37;
            v54 = v38;
            v55 = v39;
            v56 = v40;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

LABEL_27:
        if ((v24 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v24))
          {
            v25 = v24;
            goto LABEL_30;
          }

LABEL_42:
          __break(1u);
        }

        goto LABEL_40;
      }
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(a3))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0xFFFFFFFFLL;
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    goto LABEL_38;
  }

  if (v14 != 5)
  {
LABEL_35:
    sub_181F73CAC(&v53);
    goto LABEL_36;
  }

  sub_181FE8374(0xD000000000000019, 0x8000000182BD5930);
  v18 = *(v12 + 48);
  if (*(v12 + 64))
  {
    v19 = v12;
    v20 = v13;
    v21 = 5;
LABEL_34:
    sub_181F68E5C(v19, v20, v21);
    goto LABEL_35;
  }

  if (v18)
  {
    v26 = *(v12 + 56) - v18;
    LOBYTE(v37) = 1;
    LOBYTE(v52[0]) = 1;
    v27 = Frame.bufferLength.getter();
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 1;
    sub_181F68E5C(v12, v13, 5u);
    *&v53 = v18;
    *(&v53 + 1) = v26;
    *&v54 = 0;
    BYTE8(v54) = 0;
    v55 = xmmword_182AE69F0;
    LOBYTE(v56) = 2;
    *(&v56 + 1) = 0;
    *&v57 = 0;
    *(&v57 + 1) = v27;
    *&v58 = 0;
    BYTE8(v58) = 0;
    v59 = 0u;
    v60 = 0u;
    *&v61 = 0;
    DWORD2(v61) = 2;
    BYTE12(v61) = 1;
    v62 = 0uLL;
    LOBYTE(v63) = 1;
    *(&v63 + 1) = 0;
    v64 = 0uLL;
    LOWORD(v65) = 256;
    BYTE2(v65) = 0;
    *(&v65 + 1) = 0;
    LOBYTE(v66) = -1;
    *(&v66 + 1) = 0;
    v67 = 0;
LABEL_32:
    nullsub_41();
LABEL_36:
    v28 = v66;
    *(a5 + 192) = v65;
    *(a5 + 208) = v28;
    *(a5 + 224) = v67;
    v29 = v62;
    *(a5 + 128) = v61;
    *(a5 + 144) = v29;
    v30 = v64;
    *(a5 + 160) = v63;
    *(a5 + 176) = v30;
    v31 = v58;
    *(a5 + 64) = v57;
    *(a5 + 80) = v31;
    v32 = v60;
    *(a5 + 96) = v59;
    *(a5 + 112) = v32;
    v33 = v54;
    *a5 = v53;
    *(a5 + 16) = v33;
    v34 = v56;
    *(a5 + 32) = v55;
    *(a5 + 48) = v34;
    return;
  }

  __break(1u);
}

void OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94[3] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  if (v13 <= 2)
  {
    if (*(v5 + 16))
    {
      v48 = *(v5 + 8);
      if (v13 == 1)
      {
        *&v64 = *a1;
        *(&v64 + 1) = v9;
        LOBYTE(v65) = v10;

        sub_182292F88(&v64, 0xD00000000000003FLL, 0x8000000182BD59B0, v94);
        v27 = *(v11 + 312);
        if ((v27 & 2) != 0)
        {
          v21 = v48;
          if ((v27 & 4) == 0)
          {
            *(v11 + 312) = v27 | 4;
          }

          v20 = v11;
          v22 = 1;
          goto LABEL_44;
        }

        if (!__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a2))
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
          if ((0x7FFFFFFFFFFFFFFFLL - a2) >= 8)
          {
            v28 = a2 + 8;
            if (__OFADD__(a2, 8))
            {
              goto LABEL_70;
            }
          }

          if (!__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a3))
          {
            if ((0x7FFFFFFFFFFFFFFFLL - a3) >= 8)
            {
              v29 = a3 + 8;
              if (__OFADD__(a3, 8))
              {
                goto LABEL_71;
              }
            }

            else
            {
              v29 = 0x7FFFFFFFFFFFFFFFLL;
            }

            sub_1822955B4(v28, v29, a4, &v49);
            v91 = v61;
            v92 = v62;
            v93 = v63;
            v87 = v57;
            v88 = v58;
            v89 = v59;
            v90 = v60;
            v83 = v53;
            v84 = v54;
            v85 = v55;
            v86 = v56;
            v79 = v49;
            v80 = v50;
            v81 = v51;
            v82 = v52;
            if (sub_181F3D1E4(&v79) != 1 && (v63 & 1) == 0)
            {
              Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
              if (*(&v62 + 1))
              {
                v38 = *(*(&v62 + 1) + 32);
                if (*(*(&v62 + 1) + 16) >= *(*(&v62 + 1) + 24) + v38)
                {
                  v39 = *(*(&v62 + 1) + 24) + v38;
                }

                else
                {
                  v39 = *(*(&v62 + 1) + 16);
                }

                *&v64 = *(&v62 + 1);
                *(&v64 + 1) = v38;
                *&v65 = v39;
                swift_retain_n();
                while (1)
                {
                  if (v38 == v39)
                  {
                    if ((sub_181AC81FC(v40) & 1) == 0)
                    {

                      break;
                    }

                    v38 = *(&v64 + 1);
                    v39 = v65;
                  }

                  *(&v64 + 1) = v38 + 1;
                  swift_beginAccess();

                  Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
                  swift_endAccess();

                  ++v38;
                }
              }
            }

            sub_181F68E5C(v11, v48, 1u);
            v41 = v62;
            *(a5 + 192) = v61;
            *(a5 + 208) = v41;
            *(a5 + 224) = v63;
            v42 = v58;
            *(a5 + 128) = v57;
            *(a5 + 144) = v42;
            v43 = v60;
            *(a5 + 160) = v59;
            *(a5 + 176) = v43;
            v44 = v54;
            *(a5 + 64) = v53;
            *(a5 + 80) = v44;
            v45 = v56;
            *(a5 + 96) = v55;
            *(a5 + 112) = v45;
            v46 = v50;
            *a5 = v49;
            *(a5 + 16) = v46;
            v37 = v51;
            v36 = v52;
            goto LABEL_47;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      *&v64 = *a1;
      *(&v64 + 1) = v9;
      LOBYTE(v65) = v10;

      sub_182292F88(&v64, 0xD00000000000003FLL, 0x8000000182BD59B0, v94);
      v20 = v11;
      v21 = v48;
      v22 = 2;
    }

    else
    {
      *&v64 = *a1;
      *(&v64 + 1) = v9;
      LOBYTE(v65) = v10;

      sub_182292F88(&v64, 0xD00000000000003FLL, 0x8000000182BD59B0, v94);
      v20 = v11;
      v21 = v12;
      v22 = 0;
    }

LABEL_44:
    sub_181F68E5C(v20, v21, v22);
    goto LABEL_45;
  }

  if (*(v5 + 16) > 4u)
  {
    if (v13 == 5)
    {

      sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5990);
      swift_beginAccess();
      if (*(v11 + 88) >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *(v11 + 88);
      }

      Frame.init(capacity:)(v19, &v64);
      sub_181F68E5C(v11, v12, 5u);
      v89 = v74;
      v90 = v75;
      v91 = v76;
      v85 = v70;
      v86 = v71;
      v87 = v72;
      v88 = v73;
      v81 = v66;
      v82 = v67;
      v83 = v68;
      v84 = v69;
      v79 = v64;
      v80 = v65;
      v92 = v77;
      v93 = 0;
      goto LABEL_39;
    }

LABEL_45:
    sub_181F73CAC(&v79);
    goto LABEL_46;
  }

  v14 = a3;
  if (v13 == 3)
  {
    ObjectType = swift_getObjectType();
    *&v79 = v8;
    *(&v79 + 1) = v9;
    LOBYTE(v80) = v10;
    v17 = v12[9];
    swift_unknownObjectRetain();
    v17(&v79, a2, v14, a4, ObjectType, v12);
    sub_181F68E5C(v11, v12, 3u);
    return;
  }

  v23 = v12;
  output_handler = nw_protocol_swift_wrapper_get_output_handler(v11, v12);
  if (!output_handler)
  {
    goto LABEL_40;
  }

  v25 = output_handler;
  v94[0] = 0;
  v94[1] = 0;
  nw_frame_array_init(v94);
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a2 = 0xFFFFFFFFLL;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    if (HIDWORD(a2))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_18:
      v14 = 0xFFFFFFFFLL;
      v26 = 0xFFFFFFFFLL;
      if (a4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (HIDWORD(v14))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0xFFFFFFFFLL;
    goto LABEL_37;
  }

LABEL_34:
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (HIDWORD(a4))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v26 = a4;
LABEL_37:
  if (!nw_protocol_get_output_frames_quiet(v25, v11, a2, v14, v26, v94))
  {
LABEL_40:
    v20 = v11;
    v21 = v23;
    v22 = 4;
    goto LABEL_44;
  }

  sub_182285C4C(v94, 1uLL, &v64);
  sub_181F68E5C(v11, v23, 4u);
  v91 = v76;
  v92 = v77;
  v93 = v78;
  v87 = v72;
  v88 = v73;
  v89 = v74;
  v90 = v75;
  v83 = v68;
  v84 = v69;
  v85 = v70;
  v86 = v71;
  v79 = v64;
  v80 = v65;
  v81 = v66;
  v82 = v67;
LABEL_39:
  nullsub_41();
LABEL_46:
  v30 = v92;
  *(a5 + 192) = v91;
  *(a5 + 208) = v30;
  *(a5 + 224) = v93;
  v31 = v88;
  *(a5 + 128) = v87;
  *(a5 + 144) = v31;
  v32 = v90;
  *(a5 + 160) = v89;
  *(a5 + 176) = v32;
  v33 = v84;
  *(a5 + 64) = v83;
  *(a5 + 80) = v33;
  v34 = v86;
  *(a5 + 96) = v85;
  *(a5 + 112) = v34;
  v35 = v80;
  *a5 = v79;
  *(a5 + 16) = v35;
  v37 = v81;
  v36 = v82;
LABEL_47:
  *(a5 + 32) = v37;
  *(a5 + 48) = v36;
}

uint64_t OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(uint64_t *a1, __int128 *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = a2[7];
  v85 = a2[6];
  v86 = v6;
  v7 = a2[3];
  v81 = a2[2];
  v82 = v7;
  v8 = a2[5];
  v83 = a2[4];
  v84 = v8;
  v9 = a2[1];
  v79 = *a2;
  v80 = v9;
  v10 = *(a2 + 160);
  *(&v89 + 1) = *(a2 + 161);
  DWORD1(v89) = *(a2 + 41);
  v11 = *(a2 + 21);
  v12 = a2[12];
  v90 = a2[11];
  v91 = v12;
  v13 = *(a2 + 26);
  v14 = *(a2 + 27);
  v15 = *(a2 + 224);
  v16 = a2[9];
  v87 = a2[8];
  v88 = v16;
  LOBYTE(v89) = v10;
  *(&v89 + 1) = v11;
  v92 = v13;
  v93 = v14;
  v94 = v15;
  v18 = *v2;
  v17 = *(v2 + 8);
  v19 = *(v2 + 16);
  if (v19 <= 2)
  {
    if (*(v2 + 16))
    {
      *&v63 = v4;
      *(&v63 + 1) = v3;
      LOBYTE(v64) = v5;
      if (v19 == 1)
      {

        v22 = sub_182295DCC(&v63, &v79);
        v23 = v18;
        v24 = v17;
        v25 = 1;
      }

      else
      {

        v22 = sub_182295DCC(&v63, &v79);
        v23 = v18;
        v24 = v17;
        v25 = 2;
      }
    }

    else
    {
      *&v63 = v4;
      *(&v63 + 1) = v3;
      LOBYTE(v64) = v5;

      v22 = sub_182295DCC(&v63, &v79);
      v23 = v18;
      v24 = v17;
      v25 = 0;
    }

    goto LABEL_22;
  }

  if (*(v2 + 16) <= 4u)
  {
    if (v19 == 3)
    {
      ObjectType = swift_getObjectType();
      *&v63 = v4;
      *(&v63 + 1) = v3;
      LOBYTE(v64) = v5;
      v21 = v17[10];
      swift_unknownObjectRetain();
      v22 = v21(&v63, &v79, ObjectType, v17);
      v23 = v18;
      v24 = v17;
      v25 = 3;
LABEL_22:
      sub_181F68E5C(v23, v24, v25);
      return v22 & 1;
    }

    v59 = v16;
    output_handler = nw_protocol_swift_wrapper_get_output_handler(v18, v17);
    if (output_handler)
    {
      v34 = output_handler;
      v60 = 0;
      v61 = 0;
      nw_frame_array_init(&v60);
      if (v15)
      {
        v58 = v59.n128_u64[0];
      }

      else
      {
        do
        {
          FrameArray.popFirst()(&v63);
          v50 = sub_1822860AC(0);
          nw_frame_array_append(&v60, 1, v50);
          swift_unknownObjectRelease();
          v51 = v63;
          v52 = v64;
          v53 = BYTE8(v64);
          v54 = v65;
          v55 = v66;
          if (v66 != 2 || v65 != 0)
          {
            sub_181F68EF4(v63, *(&v63 + 1), v64, BYTE8(v64));

            sub_181F68F3C(v54, *(&v54 + 1), v55);
            __break(1u);
          }

          if ((v73 & 1) == 0 && v72)
          {
            MEMORY[0x1865DF520](v72, -1, -1);
          }

          sub_181F68EF4(v51, *(&v51 + 1), v52, v53);
        }

        while ((v94 & 1) == 0);
        v58 = v88;
        v10 = v89;
      }

      v22 = nw_protocol_finalize_output_frames_quiet(v34, &v60);
      sub_181F68E5C(v18, v17, 4u);
      v18 = *(&v79 + 1);
      v17 = v79;
      v45 = v80;
      v59.n128_u8[0] = BYTE8(v80);
      v44 = *(&v81 + 1);
      v43 = v81;
      LODWORD(v40) = v82;

      if (v40 == 2 && __PAIR128__(v44, v43) == 0)
      {
        if ((v10 & 1) == 0)
        {
          if (v58)
          {
            MEMORY[0x1865DF520](v58, -1, -1);
          }
        }

        sub_181F68EF4(v17, v18, v45, v59.n128_u8[0]);

        return v22 & 1;
      }

      goto LABEL_61;
    }

    sub_181F68E5C(v18, v17, 4u);

    v36 = *(&v79 + 1);
    v35 = v79;
    v37 = v80;
    v38 = BYTE8(v80);
    v45 = *(&v81 + 1);
    v17 = v81;
    LOBYTE(v18) = v82;
    if (v82 != 2 || v81 != 0)
    {
      goto LABEL_62;
    }

LABEL_38:
    if ((v10 & 1) == 0 && v59.n128_u64[0])
    {
      v46 = v35;
      v47 = v36;
      v48 = v37;
      v49 = v38;
      MEMORY[0x1865DF520](v59.n128_u64[0], -1, -1, v59);
      v35 = v46;
      v36 = v47;
      v37 = v48;
      v38 = v49;
    }

    sub_181F68EF4(v35, v36, v37, v38);

    v22 = 0;
    return v22 & 1;
  }

  if (v19 == 5)
  {
    v73 = v89;
    v74 = v90;
    v75 = v91;
    v69 = v85;
    v70 = v86;
    v71 = v87;
    v72 = v88;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    v68 = v84;
    v63 = v79;
    v64 = v80;
    v76 = v92;
    v77 = v14;
    v78 = v15;

    sub_181FE8374(0xD00000000000001FLL, 0x8000000182BD59F0);
    if (v15 & 1) == 0 && (sub_181FE8904(&v63, v18))
    {
      if (v14)
      {
        v26 = v14[4];
        v27 = v14[3] + v26;
        if (v14[2] < v27)
        {
          v27 = v14[2];
        }

        v60 = v14;
        v61 = v26;
        v62 = v27;

        v29 = v14;
        while (1)
        {
          if (v26 == v62)
          {
            if ((sub_181AC81FC(v28) & 1) == 0)
            {
LABEL_19:

              goto LABEL_29;
            }

            v29 = v60;
            v26 = v61;
          }

          v30 = v26 + 1;
          v61 = v26 + 1;
          v31 = v29[v26 + 5];
          swift_beginAccess();

          v32 = sub_181FE8904(v31 + 16, v18);
          swift_endAccess();

          v26 = v30;
          if ((v32 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    v59 = v16;

    v36 = *(&v79 + 1);
    v35 = v79;
    v37 = v80;
    v38 = BYTE8(v80);
    v17 = v81;
    v18 = v82;
    if (v82 == 2 && v81 == 0)
    {
      goto LABEL_38;
    }

    sub_181F68EF4(v79, *(&v79 + 1), v80, BYTE8(v80));

    sub_181F68F3C(v81, *(&v81 + 1), v82);
    __break(1u);
  }

LABEL_29:

LABEL_30:
  v39 = v63;
  v40 = v64;
  v41 = BYTE8(v64);
  v43 = *(&v65 + 1);
  v42 = v65;
  v44 = v66;
  v45 = *(&v73 + 1);
  if (v66 == 2 && v65 == 0)
  {
    if ((v73 & 1) == 0 && v72)
    {
      MEMORY[0x1865DF520](v72, -1, -1);
    }

    sub_181F68EF4(v39, *(&v39 + 1), v40, v41);

    sub_181F68E5C(v18, v17, 5u);
    v22 = 1;
    return v22 & 1;
  }

  sub_181F68EF4(v63, *(&v63 + 1), v64, BYTE8(v64));

  sub_181F68F3C(v42, v43, v44);
  __break(1u);
LABEL_61:
  sub_181F68EF4(v17, v18, v45, v59.n128_u8[0]);

  v35 = sub_181F68F3C(v43, v44, v40);
  __break(1u);
LABEL_62:
  sub_181F68EF4(v35, v36, v37, v38);

  result = sub_181F68F3C(v17, v45, v18);
  __break(1u);
  return result;
}

uint64_t ProtocolInstanceReference.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for IPProtocol.IPInstance();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    result = swift_dynamicCastClass();
    if (result)
    {
      v7 = 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      result = swift_dynamicCastClass();
      v7 = 0x4000000000000000;
      if (!result)
      {
        result = a1;
        v7 = a2 | 0x6000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t Parameters.protocolOptions<A>(for:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  result = sub_181F6433C(&v7);
  if (result)
  {
    type metadata accessor for ProtocolOptions(0, a2, a3, v6);
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t Parameters.protocolOptions<A>(for:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  sub_181F636F0(a1, v8);
  if (!v8[0])
  {
    return 0;
  }

  type metadata accessor for ProtocolOptions(0, a2, a3, v5);
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  if (a2 == &type metadata for QUICStreamProtocol)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50, &unk_182AF06C0);
    if (swift_dynamicCastClass())
    {
      sub_18228121C(v7);
      goto LABEL_9;
    }

LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  if (a2 != &type metadata for UDPProtocol)
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DF0, &unk_182AE7590);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_11;
  }

  ProtocolOptions<>.udpOptions()();
LABEL_9:
  swift_unknownObjectRelease();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  return 0;
}

double ProtocolInstanceReference.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_182AE7580;
  return result;
}

uint64_t ProtocolInstanceReference.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0x2000000000000000;
  return result;
}

{
  *a2 = result;
  a2[1] = 0xA000000000000000;
  return result;
}

void sub_181F70FF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = v2[1];
  v9 = v7 >> 61;
  if ((v7 >> 61) <= 2)
  {
    v16 = *a1;
    v17 = v4;
    v18 = v6;

    sub_1822932C0(&v16, a2);
    goto LABEL_6;
  }

  if (v9 <= 4)
  {
    if (v9 == 3)
    {
      ObjectType = swift_getObjectType();
      v16 = v5;
      v17 = v4;
      v18 = v6;
      v11 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      swift_unknownObjectRetain();
      v11(&v16, ObjectType, v7 & 0x1FFFFFFFFFFFFFFFLL);
LABEL_6:
      sub_181F749D0(v8, v7);
      return;
    }

    goto LABEL_9;
  }

  if (v9 != 5)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
    v15 = -1;
    goto LABEL_10;
  }

  sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5AA0);
  v12 = *(v8 + 16);
  v13 = *(v8 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  v14 = *(v8 + 32);
  *(v8 + 32) = v6;
  sub_181F68EA8(v5, v4, v6);
  sub_181F68E5C(v12, v13, v14);
  *a2 = v8;
  *(a2 + 8) = 0;
  v15 = 5;
LABEL_10:
  *(a2 + 16) = v15;
}

uint64_t sub_181F7116C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 5)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    v4 = result;
  }

  else
  {
    v4 = a2;
  }

  if (a3 <= 4u)
  {
    v3 = v4;
  }

  if (a3 > 2u)
  {
    return v3;
  }

  return result;
}

void InputHandlerLinkage.invokeGetParameters()(void *a1@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    *__src = v9;
    *&__src[8] = v10;
    __src[16] = v11;
    sub_181F68EA8(v9, v10, v11);
    InputHandlerLinkage.invokeGetParameters()(a1);
    sub_181F68E5C(v9, v10, v11);
    return;
  }

  v5 = *(v1 + 8);
  if (*(v1 + 16) > 4u)
  {
    if (v4 == 5)
    {

      sub_181FE62E8(0xD00000000000001BLL, 0x8000000182BD5A10);
      memcpy(__dst, (v3 + 56), 0x188uLL);
      sub_181F481DC(__dst, __src);
      sub_181F68E5C(v3, v5, 5u);
      memcpy(__src, __dst, sizeof(__src));
LABEL_16:
      nullsub_41();
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 == 3)
    {
      ObjectType = swift_getObjectType();
      v7 = v5[2];
      v8 = *(v7 + 40);
      swift_unknownObjectRetain();
      v8(ObjectType, v7);
      sub_181F68E5C(v3, v5, 3u);
      return;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v3, v5);
    if (input_handler)
    {
      v13 = nw_protocol_get_parameters_quiet(input_handler);
      if (v13)
      {
        v14 = v13;
        sub_181F68E5C(v3, v5, 4u);
        v15 = *&v14[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];

        if (v15 < 0)
        {
          memcpy(__src, ((v15 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__src));
          sub_181F481DC(__src, __dst);

          v17 = *&__src[384];
          v19 = *&__src[352];
          v18 = *&__src[368];
          v20 = *&__src[344];
          v21 = *&__src[336];
          v24 = *&__src[120];
          v40.i32[0] = *&__src[113];
          v26 = vmovl_u8(v40).u64[0];
          v27 = *&__src[104];
          v28 = __src[112];
          v29 = *&__src[88];
          v30 = __src[96];
          v31 = *&__src[72];
          v32 = __src[80];
          v33 = *&__src[36];
          v34 = *&__src[52];
          v35 = __src[68];
          v36 = *&__src[17];
          v37 = __src[33];
          v38 = *__src;
          v39 = __src[16];
          v23 = *&__src[304];
          v22 = *&__src[320];
        }

        else
        {
          swift_beginAccess();
          memcpy(__src, (v15 + 16), sizeof(__src));
          sub_181F481DC(__src, __dst);

          v17 = *&__src[384];
          v19 = *&__src[352];
          v18 = *&__src[368];
          v20 = *&__src[344];
          v21 = *&__src[336];
          v23 = *&__src[304];
          v22 = *&__src[320];
          v24 = *&__src[120];
          v25.i32[0] = *&__src[113];
          v26 = vmovl_u8(v25).u64[0];
          v27 = *&__src[104];
          v28 = __src[112];
          v29 = *&__src[88];
          v30 = __src[96];
          v31 = *&__src[72];
          v32 = __src[80];
          v33 = *&__src[36];
          v34 = *&__src[52];
          v35 = __src[68];
          v36 = *&__src[17];
          v37 = __src[33];
          v38 = *__src;
          v39 = __src[16];
        }

        v16.i32[0] = *&__src[216];
        __dst[2] = *&__src[160];
        __dst[3] = *&__src[176];
        *(&__dst[3] + 12) = *&__src[188];
        __dst[0] = *&__src[128];
        __dst[1] = *&__src[144];
        *v41 = __dst[3];
        *&v41[12] = *&__src[188];
        *&v41[36] = *&__src[212];
        *&v41[28] = *&__src[204];
        *__src = v38;
        __src[16] = v39;
        *&__src[17] = v36;
        __src[33] = v37;
        *&__src[36] = v33;
        *&__src[52] = v34;
        __src[68] = v35;
        *&__src[72] = v31;
        __src[80] = v32;
        *&__src[88] = v29;
        __src[96] = v30;
        *&__src[104] = v27;
        __src[112] = v28;
        *&__src[113] = vuzp1_s8(v26, *&v18).u32[0];
        *&__src[120] = v24;
        *&__src[208] = *&v41[32];
        *&__src[176] = *v41;
        *&__src[192] = *&v41[16];
        *&__src[216] = vuzp1_s8(*&vmovl_u8(v16), *&v18).u32[0];
        *&__src[304] = v23;
        *&__src[320] = v22;
        *&__src[336] = v21;
        *&__src[344] = v20;
        *&__src[352] = v19;
        *&__src[368] = v18;
        *&__src[384] = v17;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v3, v5, 4u);
  }

  sub_181F74038(__src);
LABEL_17:
  memcpy(a1, __src, 0x188uLL);
}

uint64_t InputHandlerLinkage.getOptions(from:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_181F73BE0(a1, a2, v3, ObjectType, a3);
}

id InputHandlerLinkage.invokeGetRemoteEndpoint()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 == 1)
      {

        v7 = sub_182294680();
        v8 = v2;
        v9 = v1;
        v10 = 1;
      }

      else
      {

        v7 = sub_182294680();
        v8 = v2;
        v9 = v1;
        v10 = 2;
      }
    }

    else
    {

      v7 = sub_182294680();
      v8 = v2;
      v9 = v1;
      v10 = 0;
    }

    goto LABEL_12;
  }

  if (*(v0 + 16) > 4u)
  {
    if (v3 == 5)
    {

      sub_181FE62E8(0xD000000000000020, 0x8000000182BD5A30);
      v11 = *(v2 + 48);
      v12 = v2;
      v13 = v1;
      v14 = 5;
LABEL_16:
      sub_181F68E5C(v12, v13, v14);
      return v11;
    }
  }

  else
  {
    if (v3 == 3)
    {
      ObjectType = swift_getObjectType();
      v5 = v1[2];
      v6 = *(v5 + 48);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v5);
      v8 = v2;
      v9 = v1;
      v10 = 3;
LABEL_12:
      sub_181F68E5C(v8, v9, v10);
      return v7;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v2, v1);
    if (input_handler)
    {
      v17 = nw_protocol_get_remote_endpoint_quiet(input_handler);
      if (v17)
      {
        v11 = v17;
        v12 = v2;
        v13 = v1;
        v14 = 4;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v2, v1, 4u);
  }

  return 0;
}

id InputHandlerLinkage.invokeGetLocalEndpoint()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 == 1)
      {

        v7 = sub_1822948BC();
        v8 = v2;
        v9 = v1;
        v10 = 1;
      }

      else
      {

        v7 = sub_1822948BC();
        v8 = v2;
        v9 = v1;
        v10 = 2;
      }
    }

    else
    {

      v7 = sub_1822948BC();
      v8 = v2;
      v9 = v1;
      v10 = 0;
    }

    goto LABEL_12;
  }

  if (*(v0 + 16) > 4u)
  {
    if (v3 == 5)
    {

      sub_181FE62E8(0xD00000000000001FLL, 0x8000000182BD5A60);
      v11 = *(v2 + 40);
      v12 = v2;
      v13 = v1;
      v14 = 5;
LABEL_16:
      sub_181F68E5C(v12, v13, v14);
      return v11;
    }
  }

  else
  {
    if (v3 == 3)
    {
      ObjectType = swift_getObjectType();
      v5 = v1[2];
      v6 = *(v5 + 56);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v5);
      v8 = v2;
      v9 = v1;
      v10 = 3;
LABEL_12:
      sub_181F68E5C(v8, v9, v10);
      return v7;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v2, v1);
    if (input_handler)
    {
      v17 = nw_protocol_get_local_endpoint_quiet(input_handler);
      if (v17)
      {
        v11 = v17;
        v12 = v2;
        v13 = v1;
        v14 = 4;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v2, v1, 4u);
  }

  return 0;
}

void InputHandlerLinkage.invokeGetPath()(void *a1@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    *&__src[0] = v9;
    *(&__src[0] + 1) = v10;
    LOBYTE(__src[1]) = v11;
    sub_181F68EA8(v9, v10, v11);
    InputHandlerLinkage.invokeGetPath()(a1);
    sub_181F68E5C(v9, v10, v11);
    return;
  }

  v5 = *(v1 + 8);
  if (*(v1 + 16) <= 4u)
  {
    if (v4 == 3)
    {
      ObjectType = swift_getObjectType();
      v7 = v5[2];
      v8 = *(v7 + 64);
      swift_unknownObjectRetain();
      v8(ObjectType, v7);
      sub_181F68E5C(v3, v5, 3u);
      return;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v3, v5);
    if (input_handler)
    {
      v13 = nw_protocol_get_path_quiet(input_handler);
      if (v13)
      {
        v14 = v13;
        sub_181F68E5C(v3, v5, 4u);
        swift_unknownObjectRelease();
        v15 = OBJC_IVAR____TtC7Network8__NWPath_path;
        swift_beginAccess();
        memcpy(__dst, v14 + v15, 0x17AuLL);
        sub_181A3DF5C(__dst, __src);

        goto LABEL_11;
      }
    }

    sub_181F68E5C(v3, v5, 4u);
LABEL_13:
    sub_181F74108(__src);
    goto LABEL_14;
  }

  if (v4 != 5)
  {
    goto LABEL_13;
  }

  sub_181FE62E8(0xD000000000000015, 0x8000000182BD5A80);
  memcpy(__dst, (v3 + 448), 0x17AuLL);
  sub_181A3DF5C(__dst, __src);
  sub_181F68E5C(v3, v5, 5u);
LABEL_11:
  memcpy(__src, __dst, 0x17AuLL);
  nullsub_41();
LABEL_14:
  memcpy(a1, __src, 0x17AuLL);
}

void sub_181F71CEC(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000011, 0x8000000182BD5B40, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        sub_181F68EA8(v14, v15, v16);
        sub_182292B80(&v25);
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        sub_181F71CEC(v23);
        v20 = v6;
        v21 = v5;
        v22 = 1;
      }

      else
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000011, 0x8000000182BD5B40, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v14, v15, v16);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v14, v15, v16);
        }

        v17 = *(v6 + 112);
        v18 = *(v6 + 120);
        v19 = *(v6 + 128);
        v25 = v17;
        v26 = v18;
        v27 = v19;
        sub_181F68EA8(v17, v18, v19);
        sub_181F71CEC(&v25);
        v20 = v6;
        v21 = v5;
        v22 = 2;
      }
    }

    else
    {
      v28 = *a1;
      v29 = v2;
      v30 = v4;

      sub_182293124(&v28, 0xD000000000000011, 0x8000000182BD5B40, &v25);
      v14 = *(v6 + 16);
      v15 = *(v6 + 24);
      v16 = *(v6 + 32);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v14, v15, v16);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v14, v15, v16);
      }

      v17 = *(v6 + 112);
      v18 = *(v6 + 120);
      v19 = *(v6 + 128);
      v25 = v17;
      v26 = v18;
      v27 = v19;
      sub_181F68EA8(v17, v18, v19);
      sub_181F71CEC(&v25);
      v20 = v6;
      v21 = v5;
      v22 = 0;
    }

    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v17, v18, v19);
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000017, 0x8000000182BD5B20);
    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v9 = v5[5];
    swift_unknownObjectRetain();
    v9(&v28, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_input_finished_quiet(input_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

uint64_t sub_181F72168(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  sub_182AD44E8();
  if (a3(v5, v6, v7))
  {
    MEMORY[0x1865DB070]();
  }

  return sub_182AD4558();
}

uint64_t _s7Network19InputHandlerLinkageV4hash4intoys6HasherVz_tF_0()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  if (v1 == 4)
  {
    v0 += 8;
    return MEMORY[0x1865DB070](*v0);
  }

  if (v1 == 5)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  return result;
}

uint64_t sub_181F72240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  sub_182AD44E8();
  if (a4(v6, v7, v8))
  {
    MEMORY[0x1865DB070]();
  }

  return sub_182AD4558();
}

void OutputHandlerLinkage.invokeAddInputHandler(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 > 2)
  {
    if (*(v2 + 16) > 4u)
    {
      if (v9 == 5)
      {

        sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5AA0);
        v13 = *(v8 + 16);
        v14 = *(v8 + 24);
        *(v8 + 16) = v5;
        *(v8 + 24) = v4;
        v15 = *(v8 + 32);
        *(v8 + 32) = v6;
        sub_181F68EA8(v5, v4, v6);
        sub_181F68E5C(v13, v14, v15);
        *a2 = v8;
        *(a2 + 8) = v7;
        v16 = 5;
LABEL_18:
        *(a2 + 16) = v16;
        return;
      }
    }

    else
    {
      if (v9 == 3)
      {
        ObjectType = swift_getObjectType();
        v21 = v5;
        v22 = v4;
        v23 = v6;
        v11 = v7[1];
        v12 = *(v11 + 16);
        swift_unknownObjectRetain();
        v12(&v21, ObjectType, v11);
        sub_181F68E5C(v8, v7, 3u);
        return;
      }

      if (qword_1EA8371A0 != -1)
      {
        swift_once();
      }

      v17 = sub_182AD2698();
      __swift_project_value_buffer(v17, qword_1EA843348);
      v18 = sub_182AD2678();
      v19 = sub_182AD38B8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_181A37000, v18, v19, "Adding input handler incorrectly", v20, 2u);
        MEMORY[0x1865DF520](v20, -1, -1);
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v16 = -1;
    goto LABEL_18;
  }

  if (*(v2 + 16))
  {
    v21 = *a1;
    v22 = v4;
    v23 = v6;
    if (v9 == 1)
    {

      sub_1822932C0(&v21, a2);
      sub_181F68E5C(v8, v7, 1u);
    }

    else
    {

      sub_1822932C0(&v21, a2);
      sub_181F68E5C(v8, v7, 2u);
    }
  }

  else
  {
    v21 = *a1;
    v22 = v4;
    v23 = v6;

    sub_1822932C0(&v21, a2);
    sub_181F68E5C(v8, v7, 0);
  }
}

uint64_t OutputHandlerLinkage.invokeGetMetadata<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (v9 <= 2)
  {
    if (*(v3 + 16))
    {
      v23.n128_u64[0] = *a1;
      v23.n128_u64[1] = v4;
      v24 = v6;
      if (v9 == 1)
      {

        v15 = DefaultOneToOneProtocol.getMetadata<A>(_:)(&v23, a2, a3);
        v16 = v8;
        v17 = v7;
        v18 = 1;
      }

      else
      {

        v15 = DefaultOneToOneProtocol.getMetadata<A>(_:)(&v23, a2, a3);
        v16 = v8;
        v17 = v7;
        v18 = 2;
      }
    }

    else
    {
      v23.n128_u64[0] = *a1;
      v23.n128_u64[1] = v4;
      v24 = v6;

      v15 = DefaultOneToOneProtocol.getMetadata<A>(_:)(&v23, a2, a3);
      v16 = v8;
      v17 = v7;
      v18 = 0;
    }

LABEL_12:
    sub_181F68E5C(v16, v17, v18);
    return v15;
  }

  result = 0;
  if (*(v3 + 16) <= 4u)
  {
    if (v9 != 3)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    v23.n128_u64[0] = v5;
    v23.n128_u64[1] = v4;
    v24 = v6;
    v14 = v7[12];
    swift_unknownObjectRetain();
    v15 = v14(&v23, a2, a3, ObjectType, v7);
    v16 = v8;
    v17 = v7;
    v18 = 3;
    goto LABEL_12;
  }

  if (v9 == 5)
  {
    v23.n128_u64[0] = v5;
    v23.n128_u64[1] = v4;
    v24 = v6;
    return _s7Network21OutputHarnessProtocolC11getMetadatayAA0dF0CyxGSgAA19InputHandlerLinkageVAA0aD0RzlF_0();
  }

  return result;
}

void OutputHandlerLinkage.invokeOutputFinished(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182292F88(&v28, 0xD000000000000012, 0x8000000182BD5AE0, &v25);
        v14 = *(v6 + 40);
        v15 = *(v6 + 48);
        v16 = *(v6 + 56);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        sub_181F68EA8(v14, v15, v16);
        sub_182292A10(&v25);
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        OutputHandlerLinkage.invokeOutputFinished(_:)(v23);
        v20 = v6;
        v21 = v5;
        v22 = 1;
      }

      else
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182292F88(&v28, 0xD000000000000012, 0x8000000182BD5AE0, &v25);
        v14 = *(v6 + 40);
        v15 = *(v6 + 48);
        v16 = *(v6 + 56);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          sub_181F68EA8(v14, v15, v16);
          if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
          {
            *(v6 + 88) = v6;
            *(v6 + 96) = 0;
            *(v6 + 104) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v14, v15, v16);
        }

        v17 = *(v6 + 88);
        v18 = *(v6 + 96);
        v19 = *(v6 + 104);
        v25 = v17;
        v26 = v18;
        v27 = v19;
        sub_181F68EA8(v17, v18, v19);
        OutputHandlerLinkage.invokeOutputFinished(_:)(&v25);
        v20 = v6;
        v21 = v5;
        v22 = 2;
      }
    }

    else
    {
      v28 = *a1;
      v29 = v2;
      v30 = v4;

      sub_182292F88(&v28, 0xD000000000000012, 0x8000000182BD5AE0, &v25);
      v14 = *(v6 + 40);
      v15 = *(v6 + 48);
      v16 = *(v6 + 56);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        sub_181F68EA8(v14, v15, v16);
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          *(v6 + 88) = v6;
          *(v6 + 96) = 0;
          *(v6 + 104) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v14, v15, v16);
      }

      v17 = *(v6 + 88);
      v18 = *(v6 + 96);
      v19 = *(v6 + 104);
      v25 = v17;
      v26 = v18;
      v27 = v19;
      sub_181F68EA8(v17, v18, v19);
      OutputHandlerLinkage.invokeOutputFinished(_:)(&v25);
      v20 = v6;
      v21 = v5;
      v22 = 0;
    }

    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v17, v18, v19);
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE8374(0xD000000000000018, 0x8000000182BD5AC0);
    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v9 = v5[7];
    swift_unknownObjectRetain();
    v9(&v28, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    output_handler = nw_protocol_swift_wrapper_get_output_handler(v6, v5);
    if (output_handler)
    {
      nw_protocol_output_finished_quiet(output_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

uint64_t OutputHandlerLinkage.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t _s7Network19InputHandlerLinkageV05inputC0AcA0bC0_p_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for IPProtocol.IPInstance();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    result = swift_dynamicCastClass();
    if (result)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      result = swift_dynamicCastClass();
      v9 = result == 0;
      if (result)
      {
        v7 = 0;
      }

      else
      {
        result = a1;
        v7 = a2;
      }

      if (v9)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t _s7Network19InputHandlerLinkageV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_182AD44E8();
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v1 = v2;
    }

    else if (v3 != 5)
    {
      return sub_182AD4558();
    }
  }

  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_181F72C48(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_182AD44E8();
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v2 = v3;
    }

    else if (v4 != 5)
    {
      return sub_182AD4558();
    }
  }

  MEMORY[0x1865DB070](v2);
  return sub_182AD4558();
}

double NewFlowHandlerLinkage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_182AE3CA0;
  return result;
}

uint64_t NewFlowHandlerLinkage.invokeNewFlow(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = v1[1];
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      v10 = 0;
      return v10 & 1;
    }

    v12 = *a1;
    v13 = v2;
    v14 = v4;

    v7 = ListenerHarnessProtocol.handleNewFlow(_:)(&v12);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v12 = v3;
    v13 = v2;
    v14 = v4;
    v9 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7 = v9(&v12, ObjectType, v5);
  }

  v10 = v7;
  sub_181F74148(v6, v5);
  return v10 & 1;
}

void *NewFlowHandlerLinkage.invokeGetParameters()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {

      sub_181FE8FDC(0xD00000000000001BLL, 0x8000000182BD5A10);
      memcpy(v9, (v4 + 48), sizeof(v9));
      sub_181F481DC(v9, __dst);
      sub_181F74148(v4, v3);
      memcpy(__dst, v9, sizeof(__dst));
      nullsub_41();
    }

    else
    {
      sub_181F74038(__dst);
    }

    return memcpy(a1, __dst, 0x188uLL);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 8);
    v7 = *(v6 + 40);
    swift_unknownObjectRetain();
    v7(ObjectType, v6);

    return sub_181F74148(v4, v3);
  }
}

uint64_t NewFlowHandlerLinkage.getOptions(from:for:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  ObjectType = swift_getObjectType();
  return sub_181F73B1C(a2, __dst, ObjectType, a3);
}

id NewFlowHandlerLinkage.invokeGetRemoteEndpoint()()
{
  v2 = *v0;
  v1 = v0[1];
  if (!(v1 >> 62))
  {
    ObjectType = swift_getObjectType();
    v5 = *(v1 + 8);
    v6 = *(v5 + 48);
    swift_unknownObjectRetain();
    v3 = v6(ObjectType, v5);
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {

    sub_181FE8FDC(0xD000000000000020, 0x8000000182BD5A30);
    v3 = *(v2 + 40);
LABEL_5:
    v7 = v3;
    sub_181F74148(v2, v1);
    return v7;
  }

  return 0;
}

id NewFlowHandlerLinkage.invokeGetLocalEndpoint()()
{
  v2 = *v0;
  v1 = v0[1];
  if (!(v1 >> 62))
  {
    ObjectType = swift_getObjectType();
    v5 = *(v1 + 8);
    v6 = *(v5 + 56);
    swift_unknownObjectRetain();
    v3 = v6(ObjectType, v5);
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {

    sub_181FE8FDC(0xD00000000000001FLL, 0x8000000182BD5A60);
    v3 = *(v2 + 32);
LABEL_5:
    v7 = v3;
    sub_181F74148(v2, v1);
    return v7;
  }

  return 0;
}

void *NewFlowHandlerLinkage.invokeGetPath()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {

      sub_181FE8FDC(0xD000000000000015, 0x8000000182BD5A80);
      memcpy(v9, (v4 + 440), 0x17AuLL);
      sub_181A3DF5C(v9, __dst);
      sub_181F74148(v4, v3);
      memcpy(__dst, v9, 0x17AuLL);
      nullsub_41();
    }

    else
    {
      sub_181F74108(__dst);
    }

    return memcpy(a1, __dst, 0x17AuLL);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 8);
    v7 = *(v6 + 64);
    swift_unknownObjectRetain();
    v7(ObjectType, v6);

    return sub_181F74148(v4, v3);
  }
}

Swift::Void __swiftcall NewFlowHandlerLinkage.invokeConnected()()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {

      sub_181FE8FDC(0xD000000000000012, 0x8000000182BD5850);
      v3 = *(v2 + 824);
      if (v3)
      {
        v4 = *(v2 + 832);

        v3(1);
        sub_181A554F4(v3, v4);
        v5 = *(v2 + 824);
        v6 = *(v2 + 832);
        *(v2 + 824) = 0;
        *(v2 + 832) = 0;
        sub_181A554F4(v5, v6);
      }

      sub_181F74148(v2, v1);
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    v10 = 0;
    v11 = 0;
    v12 = 6;
    v8 = *(v1 + 8);
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();
    v9(&v10, ObjectType, v8);
    sub_181F74148(v2, v1);
    sub_181F68E5C(v10, v11, v12);
  }
}

Swift::Void __swiftcall NewFlowHandlerLinkage.invokeDisconnected()()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {

      sub_181FE8FDC(0xD000000000000015, 0x8000000182BD5B00);
      v3 = *(v2 + 824);
      if (v3)
      {
        v4 = *(v2 + 832);

        v3(0);
        sub_181A554F4(v3, v4);
        v5 = *(v2 + 824);
        v6 = *(v2 + 832);
        *(v2 + 824) = 0;
        *(v2 + 832) = 0;
        sub_181A554F4(v5, v6);
      }

      sub_181F74148(v2, v1);
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    v10 = 0;
    v11 = 0;
    v12 = 6;
    v8 = *(v1 + 8);
    v9 = *(v8 + 24);
    swift_unknownObjectRetain();
    v9(&v10, ObjectType, v8);
    sub_181F74148(v2, v1);
    sub_181F68E5C(v10, v11, v12);
  }
}

void NewFlowHandlerLinkage.invokeError(error:)(int *a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {

      sub_181FE8FDC(0x6465766965636552, 0xEE00726F72726520);

      sub_181F74148(v3, v2);
    }
  }

  else
  {
    v4 = *(a1 + 4);
    v5 = *a1;
    ObjectType = swift_getObjectType();
    v11 = 0;
    v12 = 0;
    v13 = 6;
    v9 = v5;
    v10 = v4;
    v7 = *(v2 + 8);
    v8 = *(v7 + 32);
    swift_unknownObjectRetain();
    v8(&v11, &v9, ObjectType, v7);
    sub_181F74148(v3, v2);
    sub_181F68E5C(v11, v12, v13);
  }
}

uint64_t NewFlowHandlerLinkage.hash(into:)()
{
  if ((v0[1] & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  return result;
}

uint64_t NewFlowHandlerLinkage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_182AD44E8();
  if ((v2 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F736AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_182AD44E8();
  if ((v2 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F736F8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_182AD44E8();
  if ((v3 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1865DB070](v2);
  }

  return sub_182AD4558();
}

uint64_t ListenHandlerLinkage.init(listenHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double ListenHandlerLinkage.invokeAddNewFlowHandler(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (*v2)
  {
    v3 = v2[1];
    v5 = *a1;
    v4 = a1[1];
    ObjectType = swift_getObjectType();
    v9[0] = v5;
    v9[1] = v4;
    v7 = *(v3 + 16);
    swift_unknownObjectRetain();
    v7(v9, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    *&result = 1;
    *a2 = xmmword_182AE69F0;
  }

  return result;
}

uint64_t ListenHandlerLinkage.invokeRemoveNewFlowHandler(_:)(uint64_t *a1)
{
  if (*v1)
  {
    v2 = v1[1];
    v4 = *a1;
    v3 = a1[1];
    ObjectType = swift_getObjectType();
    v9[0] = v4;
    v9[1] = v3;
    v6 = *(v2 + 24);
    swift_unknownObjectRetain();
    v7 = v6(v9, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ListenHandlerLinkage.invokeConnect(_:)(uint64_t *a1)
{
  if (*v1)
  {
    v2 = v1[1];
    v4 = *a1;
    v3 = a1[1];
    ObjectType = swift_getObjectType();
    v9[0] = v4;
    v9[1] = v3;
    v6 = *(v2 + 32);
    swift_unknownObjectRetain();
    v7 = v6(v9, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t *ListenHandlerLinkage.invokeDisconnect(_:)(uint64_t *result)
{
  if (*v1)
  {
    v2 = v1[1];
    v4 = *result;
    v3 = result[1];
    ObjectType = swift_getObjectType();
    v7[0] = v4;
    v7[1] = v3;
    v6 = *(v2 + 40);
    swift_unknownObjectRetain();
    v6(v7, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ListenHandlerLinkage.hash(into:)()
{
  result = *v0;
  if (*v0)
  {
    return MEMORY[0x1865DB070]();
  }

  return result;
}

uint64_t ListenHandlerLinkage.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F73A48()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F73A94(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  if (v2)
  {
    MEMORY[0x1865DB070](v2);
  }

  return sub_182AD4558();
}

uint64_t sub_181F73B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IPProtocol.IPInstance();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      v6 = swift_dynamicCastClass();
      v7 = 0x4000000000000000;
      if (!v6)
      {
        v6 = a1;
        v7 = a4 | 0x6000000000000000;
      }
    }
  }

  v10[0] = v6;
  v10[1] = v7;
  swift_unknownObjectRetain();
  v8 = sub_181F6433C(v10);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_181F73BE0(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __src[43];
  if (*(a3 + 16) == 4)
  {
    sub_181F636F0(*a3, __dst);
    return __dst[0];
  }

  else
  {
    memcpy(__dst, __src, 0x158uLL);
    __dst[43] = v5;
    v11 = *(__src + 23);
    v13 = *(__src + 22);
    v14 = v11;
    v15 = __src[48];
    return sub_181F73B1C(a2, __dst, a4, a5);
  }
}

double sub_181F73CAC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return result;
}

uint64_t _s7Network20ListenHandlerLinkageV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_181F73D10(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 == 5)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 3)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (a3 <= 4u)
  {
    v6 = v7;
  }

  if (a3 <= 2u)
  {
    v8 = a1;
  }

  else
  {
    v8 = v6;
  }

  if (a6 == 5)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (a6 == 3)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (a6 <= 4u)
  {
    v9 = v10;
  }

  if (a6 <= 2u)
  {
    v11 = a4;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 == 0;
  if (v11)
  {
    v13 = v8 == v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (v8)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_181F73D74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 62 == 1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (a2 >> 62)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (a4 >> 62 == 1)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (a4 >> 62)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  v8 = v7 == 0;
  if (v7)
  {
    v9 = v5 == v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v5)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

BOOL _s7Network21NewFlowHandlerLinkageV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if ((a1[1] & 0x8000000000000000) == 0)
  {
    v4 = *a1;
    if (v3 < 0)
    {
      if (!v4)
      {
        return 1;
      }
    }

    else
    {
      if (v4)
      {
        return v2 && v4 == v2;
      }

      if (!v2)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 1;
  if ((v3 & 0x8000000000000000) == 0 && v2)
  {
    return 0;
  }

  return result;
}

BOOL sub_181F73E08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v4)
    {
      if (v4 != 1 || a4 >> 61 != 1)
      {
        return 0;
      }
    }

    else if (a4 >> 61)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (v4 == 2)
  {
    if (a4 >> 61 != 2)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (v4 != 3)
  {
    return v4 == 6 && !a1 && a2 == 0xC000000000000000 && (a4 & 0xE000000000000000) == 0xC000000000000000 && !a3 && a4 == 0xC000000000000000;
  }

  if (a4 >> 61 == 3)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t _s7Network25ProtocolInstanceReferenceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (v6)
    {
      v13 = v5 >> 61;
      if (v6 != 1 || v13 != 1 || v2 != v4)
      {
        return 0;
      }
    }

    else
    {
      if (v5 >> 61)
      {
        v18 = 0;
      }

      else
      {
        v18 = v2 == v4;
      }

      if (!v18)
      {
        return 0;
      }
    }
  }

  else if (v6 == 2)
  {
    if (v5 >> 61 != 2 || v2 != v4)
    {
      return 0;
    }
  }

  else if (v6 == 3)
  {
    if (v5 >> 61 != 3 || v2 != v4)
    {
      return 0;
    }
  }

  else if (v6 != 6 || v2 != 0 || v3 != 0xC000000000000000 || (v5 & 0xE000000000000000) != 0xC000000000000000 || v4 != 0 || v5 != 0xC000000000000000)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_181F73F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IPProtocol.IPInstance();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = 0x4000000000000000;
      }

      else
      {
        v8 = a1;
        v9 = a2 | 0x6000000000000000;
      }
    }
  }

  *&v13 = v8;
  *(&v13 + 1) = v9;
  v10 = v8;
  swift_unknownObjectRetain();
  v11 = Parameters.protocolOptions<A>(for:)(&v13, a3, a4);
  sub_181F749D0(v10, v9);
  return v11;
}

double sub_181F74038(uint64_t a1)
{
  *(a1 + 384) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_181F74074(void *__src, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5)
{
  if (*(v5 + 16) == 4)
  {
    return Parameters.protocolOptions<A>(for:)(*v5, a4, a5);
  }

  memcpy(__dst, __src, sizeof(__dst));
  return sub_181F73F5C(a2, a3, a4, a5);
}

double sub_181F74108(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 362) = 0u;
  return result;
}

uint64_t sub_181F74148(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  if (!(a2 >> 62))
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

unint64_t sub_181F741D4()
{
  result = qword_1EA838B70;
  if (!qword_1EA838B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B70);
  }

  return result;
}

unint64_t sub_181F7422C()
{
  result = qword_1EA838B78;
  if (!qword_1EA838B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B78);
  }

  return result;
}

unint64_t sub_181F74284()
{
  result = qword_1EA838B80;
  if (!qword_1EA838B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B80);
  }

  return result;
}

unint64_t sub_181F742DC()
{
  result = qword_1EA838B88;
  if (!qword_1EA838B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B88);
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolMessageProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtocolMessageProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_7Network25ProtocolInstanceReferenceV01_bcD0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

unint64_t get_enum_tag_for_layout_string_7Network21NewFlowHandlerLinkageV01_bcD0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_181F746D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_181F74734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F747C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_181F7480C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

unint64_t sub_181F74874()
{
  result = qword_1EA838B90;
  if (!qword_1EA838B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B90);
  }

  return result;
}

unint64_t sub_181F748CC()
{
  result = qword_1EA838B98;
  if (!qword_1EA838B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B98);
  }

  return result;
}

unint64_t sub_181F74924()
{
  result = qword_1EA838BA0;
  if (!qword_1EA838BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838BA0);
  }

  return result;
}

unint64_t sub_181F7497C()
{
  result = qword_1EA838BA8;
  if (!qword_1EA838BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838BA8);
  }

  return result;
}

uint64_t sub_181F749D0(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2 > 2)
    {
      return v3;
    }
  }

  if (v2 == 3)
  {
    return swift_unknownObjectRelease();
  }

  if (v2 == 4 || v2 == 5)
  {
  }

  return v3;
}

uint64_t NWActorSystemInvocationEncoder.recordGenericSubstitution<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = sub_182AD3E48();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_181E59474(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_181E59474((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    *v2 = v7;
  }

  return result;
}

uint64_t NWActorSystemInvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_conformsToProtocol();
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_182AD2308();
  sub_182AD22F8();
  v13 = (v2 + 8);
  v12 = *(v2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_181F59E34(0, v12[2] + 1, 1, v12);
    *v13 = v12;
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = sub_181F59E34((v15 > 1), v16 + 1, 1, v12);
    *v13 = v12;
  }

  (*(v6 + 16))(v8, v11, a2);
  sub_181F74E2C(v16, v8, v13, a2, v4, v5);
  result = (*(v6 + 8))(v11, a2);
  *v13 = v12;
  return result;
}

uint64_t sub_181F74D7C(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return NWActorSystemInvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t sub_181F74DDC(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v3 = swift_conformsToProtocol();
  return NWActorSystemInvocationEncoder.recordReturnType<A>(_:)(v3, a2);
}

_OWORD *sub_181F74E2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0Tm, a2, a4);
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return sub_181F753CC(&v13, (v11 + 48 * a1 + 32));
}

char *sub_181F74ED8(uint64_t a1, uint64_t a2)
{
  v6 = sub_182AD3E78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWFileSerializationContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v2 + 8);
  sub_181F75240(a1, v12);
  sub_181F752A4(a2, &v12[*(v10 + 5)], type metadata accessor for NWActorID);
  sub_182AD1C98();
  swift_allocObject();
  v13 = sub_182AD1C88();
  if (qword_1EA8372B0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = __swift_project_value_buffer(v6, qword_1EA843458);
    (*(v7 + 16))(v9, v14, v6);
    v32 = v10;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v31);
    sub_181F752A4(v12, boxed_opaque_existential_0Tm, type metadata accessor for NWFileSerializationContext);
    v10 = v34;
    v16 = sub_182AD1C78();
    sub_1820FA1B8(v31, v9);
    v17 = v16(v34, 0);
    sub_181F7530C(v12, v17);
    v18 = v35;
    v19 = *(v35 + 16);
    if (!v19)
    {
      break;
    }

    v7 = 0;
    v6 = v35 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v30 = v13;
    while (v7 < *(v18 + 16))
    {
      sub_181F75368(v6, v31);
      v20 = v32;
      v21 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v22 = sub_1821782FC(v13, v20, v21);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v31);

        goto LABEL_14;
      }

      v24 = v22;
      v12 = v23;
      __swift_destroy_boxed_opaque_existential_1(v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_181F59F7C(0, *(v9 + 2) + 1, 1, v9);
      }

      v26 = *(v9 + 2);
      v25 = *(v9 + 3);
      v10 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v9 = sub_181F59F7C((v25 > 1), v26 + 1, 1, v9);
      }

      ++v7;
      *(v9 + 2) = v10;
      v27 = &v9[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = v12;
      v6 += 48;
      v18 = v35;
      v13 = v30;
      if (v19 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_14:

  return v9;
}

uint64_t sub_181F75240(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_181F752A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181F7530C(uint64_t a1, double a2)
{
  v3 = type metadata accessor for NWFileSerializationContext(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181F75368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_181F753CC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_181F75428()
{
  MEMORY[0x1865DA850]();

  return swift_deallocClassInstance();
}

void sub_181F75494(void (*a1)(uint64_t))
{
  v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  a1(v1 + v3);
  os_unfair_lock_unlock((v1 + v4));
}

uint64_t sub_181F7554C(uint64_t (*a1)(__int16 *, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *(v6 + 24);
      v10 = *(v6 + 1);
      v11 = *(v6 + 2);
      v15 = *v6;
      v16 = v10;
      v17 = v11;
      v18 = v9;
      v12 = sub_181F49A24(v10, v11, v9);
      v13 = a1(&v15, v12);
      sub_181F48350(v16, v17, v18);
      LOBYTE(v4) = (v3 != 0) | v13;
      if ((v3 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v8 - 1;
      v6 += 16;
    }

    while (v8);
  }

  return v4 & 1;
}

void _nw_protocol_transform_replace_endpoint(uint64_t a1, void *a2)
{

  swift_beginAccess();
  if (a2)
  {
    v4 = a2;
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = a2;
}

uint64_t sub_181F75678(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  sub_181AAC800(a2, &v21);
  v4 = v21;
  v5 = v22;
  v6 = v23;
  v7 = v24;
  v8 = v25;
  v9 = *(a1 + 48);
  v17[0] = v21;
  v17[1] = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16[2] = v17;
  if (sub_181F7554C(sub_181F76134, v16, v9))
  {
    sub_181F48350(v6, v7, v8);
  }

  else
  {
    v10 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 48) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_181F5A088(0, *(v10 + 2) + 1, 1, v10);
      *(a1 + 48) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_181F5A088((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[32 * v13];
    v14[32] = v4;
    v14[33] = v5;
    *(v14 + 5) = v6;
    *(v14 + 6) = v7;
    v14[56] = v8;
    *(a1 + 48) = v10;
  }

  swift_endAccess();
}

uint64_t _nw_protocol_transform_set_multipath_service(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  swift_beginAccess();
  *(a1 + 29) = sub_18220C6BC(v2);
}

uint64_t _nw_protocol_transform_get_multipath_service(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 29);

  return dword_182AE8208[v2];
}

uint64_t sub_181F75894(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 8) == 0)
    {
      v5 = v4 | 8;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 8) != 0)
  {
    v5 = v4 & 0xFFF7;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_no_proxy(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 3) & 1;
}

uint64_t sub_181F75954(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 0x80) == 0)
    {
      v5 = v4 | 0x80;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 0x80) != 0)
  {
    v5 = v4 & 0xFF7F;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_no_path_fallback(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 7) & 1;
}

uint64_t sub_181F75A14(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 0x20) == 0)
    {
      v5 = v4 | 0x20;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 0x20) != 0)
  {
    v5 = v4 & 0xFFDF;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_tfo(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 5) & 1;
}

uint64_t sub_181F75AD4(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 0x40) == 0)
    {
      v5 = v4 | 0x40;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 0x40) != 0)
  {
    v5 = v4 & 0xFFBF;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_tfo_no_cookie(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 6) & 1;
}

uint64_t sub_181F75B94(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((*(a1 + 64) & 0x100) == 0)
    {
      v5 = v4 | 0x100;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((*(a1 + 64) & 0x100) != 0)
  {
    v5 = v4 & 0xFEFF;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_fast_open_force_enable(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 8) & 1;
}

uint64_t _nw_protocol_transform_set_traffic_class(uint64_t a1, int a2)
{

  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 28) = 0;
}

uint64_t _nw_protocol_transform_get_traffic_class(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t _nw_protocol_transform_set_data_mode(uint64_t a1, unsigned int a2)
{

  swift_beginAccess();
  if (a2 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 30) = v4;
}

uint64_t _nw_protocol_transform_get_data_mode(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 30);

  return v2;
}

uint64_t _nw_protocol_transform_clear_match_url_schemes(uint64_t a1)
{

  swift_beginAccess();
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
}

double _nw_protocol_transform_copy(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v2;
  v9[2] = *(a1 + 48);
  v10 = *(a1 + 64);
  sub_181B29D44(v9, v6);

  sub_18221C65C(v9, v6);
  type metadata accessor for __NWProtocolTransform();
  v3 = swift_allocObject();
  v4 = v6[1];
  *(v3 + 16) = v6[0];
  *(v3 + 32) = v4;
  result = *&v7;
  *(v3 + 48) = v7;
  *(v3 + 64) = v8;
  return result;
}

uint64_t sub_181F75ECC(uint64_t a1, uint64_t a2, unsigned int a3)
{

  swift_beginAccess();
  v6 = *(a1 + 32);
  v14[0] = *(a1 + 16);
  v14[1] = v6;
  v14[2] = *(a1 + 48);
  v15 = *(a1 + 64);
  sub_181B29D44(v14, v12);

  swift_beginAccess();
  v7 = *(a2 + 32);
  v12[0] = *(a2 + 16);
  v12[1] = v7;
  v12[2] = *(a2 + 48);
  v13 = *(a2 + 64);
  sub_181B29D44(v12, v11);

  if (a3 >= 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  v11[0] = v8;
  v9 = sub_18221C154(v12, v11);
  sub_181B29DA0(v12);
  sub_181B29DA0(v14);
  return v9 & 1;
}

uint64_t _nw_protocol_transform_get_hash(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v2;
  v6[2] = *(a1 + 48);
  v7 = *(a1 + 64);
  sub_181B29D44(v6, v5);

  sub_182AD44E8();
  sub_18221C2D8(v5);
  v3 = sub_182AD4558();
  sub_181B29DA0(v6);
  return v3;
}

uint64_t sub_181F7606C(__int16 a1, uint64_t a2, uint64_t a3, char a4, __int16 a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5)
  {
    if (a4)
    {
      if (a8 & 1) != 0 && (a2 == a6 && a3 == a7 || (sub_182AD4268()))
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a2 == a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_181F76154(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C90, &qword_182AF6740);
  if (swift_dynamicCast())
  {
    sub_181F3CF20(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_182AD1DC8();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_181F49A88(v40, &unk_1EA838C98, &qword_182AE8348);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v40;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_182AD3CF8();
  }

  sub_1820F8EF8(v4, v5, &v43);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = sub_1820F9340(v8);
  *(&v40[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v10 = sub_181F7BC4C(sub_181F7D368, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v40[0] + 1) >> 62;
  if ((*(&v40[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v40[0] + 16);
      v18 = *(*&v40[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v40[0]), v40[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v40[0]) - LODWORD(v40[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v40[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v40[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v40[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_182AD20D8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v40[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_18208A330(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_182AD3168();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_182AD31C8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_182AD3CF8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_18208A330(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_182AD3178();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_182AD2108();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_182AD2108();
    sub_181D9D680(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_181D9D680(v36, v6);
LABEL_63:
  v32 = v40[0];
  sub_181F49B58(*&v40[0], *(&v40[0] + 1));

  sub_181C1F2E4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_181F76674(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CC8, &qword_182AE8360);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - v3;
  v5 = sub_182AD2788();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_182AD2868();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C90, &qword_182AF6740);
  if (!swift_dynamicCast())
  {
    v28 = v6;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_181F49A88(v30, &unk_1EA838C98, &qword_182AE8348);
    sub_181F7D4E0(&qword_1EA836420, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FE0]);
    sub_182AD32A8();
    if (*(&v32 + 1) >> 60 != 15)
    {
      v30[0] = v32;
      goto LABEL_33;
    }

    v27 = v32;
    v13 = sub_182AD3288();
    *&v30[0] = sub_1820F9340(v13);
    *(&v30[0] + 1) = v14;
    MEMORY[0x1EEE9AC00](*&v30[0]);
    *(&v27 - 2) = a1;
    sub_181F7BFF0(sub_181F7D4C4, (&v27 - 2));
    v15 = *&v4[*(v2 + 48)];
    v16 = v28;
    (*(v28 + 32))(v8, v4, v5);
    v17 = *(&v30[0] + 1) >> 62;
    if ((*(&v30[0] + 1) >> 62) > 1)
    {
      if (v17 != 2)
      {
        if (!v15)
        {
          goto LABEL_20;
        }

        v22 = 0;
LABEL_31:
        if (v22 >= v15)
        {
          sub_182AD20D8();
          (*(v16 + 8))(v8, v5);
          goto LABEL_33;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v19 = *(*&v30[0] + 16);
      v18 = *(*&v30[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if (v15 == v21)
      {
        goto LABEL_20;
      }
    }

    else if (v17)
    {
      if (__OFSUB__(DWORD1(v30[0]), v30[0]))
      {
        goto LABEL_37;
      }

      if (v15 == DWORD1(v30[0]) - LODWORD(v30[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v15 == BYTE14(v30[0]))
    {
LABEL_20:
      sub_181F7D4E0(&unk_1EA836428, MEMORY[0x1E69E7F18], MEMORY[0x1E69E7F20]);
      *&v32 = 0;
      *(&v32 + 7) = 0;
      sub_182AD3A08();
      if (BYTE1(v29) == 1)
      {
        goto LABEL_28;
      }

      LOBYTE(v23) = 0;
      while (1)
      {
        *(&v32 + v23) = v29;
        v23 = v23 + 1;
        if ((v23 >> 8))
        {
          break;
        }

        if (v23 == 14)
        {
          *&v29 = v32;
          *(&v29 + 6) = *(&v32 + 6);
          sub_182AD2108();
          LOBYTE(v23) = 0;
        }

        sub_182AD3A08();
        if (BYTE1(v29))
        {
          if (v23)
          {
            *&v29 = v32;
            *(&v29 + 6) = *(&v32 + 6);
            sub_182AD2108();
            sub_181D9D680(v27, *(&v27 + 1));
            (*(v28 + 8))(v8, v5);
            goto LABEL_33;
          }

LABEL_28:
          (*(v28 + 8))(v8, v5);
          sub_181D9D680(v27, *(&v27 + 1));
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    if (v17 == 2)
    {
      v22 = *(*&v30[0] + 24);
    }

    else if (v17 == 1)
    {
      v22 = *&v30[0] >> 32;
    }

    else
    {
      v22 = BYTE14(v30[0]);
    }

    goto LABEL_31;
  }

  sub_181F3CF20(v30, &v32);
  __swift_project_boxed_opaque_existential_1(&v32, v33);
  sub_182AD1DC8();
  v30[0] = v29;
  __swift_destroy_boxed_opaque_existential_1(&v32);
LABEL_33:
  v24 = *&v30[0];
  v25 = sub_181F49B58(*&v30[0], *(&v30[0] + 1));
  (*(v10 + 8))(a1, v9, v25);
  sub_181C1F2E4(*&v30[0], *(&v30[0] + 1));
  return v24;
}

double nw_storage_copy_shared()
{
  if (qword_1EA836D38 != -1)
  {
    swift_once();
  }

  return result;
}

double nw_storage_copy_shared()()
{
  if (qword_1EA836D38 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t nw_storage_create_persistent(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_182AD2058();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 56);
  v9(v3, 1, 1, v4, v6);
  sub_182AD1FC8();
  sub_181F49A88(v3, &unk_1EA838BB0, &qword_182AE8240);
  (*(v5 + 16))(v3, v8, v4);
  (v9)(v3, 0, 1, v4);
  v10 = sub_18213B688(v3);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t nw_storage_create_ephemeral()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_182AD2058();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for NetworkStorage(0);
  v4 = swift_allocObject();
  if (MEMORY[0x1E697BBE0] && MEMORY[0x1E697BBF0] && MEMORY[0x1E697BBC8] && MEMORY[0x1E697BBE8] && MEMORY[0x1E697BBD0] && MEMORY[0x1E697BBD8] && MEMORY[0x1E69E8310] && MEMORY[0x1E69E8308])
  {
    v5 = v4;
    sub_181AB5D28(v2, v4 + OBJC_IVAR____TtC7Network14NetworkStorage_url, &unk_1EA838BB0, &qword_182AE8240);
    sub_181F49A88(v2, &unk_1EA838BB0, &qword_182AE8240);
    result = v5;
    v7 = v5 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
  }

  else
  {
    sub_181F49A88(v2, &unk_1EA838BB0, &qword_182AE8240);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t nw_storage_delete_all_data(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_182AD3548();
  v6 = *(*(v5 - 8) + 56);

  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  sub_181F774B4(0, 0, v4, &unk_182AE8250, v7);
}

uint64_t nw_storage_delete_all_data(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_182AD3548();
  v6 = *(*(v5 - 8) + 56);

  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  sub_181F774B4(0, 0, v4, &unk_182AE8258, v7);
}

uint64_t sub_181F77330()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[3] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7744C, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F7744C()
{
  sub_182129BEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F774B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_181AB5D28(a3, v25 - v10, &unk_1EA839850, &qword_182AF4770);
  v12 = sub_182AD3548();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_181F49A88(v11, &unk_1EA839850, &qword_182AF4770);
  }

  else
  {
    sub_182AD3538();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_182AD34A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_182AD3048() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_181F49A88(a3, &unk_1EA839850, &qword_182AF4770);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_181F49A88(a3, &unk_1EA839850, &qword_182AF4770);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t nw_storage_delete_all_data_for_registrable_domain(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;

  v6 = sub_182AD3158();
  v8 = v7;
  v9 = sub_182AD3548();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v6;
  v10[6] = v8;
  sub_181F774B4(0, 0, v5, &unk_182AE8268, v10);
}

uint64_t nw_storage_delete_all_data_for_registrable_domain(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;

  v6 = sub_182AD3158();
  v8 = v7;
  v9 = sub_182AD3548();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v6;
  v10[6] = v8;
  sub_181F774B4(0, 0, v5, &unk_182AE8270, v10);
}