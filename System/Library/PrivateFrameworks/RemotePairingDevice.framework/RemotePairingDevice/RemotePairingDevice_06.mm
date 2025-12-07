id ControlChannelConnectionWireProtocolVersion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlChannelConnectionWireProtocolVersion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_261FE368C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ControlChannelConnectionWireProtocolVersion.__allocating_init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_261FE36B8@<X0>(uint64_t *a1@<X8>)
{
  result = ControlChannelConnectionWireProtocolVersion.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_261FE37EC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(a1, a2);
  *a3 = result;
  return result;
}

unsigned __int8 *sub_261FE3814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26203A2FC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_261FE464C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26203A82C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_261FE3E04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unsigned __int8 *sub_261FE415C(uint64_t a1, uint64_t a2, int64_t a3)
{

  result = sub_26203A2FC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_261FE464C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26203A82C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_11_7();
          if (v20)
          {
            do
            {
              OUTLINED_FUNCTION_9_9();
              if (v15 && v24 < v22)
              {
                v25 = -48;
              }

              else if (v24 < 0x41 || v24 >= v21)
              {
                OUTLINED_FUNCTION_7_9();
                if (!v15 || v24 >= v26)
                {
                  goto LABEL_125;
                }

                v25 = -87;
              }

              else
              {
                v25 = -55;
              }

              if (!is_mul_ok(v23, a3) || __CFADD__(v23 * a3, (v24 + v25)))
              {
                goto LABEL_124;
              }

              OUTLINED_FUNCTION_12_8();
            }

            while (!v19);
LABEL_44:
            v6 = v18;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v6 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v6 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_125;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            if (!is_mul_ok(v30, a3))
            {
              goto LABEL_124;
            }

            v33 = v30 * a3;
            v34 = v31 + v32;
            v15 = __CFADD__(v33, v34);
            v30 = v33 + v34;
            if (v15)
            {
              goto LABEL_124;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v30;
          goto LABEL_125;
        }

        goto LABEL_64;
      }

      goto LABEL_124;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_11_7();
        if (v10)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_9();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_7_9();
              if (!v15 || v14 >= v17)
              {
                goto LABEL_125;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            if (!is_mul_ok(v13, a3) || v13 * a3 < (v14 + v16))
            {
              goto LABEL_124;
            }

            OUTLINED_FUNCTION_12_8();
            if (v19)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_64:
        v6 = 0;
LABEL_125:

        return v6;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v7) & 0xF;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        OUTLINED_FUNCTION_1_18();
        while (1)
        {
          OUTLINED_FUNCTION_9_9();
          if (v15 && v54 < v53)
          {
            v55 = -48;
          }

          else if (v54 < 0x41 || v54 >= v52)
          {
            OUTLINED_FUNCTION_7_9();
            if (!v15 || v54 >= v56)
            {
              goto LABEL_125;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }

          if (!is_mul_ok(v51, a3) || __CFADD__(v51 * a3, (v54 + v55)))
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_12_8();
          if (v19)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        OUTLINED_FUNCTION_1_18();
        while (1)
        {
          OUTLINED_FUNCTION_9_9();
          if (v15 && v41 < v40)
          {
            v42 = -48;
          }

          else if (v41 < 0x41 || v41 >= v39)
          {
            OUTLINED_FUNCTION_7_9();
            if (!v15 || v41 >= v43)
            {
              goto LABEL_125;
            }

            v42 = -87;
          }

          else
          {
            v42 = -55;
          }

          if (!is_mul_ok(v38, a3) || v38 * a3 < (v41 + v42))
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_12_8();
          if (v19)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    if (v37 != 1)
    {
      OUTLINED_FUNCTION_1_18();
      do
      {
        OUTLINED_FUNCTION_9_9();
        if (v15 && v48 < v47)
        {
          v49 = -48;
        }

        else if (v48 < 0x41 || v48 >= v46)
        {
          OUTLINED_FUNCTION_7_9();
          if (!v15 || v48 >= v50)
          {
            goto LABEL_125;
          }

          v49 = -87;
        }

        else
        {
          v49 = -55;
        }

        if (!is_mul_ok(v45, a3) || __CFADD__(v45 * a3, (v48 + v49)))
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_12_8();
      }

      while (!v19);
LABEL_123:
      v6 = v44;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_261FE464C(unint64_t a1, unint64_t a2)
{
  v2 = sub_261FE46B8(sub_261FE46B4, 0, a1, a2);
  v6 = sub_261FE46EC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_261FE46B8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_261FE46EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26203A6EC();
    if (!v9 || (v10 = v9, v11 = sub_261F69588(v9, 0), v12 = sub_261FE484C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26203A22C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26203A22C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26203A82C();
LABEL_4:

  return sub_26203A22C();
}

unint64_t sub_261FE484C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_261FE4A5C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26203A2AC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26203A82C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_261FE4A5C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26203A28C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_261FE4A5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_26203A2BC();
    OUTLINED_FUNCTION_10_6(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x266722740](15, a1 >> 16);
    OUTLINED_FUNCTION_10_6(v3);
    return v4 | 8;
  }
}

uint64_t CUPairingStream.decode<A>(message:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_26203930C();
  swift_allocObject();
  sub_2620392FC();
  v3 = sub_26203952C();
  v10 = OUTLINED_FUNCTION_27_4(v3, sel_decryptData_aadData_error_, v4, v5, v6, v7, v8, v9, 0);

  v11 = v17;
  if (v10)
  {
    v12 = sub_26203954C();
    v14 = v13;

    sub_2620392EC();
    sub_261F6BFFC(v12, v14);
  }

  else
  {
    v15 = v11;
    sub_2620393FC();

    swift_willThrow();
  }
}

void CUPairingStream.encode<A>(_:)(uint64_t *a4@<X8>)
{
  sub_26203933C();
  swift_allocObject();
  sub_26203932C();
  v6 = sub_26203931C();
  if (v4)
  {
    goto LABEL_2;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_26203952C();
  v17 = OUTLINED_FUNCTION_27_4(v10, sel_encryptData_aadData_error_, v11, v12, v13, v14, v15, v16, 0);

  v18 = v23;
  if (!v17)
  {
    v22 = v18;
    sub_2620393FC();

    swift_willThrow();
    sub_261F6BFFC(v8, v9);
LABEL_2:

    return;
  }

  v19 = sub_26203954C();
  v21 = v20;
  sub_261F6BFFC(v8, v9);

  *a4 = v19;
  a4[1] = v21;
}

uint64_t CUPairedPeer.remoteUnlockKey.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_0_24();
    v5 = OUTLINED_FUNCTION_20_7(v1, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v2, v3, v4);
    OUTLINED_FUNCTION_12_9(v5, v6, v7, v8, v9, v10, v11);

    v12 = sub_261F67914(v23);
    if (v25)
    {
      v13 = OUTLINED_FUNCTION_4_12(v12);
      return OUTLINED_FUNCTION_5_10(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v24, &qword_27FEF9870, &qword_26203C960);
  return 0;
}

uint64_t CUPairedPeer.remoteUnlockKey.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_15_6(v8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v9, v10, v11, v12, v13, v31, v33, v35, *(&v35 + 1), v36, *(&v36 + 1), v37[0]);
  v14 = sub_26203A79C();
  if (a2 >> 60 == 15)
  {
    OUTLINED_FUNCTION_7_10();
    sub_261F81D84(a1, a2);
    sub_261FCB894(v37, &qword_27FEF9870, &qword_26203C960);
    v16 = sub_261F67388();
    if (v17)
    {
      v18 = v16;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      sub_26203A8EC();
      sub_261F67914(*(v7 + 48) + 40 * v18);
      sub_261F8D184((*(v7 + 56) + 32 * v18), &v35);
      sub_26203A90C();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_261F67914(v40);
    sub_261FCB894(&v35, &qword_27FEF9870, &qword_26203C960);
  }

  else
  {
    v38 = MEMORY[0x277CC9318];
    OUTLINED_FUNCTION_22_5(v14, v15);
    sub_261F81D84(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19(isUniquelyReferenced_nonNull_native, v20, v21);
    OUTLINED_FUNCTION_21_5(v22, v23, v24, v25, v26, v27, v28, v29, v32, v34, v35, *(&v35 + 1), v36, *(&v36 + 1), a1, a2, v37[2], v38, v39);
  }

  sub_261FE6B78(v7, v3);
  return sub_261F6ADEC(a1, a2);
}

id sub_261FE5020@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 sessionType];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0x10104uLL >> (8 * result);
    if (result >= 5)
    {
      LOBYTE(v4) = 4;
    }

    *a1 = v4;
  }

  return result;
}

id sub_261FE5078(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26203A18C();
  v8[0] = 0;
  v4 = [v2 openStreamWithName:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2620393FC();

    swift_willThrow();
  }

  return v4;
}

id CUPairedPeer.lastSeenWireProtocolVersion.getter()
{
  v1 = sub_261F6752C(v0, &selRef_info);
  if (!v1)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  v8 = 0xD00000000000001BLL;
  v9 = 0x800000026204F450;
  sub_26203A79C();
  sub_261F678B4(v2, &v11);

  sub_261F67914(v10);
  if (!*(&v12 + 1))
  {
LABEL_6:
    sub_261FCB894(&v11, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v10[0];
    v4 = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = v3;
    v7.receiver = v5;
    v7.super_class = v4;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  return 0;
}

void CUPairedPeer.lastSeenWireProtocolVersion.setter(void *a1)
{
  if (sub_261F6752C(v1, &selRef_info))
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_15_6(v3, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v4, v5, v6, v7, v8, a1, v42, v44, v46, v48, v50, v52[0]);
    sub_26203A79C();
    if (v41)
    {
      v10 = *&v41[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];
      v53 = MEMORY[0x277D83B88];
      v52[0] = v10;
      OUTLINED_FUNCTION_22_5(v41, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_19(isUniquelyReferenced_nonNull_native, v12, v13);
      OUTLINED_FUNCTION_21_5(v14, v15, v16, v17, v18, v19, v20, v21, v41, v43, v45, v47, v49, v51, v52[0], v52[1], v52[2], v53, v54);
    }

    else
    {
      sub_261F67388();
      if (v22)
      {
        OUTLINED_FUNCTION_16_9();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_11_8();
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
        v24 = OUTLINED_FUNCTION_8_9(v23);
        v32 = OUTLINED_FUNCTION_9_10(v24, v25, v26, v27, v28, v29, v30, v31, 0, v43, v45);
        v38 = OUTLINED_FUNCTION_13_8(v32, v33, v34, v35, v36, v37);
        OUTLINED_FUNCTION_14_10(v38, v39, MEMORY[0x277D84030]);
      }

      else
      {
        OUTLINED_FUNCTION_7_10();
      }

      sub_261F67914(v55);
      sub_261FCB894(v52, &qword_27FEF9870, &qword_26203C960);
    }

    sub_26203A0BC();
    OUTLINED_FUNCTION_16_9();

    [v1 setInfo_];
  }

  else
  {
    [v1 setInfo_];
  }
}

uint64_t sub_261FE5428()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA0E8 = result;
  return result;
}

uint64_t IdentityError.hashValue.getter()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

void CUPairedPeer.udid.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_3_17();
  v61[1] = v8;
  v9 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_15_6(v10, v11, MEMORY[0x277D837E0], v12, v13, v14, v15, v16, v49, v51, v53, v55, v57, v59, v17);
  v18 = sub_26203A79C();
  if (a2)
  {
    OUTLINED_FUNCTION_22_5(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19(isUniquelyReferenced_nonNull_native, v21, v22);
    OUTLINED_FUNCTION_21_5(v23, v24, v25, v26, v27, v28, v29, v30, v50, v52, v54, v56, v58, v60, a1, a2, v61[2], v9, v61[4]);
  }

  else
  {
    sub_261F67388();
    if (v31)
    {
      OUTLINED_FUNCTION_16_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_8();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      v33 = OUTLINED_FUNCTION_8_9(v32);
      v41 = OUTLINED_FUNCTION_9_10(v33, v34, v35, v36, v37, v38, v39, v40, v50, v52, v54);
      v47 = OUTLINED_FUNCTION_13_8(v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_14_10(v47, v48, MEMORY[0x277D84030]);
    }

    else
    {
      OUTLINED_FUNCTION_7_10();
    }

    sub_261F67914(v62);
    sub_261FCB894(v61, &qword_27FEF9870, &qword_26203C960);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.udid.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.udid.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_19_5();
}

id CUPairedPeer.ecid.getter()
{
  v1 = sub_261F6752C(v0, &selRef_info);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  OUTLINED_FUNCTION_3_17();
  sub_26203A79C();
  sub_261F678B4(v2, &v7);

  sub_261F67914(v6);
  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_261FCB894(&v7, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  sub_261F9B6D0(0, &unk_28108B270, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v6[0];
  v4 = [v6[0] unsignedLongLongValue];

  return v4;
}

void CUPairedPeer.ecid.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_3_17();
  v60 = v8;
  OUTLINED_FUNCTION_15_6(v9, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v10, v11, v12, v13, v14, v47, v49, v51, v53, v55, v57, v15);
  v16 = sub_26203A79C();
  if (a2)
  {
    sub_261F67388();
    if (v18)
    {
      OUTLINED_FUNCTION_16_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_8();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      v20 = OUTLINED_FUNCTION_8_9(v19);
      v28 = OUTLINED_FUNCTION_9_10(v20, v21, v22, v23, v24, v25, v26, v27, v48, v50, v52);
      v34 = OUTLINED_FUNCTION_13_8(v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_14_10(v34, v35, MEMORY[0x277D84030]);
    }

    else
    {
      OUTLINED_FUNCTION_7_10();
    }

    sub_261F67914(v64);
    sub_261FCB894(&v59, &qword_27FEF9870, &qword_26203C960);
  }

  else
  {
    v62 = MEMORY[0x277D84D38];
    OUTLINED_FUNCTION_22_5(v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19(isUniquelyReferenced_nonNull_native, v37, v38);
    OUTLINED_FUNCTION_21_5(v39, v40, v41, v42, v43, v44, v45, v46, v48, v50, v52, v54, v56, v58, a1, v60, v61, v62, v63);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.ecid.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.ecid.getter();
  *(v1 + 8) = v2 & 1;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t CUPairedPeer.btAddressString.getter()
{
  v1 = sub_261F6752C(v0, &selRef_info);
  if (v1)
  {
    v24[0] = 0x726464417462;
    v24[1] = 0xE600000000000000;
    v5 = OUTLINED_FUNCTION_20_7(v1, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v2, v3, v4);
    OUTLINED_FUNCTION_12_9(v5, v6, v7, v8, v9, v10, v11);

    v12 = sub_261F67914(v23);
    if (v24[3])
    {
      v13 = OUTLINED_FUNCTION_4_12(v12);
      return OUTLINED_FUNCTION_5_10(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v24, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

uint64_t sub_261FE5B68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261F81D84(*a1, v2);
  return CUPairedPeer.remoteUnlockKey.setter(v1, v2);
}

uint64_t CUPairedPeer.remoteUnlockKey.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.remoteUnlockKey.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t sub_261FE5BEC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_108();
    sub_261F81D84(v2, v3);
    v4 = OUTLINED_FUNCTION_108();
    CUPairedPeer.remoteUnlockKey.setter(v4, v5);
    v6 = OUTLINED_FUNCTION_108();

    return sub_261F6ADEC(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_108();
    return CUPairedPeer.remoteUnlockKey.setter(v9, v10);
  }
}

uint64_t CUPairedPeer.serialNumber.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_0_24();
    v5 = OUTLINED_FUNCTION_20_7(v1, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v2, v3, v4);
    OUTLINED_FUNCTION_12_9(v5, v6, v7, v8, v9, v10, v11);

    v12 = sub_261F67914(v23);
    if (v25)
    {
      v13 = OUTLINED_FUNCTION_4_12(v12);
      return OUTLINED_FUNCTION_5_10(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v24, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

uint64_t sub_261FE5D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_75();
  return a5(v6);
}

void CUPairedPeer.serialNumber.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_24();
  v8 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_15_6(v9, v10, MEMORY[0x277D837E0], v11, v12, v13, v14, v15, v47, v49, v51, v53, v55, v57, v59[0]);
  v16 = sub_26203A79C();
  if (a2)
  {
    OUTLINED_FUNCTION_22_5(v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19(isUniquelyReferenced_nonNull_native, v19, v20);
    OUTLINED_FUNCTION_21_5(v21, v22, v23, v24, v25, v26, v27, v28, v48, v50, v52, v54, v56, v58, a1, a2, v59[2], v8, v59[4]);
  }

  else
  {
    sub_261F67388();
    if (v29)
    {
      OUTLINED_FUNCTION_16_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      v31 = OUTLINED_FUNCTION_8_9(v30);
      v39 = OUTLINED_FUNCTION_9_10(v31, v32, v33, v34, v35, v36, v37, v38, v48, v50, v52);
      v45 = OUTLINED_FUNCTION_13_8(v39, v40, v41, v42, v43, v44);
      OUTLINED_FUNCTION_14_10(v45, v46, MEMORY[0x277D84030]);
    }

    else
    {
      OUTLINED_FUNCTION_7_10();
    }

    sub_261F67914(v60);
    sub_261FCB894(v59, &qword_27FEF9870, &qword_26203C960);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.serialNumber.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.serialNumber.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t sub_261FE5EF8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_75();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_75();
    return a3(v6);
  }
}

uint64_t sub_261FE5F70()
{
  v1 = sub_261F6752C(v0, &selRef_info);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  v2 = v1;
  *&v5 = 0xD000000000000020;
  *(&v5 + 1) = 0x8000000262050BF0;
  sub_26203A79C();
  sub_261F678B4(v2, &v5);

  sub_261F67914(v4);
  if (!*(&v6 + 1))
  {
LABEL_8:
    sub_261FCB894(&v5, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

void sub_261FE6070(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  *&v12 = 0xD000000000000020;
  *(&v12 + 1) = 0x8000000262050BF0;
  sub_26203A79C();
  if (a2)
  {
    v8 = sub_261F67388();
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      *&v11 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      sub_26203A8EC();
      sub_261F67914(*(v7 + 48) + 40 * v10);
      sub_261F8D184((*(v7 + 56) + 32 * v10), &v12);
      sub_26203A90C();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    sub_261F67914(v14);
    sub_261FCB894(&v12, &qword_27FEF9870, &qword_26203C960);
  }

  else
  {
    *(&v13 + 1) = MEMORY[0x277D839F8];
    *&v12 = a1;
    sub_261F8D184(&v12, &v11);
    swift_isUniquelyReferenced_nonNull_native();
    sub_261FA447C();
    sub_261F67914(v14);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.initialPairingTime.getter@<X0>(uint64_t a1@<X8>)
{
  sub_261FE5F70();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_2620395CC();
    v3 = 0;
  }

  v4 = sub_2620395EC();

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

uint64_t sub_261FE62A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_261F8D618(a1, &v6 - v3);
  return CUPairedPeer.initialPairingTime.setter(v4);
}

uint64_t CUPairedPeer.initialPairingTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_261F8D618(a1, &v11 - v3);
  v5 = sub_2620395EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (EnumTagSinglePayload == 1)
  {
    sub_261FCB894(v4, &qword_27FEF91C0, &qword_26203CD50);
    v7 = 0;
  }

  else
  {
    sub_2620395DC();
    v9 = v8;
    (*(*(v5 - 8) + 8))(v4, v5);
    v7 = v9;
  }

  sub_261FE6070(v7, EnumTagSinglePayload == 1);
  return sub_261FCB894(a1, &qword_27FEF91C0, &qword_26203CD50);
}

void (*CUPairedPeer.initialPairingTime.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  CUPairedPeer.initialPairingTime.getter(v4);
  return sub_261FE651C;
}

void sub_261FE651C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_261F8D618(v3, v2);
    CUPairedPeer.initialPairingTime.setter(v2);
    sub_261FCB894(v3, &qword_27FEF91C0, &qword_26203CD50);
  }

  else
  {
    CUPairedPeer.initialPairingTime.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t CUPairedPeer.isPairedForAutomation.getter()
{
  if (!sub_261F6752C(v0, &selRef_acl))
  {
    OUTLINED_FUNCTION_7_10();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_17_7();
  v5 = OUTLINED_FUNCTION_20_7(v1, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v2, v3, v4);
  OUTLINED_FUNCTION_12_9(v5, v6, v7, v8, v9, v10, v11);

  v12 = sub_261F67914(v14);
  if (!v16)
  {
LABEL_6:
    sub_261FCB894(v15, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  result = OUTLINED_FUNCTION_4_12(v12);
  if (result)
  {
    return v14[0];
  }

  return result;
}

uint64_t CUPairedPeer.associatedLockdownHostBUID.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_17_7();
    v5 = OUTLINED_FUNCTION_20_7(v1, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v2, v3, v4);
    OUTLINED_FUNCTION_12_9(v5, v6, v7, v8, v9, v10, v11);

    v12 = sub_261F67914(v23);
    if (v25)
    {
      v13 = OUTLINED_FUNCTION_4_12(v12);
      return OUTLINED_FUNCTION_5_10(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v24, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

void sub_261FE670C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CUPairedPeer.lastSeenWireProtocolVersion.setter(v1);
}

uint64_t CUPairedPeer.lastSeenWireProtocolVersion.modify(id *a1)
{
  a1[1] = v1;
  *a1 = CUPairedPeer.lastSeenWireProtocolVersion.getter();
  return OUTLINED_FUNCTION_19_5();
}

void sub_261FE6780(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CUPairedPeer.lastSeenWireProtocolVersion.setter(v2);
  }

  else
  {
    CUPairedPeer.lastSeenWireProtocolVersion.setter(*a1);
  }
}

uint64_t CUPairedPeer.verify(authTag:data:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D441B0])
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D441B0]) init];
    v10 = sub_261FC5F18(v5);
    if (v11 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v14 = v10;
      v15 = v11;
      v12 = sub_26203952C();
      sub_261F6ADEC(v14, v15);
    }

    [v9 setDeviceIRKData_];

    OUTLINED_FUNCTION_75();
    v16 = sub_26203952C();
    v17 = sub_26203952C();
    v37[0] = 0;
    v18 = [v9 verifyAuthTag:v16 data:v17 type:a5 error:v37];

    if (v18)
    {
      v19 = v37[0];

      return 1;
    }

    v21 = v37[0];
    v22 = sub_2620393FC();

    swift_willThrow();
    if (a5 == 2 && (CUPairedPeer.btAddressString.getter(), v23) && (v24 = sub_26203A18C(), , v25 = _RPTextToMACAddress(v24), v24, v25))
    {
      v26 = sub_26203954C();
      v28 = v27;

      if (MEMORY[0x2667219E0](v26, v28, a3, a4))
      {
        v29 = sub_26203A47C();
        if (qword_27FEF8680 != -1)
        {
          OUTLINED_FUNCTION_10_7(&qword_27FEF8680);
        }

        v30 = qword_27FEFA0E8;
        if (os_log_type_enabled(qword_27FEFA0E8, v29))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v38[0] = v32;
          *v31 = 136315138;
          v37[0] = CUPairedPeer.udid.getter();
          v37[1] = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
          v34 = sub_26203A20C();
          v36 = sub_261F67FE4(v34, v35, v38);

          *(v31 + 4) = v36;
          _os_log_impl(&dword_261F5B000, v30, v29, "Identity verified using BT Address in pairing record instead of authTag for device with udid: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          MEMORY[0x266724180](v32, -1, -1);
          MEMORY[0x266724180](v31, -1, -1);
        }

        sub_261F6BFFC(v26, v28);
        return 1;
      }

      sub_261F6BFFC(v26, v28);
    }

    else
    {
    }
  }

  else
  {
    v13 = sub_26203A49C();
    if (qword_27FEF8680 != -1)
    {
      OUTLINED_FUNCTION_10_7(&qword_27FEF8680);
    }

    sub_26203969C(v13, &dword_261F5B000, qword_27FEFA0E8, "Unable to verify auth tags on platforms where Rapport is unavailable", 68, 2, MEMORY[0x277D84F90]);
  }

  return 0;
}

void sub_261FE6B78(uint64_t a1, void *a2)
{
  v3 = sub_26203A0BC();

  [a2 setInfo_];
}

unint64_t sub_261FE6BFC()
{
  result = qword_27FEFA0F0;
  if (!qword_27FEFA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA0F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdentityError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    return a10;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_27_4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

uint64_t sub_261FE6DE0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_43_3(v1);

  sub_261FEC34C(sub_261FEDEEC, v0, &unk_28748EC88, sub_261FEDF44, sub_261FD9D88);
}

uint64_t sub_261FE6EB4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_43_3(v1);

  sub_261FEC34C(sub_261FEDE84, v0, &unk_28748EBE8, sub_261FEDE90, sub_261FDFE0C);
}

uint64_t sub_261FE6F88(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_261FEC34C(sub_261FEDD24, v5, &unk_28748EB48, sub_261FEDD30, sub_261FEC0B4);
}

uint64_t sub_261FE7078()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA0F8 = result;
  return result;
}

uint64_t sub_261FE7174()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_261FE71A4(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_43(v2 + 56, a2);
  *(v2 + 56) = a1;
  return result;
}

void sub_261FE7268()
{
  OUTLINED_FUNCTION_96();
  v3 = v2;
  v5 = v4;
  v6 = sub_262039FAC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v12 = v11 - v10;
  v13 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v25 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_46();
    v16 = swift_allocObject();
    *(v16 + 16) = v5;
    *(v16 + 24) = v3;
    OUTLINED_FUNCTION_8_10(v16);
    v27 = 1107296256;
    OUTLINED_FUNCTION_1();
    v28 = v17;
    v29 = &block_descriptor_9_0;
  }

  else
  {
    sub_26203970C();
    OUTLINED_FUNCTION_46();
    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    *(v22 + 24) = v3;
    sub_261FECEA8();
    sub_261FECEFC();

    sub_26203984C();

    sub_26203975C();
    OUTLINED_FUNCTION_46();
    v23 = swift_allocObject();
    *(v23 + 16) = v5;
    *(v23 + 24) = v3;
    OUTLINED_FUNCTION_8_10(v23);
    v27 = 1107296256;
    OUTLINED_FUNCTION_1();
    v28 = v24;
    v29 = &block_descriptor_9;
  }

  v18 = _Block_copy(&v26);

  sub_262039FCC();
  OUTLINED_FUNCTION_0_25();
  sub_261FEDBA0(v19, v20, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  OUTLINED_FUNCTION_14_11();
  sub_26203A75C();
  v21 = OUTLINED_FUNCTION_32_3();
  MEMORY[0x266722A20](v21);
  _Block_release(v18);
  (*(v8 + 8))(v12, v6);
  (*(v25 + 8))(v1, v13);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FE765C(void (*a1)(_BYTE *))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  __src[1] = v6[1];
  sub_261F9D610();
  v2 = swift_allocError();
  sub_26203AD4C();
  __src[0] = v2;
  sub_261F65314(__src);
  memcpy(__dst, __src, 0x92uLL);
  a1(__dst);
  memcpy(v6, __dst, 0x92uLL);
  return sub_261F6A760(v6);
}

uint64_t sub_261FE7774(void *__src, void (*a2)(_BYTE *))
{
  memcpy(__dst, __src, 0x93uLL);
  if (sub_261F65308(__dst) == 1)
  {
    nullsub_1();
    __srca[0] = *v4;
    sub_261F65314(__srca);
    memcpy(v10, __srca, 0x92uLL);
    memcpy(v12, __src, sizeof(v12));
    nullsub_1();
    v6 = *v5;
  }

  else
  {
    nullsub_1();
    memcpy(__srca, v7, 0x92uLL);
    sub_261FEDDA4(__srca);
    memcpy(v10, __srca, 0x92uLL);
    memcpy(v12, __src, sizeof(v12));
    nullsub_1();
    sub_261FBCBCC(v8, v13);
  }

  a2(v10);
  memcpy(v13, v10, 0x92uLL);
  return sub_261F6A760(v13);
}

uint64_t sub_261FE788C(uint64_t (*a1)(_BYTE *))
{
  sub_261FDBAD0(__src);
  memcpy(v3, __src, 0x92uLL);
  return a1(v3);
}

void sub_261FE78E4()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_262039FAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40_3();
  v21 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v13 = v12 - v11;
  memcpy(v22, v6, 0x92uLL);
  sub_261FECEA8();
  sub_261FECEFC();
  sub_26203973C();
  OUTLINED_FUNCTION_46();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;
  v22[4] = sub_261FECF60;
  v22[5] = v14;
  v22[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_9_11(COERCE_DOUBLE(1107296256));
  v22[2] = v15;
  v22[3] = &block_descriptor_21;
  v16 = _Block_copy(v22);

  sub_262039FCC();
  OUTLINED_FUNCTION_0_25();
  sub_261FEDBA0(v17, v18, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  OUTLINED_FUNCTION_14_11();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v13, v0, v16);
  _Block_release(v16);
  v19 = OUTLINED_FUNCTION_28_5();
  v20(v19);
  (*(v9 + 8))(v13, v21);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FE7C88()
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_261F9D610();
  OUTLINED_FUNCTION_72_0();
  swift_allocError();
  sub_26203AD4C();
  return swift_willThrow();
}

uint64_t NWInterface.isAWDL.getter()
{
  if (sub_262039B0C() == 0x306C647761 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v2 = sub_26203AC0C();

    return v2 & 1;
  }
}

uint64_t sub_261FE7E50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v1);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  OUTLINED_FUNCTION_40(v3);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  OUTLINED_FUNCTION_40(v7);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();

  sub_262039B8C();

  v11 = sub_262039E8C();
  v12 = OUTLINED_FUNCTION_37_2();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    v14 = &qword_27FEFA108;
    v15 = &qword_2620434D8;
    v16 = v0;
LABEL_7:
    sub_261F66E60(v16, v14, v15);
    v21 = 0;
    return v21 & 1;
  }

  sub_262039E5C();
  OUTLINED_FUNCTION_71();
  (*(v17 + 8))(v0, v11);
  v18 = sub_262039A7C();
  if (OUTLINED_FUNCTION_44_1(v18) == 1)
  {
    v14 = &qword_27FEFA110;
    v15 = &unk_2620434E0;
    v16 = v6;
    goto LABEL_7;
  }

  sub_262039A6C();
  OUTLINED_FUNCTION_71();
  (*(v19 + 8))(v6, v0);
  v20 = sub_262039B3C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v20) == 1)
  {
    v14 = &unk_27FEF9B60;
    v15 = &unk_262040530;
    v16 = v10;
    goto LABEL_7;
  }

  if (sub_262039B0C() == 0x306C647761 && v23 == 0xE500000000000000)
  {

    v21 = 1;
  }

  else
  {
    v21 = sub_26203AC0C();
  }

  OUTLINED_FUNCTION_71();
  v25 = OUTLINED_FUNCTION_108();
  v26(v25);
  return v21 & 1;
}

uint64_t sub_261FE811C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for AtomicCounter();
  OUTLINED_FUNCTION_46();
  swift_allocObject();
  result = AtomicCounter.init()();
  *a2 = result;
  return result;
}

uint64_t sub_261FE8158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_75();
  return a5(v6);
}

uint64_t sub_261FE819C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_261FE81E4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43(v1 + 16, v3);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_261FE8254()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
}

uint64_t sub_261FE8288(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 32, a2);
  *(v2 + 32) = a1;
}

uint64_t sub_261FE830C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 41);
}

uint64_t sub_261FE833C(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_43(v2 + 41, a2);
  *(v2 + 41) = a1;
  return result;
}

BOOL sub_261FE83B4()
{
  sub_261FE8408(v2);
  v0 = v3 != 0;
  sub_261F66E60(v2, &qword_27FEF9980, &qword_26203F7C0);
  return v0;
}

uint64_t sub_261FE8408@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_34_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_40(v6);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_37();
  v8 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  sub_261FEDB40(v1 + v8, v2, &qword_27FEFA118, &qword_26204AE60);
  v9 = type metadata accessor for DiscoveredBonjourAdvert(0);
  v10 = OUTLINED_FUNCTION_37_2();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) == 1)
  {
    result = sub_261F66E60(v2, &qword_27FEFA118, &qword_26204AE60);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v9;
    *(a1 + 32) = &protocol witness table for DiscoveredBonjourAdvert;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return sub_261FECF8C(v2, boxed_opaque_existential_0);
  }

  return result;
}

