BOOL sub_25BBEF278(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v9 = sub_25BCB7BBC();
    if (v9 <= 31)
    {
      v10 = v9;
      v11 = sub_25BCB7B8C();
      v12 = v11 + __clz(__rbit32(v4 | 0x10000));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v13 < -32 || v13 > 32)
          {
LABEL_13:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v13 < 0)
          {
            if (v13 == -32)
            {
              goto LABEL_13;
            }

            v14 = v4 >> (v12 - v10);
          }

          else
          {
            if (v13 == 32)
            {
              goto LABEL_13;
            }

            v14 = v4 << v13;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v15 = 1 << v10;
            goto LABEL_24;
          }

          v15 = 0;
LABEL_24:
          v5 = 0;
          v7 = v14 | v15;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v13 - 17) <= 0xFFFFFFFFFFFFFFDELL)
        {
          goto LABEL_16;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x10)
          {
            v14 = v4 << v13;
            goto LABEL_20;
          }

LABEL_16:
          LOWORD(v14) = 0;
LABEL_20:
          v14 = v14;
          goto LABEL_21;
        }
      }

      if (v13 > 0xFFFFFFFFFFFFFFF0)
      {
        v14 = v4 >> (v12 - v10);
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  v7 = 0;
  result = 0;
  v5 = 1;
LABEL_25:
  *a1 = v7;
  *(a1 + 4) = v5;
  return result;
}

BOOL sub_25BBEF3DC(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_25BCB695C();
    if (v10 <= 15)
    {
      v11 = v10;
      v12 = sub_25BCB692C();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 15)
        {
          if (v14 < -16 || v14 > 16)
          {
LABEL_13:
            LOWORD(v14) = 0;
            LOWORD(v15) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -16)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 16)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          LOWORD(v15) = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LOWORD(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  *(a1 + 2) = v6;
  return result;
}

BOOL sub_25BBEF53C(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 255 && a2 > -1.0)
  {
    v10 = sub_25BCB69DC();
    if (v10 <= 15)
    {
      v11 = v10;
      v12 = sub_25BCB699C();
      v13 = v12 + __clz(__rbit32(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 15)
        {
          if (v14 < -16 || v14 > 16)
          {
LABEL_13:
            LOWORD(v15) = 0;
            LOWORD(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (v14 < 0)
          {
            if (v14 == -16)
            {
              goto LABEL_13;
            }

            v15 = LOWORD(a2) >> (v13 - v11);
          }

          else
          {
            if (v14 == 16)
            {
              goto LABEL_13;
            }

            v15 = LODWORD(a2) << v14;
          }

LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOWORD(v16) = 0;
LABEL_26:
          LOBYTE(v6) = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_16:
          LOWORD(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x20)
          {
            v15 = v5 << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOWORD(v15) = 0;
      }

      else
      {
        v15 = v5 >> (v13 - v11);
      }

      goto LABEL_23;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_27:
  *a1 = v8;
  *(a1 + 2) = v6;
  return result;
}

BOOL sub_25BBEF69C(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (v3 | v4)
  {
    if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
    {
      v9 = sub_25BCB7BBC();
      if (v9 <= 15)
      {
        v10 = v9;
        v11 = sub_25BCB7B8C();
        v12 = v11 + __clz(__rbit32(v4 | 0x10000));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -16 || v13 > 16)
          {
LABEL_12:
            LOWORD(v14) = 0;
            LOWORD(v15) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v5 = 0;
            v7 = v14 | v15;
            result = v10 >= v11;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 16)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -16)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          LOWORD(v15) = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v7 = 0;
    result = 0;
    v5 = 1;
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v7;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25BBEF7BC(_BYTE *a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_25BCB695C();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25BCB692C();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v14) = 0;
            LOBYTE(v15) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -8)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          LOBYTE(v15) = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOBYTE(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LOBYTE(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25BBEF91C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 255 && a2 > -1.0)
  {
    v10 = sub_25BCB69DC();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25BCB699C();
      v13 = v12 + __clz(__rbit32(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v15) = 0;
            LOBYTE(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (v14 < 0)
          {
            if (v14 == -8)
            {
              goto LABEL_13;
            }

            v15 = LOBYTE(a2) >> (v13 - v11);
          }

          else
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            v15 = LODWORD(a2) << v14;
          }

LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOBYTE(v16) = 0;
LABEL_26:
          LOBYTE(v6) = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_16:
          LOBYTE(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x20)
          {
            v15 = v5 << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = v5 >> (v13 - v11);
      }

      goto LABEL_23;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_27:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25BBEFA7C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v10 = sub_25BCB7BBC();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25BCB7B8C();
      v13 = v12 + __clz(__rbit32(v5 | 0x10000));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v15) = 0;
            LOBYTE(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

          if (v14 == -8)
          {
            goto LABEL_13;
          }

          v15 = LOBYTE(a2) >> (v13 - v11);
LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOBYTE(v16) = 0;
LABEL_26:
          v6 = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 17) < 0xFFFFFFFFFFFFFFDFLL)
        {
LABEL_16:
          LOBYTE(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x10)
          {
LABEL_22:
            v15 = LODWORD(a2) << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 > 0xFFFFFFFFFFFFFFF0)
      {
        v15 = v5 >> (v13 - v11);
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  v8 = 0;
  result = 0;
  v6 = 1;
LABEL_27:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25BBEFBDC()
{
  OUTLINED_FUNCTION_156_0();
  if (v4)
  {
    if (v3 != 2047 && v2 > -1.0)
    {
      v9 = sub_25BCB695C();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_25BCB692C();
        v12 = v11 + __clz(__rbit64(v1));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v8 = 0;
            result = v10 >= v11;
            v6 = v14 | v15;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 64)
            {
              goto LABEL_12;
            }

            v14 = v1 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -64)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_140_0();
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        OUTLINED_FUNCTION_220();
        goto LABEL_23;
      }
    }

    v6 = 0;
    result = 0;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    result = 1;
  }

LABEL_24:
  *v0 = v6;
  *(v0 + 8) = v8;
  return result;
}

void sub_25BBEFCE0()
{
  OUTLINED_FUNCTION_102_3();
  v4 = v3 & 0x7FFFFF;
  if (!(v2 | v4))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_25;
  }

  v5 = v2 == 255 || v1 <= -1.0;
  if (!v5 && sub_25BCB69DC() <= 63)
  {
    OUTLINED_FUNCTION_157_0();
    v7 = sub_25BCB699C() + __clz(__rbit32(v4));
    v8 = v0 - v7;
    if (__OFSUB__(v0, v7))
    {
      __break(1u);
    }

    else
    {
      if (v7 <= 63)
      {
        if (v8 < -64 || v8 > 64)
        {
LABEL_13:
          v8 = 0;
          v9 = 0;
          if ((v0 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v8 < 0)
        {
          if (v8 == -64)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_140_0();
        }

        else
        {
          if (v8 == 64)
          {
            goto LABEL_13;
          }

          v8 = v4 << v8;
        }

LABEL_21:
        if ((v0 & 0x8000000000000000) == 0)
        {
LABEL_23:
          v9 = 1 << v0;
          goto LABEL_24;
        }

        v9 = 0;
LABEL_24:
        v6 = v8 | v9;
        goto LABEL_25;
      }

      if ((v8 - 33) <= 0xFFFFFFFFFFFFFFBELL)
      {
        goto LABEL_16;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 < 0x20)
        {
          LODWORD(v8) = v4 << v8;
          goto LABEL_20;
        }

LABEL_16:
        LODWORD(v8) = 0;
LABEL_20:
        v8 = v8;
        goto LABEL_21;
      }
    }

    if (v8 > 0xFFFFFFFFFFFFFFE0)
    {
      LODWORD(v8) = v4 >> (v7 - v0);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_76_3();
LABEL_25:
  OUTLINED_FUNCTION_187_0(v6);
}

void sub_25BBEFE1C()
{
  OUTLINED_FUNCTION_169_0();
  v4 = v3 & 0x3FF;
  if (!(v1 | v4))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_25;
  }

  v5 = v1 == 31 || v2 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0));
  if (!v5 && sub_25BCB7BBC() <= 63)
  {
    OUTLINED_FUNCTION_157_0();
    v7 = sub_25BCB7B8C() + __clz(__rbit32(v4 | 0x10000));
    v8 = v0 - v7;
    if (__OFSUB__(v0, v7))
    {
      __break(1u);
    }

    else
    {
      if (v7 <= 63)
      {
        if (v8 < -64 || v8 > 64)
        {
LABEL_13:
          v8 = 0;
          v9 = 0;
          if ((v0 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v8 < 0)
        {
          if (v8 == -64)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_140_0();
        }

        else
        {
          if (v8 == 64)
          {
            goto LABEL_13;
          }

          v8 = v4 << v8;
        }

LABEL_21:
        if ((v0 & 0x8000000000000000) == 0)
        {
LABEL_23:
          v9 = 1 << v0;
          goto LABEL_24;
        }

        v9 = 0;
LABEL_24:
        v6 = v8 | v9;
        goto LABEL_25;
      }

      if ((v8 - 17) <= 0xFFFFFFFFFFFFFFDELL)
      {
        goto LABEL_16;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 < 0x10)
        {
          LODWORD(v8) = v4 << v8;
          goto LABEL_20;
        }

LABEL_16:
        LOWORD(v8) = 0;
LABEL_20:
        v8 = v8;
        goto LABEL_21;
      }
    }

    if (v8 > 0xFFFFFFFFFFFFFFF0)
    {
      LODWORD(v8) = v4 >> (v7 - v0);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_76_3();
LABEL_25:
  OUTLINED_FUNCTION_187_0(v6);
}

void sub_25BBEFF60()
{
  OUTLINED_FUNCTION_156_0();
  if (!v3)
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_35;
  }

  if (v2 == 2047)
  {
    goto LABEL_38;
  }

  v4 = sub_25BCB695C();
  if (v4 > 63)
  {
    goto LABEL_38;
  }

  v5 = v4;
  v6 = sub_25BCB692C();
  OUTLINED_FUNCTION_66_4(v6);
  v8 = v7 + __clz(__rbit64(v0));
  v9 = v5 - v8;
  if (__OFSUB__(v5, v8))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v8 <= 63)
  {
    if (v9 < -64 || v9 > 64)
    {
LABEL_8:
      if (v5 != 63)
      {
        if (v5 < -64)
        {
          do
          {
            v10 = 0;
            v11 = 0;
LABEL_30:
            v11 |= v10;
LABEL_31:
            if (v1 >= 0.0)
            {
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_33;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v5 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (v1 >= 0.0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 == 64)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    if (v9 == -64)
    {
      goto LABEL_8;
    }

LABEL_50:
    OUTLINED_FUNCTION_140_0();
LABEL_25:
    if (v5 != 63)
    {
      if (v5 >= -64)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
LABEL_29:
          OUTLINED_FUNCTION_220();
          goto LABEL_30;
        }

        if (v5 == -64)
        {
          goto LABEL_31;
        }
      }

      v10 = 0;
      goto LABEL_30;
    }

    if (v1 >= 0.0 || v11)
    {
LABEL_38:
      OUTLINED_FUNCTION_76_3();
      goto LABEL_35;
    }

LABEL_46:
    v11 = 0x8000000000000000;
    goto LABEL_35;
  }

  if (v9 >= -64 && v9 <= 64)
  {
    if (v9 < 0)
    {
      if (v9 != -64)
      {
        goto LABEL_50;
      }
    }

    else if (v9 != 64)
    {
LABEL_24:
      v11 = v0 << v9;
      goto LABEL_25;
    }
  }

  if (v5 == 63)
  {
    goto LABEL_37;
  }

  if (v5 >= -64)
  {
LABEL_17:
    if (v5 < 0)
    {
      goto LABEL_42;
    }

    goto LABEL_29;
  }

LABEL_15:
  v11 = 0;
  if (v1 < 0.0)
  {
LABEL_33:
    v11 = -v11;
  }

LABEL_35:
  OUTLINED_FUNCTION_187_0(v11);
}

void sub_25BBF0118()
{
  OUTLINED_FUNCTION_102_3();
  v4 = v3 & 0x7FFFFF;
  if (!(v2 | v4))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_30;
  }

  if (v2 == 255 || sub_25BCB69DC() > 63)
  {
LABEL_42:
    OUTLINED_FUNCTION_76_3();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_157_0();
  v5 = sub_25BCB699C();
  OUTLINED_FUNCTION_66_4(v5);
  OUTLINED_FUNCTION_98_4();
  if (v8)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v7 > 63)
  {
    if ((v6 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v6 < 0)
    {
      if (v6 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        LODWORD(v6) = v4 >> -v6;
      }

      goto LABEL_17;
    }

    if (v6 >= 0x20)
    {
LABEL_13:
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = v4 << v6;
    }

LABEL_17:
    v6 = v6;
    goto LABEL_18;
  }

  if (v6 < -64 || v6 > 64)
  {
LABEL_8:
    if (v0 == 63)
    {
      goto LABEL_41;
    }

    if (v0 < -64)
    {
      goto LABEL_10;
    }

    if (v0 < 0)
    {
      if (v0 == -64)
      {
LABEL_10:
        v6 = 0;
        if (v1 >= 0.0)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      v9 = 0;
      v6 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v6 < 0)
  {
    if (v6 == -64)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_140_0();
  }

  else
  {
    if (v6 == 64)
    {
      goto LABEL_8;
    }

    v6 = v4 << v6;
  }

LABEL_18:
  if (v0 == 63)
  {
LABEL_35:
    if (v1 >= 0.0 || v6)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (v0 <= -65)
  {
    goto LABEL_26;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_220();
    goto LABEL_25;
  }

  if (v0 == -64)
  {
    goto LABEL_26;
  }

  v9 = 0;
LABEL_25:
  v6 |= v9;
LABEL_26:
  if (v1 >= 0.0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_40;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    if (v1 >= 0.0)
    {
      goto LABEL_42;
    }

LABEL_37:
    v6 = 0x8000000000000000;
    goto LABEL_30;
  }

LABEL_28:
  v6 = -v6;
LABEL_30:
  OUTLINED_FUNCTION_187_0(v6);
}

void sub_25BBF02C4()
{
  OUTLINED_FUNCTION_169_0();
  v3 = v2 & 0x3FF;
  if (!(v1 | v3))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_31;
  }

  if (v1 == 31 || sub_25BCB7BBC() > 63)
  {
LABEL_44:
    OUTLINED_FUNCTION_76_3();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_157_0();
  v4 = sub_25BCB7B8C();
  OUTLINED_FUNCTION_66_4(v4);
  OUTLINED_FUNCTION_98_4();
  if (_VF)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v6 > 63)
  {
    if ((v5 - 17) > 0xFFFFFFFFFFFFFFDELL)
    {
      if (v5 < 0)
      {
        if (v5 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v5) = v3 >> -v5;
          goto LABEL_17;
        }
      }

      else if (v5 < 0x10)
      {
        LODWORD(v5) = v3 << v5;
        goto LABEL_17;
      }
    }

    LOWORD(v5) = 0;
LABEL_17:
    v5 = v5;
    goto LABEL_18;
  }

  if (v5 < -64 || v5 > 64)
  {
LABEL_8:
    if (v0 == 63)
    {
      goto LABEL_43;
    }

    if (v0 < -64)
    {
      goto LABEL_10;
    }

    if (v0 < 0)
    {
      if (v0 == -64)
      {
LABEL_10:
        v5 = 0;
        __asm { FCMP            H8, #0 }

        if (!_NF)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      v12 = 0;
      v5 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v5 < 0)
  {
    if (v5 == -64)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_140_0();
  }

  else
  {
    if (v5 == 64)
    {
      goto LABEL_8;
    }

    v5 = v3 << v5;
  }

LABEL_18:
  if (v0 == 63)
  {
LABEL_36:
    __asm { FCMP            H8, #0 }

    if (!_NF || v5)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v0 <= -65)
  {
    goto LABEL_26;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_220();
    goto LABEL_25;
  }

  if (v0 == -64)
  {
    goto LABEL_26;
  }

  v12 = 0;
LABEL_25:
  v5 |= v12;
LABEL_26:
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_44;
    }

LABEL_39:
    v5 = 0x8000000000000000;
    goto LABEL_31;
  }

LABEL_29:
  v5 = -v5;
LABEL_31:
  OUTLINED_FUNCTION_187_0(v5);
}

uint64_t sub_25BBF0474(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v15 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_40;
  }

  v8 = sub_25BCB695C();
  if (v8 > 31)
  {
    goto LABEL_40;
  }

  v9 = v8;
  v10 = sub_25BCB692C();
  result = OUTLINED_FUNCTION_66_4(v10);
  v7 = v12 + __clz(__rbit64(v6));
  v13 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v7 > 31)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v7) = 0;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_20:
    if (v9 != 31)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 < 0.0 && !v7)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (v13 >= -32 && v13 <= 32)
  {
    if (v13 < 0)
    {
      if (v13 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v13 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v7 | v14;
  if (a2 >= 0.0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 < 0.0)
    {
      LOBYTE(v7) = 0;
LABEL_39:
      v15 = 0x80000000;
      goto LABEL_29;
    }

LABEL_40:
    result = OUTLINED_FUNCTION_167_0();
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 4) = v7;
  return result;
}

void sub_25BBF0614()
{
  OUTLINED_FUNCTION_102_3();
  v5 = v4 & 0x7FFFFF;
  v6 = v3 | v4 & 0x7FFFFF;
  if (v6)
  {
    if (v3 == 255 || sub_25BCB69DC() > 31)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_157_0();
    v7 = sub_25BCB699C();
    OUTLINED_FUNCTION_66_4(v7);
    OUTLINED_FUNCTION_98_4();
    if (v9)
    {
      __break(1u);
    }

    else
    {
      if (v8 >= -32 && v8 <= 32)
      {
        if (v8 < 0)
        {
          goto LABEL_29;
        }

        if (v8 != 32)
        {
          v6 = v5 << v8;
          goto LABEL_13;
        }
      }

LABEL_7:
      if (v1 != 31)
      {
        i = 0;
        v6 = 0;
        if (v1 < 0)
        {
          goto LABEL_17;
        }

LABEL_16:
        for (i = 1 << v1; ; i = 0)
        {
LABEL_17:
          v8 = v6 | i;
          if (v2 >= 0.0)
          {
            if ((v6 & 0x80000000) == 0)
            {
              LOBYTE(v6) = 0;
              goto LABEL_22;
            }
          }

          else
          {
            if ((v6 & 0x80000000) == 0)
            {
              LOBYTE(v6) = 0;
              LODWORD(v8) = -v8;
              goto LABEL_22;
            }

            __break(1u);
          }

          __break(1u);
LABEL_29:
          if (v8 == -32)
          {
            goto LABEL_7;
          }

          v6 = v5 >> -v8;
LABEL_13:
          if (v1 == 31)
          {
            break;
          }

          if ((v1 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }
        }

        if (v2 < 0.0 && !v6)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

    if (v2 < 0.0)
    {
      LOBYTE(v6) = 0;
LABEL_33:
      LODWORD(v8) = 0x80000000;
      goto LABEL_22;
    }

LABEL_34:
    OUTLINED_FUNCTION_167_0();
    goto LABEL_22;
  }

  LODWORD(v8) = 0;
LABEL_22:
  *v0 = v8;
  *(v0 + 4) = v6;
}

void sub_25BBF075C()
{
  OUTLINED_FUNCTION_169_0();
  v3 = v4 & 0x3FF;
  LOBYTE(v4) = v2 | v3;
  if (!(v2 | v3))
  {
    v10 = 0;
    goto LABEL_27;
  }

  if (v2 == 31 || sub_25BCB7BBC() > 31)
  {
LABEL_43:
    OUTLINED_FUNCTION_167_0();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_157_0();
  v5 = sub_25BCB7B8C();
  OUTLINED_FUNCTION_66_4(v5);
  OUTLINED_FUNCTION_98_4();
  if (_VF)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v4 > 31)
  {
    if ((v6 - 17) > 0xFFFFFFFFFFFFFFDELL)
    {
      if (v6 < 0)
      {
        if (v6 > 0xFFFFFFFFFFFFFFF0)
        {
          v9 = v3 >> -v6;
          goto LABEL_16;
        }
      }

      else if (v6 < 0x10)
      {
        v9 = v3 << v6;
        goto LABEL_16;
      }
    }

    LOWORD(v9) = 0;
LABEL_16:
    LODWORD(v4) = v9;
LABEL_17:
    if (v1 != 31)
    {
      if (v1 < 0)
      {
        v8 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_32:
    __asm { FCMP            H8, #0 }

    if (!_NF || v4)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v6 >= -32 && v6 <= 32)
  {
    if (v6 < 0)
    {
      if (v6 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v4) = v3 >> -v6;
    }

    else
    {
      if (v6 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v4) = v3 << v6;
    }

    goto LABEL_17;
  }

LABEL_8:
  if (v1 == 31)
  {
LABEL_39:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_43;
    }

    LOBYTE(v4) = 0;
LABEL_42:
    v10 = 0x80000000;
    goto LABEL_27;
  }

  v8 = 0;
  LODWORD(v4) = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
LABEL_20:
    v8 = 1 << v1;
  }

LABEL_21:
  v10 = v4 | v8;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v4 & 0x80000000) == 0)
    {
      LOBYTE(v4) = 0;
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  if ((v4 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v4) = 0;
  v10 = -v10;
LABEL_27:
  *v0 = v10;
  *(v0 + 4) = v4;
}

BOOL sub_25BBF08EC(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25BCB695C(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25BCB692C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 15)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25BBF0AA0(uint64_t a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25BCB69DC(), v8 > 15))
  {
LABEL_37:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25BCB699C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 15)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOWORD(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25BBF0C54(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    LOWORD(v11) = 0;
    result = 1;
    goto LABEL_23;
  }

  if (v3 != 31)
  {
    v6 = sub_25BCB7BBC();
    if (v6 <= 15)
    {
      v7 = v6;
      v8 = sub_25BCB7B8C();
      result = v7 >= v8;
      v10 = v8 + __clz(__rbit32(v4 | 0x10000));
      v11 = v7 - v10;
      if (__OFSUB__(v7, v10))
      {
        __break(1u);
      }

      else
      {
        if (v11 >= -16 && v11 <= 16)
        {
          if (v11 < 0)
          {
            goto LABEL_30;
          }

          if (v11 != 16)
          {
            v13 = v4 << v11;
            goto LABEL_13;
          }
        }

LABEL_7:
        if (v7 != 15)
        {
          i = 0;
          v13 = 0;
          if (v7 < 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          for (i = 1 << v7; ; i = 0)
          {
LABEL_17:
            v11 = v13 | i;
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              if ((v13 & 0x8000) == 0)
              {
                v5 = 0;
                LODWORD(v11) = -v11;
                goto LABEL_23;
              }

              __break(1u);
            }

            else if ((v13 & 0x8000) == 0)
            {
              v5 = 0;
              goto LABEL_23;
            }

            __break(1u);
LABEL_30:
            if (v11 == -16)
            {
              goto LABEL_7;
            }

            v13 = v4 >> -v11;
LABEL_13:
            if (v7 == 15)
            {
              break;
            }

            if ((v7 & 0x8000000000000000) == 0)
            {
              goto LABEL_16;
            }
          }

          __asm { FCMP            H8, #0 }

          if (_NF && !v13)
          {
            goto LABEL_35;
          }

          goto LABEL_26;
        }
      }

      __asm { FCMP            H8, #0 }

      if (_NF)
      {
LABEL_35:
        v5 = 0;
        LOWORD(v11) = 0x8000;
        goto LABEL_23;
      }
    }
  }

LABEL_26:
  LOWORD(v11) = 0;
  result = 0;
  v5 = 1;
LABEL_23:
  *a1 = v11;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25BBF0DC4(_BYTE *a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25BCB695C(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25BCB692C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 7)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25BBF0F78(_BYTE *a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25BCB69DC(), v8 > 7))
  {
LABEL_37:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25BCB699C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 7)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOBYTE(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25BBF112C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    LOBYTE(v14) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v4 == 31 || (v7 = sub_25BCB7BBC(), v7 > 7))
  {
LABEL_39:
    LOBYTE(v14) = 0;
    result = 0;
    v6 = 1;
    goto LABEL_29;
  }

  v8 = v7;
  v9 = sub_25BCB7B8C();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5 | 0x10000));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v11 > 7)
  {
    if ((v12 - 17) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      if (v12 < 0)
      {
        if (v12 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v11) = v5 >> (v11 - v8);
LABEL_19:
          if (v8 != 7)
          {
            if (v8 < 0)
            {
              v13 = 0;
              goto LABEL_23;
            }

            goto LABEL_22;
          }

LABEL_31:
          __asm { FCMP            H8, #0 }

          if (!_NF || v11)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }
      }

      else if (v12 < 0x10)
      {
LABEL_18:
        LODWORD(v11) = LODWORD(a2) << v12;
        goto LABEL_19;
      }
    }

    LODWORD(v11) = 0;
    goto LABEL_19;
  }

  if (v12 >= -8 && v12 <= 8)
  {
    if (v12 < 0)
    {
      if (v12 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v11) = LOBYTE(a2) >> (v11 - v8);
      goto LABEL_19;
    }

    if (v12 == 8)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 7)
  {
    goto LABEL_38;
  }

  v13 = 0;
  LODWORD(v11) = 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v13 = 1 << v8;
  }

LABEL_23:
  v14 = v11 | v13;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v11 & 0x80) == 0)
    {
      v6 = 0;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if ((v11 & 0x80) != 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_39;
    }

LABEL_34:
    v6 = 0;
    LOBYTE(v14) = 0x80;
    goto LABEL_29;
  }

  v6 = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  a1[1] = v6;
  return result;
}

uint64_t sub_25BBF12DC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

uint64_t sub_25BBF1390(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25BCB749C();
  }

  return sub_25BCB719C();
}

float sub_25BBF1544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v38 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = sub_25BCB606C();
  v21 = sub_25BCB608C();
  if (v20 == 11)
  {
    if (v21 == 52)
    {
      (*(v10 + 16))(v19, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v10 + 8))(a1, a2);
        return v43;
      }

      else
      {
        sub_25BCB61EC();
        sub_25BCB607C();
        v29 = v39;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v38 + 8))(v9, v29);
        v30 = v40;
        sub_25BCB609C();
        (*(v10 + 8))(a1, a2);
        v31 = v42;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v41 + 8))(v30, v31);
        sub_25BCB693C();
      }

      return v28;
    }

LABEL_16:
    sub_25BB18A50();
    sub_25BCB60AC();
LABEL_17:
    (*(v10 + 8))(a1, a2);
    return *&v43;
  }

  if (v20 == 8)
  {
    if (v21 == 23)
    {
      (*(v10 + 16))(v16, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_25BCB61EC();
        sub_25BCB607C();
        v24 = v39;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v38 + 8))(v9, v24);
        v25 = v40;
        sub_25BCB609C();
        (*(v10 + 8))(a1, a2);
        v26 = v42;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v41 + 8))(v25, v26);
        sub_25BCB69AC();
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v20 != 5 || v21 != 10)
  {
    goto LABEL_16;
  }

  (*(v10 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a2);
    _H0 = LOWORD(v43);
  }

  else
  {
    sub_25BCB61EC();
    sub_25BCB607C();
    v32 = v39;
    swift_getAssociatedConformanceWitness();
    sub_25BCB6F8C();
    (*(v38 + 8))(v9, v32);
    v33 = v40;
    sub_25BCB609C();
    (*(v10 + 8))(a1, a2);
    v34 = v42;
    swift_getAssociatedConformanceWitness();
    sub_25BCB6F8C();
    (*(v41 + 8))(v33, v34);
    sub_25BCB7B9C();
  }

  __asm { FCVT            S0, H0 }

  return result;
}

uint64_t sub_25BBF1C1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_53_8(a1, a2, a3, a4);
  v7 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape;
  v37[0] = *(v8 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
  v9 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType;
  LOBYTE(v28[0]) = *(v8 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType);
  v44 = 0;
  v37[14] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/InputOps.swift";
  v37[15] = 110;
  v38 = 2;
  v39 = xmmword_25BCC8F60;
  v40 = "init(id:shape:scalarType:creationSite:)";
  v41 = 39;
  v42 = 2;
  v43 = 0;
  type metadata accessor for InputOperation();
  swift_allocObject();
  sub_25BCB617C();
  OUTLINED_FUNCTION_177_0();
  v10 = OUTLINED_FUNCTION_3();
  v16 = sub_25BAA5FD0(v10, v11, v12, v13, v14, v15);
  if ((v6 & 0x100000000) != 0)
  {
    v6 = *(v16 + 16);
  }

  *(v4 + 24) = v6;
  *(v4 + 152) = *(v5 + v7);
  *(v4 + 160) = *(v5 + v9);
  OUTLINED_FUNCTION_35_14();
  sub_25BBF3030(v17, v18, &unk_25BCC42EC);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_194_1();
  sub_25BCB617C();
  v29 = sub_25BAA6CC0(0);
  v30 = v19;
  result = sub_25BAA6CD8();
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_199_0();

    v31 = v6;
    result = sub_25BAA6CD8();
    if (*(result + 16))
    {
      OUTLINED_FUNCTION_198_0();

      OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_193_0(v21, &off_286D4C308, v22, v23, v24, v25, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v29, v30, v31, v32, v33, v34, v35, v36);

      sub_25BA9778C(v28);
      sub_25BAA6E30(v37, v4 + 40);
      return OUTLINED_FUNCTION_47();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBF1DE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_53_8(a1, a2, a3, a4);
  v36[0] = *(v7 + 16);
  LOBYTE(v27[0]) = *(v7 + 24);
  v37 = 0;
  OUTLINED_FUNCTION_203("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/InputOps.swift");
  OUTLINED_FUNCTION_182_0(v8, xmmword_25BCC8F60);
  swift_allocObject();
  sub_25BCB617C();
  OUTLINED_FUNCTION_177_0();
  v9 = OUTLINED_FUNCTION_3();
  v15 = sub_25BAA5FD0(v9, v10, v11, v12, v13, v14);
  if ((v6 & 0x100000000) != 0)
  {
    v6 = *(v15 + 16);
  }

  *(v4 + 24) = v6;
  *(v4 + 152) = *(v5 + 16);
  *(v4 + 160) = *(v5 + 24);
  OUTLINED_FUNCTION_35_14();
  sub_25BBF3030(v16, v17, &unk_25BCC42EC);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_194_1();
  sub_25BCB617C();
  v28 = sub_25BAA6CC0(0);
  v29 = v18;
  result = sub_25BAA6CD8();
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_199_0();

    v30 = v6;
    result = sub_25BAA6CD8();
    if (*(result + 16))
    {
      OUTLINED_FUNCTION_198_0();

      OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_193_0(v20, &off_286D4DBE0, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v28, v29, v30, v31, v32, v33, v34, v35);

      sub_25BA9778C(v27);
      sub_25BAA6E30(v36, v4 + 40);
      return OUTLINED_FUNCTION_47();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBF1F60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_53_8(a1, a2, a3, a4);
  v36[0] = *(v7 + 24);
  LOBYTE(v27[0]) = *(v7 + 32);
  v37 = 0;
  OUTLINED_FUNCTION_203("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/InputOps.swift");
  OUTLINED_FUNCTION_182_0(v8, xmmword_25BCC8F60);
  swift_allocObject();
  sub_25BCB617C();
  OUTLINED_FUNCTION_177_0();
  v9 = OUTLINED_FUNCTION_3();
  v15 = sub_25BAA5FD0(v9, v10, v11, v12, v13, v14);
  if ((v6 & 0x100000000) != 0)
  {
    v6 = *(v15 + 16);
  }

  *(v4 + 24) = v6;
  *(v4 + 152) = *(v5 + 24);
  *(v4 + 160) = *(v5 + 32);
  OUTLINED_FUNCTION_35_14();
  sub_25BBF3030(v16, v17, &unk_25BCC42EC);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_194_1();
  sub_25BCB617C();
  v28 = sub_25BAA6CC0(0);
  v29 = v18;
  result = sub_25BAA6CD8();
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_199_0();

    v30 = v6;
    result = sub_25BAA6CD8();
    if (*(result + 16))
    {
      OUTLINED_FUNCTION_198_0();

      OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_193_0(v20, &off_286D4C100, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v28, v29, v30, v31, v32, v33, v34, v35);

      sub_25BA9778C(v27);
      sub_25BAA6E30(v36, v4 + 40);
      return OUTLINED_FUNCTION_47();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25BBF2100()
{
  result = qword_27FBB6300;
  if (!qword_27FBB6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6300);
  }

  return result;
}

unint64_t sub_25BBF2154()
{
  result = qword_27FBB6318;
  if (!qword_27FBB6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6318);
  }

  return result;
}

unint64_t sub_25BBF21A8()
{
  result = qword_27FBB6328;
  if (!qword_27FBB6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6328);
  }

  return result;
}

unint64_t sub_25BBF21FC()
{
  result = qword_27FBB6338;
  if (!qword_27FBB6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6338);
  }

  return result;
}

unint64_t sub_25BBF2250()
{
  result = qword_27FBB6348;
  if (!qword_27FBB6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6348);
  }

  return result;
}