uint64_t sub_261FE8514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_261FEDB40(a1, &v6 - v3, &qword_27FEFA118, &qword_26204AE60);
  return sub_261FE8624(v4);
}

uint64_t sub_261FE85C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261FEDB40(v1 + v3, a1, &qword_27FEFA118, &qword_26204AE60);
}

uint64_t sub_261FE8624(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  swift_beginAccess();
  sub_261FECFF0(a1, v1 + v3);
  swift_endAccess();
  sub_261FEA704();
  return sub_261F66E60(a1, &qword_27FEFA118, &qword_26204AE60);
}

void (*sub_261FE86A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_33(v1 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint);
  return sub_261FE86F8;
}

void sub_261FE86F8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_261FEA704();
  }
}

uint64_t sub_261FE872C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_261FE882C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_261FEDB0C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_261FE879C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_261F7D45C(v1, v2);
  return sub_261FE8884();
}

uint64_t sub_261FE882C()
{
  v1 = (v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v2 = *v1;
  sub_261F7D45C(*v1, v1[1]);
  return v2;
}

uint64_t sub_261FE8884()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  return sub_261F665E4(v4, v5);
}

uint64_t NWConnectionControlChannelTransport.__allocating_init(connection:bonjourEndpoint:netLinkManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_36_3();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_75();
  NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)(v5, v6, a3);
  return v4;
}

uint64_t NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3;
  OUTLINED_FUNCTION_36_3();
  *(v6 + 40) = 0;
  v8 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  v9 = type metadata accessor for DiscoveredBonjourAdvert(0);
  __swift_storeEnumTagSinglePayload(v6 + v8, 1, 1, v9);
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint) = 0;
  v10 = (v6 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  *v10 = 0;
  v10[1] = 0;
  *(v6 + 32) = v5;
  swift_beginAccess();

  sub_261FECFF0(v4, v6 + v8);
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkManager) = a3;
  v11 = qword_27FEF8698;
  v12 = a3;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v13 = sub_26203ABAC();
  MEMORY[0x266722710](v13);

  sub_261F66E60(v4, &qword_27FEFA118, &qword_26204AE60);
  *(v6 + 16) = 762340212;
  *(v6 + 24) = 0xE400000000000000;
  return v6;
}

void sub_261FE8AFC()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_262039FAC();
  OUTLINED_FUNCTION_0();
  v67 = v9;
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v65 = v11 - v10;
  OUTLINED_FUNCTION_9_5();
  v66 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v64 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v63 = v15 - v14;
  OUTLINED_FUNCTION_9_5();
  v59 = sub_262039F9C();
  OUTLINED_FUNCTION_0();
  v58 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  v57 = (v19 - v18);
  OUTLINED_FUNCTION_9_5();
  v70 = sub_26203A03C();
  OUTLINED_FUNCTION_0();
  v61 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v56 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v69 = &v56 - v24;
  OUTLINED_FUNCTION_9_5();
  sub_262039A7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_74();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v29 = *(v0 + 32);
  OUTLINED_FUNCTION_63();
  v30 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_14_1();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v29;
  v60 = v5;
  v31[4] = v5;
  v31[5] = v3;
  v31[6] = v7;
  swift_retain_n();

  v62 = v3;

  v32 = v7;
  sub_261F7D45C(sub_261FED060, v31);
  sub_262039BDC();

  sub_261F7D45C(sub_261FED070, v1);
  OUTLINED_FUNCTION_28_5();
  sub_262039BEC();

  sub_262039C8C();

  v33 = OUTLINED_FUNCTION_34_3();
  if (v34(v33) == *MEMORY[0x277CD8B00])
  {
    v35 = OUTLINED_FUNCTION_34_3();
    v36(v35);

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA130, &qword_2620434F0);
    sub_261F66E60(v28 + *(v37 + 80), &unk_27FEF9B60, &unk_262040530);
    v38 = v56;
    sub_26203A02C();
    v39 = v57;
    *v57 = 10;
    v40 = v58;
    v41 = v59;
    (*(v58 + 104))(v39, *MEMORY[0x277D85188], v59);
    MEMORY[0x266722530](v38, v39);
    (*(v40 + 8))(v39, v41);
    v59 = v61[1];
    v59(v38, v70);
    OUTLINED_FUNCTION_63();
    v42 = swift_allocObject();
    swift_weakInit();
    v61 = v32;
    v43 = *(v1 + 32);
    OUTLINED_FUNCTION_14_1();
    v44 = swift_allocObject();
    v44[2] = v42;
    v44[3] = v43;
    v45 = v60;
    v44[4] = 10;
    v44[5] = v45;
    v44[6] = v62;
    v72[4] = sub_261FED078;
    v72[5] = v44;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 1107296256;
    OUTLINED_FUNCTION_1();
    v72[2] = v46;
    v72[3] = &block_descriptor_34;
    v47 = _Block_copy(v72);
    swift_retain_n();

    v48 = v63;
    sub_262039FCC();
    v71 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_0_25();
    sub_261FEDBA0(v49, v50, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    v51 = v65;
    v52 = v68;
    sub_26203A75C();
    v53 = v69;
    MEMORY[0x2667229F0](v69, v48, v51, v47);
    _Block_release(v47);

    (*(v67 + 8))(v51, v52);
    (*(v64 + 8))(v48, v66);
    v59(v53, v70);
  }

  else
  {
    v54 = OUTLINED_FUNCTION_34_3();
    v55(v54);
  }

  sub_262039C4C();

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FE91C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6)
{
  v100 = a4;
  v103 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v81[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v81[-v12];
  v92 = sub_262039B3C();
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v101 = &v81[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v81[-v15];
  v16 = sub_262039E8C();
  v95 = *(v16 - 8);
  v96 = v16;
  MEMORY[0x28223BE20](v16);
  v94 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_262039E9C();
  v98 = *(v18 - 8);
  v99 = v18;
  MEMORY[0x28223BE20](v18);
  v97 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_262039C3C();
  v102 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v81[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v81[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v81[-v27];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    swift_beginAccess();
    if (*(v30 + 32) != a3)
    {
    }

    v88 = v30;
    v31 = sub_26203A4AC();
    if (qword_27FEF8688 != -1)
    {
      swift_once();
    }

    v84 = a6;
    v86 = a5;
    v32 = qword_27FEFA0F8;
    v33 = v102;
    v34 = *(v102 + 16);
    v34(v28, v103, v20);
    v87 = v32;
    if (os_log_type_enabled(v32, v31))
    {
      v35 = swift_slowAlloc();
      v82 = v31;
      v36 = v35;
      v83 = swift_slowAlloc();
      v106[0] = v83;
      *v36 = 136446466;
      v85 = v34;
      v37 = v88;
      swift_beginAccess();
      v39 = *(v37 + 16);
      v38 = *(v37 + 24);

      v40 = sub_261F67FE4(v39, v38, v106);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v85(v26, v28, v20);
      v41 = sub_26203A20C();
      v43 = v42;
      v44 = *(v33 + 8);
      v44(v28, v20);
      v45 = sub_261F67FE4(v41, v43, v106);
      v34 = v85;

      *(v36 + 14) = v45;
      v46 = v87;
      _os_log_impl(&dword_261F5B000, v87, v82, "%{public}s: Connection state changed to %s", v36, 0x16u);
      v47 = v83;
      swift_arrayDestroy();
      MEMORY[0x266724180](v47, -1, -1);
      MEMORY[0x266724180](v36, -1, -1);
      v48 = v101;
    }

    else
    {
      v44 = *(v33 + 8);
      v44(v28, v20);
      v48 = v101;
      v46 = v87;
    }

    v34(v23, v103, v20);
    v49 = (*(v33 + 88))(v23, v20);
    if (v49 == *MEMORY[0x277CD8DE8])
    {
      (*(v33 + 96))(v23, v20);
      v51 = v97;
      v50 = v98;
      v52 = v99;
      (*(v98 + 32))(v97, v23, v99);

      sub_262039C6C();

      sub_261FEDBA0(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v53 = swift_allocError();
      (*(v50 + 16))(v54, v51, v52);
      v105[0] = v53;
      sub_261F65314(v105);
      memcpy(v104, v105, 0x92uLL);
      v100(v104);
LABEL_13:

      memcpy(v106, v104, 0x92uLL);
      sub_261F6A760(v106);
      return (*(v50 + 8))(v51, v52);
    }

    v55 = v49;
    if (v49 == *MEMORY[0x277CD8DE0])
    {
      (*(v33 + 96))(v23, v20);
      v51 = v97;
      v50 = v98;
      v52 = v99;
      (*(v98 + 32))(v97, v23, v99);
      sub_261FEDBA0(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v56 = swift_allocError();
      (*(v50 + 16))(v57, v51, v52);
      v105[0] = v56;
      sub_261F65314(v105);
      memcpy(v104, v105, 0x92uLL);
      v100(v104);
      goto LABEL_13;
    }

    if (v49 == *MEMORY[0x277CD8DD8])
    {
    }

    v58 = v88;
    if (v49 == *MEMORY[0x277CD8DF8])
    {
    }

    if (v49 == *MEMORY[0x277CD8DD0])
    {

      v59 = v93;
      sub_262039B8C();

      v60 = v96;
      if (__swift_getEnumTagSinglePayload(v59, 1, v96) == 1)
      {
        sub_261F66E60(v59, &qword_27FEFA108, &qword_2620434D8);
        v61 = sub_26203A48C();
        v62 = os_log_type_enabled(v46, v61);
        v63 = v86;
        if (v62)
        {
          v64 = swift_slowAlloc();
          v65 = v46;
          v66 = swift_slowAlloc();
          v106[0] = v66;
          *v64 = 136446210;
          swift_beginAccess();
          v67 = *(v58 + 16);
          v68 = *(v58 + 24);

          v69 = sub_261F67FE4(v67, v68, v106);
          v63 = v86;

          *(v64 + 4) = v69;
          _os_log_impl(&dword_261F5B000, v65, v61, "%{public}s: Transport connection in state ready but has no associated path", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
          MEMORY[0x266724180](v66, -1, -1);
          MEMORY[0x266724180](v64, -1, -1);
        }

        goto LABEL_28;
      }

      (*(v95 + 32))(v94, v59, v60);
      v71 = v90;
      sub_262039E5C();
      v72 = sub_262039A7C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v72);
      v63 = v86;
      if (EnumTagSinglePayload == 1)
      {
        sub_261F66E60(v71, &qword_27FEFA110, &unk_2620434E0);
        v74 = v91;
        __swift_storeEnumTagSinglePayload(v91, 1, 1, v92);
      }

      else
      {
        v74 = v91;
        sub_262039A6C();
        (*(*(v72 - 8) + 8))(v71, v72);
        v75 = v92;
        if (__swift_getEnumTagSinglePayload(v74, 1, v92) != 1)
        {
          (*(v89 + 32))(v48, v74, v75);
          v78 = v58 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate;
          swift_beginAccess();
          v79 = *v78;
          if (*v78)
          {
            v80 = *(v78 + 8);

            if ((v79(v48) & 1) == 0)
            {
              (*(v89 + 8))(v48, v75);
              sub_261F665E4(v79, v80);
              goto LABEL_27;
            }

            sub_261FEBA1C();
            sub_261F665E4(v79, v80);
          }

          (*(v89 + 8))(v48, v75);
LABEL_27:
          v76 = v94;
          sub_261FEA998();
          (*(v95 + 8))(v76, v60);
LABEL_28:
          sub_261FDBAD0(v106);
          memcpy(v105, v106, 0x92uLL);
          v77 = v100;
          v100(v105);
          sub_261FE6F88(v77, v63);
        }
      }

      sub_261F66E60(v74, &unk_27FEF9B60, &unk_262040530);
      goto LABEL_27;
    }

    v70 = *MEMORY[0x277CD8DF0];

    if (v55 != v70)
    {
      return (v44)(v23, v20);
    }
  }

  return result;
}

uint64_t sub_261FE9E08(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    v3 = sub_26203A48C();
    if (qword_27FEF8688 != -1)
    {
      swift_once();
    }

    v4 = qword_27FEFA0F8;
    if (os_log_type_enabled(qword_27FEFA0F8, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      swift_beginAccess();
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);

      v9 = sub_261F67FE4(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_261F5B000, v4, v3, "%{public}s: Cancelling TCP control channel transport as it is no longer viable", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x266724180](v6, -1, -1);
      MEMORY[0x266724180](v5, -1, -1);
    }

    return sub_261FEA66C();
  }

  return result;
}

void *sub_261FE9F60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v7 = sub_262039C3C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v25[-v12];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v27 = a4;
    swift_beginAccess();
    if (v15[4] == a2)
    {

      sub_262039C5C();

      (*(v8 + 104))(v11, *MEMORY[0x277CD8DF8], v7);
      v16 = MEMORY[0x2667220D0](v13, v11);
      v17 = *(v8 + 8);
      v17(v11, v7);
      v17(v13, v7);
      if (v16)
      {
        v26 = sub_26203A48C();
        if (qword_27FEF8688 != -1)
        {
          swift_once();
        }

        v18 = qword_27FEFA0F8;
        if (os_log_type_enabled(qword_27FEFA0F8, v26))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v30[0] = v20;
          *v19 = 136446466;
          swift_beginAccess();
          v22 = v15[2];
          v21 = v15[3];

          v23 = sub_261F67FE4(v22, v21, v30);

          *(v19 + 4) = v23;
          *(v19 + 12) = 2048;
          *(v19 + 14) = a3;
          _os_log_impl(&dword_261F5B000, v18, v26, "%{public}s: Cancelling TCP control channel transport as connection is stuck preparing after %ld seconds", v19, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x266724180](v20, -1, -1);
          MEMORY[0x266724180](v19, -1, -1);
        }

        sub_261F9BCE0();
        sub_26203ACDC();
        v29[0] = v30[0];
        v29[1] = v30[1];
        sub_261F9D610();
        v24 = swift_allocError();
        sub_26203AD4C();
        v29[0] = v24;
        sub_261F65314(v29);
        memcpy(v28, v29, 0x92uLL);
        v27(v28);
        memcpy(v30, v28, 0x92uLL);
        sub_261F6A760(v30);
        sub_261FEA66C();
      }
    }
  }

  return result;
}

uint64_t sub_261FEA308@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v4);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  OUTLINED_FUNCTION_40(v6);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();

  sub_262039B8C();

  v8 = sub_262039E8C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_261F66E60(v2, &qword_27FEFA108, &qword_2620434D8);
    sub_262039A7C();
    v9 = OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