unint64_t sub_25BBF22A4()
{
  result = qword_27FBB6358;
  if (!qword_27FBB6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6358);
  }

  return result;
}

unint64_t sub_25BBF22F8()
{
  result = qword_27FBB6368;
  if (!qword_27FBB6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6368);
  }

  return result;
}

double sub_25BBF234C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v38 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = sub_25BCB606C();
  v21 = sub_25BCB608C();
  if (v20 == 11)
  {
    if (v21 == 52)
    {
      (*(v10 + 16))(v19, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_25BCB61EC();
        sub_25BCB607C();
        v25 = v39;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v38 + 8))(v9, v25);
        v26 = v40;
        sub_25BCB609C();
        (*(v10 + 8))(a1, a2);
        v27 = v42;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v41 + 8))(v26, v27);
        sub_25BCB693C();
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v20 == 8)
  {
    if (v21 == 23)
    {
      (*(v10 + 16))(v16, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v10 + 8))(a1, a2);
        return *&v43;
      }

      else
      {
        sub_25BCB61EC();
        sub_25BCB607C();
        v29 = v39;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v38 + 8))(v9, v29);
        v30 = v40;
        sub_25BCB609C();
        (*(v10 + 8))(a1, a2);
        v31 = v42;
        swift_getAssociatedConformanceWitness();
        sub_25BCB6F8C();
        (*(v41 + 8))(v30, v31);
        sub_25BCB69AC();
      }

      return v24;
    }

LABEL_16:
    sub_25BB675B0();
    sub_25BCB60AC();
LABEL_17:
    (*(v10 + 8))(a1, a2);
    return v43;
  }

  if (v20 != 5 || v21 != 10)
  {
    goto LABEL_16;
  }

  (*(v10 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a2);
    _H0 = LOWORD(v43);
  }

  else
  {
    sub_25BCB61EC();
    sub_25BCB607C();
    v32 = v39;
    swift_getAssociatedConformanceWitness();
    sub_25BCB6F8C();
    (*(v38 + 8))(v9, v32);
    v33 = v40;
    sub_25BCB609C();
    (*(v10 + 8))(a1, a2);
    v34 = v42;
    swift_getAssociatedConformanceWitness();
    sub_25BCB6F8C();
    (*(v41 + 8))(v33, v34);
    sub_25BCB7B9C();
  }

  __asm { FCVT            D0, H0 }

  return result;
}

void sub_25BBF2A24()
{
  OUTLINED_FUNCTION_9_18();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_139_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v70[3] = v7;
  v70[4] = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v70[2] = v70 - v9;
  OUTLINED_FUNCTION_139_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v70[0] = v11;
  v70[1] = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_171();
  MEMORY[0x28223BE20](v15);
  v17 = v70 - v16;
  OUTLINED_FUNCTION_102_0();
  v18 = sub_25BCB606C();
  OUTLINED_FUNCTION_102_0();
  v19 = sub_25BCB608C();
  if (v18 == 11)
  {
    if (v19 == 52)
    {
      OUTLINED_FUNCTION_125_1();
      v37(v17, v5, v3);
      if (swift_dynamicCast())
      {
        v38 = OUTLINED_FUNCTION_64_5();
        v39(v38);
        _D0 = v71;
      }

      else
      {
        OUTLINED_FUNCTION_192_0();
        OUTLINED_FUNCTION_102_0();
        sub_25BCB607C();
        v58 = OUTLINED_FUNCTION_110_4();
        OUTLINED_FUNCTION_191_0(v58, v59, v60, v61, v62);
        OUTLINED_FUNCTION_138_0();
        sub_25BCB6F8C();
        v63 = OUTLINED_FUNCTION_74_4();
        v64(v63);
        OUTLINED_FUNCTION_102_0();
        sub_25BCB609C();
        v65 = OUTLINED_FUNCTION_64_5();
        v66(v65);
        OUTLINED_FUNCTION_110_4();
        OUTLINED_FUNCTION_139_0();
        swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_138_0();
        sub_25BCB6F8C();
        v67 = OUTLINED_FUNCTION_75_3();
        v68(v67);
        sub_25BCB693C();
      }

      __asm { FCVT            H0, D0 }

      goto LABEL_18;
    }

LABEL_16:
    sub_25BB95A00();
    sub_25BCB60AC();
    goto LABEL_17;
  }

  if (v18 == 8)
  {
    if (v19 == 23)
    {
      OUTLINED_FUNCTION_125_1();
      v33(v1, v5, v3);
      if (swift_dynamicCast())
      {
        v34 = OUTLINED_FUNCTION_64_5();
        v35(v34);
        _S0 = v71;
      }

      else
      {
        OUTLINED_FUNCTION_192_0();
        OUTLINED_FUNCTION_102_0();
        sub_25BCB607C();
        v43 = OUTLINED_FUNCTION_110_4();
        OUTLINED_FUNCTION_191_0(v43, v44, v45, v46, v47);
        OUTLINED_FUNCTION_138_0();
        sub_25BCB6F8C();
        v48 = OUTLINED_FUNCTION_74_4();
        v49(v48);
        OUTLINED_FUNCTION_102_0();
        sub_25BCB609C();
        v50 = OUTLINED_FUNCTION_64_5();
        v51(v50);
        OUTLINED_FUNCTION_110_4();
        OUTLINED_FUNCTION_139_0();
        swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_138_0();
        sub_25BCB6F8C();
        v52 = OUTLINED_FUNCTION_75_3();
        v53(v52);
        sub_25BCB69AC();
      }

      __asm { FCVT            H0, S0 }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v18 != 5 || v19 != 10)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_125_1();
  v21(v0, v5, v3);
  if (swift_dynamicCast())
  {
LABEL_17:
    v41 = OUTLINED_FUNCTION_64_5();
    v42(v41);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_102_0();
  sub_25BCB607C();
  v22 = OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_191_0(v22, v23, v24, v25, v26);
  OUTLINED_FUNCTION_138_0();
  sub_25BCB6F8C();
  v27 = OUTLINED_FUNCTION_74_4();
  v28(v27);
  OUTLINED_FUNCTION_102_0();
  sub_25BCB609C();
  v29 = OUTLINED_FUNCTION_64_5();
  v30(v29);
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_139_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_138_0();
  sub_25BCB6F8C();
  v31 = OUTLINED_FUNCTION_75_3();
  v32(v31);
  sub_25BCB7B9C();
LABEL_18:
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBF2F60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BBF2FDC()
{
  result = qword_27FBB6398;
  if (!qword_27FBB6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6398);
  }

  return result;
}

uint64_t sub_25BBF3030(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_99_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB6F5C();
}

void OUTLINED_FUNCTION_120_3(uint64_t a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *(v4 - 176) = a1;
  *(v4 - 168) = a3;
  *(v4 - 184) = a2;
  *(v4 - 160) = a4;
}

uint64_t OUTLINED_FUNCTION_131()
{

  return sub_25BAC27B0(v0 - 248, v0 - 208);
}

void OUTLINED_FUNCTION_150_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 176) = a8;
  *(v8 - 168) = a5;
  *(v8 - 184) = a2;
}