LABEL_4:
    sub_261F66E60(v1, &qword_27FEFA110, &unk_2620434E0);
LABEL_5:
    v25[3] = MEMORY[0x277D837D0];
    v25[0] = 0xD00000000000002ELL;
    v25[1] = 0x8000000262050CB0;
    v26 = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    v17 = v16;
    *v16 = 1;
    v24 = 1;
    v18 = ControlChannelConnectionError.Message.format(code:)(&v24);
    sub_261F65C08(v25);
    *(v17 + 8) = v18;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 7) = 0;
    return swift_willThrow();
  }

  sub_262039E6C();
  OUTLINED_FUNCTION_71();
  (*(v12 + 8))(v2, v8);
  v13 = sub_262039A7C();
  v14 = OUTLINED_FUNCTION_37_2();
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
    goto LABEL_4;
  }

  v20 = *(v13 - 8);
  if ((*(v20 + 88))(v1, v13) != *MEMORY[0x277CD8B08])
  {
    (*(v20 + 8))(v1, v13);
    goto LABEL_5;
  }

  (*(v20 + 96))(v1, v13);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA138, &qword_2620434F8) + 48);
  sub_262039A4C();
  OUTLINED_FUNCTION_6_1();
  (*(v22 + 32))(a1, v1);
  sub_262039A5C();
  OUTLINED_FUNCTION_6_1();
  return (*(v23 + 8))(v1 + v21);
}

uint64_t sub_261FEA66C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkManager);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint);
    if (v2)
    {
      *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint) = 0;
      v3 = v1;
      [v3 removeEndpoint_];
    }
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();

  sub_262039C6C();
}

void sub_261FEA704()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = type metadata accessor for DiscoveredBonjourAdvert(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  OUTLINED_FUNCTION_40(v7);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9 + 40;
  v11 = sub_26203A4AC();
  if (qword_27FEF8688 != -1)
  {
    OUTLINED_FUNCTION_2_17(&qword_27FEF8688);
  }

  v12 = qword_27FEFA0F8;
  if (os_log_type_enabled(qword_27FEFA0F8, v11))
  {
    OUTLINED_FUNCTION_57_1();
    v13 = swift_slowAlloc();
    v23[0] = OUTLINED_FUNCTION_39_0();
    *v13 = 136446466;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v14 = *(v1 + 16);
    v15 = *(v1 + 24);

    v16 = sub_261F67FE4(v14, v15, v23);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    sub_261FEDB40(v1 + v17, v10, &qword_27FEFA118, &qword_26204AE60);
    if (__swift_getEnumTagSinglePayload(v10, 1, v2))
    {
      sub_261F66E60(v10, &qword_27FEFA118, &qword_26204AE60);
      v18 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    else
    {
      sub_261FEDDC4(v10, v6);
      sub_261F66E60(v10, &qword_27FEFA118, &qword_26204AE60);
      v19 = DiscoveredBonjourAdvert.debugDescription.getter();
      v18 = v20;
      sub_261FEDE28(v6);
    }

    v21 = sub_261F67FE4(v19, v18, v23);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_261F5B000, v12, v11, "%{public}s: bonjour endpoint updated: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  swift_beginAccess();
  *(v1 + 41) = 1;
  OUTLINED_FUNCTION_31_0();
}

void sub_261FEA998()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v117 = v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v109 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v98[-v9];
  v114 = sub_262039A4C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v105 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v107 = &v98[-v16];
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v113 = &v98[-v18];
  OUTLINED_FUNCTION_9_5();
  v19 = sub_262039E8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v115 = v21;
  OUTLINED_FUNCTION_29();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v98[-v24];
  MEMORY[0x28223BE20](v23);
  v28 = &v98[-v27];
  v29 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkManager);
  if (v29)
  {
    v111 = v10;
    v116 = v26;
    v102 = v4;
    v103 = v2;
    v104 = v12;
    v30 = v29;
    v31 = sub_26203A4AC();
    if (qword_27FEF8688 != -1)
    {
      OUTLINED_FUNCTION_2_17(&qword_27FEF8688);
    }

    v32 = qword_27FEFA0F8;
    v33 = v116;
    v34 = *(v116 + 16);
    v34(v28, v117, v19);
    v35 = os_log_type_enabled(v32, v31);
    v108 = v0;
    v106 = v32;
    v112 = v34;
    if (v35)
    {
      OUTLINED_FUNCTION_57_1();
      v99 = v36;
      v37 = swift_slowAlloc();
      v101 = v30;
      v38 = v37;
      v100 = OUTLINED_FUNCTION_39_0();
      v118[0] = v100;
      *v38 = 136446466;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v40 = *(v0 + 16);
      v39 = *(v0 + 24);

      v41 = sub_261F67FE4(v40, v39, v118);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v34(v25, v28, v19);
      sub_26203A20C();
      v42 = *(v33 + 8);
      v42(v28, v19);
      v43 = OUTLINED_FUNCTION_22_1();
      v46 = sub_261F67FE4(v43, v44, v45);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_261F5B000, v32, v99, "%{public}s: Trying to monitor reachability of path: %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      v30 = v101;
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
      v42 = *(v33 + 8);
      v42(v28, v19);
    }

    v47 = v111;
    sub_262039E6C();
    v48 = sub_262039A7C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v48);
    v50 = v112;
    if (EnumTagSinglePayload == 1)
    {
      sub_261F66E60(v47, &qword_27FEFA110, &unk_2620434E0);
      goto LABEL_13;
    }

    v51 = OUTLINED_FUNCTION_28_5();
    if (v52(v51) != *MEMORY[0x277CD8B08])
    {
      v68 = OUTLINED_FUNCTION_28_5();
      v69(v68);
LABEL_13:
      v70 = sub_26203A48C();
      v71 = v115;
      v50(v115, v117, v19);
      v72 = v106;
      if (os_log_type_enabled(v106, v70))
      {
        OUTLINED_FUNCTION_57_1();
        v73 = swift_slowAlloc();
        v119[0] = OUTLINED_FUNCTION_39_0();
        *v73 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();

        v74 = OUTLINED_FUNCTION_22_1();
        v77 = sub_261F67FE4(v74, v75, v76);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        sub_262039E6C();
        sub_26203A20C();
        v42(v71, v19);
        v78 = OUTLINED_FUNCTION_22_1();
        v81 = sub_261F67FE4(v78, v79, v80);

        *(v73 + 14) = v81;
        _os_log_impl(&dword_261F5B000, v72, v70, "%{public}s: Unable to monitor path which does not have resolved host/port as remote endpoint: %s", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      else
      {

        v42(v71, v19);
      }

      goto LABEL_16;
    }

    v53 = OUTLINED_FUNCTION_28_5();
    v54(v53);
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA138, &qword_2620434F8) + 48);
    v56 = v104;
    (*(v104 + 32))(v113, v47, v114);
    sub_262039A5C();
    OUTLINED_FUNCTION_6_1();
    (*(v57 + 8))(v47 + v55);
    sub_261F9B6D0(0, &qword_27FEFA158, 0x277D028B8);
    v58 = *(v56 + 16);
    v59 = OUTLINED_FUNCTION_108();
    v58(v59);
    sub_261FEB3B0();
    if (v60)
    {
      v61 = v108;
      v62 = *(v108 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint);
      *(v108 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint) = v60;
      v63 = v60;

      OUTLINED_FUNCTION_63();
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v65 = swift_allocObject();
      v65[2] = v64;
      v65[3] = v61;
      v66 = v103;
      v65[4] = v102;
      v65[5] = v66;
      v118[4] = sub_261FEDA90;
      v118[5] = v65;
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 1107296256;
      v118[2] = sub_261F78F64;
      v118[3] = &block_descriptor_71;
      v67 = _Block_copy(v118);

      [v63 setStateChangedHandler_];
      _Block_release(v67);
      [v30 addEndpoint_];

      (*(v56 + 8))(v113, v114);
    }

    else
    {
      v82 = sub_26203A48C();
      v83 = v105;
      (v58)(v105, v113, v114);
      if (os_log_type_enabled(v106, v82))
      {
        OUTLINED_FUNCTION_57_1();
        v84 = swift_slowAlloc();
        v117 = OUTLINED_FUNCTION_39_0();
        v119[0] = v117;
        *v84 = 136446466;
        v85 = v108;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        LODWORD(v116) = v82;
        v86 = v56;
        v87 = *(v85 + 16);
        v88 = *(v85 + 24);
        v89 = v114;

        v90 = sub_261F67FE4(v87, v88, v119);

        *(v84 + 4) = v90;
        *(v84 + 12) = 2080;
        (v58)(v107, v83, v89);
        v91 = sub_26203A20C();
        v93 = v92;
        v94 = *(v86 + 8);
        v94(v83, v89);
        v95 = sub_261F67FE4(v91, v93, v119);

        *(v84 + 14) = v95;
        _os_log_impl(&dword_261F5B000, v106, v116, "%{public}s: Unable to create CUNetLinkEndpoint from connection host: %s", v84, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();

        v94(v113, v89);
      }

      else
      {

        v96 = *(v56 + 8);
        v97 = v114;
        v96(v83, v114);
        v96(v113, v97);
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_31_0();
}

void sub_261FEB3B0()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v3 = sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v45 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40_3();
  v6 = sub_262039A9C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v12 = v11 - v10;
  v13 = sub_262039A4C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v17)) init];
  (*(v15 + 16))(v19, v2, v13);
  v21 = OUTLINED_FUNCTION_22_1();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x277CD8AE8])
  {
    v24 = OUTLINED_FUNCTION_13_9();
    v25(v24);

    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA160, &unk_262043E90) + 48);
    v27 = sub_26203A48C();
    if (qword_27FEF8688 != -1)
    {
      OUTLINED_FUNCTION_2_17(&qword_27FEF8688);
    }

    sub_26203969C(v27, &dword_261F5B000, qword_27FEFA0F8, "Cannot create a CUNetLinkEndpoint from a hostname", 49, 2, MEMORY[0x277D84F90]);

    v28 = OUTLINED_FUNCTION_108();
    v29(v28);
    sub_261F66E60(v19 + v26, &unk_27FEF9B60, &unk_262040530);
  }

  else if (v23 == *MEMORY[0x277CD8AD8])
  {
    v30 = OUTLINED_FUNCTION_13_9();
    v31(v30);
    (*(v8 + 32))(v12, v19, v6);
    IPv4Address.copy_sockaddr_in()(v32);
    OUTLINED_FUNCTION_42_2(v33, sel_setIpAddr_);
    v34 = OUTLINED_FUNCTION_108();
    v35(v34);
    (*(v8 + 8))(v12, v6);
  }

  else if (v23 == *MEMORY[0x277CD8AE0])
  {
    v36 = OUTLINED_FUNCTION_13_9();
    v37(v36);
    (*(v45 + 32))(v0, v19, v3);
    IPv6Address.copy_sockaddr_in6()(v38);
    OUTLINED_FUNCTION_42_2(v39, sel_setIpAddr_);
    v40 = OUTLINED_FUNCTION_108();
    v41(v40);
    (*(v45 + 8))(v0, v3);
  }

  else
  {
    v42 = *(v15 + 8);
    v43 = OUTLINED_FUNCTION_108();
    v42(v43);

    v44 = OUTLINED_FUNCTION_22_1();
    v42(v44);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_261FEB78C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_26203A47C();
    if (qword_27FEF8688 != -1)
    {
      swift_once();
    }

    v8 = qword_27FEFA0F8;
    v9 = &property descriptor for static Defaults.hostAllowRSDDeviceDiscovery;
    if (os_log_type_enabled(qword_27FEFA0F8, v7))
    {
      v10 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      __src[0] = v24;
      *v10 = 136446722;
      swift_beginAccess();
      v12 = *(a2 + 16);
      v11 = *(a2 + 24);

      v13 = sub_261F67FE4(v12, v11, __src);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = v6;
      v15 = [v14 description];
      v16 = sub_26203A1BC();
      v17 = a3;
      v19 = v18;

      v20 = sub_261F67FE4(v16, v19, __src);

      *(v10 + 14) = v20;
      v9 = &property descriptor for static Defaults.hostAllowRSDDeviceDiscovery;
      *(v10 + 22) = 2080;
      __dst[0] = [v14 state];
      v21 = sub_26203ABAC();
      v23 = sub_261F67FE4(v21, v22, __src);
      a3 = v17;

      *(v10 + 24) = v23;
      _os_log_impl(&dword_261F5B000, v8, v7, "%{public}s: Control channel endpoint %s reachability state changed: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v24, -1, -1);
      MEMORY[0x266724180](v10, -1, -1);
    }

    if ([v6 v9[344]] == 3)
    {
      sub_261FEDA9C(__src);
      memcpy(__dst, __src, 0x92uLL);
      a3(__dst);
    }
  }
}

void sub_261FEBA1C()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v46 = v2;
  v47 = v3;
  v45 = v4;
  v6 = v5;
  v7 = sub_262039A7C();
  v8 = OUTLINED_FUNCTION_40(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v44 = v10 - v9;
  OUTLINED_FUNCTION_9_5();
  v11 = sub_262039B3C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v39[-v18];
  v20 = sub_26203A4AC();
  if (qword_27FEF8688 != -1)
  {
    OUTLINED_FUNCTION_2_17(&qword_27FEF8688);
  }

  v21 = qword_27FEFA0F8;
  v22 = *(v13 + 16);
  v43 = v6;
  v22(v19, v6, v11);
  if (os_log_type_enabled(v21, v20))
  {
    OUTLINED_FUNCTION_57_1();
    v23 = swift_slowAlloc();
    v41 = v21;
    v24 = v23;
    v42 = OUTLINED_FUNCTION_39_0();
    v49[0] = v42;
    *v24 = 136446466;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v40 = v20;
    v25 = v22;
    v27 = v1[2];
    v26 = v1[3];

    v28 = sub_261F67FE4(v27, v26, v49);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v25(v17, v19, v11);
    v29 = sub_26203A20C();
    v31 = v30;
    v32 = v19;
    v33 = v25;
    (*(v13 + 8))(v32, v11);
    v34 = sub_261F67FE4(v29, v31, v49);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_261F5B000, v41, v40, "%{public}s: Network control channel started but used prohibited interface %s. Starting new connection", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
    (*(v13 + 8))(v19, v11);
    v33 = v22;
  }

  swift_beginAccess();

  sub_262039B7C();
  v35 = sub_262039CCC();
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF95F0, &unk_2620402A0);
  v37 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26203E9E0;
  v33(v38 + v37, v43, v11);
  v48 = v36;
  sub_261FFA140(v38);
  sub_262039CDC();
  sub_262039C8C();
  sub_262039CAC();
  swift_allocObject();

  v1[4] = sub_262039C0C();

  sub_261FE8AFC();
  sub_262039C6C();

  OUTLINED_FUNCTION_31_0();
}

void sub_261FEBE0C()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_36_3();
  v4 = sub_262039BCC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_46();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v1;
  *v10 = sub_261FED088;
  v10[1] = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277CD8DB0], v4);
  sub_262039BBC();

  sub_262039B9C();
  OUTLINED_FUNCTION_75();
  sub_262039C1C();

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_31_0();
}

void sub_261FEBF78(uint64_t a1, void (*a2)(void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940);
  OUTLINED_FUNCTION_40(v3);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_75();
  sub_261FEDB40(v5, v6, &qword_27FEFA520, &qword_262045940);
  v7 = sub_262039E9C();
  v8 = 0;
  if (OUTLINED_FUNCTION_44_1(v7) != 1)
  {
    sub_261FEDBA0(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    OUTLINED_FUNCTION_72_0();
    v8 = swift_allocError();
    OUTLINED_FUNCTION_71();
    (*(v9 + 32))();
  }

  a2(v8);
}

uint64_t sub_261FEC0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_107();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a3;
  v7[4] = a4;

  sub_262039C7C();
}

uint64_t NWConnectionControlChannelTransport.deinit()
{

  sub_261F66E60(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint, &qword_27FEFA118, &qword_26204AE60);

  sub_261F665E4(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate), *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate + 8));
  return v0;
}

uint64_t NWConnectionControlChannelTransport.__deallocating_deinit()
{
  NWConnectionControlChannelTransport.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_261FEC34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  if (qword_28108B5A8 != -1)
  {
    swift_once();
  }

  v10 = qword_2810955B0;
  OUTLINED_FUNCTION_107();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;

  a5(v10, v10, a4, v11);
}

void sub_261FEC420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void, void, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_96();
  v25 = v24;
  v27 = v26;
  v28 = v21;
  if (v29)
  {
    v30 = v21;
LABEL_36:
    swift_willThrow();
    __src[0] = v28;
    sub_261FEDD8C(__src);
    memcpy(v53, __src, 0x93uLL);
    v52 = v28;
    v27(v53);

    memcpy(v55, v53, 0x93uLL);
    sub_261F66E60(v55, &qword_27FEFA170, &qword_262043EA0);
    OUTLINED_FUNCTION_31_0();
    return;
  }

  v31 = v23;
  v32 = v22;
  if (qword_28108B5A0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v33 & 1) == 0)
  {
    v38 = 0x8000000262050E90;
    v55[3] = MEMORY[0x277D837D0];
    v39 = 0xD00000000000001ALL;
LABEL_35:
    v55[0] = v39;
    v55[1] = v38;
    LOBYTE(v55[4]) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v28 = swift_allocError();
    v50 = v49;
    *v49 = 2;
    LOBYTE(__src[0]) = 2;
    v51 = ControlChannelConnectionError.Message.format(code:)(__src);
    sub_261F65C08(v55);
    *(v50 + 8) = v51;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 0u;
    *(v50 + 7) = 0;
    goto LABEL_36;
  }

  v34 = MEMORY[0x266721A20](qword_2810955A0, *algn_2810955A8);
  v35 = v32 >> 62;
  v36 = 0;
  v37 = v28;
  switch(v32 >> 62)
  {
    case 1uLL:
      v36 = v28;
      break;
    case 2uLL:
      v36 = *(v28 + 16);
      break;
    default:
      break;
  }

  v40 = __OFADD__(v36, v34);
  v41 = v36 + v34;
  if (v40)
  {
    __break(1u);
    goto LABEL_38;
  }

  v42 = v41 + 2;
  if (__OFADD__(v41, 2))
  {
LABEL_38:
    __break(1u);
    return;
  }

  switch(v35)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v37 = *(v28 + 16);
LABEL_16:
      if (v41 < v37)
      {
        goto LABEL_34;
      }

      if (v35 == 2)
      {
        v43 = *(v28 + 24);
      }

      else
      {
        v43 = v28 >> 32;
      }

      break;
    case 3:
      if (v41 < 0)
      {
        goto LABEL_34;
      }

      if (v42 > 0 || __OFSUB__(v41, v42))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v41 < 0)
      {
        goto LABEL_34;
      }

      v43 = BYTE6(v32);
      break;
  }

  if (v41 >= v42 || v43 < v42)
  {
LABEL_34:
    v38 = 0x8000000262050EB0;
    v55[3] = MEMORY[0x277D837D0];
    v39 = 0xD00000000000001CLL;
    goto LABEL_35;
  }

LABEL_25:
  v45 = sub_261F6BE04(v28, v32, v34);
  OUTLINED_FUNCTION_46();
  v46 = swift_allocObject();
  *(v46 + 16) = v27;
  *(v46 + 24) = v25;

  a21(v45, v45, v31, v46);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FEC734(void *__src, uint64_t a2, void (*a3)(_BYTE *))
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    memcpy(v29, __src, 0x93uLL);
    if (sub_261F65308(v29) == 1)
    {
      nullsub_1();
      v8 = *v7;
      v9 = sub_26203A48C();
      if (qword_28108B640 != -1)
      {
        swift_once();
      }

      v10 = qword_28108B648;
      if (os_log_type_enabled(qword_28108B648, v9))
      {
        v11 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28[0] = v24;
        *v11 = 136446466;
        swift_beginAccess();
        v12 = *(v6 + 24);
        v13 = *(v6 + 32);

        v14 = sub_261F67FE4(v12, v13, v28);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        __srca[0] = v8;
        memcpy(v27, __src, sizeof(v27));
        nullsub_1();
        v16 = *v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v17 = sub_26203A20C();
        v19 = sub_261F67FE4(v17, v18, v28);

        *(v11 + 14) = v19;
        _os_log_impl(&dword_261F5B000, v10, v9, "%{public}s: received error reading message: %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v24, -1, -1);
        MEMORY[0x266724180](v11, -1, -1);
      }

      __srca[0] = v8;
      sub_261F65314(__srca);
      memcpy(v25, __srca, 0x92uLL);
      memcpy(v27, __dst, sizeof(v27));
      nullsub_1();
      v21 = *v20;
      a3(v25);

      memcpy(v28, v25, 0x92uLL);
      return sub_261F6A760(v28);
    }

    else
    {
      nullsub_1();
      memmove(__srca, v22, 0x92uLL);
      sub_261FEDDA4(__srca);
      memcpy(v25, __srca, 0x92uLL);
      memcpy(v27, __src, sizeof(v27));
      nullsub_1();
      sub_261FBCBCC(v23, v28);
      a3(v25);
      memcpy(v28, v25, 0x92uLL);
      sub_261F6A760(v28);
      sub_261FE6DE0();
    }
  }

  return result;
}