__n128 OUTLINED_FUNCTION_154_0()
{
  v2 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 64) = v2;
  result = *(v0 + 112);
  *(v1 + 80) = result;
  *(v0 + 256) = *(v0 + 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_160_0()
{
  result = __swift_destroy_boxed_opaque_existential_1((v2 - 208));
  *(v2 - 208) = v0;
  *(v2 - 200) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_164(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_165_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_172_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_190_0()
{

  return sub_25BCB629C();
}

uint64_t OUTLINED_FUNCTION_191_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return sub_25BCB61EC();
}

uint64_t OUTLINED_FUNCTION_197_0()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_198_0()
{
}

double OUTLINED_FUNCTION_199_0()
{

  sub_25BCB617C();
  return result;
}

uint64_t OUTLINED_FUNCTION_202(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_203(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;
  *(v1 - 120) = 110;
  *(v1 - 112) = 2;
}

void OUTLINED_FUNCTION_225()
{

  sub_25BC170C8(v1, v0 + 56, v0 + 112);
}

uint64_t OUTLINED_FUNCTION_226(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BAA51C8(v2, va);
}

uint64_t OUTLINED_FUNCTION_228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BCB74CC(a1, a2, a3, a4, a5, a6, 117, 2, a9);
}

uint64_t OUTLINED_FUNCTION_229()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return swift_getDynamicType();
}

uint64_t sub_25BBF3504(uint64_t a1, void (*a2)(_BYTE *))
{

  sub_25BC6728C(a1);
  sub_25BB1A740(v5);
  a2(v5);
  sub_25BB1A750();
}

uint64_t sub_25BBF3598@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D82FB8];
  switch(*(v2 + 128))
  {
    case 1:
      v4 = MEMORY[0x277D82FF0];
      break;
    case 2:
      v4 = MEMORY[0x277D83040];
      break;
    case 3:
      v4 = MEMORY[0x277D82FF8];
      break;
    case 4:
      v4 = MEMORY[0x277D83048];
      break;
    case 5:
      v4 = MEMORY[0x277D83000];
      break;
    case 6:
      v4 = MEMORY[0x277D83050];
      break;
    case 7:
      v4 = MEMORY[0x277D83008];
      break;
    case 8:
      v4 = MEMORY[0x277D82FC0];
      break;
    case 9:
      v4 = MEMORY[0x277D83010];
      break;
    case 0xA:
      v4 = MEMORY[0x277D82FD0];
      break;
    case 0xB:
      v4 = MEMORY[0x277D83018];
      break;
    case 0xC:
      v4 = MEMORY[0x277D83058];
      break;
    case 0xD:
      BYTE4(v18) = 9;
      sub_25BA97890("bnnsOperator", 12, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/BNNSUnaryOps.swift", 108, 2, 41, a1, v9, 0xD000000000000028, 0x800000025BCE1290, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);
    case 0xE:
      v4 = MEMORY[0x277D82FD8];
      break;
    case 0xF:
      v4 = MEMORY[0x277D82FA0];
      break;
    case 0x10:
      v4 = MEMORY[0x277D83060];
      break;
    case 0x11:
      v4 = MEMORY[0x277D82FB0];
      break;
    case 0x12:
      v4 = MEMORY[0x277D83028];
      break;
    case 0x13:
      v4 = MEMORY[0x277D82FE0];
      break;
    case 0x14:
      v4 = MEMORY[0x277D83030];
      break;
    case 0x15:
      v4 = MEMORY[0x277D82FA8];
      break;
    case 0x16:
      v4 = MEMORY[0x277D83070];
      break;
    case 0x17:
      v4 = MEMORY[0x277D82FE8];
      break;
    case 0x18:
      v4 = MEMORY[0x277D83038];
      break;
    default:
      break;
  }

  v5 = *v4;
  v6 = sub_25BCB540C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_25BBF379C(uint64_t a1)
{
  v5 = sub_25BCB540C();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BAC4018();
  v12 = sub_25BB3EE04(v11, a1);
  if (!v12)
  {
    v22 = sub_25BABE12C(*(v1 + 128));
    v24 = v23;
    sub_25BB0E2EC();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0x4000;
    swift_willThrow();
    return v3;
  }

  v14 = v12;
  v15 = v13;
  if (sub_25BABE12C(*(v1 + 128)) == 0x797469746E656469 && v16 == 0xE800000000000000)
  {

    goto LABEL_11;
  }

  v18 = sub_25BCB789C();

  if (v18)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE50;
    *(v3 + 32) = v14;
    *(v3 + 40) = v15;
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  sub_25BBF3598(v19, v10);
  v20 = sub_25BBF3A04(v10, v14, v15);
  if (v2)
  {
    (*(v7 + 8))(v10, v5);
    swift_unknownObjectRelease();
    *(v3 + 16) = 0;
  }

  else
  {
    v27 = v20;
    v28 = v21;
    (*(v7 + 8))(v10, v5);
    *(v3 + 32) = v27;
    *(v3 + 40) = v28;
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_25BBF3A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  ObjectType = swift_getObjectType();
  v46 = *(a3 + 8);
  v46(&v49, ObjectType, a3);
  if (v49 > 0xCu || ((1 << v49) & 0x1777) == 0)
  {
    v33 = sub_25BBF5570();
    v39 = v38;
    sub_25BB0E2EC();
    swift_allocError();
    *v40 = v33;
    *(v40 + 8) = v39;
    *(v40 + 16) = 24576;
    swift_willThrow();
    return v33;
  }

  v44 = a1;
  v45 = v12;
  v42 = v9;
  v43 = v3;
  v14 = *(a3 + 16);
  v14(&v49, ObjectType, a3);
  v15 = v49;
  v14(&v49, ObjectType, a3);
  v16 = *(v49 + 16);

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v47 = swift_allocObject();
    v47[1] = xmmword_25BCBAE50;
    v14(&v49, ObjectType, a3);
    result = v49;
    v18 = *(v49 + 16);
    if (v18)
    {
      v19 = (v49 + 32);
      v20 = 1;
      v21 = &off_25BCBA000;
      v22 = v15;
      v23 = v45;
      while (1)
      {
        v24 = *v19++;
        v25 = v20 * v24;
        if ((v20 * v24) >> 64 != (v20 * v24) >> 63)
        {
          goto LABEL_22;
        }

        v20 = v25;
        if (!--v18)
        {
          goto LABEL_11;
        }
      }
    }

    v25 = 1;
    v21 = &off_25BCBA000;
    v22 = v15;
    v23 = v45;
LABEL_11:
    *(v47 + 4) = v25;
  }

  else
  {
    v47 = &unk_286D43978;
    v21 = &off_25BCBA000;
    v22 = v15;
    v23 = v45;
  }

  v26 = *(v22 + 16);
  if (!v26)
  {
LABEL_17:
    type metadata accessor for NativeTensorStorage(0);
    v49 = v22;
    v46(&v48, ObjectType, a3);
    v31 = v43;
    sub_25BBC0130(&v49, &v48, 0, 0);
    v33 = v32;
    v34 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v34);
    sub_25BCB54FC();
    v35 = sub_25BCB54EC();
    v36 = __swift_storeEnumTagSinglePayload(v23, 0, 1, v35);
    MEMORY[0x28223BE20](v36);
    *(&v41 - 4) = a2;
    *(&v41 - 3) = a3;
    v37 = v44;
    *(&v41 - 2) = v47;
    *(&v41 - 1) = v37;
    sub_25BBF3504(v23, sub_25BBF4BCC);
    sub_25BB0EA20(v23);

    if (v31)
    {
    }

    return v33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  result = swift_allocObject();
  *(result + 16) = *(v21 + 229);
  v27 = (v22 + 32);
  v28 = 1;
  while (1)
  {
    v29 = *v27++;
    v30 = v28 * v29;
    if ((v28 * v29) >> 64 != (v28 * v29) >> 63)
    {
      break;
    }

    v28 = v30;
    if (!--v26)
    {
      *(result + 32) = v30;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

char *sub_25BBF3E68(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v60 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = sub_25BAC4018();
  v18 = sub_25BB3EE04(v17, a1);
  if (!v18)
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v30 = xmmword_25BCC9050;
    *(v30 + 16) = 0x4000;
    swift_willThrow();
    return v7;
  }

  v20 = v18;
  v21 = v19;
  v58 = v2;
  v61 = v16;
  v62 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v22 = swift_allocObject();
  v59 = xmmword_25BCBAE50;
  *(v22 + 16) = xmmword_25BCBAE50;
  ObjectType = swift_getObjectType();
  (*(v21 + 16))(v66, ObjectType, v21);
  result = v66[0];
  v25 = *(v66[0] + 16);
  if (v25)
  {
    v26 = (v66[0] + 32);
    v27 = 1;
    while (1)
    {
      v28 = *v26++;
      v29 = v27 * v28;
      if ((v27 * v28) >> 64 != (v27 * v28) >> 63)
      {
        break;
      }

      v27 = v29;
      if (!--v25)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v29 = 1;
LABEL_9:
  v56 = v21;
  v57 = v20;
  *(v22 + 32) = v29;

  sub_25BCB50AC();
  v31 = 1;
  OUTLINED_FUNCTION_1_47();
  sub_25BCB54FC();
  v32 = swift_allocObject();
  *(v32 + 16) = v59;
  sub_25BAB9E04(v66);
  result = v66[0];
  v33 = *(v66[0] + 16);
  if (!v33)
  {
    v36 = v62;
    v37 = v58;
LABEL_15:
    *(v32 + 32) = v31;
    v55 = v3;
    v39 = v36;

    OUTLINED_FUNCTION_1_47();
    sub_25BCB54FC();
    type metadata accessor for NativeTensorStorage(0);
    sub_25BAB9E04(v66);
    v67 = v66[0];
    sub_25BAB9E04(&v64);
    v40 = v65;

    v63 = v40;
    sub_25BBC0130(&v67, &v63, 0, 0);
    v42 = v41;
    v43 = v60;
    (*(v60 + 16))(v7, v13, v39);
    v44 = __swift_storeEnumTagSinglePayload(v7, 0, 1, v39);
    MEMORY[0x28223BE20](v44);
    v45 = v56;
    *(&v55 - 4) = v57;
    *(&v55 - 3) = v45;
    v46 = v7;
    v47 = v13;
    v48 = v61;
    v49 = v55;
    *(&v55 - 2) = v61;
    *(&v55 - 1) = v49;
    sub_25BBF3504(v46, sub_25BBF4C08);
    if (v37)
    {

      swift_unknownObjectRelease();
      sub_25BB0EA20(v46);
      v50 = *(v43 + 8);
      v51 = v47;
      v7 = v62;
      v50(v51, v62);
      v50(v48, v7);
    }

    else
    {
      sub_25BB0EA20(v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v52 = v47;
      v7 = swift_allocObject();
      *(v7 + 1) = v59;
      *(v7 + 4) = v42;
      *(v7 + 5) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v53 = *(v43 + 8);
      v54 = v62;
      v53(v52, v62);
      v53(v48, v54);
    }

    return v7;
  }

  v34 = (v66[0] + 32);
  v35 = 1;
  v36 = v62;
  v37 = v58;
  while (1)
  {
    v38 = *v34++;
    v31 = v35 * v38;
    if ((v35 * v38) >> 64 != (v35 * v38) >> 63)
    {
      break;
    }

    v35 = v31;
    if (!--v33)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25BBF4384@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15[-v11];
  swift_getObjectType();
  v13 = sub_25BCB54EC();
  (*(*(v13 - 8) + 16))(v12, a4, v13);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  v16 = a5;
  v17 = a1;
  sub_25BC675C0(sub_25BBF4C28, v15, MEMORY[0x277D84F78] + 8, x8_0);
  return sub_25BB0EA20(v12);
}

uint64_t sub_25BBF4548(uint64_t a1)
{
  result = sub_25BBF45D0(&qword_27FBB5188, type metadata accessor for UnaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF458C(uint64_t a1)
{
  result = sub_25BBF45D0(&qword_28154D4F0, type metadata accessor for UnaryArithmeticOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF45D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BBF4624@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18[-v13];
  swift_getObjectType();
  v15 = sub_25BCB50AC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  sub_25BCB617C();
  sub_25BCB54FC();
  v16 = sub_25BCB54EC();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  v19 = a1;
  v20 = a5;
  sub_25BC675C0(sub_25BBF4BEC, v18, MEMORY[0x277D84F78] + 8, x8_0);
  return sub_25BB0EA20(v14);
}

uint64_t sub_25BBF47C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v32 = a1;
  v33 = a2;
  v3 = sub_25BCB530C();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BCB540C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BCB521C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v28[2] = sub_25BCB53CC();
  v16 = *MEMORY[0x277D82E98];
  v17 = *(v10 + 104);
  v17(v15, v16, v9);
  v17(v12, v16, v9);
  v18 = *(v6 + 16);
  v28[0] = v5;
  v18(v8, v36, v5);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  (*(v30 + 104))(v29, *MEMORY[0x277D82F78], v31);
  if (sub_25BCB53BC())
  {
    v19 = v28[1];
    sub_25BCB53AC();
    if (v19)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCE1270);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      v20 = v34;
      v21 = v35;
      sub_25BB0E2EC();
      swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0x2000;
      swift_willThrow();
    }
  }

  else
  {
    v24 = sub_25BBF5570();
    v26 = v25;
    sub_25BB0E2EC();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    *(v27 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BBF4C44()
{
  v1 = v0;
  v2 = sub_25BCB512C();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v2, v6);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D82E48] || v9 == *MEMORY[0x277D82E40])
  {
    goto LABEL_3;
  }

  if (v9 != *MEMORY[0x277D82E70])
  {
    if (v9 == *MEMORY[0x277D82E60])
    {
      (*(v4 + 96))(v8, v2);
      sub_25BCB511C();
      OUTLINED_FUNCTION_11_1();
      (*(v10 + 8))(v8);
    }

    else if (v9 != *MEMORY[0x277D82E30] && v9 != *MEMORY[0x277D82E58] && v9 != *MEMORY[0x277D82E28] && v9 != *MEMORY[0x277D82E68])
    {
      if (v9 == *MEMORY[0x277D82E38] || v9 == *MEMORY[0x277D82E50])
      {
LABEL_3:
        OUTLINED_FUNCTION_8_3();
        return;
      }

      (*(v4 + 8))(v8, v2);
    }
  }
}

uint64_t sub_25BBF4F40()
{
  result = 98320;
  switch(*v0)
  {
    case 1:

      return MEMORY[0x2821FB4C0](98320);
    case 2:

      return MEMORY[0x2821FB4C8](98320);
    case 3:
      result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002DLL, 0x800000025BCE13D0, "NeuralNetworks/BNNSExtensions.swift", 35, 2, 302);
      goto LABEL_31;
    case 4:

      return MEMORY[0x2821FB4D0](98320);
    case 5:

      return MEMORY[0x2821FB4D8](98320);
    case 6:

      return MEMORY[0x2821FB4E0](98320);
    case 7:
      OUTLINED_FUNCTION_13_29();
      v6 = 310;
      v4 = v3 + 1;
      goto LABEL_30;
    case 8:

      return MEMORY[0x2821FB4E8](98320);
    case 9:
      return result;
    case 0xA:

      return MEMORY[0x2821FB4B8](98320);
    case 0xB:
      OUTLINED_FUNCTION_13_29();
      v6 = 318;
      v4 = v5 + 12;
LABEL_30:
      result = sub_25BCB74CC("Fatal error", 11, 2, v4, v2 | 0x8000000000000000, "NeuralNetworks/BNNSExtensions.swift", 35, 2, v6);
LABEL_31:
      __break(1u);
      return MEMORY[0x2821FB4B0](result);
    case 0xC:
      return 1048584;
    default:

      return MEMORY[0x2821FB4B0](result);
  }
}

uint64_t sub_25BBF5120()
{
  sub_25BCB52EC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_2_49(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_15_29();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D82F50])
  {
    return 0x676F4C664F6D7573;
  }

  if (v6 == *MEMORY[0x277D82EF0])
  {
    return 7889261;
  }

  if (v6 == *MEMORY[0x277D82EF8])
  {
    return 7235949;
  }

  if (v6 == *MEMORY[0x277D82F30])
  {
    v8 = 1232626029;
    return v8 | 0x7865646E00000000;
  }

  if (v6 == *MEMORY[0x277D82F10])
  {
    return 0x78614D677261;
  }

  if (v6 == *MEMORY[0x277D82F38])
  {
    v8 = 1231972717;
    return v8 | 0x7865646E00000000;
  }

  if (v6 == *MEMORY[0x277D82F18])
  {
    return 0x6E694D677261;
  }

  if (v6 == *MEMORY[0x277D82F08])
  {
    return 1851876717;
  }

  if (v6 == *MEMORY[0x277D82EC8])
  {
    return 0x5A6E6F4E6E61656DLL;
  }

  if (v6 == *MEMORY[0x277D82F00])
  {
    return 7173491;
  }

  if (v6 == *MEMORY[0x277D82ED0])
  {
    return 0x757153664F6D7573;
  }

  if (v6 == *MEMORY[0x277D82ED8])
  {
    return 0x736241664F6D7573;
  }

  if (v6 == *MEMORY[0x277D82F48])
  {
    return 0x4F6C616369676F6CLL;
  }

  if (v6 == *MEMORY[0x277D82EE8])
  {
    return 7958113;
  }

  if (v6 == *MEMORY[0x277D82EC0])
  {
    return 0x416C616369676F6CLL;
  }

  if (v6 == *MEMORY[0x277D82EE0])
  {
    return 7105633;
  }

  if (v6 == *MEMORY[0x277D82F20])
  {
    return 0x6D726F4E326CLL;
  }

  if (v6 == *MEMORY[0x277D82F40])
  {
    return 0x78456D7553676F6CLL;
  }

  if (v6 == *MEMORY[0x277D82F28])
  {
    return 0x746375646F7270;
  }

  v9 = OUTLINED_FUNCTION_15_29();
  v10(v9);
  return 0;
}

uint64_t sub_25BBF5518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return *(a1 + 32);
  }

  v4 = (a1 + 32);
  result = 1;
  while (1)
  {
    if (a2)
    {
      v5 = (result * *v4) >> 64;
      result *= *v4;
      if (v5 != result >> 63)
      {
        break;
      }
    }

    --a2;
    ++v4;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBF5570()
{
  sub_25BCB540C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_2_49(v1, v12);
  v3(v2);
  v4 = OUTLINED_FUNCTION_15_29();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D82FA8])
  {
    return 0x6F52657261757173;
  }

  v8 = v6;
  if (v6 == *MEMORY[0x277D82FB0])
  {
    return 0xD000000000000014;
  }

  if (v6 == *MEMORY[0x277D83058])
  {
    return 0x726F6F6C66;
  }

  if (v6 == *MEMORY[0x277D83008])
  {
    return 1818846563;
  }

  if (v6 == *MEMORY[0x277D83060])
  {
    return 0x646E756F72;
  }

  result = 7233908;
  if (v8 == *MEMORY[0x277D82FE0])
  {
    return 7235955;
  }

  if (v8 == *MEMORY[0x277D82FC0])
  {
    return 7565155;
  }

  if (v8 != *MEMORY[0x277D82FE8])
  {
    if (v8 == *MEMORY[0x277D82FF8])
    {
      return 1852404577;
    }

    if (v8 == *MEMORY[0x277D82FF0])
    {
      return 1936679777;
    }

    if (v8 == *MEMORY[0x277D83000])
    {
      return 1851880545;
    }

    result = 1752064372;
    if (v8 == *MEMORY[0x277D83030])
    {
      return 1752066419;
    }

    if (v8 == *MEMORY[0x277D83010])
    {
      return 1752395619;
    }

    if (v8 != *MEMORY[0x277D83038])
    {
      if (v8 == *MEMORY[0x277D83048])
      {
        v9 = 1852404577;
        return v9 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      }

      if (v8 == *MEMORY[0x277D83040])
      {
        v9 = 1936679777;
        return v9 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      }

      if (v8 == *MEMORY[0x277D83050])
      {
        v9 = 1851880545;
        return v9 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      }

      if (v8 == *MEMORY[0x277D82FD0])
      {
        return 7370853;
      }

      else if (v8 == *MEMORY[0x277D83018])
      {
        return 846231653;
      }

      else if (v8 == *MEMORY[0x277D82FD8])
      {
        return 6778732;
      }

      else if (v8 == *MEMORY[0x277D83020])
      {
        return 845639532;
      }

      else if (v8 == *MEMORY[0x277D82FB8])
      {
        return 7561825;
      }

      else if (v8 == *MEMORY[0x277D83028])
      {
        return 1852270963;
      }

      else if (v8 == *MEMORY[0x277D83068])
      {
        return 0x65746167656ELL;
      }

      else if (v8 == *MEMORY[0x277D82FA0])
      {
        return 0x636F727069636572;
      }

      else if (v8 == *MEMORY[0x277D83070])
      {
        return 0x657261757173;
      }

      else if (v8 == *MEMORY[0x277D82FC8])
      {
        return 6713957;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_15_29();
        v11(v10);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25BBF5A38(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_32();
  if (v10)
  {
    sub_25BCB617C();
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    a1 = &unk_286D42860;
    if (!a2)
    {
LABEL_6:
      sub_25BCB617C();
      v11 = a2;
      goto LABEL_8;
    }
  }

  if (a2[2])
  {
    goto LABEL_6;
  }

  v11 = &unk_286D42888;
LABEL_8:
  sub_25BCB50AC();
  OUTLINED_FUNCTION_11_31(v2);
  if ((a1[2] - 1) >= 8)
  {
    sub_25BCB617C();
    sub_25BCB70FC();

    OUTLINED_FUNCTION_3_37();
    v21 = v15;
    v22 = v14;
    v16 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v16);

    result = OUTLINED_FUNCTION_1_48("Fatal error", v17, v18, v21, v22, "NeuralNetworks/BNNSExtensions.swift", v19, v20, 90, 0);
    __break(1u);
  }

  else
  {
    sub_25BCB617C();
    sub_25BBF72B0(v2, &qword_27FBB4090, &qword_25BCBC640);
    OUTLINED_FUNCTION_11_1();
    (*(v12 + 104))(v2);
    OUTLINED_FUNCTION_10_28(v2);
    sub_25BBA8A7C(a1);

    sub_25BCB617C();
    if (v11)
    {
      sub_25BBA8A7C(v11);
    }

    sub_25BBF724C(v2, v8, &qword_27FBB4090, &qword_25BCBC640);
    if (!a2)
    {
    }

    sub_25BCB54FC();

    return sub_25BBF72B0(v2, &qword_27FBB4090, &qword_25BCBC640);
  }

  return result;
}

uint64_t sub_25BBF5CD8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  if (a1[2])
  {
    sub_25BCB617C();
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    a1 = &unk_286D43590;
    if (!a2)
    {
LABEL_6:
      sub_25BCB617C();
      v11 = a2;
      goto LABEL_8;
    }
  }

  if (a2[2])
  {
    goto LABEL_6;
  }

  v11 = &unk_286D435B8;
LABEL_8:
  sub_25BCB50AC();
  OUTLINED_FUNCTION_11_31(v10);
  v12 = a1[2];
  if ((v12 - 1) >= 8)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    v15 = v12;
    sub_25BCB70FC();

    OUTLINED_FUNCTION_3_37();
    v24 = v17;
    v25 = v16;
    v23[1] = v15;
    v18 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v18);

    result = OUTLINED_FUNCTION_1_48("Fatal error", v19, v20, v24, v25, "NeuralNetworks/BNNSExtensions.swift", v21, v22, 127, 0);
    __break(1u);
  }

  else
  {
    sub_25BBF72B0(v10, &qword_27FBB4090, &qword_25BCBC640);
    OUTLINED_FUNCTION_11_1();
    (*(v13 + 104))(v10);
    OUTLINED_FUNCTION_10_28(v10);
    if (v11)
    {
      sub_25BBA8A7C(v11);
    }

    sub_25BBF724C(v10, v7, &qword_27FBB4090, &qword_25BCBC640);
    if (!a2)
    {
    }

    sub_25BCB54FC();
    return sub_25BBF72B0(v10, &qword_27FBB4090, &qword_25BCBC640);
  }

  return result;
}

uint64_t sub_25BBF5F44(void *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_32();
  if (v10)
  {
    sub_25BCB617C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = &unk_286D42630;
    if (a2)
    {
LABEL_3:
      if (a2[2])
      {
        sub_25BCB617C();
        v11 = a2;
      }

      else
      {
        v11 = &qword_286D42658;
      }

      goto LABEL_8;
    }
  }

  v11 = sub_25BAC0E14(0, a1[2]);
LABEL_8:
  sub_25BCB50AC();
  OUTLINED_FUNCTION_11_31(v2);
  v12 = MEMORY[0x277D82DF0];
  switch(a1[2])
  {
    case 1:
      goto LABEL_16;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v13 = swift_allocObject();
      v41 = 1;
      *(v13 + 16) = xmmword_25BCBAE50;
      *(v13 + 32) = a1[5];

      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_25BCBAE50;
      if (v11[2] < 2)
      {
        goto LABEL_42;
      }

      v15 = v14;
      *(v14 + 32) = v11[5];

      a1 = v13;
      v11 = v15;
      goto LABEL_16;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v16 = swift_allocObject();
      v41 = 4;
      v17 = *(a1 + 2);
      *(v16 + 16) = xmmword_25BCBDF80;
      *(v16 + 32) = v17;
      v18 = a1[6];
      *(v16 + 48) = 1;
      *(v16 + 56) = v18;

      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_25BCBDF80;
      v20 = v11[2];
      if (!v20)
      {
        goto LABEL_41;
      }

      v21 = v19;
      *(v19 + 32) = v11[4];
      if (v20 == 1)
      {
        goto LABEL_44;
      }

      v22 = v11[5];
      *(v19 + 40) = v22;
      *(v19 + 48) = v22;
      if (v20 < 3)
      {
        __break(1u);
        goto LABEL_47;
      }

      *(v19 + 56) = v11[6];

      v12 = MEMORY[0x277D82DF8];
      a1 = v16;
      v11 = v21;
LABEL_16:
      sub_25BBF72B0(v2, &qword_27FBB4090, &qword_25BCBC640);
      OUTLINED_FUNCTION_11_1();
      (*(v23 + 104))(v2);
      OUTLINED_FUNCTION_10_28(v2);
      if (a1[2] == 4)
      {
        v41 = v8;
        sub_25BABAF60(1uLL, 4, a1);
        OUTLINED_FUNCTION_14_28();
        if (v8)
        {
          sub_25BCB78DC();
          OUTLINED_FUNCTION_12_28();
          swift_unknownObjectRetain_n();
          v25 = swift_dynamicCastClass();
          if (!v25)
          {
            swift_unknownObjectRelease();
            v25 = MEMORY[0x277D84F90];
          }

          v26 = *(v25 + 16);

          if (__OFSUB__(v8 >> 1, v12))
          {
            goto LABEL_43;
          }

          if (v26 != (v8 >> 1) - v12)
          {
            goto LABEL_45;
          }

          v24 = swift_dynamicCastClass();
          if (!v24)
          {

            OUTLINED_FUNCTION_12_28();
            swift_unknownObjectRelease_n();
            a1 = MEMORY[0x277D84F90];
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        while (1)
        {
          v24 = OUTLINED_FUNCTION_17_30();
LABEL_24:
          v27 = v24;
          swift_unknownObjectRelease();

          a1 = v27;
LABEL_25:
          v28 = v11[2];
          if (v28)
          {
            break;
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
          swift_unknownObjectRelease();
        }

        sub_25BABAF60(1uLL, v28, v11);
        OUTLINED_FUNCTION_14_28();
        if ((v8 & 1) == 0)
        {
          goto LABEL_27;
        }

        sub_25BCB78DC();
        OUTLINED_FUNCTION_12_28();
        swift_unknownObjectRetain_n();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();
          v30 = MEMORY[0x277D84F90];
        }

        v31 = *(v30 + 16);

        if (!__OFSUB__(v8 >> 1, v12))
        {
          if (v31 == (v8 >> 1) - v12)
          {
            v29 = swift_dynamicCastClass();
            if (!v29)
            {

              OUTLINED_FUNCTION_12_28();
              swift_unknownObjectRelease_n();
              v11 = MEMORY[0x277D84F90];
              goto LABEL_34;
            }

LABEL_33:
            v32 = v29;
            swift_unknownObjectRelease();

            v11 = v32;
LABEL_34:
            v8 = v41;
            goto LABEL_35;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        swift_unknownObjectRelease();
LABEL_27:
        v29 = OUTLINED_FUNCTION_17_30();
        goto LABEL_33;
      }

LABEL_35:
      sub_25BBA8A7C(a1);
      sub_25BCB617C();
      sub_25BBA8A7C(v11);
      sub_25BBF724C(v2, v8, &qword_27FBB4090, &qword_25BCBC640);
      if (a2)
      {
        sub_25BCB617C();
      }

      sub_25BCB54FC();

      return sub_25BBF72B0(v2, &qword_27FBB4090, &qword_25BCBC640);
    case 4:
      v12 = MEMORY[0x277D82DF8];
      goto LABEL_16;
    default:
      sub_25BCB70FC();

      OUTLINED_FUNCTION_3_37();
      v42 = v35;
      v43 = v34;
      v36 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v36);

      result = OUTLINED_FUNCTION_1_48("Fatal error", v37, v38, v42, v43, "NeuralNetworks/BNNSExtensions.swift", v39, v40, 165, 0);
      __break(1u);
      return result;
  }
}

uint64_t sub_25BBF64F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCC81E0;
  sub_25BCB54BC();
  *(v4 + 32) = v13;
  sub_25BCB54BC();
  *(v4 + 40) = v14;
  sub_25BCB54BC();
  *(v4 + 48) = v15;
  sub_25BCB54BC();
  *(v4 + 56) = v16;
  sub_25BCB54BC();
  *(v4 + 64) = v17;
  sub_25BCB54BC();
  *(v4 + 72) = v18;
  sub_25BCB54BC();
  *(v4 + 80) = v19;
  sub_25BCB54BC();
  *(v4 + 88) = v20;
  v5 = sub_25BCB54AC();
  if (v5 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v0 = sub_25BABAF60(0, v5, v4);
  v1 = v6;
  v2 = v7;
  v3 = v8;

  if ((v3 & 1) == 0)
  {
LABEL_3:
    v9 = sub_25BABA62C(v0, v1, v2, v3);
LABEL_10:
    swift_unknownObjectRelease();
    return v9;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_13;
  }

  if (v11 != (v3 >> 1) - v2)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v9)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  return v9;
}

uint64_t sub_25BBF66C4()
{
  result = sub_25BBF64F8();
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    v3 = 1;
    while (1)
    {
      v4 = *v2++;
      v5 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        break;
      }

      v3 = v5;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 1;
LABEL_7:

    return v5;
  }

  return result;
}

uint64_t sub_25BBF6728(unint64_t *a1)
{
  v1 = *a1;
  result = sub_25BBF64F8();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *(result + 16))
  {
    v3 = *(result + 8 * v1 + 32);

    return v3 < 1;
  }

  __break(1u);
  return result;
}

void *sub_25BBF678C@<X0>(uint64_t a1@<X0>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v22 = a5;
  v23 = a1;
  v33[23] = *MEMORY[0x277D85DE8];
  v8 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *(v10 + 16);
  v21 = a2;
  v16(v14, a2, v8, v12);
  LODWORD(a2) = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  LOBYTE(v33[0]) = v15;
  v17 = sub_25BBF4F40();
  LOBYTE(v32[0]) = v15;
  LODWORD(a3) = sub_25BBF4F40();
  v18 = *(v10 + 8);
  v18(v14, v8);
  *&v32[1] = v24;
  *&v32[3] = v25;
  *&v32[5] = v26;
  *&v32[7] = v27;
  *&v32[9] = v28;
  *&v32[11] = v29;
  *&v32[13] = v30;
  LODWORD(v32[0]) = 0;
  HIDWORD(v32[0]) = a2;
  *&v32[15] = v31;
  v32[17] = v23;
  LODWORD(v32[18]) = v17;
  v32[19] = 0;
  LODWORD(v32[20]) = a3;
  v19 = *(a4 + 16);
  *(&v32[20] + 4) = 1065353216;
  if (v19 >> 60)
  {
    __break(1u);
  }

  v33[0] = a4 + 32;
  v33[1] = a4 + 32 + 8 * v19;
  sub_25BB5C3B0();
  sub_25BCB582C();
  v18(v21, v8);

  memcpy(v33, v32, 0xB0uLL);
  sub_25BB45694(v33);
  return memcpy(v22, v33, 0xB1uLL);
}

uint64_t sub_25BBF69E4(uint64_t result, unint64_t a2)
{
  if (a2 >= 8)
  {
    OUTLINED_FUNCTION_9_36();

    OUTLINED_FUNCTION_5_42();
    v3 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v3);

    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000010);
    result = OUTLINED_FUNCTION_1_48("Fatal error", v4, v5, v8, v9, "NeuralNetworks/BNNSExtensions.swift", v6, v7, 456, 0);
    __break(1u);
  }

  else
  {
    *(v2 + 8 * a2 + 8) = result;
  }

  return result;
}

uint64_t sub_25BBF6A98(uint64_t result, unint64_t a2)
{
  if (a2 >= 8)
  {
    OUTLINED_FUNCTION_9_36();

    OUTLINED_FUNCTION_5_42();
    v3 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v3);

    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000010);
    result = OUTLINED_FUNCTION_1_48("Fatal error", v4, v5, v8, v9, "NeuralNetworks/BNNSExtensions.swift", v6, v7, 503, 0);
    __break(1u);
  }

  else
  {
    *(v2 + 8 * a2 + 72) = result;
  }

  return result;
}

unint64_t sub_25BBF6B4C@<X0>(void *__src@<X1>, uint64_t a2@<X8>, uint64_t a3)
{
  result = sub_25BC941CC(__src, sub_25BBF71EC);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_25BBF6BB4@<X0>(void *__src@<X1>, uint64_t a2@<X8>, uint64_t a3)
{
  result = sub_25BC941CC(__src, sub_25BBF721C);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_25BBF6C1C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a6;
  v35 = a1;
  v36 = a8;
  v41 = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB63A0, &qword_25BCC9098);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  if (a4 == 1)
  {
    sub_25BBF724C(a7, v18, &qword_27FBB63A0, &qword_25BCC9098);
    v22 = sub_25BCB52EC();
    if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
    {
      sub_25BBF72B0(v18, &qword_27FBB63A0, &qword_25BCC9098);
      v23 = 15;
    }

    else
    {
      v23 = sub_25BCB52DC();
      (*(*(v22 - 8) + 8))(v18, v22);
    }

    v26 = v34;
    v27 = v35;
    v28 = v23;
    v29 = v36;
    v30 = a10;
    v31 = 0;
  }

  else
  {
    v37 = a2;
    v38 = a3;
    v39 = a4;
    v40 = a5;
    sub_25BBF724C(a7, &v33 - v20, &qword_27FBB63A0, &qword_25BCC9098);
    v24 = sub_25BCB52EC();
    if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
    {
      sub_25BBF72B0(v21, &qword_27FBB63A0, &qword_25BCC9098);
      v25 = 15;
    }

    else
    {
      v25 = sub_25BCB52DC();
      (*(*(v24 - 8) + 8))(v21, v24);
    }

    v31 = &v37;
    v26 = v34;
    v27 = v35;
    v28 = v25;
    v29 = v36;
    v30 = a10;
  }

  result = MEMORY[0x25F878520](v26, v28, v29, v30, v27, v31);
  *a9 = result;
  *(a9 + 4) = 0;
  return result;
}