void sub_261FECA68()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_45_1(v30);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    OUTLINED_FUNCTION_45_1(v29);
    if (sub_261F65308(v29) == 1)
    {
      nullsub_1();
      v9 = *v8;
      v10 = sub_26203A48C();
      if (qword_28108B640 != -1)
      {
        swift_once();
      }

      v11 = qword_28108B648;
      if (os_log_type_enabled(qword_28108B648, v10))
      {
        OUTLINED_FUNCTION_57_1();
        v12 = swift_slowAlloc();
        v28[0] = OUTLINED_FUNCTION_39_0();
        *v12 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v13 = *(v7 + 16);
        v14 = *(v7 + 24);

        v15 = sub_261F67FE4(v13, v14, v28);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        __src[0] = v9;
        OUTLINED_FUNCTION_45_1(v27);
        nullsub_1();
        v17 = *v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v18 = sub_26203A20C();
        v20 = sub_261F67FE4(v18, v19, v28);

        *(v12 + 14) = v20;
        _os_log_impl(&dword_261F5B000, v11, v10, "%{public}s: received error reading message: %s", v12, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      __src[0] = v9;
      sub_261F65314(__src);
      memcpy(__dst, __src, 0x92uLL);
      memcpy(v27, v30, 0x93uLL);
      nullsub_1();
      v22 = *v21;
      v5(__dst);

      memcpy(v28, __dst, 0x92uLL);
      sub_261F6A760(v28);
    }

    else
    {
      nullsub_1();
      memmove(__src, v23, 0x92uLL);
      sub_261FEDDA4(__src);
      memcpy(__dst, __src, 0x92uLL);
      OUTLINED_FUNCTION_45_1(v27);
      nullsub_1();
      sub_261FBCBCC(v24, v28);
      v5(__dst);
      memcpy(v28, __dst, 0x92uLL);
      sub_261F6A760(v28);
      v1(v5, v3);
    }
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FECD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for RemoteXPCControlChannelTransport();
  v9 = swift_allocObject();

  return sub_261FECDB4(a1, a2, v9, a4, a5);
}

uint64_t sub_261FECDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 56) = 33619968;
  *(a3 + 32) = a1;
  *(a3 + 40) = a5;
  *(a3 + 48) = a2;
  v6 = qword_28108CE50;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  *(a3 + 16) = 0x707865746F6D6572;
  *(a3 + 24) = 0xEA00000000002D63;
  return a3;
}

unint64_t sub_261FECEA8()
{
  result = qword_28108B720;
  if (!qword_28108B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B720);
  }

  return result;
}

unint64_t sub_261FECEFC()
{
  result = qword_28108B728;
  if (!qword_28108B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B728);
  }

  return result;
}