unint64_t sub_25BBF6EA4@<X0>(void *__src@<X1>, uint64_t a2@<X8>)
{
  result = sub_25BC941CC(__src, sub_25BBF730C);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_25BBF6F08@<X0>(void *__src@<X1>, uint64_t a2@<X8>)
{
  result = sub_25BC941CC(__src, sub_25BBF733C);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_25BBF6F6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a7;
  v34 = a8;
  v39 = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB63A0, &qword_25BCC9098);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  if (a4 == 1)
  {
    sub_25BBF724C(a6, v18, &qword_27FBB63A0, &qword_25BCC9098);
    v22 = sub_25BCB52EC();
    if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
    {
      sub_25BBF72B0(v18, &qword_27FBB63A0, &qword_25BCC9098);
      v23 = 15;
    }

    else
    {
      v23 = sub_25BCB52DC();
      (*(*(v22 - 8) + 8))(v18, v22);
    }

    v26 = v23;
    v27 = v33;
    v28 = v34;
    v29 = a1;
    v30 = 0;
  }

  else
  {
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v38 = a5;
    sub_25BBF724C(a6, &v32 - v20, &qword_27FBB63A0, &qword_25BCC9098);
    v24 = sub_25BCB52EC();
    if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
    {
      sub_25BBF72B0(v21, &qword_27FBB63A0, &qword_25BCC9098);
      v25 = 15;
    }

    else
    {
      v25 = sub_25BCB52DC();
      (*(*(v24 - 8) + 8))(v21, v24);
    }

    v30 = &v35;
    v26 = v25;
    v27 = v33;
    v28 = v34;
    v29 = a1;
  }

  result = MEMORY[0x25F878530](v26, v27, v28, v29, v30);
  *a9 = result;
  *(a9 + 4) = 0;
  return result;
}

uint64_t sub_25BBF724C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_25BBF72B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_1();
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MILOpset(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BBF7448()
{
  result = qword_27FBB63A8;
  if (!qword_27FBB63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB63A8);
  }

  return result;
}

uint64_t sub_25BBF749C(char a1)
{
  result = 0x3531736F69;
  switch(a1)
  {
    case 1:
      result = 0x3631736F69;
      break;
    case 2:
      result = 0x3731736F69;
      break;
    case 3:
      result = 0x72745F3631736F69;
      break;
    case 4:
      result = 0x3831736F69;
      break;
    case 5:
      result = 0x3931736F69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BBF7534(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return (*(a3 + 24))(a2, a3);
  }

  else
  {
    return (*(a3 + 16))(a2, a3);
  }
}

unint64_t sub_25BBF757C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_25BBF758C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BBF757C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25BBF75FC()
{
  result = qword_27FBB63B0;
  if (!qword_27FBB63B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB63B8, qword_25BCC9108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB63B0);
  }

  return result;
}

uint64_t sub_25BBF7668()
{
  v1 = *(v0 + 48);
  if (v1 < 0xA && ((0x233u >> v1) & 1) != 0)
  {
    v2 = &unk_25BCC931E;
    return v2[v1];
  }

  v3 = sub_25BAAF660();
  sub_25BAB4D78(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F8779B0](0, v3);

    v1 = *(v6 + 160);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v3 + 32);

    v1 = *(v4 + 160);
  }

  if (v1 < 0xA)
  {
    v2 = &unk_25BCC9328;
    return v2[v1];
  }

  return 0;
}

uint64_t sub_25BBF7730(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_28154FAA0, type metadata accessor for CastOperation, byte_25BCCE2AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7788(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF77E0(uint64_t a1)
{
  result = sub_25BBF7AF8(qword_28154FD70, type metadata accessor for AdamOperation, byte_25BCBB060);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7838(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, byte_25BCBB060);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7890(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_28154D770, type metadata accessor for LinearGradientOperation, asc_25BCC6048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF78E8(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_28154F570, type metadata accessor for LinearOperation, asc_25BCC60D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7940(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_27FBB6190, type metadata accessor for GatherOperation, "1%\a+,");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7998(uint64_t a1)
{
  result = sub_25BBF7AF8(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF79F0(uint64_t a1)
{
  result = sub_25BBF7AF8(qword_28154DC68, type metadata accessor for Convolution2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7A48(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7AA0(uint64_t a1)
{
  result = sub_25BBF7AF8(&qword_27FBB6168, type metadata accessor for SliceGradientOperation, byte_25BCD7164);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBF7AF8(unint64_t *a1, void (*a2)(uint64_t), const char *a3, ...)
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

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks10InputErrorO(uint64_t a1)
{
  if ((*(a1 + 108) & 0x1Fu) <= 0x15)
  {
    return *(a1 + 108) & 0x1F;
  }

  else
  {
    return (*a1 + 22);
  }
}

uint64_t sub_25BBF7B80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEA && *(a1 + 109))
  {
    return (*a1 + 234);
  }

  v3 = *(a1 + 108);
  if (v3 >= 0x17)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BBF7BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE9)
  {
    *(result + 93) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 234;
    if (a3 >= 0xEA)
    {
      *(result + 109) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEA)
    {
      *(result + 109) = 0;
    }

    if (a2)
    {
      *(result + 108) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BBF7C10(uint64_t result, unsigned int a2)
{
  if (a2 > 0x15)
  {
    *(result + 92) = 0u;
    v2 = a2 - 22;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 22;
    *result = v2;
  }

  *(result + 108) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks26InternalInconsistencyErrorO(uint64_t a1)
{
  if ((*(a1 + 84) & 0xFu) <= 9)
  {
    return *(a1 + 84) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_25BBF7C6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 85))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 84);
  if (v3 >= 0xB)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BBF7CA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 77) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 84) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BBF7CFC(uint64_t result, unsigned int a2)
{
  if (a2 > 9)
  {
    v2 = a2 - 10;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 10;
    *result = v2;
  }

  *(result + 84) = a2;
  return result;
}

unint64_t sub_25BBF7D3C()
{
  v9 = v1;
  v10 = &v422;
  sub_25BBFA100(v9, &v426);
  switch(v433)
  {
    case 1:
      OUTLINED_FUNCTION_32_16();
      v334 = *v429;
      v347 = *(&v428 + 1);
      v158 = *&v429[8];
      v159 = *&v429[16];
      v160 = v430;
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v161 = sub_25BB2B3A8();
      *(&v422 + 1) = v162;
      OUTLINED_FUNCTION_24_16(v161, v162, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v163, v164, v165, v321, v334, v347, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v161);
      OUTLINED_FUNCTION_13_30();
      if (v0 != 255)
      {
        v363 = 0xD000000000000026;
        v373 = v166;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v167 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v167, v168, v169);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_48_10();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_25_19();
        v170 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA138(v170, v171, v172);
      }

      v302 = OUTLINED_FUNCTION_7_35();
      MEMORY[0x25F876C90](v302);
      sub_25BB2B3A8();
      OUTLINED_FUNCTION_45_10();
      OUTLINED_FUNCTION_24_16(v303, v304, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v305, v306, v307, v325, v335, v348, v363, v373, v381, v389, v397, v405, v413, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v422);
      if (v160 != 255)
      {
        *&v422 = v158;
        *(&v422 + 1) = v159;
        LOBYTE(v423) = v160;
        v308 = OUTLINED_FUNCTION_5_43();
        sub_25BBFA14C(v308, v309, v310);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_39_14();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_20_22();
        v311 = OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_46_11(v311, v312, v313);
      }

      OUTLINED_FUNCTION_6_41();
      goto LABEL_82;
    case 2:
      v2 = *(&v426 + 1);
      v117 = v426;
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      sub_25BBF9520(v117);
      v118 = OUTLINED_FUNCTION_40_14();
      *(&v422 + 1) = v4;
      OUTLINED_FUNCTION_24_16(v118, v119, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v120, v121, v122, v321, v329, v339, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, &v422);
      if (v0 != 255)
      {
        OUTLINED_FUNCTION_10_29();
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v123 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v123, v124, v125);
        v126 = DebugValueLocator.description.getter();
        MEMORY[0x25F876C90](v126);

        OUTLINED_FUNCTION_9_37();
        MEMORY[0x25F876C90](v361, v371);
        v127 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA138(v127, v128, v129);
      }

      OUTLINED_FUNCTION_11_32();
      goto LABEL_35;
    case 3:
      OUTLINED_FUNCTION_32_16();
      v143 = *(&v428 + 1);
      v144 = v429[0];
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      *&v422 = v143;
      BYTE8(v422) = v144;
      ScalarTypeExpectation.description.getter();
      sub_25BBFA18C(v143, v144);
      OUTLINED_FUNCTION_36_13();

      v145 = OUTLINED_FUNCTION_8_34();
      MEMORY[0x25F876C90](v145);
      v25 = sub_25BB2B3A8();
      goto LABEL_30;
    case 4:
      OUTLINED_FUNCTION_13_30();
      v2 = *(&v426 + 1);
      OUTLINED_FUNCTION_18_27();
      v47 = *(&v428 + 1);
      v48 = v428;
      OUTLINED_FUNCTION_0_61();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      MEMORY[0x25F876C90](0x2073697841, 0xE500000000000000);
      sub_25BB2B408();
      OUTLINED_FUNCTION_45_10();
      OUTLINED_FUNCTION_24_16(v49, v50, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v51, v52, v53, v321, v329, v339, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v422);
      if (v0 != 255)
      {
        v369 = 0xE700000000000000;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v54 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v54, v55, v56);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_39_14();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_20_22();
        v57 = OUTLINED_FUNCTION_1_49();
        OUTLINED_FUNCTION_46_11(v57, v58, v59);
      }

      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90](0xD000000000000026);
      OUTLINED_FUNCTION_27_21();
      OUTLINED_FUNCTION_42_12();
      v60 = OUTLINED_FUNCTION_27_21();
      MEMORY[0x25F876C90](v60);

      v61 = sub_25BB2B458();
      v63 = v62;

      *(&v422 + 1) = v63;
      OUTLINED_FUNCTION_24_16(v64, v65, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v66, v67, v68, v323, v332, v344, v48, v369, v379, v387, v395, v403, v411, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v61);
      if (v4 != 255)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    case 5:
      OUTLINED_FUNCTION_14_29();
      v2 = *(&v426 + 1);
      v176 = v426;
      OUTLINED_FUNCTION_18_27();
      v177 = v428;
      OUTLINED_FUNCTION_0_61();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v178 = sub_25BBF96A0(v176);
      v180 = v179;

      *(&v422 + 1) = v180;
      OUTLINED_FUNCTION_24_16(v181, v182, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v183, v184, v185, v321, v329, *(&v177 + 1), v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v178);
      if (v0 != 255)
      {
        v374 = 0xE700000000000000;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v186 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v186, v187, v188);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_39_14();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_20_22();
        v189 = OUTLINED_FUNCTION_1_49();
        OUTLINED_FUNCTION_46_11(v189, v190, v191);
      }

      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90](0xD000000000000026);
      OUTLINED_FUNCTION_27_21();
      OUTLINED_FUNCTION_42_12();
      v192 = OUTLINED_FUNCTION_27_21();
      MEMORY[0x25F876C90](v192);

      v193 = sub_25BB2B458();
      v195 = v194;

      *(&v422 + 1) = v195;
      OUTLINED_FUNCTION_24_16(v196, v197, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v198, v199, v200, v326, v336, v349, v177, v374, v382, v390, v398, v406, v414, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v193);
      v47 = v350;
      if (v4 == 255)
      {
        goto LABEL_13;
      }

LABEL_12:
      OUTLINED_FUNCTION_3_38();
      *&v422 = v47;
      *(&v422 + 1) = v6;
      LOBYTE(v423) = v4;
      v69 = OUTLINED_FUNCTION_5_43();
      sub_25BBFA14C(v69, v70, v71);
      DebugValueLocator.description.getter();
      OUTLINED_FUNCTION_39_14();

      OUTLINED_FUNCTION_9_37();
      OUTLINED_FUNCTION_20_22();
      v72 = OUTLINED_FUNCTION_5_43();
      OUTLINED_FUNCTION_46_11(v72, v73, v74);
LABEL_13:

      v75 = 11817;
      v76 = 0xE200000000000000;
      goto LABEL_83;
    case 6:
      OUTLINED_FUNCTION_21_24();
      v2 = *(&v426 + 1);
      OUTLINED_FUNCTION_18_27();
      v11 = *(&v428 + 1);
      OUTLINED_FUNCTION_0_61();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v224 = sub_25BB2B408();
      *(&v422 + 1) = v225;
      OUTLINED_FUNCTION_24_16(v224, v225, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v226, v227, v228, v321, v329, v339, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v224);
      if (v0 != 255)
      {
        v358 = v8;
        v367 = 0xE700000000000000;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v229 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v229, v230, v231);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_43_9();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_22_23();
        v232 = OUTLINED_FUNCTION_1_49();
        OUTLINED_FUNCTION_47_11(v232, v233, v234);
      }

      v235 = OUTLINED_FUNCTION_7_35();
      MEMORY[0x25F876C90](v235);
      sub_25BB2B408();
      goto LABEL_54;
    case 7:
      v2 = *(&v426 + 1);
      OUTLINED_FUNCTION_18_27();
      v146 = v429[0];
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v147 = OUTLINED_FUNCTION_16_2();
      sub_25BC88558(v147, v148, v146);
      v149 = OUTLINED_FUNCTION_16_2();
      sub_25BABAF8C(v149, v150, v146);
      OUTLINED_FUNCTION_36_13();

      v32 = OUTLINED_FUNCTION_8_34();
      goto LABEL_29;
    case 8:
      OUTLINED_FUNCTION_14_29();
      v2 = *(&v426 + 1);
      v273 = v426;
      OUTLINED_FUNCTION_18_27();
      v354 = *(&v428 + 1);
      OUTLINED_FUNCTION_0_61();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      v274 = OUTLINED_FUNCTION_30_16();
      v275 = &v417;
      MEMORY[0x25F876C90](v274 & 0xFFFFFFFFFFFFLL | 0x6873000000000000, 0xED00002073657061);
      sub_25BB2B4B0();
      OUTLINED_FUNCTION_31_18();

      *(&v422 + 1) = v7;
      OUTLINED_FUNCTION_24_16(v276, v277, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v278, v279, v280, v321, v329, v354, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, &v417);
      if (v0 != 255)
      {
        v365 = v5;
        v376 = 0xE700000000000000;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v281 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v281, v282, v283);
        v275 = &v422;
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_43_9();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_22_23();
        v284 = OUTLINED_FUNCTION_1_49();
        OUTLINED_FUNCTION_47_11(v284, v285, v286);
        v7 = v273;
      }

      v287 = OUTLINED_FUNCTION_7_35();
      MEMORY[0x25F876C90](v287);
      sub_25BB2B4B0();
      OUTLINED_FUNCTION_31_18();

      *(&v422 + 1) = v7;
      OUTLINED_FUNCTION_24_16(v288, v289, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v290, v291, v292, v328, v338, v355, v365, v376, v384, v392, v400, v408, v416, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v275);
      if (v4 != 255)
      {
        OUTLINED_FUNCTION_3_38();
        *&v422 = v356;
        *(&v422 + 1) = v6;
        LOBYTE(v423) = v4;
        v293 = OUTLINED_FUNCTION_5_43();
        sub_25BBFA14C(v293, v294, v295);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_48_10();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_25_19();
        v296 = OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_47_11(v296, v297, v298);
      }

      OUTLINED_FUNCTION_6_41();
LABEL_82:
      OUTLINED_FUNCTION_11_32();
      goto LABEL_83;
    case 9:
      OUTLINED_FUNCTION_14_29();
      v2 = *(&v426 + 1);
      v103 = v426;
      OUTLINED_FUNCTION_18_27();
      v345 = *(&v428 + 1);
      OUTLINED_FUNCTION_0_61();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      v104 = OUTLINED_FUNCTION_30_16();
      v10 = &v417;
      MEMORY[0x25F876C90](v104 & 0xFFFFFFFFFFFFLL | 0x6873000000000000, 0xEC00000020657061);
      sub_25BB2B4B0();
      OUTLINED_FUNCTION_31_18();

      *(&v422 + 1) = v7;
      OUTLINED_FUNCTION_24_16(v105, v106, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v107, v108, v109, v321, v329, v345, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, &v417);
      if (v0 != 255)
      {
        v360 = v5;
        v370 = 0xE700000000000000;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v110 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v110, v111, v112);
        v10 = &v422;
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_43_9();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_22_23();
        v113 = OUTLINED_FUNCTION_1_49();
        OUTLINED_FUNCTION_47_11(v113, v114, v115);
        v7 = v103;
      }

      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      goto LABEL_65;
    case 10:
      OUTLINED_FUNCTION_14_29();
      v2 = *(&v426 + 1);
      v250 = v426;
      OUTLINED_FUNCTION_18_27();
      v352 = *(&v428 + 1);
      OUTLINED_FUNCTION_0_61();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      sub_25BB2B4B0();
      OUTLINED_FUNCTION_31_18();

      *(&v422 + 1) = v7;
      OUTLINED_FUNCTION_24_16(v251, v252, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v253, v254, v255, v321, v329, v352, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, &v422);
      if (v0 != 255)
      {
        v360 = v5;
        v370 = 0xE700000000000000;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v256 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v256, v257, v258);
        v10 = &v422;
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_43_9();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_22_23();
        v259 = OUTLINED_FUNCTION_1_49();
        OUTLINED_FUNCTION_47_11(v259, v260, v261);
        v7 = v250;
      }

      v116 = OUTLINED_FUNCTION_7_35();
LABEL_65:
      MEMORY[0x25F876C90](v116);
      sub_25BB2B4B0();
      OUTLINED_FUNCTION_31_18();

      *(&v422 + 1) = v7;
      OUTLINED_FUNCTION_24_16(v262, v263, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v264, v265, v266, v324, v333, v346, v360, v370, v380, v388, v396, v404, v412, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v10);
      if (v4 != 255)
      {
        OUTLINED_FUNCTION_3_38();
        *&v422 = v353;
        *(&v422 + 1) = v6;
        LOBYTE(v423) = v4;
        v267 = OUTLINED_FUNCTION_5_43();
        sub_25BBFA14C(v267, v268, v269);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_48_10();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_25_19();
        v270 = OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_47_11(v270, v271, v272);
      }

      goto LABEL_67;
    case 11:
      v33 = *(&v426 + 1);
      v342 = v427;
      LODWORD(v0) = BYTE8(v427);
      v34 = v428;
      v35 = *&v429[8];
      v36 = v429[0];
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v422 = v34;
      LOBYTE(v423) = v36;
      *(&v423 + 1) = v35;
      v37 = sub_25BC8922C();
      v39 = v38;
      sub_25BABAF8C(v34, *(&v34 + 1), v36);

      MEMORY[0x25F876C90](v37, v39);

      OUTLINED_FUNCTION_26_19();
      sub_25BB2B4B0();
      v40 = OUTLINED_FUNCTION_40_14();
      *(&v422 + 1) = v34;
      OUTLINED_FUNCTION_24_16(v40, v41, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v42, v43, v44, v321, v329, v342, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, &v417);
      if (v0 == 255)
      {
        v45 = v343;
      }

      else
      {
        OUTLINED_FUNCTION_10_29();
        v45 = v343;
        *&v422 = v33;
        *(&v422 + 1) = v343;
        LOBYTE(v423) = v0;
        sub_25BBFA14C(v33, v343, v0);
        v46 = DebugValueLocator.description.getter();
        MEMORY[0x25F876C90](v46);

        OUTLINED_FUNCTION_9_37();
        MEMORY[0x25F876C90](v359, v368);
        sub_25BBFA138(v33, v343, v0);
      }

      v299 = OUTLINED_FUNCTION_29_18();
      MEMORY[0x25F876C90](v299);
      v300 = v33;
      v301 = v45;
      goto LABEL_85;
    case 12:
      OUTLINED_FUNCTION_21_24();
      v77 = v429[0];
      v78 = v432;
      sub_25BB1D62C(&v426, &v422);
      sub_25BB1D62C(&v429[8], &v417);
      sub_25BCB70FC();
      v79 = OUTLINED_FUNCTION_30_16();
      MEMORY[0x25F876C90](v79, 0xE600000000000000);
      sub_25BB2B504(&v422);
      sub_25BCB73CC();
      if (v77 != 255)
      {
        v80 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v80, v81, v82);
        v83 = DebugValueLocator.description.getter();
        MEMORY[0x25F876C90](v83);

        OUTLINED_FUNCTION_23_23();
        MEMORY[0x25F876C90](v8, 0xE700000000000000);
        v84 = OUTLINED_FUNCTION_1_49();
        OUTLINED_FUNCTION_46_11(v84, v85, v86);
      }

      OUTLINED_FUNCTION_6_41();
      MEMORY[0x25F876C90](v87 - 20, v88 | 0x8000000000000000);
      sub_25BB2B504(&v417);
      sub_25BCB73CC();
      if (v78 != 255)
      {
        v89 = OUTLINED_FUNCTION_5_43();
        sub_25BBFA14C(v89, v90, v91);
        v92 = DebugValueLocator.description.getter();
        MEMORY[0x25F876C90](v92);

        OUTLINED_FUNCTION_23_23();
        MEMORY[0x25F876C90](v8, 0xE700000000000000);
        v93 = OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_46_11(v93, v94, v95);
      }

      MEMORY[0x25F876C90](46, 0xE100000000000000);
      v96 = OUTLINED_FUNCTION_5_43();
      sub_25BBFA138(v96, v97, v98);
      v99 = OUTLINED_FUNCTION_1_49();
      sub_25BBFA138(v99, v100, v101);
      v102 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v417);
      __swift_destroy_boxed_opaque_existential_1(&v422);
      return v102;
    case 13:
      OUTLINED_FUNCTION_21_24();
      v2 = *(&v426 + 1);
      OUTLINED_FUNCTION_18_27();
      v201 = *(&v428 + 1);
      OUTLINED_FUNCTION_0_61();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v202 = sub_25BB2B408();
      *(&v422 + 1) = v203;
      OUTLINED_FUNCTION_24_16(v202, v203, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v204, v205, v206, v321, v329, v339, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v202);
      if (v4 != 255)
      {
        v364 = v8;
        v375 = 0xE700000000000000;
        *&v422 = v201;
        *(&v422 + 1) = v6;
        LOBYTE(v423) = v4;
        v207 = OUTLINED_FUNCTION_5_43();
        sub_25BBFA14C(v207, v208, v209);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_43_9();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_22_23();
        v210 = OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_47_11(v210, v211, v212);
      }

      OUTLINED_FUNCTION_26_19();
      sub_25BB2B408();
      OUTLINED_FUNCTION_45_10();
      OUTLINED_FUNCTION_24_16(v213, v214, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v215, v216, v217, v327, v337, v351, v364, v375, v383, v391, v399, v407, v415, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v422);
      if (v0 == 255)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_3_38();
      *&v422 = v2;
      *(&v422 + 1) = v3;
      LOBYTE(v423) = v0;
      v218 = OUTLINED_FUNCTION_1_49();
      sub_25BBFA14C(v218, v219, v220);
      DebugValueLocator.description.getter();
      OUTLINED_FUNCTION_39_14();

      OUTLINED_FUNCTION_9_37();
      OUTLINED_FUNCTION_20_22();
      v221 = OUTLINED_FUNCTION_1_49();
      goto LABEL_56;
    case 14:
      v30 = v426;
      OUTLINED_FUNCTION_32_16();
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      MEMORY[0x25F876C90](0x6465746365707845, 0xE900000000000020);
      *&v422 = v30;
      v31 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v31);

      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
LABEL_29:
      MEMORY[0x25F876C90](v32);
      v25 = sub_25BB2B408();
LABEL_30:
      *&v422 = v25;
      *(&v422 + 1) = v26;
      goto LABEL_31;
    case 15:
      OUTLINED_FUNCTION_32_16();
      v131 = v429[8];
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v132 = sub_25BB2B408();
      MEMORY[0x25F876C90](v132);

      MEMORY[0x25F876C90](0x206562206F7420, 0xE700000000000000);
      v133 = OUTLINED_FUNCTION_16_2();
      sub_25BC88558(v133, v134, v131);
      v135 = OUTLINED_FUNCTION_16_2();
      sub_25BABAF8C(v135, v136, v131);
      OUTLINED_FUNCTION_36_13();

      v137 = OUTLINED_FUNCTION_8_34();
      MEMORY[0x25F876C90](v137);
      v138 = sub_25BB2B408();
      *(&v422 + 1) = v139;
      OUTLINED_FUNCTION_24_16(v138, v139, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v140, v141, v142, v321, v329, v339, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v138);
      if (v0 == 255)
      {
        goto LABEL_34;
      }

      v362 = 0x206D6F72662820;
      v372 = 0xE700000000000000;
      goto LABEL_33;
    case 16:
      v2 = *(&v426 + 1);
      v24 = v426;
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      sub_25BBF9804(v24);
      v25 = OUTLINED_FUNCTION_40_14();
      *&v422 = &v422;
      *(&v422 + 1) = v4;
LABEL_31:
      OUTLINED_FUNCTION_24_16(v25, v26, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v27, v28, v29, v321, v329, v339, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v422);
      if (v0 == 255)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_10_29();
LABEL_33:
      *&v422 = v2;
      *(&v422 + 1) = v3;
      LOBYTE(v423) = v0;
      v151 = OUTLINED_FUNCTION_1_49();
      sub_25BBFA14C(v151, v152, v153);
      v154 = DebugValueLocator.description.getter();
      MEMORY[0x25F876C90](v154);

      OUTLINED_FUNCTION_9_37();
      MEMORY[0x25F876C90](v362, v372);
      v155 = OUTLINED_FUNCTION_1_49();
      sub_25BBFA138(v155, v156, v157);

LABEL_34:

      v130 = OUTLINED_FUNCTION_29_18();
LABEL_35:
      MEMORY[0x25F876C90](v130);
      goto LABEL_84;
    case 17:
      return v426;
    case 18:
      v425 = *v429;
      OUTLINED_FUNCTION_28_18();
      v417 = *&v429[8];
      v418 = v430;
      v419 = v431;
      LODWORD(v420) = v244;
      sub_25BCB70FC();
      OUTLINED_FUNCTION_6_41();
      MEMORY[0x25F876C90](v245 + 13, v246 | 0x8000000000000000);
      v247 = *(&v424 + 1);
      if (*(&v424 + 1))
      {
        if (*(&v424 + 1) == 1)
        {
          v249 = 0xE300000000000000;
          v248 = v0 - 4;
        }

        else if (*(&v424 + 1) == 2)
        {
          v248 = 0x45206C617275654ELL;
          v249 = 0xED0000656E69676ELL;
        }

        else
        {
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_34_14();
          swift_getObjectType();
          v318 = sub_25BC17678();
          MEMORY[0x25F876C90](v318);

          OUTLINED_FUNCTION_23_23();
          sub_25BB7304C(v247);
          v248 = v0;
          v249 = 0xE300000000000000;
        }
      }

      else
      {
        v249 = 0xE300000000000000;
        v248 = 5591111;
      }

      MEMORY[0x25F876C90](v248, v249);

      MEMORY[0x25F876C90](0x6020646E612060, 0xE700000000000000);
      if (*(&v419 + 1) >= 2uLL)
      {
        if (*(&v419 + 1) == 2)
        {
          OUTLINED_FUNCTION_4_45();
        }

        else
        {
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_34_14();
          swift_getObjectType();
          v319 = sub_25BC17678();
          MEMORY[0x25F876C90](v319);

          OUTLINED_FUNCTION_23_23();
          sub_25BB7304C(*(&v419 + 1));
        }
      }

      OUTLINED_FUNCTION_35_15();

      MEMORY[0x25F876C90](3025248, 0xE300000000000000);
      v102 = 0;
      sub_25BABF0A8(&v417);
      goto LABEL_101;
    case 19:
      OUTLINED_FUNCTION_28_18();
      v425 = *v429;
      OUTLINED_FUNCTION_17_31();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_33_16();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v175 = *(&v424 + 1);
      if (*(&v424 + 1) < 2uLL)
      {
        goto LABEL_100;
      }

      if (*(&v424 + 1) == 2)
      {
        goto LABEL_76;
      }

      goto LABEL_99;
    case 20:
      v174 = *(&v426 + 1);
      v173 = v426;
      v422 = v427;
      v423 = v428;
      v424 = *v429;
      v425 = *&v429[16];
      OUTLINED_FUNCTION_17_31();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_33_16();
      MEMORY[0x25F876C90](0x7265706F20656854, 0xEF60206E6F697461);
      MEMORY[0x25F876C90](v173, v174);

      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v175 = *(&v424 + 1);
      if (*(&v424 + 1) < 2uLL)
      {
        goto LABEL_100;
      }

      if (*(&v424 + 1) == 2)
      {
LABEL_76:
        OUTLINED_FUNCTION_4_45();
      }

      else
      {
LABEL_99:
        OUTLINED_FUNCTION_38_13();
        OUTLINED_FUNCTION_34_14();
        swift_getObjectType();
        v320 = sub_25BC17678();
        MEMORY[0x25F876C90](v320);

        OUTLINED_FUNCTION_9_37();
        sub_25BB7304C(v175);
      }

LABEL_100:
      OUTLINED_FUNCTION_35_15();

      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v102 = v417;
LABEL_101:
      sub_25BABF0A8(&v422);
      break;
    case 21:
      *&v422 = 0xD000000000000011;
      *(&v422 + 1) = 0x800000025BCE14E0;
      MEMORY[0x25F876C90](v427, *(&v427 + 1));

      MEMORY[0x25F876C90](24608, 0xE200000000000000);
      OUTLINED_FUNCTION_35_15();

      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      return v422;
    case 22:
      return 0xD0000000000000D6;
    default:
      OUTLINED_FUNCTION_13_30();
      OUTLINED_FUNCTION_32_16();
      v330 = *v429;
      v340 = *(&v428 + 1);
      v11 = *&v429[8];
      v6 = *&v429[16];
      LODWORD(v4) = v430;
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_16_33();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90](0xD000000000000026);
      v12 = sub_25BB2B3A8();
      *(&v422 + 1) = v13;
      OUTLINED_FUNCTION_24_16(v12, v13, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v14, v15, v16, v321, v330, v340, v357, v366, v377, v385, v393, v401, v409, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v12);
      if (v0 != 255)
      {
        v358 = v7;
        v367 = 0xE700000000000000;
        *&v422 = v2;
        *(&v422 + 1) = v3;
        LOBYTE(v423) = v0;
        v17 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA14C(v17, v18, v19);
        DebugValueLocator.description.getter();
        OUTLINED_FUNCTION_48_10();

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_25_19();
        v20 = OUTLINED_FUNCTION_1_49();
        sub_25BBFA138(v20, v21, v22);
      }

      v23 = OUTLINED_FUNCTION_7_35();
      MEMORY[0x25F876C90](v23);
      sub_25BB2B3A8();
LABEL_54:
      OUTLINED_FUNCTION_45_10();
      OUTLINED_FUNCTION_24_16(v236, v237, MEMORY[0x277D837D0], MEMORY[0x277D84698], MEMORY[0x277D846A8], v238, v239, v240, v322, v331, v341, v358, v367, v378, v386, v394, v402, v410, v417, *(&v417 + 1), v418, *(&v418 + 1), v419, *(&v419 + 1), v420, v421, v422);
      if (v4 == 255)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_3_38();
      *&v422 = v11;
      *(&v422 + 1) = v6;
      LOBYTE(v423) = v4;
      v241 = OUTLINED_FUNCTION_5_43();
      sub_25BBFA14C(v241, v242, v243);
      DebugValueLocator.description.getter();
      OUTLINED_FUNCTION_39_14();

      OUTLINED_FUNCTION_9_37();
      OUTLINED_FUNCTION_20_22();
      v221 = OUTLINED_FUNCTION_5_43();
LABEL_56:
      OUTLINED_FUNCTION_46_11(v221, v222, v223);
LABEL_67:

      v75 = OUTLINED_FUNCTION_29_18();
LABEL_83:
      MEMORY[0x25F876C90](v75, v76);
      v314 = OUTLINED_FUNCTION_5_43();
      sub_25BBFA138(v314, v315, v316);
LABEL_84:
      v300 = v2;
      v301 = v3;
LABEL_85:
      sub_25BBFA138(v300, v301, v0);
      v102 = v417;
      break;
  }

  return v102;
}

uint64_t sub_25BBF9520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    v3 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4538, &qword_25BCBE100);
      v4 = sub_25BCB63AC();
      MEMORY[0x25F876C90](v4);

      MEMORY[0x25F876C90](96, 0xE100000000000000);
      v5 = *(v9 + 16);
      if (v5 >= *(v9 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      *(v9 + 16) = v5 + 1;
      v6 = v9 + 16 * v5;
      *(v6 + 32) = 96;
      *(v6 + 40) = 0xE100000000000000;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  sub_25BBFA1A0();
  v7 = sub_25BCB627C();

  return v7;
}

uint64_t sub_25BBF96A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      v4 = sub_25BCB63AC();
      MEMORY[0x25F876C90](v4);

      MEMORY[0x25F876C90](96, 0xE100000000000000);
      v5 = *(v9 + 16);
      if (v5 >= *(v9 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      *(v9 + 16) = v5 + 1;
      v6 = v9 + 16 * v5;
      *(v6 + 32) = 96;
      *(v6 + 40) = 0xE100000000000000;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  sub_25BBFA1A0();
  v7 = sub_25BCB627C();

  return v7;
}

uint64_t sub_25BBF9804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    v3 = a1 + 32;
    do
    {
      swift_bridgeObjectRetain_n();
      v4 = sub_25BCB63AC();
      MEMORY[0x25F876C90](v4);

      MEMORY[0x25F876C90](96, 0xE100000000000000);

      v5 = *(v9 + 16);
      if (v5 >= *(v9 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      *(v9 + 16) = v5 + 1;
      v6 = v9 + 16 * v5;
      *(v6 + 32) = 96;
      *(v6 + 40) = 0xE100000000000000;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  sub_25BBFA1A0();
  v7 = sub_25BCB627C();

  return v7;
}

uint64_t sub_25BBF9984()
{
  sub_25BBFA204(v0, &v60);
  switch(v66)
  {
    case 1:
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_12_29();
      v4 = v21 - 7;
      goto LABEL_16;
    case 2:
      v56 = v60;
      v57 = v61;
      v58 = v62;
      v59 = v63;
      OUTLINED_FUNCTION_17_31();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_33_16();
      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      if (*(&v58 + 1) >= 2uLL)
      {
        if (*(&v58 + 1) == 2)
        {
          OUTLINED_FUNCTION_4_45();
        }

        else
        {
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_34_14();
          swift_getObjectType();
          v40 = sub_25BC17678();
          MEMORY[0x25F876C90](v40);

          OUTLINED_FUNCTION_9_37();
          sub_25BB7304C(*(&v58 + 1));
        }
      }

      OUTLINED_FUNCTION_35_15();

      OUTLINED_FUNCTION_11_32();
      MEMORY[0x25F876C90]();
      v1 = v54;
      sub_25BABF0A8(&v56);
      return *&v1;
    case 3:
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_12_29();
      v4 = v7 + 13;
      goto LABEL_16;
    case 4:
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_12_29();
      v4 = v3 + 10;
LABEL_16:
      *&v56 = v4;
      *(&v56 + 1) = v2;
      goto LABEL_19;
    case 5:
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      v5 = "ing another compute device.";
      v6 = 0xD000000000000032;
      goto LABEL_18;
    case 6:
      v22 = v60;
      v56 = v61;
      v57 = v62;
      v58 = v63;
      v59 = v64;
      sub_25BAA51C8(&v56, &v49);
      if (v52 == 0.0)
      {
        sub_25BA9C2C8(&v49);
        OUTLINED_FUNCTION_17_31();
        sub_25BCB70FC();
        OUTLINED_FUNCTION_33_16();
        OUTLINED_FUNCTION_11_32();
        MEMORY[0x25F876C90](0xD00000000000001DLL);
        MEMORY[0x25F876C90](v22, *(&v22 + 1));

        goto LABEL_31;
      }

      v31 = 5591111;
      OUTLINED_FUNCTION_19_21(v23, v24, v25, v26, v27, v28, v29, v30, v46, v47, v48, v49, v50, v51, v52, v53);
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_12();
      MEMORY[0x25F876C90](v22, *(&v22 + 1));

      OUTLINED_FUNCTION_41_13();
      v32 = v55;
      switch(v55)
      {
        case 0:
          goto LABEL_40;
        case 1:
          v31 = 5591107;
LABEL_40:
          v33 = 0xE300000000000000;
          break;
        case 2:
          v31 = 0x45206C617275654ELL;
          v33 = 0xED0000656E69676ELL;
          break;
        default:
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_34_14();
          swift_getObjectType();
          v44 = sub_25BC17678();
          MEMORY[0x25F876C90](v44);

          OUTLINED_FUNCTION_23_23();
          sub_25BB7304C(v32);
          v31 = 5591111;
          v33 = 0xE300000000000000;
          break;
      }

      MEMORY[0x25F876C90](v31, v33);

      v42 = "ng another compute device.";
      v43 = 0xD00000000000002BLL;
      goto LABEL_43;
    case 7:
      v8 = v60;
      v9 = v61;
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v59 = v65;
      sub_25BAA51C8(&v56, &v49);
      if (v52 == 0.0)
      {
        sub_25BA9C2C8(&v49);
        OUTLINED_FUNCTION_17_31();
        sub_25BCB70FC();
        OUTLINED_FUNCTION_33_16();
        OUTLINED_FUNCTION_11_32();
        MEMORY[0x25F876C90](0xD00000000000001DLL);
        MEMORY[0x25F876C90](v8, *(&v8 + 1));

        MEMORY[0x25F876C90](0x2068746977202C60, 0xEE0020726F727265);
        MEMORY[0x25F876C90](v9, *(&v9 + 1));

LABEL_31:
        OUTLINED_FUNCTION_11_32();
        MEMORY[0x25F876C90]();
        v1 = v54;
        goto LABEL_44;
      }

      v18 = 5591111;
      OUTLINED_FUNCTION_19_21(v10, v11, v12, v13, v14, v15, v16, v17, v46, v47, v48, v49, v50, v51, v52, v53);
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_12();
      MEMORY[0x25F876C90](v8, *(&v8 + 1));

      OUTLINED_FUNCTION_41_13();
      v19 = v55;
      switch(v55)
      {
        case 0:
          goto LABEL_36;
        case 1:
          v18 = 5591107;
LABEL_36:
          v20 = 0xE300000000000000;
          break;
        case 2:
          v18 = 0x45206C617275654ELL;
          v20 = 0xED0000656E69676ELL;
          break;
        default:
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_34_14();
          swift_getObjectType();
          v41 = sub_25BC17678();
          MEMORY[0x25F876C90](v41);

          OUTLINED_FUNCTION_23_23();
          sub_25BB7304C(v19);
          v18 = 5591111;
          v20 = 0xE300000000000000;
          break;
      }

      MEMORY[0x25F876C90](v18, v20);

      MEMORY[0x25F876C90](0x2068746977202C60, 0xEE0020726F727265);
      MEMORY[0x25F876C90](v9, *(&v9 + 1));

      v43 = 0xD00000000000002ALL;
LABEL_43:
      MEMORY[0x25F876C90](v43, v42 | 0x8000000000000000);
      v1 = v49;
      sub_25BABF0A8(&v54);
LABEL_44:
      sub_25BA9C2C8(&v56);
      return *&v1;
    case 8:
      v35 = v60;
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_12_29();
      *&v56 = v37 + 4;
      *(&v56 + 1) = v36;
      swift_getErrorValue();
      v38 = sub_25BCB796C();
      MEMORY[0x25F876C90](v38);

      MEMORY[0x25F876C90](3025248, 0xE300000000000000);

      goto LABEL_20;
    case 9:
      OUTLINED_FUNCTION_2_50();
      sub_25BCB70FC();
      v5 = "atching scalar types: ";
      v6 = 0xD000000000000047;
LABEL_18:
      MEMORY[0x25F876C90](v6, v5 | 0x8000000000000000);
LABEL_19:
      OUTLINED_FUNCTION_35_15();

LABEL_20:
      v1 = *&v56;
      return *&v1;
    case 10:
      OUTLINED_FUNCTION_44_9();
      *&v1 = v34 - 7;
      return *&v1;
    default:
      if (*(&v60 + 1))
      {
        v1 = *&v60;
      }

      else
      {
        OUTLINED_FUNCTION_44_9();
        *&v1 = v39 + 40;
      }

      return *&v1;
  }
}

unint64_t sub_25BBFA0B0(uint64_t a1)
{
  result = sub_25BBB3BEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BBFA0D8(uint64_t a1)
{
  result = sub_25BBA7EB8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBFA138(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25BAA200C(result, a2, a3);
  }

  return result;
}

double sub_25BBFA14C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
      sub_25BCB617C();
      break;
    case 3:
    case 4:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BBFA18C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_25BBFA1A0()
{
  result = qword_27FBB51D0;
  if (!qword_27FBB51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB51D0);
  }

  return result;
}

void OUTLINED_FUNCTION_36_13()
{

  JUMPOUT(0x25F876C90);
}

uint64_t sub_25BBFA258()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_0_62();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    result = sub_25BCB727C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = v1 + 32;
      do
      {
        v4 += 8;

        sub_25BCB723C();
        OUTLINED_FUNCTION_94();
        sub_25BCB728C();
        OUTLINED_FUNCTION_94();
        sub_25BCB729C();
        sub_25BCB725C();
        --v2;
      }

      while (v2);
      return v5;
    }
  }

  return result;
}

uint64_t sub_25BBFA318()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_0_62();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    result = sub_25BCB727C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = v1 + 32;
      do
      {
        v4 += 8;

        sub_25BCB723C();
        OUTLINED_FUNCTION_94();
        sub_25BCB728C();
        OUTLINED_FUNCTION_94();
        sub_25BCB729C();
        sub_25BCB725C();
        --v2;
      }

      while (v2);
      return v5;
    }
  }

  return result;
}