uint64_t sub_261FECF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredBonjourAdvert(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FECFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice21ControlChannelMessageO5EventO(uint64_t a1)
{
  v1 = *(a1 + 72) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice21ControlChannelMessageO7RequestO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice04PeerC4InfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice21ControlChannelMessageO8ResponseO(uint64_t a1)
{
  if ((*(a1 + 121) & 7u) <= 5)
  {
    return *(a1 + 121) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_261FED128(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 146))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v2 = ((*(a1 + 144) >> 11) & 3 | (4 * ((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3))) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_261FED180(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(a1 + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(a1 + 146) = 0;
    }

    if (a2)
    {
      v4 = (-a2 >> 2) & 0x3F | (-a2 << 6);
      v5 = (-a2 & 3) << 11;
      *a1 = ((v4 << 58) | (2 * v4)) & 0xF000000000000007;
      bzero((a1 + 8), 0x88uLL);
      *(a1 + 144) = v5;
    }
  }
}

void sub_261FED230(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 144) & 0xE7FF | (a2 << 11);
    *a1 &= 0xFFFFFFFFFFFFFF9uLL;
    *(a1 + 144) = v3;
  }

  else
  {
    *a1 = (a2 - 2) & 1 | (8 * ((a2 - 2) >> 1));
    bzero((a1 + 8), 0x88uLL);
    *(a1 + 144) = 4096;
  }
}

uint64_t type metadata accessor for NWConnectionControlChannelTransport(uint64_t a1)
{
  result = qword_27FEFA140;
  if (!qword_27FEFA140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261FED5AC(uint64_t a1)
{
  sub_261FEDA38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_261FEDA38(uint64_t a1)
{
  if (!qword_27FEFA150)
  {
    type metadata accessor for DiscoveredBonjourAdvert(255);
    v1 = sub_26203A6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEFA150);
    }
  }
}

void sub_261FEDA9C(uint64_t a1)
{
  *a1 = 1;
  bzero((a1 + 8), 0x88uLL);
  *(a1 + 144) = 4096;
}

uint64_t sub_261FEDB0C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_261FEDB40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_261FEDBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261FEDDA4(uint64_t result)
{
  v1 = *(result + 144) & 0xE7FF;
  *result &= 0xFFFFFFFFFFFFFF9uLL;
  *(result + 144) = v1;
  return result;
}

uint64_t sub_261FEDDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredBonjourAdvert(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FEDE28(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredBonjourAdvert(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_11Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_43_3(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void sub_261FEE024(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  OS_dispatch_queue.parentQueue.setter(v1);
}

void OS_dispatch_queue.parentQueue.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_27FEFA178, a1, 1);
  swift_endAccess();
}

void (*OS_dispatch_queue.parentQueue.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = OS_dispatch_queue.parentQueue.getter();
  return sub_261FEE108;
}

void sub_261FEE108(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    OS_dispatch_queue.parentQueue.setter(v2);
  }

  else
  {
    OS_dispatch_queue.parentQueue.setter(*a1);
  }
}

uint64_t OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = sub_26203A56C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v12 = v11 - v10;
  v13 = sub_26203A53C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74();
  v19 = v18 - v17;
  v20 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_74();
  v26 = v25 - v24;
  sub_261F6935C();
  (*(v22 + 16))(v26, a3, v20);
  (*(v15 + 16))(v19, a4, v13);
  (*(v8 + 16))(v12, a5, v31);
  v27 = v5;

  v28 = sub_26203A58C();
  OS_dispatch_queue.parentQueue.setter(v6);
  return v28;
}

id sub_261FEE390(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_26203ABCC();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_2620393EC();

  v11 = sub_261FEE4E4();
  return v11;
}

id sub_261FEE4E4()
{
  v1 = [v0 userInfo];
  v2 = sub_26203A0DC();

  v3 = sub_261FEE5E0(v2);

  v4 = sub_261FEE928(v3);

  v5 = [v0 domain];
  v6 = sub_26203A1BC();
  v8 = v7;

  v9 = [v0 code];
  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_261FBF774(v6, v8, v9, v4);
}

uint64_t sub_261FEE5E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  v2 = sub_26203A0FC();
  v3 = *(a1 + 64);
  v17 = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_261F681A8(*(a1 + 56) + 32 * v10, &v16);
    v15[0] = v13;
    v15[1] = v12;

    sub_261FEEBBC(&v17, v15);
    v6 &= v6 - 1;
    sub_261FCB894(v15, &qword_27FEFA190, &qword_262043EB0);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v17;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_261FCB894(v15, &qword_27FEFA190, &qword_262043EB0);

  __break(1u);
  return result;
}

uint64_t sub_261FEE784(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  v2 = sub_26203A0FC();
  v3 = *(a1 + 64);
  v14 = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_261F67C78(*(a1 + 48) + 40 * v10, v12);
    sub_261F681A8(*(a1 + 56) + 32 * v10, &v13);
    sub_261FEEDB8(&v14, v12);
    v6 &= v6 - 1;
    sub_261FCB894(v12, &qword_27FEFA1A8, &qword_262043EC8);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_261FCB894(v12, &qword_27FEFA1A8, &qword_262043EC8);

  __break(1u);
  return result;
}

unint64_t sub_261FEE928(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA180, &unk_26203F6F0);
    v2 = sub_26203A94C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    sub_261F67C78(*(a1 + 48) + 40 * v11, v26);
    v27 = *(*(a1 + 56) + 8 * v11);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
    swift_dynamicCast();
    sub_261F8D184(&v22, v24);
    sub_261F8D184(v24, v25);
    sub_261F8D184(v25, &v23);
    result = sub_261FA3868(v20, v21);
    v12 = result;
    if (v13)
    {
      v14 = (v2[6] + 16 * result);
      *v14 = v20;
      v14[1] = v21;

      v15 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      result = sub_261F8D184(&v23, v15);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v2[6] + 16 * result);
      *v16 = v20;
      v16[1] = v21;
      result = sub_261F8D184(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_20;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_261FEEBBC(void *a1, uint64_t a2)
{
  sub_261FEF274(a2, &v10, &qword_27FEFA190, &qword_262043EB0);
  *(&v8 + 1) = MEMORY[0x277D837D0];
  v7 = v10;
  v4 = sub_261FEEFD0(&v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v11);
  sub_261FEF274(a2, &v10, &qword_27FEFA190, &qword_262043EB0);
  *(&v8 + 1) = MEMORY[0x277D84F70] + 8;
  *&v7 = swift_allocObject();
  sub_261F8D184(&v11, (v7 + 16));
  sub_261FEEFD0(&v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);

  v13 = v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  if (swift_dynamicCast())
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_261FCB894(&v7, &qword_27FEFA198, &qword_262043EB8);
    *&v10 = v4;
    swift_unknownObjectRetain();
    *&v7 = sub_26203A20C();
    *(&v7 + 1) = v5;
    sub_26203A79C();
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v7 = *a1;
  sub_261FA4680();
  swift_unknownObjectRelease();
  *a1 = v7;
  return sub_261F67914(&v10);
}

uint64_t sub_261FEEDB8(void *a1, uint64_t a2)
{
  sub_261FEF274(a2, &v13, &qword_27FEFA1A8, &qword_262043EC8);
  *(&v10 + 1) = MEMORY[0x277D84030];
  v4 = swift_allocObject();
  *&v9 = v4;
  v5 = v14;
  *(v4 + 16) = v13;
  *(v4 + 32) = v5;
  *(v4 + 48) = v15;
  v6 = sub_261FEEFD0(&v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  sub_261FEF274(a2, &v13, &qword_27FEFA1A8, &qword_262043EC8);
  *(&v10 + 1) = MEMORY[0x277D84F70] + 8;
  *&v9 = swift_allocObject();
  sub_261F8D184(v16, (v9 + 16));
  sub_261FEEFD0(&v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v9);
  sub_261F67914(&v13);
  v12 = v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  if (swift_dynamicCast())
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_261FCB894(&v9, &qword_27FEFA198, &qword_262043EB8);
    *&v13 = v6;
    swift_unknownObjectRetain();
    *&v9 = sub_26203A20C();
    *(&v9 + 1) = v7;
    sub_26203A79C();
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v9 = *a1;
  sub_261FA4680();
  swift_unknownObjectRelease();
  *a1 = v9;
  return sub_261F67914(&v13);
}

void *sub_261FEEFD0(uint64_t a1)
{
  sub_261F681A8(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1A0, &qword_262043EC0);
  if (swift_dynamicCast())
  {
    sub_261FEE784(v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
    v2 = sub_26203A0BC();
LABEL_15:
    v7 = v2;

    return v7;
  }

  sub_261F681A8(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9168, &qword_26203C998);
  if (!swift_dynamicCast())
  {
    sub_261F681A8(a1, v9);
    sub_261F9D664();
    if (swift_dynamicCast())
    {
      v7 = sub_261FEE4E4();
    }

    else
    {
      sub_261F681A8(a1, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
      if (!swift_dynamicCast())
      {
        sub_261F681A8(a1, v9);
        sub_26203A20C();
        v2 = sub_26203A18C();
        goto LABEL_15;
      }

      return v8;
    }

    return v7;
  }

  v3 = v8[2];
  if (!v3)
  {
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
    v2 = sub_26203A3AC();
    goto LABEL_15;
  }

  result = sub_26203A86C();
  v5 = 0;
  v6 = (v8 + 4);
  while (v5 < v8[2])
  {
    ++v5;
    sub_261F681A8(v6, v9);
    sub_261FEEFD0(v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    sub_26203A83C();
    sub_26203A87C();
    sub_26203A88C();
    result = sub_26203A84C();
    v6 += 32;
    if (v3 == v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261FEF274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_261FEF2DC()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFA1B0 = result;
  return result;
}

uint64_t CertificateUtilities.RawTLSPublicKeyInfo.publicKeyDERData.getter()
{
  v1 = *(v0 + 8);
  sub_261F6B73C(v1, *(v0 + 16));
  return v1;
}

void static CertificateUtilities.createTLSRawPublicKey(with:)(void *a1@<X0>, uint64_t a2@<X1>, sec_identity_t *a3@<X8>)
{
  v7 = static P256.Signing.PrivateKey.createKeyPair()();
  if (!v3)
  {
    v8 = v7;
    v9 = sub_261FEF89C(v7, a1, a2);
    v10 = SecIdentityCreate();
    if (v10 && (v11 = v10, v12 = sec_identity_create(v10), v11, v12))
    {
      v13 = SecCertificateCopyKey(v9);
      if (v13)
      {
        v14 = v13;
        v15 = SecKeyCopySubjectPublicKeyInfo();
        if (v15)
        {
          v16 = v15;
          v17 = sub_26203954C();
          v19 = v18;

          *a3 = v12;
          a3[1] = v17;
          a3[2] = v19;
        }

        else
        {
          sub_261F9BCE0();
          OUTLINED_FUNCTION_0_26();
          sub_26203AD3C();
          OUTLINED_FUNCTION_3_18();
          v22 = sub_261F9D610();
          OUTLINED_FUNCTION_6(v22);
          OUTLINED_FUNCTION_2_18();
          sub_26203AD4C();
          swift_willThrow();

          swift_unknownObjectRelease();
        }
      }

      else
      {
        sub_261F9BCE0();
        OUTLINED_FUNCTION_0_26();
        sub_26203AD3C();
        OUTLINED_FUNCTION_3_18();
        v21 = sub_261F9D610();
        OUTLINED_FUNCTION_6(v21);
        OUTLINED_FUNCTION_2_18();
        sub_26203AD4C();
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_261F9BCE0();
      OUTLINED_FUNCTION_0_26();
      sub_26203AD3C();
      OUTLINED_FUNCTION_3_18();
      v20 = sub_261F9D610();
      OUTLINED_FUNCTION_6(v20);
      OUTLINED_FUNCTION_2_18();
      sub_26203AD4C();
      swift_willThrow();
    }
  }
}

SecKeyRef static P256.Signing.PrivateKey.createKeyPair()()
{
  error[11] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA1B8, &qword_262043EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203F720;
  v1 = *MEMORY[0x277CDC028];
  v2 = *MEMORY[0x277CDC060];
  *(inited + 32) = *MEMORY[0x277CDC028];
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CDBFE0];
  v4 = *MEMORY[0x277CDBFF0];
  *(inited + 48) = *MEMORY[0x277CDBFE0];
  *(inited + 56) = v4;
  v5 = *MEMORY[0x277CDC018];
  *(inited + 64) = *MEMORY[0x277CDC018];
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  *(inited + 72) = sub_26203A41C();
  type metadata accessor for CFString(0);
  sub_261FEFF74(&unk_28108B2E0, type metadata accessor for CFString, &unk_26203C5C0);
  sub_26203A0FC();
  error[0] = 0;
  v11 = sub_26203A0BC();
  RandomKey = SecKeyCreateRandomKey(v11, error);

  v13 = error[0];
  if (error[0])
  {

    type metadata accessor for CFError(0);
    sub_261FEFF74(&qword_27FEFA1C8, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    swift_allocError();
    *v14 = v13;
    swift_willThrow();

    return RandomKey;
  }

  if (RandomKey)
  {

    return RandomKey;
  }

  result = sub_26203A91C();
  __break(1u);
  return result;
}

uint64_t sub_261FEF89C(__SecKey *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1D0, &qword_262043FE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26203CD30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1D8, &unk_262043FE8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26203E9E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1E0, &qword_26203E9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_262043ED0;
  v6 = *MEMORY[0x277CDC450];
  type metadata accessor for CFString(0);
  v8 = v7;
  *(v5 + 32) = v6;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 88) = MEMORY[0x277D837D0];
  *(v5 + 56) = v7;
  *(v5 + 64) = 21333;
  *(v5 + 72) = 0xE200000000000000;
  *(v4 + 32) = v5;
  *(v3 + 32) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26203E9E0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_262043ED0;
  v12 = *MEMORY[0x277CDC458];
  *(v11 + 32) = *MEMORY[0x277CDC458];
  *(v11 + 88) = v9;
  *(v11 + 56) = v8;
  *(v11 + 64) = 0x6E4920656C707041;
  *(v11 + 72) = 0xEA00000000002E63;
  *(v10 + 32) = v11;
  *(v3 + 40) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26203E9E0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_262043ED0;
  v15 = *MEMORY[0x277CDC460];
  *(v14 + 32) = *MEMORY[0x277CDC460];
  *(v14 + 88) = v9;
  *(v14 + 56) = v8;
  *(v14 + 64) = 0xD000000000000017;
  *(v14 + 72) = 0x8000000262051090;
  *(v13 + 32) = v14;
  *(v3 + 48) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26203E9E0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_262043ED0;
  v18 = *MEMORY[0x277CDC448];
  *(v17 + 32) = *MEMORY[0x277CDC448];
  *(v17 + 88) = v9;
  *(v17 + 56) = v8;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v16 + 32) = v17;
  *(v3 + 56) = v16;
  v19 = v6;
  v20 = v12;
  v21 = v15;
  v22 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1E8, &qword_262043FF8);
  v51 = sub_26203A3AC();

  v23 = sub_26203A41C();
  v50 = MEMORY[0x266721A00](&unk_287489288, 12);
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1F0, &qword_262044000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203F720;
  v27 = *MEMORY[0x277CDC210];
  *(inited + 32) = *MEMORY[0x277CDC210];
  type metadata accessor for CFNumber(0);
  *(inited + 40) = v23;
  v28 = *MEMORY[0x277CDC570];
  *(inited + 64) = v29;
  *(inited + 72) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1F8, &qword_262044008);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_26203E9E0;
  v31 = *MEMORY[0x277CDC578];
  *(v30 + 32) = *MEMORY[0x277CDC578];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B00, &unk_26203E630);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26203E9E0;
  *(v32 + 32) = a2;
  *(v32 + 40) = a3;
  *(v30 + 40) = v32;

  v33 = v27;
  v53 = v23;
  v34 = v28;
  v35 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9990, &qword_26203F7D0);
  sub_261FEFF74(&unk_28108B2E0, type metadata accessor for CFString, &unk_26203C5C0);
  sub_26203A0FC();
  v36 = sub_26203A0BC();

  type metadata accessor for CFDictionary(0);
  v38 = v37;
  *(inited + 80) = v36;
  v39 = *MEMORY[0x277CDC208];
  *(inited + 104) = v37;
  *(inited + 112) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA200, &qword_262044010);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_26203E9E0;
  *(v40 + 32) = 0x332E39322E352E32;
  *(v40 + 40) = 0xE900000000000037;
  *(v40 + 48) = v50;
  *(v40 + 56) = v25;
  v41 = v39;
  sub_261F6B73C(v50, v25);
  sub_26203A0FC();
  v42 = sub_26203A0BC();

  *(inited + 144) = v38;
  *(inited + 120) = v42;
  sub_26203A0FC();
  v43 = sub_26203A0BC();

  v44 = SecKeyCopyPublicKey(a1);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (SelfSignedCertificate)
  {

    sub_261F6BFFC(v50, v25);
  }

  else
  {
    v46 = sub_26203A48C();
    if (qword_27FEF86A0 != -1)
    {
      swift_once();
    }

    sub_26203969C(v46, &dword_261F5B000, qword_27FEFA1B0, "Failed to generate self-signed certificate.", 43, 2, MEMORY[0x277D84F90]);
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();

    sub_261F6BFFC(v50, v25);
  }

  return SelfSignedCertificate;
}

uint64_t sub_261FEFF74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CertificateUtilities(_BYTE *result, int a2, int a3)
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

uint64_t sub_261FF0078(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_261F95AC0(0, v1, 0);
  v2 = v30;
  result = sub_261FFEDA8(a1);
  v5 = result;
  v7 = v6;
  v8 = 0;
  v27 = a1 + 64;
  v26 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_24;
      }

      sub_261FA5688(*(a1 + 56) + 48 * v5, v28);
      sub_261F79740(v28, v29);
      sub_261FFEDE8(v28);
      v30 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_261F95AC0((v10 > 1), v11 + 1, 1);
        v2 = v30;
      }

      *(v2 + 16) = v11 + 1;
      result = sub_261F797BC(v29, v2 + 40 * v11 + 32);
      v12 = 1 << *(a1 + 32);
      if (v5 >= v12)
      {
        goto LABEL_25;
      }

      v13 = *(v27 + 8 * v9);
      if ((v13 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_27;
      }

      v14 = v13 & (-2 << (v5 & 0x3F));
      if (v14)
      {
        v12 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v9 << 6;
        v16 = v9 + 1;
        v17 = (a1 + 72 + 8 * v9);
        while (v16 < (v12 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            v20 = OUTLINED_FUNCTION_35_3();
            result = sub_261FFEE18(v20, v21, v22);
            v12 = __clz(__rbit64(v18)) + v15;
            goto LABEL_18;
          }
        }

        v23 = OUTLINED_FUNCTION_35_3();
        result = sub_261FFEE18(v23, v24, v25);
      }

LABEL_18:
      if (++v8 == v26)
      {
        return v2;
      }

      v7 = *(a1 + 36);
      v5 = v12;
      if (v12 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void (*sub_261FF02CC(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_261FFAECC(v6, a2, a3);
  return sub_261FFF850;
}

void (*sub_261FF0340(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_261FFAF64(v6, a2, a3);
  return sub_261FF03B4;
}

void sub_261FF03B8()
{

  sub_261FFA278(v0);
}

uint64_t sub_261FF03FC()
{
  if (*(*v0 + 16))
  {

    sub_261FFB5BC(0, 1);
    return OUTLINED_FUNCTION_108();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_261FF0460(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA360, &qword_2620447B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_261FD46AC();
  v7 = type metadata accessor for TunnelMessage(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    sub_261FFEEEC(v5, a1);
    if (*(v6 + 16))
    {
      sub_261FFB890(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_261FF0554()
{
  sub_262039FAC();
  OUTLINED_FUNCTION_104_0();
  sub_261F6E4A4(v0, v1, MEMORY[0x277D851A0]);
  v2 = OUTLINED_FUNCTION_42_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_155_0();
  sub_261F67F70(v4, v5, v6, v7);
  return sub_26203A75C();
}

uint64_t sub_261FF0618()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B620 = result;
  return result;
}

uint64_t sub_261FF0694()
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_27FEFA208 = result;
  return result;
}

uint64_t sub_261FF06D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626174617267696DLL && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6150656C676E6973 && a2 == 0xEA00000000006874)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_261FF07A8(char a1)
{
  if (a1)
  {
    return 0x6150656C676E6973;
  }

  else
  {
    return 0x626174617267696DLL;
  }
}

uint64_t sub_261FF07EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FF06D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FF0814(uint64_t a1)
{
  v2 = sub_261FF0C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FF0850(uint64_t a1)
{
  v2 = sub_261FF0C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FF088C(uint64_t a1)
{
  v2 = sub_261FF0CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FF08C8(uint64_t a1)
{
  v2 = sub_261FF0CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FF0904(uint64_t a1)
{
  v2 = sub_261FF0C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FF0940(uint64_t a1)
{
  v2 = sub_261FF0C84();

  return MEMORY[0x2821FE720](a1, v2);
}

void TunnelConnectionType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v48 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA210, &qword_262044060);
  OUTLINED_FUNCTION_0();
  v46 = v28;
  v47 = v27;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_44();
  v45 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA218, &qword_262044068);
  OUTLINED_FUNCTION_0();
  v43 = v32;
  v44 = v31;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  v35 = &v42 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA220, &qword_262044070);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_127();
  v42 = *v23;
  v37 = *(v23 + 8);
  __swift_project_boxed_opaque_existential_0Tm(v26, v26[3]);
  sub_261FF0C30();
  OUTLINED_FUNCTION_258();
  sub_26203AE5C();
  if (v37 == 1)
  {
    sub_261FF0CD8();
    sub_26203AA9C();
    (*(v43 + 8))(v35, v44);
  }

  else
  {
    sub_261FF0C84();
    sub_26203AA9C();
    v49 = v42;
    sub_261FCF9F4();
    sub_26203AB3C();
    OUTLINED_FUNCTION_207();
    v40 = OUTLINED_FUNCTION_59_0();
    v41(v40);
  }

  v38 = OUTLINED_FUNCTION_100();
  v39(v38);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FF0C30()
{
  result = qword_27FEFA228;
  if (!qword_27FEFA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA228);
  }

  return result;
}

unint64_t sub_261FF0C84()
{
  result = qword_27FEFA230;
  if (!qword_27FEFA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA230);
  }

  return result;
}

unint64_t sub_261FF0CD8()
{
  result = qword_27FEFA240;
  if (!qword_27FEFA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA240);
  }

  return result;
}

void TunnelConnectionType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v28 = v27;
  v60 = v29;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA248, &qword_262044078);
  OUTLINED_FUNCTION_0();
  v61 = v30;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA250, &qword_262044080);
  OUTLINED_FUNCTION_0();
  v59 = v33;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_127();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA258, &unk_262044088);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22_0();
  v37 = OUTLINED_FUNCTION_123();
  __swift_project_boxed_opaque_existential_0Tm(v37, v38);
  sub_261FF0C30();
  sub_26203AE3C();
  if (v23)
  {
    goto LABEL_8;
  }

  v58 = v25;
  v63 = v28;
  sub_26203AA7C();
  sub_261F99084();
  if (v40 == v41 >> 1)
  {
LABEL_7:
    sub_26203A81C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v49 = &type metadata for TunnelConnectionType;
    sub_26203A98C();
    sub_26203A80C();
    OUTLINED_FUNCTION_71();
    (*(v50 + 104))(v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_207();
    v51(v24, v35);
    v28 = v63;
LABEL_8:
    v52 = v28;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v40 < (v41 >> 1))
  {
    v42 = *(v39 + v40);
    sub_261F99070();
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      if (v42)
      {
        sub_261FF0C84();
        sub_26203A97C();
        v47 = v60;
        sub_261FCF150();
        sub_26203AA2C();
        swift_unknownObjectRelease();
        (*(v61 + 8))(v58, v62);
        v55 = OUTLINED_FUNCTION_209();
        v56(v55);
        v57 = v64;
      }

      else
      {
        sub_261FF0CD8();
        sub_26203A97C();
        v47 = v60;
        swift_unknownObjectRelease();
        (*(v59 + 8))(v26, v32);
        OUTLINED_FUNCTION_207();
        v53 = OUTLINED_FUNCTION_45_0();
        v54(v53);
        v57 = 0;
      }

      *v47 = v57;
      *(v47 + 8) = v42 ^ 1;
      v52 = v63;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

RemotePairingDevice::TunnelConnectionPriority sub_261FF12AC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = TunnelConnectionPriority.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261FF12EC@<X0>(uint64_t *a1@<X8>)
{
  result = TunnelConnectionPriority.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261FF13EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_60_2();
  type metadata accessor for TunnelEndpoint.Event(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_0();
  sub_261F79740(a1, v2);
  *(v2 + 40) = a2;
  OUTLINED_FUNCTION_71_2();
  swift_storeEnumTagMultiPayload();

  sub_261F6D760();
  v9 = OUTLINED_FUNCTION_71_2();
  return v10(v9);
}

void sub_261FF14F8(uint64_t a1)
{
  OUTLINED_FUNCTION_243();
  v3 = v2;
  OUTLINED_FUNCTION_23_4();
  type metadata accessor for TunnelEndpoint.Event(0, *(v4 + 80), *(v5 + 88), v6);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v8 = *v3;
  v9 = OUTLINED_FUNCTION_94();
  sub_261F79740(v9, v10);
  *(v1 + 40) = v8;
  OUTLINED_FUNCTION_122();
  swift_storeEnumTagMultiPayload();
  sub_261F6D760();
  v11 = OUTLINED_FUNCTION_122();
  v12(v11);
  OUTLINED_FUNCTION_22_2();
}

void sub_261FF15EC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_23_4();
  v4 = v3;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_110_0();
  sub_26203A6DC();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  sub_261F7A074(v0);
  v8 = OUTLINED_FUNCTION_211();
  if (__swift_getEnumTagSinglePayload(v8, v9, v6) == 1)
  {
    v10 = OUTLINED_FUNCTION_39_1();
    v11(v10);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = v6;
    *(v2 + 32) = *(v4 + 88);
    __swift_allocate_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_71();
    (*(v12 + 32))();
  }

  OUTLINED_FUNCTION_22_2();
}

uint64_t sub_261FF1734(uint64_t a1)
{
  v2 = sub_26203A6DC();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_261FF1804(v4);
}

uint64_t sub_261FF1804(uint64_t a1)
{
  OUTLINED_FUNCTION_96_0();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_96_0();
  sub_26203A6DC();
  OUTLINED_FUNCTION_6_1();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_261FF18A4()
{
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF18FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261F674BC(a1, &v5 - v3, &qword_27FEFA270, &qword_262041910);
  return sub_261FF1A04();
}

uint64_t sub_261FF19A8()
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_79(v0 + *(v1 + 112), v2);
  v3 = OUTLINED_FUNCTION_115_0();
  return sub_261F674BC(v3, v4, v5, v6);
}

uint64_t sub_261FF1A04()
{
  OUTLINED_FUNCTION_31_5();
  v3 = *(v2 + 112);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(v0, v1 + v3, &qword_27FEFA270, &qword_262041910);
  return swift_endAccess();
}

uint64_t sub_261FF1A74()
{
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF1ACC@<X0>(uint64_t a1@<X8>)
{
  result = sub_261FF1B38();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_261FF1B38()
{
  OUTLINED_FUNCTION_2_8();
  v2 = OUTLINED_FUNCTION_49_2(*(v1 + 120));
  OUTLINED_FUNCTION_146(v2, v3);
  return *v0 | (*(v0 + 2) << 16);
}

uint64_t sub_261FF1B80(int a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_189(*(v3 + 120));
  OUTLINED_FUNCTION_148();
  result = swift_beginAccess();
  *v1 = a1;
  *(v1 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t sub_261FF1BD0()
{
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

void sub_261FF1C28()
{
  OUTLINED_FUNCTION_83_1();
  v1 = OUTLINED_FUNCTION_189(*(v0 + 128));
  OUTLINED_FUNCTION_146(v1, v2);
  OUTLINED_FUNCTION_268();
}

uint64_t sub_261FF1C68(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v4 + 128));
  OUTLINED_FUNCTION_148();
  result = swift_beginAccess();
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_261FF1CC0()
{
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF1D58()
{
  OUTLINED_FUNCTION_2_8();
  v2 = (v0 + *(v1 + 136));
  *v2 = v3;
  v2[1] = v4;
}

uint64_t sub_261FF1D8C(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_261F7C884();
  a1[1] = v3;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t sub_261FF1DD0(uint64_t a1, char a2)
{
  if (a2)
  {

    OUTLINED_FUNCTION_98_0();
    sub_261FF1D58();
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    return sub_261FF1D58();
  }
}

void *sub_261FF1E3C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_261FF1E84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void sub_261FF1EC8()
{
  OUTLINED_FUNCTION_83_1();
  v1 = OUTLINED_FUNCTION_189(*(v0 + 144));
  OUTLINED_FUNCTION_146(v1, v2);
  OUTLINED_FUNCTION_268();
}

uint64_t sub_261FF1F08(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v4 + 144));
  OUTLINED_FUNCTION_148();
  result = swift_beginAccess();
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_261FF1F60()
{
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF1FB8()
{
  OUTLINED_FUNCTION_31_5();
  v3 = *(v2 + 152);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(v0, v1 + v3, &qword_27FEFA288, &qword_262044098);
  return swift_endAccess();
}

void sub_261FF2028()
{
  OUTLINED_FUNCTION_2_8();
  v2 = (v0 + *(v1 + 160));
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *v4 = v3;
  *(v4 + 8) = v2;
}

void sub_261FF2060()
{
  OUTLINED_FUNCTION_2_8();
  v2 = v0 + *(v1 + 160);
  *v2 = v3;
  *(v2 + 8) = v4;
}

uint64_t sub_261FF2098()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_79(v0 + *(v1 + 168), v2);
}

uint64_t sub_261FF20DC()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_79(v0 + *(v1 + 176), v2);
}

uint64_t sub_261FF2120()
{
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF2178()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_79(v0 + *(v1 + 184), v2);
}

uint64_t sub_261FF21BC()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_79(v0 + *(v1 + 192), v2);
}

uint64_t sub_261FF2200(uint64_t a1)
{
  OUTLINED_FUNCTION_96_0();
  v4 = *(v3 + 208);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_96_0();
  type metadata accessor for TunnelEndpoint.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_6_1();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_261FF22B0()
{
  OUTLINED_FUNCTION_2_8();
  v1 = OUTLINED_FUNCTION_49_2(*(v0 + 216));
  OUTLINED_FUNCTION_146(v1, v2);
}

uint64_t sub_261FF2300()
{
  OUTLINED_FUNCTION_2_8();
  v1 = OUTLINED_FUNCTION_49_2(*(v0 + 224));
  OUTLINED_FUNCTION_146(v1, v2);
}

uint64_t sub_261FF2350()
{
  OUTLINED_FUNCTION_2_8();
  v1 = OUTLINED_FUNCTION_49_2(*(v0 + 232));
  OUTLINED_FUNCTION_146(v1, v2);
}

uint64_t sub_261FF23A0()
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_79(v0 + *(v1 + 240), v2);
  v3 = OUTLINED_FUNCTION_115_0();
  return sub_261F674BC(v3, v4, v5, v6);
}

uint64_t sub_261FF23FC()
{
  OUTLINED_FUNCTION_31_5();
  v3 = *(v2 + 240);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(v0, v1 + v3, &qword_27FEFA2A0, &qword_2620440B0);
  return swift_endAccess();
}

uint64_t sub_261FF246C()
{
  OUTLINED_FUNCTION_2_8();
  v0 = OUTLINED_FUNCTION_47();
  sub_261F7D45C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FF24D0()
{
  OUTLINED_FUNCTION_2_8();
  v0 = OUTLINED_FUNCTION_47();
  sub_261F7D45C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FF255C()
{
  OUTLINED_FUNCTION_2_8();
  *(v0 + *(v1 + 264)) = v2;
  return swift_unknownObjectRelease();
}

uint64_t TunnelEndpoint.__allocating_init(connection:workQueue:)()
{
  v0 = OUTLINED_FUNCTION_233();
  v1 = OUTLINED_FUNCTION_98_0();
  TunnelEndpoint.init(connection:workQueue:)(v1, v2);
  return v0;
}

uint64_t TunnelEndpoint.init(connection:workQueue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_23_4();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_2_8();
  sub_262039ACC();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_40_4();
  v14 = v2 + *(v13 + 120);
  *v14 = 0;
  *(v14 + 2) = 1;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v15 + 128));
  OUTLINED_FUNCTION_27_5(*(v16 + 136));
  OUTLINED_FUNCTION_15_7(*(v17 + 144));
  v19 = v2 + *(v18 + 152);
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  OUTLINED_FUNCTION_40_4();
  v21 = v2 + *(v20 + 160);
  *v21 = 0;
  *(v21 + 8) = 1;
  OUTLINED_FUNCTION_40_4();
  v23 = *(v22 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_11_9();
  sub_261F67F70(v24, &qword_27FEF98B0, &unk_26203F690, v25);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v23) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v27 = *(v26 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v27) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v29 = *(v28 + 184);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v29) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v31 = *(v30 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v31) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v33 = *(v32 + 216);
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_34_4(&qword_28108B3C0);
  }

  v34 = &qword_28108B3C8;
  OUTLINED_FUNCTION_146(&qword_28108B3C8, v83);
  v35 = qword_28108B3C8;
  v36 = unk_28108B3D0;
  v37 = byte_28108B3D8;
  v38 = qword_28108B3E0;

  v39 = sub_261F83F58(v35, v36, v37, v38);

  if (v39 < 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v40 = (v3 + v33);
  v41 = OUTLINED_FUNCTION_84();
  *v40 = sub_261FFADB0(v41, v42, v39);
  v40[1] = 0;
  v40[2] = v39;
  OUTLINED_FUNCTION_40_4();
  v44 = *(v43 + 224);
  v38 = qword_28108B3C8;
  v45 = unk_28108B3D0;
  v46 = byte_28108B3D8;
  v47 = qword_28108B3E0;

  v48 = sub_261F83F58(v38, v45, v46, v47);

  if (v48 < 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v49 = (v3 + v44);
  v50 = OUTLINED_FUNCTION_84();
  *v49 = sub_261FFADB0(v50, v51, v48);
  v49[1] = 0;
  v49[2] = v48;
  OUTLINED_FUNCTION_40_4();
  v53 = *(v52 + 232);
  v38 = qword_28108B3C8;
  v54 = unk_28108B3D0;
  v55 = byte_28108B3D8;
  v56 = qword_28108B3E0;

  v34 = sub_261F83F58(v38, v54, v55, v56);

  if (v34 < 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v57 = (v3 + v53);
  v58 = OUTLINED_FUNCTION_84();
  *v57 = sub_261FFADB0(v58, v59, v34);
  v57[1] = 0;
  v57[2] = v34;
  OUTLINED_FUNCTION_40_4();
  type metadata accessor for TunnelInterfaceParameters(0);
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_27_5(*(v64 + 248));
  OUTLINED_FUNCTION_27_5(*(v65 + 256));
  *(v3 + *(v66 + 264)) = 0;
  OUTLINED_FUNCTION_40_4();
  *(v3 + *(v67 + 272)) = 0;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v68 + 280));
  *(v3 + *(v69 + 288)) = 0;
  v34 = a1;
  sub_261F79740(a1, &v81);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(&v81, v19, &qword_27FEFA288, &qword_262044098);
  swift_endAccess();
  *v21 = 0;
  *(v21 + 8) = 0;
  OUTLINED_FUNCTION_40_4();
  *(v3 + *(v70 + 200)) = a2;
  OUTLINED_FUNCTION_40_4();
  v71 = OUTLINED_FUNCTION_210();
  type metadata accessor for TunnelEndpoint.State(v71, v72, v73, v74);
  swift_storeEnumTagMultiPayload();
  v81 = 0;
  v82 = 0xE000000000000000;
  v38 = a2;
  sub_26203A7CC();

  v81 = 0x6E656C656E6E7574;
  v82 = 0xEF2D746E696F7064;
  if (qword_27FEF86B0 != -1)
  {
LABEL_11:
    swift_once();
  }

  sub_262017880();
  v75 = sub_26203ABAC();
  MEMORY[0x266722710](v75);

  v76 = v81;
  v77 = v82;
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  *(v3 + 16) = v76;
  *(v3 + 24) = v77;
  return v3;
}

uint64_t TunnelEndpoint.__allocating_init(id:connection:workQueue:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_233();
  v8 = OUTLINED_FUNCTION_67_2();
  TunnelEndpoint.init(id:connection:workQueue:)(v8, a2, a3, a4);
  return v4;
}

void *TunnelEndpoint.init(id:connection:workQueue:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v90 = *v4;
  v5 = *(*v4 + 80);
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_2_8();
  sub_262039ACC();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_2_8();
  v14 = v4 + *(v13 + 120);
  *v14 = 0;
  v14[2] = 1;
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_78_1(*(v15 + 128));
  v17 = (v4 + *(v16 + 136));
  *v17 = 0;
  v17[1] = 0;
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_78_1(*(v18 + 144));
  v20 = v4 + *(v19 + 152);
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  OUTLINED_FUNCTION_2_8();
  v22 = v4 + *(v21 + 160);
  *v22 = 0;
  v22[8] = 1;
  OUTLINED_FUNCTION_2_8();
  v24 = *(v23 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_11_9();
  sub_261F67F70(v25, &qword_27FEF98B0, &unk_26203F690, v26);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v24) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v28 = *(v27 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v28) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v30 = *(v29 + 184);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v30) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v32 = *(v31 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v32) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v34 = *(v33 + 216);
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_34_4(&qword_28108B3C0);
  }

  OUTLINED_FUNCTION_146(&qword_28108B3C8, v96);
  v35 = byte_28108B3D8;
  v36 = qword_28108B3E0;

  v37 = OUTLINED_FUNCTION_39_1();
  v39 = sub_261F83F58(v37, v38, v35, v36);

  if (v39 < 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v41 = (v4 + v34);
  v42 = OUTLINED_FUNCTION_84();
  *v41 = sub_261FFADB0(v42, v43, v39);
  v41[1] = 0;
  v41[2] = v39;
  OUTLINED_FUNCTION_2_8();
  v45 = *(v44 + 224);
  v46 = byte_28108B3D8;
  v47 = qword_28108B3E0;

  v48 = OUTLINED_FUNCTION_39_1();
  v50 = sub_261F83F58(v48, v49, v46, v47);

  if (v50 < 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v51 = (v4 + v45);
  v52 = OUTLINED_FUNCTION_84();
  *v51 = sub_261FFADB0(v52, v53, v50);
  v51[1] = 0;
  v51[2] = v50;
  OUTLINED_FUNCTION_2_8();
  v55 = *(v54 + 232);
  v56 = unk_28108B3D0;
  v57 = byte_28108B3D8;
  v58 = qword_28108B3E0;

  v59 = OUTLINED_FUNCTION_39_1();
  v61 = sub_261F83F58(v59, v60, v57, v58);

  if (v61 >= 1)
  {
    v62 = (v4 + v55);
    v63 = OUTLINED_FUNCTION_84();
    *v62 = sub_261FFADB0(v63, v64, v61);
    v62[1] = 0;
    v62[2] = v61;
    OUTLINED_FUNCTION_2_8();
    type metadata accessor for TunnelInterfaceParameters(0);
    OUTLINED_FUNCTION_108_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    OUTLINED_FUNCTION_2_8();
    v70 = (v4 + *(v69 + 248));
    *v70 = 0;
    v70[1] = 0;
    OUTLINED_FUNCTION_2_8();
    v72 = (v4 + *(v71 + 256));
    *v72 = 0;
    v72[1] = 0;
    OUTLINED_FUNCTION_2_8();
    *(v4 + *(v73 + 264)) = 0;
    OUTLINED_FUNCTION_2_8();
    *(v4 + *(v74 + 272)) = 0;
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_78_1(*(v75 + 280));
    *(v4 + *(v76 + 288)) = 0;
    sub_261F79740(a3, aBlock);
    OUTLINED_FUNCTION_36_1();
    swift_beginAccess();
    sub_261FB9B04(aBlock, v20, &qword_27FEFA288, &qword_262044098);
    swift_endAccess();
    *v22 = 0;
    v22[8] = 0;
    OUTLINED_FUNCTION_2_8();
    *(v4 + *(v77 + 200)) = a4;
    OUTLINED_FUNCTION_2_8();
    v78 = *(v90 + 88);
    OUTLINED_FUNCTION_155_0();
    type metadata accessor for TunnelEndpoint.State(v79, v80, v81, v82);
    swift_storeEnumTagMultiPayload();
    v4[2] = a1;
    v4[3] = a2;
    OUTLINED_FUNCTION_63();
    v83 = swift_allocObject();
    OUTLINED_FUNCTION_262(v83);
    swift_weakInit();
    OUTLINED_FUNCTION_107();
    v84 = swift_allocObject();
    v84[2] = v5;
    v84[3] = v78;
    v84[4] = v56;
    aBlock[4] = sub_261FFCAE4;
    aBlock[5] = v84;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261FF325C;
    aBlock[3] = &block_descriptor_10;
    v85 = _Block_copy(aBlock);
    v86 = a4;

    OUTLINED_FUNCTION_72();
    v87 = os_state_add_handler();
    _Block_release(v85);

    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    OUTLINED_FUNCTION_2_8();
    v89 = v4 + *(v88 + 280);
    *v89 = v87;
    v89[8] = 0;
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_261FF325C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void TunnelEndpoint.__allocating_init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)(uint64_t a1)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_267();
  TunnelEndpoint.init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)();
  OUTLINED_FUNCTION_22_2();
}

void TunnelEndpoint.init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v114 = v3;
  v115 = v2;
  v109 = v4;
  v110 = v5;
  v106 = *v6;
  v107 = v7;
  v103 = *(v6 + 8);
  v112 = *v8;
  v111 = *(v8 + 8);
  v108 = *v0;
  OUTLINED_FUNCTION_108_0();
  v113 = v9;
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_2_8();
  sub_262039ACC();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_40_4();
  v18 = v0 + *(v17 + 120);
  *v18 = 0;
  v18[2] = 1;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v19 + 128));
  OUTLINED_FUNCTION_27_5(*(v20 + 136));
  OUTLINED_FUNCTION_15_7(*(v21 + 144));
  v23 = v0 + *(v22 + 152);
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_40_4();
  v25 = v1 + *(v24 + 160);
  *v25 = 0;
  v102 = v25;
  v25[8] = 1;
  OUTLINED_FUNCTION_40_4();
  v27 = *(v26 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_11_9();
  sub_261F67F70(v28, &qword_27FEF98B0, &unk_26203F690, v29);
  OUTLINED_FUNCTION_162_0();
  v104 = v27;
  *(v1 + v27) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v31 = *(v30 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
  OUTLINED_FUNCTION_162_0();
  v105 = v31;
  *(v1 + v31) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v33 = *(v32 + 184);
  OUTLINED_FUNCTION_162_0();
  *(v1 + v33) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v35 = *(v34 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  OUTLINED_FUNCTION_162_0();
  *(v1 + v35) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v37 = *(v36 + 216);
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_34_4(&qword_28108B3C0);
  }

  OUTLINED_FUNCTION_146(&qword_28108B3C8, &v118);
  v39 = qword_28108B3C8;
  v38 = unk_28108B3D0;
  v40 = byte_28108B3D8;
  v41 = qword_28108B3E0;

  v42 = sub_261F83F58(v39, v38, v40, v41);

  if (v42 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v43 = (v1 + v37);
  v44 = OUTLINED_FUNCTION_84();
  *v43 = sub_261FFADB0(v44, v45, v42);
  v43[1] = 0;
  v43[2] = v42;
  OUTLINED_FUNCTION_40_4();
  v47 = *(v46 + 224);
  v48 = byte_28108B3D8;
  v49 = qword_28108B3E0;

  v50 = OUTLINED_FUNCTION_42_3();
  v52 = sub_261F83F58(v50, v51, v48, v49);

  if (v52 < 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = (v1 + v47);
  v54 = OUTLINED_FUNCTION_84();
  *v53 = sub_261FFADB0(v54, v55, v52);
  v53[1] = 0;
  v53[2] = v52;
  OUTLINED_FUNCTION_40_4();
  v57 = *(v56 + 232);
  v58 = byte_28108B3D8;
  v59 = qword_28108B3E0;

  v60 = OUTLINED_FUNCTION_42_3();
  v62 = sub_261F83F58(v60, v61, v58, v59);

  if (v62 < 1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v63 = (v1 + v57);
  v64 = OUTLINED_FUNCTION_84();
  *v63 = sub_261FFADB0(v64, v65, v62);
  v63[1] = 0;
  v63[2] = v62;
  OUTLINED_FUNCTION_40_4();
  type metadata accessor for TunnelInterfaceParameters(0);
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_27_5(*(v70 + 248));
  OUTLINED_FUNCTION_27_5(*(v71 + 256));
  *(v1 + *(v72 + 264)) = 0;
  OUTLINED_FUNCTION_40_4();
  *(v1 + *(v73 + 272)) = 0;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v74 + 280));
  *(v1 + *(v75 + 288)) = 0;
  sub_261F79740(v115, aBlock);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(aBlock, v23, &qword_27FEFA288, &qword_262044098);
  swift_endAccess();
  *v102 = v106;
  v102[8] = v103;
  if (!v103)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA298, &qword_2620440A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26203E9E0;
    v77 = v115[4];
    v78 = OUTLINED_FUNCTION_11_0();
    __swift_project_boxed_opaque_existential_0Tm(v78, v79);
    OUTLINED_FUNCTION_149_0();
    v80 = OUTLINED_FUNCTION_67_2();
    v81(v80, v77);
    sub_261F79740(v115, inited + 48);
    *(inited + 88) = v106;
  }

  v82 = sub_26203A0FC();
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  *(v1 + v104) = v82;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA290, &qword_2620440A0);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_26203E9E0;
  v84 = v115[4];
  v85 = OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_0Tm(v85, v86);
  OUTLINED_FUNCTION_149_0();
  v87 = OUTLINED_FUNCTION_67_2();
  v88(v87, v84);
  *(v83 + 48) = v107;
  v89 = sub_26203A0FC();
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  *(v1 + v105) = v89;

  OUTLINED_FUNCTION_40_4();
  *(v1 + *(v90 + 200)) = v114;
  OUTLINED_FUNCTION_40_4();
  v91 = *(v108 + 88);
  type metadata accessor for TunnelEndpoint.State(0, v113, v91, v92);
  swift_storeEnumTagMultiPayload();
  v1[2] = v109;
  v1[3] = v110;
  OUTLINED_FUNCTION_40_4();
  v94 = v1 + *(v93 + 144);
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  *v94 = v112;
  v94[8] = v111;
  OUTLINED_FUNCTION_63();
  v95 = swift_allocObject();
  OUTLINED_FUNCTION_136_0(v95);
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v96 = swift_allocObject();
  v96[2] = v113;
  v96[3] = v91;
  v96[4] = v94;
  aBlock[4] = sub_261FFF820;
  v117 = v96;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261FF325C;
  aBlock[3] = &block_descriptor_10;
  _Block_copy(aBlock);
  v97 = v117;
  v98 = v114;

  os_state_add_handler();
  v99 = OUTLINED_FUNCTION_70();
  _Block_release(v99);

  OUTLINED_FUNCTION_40_4();
  v101 = v1 + *(v100 + 280);
  *v101 = v97;
  v101[8] = 0;
  __swift_destroy_boxed_opaque_existential_0Tm(v115);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FF3ABC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_79(a2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    sub_261FFA6C4();
  }

  return 0;
}

uint64_t TunnelEndpoint.deinit()
{
  OUTLINED_FUNCTION_23_4();
  if ((*(v0 + *(v1 + 280) + 8) & 1) == 0)
  {
    os_state_remove_handler();
  }

  OUTLINED_FUNCTION_2_8();
  v3 = *(v2 + 104);
  OUTLINED_FUNCTION_110_0();
  sub_26203A6DC();
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_2_8();
  sub_261F66E60(v0 + *(v5 + 112), &qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();
  sub_261F66E60(v0 + *(v6 + 152), &qword_27FEFA288, &qword_262044098);
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();
  v9 = *(v8 + 208);
  v10 = OUTLINED_FUNCTION_110_0();
  type metadata accessor for TunnelEndpoint.State(v10, v11, v12, v13);
  OUTLINED_FUNCTION_6_1();
  (*(v14 + 8))(v0 + v9);
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();
  sub_261F66E60(v0 + *(v15 + 240), &qword_27FEFA2A0, &qword_2620440B0);
  OUTLINED_FUNCTION_2_8();
  sub_261F665E4(*(v0 + *(v16 + 248)), *(v0 + *(v16 + 248) + 8));
  OUTLINED_FUNCTION_2_8();
  sub_261F665E4(*(v0 + *(v17 + 256)), *(v0 + *(v17 + 256) + 8));
  OUTLINED_FUNCTION_2_8();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();
  v19 = *(v18 + 272);
  v20 = *(v0 + v19);
  *(v0 + v19) = 0;

  if (v20)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      OUTLINED_FUNCTION_40_4();
      v22 = *(v20 + *(v21 + 272));
      swift_retain_n();

      v20 = v22;
    }

    while (v22);
  }

  return v0;
}

uint64_t TunnelEndpoint.__deallocating_deinit()
{
  TunnelEndpoint.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_261FF3E94()
{
  OUTLINED_FUNCTION_96();
  v3 = v2;
  v5 = v4;
  LODWORD(v90) = v6;
  OUTLINED_FUNCTION_23_4();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_60_2();
  v10 = *(v9 + 88);
  type metadata accessor for TunnelEndpoint.Event(0, v8, v10, v11);
  OUTLINED_FUNCTION_0();
  v88 = v13;
  v89 = v12;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_44();
  v87 = v15;
  v16 = OUTLINED_FUNCTION_9_5();
  v18 = type metadata accessor for TunnelEndpoint.State(v16, v8, v10, v17);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  v25 = sub_26203A4AC();
  if (qword_28108B618 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v91 = qword_28108B620;
  v26 = os_log_type_enabled(qword_28108B620, v25);
  v92 = v1;
  if (v26)
  {
    OUTLINED_FUNCTION_42_1();
    v27 = swift_slowAlloc();
    v86 = v5;
    v28 = v27;
    v84 = v27;
    OUTLINED_FUNCTION_30();
    v85 = swift_slowAlloc();
    v95 = v85;
    *v28 = 136446210;
    v93 = v90;
    v94 = BYTE2(v90) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA2A8, &qword_2620440B8);
    v29 = sub_26203A20C();
    v31 = v20;
    v32 = v18;
    v33 = v25;
    v34 = v10;
    v35 = OUTLINED_FUNCTION_303(v29, v30);

    v36 = v84;
    *(v84 + 4) = v35;
    v10 = v34;
    v37 = v33;
    v18 = v32;
    v20 = v31;
    _os_log_impl(&dword_261F5B000, v91, v37, "TunnelEndpoint: Establishing a client tunnel with MTU = %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v5 = v86;
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  sub_261F798CC(v24);
  OUTLINED_FUNCTION_108();
  swift_storeEnumTagMultiPayload();
  v38 = OUTLINED_FUNCTION_256();
  v40 = sub_261FF4548(v38, v39, v8, v10);
  v41 = *(v20 + 8);
  v42 = OUTLINED_FUNCTION_108();
  v41(v42);
  v43 = (v41)(v24, v18);
  if ((v40 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    v48 = sub_261F665E4(v43, v44);
    __break(1u);
    goto LABEL_23;
  }

  v45 = v90;
  if ((v90 & 0x10000) != 0)
  {
    v46 = OUTLINED_FUNCTION_11_0();
    v45 = v47(v46);
  }

  v43 = sub_261FF246C();
  if (v43)
  {
    goto LABEL_22;
  }

  v48 = sub_261FF24D0();
  if (!v48)
  {
    v50 = *(v10 + 16);
    v51 = OUTLINED_FUNCTION_11_0();
    if (v45 >= v50(v51))
    {
      v66 = *(v10 + 24);
      v67 = OUTLINED_FUNCTION_11_0();
      if (v66(v67) >= v45)
      {

        sub_261FF258C();
        OUTLINED_FUNCTION_46();
        v79 = swift_allocObject();
        *(v79 + 16) = v5;
        *(v79 + 24) = v3;

        OUTLINED_FUNCTION_19_5();
        sub_261FF24AC();
        OUTLINED_FUNCTION_46();
        v80 = swift_allocObject();
        *(v80 + 16) = v5;
        *(v80 + 24) = v3;

        OUTLINED_FUNCTION_19_5();
        sub_261FF2510();
        *v87 = v45;
        swift_storeEnumTagMultiPayload();
        sub_261F6D760();
        v81 = OUTLINED_FUNCTION_98_0();
        v82(v81);
        goto LABEL_20;
      }

      v68 = sub_26203A48C();
      if (os_log_type_enabled(v91, v68))
      {
        OUTLINED_FUNCTION_30();
        v0 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v90 = swift_slowAlloc();
        v95 = v90;
        *v0 = 136446722;
        v69 = sub_261F7C884();
        OUTLINED_FUNCTION_188(v69, v70);
        v92 = v10;
        OUTLINED_FUNCTION_73_2();

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_280();
        v71 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v71, v72);
        OUTLINED_FUNCTION_142_0();

        v73 = OUTLINED_FUNCTION_165_0();
        v93 = v66(v73);
        OUTLINED_FUNCTION_280();
        v74 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v74, v75);
        OUTLINED_FUNCTION_70();

        v0[3] = v10 + 24;
        OUTLINED_FUNCTION_282(&dword_261F5B000, v76, v77, "%{public}s: the client tunnel MTU = %{public}s is more than the maximum supported MTU = %{public}s");
        OUTLINED_FUNCTION_273();
        swift_arrayDestroy();
        v78 = OUTLINED_FUNCTION_29_7();
        MEMORY[0x266724180](v78);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      sub_261F9D610();
      OUTLINED_FUNCTION_19();
      swift_allocError();
      OUTLINED_FUNCTION_250();
      sub_261F9BCE0();
      OUTLINED_FUNCTION_124_0();
      v65 = 1030;
    }

    else
    {
      v52 = sub_26203A48C();
      if (os_log_type_enabled(v91, v52))
      {
        OUTLINED_FUNCTION_30();
        v0 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v90 = swift_slowAlloc();
        v95 = v90;
        *v0 = 136446722;
        v53 = sub_261F7C884();
        OUTLINED_FUNCTION_188(v53, v54);
        v92 = v10;
        OUTLINED_FUNCTION_73_2();

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_280();
        v55 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v55, v56);
        OUTLINED_FUNCTION_142_0();

        v57 = OUTLINED_FUNCTION_165_0();
        v93 = v50(v57);
        OUTLINED_FUNCTION_280();
        v58 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v58, v59);
        OUTLINED_FUNCTION_70();

        v0[3] = v10 + 16;
        OUTLINED_FUNCTION_282(&dword_261F5B000, v60, v61, "%{public}s: the client tunnel MTU = %{public}s is less than the minimum supported MTU = %{public}s");
        OUTLINED_FUNCTION_273();
        swift_arrayDestroy();
        v62 = OUTLINED_FUNCTION_29_7();
        MEMORY[0x266724180](v62);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      sub_261F9D610();
      OUTLINED_FUNCTION_19();
      swift_allocError();
      OUTLINED_FUNCTION_250();
      sub_261F9BCE0();
      OUTLINED_FUNCTION_124_0();
      v65 = 1029;
    }

    OUTLINED_FUNCTION_235(v65, v63, v64);
    v5(v0);

LABEL_20:
    OUTLINED_FUNCTION_31_0();
    return;
  }

LABEL_23:
  sub_261F665E4(v48, v49);
  __break(1u);
}

uint64_t sub_261FF4548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v7 = sub_26203965C();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v43 - v10;
  v12 = type metadata accessor for TunnelEndpoint.State(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v25 = &v43 - v24;
  v26 = &v43 + *(v23 + 48) - v24;
  v48 = v13;
  v27 = *(v13 + 16);
  v27(&v43 - v24, a1, v12);
  v27(v26, v50, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27(v19, v25, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_31;
      }

      v28 = *v19;
      goto LABEL_21;
    case 2u:
      v27(v16, v25, v12);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v46 + 8))(&v16[v29], v47);
LABEL_31:
        (*(v49 + 8))(v25, TupleTypeMetadata2);
        goto LABEL_32;
      }

      LODWORD(v50) = *v16;
      v30 = *v26;
      v31 = v46;
      v32 = v47;
      v33 = *(v46 + 32);
      v34 = &v16[v29];
      v35 = v45;
      v33(v45, v34, v47);
      v36 = &v26[v29];
      v37 = v44;
      v33(v44, v36, v32);
      if (v50 != v30)
      {
        v38 = *(v31 + 8);
        v38(v37, v32);
        v38(v35, v32);
        (*(v48 + 8))(v25, v12);
LABEL_32:
        v40 = 0;
        return v40 & 1;
      }

      v40 = sub_26203962C();
      v42 = *(v31 + 8);
      v42(v37, v32);
      v42(v35, v32);
      (*(v48 + 8))(v25, v12);
      return v40 & 1;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_31;
      }

LABEL_29:
      (*(v48 + 8))(v25, v12);
      v40 = 1;
      return v40 & 1;
    default:
      v27(v21, v25, v12);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_31;
      }

      v28 = *v21;
LABEL_21:
      v39 = v28 ^ *v26;
      (*(v48 + 8))(v25, v12);
      v40 = v39 ^ 1;
      return v40 & 1;
  }
}

void sub_261FF4B00()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v115 = v3;
  v116 = v4;
  v117 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_23_4();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_60_2();
  v11 = *(v10 + 88);
  v12 = OUTLINED_FUNCTION_210();
  type metadata accessor for TunnelEndpoint.Event(v12, v13, v11, v14);
  OUTLINED_FUNCTION_0();
  v112 = v16;
  v113 = v15;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44();
  v111 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_40(v19);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_44();
  v110 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  OUTLINED_FUNCTION_40(v22);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_44();
  v108 = v24;
  v25 = OUTLINED_FUNCTION_9_5();
  v118 = type metadata accessor for TunnelInterfaceParameters(v25);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v109 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_88_1();
  v114 = v29;
  v30 = OUTLINED_FUNCTION_9_5();
  v32 = type metadata accessor for TunnelEndpoint.State(v30, v9, v11, v31);
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v36);
  v38 = (&v107 - v37);
  sub_261F798CC(&v107 - v37);
  swift_storeEnumTagMultiPayload();
  v39 = sub_261FF4548(v38, v0, v9, v11);
  v40 = *(v34 + 8);
  v40(v0, v32);
  v40(v38, v32);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = sub_262039ACC();
  sub_261F6E4A4(&qword_28108B390, MEMORY[0x277CD8C88], MEMORY[0x277CD8C98]);
  if (sub_26203A17C())
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v7;
  v42 = sub_261FF246C();
  if (v42)
  {
    v44 = sub_261F665E4(v42, v43);
    __break(1u);
  }

  else
  {
    v44 = sub_261FF24D0();
    if (!v44)
    {
      v46 = *&v7[*(v118 + 24)];
      v0 = *(v11 + 16);
      v47 = OUTLINED_FUNCTION_119_0();
      if (v46 >= v0(v47))
      {
        v0 = *(v11 + 24);
        v64 = OUTLINED_FUNCTION_119_0();
        if (v46 <= v0(v64))
        {

          sub_261FF258C();
          OUTLINED_FUNCTION_46();
          v90 = swift_allocObject();
          v92 = v115;
          v91 = v116;
          *(v90 + 16) = v115;
          *(v90 + 24) = v91;

          OUTLINED_FUNCTION_19_5();
          sub_261FF24AC();
          OUTLINED_FUNCTION_46();
          v93 = swift_allocObject();
          *(v93 + 16) = v92;
          *(v93 + 24) = v91;

          OUTLINED_FUNCTION_19_5();
          sub_261FF2510();
          OUTLINED_FUNCTION_4_13();
          sub_261FFEE24(v40, v108);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v94, v95, v96, v118);
          sub_261FF23FC();
          OUTLINED_FUNCTION_71();
          (*(v97 + 16))(v110, v117, v41);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v98, v99, v100, v41);
          sub_261FF1A04();
          swift_storeEnumTagMultiPayload();
          sub_261F6D760();
          v101 = OUTLINED_FUNCTION_98_0();
          v102(v101);
LABEL_20:
          OUTLINED_FUNCTION_31_0();
          return;
        }

        v65 = sub_26203A48C();
        if (qword_28108B618 != -1)
        {
          OUTLINED_FUNCTION_0_27();
          swift_once();
        }

        v66 = qword_28108B620;
        OUTLINED_FUNCTION_4_13();
        v67 = v109;
        sub_261FFEE24(v40, v109);
        if (os_log_type_enabled(v66, v65))
        {
          OUTLINED_FUNCTION_30();
          v68 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v120 = swift_slowAlloc();
          *v68 = 136446722;
          LODWORD(v117) = v65;
          v69 = sub_261F7C884();
          OUTLINED_FUNCTION_188(v69, v70);
          OUTLINED_FUNCTION_70();

          *(v68 + 4) = v2;
          *(v68 + 12) = 2082;
          v119 = *(v67 + *(v118 + 24));
          sub_26203ABAC();
          OUTLINED_FUNCTION_263();
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v71, v72);
          v73 = OUTLINED_FUNCTION_45_0();
          sub_261F67FE4(v73, v74, v75);
          OUTLINED_FUNCTION_263();

          *(v68 + 14) = &v119;
          *(v68 + 22) = 2082;
          v76 = OUTLINED_FUNCTION_119_0();
          v119 = v0(v76);
          v77 = sub_26203ABAC();
          OUTLINED_FUNCTION_188(v77, v78);
          OUTLINED_FUNCTION_70();

          *(v68 + 24) = 2082;
          OUTLINED_FUNCTION_271();
          _os_log_impl(v79, v80, v81, v82, v83, v84);
          swift_arrayDestroy();
          v85 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v85);
          v86 = OUTLINED_FUNCTION_24_5();
          MEMORY[0x266724180](v86);
        }

        else
        {
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v67, v103);
        }

        v104 = v115;
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_250();
        sub_261F9BCE0();
        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_235(1030, v105, v106);
        v104(v0);