void sub_25BBFA3D8()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_0_62();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25BB00520();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = v1 + 32;
      do
      {
        v4 = *(*v3 + 152);
        v5 = *(*v3 + 160);
        v6 = *(v9 + 16);
        v7 = *(v9 + 24);
        sub_25BCB617C();
        if (v6 >= v7 >> 1)
        {
          sub_25BB00520();
        }

        *(v9 + 16) = v6 + 1;
        v8 = v9 + 16 * v6;
        *(v8 + 32) = v4;
        *(v8 + 40) = v5;
        v3 += 8;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t sub_25BBFA53C()
{

  sub_25BA9D148(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_25BBFA574()
{
  sub_25BBFA53C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBFA5CC()
{
  v1 = *(v0 + 40);
  sub_25BA9D8C4(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_25BBFA630(uint64_t a1)
{
  result = sub_25BBFA674(&qword_27FBB63C0, &unk_25BCCB0A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBFA674(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BBFA6B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BBFA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_25BAA3234();

  sub_25BBFA8DC(a2, a3);
  v6 = v5;

  sub_25BAA3258();

  return v6;
}

id sub_25BBFA7F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_25BAA3234();
  if ((a4 & 0xFE) != 0)
  {
    v7 = 48;
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a2 + 16) newBufferWithLength:a3 options:v7];
  sub_25BAA3258();

  return v8;
}

uint64_t sub_25BBFA86C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);

  v5 = sub_25BBFA75C(v4, a1, a2);

  return v5;
}

void sub_25BBFA8DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = objc_autoreleasePoolPush();
  sub_25BC2B52C(a1 + 24, a2, &v6);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t *sub_25BBFA980()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_25BBFAA00()
{
  sub_25BBFA980();

  return swift_deallocClassInstance();
}

void sub_25BBFAA70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_25BB00850(0, v1, 0);
    v5 = sub_25BBE144C();
    v6 = 0;
    v7 = v2 + 64;
    v26 = v3;
    v27 = v1;
    v25 = v2 + 72;
    v28 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v3)
      {
        goto LABEL_23;
      }

      v30 = v6;
      v31 = v3;
      v29 = v4;
      v9 = (*(v2 + 48) + 16 * v5);
      v10 = v9[1];
      v32 = *v9;
      v11 = *(*(v2 + 56) + 8 * v5);
      sub_25BCB617C();
      v12 = *(v11 + 16);

      v13 = v2;
      v15 = *(v33 + 16);
      v14 = *(v33 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25BB00850((v14 > 1), v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      v16 = (v33 + 24 * v15);
      v16[4] = v32;
      v16[5] = v10;
      v16[6] = v12;
      v17 = 1 << *(v13 + 32);
      if (v5 >= v17)
      {
        goto LABEL_24;
      }

      v2 = v13;
      v7 = v28;
      v18 = *(v28 + 8 * v8);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v2 + 36) != v31)
      {
        goto LABEL_26;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (v25 + 8 * v8);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_25BB33E48(v5, v31, v29 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        sub_25BB33E48(v5, v31, v29 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v30 + 1;
      v5 = v17;
      v3 = v26;
      if (v30 + 1 == v27)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

uint64_t ModelError.description.getter()
{
  v1 = *v0;
  sub_25BCB617C();
  return v1;
}

uint64_t CompiledModel.__allocating_init<>(contentsOf:device:)()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_1_50(v1);

  return CompiledModel.init<>(contentsOf:device:)();
}

uint64_t sub_25BBFADA8()
{
  OUTLINED_FUNCTION_3_39();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t CompiledModel.init<>(contentsOf:device:)()
{
  OUTLINED_FUNCTION_3_39();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v1[24] = *v0;
  v4 = sub_25BCB598C();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25BBFAF8C, 0, 0);
}

uint64_t sub_25BBFAF8C()
{
  sub_25BABEF40(*(v0 + 176), v0 + 16);
  sub_25BAC27B0(v0 + 16, v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v1 = *(v0 + 56);
    sub_25BB73038(v1);
    sub_25BABF0A8(v0 + 16);
    if (v1 == 2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    *(v0 + 40) = &unk_286D4F718;
    *(v0 + 48) = &off_286D4F7D8;
    if (v1 == 1)
    {
      v2 = 1;
    }

    *(v0 + 56) = v1;
    *(v0 + 64) = v2;
  }

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 168);
  type metadata accessor for EspressoV1Executor();
  (*(v4 + 16))(v3, v6, v5);
  sub_25BABEF40(v0 + 16, v0 + 72);
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_25BBFB104;
  v8 = *(v0 + 216);

  return sub_25BB705FC(v8, v0 + 72);
}

uint64_t sub_25BBFB104()
{
  OUTLINED_FUNCTION_3_39();
  v2 = *v1;
  *(v2 + 232) = v3;
  *(v2 + 240) = v0;

  if (v0)
  {
    v4 = sub_25BBFB434;
  }

  else
  {
    v4 = sub_25BBFB214;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25BBFB214()
{
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[26];
    v3 = v0[25];
    v4 = v0[23];
    v5 = v0[21];
    sub_25BABF0A8(v0[22]);
    (*(v2 + 8))(v5, v3);
    sub_25BABF0A8((v0 + 2));
    v4[4] = v1;
    type metadata accessor for CompiledModelDictInputTranslator(0);
    v4[2] = swift_allocObject();
    type metadata accessor for CompiledModelDictOutputTranslator(0);
    v4[3] = swift_allocObject();

    v6 = v0[1];
    v7 = v0[23];

    return v6(v7);
  }

  else
  {
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[21];
    v12 = v0[22];
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE1DE0);
    sub_25BBFBBC0();
    v13 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v13);

    MEMORY[0x25F876C90](0xD000000000000058, 0x800000025BCE1E10);
    sub_25BBFBC18();
    swift_allocError();
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    swift_willThrow();
    sub_25BABF0A8(v12);
    (*(v10 + 8))(v11, v9);
    sub_25BABF0A8((v0 + 2));
    OUTLINED_FUNCTION_4_46();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25BBFB434()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[21];
  sub_25BABF0A8(v0[22]);
  (*(v2 + 8))(v3, v1);
  sub_25BABF0A8((v0 + 2));
  OUTLINED_FUNCTION_4_46();

  v4 = v0[1];

  return v4();
}

uint64_t CompiledModel.deinit()
{

  return v0;
}

uint64_t CompiledModel.__deallocating_deinit()
{
  CompiledModel.deinit();

  return swift_deallocClassInstance();
}

void CompiledModel.forward(_:)(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_25BBFB780(v1, a1);

  objc_autoreleasePoolPop(v3);
}

ValueMetadata *CompiledModel<>.tensorProperties(forInputNamed:)()
{
  OUTLINED_FUNCTION_2_51();
  sub_25BCB617C();
  v1 = sub_25BCB617C();
  OUTLINED_FUNCTION_0_63(v1, v2);

  if (v5)
  {
    result = sub_25BC8FACC();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *v0 = v5;
  v0[1] = result;
  v0[2] = v4;
  return result;
}

uint64_t sub_25BBFB69C(uint64_t (*a1)(void))
{
  v1 = *(a1() + 16);

  return v1;
}

ValueMetadata *CompiledModel<>.tensorProperties(forOutputNamed:)()
{
  OUTLINED_FUNCTION_2_51();
  sub_25BCB617C();
  v1 = sub_25BCB617C();
  OUTLINED_FUNCTION_0_63(v1, v2);

  if (v5)
  {
    result = sub_25BC8FACC();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *v0 = v5;
  v0[1] = result;
  v0[2] = v4;
  return result;
}

uint64_t sub_25BBFB780(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a1 + 16) + 88))(a2);
  v5 = sub_25BAD9C8C(v3, v4);
  v7 = v6;

  (*(**(a1 + 24) + 88))(v5, v7);
}

void sub_25BBFB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("translate(_:)", 13, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/CompiledModel.swift", 102, 2, 143, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BBFB8E4(uint64_t a1)
{
  sub_25BBFAA70(a1);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  v3 = sub_25BAD8178(v2);

  sub_25BAD8324(v4);
  return v3;
}

void sub_25BBFB980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("translate(_:)", 13, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/CompiledModel.swift", 102, 2, 172, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BBFBA04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_25BB006B4(0, v1, 0);
    v3 = v19;
    v4 = type metadata accessor for TensorRepresentation();
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *v5;
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      ObjectType = swift_getObjectType();
      swift_bridgeObjectRetain_n();
      v10 = swift_unknownObjectRetain_n();
      v11 = sub_25BC5FAD0(v10, v17, 0x100000000uLL, v4, ObjectType, v8);
      type metadata accessor for TensorHandle();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;

      sub_25BAA6EB0();
      swift_unknownObjectRelease();

      v19 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25BB006B4((v13 > 1), v14 + 1, 1);
        v3 = v19;
      }

      *(v3 + 16) = v14 + 1;
      v15 = (v3 + 24 * v14);
      v15[4] = v7;
      v15[5] = v6;
      v15[6] = v12;
      v5 += 4;
      --v1;
    }

    while (v1);
  }

  return sub_25BAFA620();
}

uint64_t sub_25BBFBB98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BBFBA04(a1);
  *a2 = result;
  return result;
}

unint64_t sub_25BBFBBC0()
{
  result = qword_27FBB6450;
  if (!qword_27FBB6450)
  {
    sub_25BCB598C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6450);
  }

  return result;
}

unint64_t sub_25BBFBC18()
{
  result = qword_27FBB6458[0];
  if (!qword_27FBB6458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB6458);
  }

  return result;
}