LABEL_19:

        goto LABEL_20;
      }

      LODWORD(v7) = sub_26203A48C();
      if (qword_28108B618 == -1)
      {
LABEL_7:
        v48 = qword_28108B620;
        OUTLINED_FUNCTION_4_13();
        v49 = v114;
        sub_261FFEE24(v40, v114);
        if (os_log_type_enabled(v48, v7))
        {
          OUTLINED_FUNCTION_30();
          v50 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v120 = swift_slowAlloc();
          *v50 = 136446722;
          LODWORD(v117) = v7;
          v51 = v49;
          v52 = sub_261F7C884();
          OUTLINED_FUNCTION_188(v52, v53);
          OUTLINED_FUNCTION_70();

          *(v50 + 4) = v2;
          *(v50 + 12) = 2082;
          v119 = *(v49 + *(v118 + 24));
          v54 = sub_26203ABAC();
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v51, v55);
          v56 = OUTLINED_FUNCTION_135();
          sub_261F67FE4(v56, v57, v58);
          OUTLINED_FUNCTION_61_2();

          *(v50 + 14) = v54;
          *(v50 + 22) = 2082;
          v59 = OUTLINED_FUNCTION_119_0();
          v119 = v0(v59);
          v60 = sub_26203ABAC();
          v62 = OUTLINED_FUNCTION_188(v60, v61);

          *(v50 + 24) = v62;
          _os_log_impl(&dword_261F5B000, v48, v117, "%{public}s: the server tunnel MTU = %{public}s is less than the minimum supported MTU = %{public}s", v50, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
          v63 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v63);
        }

        else
        {
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v49, v87);
        }

        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_250();
        sub_261F9BCE0();
        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_235(1029, v88, v89);
        v115(v0);
        goto LABEL_19;
      }

LABEL_23:
      OUTLINED_FUNCTION_0_27();
      swift_once();
      goto LABEL_7;
    }
  }

  sub_261F665E4(v44, v45);
  __break(1u);
}

void sub_261FF5370()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v35 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_23_4();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_60_2();
  v9 = *(v8 + 88);
  type metadata accessor for TunnelEndpoint.Event(0, v7, v9, v10);
  OUTLINED_FUNCTION_0();
  v36 = v12;
  v37 = v11;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  v15 = type metadata accessor for TunnelEndpoint.State(0, v7, v9, v14);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  sub_261F798CC(&v34 - v20);
  OUTLINED_FUNCTION_177_0();
  swift_storeEnumTagMultiPayload();
  v22 = OUTLINED_FUNCTION_204();
  LOBYTE(v7) = sub_261FF4548(v22, v23, v7, v9);
  v24 = *(v17 + 8);
  v25 = OUTLINED_FUNCTION_177_0();
  v24(v25);
  v26 = (v24)(v21, v15);
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v26 = sub_261FF246C();
  if (v26)
  {
LABEL_8:
    v28 = sub_261F665E4(v26, v27);
    __break(1u);
    goto LABEL_9;
  }

  v28 = sub_261FF24D0();
  if (!v28)
  {
    OUTLINED_FUNCTION_46();
    v30 = swift_allocObject();
    v31 = v35;
    *(v30 + 16) = v35;
    *(v30 + 24) = v2;

    sub_261FF24AC();
    OUTLINED_FUNCTION_46();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v2;

    sub_261FF2510();
    *v0 = v5;
    v33 = v37;
    swift_storeEnumTagMultiPayload();
    sub_261F6D760();
    (*(v36 + 8))(v0, v33);
LABEL_6:
    OUTLINED_FUNCTION_31_0();
    return;
  }

LABEL_9:
  sub_261F665E4(v28, v29);
  __break(1u);
}

void sub_261FF55F4()
{
  OUTLINED_FUNCTION_96();
  sub_262039FAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  v58 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v57 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_10();
  v56 = v4;
  OUTLINED_FUNCTION_9_5();
  v55 = sub_26203A03C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_10();
  v54 = v6;
  OUTLINED_FUNCTION_9_5();
  sub_26203A5AC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v8 = sub_262039F9C();
  OUTLINED_FUNCTION_0();
  v61 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_88_1();
  v60 = v12;
  OUTLINED_FUNCTION_266();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_266();
  v16 = *(v15 + 88);
  v17 = OUTLINED_FUNCTION_110_0();
  type metadata accessor for TunnelEndpoint.Event(v17, v18, v16, v19);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_195();
  v53 = v14;
  v52 = v16;
  type metadata accessor for TunnelEndpoint.State(0, v14, v16, v21);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_37();
  sub_261F798CC(v0);
  OUTLINED_FUNCTION_75();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_17;
  }

  v23 = sub_261FF246C();
  if (v23)
  {
    v25 = sub_261F665E4(v23, v24);
    __break(1u);
    goto LABEL_16;
  }

  v25 = sub_261FF24D0();
  if (v25)
  {
LABEL_16:
    sub_261F665E4(v25, v26);
    __break(1u);
LABEL_17:
    v49 = OUTLINED_FUNCTION_75();
    v50(v49);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_252();
    sub_26203A91C();
    __break(1u);
    return;
  }

  v27 = v8;

  sub_261FF2510();
  OUTLINED_FUNCTION_162_0();
  swift_storeEnumTagMultiPayload();
  sub_261F6D760();
  v28 = OUTLINED_FUNCTION_162_0();
  v29(v28);
  if (qword_28108B420 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_146(&qword_28108B428, &v63);
  v30 = byte_28108B438;
  v31 = qword_28108B440;

  v32 = OUTLINED_FUNCTION_72();
  sub_261F83F58(v32, v33, v30, v31);
  OUTLINED_FUNCTION_61_2();

  if (v31 > 0)
  {
    *v60 = v31;
    v59 = *(v61 + 104);
    v59();
    sub_261F9B6D0(0, &qword_28108B2A8, 0x277D85CA0);
    v34 = sub_261F6E294();
    v62[0] = MEMORY[0x277D84F90];
    sub_261F6E4A4(&unk_28108B2B0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA2B8, &qword_2620440C0);
    OUTLINED_FUNCTION_25_2();
    sub_261F67F70(v35, &unk_27FEFA2B8, &qword_2620440C0, v36);
    sub_26203A75C();
    sub_26203A5CC();

    v37 = OUTLINED_FUNCTION_204();
    v38(v37);
    sub_261FF255C();
    if (sub_261FF2534())
    {
      ObjectType = swift_getObjectType();
      sub_26203A02C();
      *v51 = 500;
      (v59)(v51, *MEMORY[0x277D85178], v27);
      MEMORY[0x266722B00](v54, v60, v51, ObjectType);
      swift_unknownObjectRelease();
      (*(v61 + 8))(v51, v27);
      v40 = OUTLINED_FUNCTION_99();
      v41(v40, v55);
    }

    if (sub_261FF2534())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_63();
      v42 = swift_allocObject();
      OUTLINED_FUNCTION_270(v42);
      swift_weakInit();
      OUTLINED_FUNCTION_107();
      v43 = swift_allocObject();
      v43[2] = v53;
      v43[3] = v52;
      v43[4] = v61 + 104;
      v62[4] = sub_261F7B990;
      v62[5] = v43;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 1107296256;
      v62[2] = sub_261F78F64;
      v62[3] = &block_descriptor_35;
      v44 = _Block_copy(v62);

      sub_262039FCC();
      sub_261FF0554();
      OUTLINED_FUNCTION_133_0();
      sub_26203A5EC();
      _Block_release(v44);
      swift_unknownObjectRelease();
      v45 = OUTLINED_FUNCTION_99();
      v46(v45);
      (*(v57 + 8))(v56, v58);
    }

    if (sub_261FF2534())
    {
      swift_getObjectType();
      sub_26203A62C();
      swift_unknownObjectRelease();
    }

    v47 = OUTLINED_FUNCTION_177_0();
    v48(v47);
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FF5E0C()
{
  OUTLINED_FUNCTION_23_4();
  type metadata accessor for TunnelEndpoint.Event(0, *(v0 + 80), *(v1 + 88), v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_75();
  swift_storeEnumTagMultiPayload();
  sub_261F6D760();
  v4 = OUTLINED_FUNCTION_75();
  return v5(v4);
}

uint64_t sub_261FF5EE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TunnelEndpoint.State.Groups(255, a3, a4, a4);
  v9 = type metadata accessor for TunnelEndpoint.State(255, a3, a4, v8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v22 - v13;
  v15 = &v22 + *(v12 + 48) - v13;
  *(&v22 - v13) = a1;
  (*(*(v9 - 8) + 16))(v15, a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1)
  {
    if (a1 == 1)
    {
      if ((EnumCaseMultiPayload - 10) < 2 || EnumCaseMultiPayload == 1)
      {
        return 1;
      }
    }

    else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 11)
    {
      return 1;
    }
  }

  else if ((EnumCaseMultiPayload - 10) < 2)
  {
    return 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
    v20 = sub_26203965C();
    (*(*(v20 - 8) + 8))(&v15[v19], v20);
    return 1;
  }

  (*(v11 + 8))(v14, TupleTypeMetadata2);
  return 0;
}

uint64_t sub_261FF6110()
{
  sub_26203ADDC();
  sub_261F7D274(v2, *v0);
  return sub_26203AE0C();
}

uint64_t sub_261FF6158(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v5 = *v4;
      break;
    case 2u:
      v5 = *v4;
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
      v7 = sub_26203965C();
      (*(*(v7 - 8) + 8))(&v4[v6], v7);
      break;
    case 4u:
    case 5u:
    case 0xAu:
    case 0xBu:
      return v5;
    case 6u:
    case 7u:
    case 8u:
      v5 = 1;
      break;
    default:
      (*(v2 + 8))(v4, a1);
      v5 = 2;
      break;
  }

  return v5;
}

void sub_261FF62E0(uint64_t a1)
{
  OUTLINED_FUNCTION_243();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for TunnelEndpoint.Event(v5, v6, v7, v6);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_146(v4 + 16, &v14);
  if (swift_weakLoadStrong())
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
    v10 = OUTLINED_FUNCTION_75();
    sub_261F79740(v10, v11);
    sub_261F674BC(v1, v2 + v9, &qword_27FEFA2D0, &qword_262045930);
    OUTLINED_FUNCTION_98_0();
    swift_storeEnumTagMultiPayload();
    sub_261F6D760();

    v12 = OUTLINED_FUNCTION_98_0();
    v13(v12);
  }

  OUTLINED_FUNCTION_22_2();
}

uint64_t sub_261FF640C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = sub_26203A6DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_261F7A074(&v8 - v4);
  result = __swift_getEnumTagSinglePayload(v5, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = (*(*(v1 + 88) + 40))(v2);
    (*(*(v2 - 8) + 8))(v5, v2);
    return v7;
  }

  return result;
}

uint64_t sub_261FF6540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_261FF23A0();
  v3 = type metadata accessor for TunnelInterfaceParameters(0);
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *&v2[*(v3 + 24)];
    sub_261FFEE7C(v2, type metadata accessor for TunnelInterfaceParameters);
    return v5;
  }

  return result;
}