uint64_t sub_25BBFBCAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBFBCE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t dispatch thunk of CompiledModel.__allocating_init<>(contentsOf:device:)()
{
  v5 = (*(v0 + 120) + **(v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_1_50(v2);

  return v5(v3);
}

uint64_t sub_25BBFBEBC()
{
  OUTLINED_FUNCTION_3_39();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_25BBFC060(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v6 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = OUTLINED_FUNCTION_61_6())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v35 = MEMORY[0x277D84F90];
    sub_25BB00694(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    OUTLINED_FUNCTION_76_4();
    v28 = v10;
    v29 = v11;
    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v29)
      {
        v5 = MEMORY[0x25F8779B0](v4, a3);
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_58_6();
      }

      v31 = v5;
      a1(&v32, &v31);
      if (v6)
      {
        goto LABEL_20;
      }

      v6 = 0;

      v13 = v32;
      v14 = v33;
      v15 = v34;
      v35 = v9;
      v16 = *(v9 + 16);
      v5 = v16 + 1;
      if (v16 >= *(v9 + 24) >> 1)
      {
        OUTLINED_FUNCTION_52_8();
        v27 = v18;
        v20 = v19;
        v26 = v21;
        sub_25BB00694(v22, v23, v24);
        v15 = v26;
        v13 = v20;
        v14 = v27;
        v9 = v35;
      }

      *(v9 + 16) = v5;
      v17 = v9 + 32 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      *(v17 + 56) = v15;
      ++v4;
      if (v12 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_25BBFC200(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v6 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = OUTLINED_FUNCTION_61_6())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v31 = MEMORY[0x277D84F90];
    sub_25BB00850(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    OUTLINED_FUNCTION_76_4();
    v25 = v10;
    v26 = v11;
    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v26)
      {
        v5 = MEMORY[0x25F8779B0](v4, a3);
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_58_6();
      }

      v28 = v5;
      a1(&v29, &v28);
      if (v6)
      {
        goto LABEL_20;
      }

      v6 = 0;

      v13 = v29;
      v14 = v30;
      v31 = v9;
      v15 = *(v9 + 16);
      v5 = v15 + 1;
      if (v15 >= *(v9 + 24) >> 1)
      {
        OUTLINED_FUNCTION_52_8();
        v24 = v17;
        v19 = v18;
        sub_25BB00850(v20, v21, v22);
        v13 = v19;
        v14 = v24;
        v9 = v31;
      }

      *(v9 + 16) = v5;
      v16 = v9 + 24 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      ++v4;
      if (v12 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_25BBFC394(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = OUTLINED_FUNCTION_61_6())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v8;
    }

    v23 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v8 = v23;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25F8779B0](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_58_6();
      }

      v21 = v4;
      a1(v22, &v21);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v11 = v22[0];
      v12 = v22[1];
      v23 = v8;
      v13 = *(v8 + 16);
      v4 = v13 + 1;
      if (v13 >= *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_52_8();
        v19 = v15;
        v17 = v16;
        sub_25BB004E4();
        v12 = v17;
        v11 = v19;
        v8 = v23;
      }

      *(v8 + 16) = v4;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12;
      ++v9;
      if (v10 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_25BBFC528(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_25BAC5590();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v18;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v16 = a3 + v9;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v17;
      v18 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        v13 = v17;
        sub_25BAC5590();
        v11 = v13;
        v6 = v18;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_25BBFC694(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  sub_25BAA21EC(0, v6, 0);
  v7 = v6;
  result = v29;
  v27 = a2;
  v28 = v4;
  v26 = a1;
  if (!v6)
  {
    v13 = v5;
    goto LABEL_14;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v5;
  while (v4)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    v14 = *v9 * *v10;
    if ((*v9 * *v10) >> 64 != v14 >> 63)
    {
      goto LABEL_26;
    }

    v30 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v24 = v7;
      v25 = v13;
      sub_25BAA21EC(v15 > 1, v16 + 1, 1);
      v7 = v24;
      v13 = v25;
      result = v30;
    }

    --v12;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = v14;
    --v4;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_14:
      while (v28 != v7)
      {
        if (v7 >= v28)
        {
          goto LABEL_27;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        if (v13 == v7)
        {
          return result;
        }

        if (v7 >= v13)
        {
          goto LABEL_29;
        }

        v17 = *(v26 + 32 + 8 * v7);
        v18 = *(v27 + 32 + 8 * v7);
        v19 = v17 * v18;
        if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
        {
          goto LABEL_30;
        }

        v31 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v7;
          v23 = v13;
          sub_25BAA21EC(v20 > 1, v21 + 1, 1);
          v7 = v22;
          v13 = v23;
          result = v31;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v19;
        ++v7;
      }

      return result;
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
LABEL_30:
  __break(1u);
  return result;
}

void sub_25BBFC88C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v36 = MEMORY[0x277D84F90];
  sub_25BB00C84(0, v6, 0);
  v32 = v5;
  v33 = v4;
  v31 = a1;
  v30 = v6;
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = a2 + 32;
    sub_25BCB617C();
    sub_25BCB617C();
    v9 = v4;
    while (v9)
    {
      if (!v5)
      {
        goto LABEL_32;
      }

      v35 = *v7;
      swift_retain_n();

      v10 = sub_25BAB3058();
      if (v10 && (Class = object_getClass(v10), swift_unknownObjectRelease(), Class == _TtC14NeuralNetworks16TrackedOperation))
      {
        v14 = sub_25BAC44E4();
        MEMORY[0x25F876C90](v14);

        MEMORY[0x25F876C90](95, 0xE100000000000000);
        sub_25BAC4018();
        sub_25BCB73CC();

        v13 = 0xE000000000000000;
        v34 = 0;
      }

      else
      {
        v34 = sub_25BAC44E4();
        v13 = v12;
      }

      v16 = *(v36 + 16);
      v15 = *(v36 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25BB00C84(v15 > 1, v16 + 1, 1);
      }

      *(v36 + 16) = v16 + 1;
      v17 = (v36 + 24 * v16);
      --v5;
      v17[4] = v35;
      v17[5] = v34;
      v17[6] = v13;
      --v9;
      v8 += 8;
      ++v7;
      if (!--v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    sub_25BCB617C();
    sub_25BCB617C();
LABEL_17:
    for (i = v30; v33 != i; i = v20 + 1)
    {
      if (i >= v33)
      {
        goto LABEL_33;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_34;
      }

      if (v32 == i)
      {
        break;
      }

      if (i >= v32)
      {
        goto LABEL_35;
      }

      v19 = *(v31 + 32 + 8 * i);
      v20 = i;
      swift_retain_n();

      v21 = sub_25BAB3058();
      if (v21 && (v22 = object_getClass(v21), swift_unknownObjectRelease(), v22 == _TtC14NeuralNetworks16TrackedOperation))
      {
        v26 = sub_25BAC44E4();
        MEMORY[0x25F876C90](v26);

        MEMORY[0x25F876C90](95, 0xE100000000000000);
        sub_25BAC4018();
        sub_25BCB73CC();

        v23 = 0;
        v25 = 0xE000000000000000;
      }

      else
      {
        v23 = sub_25BAC44E4();
        v25 = v24;
      }

      v28 = *(v36 + 16);
      v27 = *(v36 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_25BB00C84(v27 > 1, v28 + 1, 1);
      }

      *(v36 + 16) = v28 + 1;
      v29 = (v36 + 24 * v28);
      v29[4] = v19;
      v29[5] = v23;
      v29[6] = v25;
    }
  }
}

unint64_t sub_25BBFCCE0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
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
    result = sub_25BCB643C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_25BCB654C();
      OUTLINED_FUNCTION_34();

      return OUTLINED_FUNCTION_68_5();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBFCDA4(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_25BBFD334(0, result, v4);
    if (v5)
    {
      result = v4;
    }

    if (v4 >= result)
    {
      a3();
      OUTLINED_FUNCTION_34();

      return OUTLINED_FUNCTION_68_5();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBFCE34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25BBFD334(0, result, *(a2 + 16));
  v6 = v5;
  v7 = *(a2 + 16);
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (v7 >= result)
    {
      v8 = result;
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:
  TensorShape.subscript.getter(v8, v7, a3);
}

void Tensor.init(stacking:alongAxis:scalarType:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v13 = *v2;
  v14 = *(v6 + 16);
  if (v14 == 1)
  {
    v15 = *(v6 + 32);

    v45 = v15;
    Tensor.expandingShape(at:)();

    v16 = v42;
    if (v13 != 13)
    {
      if (*(*(v42 + 16) + 160) != v13)
      {
        v17 = v13 + 13 * *(*(v42 + 16) + 160);
        if (v17 > 0xA8)
        {
          __break(1u);
LABEL_16:
          v42 = 0;
          v43 = 0xE000000000000000;
          sub_25BCB70FC();

          OUTLINED_FUNCTION_86();
          v42 = 0xD00000000000001ELL;
          v43 = v24;
          v25 = sub_25BCB617C();
          v26 = MEMORY[0x277D83B88];
          v27 = MEMORY[0x25F876F80](v25, MEMORY[0x277D83B88]);
          MEMORY[0x25F876C90](v27);

          OUTLINED_FUNCTION_13_31();
          OUTLINED_FUNCTION_86_3();
          v28 = MEMORY[0x25F876F80](v8, v26);
          MEMORY[0x25F876C90](v28);

          OUTLINED_FUNCTION_122_0();
          v29 = 159;
        }

        else
        {
          if (byte_286D42018[v17 + 32] != 13)
          {
            goto LABEL_6;
          }

          v42 = 0;
          v43 = 0xE000000000000000;
          sub_25BCB70FC();
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_57_4();
          MEMORY[0x25F876C90](0x27206F742027, 0xE600000000000000);
          LOBYTE(v45) = v13;
          OUTLINED_FUNCTION_57_4();
          MEMORY[0x25F876C90](39, 0xE100000000000000);
          OUTLINED_FUNCTION_122_0();
          v29 = 822;
        }

        v39 = v29;
        OUTLINED_FUNCTION_10_5();
        while (1)
        {
          OUTLINED_FUNCTION_43_10(v30, v31, v32, v33, v34, v35, v36, v37, v39);
          __break(1u);
LABEL_19:
          OUTLINED_FUNCTION_122_0();
          v39 = 818;
          OUTLINED_FUNCTION_10_5();
          v33 = 0;
          v34 = 0xE000000000000000;
        }
      }

LABEL_6:
      v45 = v42;
      LOBYTE(v44) = v13;
      (*(v11 + 104))(v0, *MEMORY[0x277D84660], v9);
      Tensor.cast(to:roundingRule:)();
      (*(v11 + 8))(v0, v9);

      v16 = v42;
    }
  }

  else
  {
    v38 = *v2;
    v40 = v8;
    if (!v14)
    {
      goto LABEL_19;
    }

    v45 = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v18 = 32;
    v19 = v45;
    do
    {
      v20 = *(v6 + v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      OUTLINED_FUNCTION_1_2();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_25BCBAE50;
      *(v8 + 32) = v4;
      v44 = *(*(v20 + 16) + 152);

      sub_25BCB617C();
      sub_25BAB5B48(&v44, v8, &v42);

      if (!v42)
      {
        goto LABEL_16;
      }

      v44 = v20;
      v41 = v42;
      Tensor.reshaped(to:)(&v41, &v42);

      v21 = v42;
      v45 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_81(v22);
        sub_25BAC5590();
        v19 = v45;
      }

      *(v19 + 16) = v23 + 1;
      *(v19 + 8 * v23 + 32) = v21;
      v18 += 8;
      --v14;
    }

    while (v14);

    LOBYTE(v45) = v38;
    Tensor.init(concatenating:alongAxis:scalarType:)();
    v16 = v42;
    v8 = v40;
  }

  *v8 = v16;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBFD334(uint64_t result, uint64_t a2, uint64_t a3)
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

void Tensor.replacing(with:where:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  if (*(*(*a2 + 16) + 160) != 12)
  {
    LOBYTE(v83[0]) = *(*(*a2 + 16) + 160);
    v70 = sub_25BC8FACC();
    v71 = v52;
    v72 = xmmword_25BCCB430;
    LOBYTE(v73) = 0;
    v74 = 12;
    LOBYTE(v75) = 0;
    v78 = 3;
    OUTLINED_FUNCTION_3_40();
    v59 = 341;
    goto LABEL_10;
  }

  v6 = *a1;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *(*a1 + 16);
  v10 = *(v9 + 160);
  if (*(v8 + 160) != v10)
  {
    LOBYTE(v83[0]) = *(v8 + 160);
    LOBYTE(v80[0]) = v10;
    v70 = sub_25BC8FACC();
    v71 = v60;
    v72 = 0uLL;
    LOBYTE(v73) = 6;
    v74 = sub_25BC8FACC();
    v75 = v61;
    v76 = xmmword_25BCCB440;
    LOBYTE(v77) = 0;
    v78 = 0;
    OUTLINED_FUNCTION_3_40();
    v59 = 342;
    goto LABEL_10;
  }

  v11 = *(v9 + 152);
  v80[0] = *(v8 + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:to:)(&v70, v80, v12, v13, v14, v15, v16, v17, v62, v64, v66, v68, v11, v71, v72, *(&v72 + 1), v73, v74, v75, v76, *(&v76 + 1), v77);
  if (!v83[0])
  {
    v70 = v11;
    OUTLINED_FUNCTION_30_17();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_40();
    v59 = 343;
    goto LABEL_10;
  }

  v19 = *(*(v7 + 16) + 152);
  v70 = *(*(v5 + 16) + 152);
  v18 = v70;
  v83[0] = v19;
  sub_25BCB617C();
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:to:)(&v70, v83, v20, v21, v22, v23, v24, v25, v63, v65, v67, a3, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, *(&v76 + 1), v77);
  if (!v82)
  {
    v70 = v18;
    OUTLINED_FUNCTION_30_17();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_40();
    v59 = 344;
LABEL_10:
    sub_25BADDD28(v53, v54, v55, v56, v57, v58, v59);
  }

  v83[0] = v5;
  v80[0] = *(*(v7 + 16) + 152);
  sub_25BCB617C();
  sub_25BABDA0C(v80);

  v26 = v70;
  v83[0] = v6;
  v80[0] = *(*(v7 + 16) + 152);
  sub_25BCB617C();
  sub_25BABDA0C(v80);

  Kind = v26[1].Kind;
  v28 = v70[1].Kind;
  v29 = *(v7 + 16);
  v30 = *(v29 + 160);
  v70 = *(v29 + 152);
  LOBYTE(v71) = v30;

  sub_25BCB617C();
  v31 = sub_25BAAF074(sub_25BBFEAA4, 0);
  v33 = v32;
  v81 = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SelectOp.swift");
  v84 = xmmword_25BCCB450;
  OUTLINED_FUNCTION_28(v34);
  v35 = type metadata accessor for SelectOperation();
  OUTLINED_FUNCTION_63_3(v35);
  v36 = OUTLINED_FUNCTION_3();
  v41 = sub_25BB2F5EC(v36, v37, v38, Kind, v28, v29, v39, v40, v31, v33);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v43 = OUTLINED_FUNCTION_32_11(v42);
  *(v43 + 16) = xmmword_25BCBAE90;
  *(v43 + 32) = v7;
  *(v43 + 40) = v6;
  *(v43 + 48) = v5;

  v44 = OUTLINED_FUNCTION_8_35();
  sub_25BAB524C(v44, v45, v46, v47, 368, v48, 22, 2u, v49);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v80, v79);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(&v70);

  sub_25BAA4AF4(&v70);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v70);

  sub_25BAA4AF4(&v70);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v70) = v50;
  OUTLINED_FUNCTION_19();
  sub_25BC0E5E0(v41, 0, v79);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v51);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_51_0();

  sub_25BA9C2C8(v80);
  *v69 = v51;
  OUTLINED_FUNCTION_82();
}

void Tensor.bandPart(lowerBandCount:upperBandCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = *v3;
  v10 = *(*(*(*v3 + 16) + 152) + 16);
  if (!sub_25BAB74D0(v10, 2, 0, 2))
  {
    v30[1] = 0;
    v30[2] = 0;
    v30[0] = v10;
    v31 = 6;
    v32 = xmmword_25BCBC6A0;
    v33 = 2;
    v34 = 7;
    OUTLINED_FUNCTION_3_40();
    sub_25BADDD28(v24, v25, v26, v27, v28, v29, 1150);
  }

  v11 = *(v9 + 16);
  v12 = OUTLINED_FUNCTION_89_5(&unk_286D4F048);
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_25BAAF074(sub_25BC02B84, v12);
  OUTLINED_FUNCTION_48_11();

  v36[55] = 0;
  v37 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift";
  v38 = 125;
  v39 = 2;
  v40 = xmmword_25BCCB460;
  v41 = "init(id:operand:lowerBandCount:upperBandCount:creationSite:backward:)";
  v42 = 69;
  v43 = 2;
  v13 = type metadata accessor for BandPartOperation();
  OUTLINED_FUNCTION_63_3(v13);
  v14 = OUTLINED_FUNCTION_3();
  v18 = sub_25BC3F240(v14, v15, v16, v11, a1, a2, v17, v4, v5);
  sub_25BAA51C8(*(v9 + 16) + 168, v36);
  sub_25BAA51C8(v36, v35);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v19 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v19, v20);

  sub_25BAA4AF4(v30);
  v21 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v21, v22);

  sub_25BAA4AF4(v30);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_12_30();
  sub_25BC0E344(v18, 0);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v23);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  sub_25BA9C2C8(v36);
  *a3 = v23;
  OUTLINED_FUNCTION_83_5();
}

void sub_25BBFDADC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v10 = *(a1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25BCBAE50;
      v14 = v10;
      v13[15] = a3;
      (*(v7 + 104))(v9, *MEMORY[0x277D84660], v6);

      Tensor.cast(to:roundingRule:)();
      (*(v7 + 8))(v9, v6);
      *(v11 + 32) = v15;

      *(v11 + 40) = sub_25BAC42B0();
      *(v11 + 48) = v12;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Tensor.cast(like:)()
{
  sub_25BCB783C();
  OUTLINED_FUNCTION_1_51();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277D84660], v0);
  Tensor.cast(to:roundingRule:)();
  return (*(v2 + 8))(v6, v0);
}

void Tensor.reshaped(toRank:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*(v4 + 16) + 152);
  v6 = *(v5 + 16);
  if (a1 == v6)
  {

LABEL_12:
    *a2 = v4;
    return;
  }

  if (a1 > v6)
  {
    v22 = v4;
    v7 = sub_25BAC0E14(1, a1 - v6);
    v8 = *(*(v4 + 16) + 152);
    v21 = MEMORY[0x277D84F90];
    sub_25BCB617C();
    sub_25BAC0EB8(v7);
    sub_25BAC0F84(v8);
LABEL_11:
    v20 = v21;
    Tensor.reshaped(to:)(&v20, &v23);

    v4 = v23;
    goto LABEL_12;
  }

  v9 = v6 - a1;
  if (!__OFSUB__(v6, a1))
  {
    sub_25BCB617C();
    sub_25BB74DC8(v9, v5, &v23);
    v10 = *(v23 + 16);
    v11 = 32;
    while (v10)
    {
      v12 = *(v23 + v11);
      v11 += 8;
      --v10;
      if (v12 != 1)
      {

        OUTLINED_FUNCTION_10_5();
        OUTLINED_FUNCTION_43_10(v13, v14, v15, 0, 0xE000000000000000, v16, v17, v18, 88);
        __break(1u);
        break;
      }
    }

    v22 = v4;
    v19 = *(*(v4 + 16) + 152);
    sub_25BCB617C();
    sub_25BBFCE34(v9, v19, &v21);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t Tensor.reshaped(like:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = *(*(*a1 + 16) + 152);
  v3 = sub_25BCB617C();
  v11 = OUTLINED_FUNCTION_75_4(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  Tensor.reshaped(to:)(v11, a2);
}

uint64_t Tensor.flattened()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_75_4(a1, a2, a3, a4, a5, a6, a7, a8, &unk_286D453C0);
  Tensor.reshaped(to:)(v8, v9);
}

uint64_t Tensor.selecting(where:)(ValueMetadata **a1)
{
  v2 = *a1;
  Kind = (*a1)[1].Kind;
  if (*(Kind + 160) != 12)
  {
    LOBYTE(v41) = *(Kind + 160);
    v42 = sub_25BC8FACC();
    *v43 = v32;
    *&v43[8] = xmmword_25BCCB430;
    LOBYTE(v44) = 0;
    v45 = 12;
    LOBYTE(v46) = 0;
    v52 = 3;
    OUTLINED_FUNCTION_3_40();
    v39 = 289;
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = *(Kind + 152);
  v6 = *((*v1)[1].Kind + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:to:)(&v42, &v40, v7, v8, v9, v10, v11, v12, v6, v41, v5, *v43, *&v43[8], *&v43[16], v44, v45, v46, v47, v48, v49, v50, v51);
  if (!v41)
  {
    v42 = v5;
    *v43 = xmmword_25BCCB430;
    v43[16] = 0;
    v45 = 0;
    v46 = 0;
    v44 = v6;
    LOBYTE(v47) = 6;
    v52 = 9;
    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_40();
    v39 = 290;
LABEL_8:
    sub_25BADDD28(v33, v34, v35, v36, v37, v38, v39);
  }

  v40 = *(v4[1].Kind + 152);
  v41 = v2;
  v13 = sub_25BCB617C();
  v21 = OUTLINED_FUNCTION_75_4(v13, v14, v15, v16, v17, v18, v19, v20, v40);
  Tensor.broadcasted(to:)(v21);

  v41 = v4;
  v30 = OUTLINED_FUNCTION_75_4(v22, v23, v24, v25, v26, v27, v28, v29, v42);
  sub_25BBFE1C4(v30);
  v41 = v42;
  v42 = v4;
  Tensor.gatheringND(atIndices:batchDimensionCount:)();
}

uint64_t sub_25BBFE1C4(uint64_t *a1)
{
  v3 = sub_25BCB783C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v24[0] = *a1;
  v8 = v24[0];
  LOBYTE(v29[0]) = 2;
  (*(v4 + 104))(v7, *MEMORY[0x277D84660], v3, v5);
  Tensor.cast(to:roundingRule:)();
  (*(v4 + 8))(v7, v3);
  v24[0] = v30;
  v28[0] = &unk_286D423B0;
  Tensor.reshaped(to:)(v28, v29);

  v28[0] = v29[0];
  Tensor.sum(squeezingAxes:)(v24, &unk_286D423D8);

  v10 = sub_25BC09420(v24[0]);

  v11 = *(v8 + 16);
  v12 = *(*(v11 + 152) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v13 = swift_allocObject();
  v22 = xmmword_25BCBAE70;
  *(v13 + 16) = xmmword_25BCBAE70;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  v24[0] = v13;
  LOBYTE(v24[1]) = 2;
  v36 = 0;
  *&v30 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift";
  *(&v30 + 1) = 125;
  v31 = 2;
  v32 = xmmword_25BCCB480;
  v33 = "init(id:operand:resultDescriptor:creationSite:)";
  v34 = 47;
  v35 = 2;
  type metadata accessor for NonZeroIndicesOperation();
  swift_allocObject();

  v14 = sub_25BC3F0A4(0, 0, 0, v11, v24, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  *(inited + 32) = v9;
  *(inited + 40) = v8;

  sub_25BAB524C(inited, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorTransformations.swift", 114, 2u, 319, "nonZeroIndices(mask:)", 21, 2u, v29);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v29, v28);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(v24);

  v16 = v27;

  sub_25BAA4AF4(v24);
  sub_25BAA49B8();
  sub_25BAA4A5C(v24);

  v17 = v26;

  sub_25BAA4AF4(v24);
  type metadata accessor for TensorRepresentation();
  v18 = swift_allocObject();
  LOBYTE(v24[0]) = 1;
  v19 = sub_25BC10620(v14, 0, v28, 0x100000000, v16, v17, v18);
  type metadata accessor for TensorHandle();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v29);
  v28[0] = v20;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_25BAA51C8(v24, v29);
  sub_25BB2F098(MEMORY[0x277D84F90], &unk_286D45410, v29, &v23);
  sub_25BA9C2C8(v24);
  static Tensor.* infix(_:_:)();
}