uint64_t sub_261FF6608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for TunnelEndpoint.Event(0, a4, a5, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261F79740(a3, v10);
    *(v10 + 5) = a1;
    swift_storeEnumTagMultiPayload();
    v12 = a1;
    sub_261F6D760();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

char *sub_261FF673C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_261FBA4C4(*(a1 + 16), 0);
  v4 = sub_261FFDF50(&v6, v3 + 32, v2, a1);
  sub_261FFED8C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_261FF67CC()
{
  OUTLINED_FUNCTION_43_1();
  sub_26203965C();
  OUTLINED_FUNCTION_10_8();
  sub_261F6E4A4(v0, v1, MEMORY[0x277CC9628]);
  OUTLINED_FUNCTION_151_0();
  return sub_26203ABAC();
}

uint64_t sub_261FF6820(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
  return sub_26203A20C();
}

double sub_261FF6864@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_261FA3868(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98A8, &unk_2620447A0);
    sub_26203A8EC();

    v8 = (*(v11 + 56) + 48 * v7);
    v9 = v8[1];
    *a3 = *v8;
    a3[1] = v9;
    a3[2] = v8[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    sub_261F67F70(qword_28108CBA0, &qword_27FEF98B0, &unk_26203F690, &protocol conformance descriptor for Identifier<A>);
    sub_26203A90C();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_261FF6998@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_261FA3868(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF98C0, &qword_26203F6A0);
    sub_26203A8EC();

    sub_261F797BC((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    sub_261F67F70(qword_28108CBA0, &qword_27FEF98B0, &unk_26203F690, &protocol conformance descriptor for Identifier<A>);
    sub_26203A90C();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_261FF6AE0(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v1 = OUTLINED_FUNCTION_72();
  return v2(v1);
}

uint64_t sub_261FF6B34()
{
  v0 = *(sub_261FF2098() + 16);

  return v0;
}

uint64_t sub_261FF6B64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for TunnelEndpoint.Event(0, a4, a5, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8) + 48);
    *v10 = a2;
    v13 = sub_26203965C();
    (*(*(v13 - 8) + 16))(&v10[v12], a3, v13);
    swift_storeEnumTagMultiPayload();
    v14 = a2;
    sub_261F6D760();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_261FF6CE8(uint64_t a1)
{
  sub_261F79740(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  return sub_26203A20C();
}

uint64_t sub_261FF6D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TunnelEndpoint.Event(0, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_126_0();
  v5 = OUTLINED_FUNCTION_98_0();
  v6(v5);
  return sub_26203A20C();
}

uint64_t sub_261FF6DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TunnelEndpoint.State(0, *(*a1 + 80), *(*a1 + 88), a4);
  MEMORY[0x28223BE20](v4);
  sub_261F798CC(&v7 - v5);
  return sub_26203A20C();
}

void sub_261FF6E8C()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v75 = v3;
  v76 = v4;
  v6 = v5;
  v72[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v73 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA360, &qword_2620447B8);
  v10 = OUTLINED_FUNCTION_40(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v11);
  v13 = v72 - v12;
  v14 = type metadata accessor for TunnelMessage(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v72[0] = v16;
  OUTLINED_FUNCTION_29();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v72 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_88_1();
  v74 = v21;
  OUTLINED_FUNCTION_9_5();
  v22 = sub_26203A07C();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_74();
  v28 = (v27 - v26);
  *v28 = sub_261F6E294();
  (*(v24 + 104))(v28, *MEMORY[0x277D85200], v22);
  v29 = sub_26203A0AC();
  v30 = OUTLINED_FUNCTION_59_0();
  v31(v30);
  if (v29)
  {
    v32 = v6[4];
    v33 = OUTLINED_FUNCTION_133_0();
    __swift_project_boxed_opaque_existential_0Tm(v33, v34);
    OUTLINED_FUNCTION_164_0();
    v35 = OUTLINED_FUNCTION_61_2();
    v36(v35, v32);
    v37 = sub_261FF20DC();
    v38 = OUTLINED_FUNCTION_94();
    sub_261F7DCD0(v38, v39, v37);
    OUTLINED_FUNCTION_128_0();

    if (v2)
    {
      sub_261FD46AC();

      v40 = OUTLINED_FUNCTION_211();
      if (__swift_getEnumTagSinglePayload(v40, v41, v14) != 1)
      {
        OUTLINED_FUNCTION_3_19();
        sub_261FFEEEC(v13, v74);
        v42 = OUTLINED_FUNCTION_133_0();
        __swift_project_boxed_opaque_existential_0Tm(v42, v43);
        OUTLINED_FUNCTION_80_1();
        v44 = OUTLINED_FUNCTION_18_5();
        v45(v44);
        v46 = sub_261FF2120();
        OUTLINED_FUNCTION_155_0();
        v50 = sub_261FF0340(v47, v48, v49);
        if (*v51)
        {
          sub_261FF0460(v0);
          (v50)(v79, 0);

          v46(v78, 0);
          v52 = 0;
        }

        else
        {
          (v50)(v79, 0);

          v46(v78, 0);
          v52 = 1;
        }

        __swift_storeEnumTagSinglePayload(v0, v52, 1, v14);
        sub_261F66E60(v0, &unk_27FEFA360, &qword_2620447B8);
        v0 = sub_26203A4AC();
        if (qword_28108B618 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_108_0();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v14);
    }

    sub_261F66E60(v13, &unk_27FEFA360, &qword_2620447B8);
    v56 = v6[3];
    v57 = v6[4];
    __swift_project_boxed_opaque_existential_0Tm(v6, v56);
    (*(v57 + 40))(v75, v76, v56, v57);
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  OUTLINED_FUNCTION_0_27();
  swift_once();
LABEL_10:
  v58 = qword_28108B620;
  OUTLINED_FUNCTION_3_19();
  sub_261FFEE24(v74, v20);
  sub_261F79740(v6, v78);
  if (os_log_type_enabled(v58, v0))
  {
    OUTLINED_FUNCTION_57_1();
    v59 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v77 = swift_slowAlloc();
    *v59 = 136315394;
    sub_261FFEE24(v20, v72[0]);
    sub_26203A20C();
    sub_261FFEE7C(v20, type metadata accessor for TunnelMessage);
    v60 = OUTLINED_FUNCTION_94();
    sub_261F67FE4(v60, v61, v62);
    OUTLINED_FUNCTION_128_0();

    *(v59 + 4) = type metadata accessor for TunnelMessage;
    *(v59 + 12) = 2080;
    v63 = v78[4];
    __swift_project_boxed_opaque_existential_0Tm(v78, v78[3]);
    OUTLINED_FUNCTION_164_0();
    v64 = OUTLINED_FUNCTION_61_2();
    v65(v64, v63);
    v80 = 0x5F6E6F6374;
    v81 = 0xE500000000000000;
    MEMORY[0x266722710](v79[0], v79[1]);
    v66 = v80;
    v67 = v81;

    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    sub_261F67FE4(v66, v67, &v77);
    OUTLINED_FUNCTION_128_0();

    *(v59 + 14) = v66;
    _os_log_impl(&dword_261F5B000, v58, v0, "Returning pre-read message %s for connection %s", v59, 0x16u);
    swift_arrayDestroy();
    v68 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v68);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  else
  {
    OUTLINED_FUNCTION_1_20();
    sub_261FFEE7C(v20, v69);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
  }

  OUTLINED_FUNCTION_103_0();
  v70 = v73;
  v71 = v74;
  sub_261FFEE24(v74, v73);
  swift_storeEnumTagMultiPayload();
  v75(v70);
  sub_261F66E60(v70, &qword_27FEFA2D0, &qword_262045930);
  sub_261FFEE7C(v71, v0);
LABEL_14:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FF74C0@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_261FF2098();
  v4 = sub_261FFBDB8(v2);
  sub_261FFBD4C(&v4);

  sub_261FD47F8(v4, a1);
}

void sub_261FF7550()
{
  OUTLINED_FUNCTION_39();
  v206 = v1;
  v227 = v2;
  v201 = v3;
  OUTLINED_FUNCTION_23_4();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_60_2();
  v7 = *(v6 + 88);
  v8 = OUTLINED_FUNCTION_157();
  v200 = type metadata accessor for TunnelEndpoint.Event(v8, v9, v7, v10);
  OUTLINED_FUNCTION_0();
  v199 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_140(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_40(v15);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  v19 = OUTLINED_FUNCTION_40(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_88_1();
  v192 = v21;
  OUTLINED_FUNCTION_9_5();
  v204 = sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v210 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_16_10();
  v211 = v24;
  v25 = OUTLINED_FUNCTION_9_5();
  v205 = type metadata accessor for TunnelInterfaceParameters(v25);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_10();
  v207 = v27;
  v28 = OUTLINED_FUNCTION_9_5();
  v29 = type metadata accessor for TunnelMessage(v28);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_140(v34);
  v217 = v5;
  v218 = v7;
  v36 = type metadata accessor for TunnelEndpoint.State(255, v5, v7, v35);
  OUTLINED_FUNCTION_206();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v214 = v38;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v191 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v49);
  v51 = &v191 - v50;
  v213 = v0;
  sub_261F798CC(&v191 - v50);
  v215 = TupleTypeMetadata2;
  v52 = *(TupleTypeMetadata2 + 48);
  v53 = v51;
  v54 = v5;
  (*(v41 + 32))(v5, v53, v36);
  OUTLINED_FUNCTION_3_19();
  sub_261FFEE24(v227, v5 + v52);
  v216 = v29;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_19();
      v109 = v209;
      sub_261FFEE24(v5 + v52, v209);
      OUTLINED_FUNCTION_133_0();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        sub_261F66E60(v109, &qword_27FEF9E10, &qword_2620447B0);
        goto LABEL_32;
      }

      v208 = v52;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
      v111 = v110[12];
      v112 = *(v109 + v110[16]);
      v113 = *(v109 + v110[20]);
      OUTLINED_FUNCTION_4_13();
      v114 = v207;
      sub_261FFEEEC(v109, v207);
      v115 = v204;
      (*(v210 + 32))(v211, v109 + v111, v204);
      v116 = sub_26203A4AC();
      if (qword_28108B618 != -1)
      {
        OUTLINED_FUNCTION_0_27();
        swift_once();
      }

      v117 = qword_28108B620;
      if (os_log_type_enabled(qword_28108B620, v116))
      {
        OUTLINED_FUNCTION_42_1();
        v118 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v119 = v54;
        v120 = swift_slowAlloc();
        *&v224 = v120;
        *v118 = 136446210;
        OUTLINED_FUNCTION_264();
        v121 = sub_261F7C884();
        v123 = sub_261F67FE4(v121, v122, &v224);

        *(v118 + 4) = v123;
        _os_log_impl(&dword_261F5B000, v117, v116, "%{public}s: Client received handshake response", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v120);
        v54 = v119;
        v115 = v204;
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v114 = v207;
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      v124 = *(v114 + *(v205 + 24));
      v125 = OUTLINED_FUNCTION_131();
      if (v124 >= v126(v125) && (v127 = OUTLINED_FUNCTION_131(), v124 <= v128(v127)))
      {
        v158 = sub_262039AAC();
        v160 = sub_261FD460C(v158, v159);
        v161 = OUTLINED_FUNCTION_135();
        sub_261F6BFFC(v161, v162);
        if ((v160 & 0x1FF) == 0xFD && (v163 = sub_262039AAC(), v165 = sub_261FD460C(v163, v164), v166 = OUTLINED_FUNCTION_135(), sub_261F6BFFC(v166, v167), (v165 & 0x1FF) == 0xFD))
        {
          OUTLINED_FUNCTION_4_13();
          sub_261FFEE24(v114, v192);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v168, v169, v170, v205);
          OUTLINED_FUNCTION_264();
          sub_261FF23FC();
          v171 = v210;
          OUTLINED_FUNCTION_248();
          v172 = v211;
          v173(v193, v211, v115);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v174, v175, v176, v115);
          sub_261FF1A04();
          sub_261FF1B80(v112);
          *&v224 = v113;
          BYTE8(v224) = 0;
          sub_261FF1C68(&v224);
          v177 = v198;
          swift_storeEnumTagMultiPayload();
          sub_261FF2200(v177);
          v178 = v194;
          LOBYTE(v194->isa) = 0;
          OUTLINED_FUNCTION_256();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_288(v178);
          sub_261F6E52C(v178);
          OUTLINED_FUNCTION_20_6();
          v179 = OUTLINED_FUNCTION_256();
          v180(v179);
          (*(v171 + 8))(v172, v115);
          OUTLINED_FUNCTION_2_19();
          v134 = v114;
        }

        else
        {
          OUTLINED_FUNCTION_198();
          sub_26203A7CC();
          OUTLINED_FUNCTION_193();
          MEMORY[0x266722710](v181 + 27, v182 | 0x8000000000000000);
          OUTLINED_FUNCTION_258();
          sub_26203A8CC();
          MEMORY[0x266722710](0x65746F6D6572202CLL, 0xEB00000000203D20);
          v183 = v211;
          OUTLINED_FUNCTION_258();
          sub_26203A8CC();
          MEMORY[0x266722710](41, 0xE100000000000000);
          sub_261F9BCE0();
          OUTLINED_FUNCTION_69_2();
          OUTLINED_FUNCTION_276();
          sub_261F9D610();
          OUTLINED_FUNCTION_19();
          swift_allocError();
          OUTLINED_FUNCTION_68_2();
          swift_willThrow();
          OUTLINED_FUNCTION_20_6();
          v184(v183, v115);
          OUTLINED_FUNCTION_2_19();
          v134 = v207;
        }
      }

      else
      {
        OUTLINED_FUNCTION_198();
        sub_26203A7CC();
        OUTLINED_FUNCTION_193();
        MEMORY[0x266722710](v129 + 5, v130 | 0x8000000000000000);
        LOWORD(v221) = v124;
        v131 = sub_26203ABAC();
        MEMORY[0x266722710](v131);

        sub_261F9BCE0();
        OUTLINED_FUNCTION_69_2();
        OUTLINED_FUNCTION_276();
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_68_2();
        swift_willThrow();
        OUTLINED_FUNCTION_20_6();
        v132(v211, v115);
        OUTLINED_FUNCTION_2_19();
        v134 = v114;
      }

      sub_261FFEE7C(v134, v133);
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_3_19();
      v208 = v52;
      v70 = v212;
      sub_261FFEE24(v5 + v52, v212);
      v210 = *v70;
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
      v72 = *(v41 + 16);
      v211 = v5;
      v72(v7, v5, v36);
      v73 = sub_261FF5EE8(2, v7, v217, v218);
      v74 = *(v41 + 8);
      v75 = OUTLINED_FUNCTION_159_0();
      v74(v75);
      if (v73)
      {
        sub_261F798CC(v203);
        v76 = sub_261FF6158(v36);
        v77 = OUTLINED_FUNCTION_59_0();
        v209 = v41 + 8;
        v74(v77);
        if (v76 != 2 && (v76 & 1) != 0)
        {
          v229 = v36;
          v78 = v201;
          OUTLINED_FUNCTION_229();
          v79 = OUTLINED_FUNCTION_50_2();
          v80(v79);
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          v81 = OUTLINED_FUNCTION_159_0();
          sub_26202CE60(v81, v82, v83);
          swift_endAccess();

          v84 = *(&v225 + 1);
          sub_261F66E60(&v224, &qword_27FEFA288, &qword_262044098);
          if (v84)
          {
            OUTLINED_FUNCTION_229();
            v85 = OUTLINED_FUNCTION_50_2();
            v86(v85);
            v87 = v219;
            v88 = v220;
            sub_261F79740(v78, &v224);
            *(&v226 + 1) = v210;
            OUTLINED_FUNCTION_36_1();
            swift_beginAccess();
            sub_262029D2C();
            swift_endAccess();
            v89 = v195;
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_229();
            OUTLINED_FUNCTION_63();
            v90 = swift_allocObject();
            OUTLINED_FUNCTION_270(v90);
            swift_weakInit();
            sub_261F79740(v78, &v224);
            v91 = OUTLINED_FUNCTION_167(&unk_28748F5F0);
            v92 = v218;
            v91[2] = v217;
            v91[3] = v92;
            v91[4] = v78;
            sub_261F797BC(&v224, (v91 + 5));
            v93 = *(v88 + 24);

            OUTLINED_FUNCTION_258();
            v93();

            OUTLINED_FUNCTION_103_0();
            sub_261FFEE7C(v89, v94);

            v95 = OUTLINED_FUNCTION_197();
            sub_261F66E60(v95, v96, v97);
            v98 = v211;
            sub_261FFEE7C(v208 + v211, v87);
            v99 = v98;
          }

          else
          {
            v185 = OUTLINED_FUNCTION_197();
            sub_261F66E60(v185, v186, v187);
            OUTLINED_FUNCTION_1_20();
            v188 = v211;
            sub_261FFEE7C(v208 + v211, v189);
            v99 = v188;
          }

          (v74)(v99, v229);
          goto LABEL_48;
        }

        v137 = OUTLINED_FUNCTION_197();
      }

      else
      {
        v135 = &qword_27FEFA270;
        v136 = &qword_262041910;
        v137 = v70 + v71;
      }

      sub_261F66E60(v137, v135, v136);
      v54 = v211;
LABEL_32:
      sub_261F9BCE0();
      sub_26203AD3C();
      OUTLINED_FUNCTION_276();
      v219 = 0;
      v220 = 0xE000000000000000;
      sub_26203A7CC();
      MEMORY[0x266722710](0xD000000000000024, 0x80000002620515A0);
      sub_26203A8CC();
      MEMORY[0x266722710](46, 0xE100000000000000);
      sub_261F9D610();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      sub_26203AD4C();
      swift_willThrow();
      OUTLINED_FUNCTION_20_6();
      v138(v54, v215);
      goto LABEL_48;
    case 3u:
      (*(v41 + 16))(v46, v5, v36);
      v100 = sub_261FF5EE8(2, v46, v217, v218);
      v101 = *(v41 + 8);
      v102 = OUTLINED_FUNCTION_209();
      v101(v102);
      if ((v100 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_261F798CC(v202);
      v103 = sub_261FF6158(v36);
      v104 = OUTLINED_FUNCTION_59_0();
      v101(v104);
      if (v103 == 2 || (v103 & 1) != 0)
      {
        goto LABEL_32;
      }

      __swift_project_boxed_opaque_existential_0Tm(v201, v201[3]);
      v105 = OUTLINED_FUNCTION_50_2();
      v106(v105);
      OUTLINED_FUNCTION_264();
      v107 = sub_261FF2178();
      OUTLINED_FUNCTION_159_0();
      sub_261FA1BC8(v107, v108);

      if (*(&v222 + 1))
      {
        v224 = v221;
        v225 = v222;
        v226 = v223;
        sub_261FF8A80();
        sub_261FFEDE8(&v224);
      }

      else
      {
        sub_261F66E60(&v221, &qword_27FEFA340, &qword_262044790);
      }

      OUTLINED_FUNCTION_1_20();
      sub_261FFEE7C(v5 + v52, v190);
      (v101)(v5, v36);
      goto LABEL_48;
    default:
      OUTLINED_FUNCTION_3_19();
      v55 = v208;
      sub_261FFEE24(v5 + v52, v208);
      v56 = *v55;
      v57 = *(v55 + 1);
      v58 = *(v55 + 2);
      OUTLINED_FUNCTION_133_0();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_32;
      }

      v216 = v57;
      v228 = v36;
      v208 = v52;
      v59 = sub_26203A4AC();
      if (qword_28108B618 != -1)
      {
        OUTLINED_FUNCTION_0_27();
        swift_once();
      }

      v60 = qword_28108B620;
      if (os_log_type_enabled(qword_28108B620, v59))
      {
        OUTLINED_FUNCTION_42_1();
        v61 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v62 = swift_slowAlloc();
        *&v224 = v62;
        *v61 = 136446210;
        OUTLINED_FUNCTION_264();
        v63 = sub_261F7C884();
        sub_261F67FE4(v63, v64, &v224);
        OUTLINED_FUNCTION_142_0();

        *(v61 + 4) = v54;
        _os_log_impl(&dword_261F5B000, v60, v59, "%{public}s: Server received handshake request", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      v65 = (*(v218 + 16))();
      v66 = v213;
      if (v56 < v65)
      {
        OUTLINED_FUNCTION_198();
        sub_26203A7CC();
        OUTLINED_FUNCTION_193();
        MEMORY[0x266722710](v67 + 4, v68 | 0x8000000000000000);
        LOWORD(v221) = v56;
        v69 = sub_26203ABAC();
        MEMORY[0x266722710](v69);

        MEMORY[0x266722710](46, 0xE100000000000000);
        sub_261F9BCE0();
        OUTLINED_FUNCTION_69_2();
        OUTLINED_FUNCTION_276();
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_68_2();
        swift_willThrow();
        goto LABEL_39;
      }

      v139 = v197;
      sub_261FF23A0();
      v140 = v205;
      OUTLINED_FUNCTION_150_0(v139, 1, v205);
      if (v141)
      {
        __break(1u);
        goto LABEL_50;
      }

      v142 = *(v139 + *(v140 + 24));
      OUTLINED_FUNCTION_2_19();
      sub_261FFEE7C(v139, v143);
      v144 = v66 + *(*v66 + 240);
      OUTLINED_FUNCTION_148();
      swift_beginAccess();
      OUTLINED_FUNCTION_150_0(v144, 1, v140);
      if (v141)
      {
LABEL_50:
        __break(1u);
        return;
      }

      if (v142 >= v56)
      {
        v145 = v56;
      }

      else
      {
        v145 = v142;
      }

      *(v144 + *(v140 + 24)) = v145;
      *&v224 = v58;
      BYTE8(v224) = 0;
      sub_261FF1C68(&v224);
      v146 = v66 + *(*v66 + 160);
      v147 = v216;
      *v146 = v216;
      *(v146 + 8) = 0;
      v148 = v201;
      v149 = OUTLINED_FUNCTION_256();
      __swift_project_boxed_opaque_existential_0Tm(v149, v150);
      v151 = OUTLINED_FUNCTION_159_0();
      v152(v151);
      sub_261F79740(v148, &v224);
      *(&v226 + 1) = v147;
      OUTLINED_FUNCTION_36_1();
      swift_beginAccess();
      sub_262029D2C();
      swift_endAccess();
      v153 = v198;
      swift_storeEnumTagMultiPayload();
      sub_261FF2200(v153);
      v154 = v196;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_288(v154);
      sub_261F6E52C(v154);
      v155 = OUTLINED_FUNCTION_99();
      v156(v155, v228);
LABEL_39:
      OUTLINED_FUNCTION_1_20();
      sub_261FFEE7C(v208 + v54, v157);
LABEL_48:
      OUTLINED_FUNCTION_38_0();
      return;
  }
}

uint64_t sub_261FF897C(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for TunnelEndpoint.Event(v5, v6, v7, v6);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_146(a2 + 16, v15);
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = OUTLINED_FUNCTION_75();
    sub_261F79740(v10, v11);
    *(v3 + 40) = v2;
    OUTLINED_FUNCTION_98_0();
    swift_storeEnumTagMultiPayload();
    v12 = v2;
    sub_261F6D760();

    v13 = OUTLINED_FUNCTION_98_0();
    return v14(v13);
  }

  return result;
}

void sub_261FF8A80()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v161 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v160 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_54();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_140(v10);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_266();
  v12 = *(v11 + 88);
  v13 = OUTLINED_FUNCTION_157();
  type metadata accessor for TunnelEndpoint.State(v13, v14, v12, v15);
  OUTLINED_FUNCTION_0();
  v165 = v17;
  v166 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v156 - v20;
  v22 = OUTLINED_FUNCTION_157();
  v164 = type metadata accessor for TunnelEndpoint.Event(v22, v23, v12, v24);
  OUTLINED_FUNCTION_0();
  v163 = v25;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v26);
  v28 = &v156 - v27;
  v29 = OUTLINED_FUNCTION_59_0();
  __swift_project_boxed_opaque_existential_0Tm(v29, v30);
  OUTLINED_FUNCTION_80_1();
  v31 = OUTLINED_FUNCTION_18_5();
  v32(v31);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  v33 = OUTLINED_FUNCTION_42_3();
  sub_26202CD88(v33, v34, v35);
  sub_261F66E60(v171, &qword_27FEFA340, &qword_262044790);
  swift_endAccess();

  v36 = OUTLINED_FUNCTION_59_0();
  __swift_project_boxed_opaque_existential_0Tm(v36, v37);
  OUTLINED_FUNCTION_80_1();
  v38 = OUTLINED_FUNCTION_18_5();
  v39(v38);
  v40 = OUTLINED_FUNCTION_137_0();
  sub_261FA5688(v40, v41);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_155_0();
  sub_262029D2C();
  swift_endAccess();
  v42 = sub_26203A4AC();
  if (qword_28108B618 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v157 = v8;
  v43 = qword_28108B620;
  v44 = OUTLINED_FUNCTION_137_0();
  sub_261FA5688(v44, v45);
  if (os_log_type_enabled(v43, v42))
  {
    swift_retain_n();
    OUTLINED_FUNCTION_30();
    v46 = swift_slowAlloc();
    v156 = v3;
    v47 = v46;
    OUTLINED_FUNCTION_56();
    v167[0] = swift_slowAlloc();
    *v47 = 136446722;
    v48 = sub_261F7C884();
    v50 = sub_261F67FE4(v48, v49, v167);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    sub_261F79740(v171, v169);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    v51 = sub_26203A20C();
    v53 = v52;
    sub_261FFEDE8(v171);
    v54 = sub_261F67FE4(v51, v53, v167);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2048;
    v55 = *(sub_261FF2098() + 16);

    *(v47 + 24) = v55;

    v56 = v43;
    _os_log_impl(&dword_261F5B000, v43, v42, "%{public}s: Starting packet transfer on new connection %s. Current connection pool count = %ld", v47, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v3 = v156;
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  else
  {
    v56 = v43;
    sub_261FFEDE8(v171);
  }

  v57 = v165;
  sub_261F79740(v3, v28);
  swift_storeEnumTagMultiPayload();
  sub_261F6D760();
  OUTLINED_FUNCTION_20_6();
  v58 = OUTLINED_FUNCTION_209();
  v59(v58);
  sub_261F798CC(v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *(v57 + 8);
  v62 = OUTLINED_FUNCTION_204();
  v61(v62);
  if (EnumCaseMultiPayload == 11)
  {
    v63 = sub_26203A4AC();
    v64 = OUTLINED_FUNCTION_137_0();
    sub_261FA5688(v64, v65);
    if (os_log_type_enabled(v56, v63))
    {
      OUTLINED_FUNCTION_57_1();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      v167[0] = swift_slowAlloc();
      *v66 = 136446466;
      v67 = sub_261F7C884();
      sub_261F67FE4(v67, v68, v167);
      OUTLINED_FUNCTION_142_0();

      *(v66 + 4) = v43;
      *(v66 + 12) = 2080;
      sub_261F79740(v171, v169);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
      v69 = sub_26203A20C();
      v71 = v70;
      sub_261FFEDE8(v171);
      sub_261F67FE4(v69, v71, v167);
      OUTLINED_FUNCTION_181_0();

      *(v66 + 14) = v69;
      _os_log_impl(&dword_261F5B000, v56, v63, "%{public}s: Completing unpause with tunnel connection %s", v66, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    else
    {
      sub_261FFEDE8(v171);
    }

    v107 = v162;
    *v162 = 0;
    OUTLINED_FUNCTION_45_0();
    swift_storeEnumTagMultiPayload();
    sub_261FF2200(v107);
    v108 = OUTLINED_FUNCTION_137_0();
    sub_261F79740(v108, v109);
LABEL_14:
    sub_261FF1FB8();
LABEL_23:
    OUTLINED_FUNCTION_40_4();
    v137 = v1 + *(v136 + 160);
    *v137 = v138;
    *(v137 + 8) = 0;
LABEL_24:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  v72 = v158;
  sub_261F798CC(v158);
  OUTLINED_FUNCTION_204();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    LODWORD(v165) = *v72;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798);
    v74 = v160;
    v75 = &v72[*(v73 + 48)];
    v76 = v161;
    (*(v160 + 32))(v159, v75, v161);
    v77 = v56;
    v78 = sub_26203A4AC();
    v79 = v157;
    v80 = OUTLINED_FUNCTION_42_3();
    v81(v80);
    v82 = OUTLINED_FUNCTION_137_0();
    sub_261FA5688(v82, v83);
    LODWORD(v164) = v78;
    if (os_log_type_enabled(v77, v78))
    {
      OUTLINED_FUNCTION_30();
      v84 = swift_slowAlloc();
      OUTLINED_FUNCTION_101();
      v167[0] = swift_slowAlloc();
      *v84 = 136446722;
      v85 = v74;
      v86 = sub_261F7C884();
      sub_261F67FE4(v86, v87, v167);
      OUTLINED_FUNCTION_73_2();

      OUTLINED_FUNCTION_192();
      OUTLINED_FUNCTION_10_8();
      sub_261F6E4A4(v88, v89, MEMORY[0x277CC9628]);
      v90 = sub_26203ABAC();
      v91 = *(v85 + 8);
      v91(v79, v161);
      v92 = OUTLINED_FUNCTION_131();
      sub_261F67FE4(v92, v93, v94);
      OUTLINED_FUNCTION_67_2();

      *(v84 + 14) = v90;
      *(v84 + 22) = 2080;
      sub_261F79740(v171, v169);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
      v95 = sub_26203A20C();
      sub_261FFEDE8(v171);
      v96 = OUTLINED_FUNCTION_131();
      sub_261F67FE4(v96, v97, v98);
      OUTLINED_FUNCTION_67_2();

      *(v84 + 24) = v95;
      v76 = v161;
      OUTLINED_FUNCTION_271();
      _os_log_impl(v99, v100, v101, v102, v103, v104);
      swift_arrayDestroy();
      v105 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v105);
      v106 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v106);
    }

    else
    {
      sub_261FFEDE8(v171);
      v91 = *(v74 + 8);
      v132 = OUTLINED_FUNCTION_75();
      (v91)(v132);
    }

    if (sub_261FF25B0())
    {
      sub_26203A05C();
    }

    sub_261FF25D8();
    v133 = v162;
    *v162 = v165;
    OUTLINED_FUNCTION_45_0();
    swift_storeEnumTagMultiPayload();
    sub_261FF2200(v133);
    v134 = OUTLINED_FUNCTION_137_0();
    sub_261F79740(v134, v135);
    sub_261FF1FB8();
    v91(v159, v76);
    goto LABEL_23;
  }

  v110 = OUTLINED_FUNCTION_204();
  v61(v110);
  OUTLINED_FUNCTION_40_4();
  v112 = (v1 + *(v111 + 160));
  if ((v112[1] & 1) == 0)
  {
    v113 = *v112;
    v114 = *(v3 + 40);
    v115 = sub_26203A4AC();
    v116 = OUTLINED_FUNCTION_137_0();
    if (v113 >= v114)
    {
      sub_261FA5688(v116, v117);
      sub_261FA5688(v3, v169);
      if (os_log_type_enabled(v56, v115))
      {
        v139 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v168 = swift_slowAlloc();
        *v139 = 136447234;
        sub_261F7C884();
        OUTLINED_FUNCTION_74_2();
        sub_261F67FE4(v140, v141, v142);
        OUTLINED_FUNCTION_65();

        *(v139 + 4) = v3;
        *(v139 + 12) = 2080;
        sub_261F7B38C();
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA288, &qword_262044098);
        v144 = OUTLINED_FUNCTION_295(v143);
        v146 = sub_261F67FE4(v144, v145, &v168);

        *(v139 + 14) = v146;
        *(v139 + 22) = 2080;
        sub_261F79740(v171, v167);
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
        OUTLINED_FUNCTION_295(v147);
        sub_261FFEDE8(v171);
        v148 = OUTLINED_FUNCTION_47();
        v151 = sub_261F67FE4(v148, v149, v150);

        *(v139 + 24) = v151;
        *(v139 + 32) = 2048;
        v152 = v170;
        sub_261FFEDE8(v169);
        *(v139 + 34) = v152;
        *(v139 + 42) = 2048;
        *(v139 + 44) = v113;
        _os_log_impl(&dword_261F5B000, v56, v115, "%{public}s: Not migrating from %s to new connection %s because priority %ld is lower than %ld", v139, 0x34u);
        swift_arrayDestroy();
        v153 = OUTLINED_FUNCTION_32_4();
        MEMORY[0x266724180](v153);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      else
      {
        sub_261FFEDE8(v169);
        sub_261FFEDE8(v171);
      }

      goto LABEL_24;
    }

    sub_261FA5688(v116, v117);
    sub_261FA5688(v3, v169);
    if (os_log_type_enabled(v56, v115))
    {
      v118 = swift_slowAlloc();
      OUTLINED_FUNCTION_101();
      v168 = swift_slowAlloc();
      *v118 = 136447234;
      sub_261F7C884();
      OUTLINED_FUNCTION_74_2();
      sub_261F67FE4(v119, v120, v121);
      OUTLINED_FUNCTION_142_0();

      *(v118 + 4) = v43;
      *(v118 + 12) = 2080;
      sub_261F7B38C();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA288, &qword_262044098);
      OUTLINED_FUNCTION_295(v122);
      OUTLINED_FUNCTION_74_2();
      sub_261F67FE4(v123, v124, v125);
      OUTLINED_FUNCTION_142_0();

      *(v118 + 14) = v43;
      *(v118 + 22) = 2080;
      sub_261F79740(v171, v167);
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
      v127 = OUTLINED_FUNCTION_295(v126);
      v129 = v128;
      sub_261FFEDE8(v171);
      sub_261F67FE4(v127, v129, &v168);
      OUTLINED_FUNCTION_181_0();

      *(v118 + 24) = v127;
      *(v118 + 32) = 2048;
      v130 = v170;
      sub_261FFEDE8(v169);
      *(v118 + 34) = v130;
      *(v118 + 42) = 2048;
      *(v118 + 44) = v113;
      _os_log_impl(&dword_261F5B000, v56, v115, "%{public}s: Migrating tunnel connection from %s to new connection %s because priority %ld is higher than %ld", v118, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v131 = OUTLINED_FUNCTION_32_4();
      MEMORY[0x266724180](v131);
    }

    else
    {
      sub_261FFEDE8(v169);
      sub_261FFEDE8(v171);
    }

    v154 = OUTLINED_FUNCTION_137_0();
    sub_261F79740(v154, v155);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_75_2();
  v156 = 1209;
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_252();
  sub_26203A91C();
  __break(1u);
}