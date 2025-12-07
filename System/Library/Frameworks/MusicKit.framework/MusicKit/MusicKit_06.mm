uint64_t sub_217287288(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      return result;
    }

    if (!a3)
    {
      OUTLINED_FUNCTION_31_3();
      if (v7)
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          OUTLINED_FUNCTION_32_3();
          sub_21728B5F8(v39, v40, 10);
          v3 = v41;
          v38 = v42;
          result = v4;
          a2 = v5;
LABEL_73:
          sub_21726A608(result, a2, 0);
          if (v38)
          {
            return 0;
          }

          else
          {
            return v3;
          }
        }

        if ((a2 & 0x2000000000000000) == 0)
        {
          if ((result & 0x1000000000000000) != 0)
          {
            v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v3 = a2;
            sub_217752B88();
            result = OUTLINED_FUNCTION_27_7();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v23 = v6 - 1;
              if (v6 != 1)
              {
                v3 = 0;
                if (v8)
                {
                  while (1)
                  {
                    LOBYTE(v6) = v23 != 0;
                    if (!v23)
                    {
                      goto LABEL_67;
                    }

                    OUTLINED_FUNCTION_5_9();
                    if (!v12 & v11)
                    {
                      goto LABEL_66;
                    }

                    OUTLINED_FUNCTION_1_8();
                    if (!v12)
                    {
                      goto LABEL_66;
                    }

                    v3 = v26 + v25;
                    if (__OFADD__(v26, v25))
                    {
                      goto LABEL_66;
                    }

                    v23 = v24 - 1;
                  }
                }

LABEL_76:
                LOBYTE(v6) = 0;
                goto LABEL_67;
              }

LABEL_66:
              v3 = 0;
LABEL_67:
              v43 = v6;
LABEL_72:
              v38 = v43;
              goto LABEL_73;
            }

            goto LABEL_84;
          }

          if (v9 != 45)
          {
            v3 = 0;
            if (v6)
            {
              while (1)
              {
                v31 = v6 != 0;
                if (!v6)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_5_9();
                if (!v12 & v11 || (OUTLINED_FUNCTION_1_8(), !v12) || (v3 = v34 + v33, __OFADD__(v34, v33)))
                {
                  v3 = 0;
                  goto LABEL_71;
                }

                v6 = v32 - 1;
              }
            }

LABEL_86:
            v31 = 1;
LABEL_71:
            v43 = v31;
            goto LABEL_72;
          }

          if (v6 >= 1)
          {
            v10 = v6 - 1;
            if (v6 != 1)
            {
              v3 = 0;
              if (v8)
              {
                while (1)
                {
                  LOBYTE(v6) = v10 != 0;
                  if (!v10)
                  {
                    goto LABEL_67;
                  }

                  OUTLINED_FUNCTION_5_9();
                  if (!v12 & v11)
                  {
                    goto LABEL_66;
                  }

                  OUTLINED_FUNCTION_1_8();
                  if (!v12)
                  {
                    goto LABEL_66;
                  }

                  v3 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    goto LABEL_66;
                  }

                  v10 = v13 - 1;
                }
              }

              goto LABEL_76;
            }

            goto LABEL_66;
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        OUTLINED_FUNCTION_30_6();
        if (v12)
        {
          if (!v19)
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v3 = 0;
          v27 = v19 - 1;
          if (v27)
          {
            while (1)
            {
              LOBYTE(v6) = v27 != 0;
              if (!v27)
              {
                goto LABEL_67;
              }

              OUTLINED_FUNCTION_2_14();
              if (!v12 & v11)
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_1_8();
              if (!v12)
              {
                goto LABEL_66;
              }

              v3 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_66;
              }

              v27 = v28 - 1;
            }
          }
        }

        else
        {
          if (v18 == 45)
          {
            if (v19)
            {
              if (v19 == 1)
              {
LABEL_68:
                v3 = 0;
              }

              else
              {
                OUTLINED_FUNCTION_6_11();
                while (1)
                {
                  LOBYTE(v19) = v20 != 0;
                  if (!v20)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_2_14();
                  if (!v12 & v11)
                  {
                    goto LABEL_68;
                  }

                  OUTLINED_FUNCTION_1_8();
                  if (!v12)
                  {
                    goto LABEL_68;
                  }

                  v3 = v22 - v21;
                  if (__OFSUB__(v22, v21))
                  {
                    goto LABEL_68;
                  }

                  OUTLINED_FUNCTION_17_4();
                }
              }

              v43 = v19;
              goto LABEL_72;
            }

            goto LABEL_83;
          }

          v3 = 0;
          if (v19)
          {
            while (1)
            {
              LOBYTE(v6) = v19 != 0;
              if (!v19)
              {
                goto LABEL_67;
              }

              OUTLINED_FUNCTION_2_14();
              if (!v12 & v11)
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_1_8();
              if (!v12)
              {
                goto LABEL_66;
              }

              v3 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_66;
              }

              v19 = v35 - 1;
            }
          }
        }

        LOBYTE(v6) = 1;
        goto LABEL_67;
      }

      a3 = 0;
    }

    sub_21726A608(result, a2, a3);
    return 0;
  }

  sub_217288A94();
  OUTLINED_FUNCTION_15_13();
  if (v17)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217287590(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      return a1 & ~(a1 >> 63);
    }

    if (!a3)
    {
      OUTLINED_FUNCTION_31_3();
      if (v7)
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          OUTLINED_FUNCTION_32_3();
          sub_21728BABC(v37, v38, 0xAuLL);
          v3 = v39;
          v36 = v40;
          a1 = v4;
          a2 = v5;
LABEL_76:
          sub_21726A608(a1, a2, 0);
          if (v36)
          {
            return 0;
          }

          else
          {
            return v3;
          }
        }

        if ((a2 & 0x2000000000000000) != 0)
        {
          OUTLINED_FUNCTION_30_6();
          if (v12)
          {
            if (!v8)
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            if (v8 != 1)
            {
              OUTLINED_FUNCTION_6_11();
              while (1)
              {
                LOBYTE(v8) = v25 != 0;
                if (!v25)
                {
                  goto LABEL_56;
                }

                OUTLINED_FUNCTION_2_14();
                if (!v12 & v11)
                {
                  break;
                }

                OUTLINED_FUNCTION_11_14();
                if (!v12)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_19();
                v3 = v27 + v26;
                if (__CFADD__(v27, v26))
                {
                  break;
                }

                OUTLINED_FUNCTION_17_4();
              }
            }
          }

          else
          {
            if (v18 != 45)
            {
              v3 = 0;
              if (v8)
              {
                while (1)
                {
                  v32 = v8 != 0;
                  if (!v8)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_2_14();
                  if (!v12 & v11 || (OUTLINED_FUNCTION_11_14(), !v12) || (OUTLINED_FUNCTION_4_19(), v3 = v35 + v34, __CFADD__(v35, v34)))
                  {
                    v3 = 0;
                    break;
                  }

                  v8 = (v33 - 1);
                }
              }

              else
              {
                v32 = 1;
              }

              v41 = v32;
              goto LABEL_75;
            }

            if (!v8)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            if (v8 != 1)
            {
              OUTLINED_FUNCTION_6_11();
              while (1)
              {
                LOBYTE(v8) = v19 != 0;
                if (!v19)
                {
                  goto LABEL_56;
                }

                OUTLINED_FUNCTION_2_14();
                if (!v12 & v11)
                {
                  break;
                }

                OUTLINED_FUNCTION_11_14();
                if (!v12)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_19();
                v3 = v21 - v20;
                if (v21 < v20)
                {
                  break;
                }

                OUTLINED_FUNCTION_17_4();
              }
            }
          }
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v3 = a2;
            sub_217752B88();
            a1 = OUTLINED_FUNCTION_27_7();
          }

          v9 = *v8;
          if (v9 != 43)
          {
            if (v9 != 45)
            {
              v3 = 0;
              if (v6)
              {
                while (1)
                {
                  v28 = v6 != 0;
                  if (!v6)
                  {
                    goto LABEL_72;
                  }

                  OUTLINED_FUNCTION_5_9();
                  if (!v12 & v11 || (OUTLINED_FUNCTION_11_14(), !v12) || (OUTLINED_FUNCTION_4_19(), v3 = v31 + v30, __CFADD__(v31, v30)))
                  {
                    v3 = 0;
                    goto LABEL_72;
                  }

                  v6 = v29 - 1;
                }
              }

LABEL_88:
              v28 = 1;
LABEL_72:
              v41 = v28;
              goto LABEL_75;
            }

            if (v6 >= 1)
            {
              v10 = v6 - 1;
              if (v10)
              {
                if (v8)
                {
                  v3 = 0;
                  while (1)
                  {
                    LOBYTE(v8) = v10 != 0;
                    if (!v10)
                    {
                      goto LABEL_56;
                    }

                    OUTLINED_FUNCTION_2_14();
                    if (!v12 & v11)
                    {
                      goto LABEL_55;
                    }

                    OUTLINED_FUNCTION_11_14();
                    if (!v12)
                    {
                      goto LABEL_55;
                    }

                    OUTLINED_FUNCTION_4_19();
                    v3 = v14 - v13;
                    if (v14 < v13)
                    {
                      goto LABEL_55;
                    }

                    OUTLINED_FUNCTION_17_4();
                  }
                }

                goto LABEL_55;
              }

LABEL_83:
              v3 = 0;
              LOBYTE(v8) = 1;
              goto LABEL_56;
            }

            __break(1u);
            goto LABEL_85;
          }

          if (v6 < 1)
          {
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v22 = v6 - 1;
          if (!v22)
          {
            goto LABEL_83;
          }

          if (v8)
          {
            v3 = 0;
            while (1)
            {
              LOBYTE(v8) = v22 != 0;
              if (!v22)
              {
                goto LABEL_56;
              }

              OUTLINED_FUNCTION_2_14();
              if (!v12 & v11)
              {
                break;
              }

              OUTLINED_FUNCTION_11_14();
              if (!v12)
              {
                break;
              }

              OUTLINED_FUNCTION_4_19();
              v3 = v24 + v23;
              if (__CFADD__(v24, v23))
              {
                break;
              }

              OUTLINED_FUNCTION_17_4();
            }
          }
        }

LABEL_55:
        v3 = 0;
LABEL_56:
        v41 = v8;
LABEL_75:
        v36 = v41;
        goto LABEL_76;
      }

      a3 = 0;
    }

    sub_21726A608(a1, a2, a3);
    return 0;
  }

  sub_217288C28();
  OUTLINED_FUNCTION_15_13();
  if (v17)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t FixedWidthInteger<>.init(_:)@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_19_3(a2);
  OUTLINED_FUNCTION_18_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *v6;
  v15 = *(v6 + 16);
  v16 = OUTLINED_FUNCTION_20_9(&v28 - v12, 1);
  switch(v15)
  {
    case 3:
      v29 = v14;
      sub_217287AC0(v16, v17, v18);
      OUTLINED_FUNCTION_7_5();
      sub_2177529B8();
      goto LABEL_7;
    case 2:
      v29 = v14;
      sub_217287B14(v16, v17, v18);
      OUTLINED_FUNCTION_7_5();
      sub_217752628();
      goto LABEL_7;
    case 0:
      OUTLINED_FUNCTION_10_5();
      sub_217753008();
LABEL_7:
      v19 = OUTLINED_FUNCTION_28_2();
      v20(v19);
      v21 = *(v8 + 32);
      v21(v13, v5, v3);
      goto LABEL_9;
  }

  v22 = OUTLINED_FUNCTION_10_5();
  sub_21726A608(v22, v23, v15);
  v21 = *(v8 + 32);
LABEL_9:
  v21(v4, v13, v3);
  if (__swift_getEnumTagSinglePayload(v4, 1, v2) == 1)
  {
    (*(v8 + 8))(v4, v3);
    v24 = 1;
    v8 = v28;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_23_8();
    v26(v25);
    v24 = 0;
  }

  return OUTLINED_FUNCTION_20_9(v8, v24);
}

unint64_t sub_217287AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24AF0;
  if (!qword_27CB24AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24AF0);
  }

  return result;
}

unint64_t sub_217287B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24AF8;
  if (!qword_27CB24AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24AF8);
  }

  return result;
}

uint64_t sub_217287B98(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_20(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_217287BFC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_20(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_217287C60(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_20(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

unint64_t sub_217287C94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
    v6 = 0;
    v7 = *&a1;
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    if (a3)
    {
      sub_21726A608(a1, a2, a3);
    }

    else
    {
      v11 = 0.0;
      v5 = sub_21728929C(a1, a2, &v11);
      sub_21726A608(a1, a2, 0);
      if (v5)
      {
        v6 = 0;
        v7 = v11;
LABEL_8:
        v8 = v7;
        goto LABEL_9;
      }
    }

    v9 = 0.0;
    v6 = 1;
    return LODWORD(v9) | (v6 << 32);
  }

  v6 = 0;
  v8 = a1;
LABEL_9:
  v9 = v8;
  return LODWORD(v9) | (v6 << 32);
}

uint64_t sub_217287D60(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *&a1;
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v3 = a1;
      return *&v3;
    }

    if (a3)
    {
      sub_21726A608(a1, a2, a3);
    }

    else
    {
      v7 = 0.0;
      v5 = sub_21728929C(a1, a2, &v7);
      sub_21726A608(*&v3, a2, 0);
      if (v5)
      {
        v3 = v7;
        return *&v3;
      }
    }

    v3 = 0.0;
  }

  return *&v3;
}

uint64_t BinaryFloatingPoint<>.init(_:)@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_19_3(a2);
  OUTLINED_FUNCTION_18_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = *v6;
  v15 = *(v6 + 16);
  v16 = OUTLINED_FUNCTION_20_9(v34 - v12, 1);
  if (v15 == 3)
  {
    sub_217751D78();
  }

  else if (v15 == 2)
  {
    v34[1] = v14;
    sub_217287B14(v16, v17, v18);
    OUTLINED_FUNCTION_7_5();
    sub_217751E98();
  }

  else
  {
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_10_5();
      v24 = v15;
      goto LABEL_9;
    }

    sub_217751DE8();
    v19 = OUTLINED_FUNCTION_10_5();
    sub_217288064(v19, v20);
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_10_5();
      v24 = 0;
LABEL_9:
      v25.n128_f64[0] = sub_21726A608(v22, v23, v24);
      goto LABEL_12;
    }

    sub_217751D78();
    v26 = OUTLINED_FUNCTION_10_5();
    sub_21726A608(v26, v27, 0);
  }

  v28 = OUTLINED_FUNCTION_28_2();
  v29(v28);
  OUTLINED_FUNCTION_20_9(v5, 0);
  (*(v8 + 32))(v13, v5, v3);
LABEL_12:
  (*(v8 + 32))(v4, v13, v3, v25);
  if (__swift_getEnumTagSinglePayload(v4, 1, v2) == 1)
  {
    (*(v8 + 8))(v4, v3);
    v30 = 1;
    v8 = v34[0];
  }

  else
  {
    v31 = OUTLINED_FUNCTION_23_8();
    v32(v31);
    v30 = 0;
  }

  return OUTLINED_FUNCTION_20_9(v8, v30);
}

uint64_t sub_217288064(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_21728929C(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172880DC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_20(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_217288110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_217287D60(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL sub_217288160(_BYTE *a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = a2.n128_u32[0];
  v5 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v6 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_2177525F8(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_2177525D8();
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
    if (v2 >= 0.0 || v12)
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
  if (v2 >= 0.0)
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
    if (v2 >= 0.0)
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

BOOL sub_217288314(_BYTE *a1, __n128 a2)
{
  v3 = a2.n128_u32[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2.n128_f64[0] > -1.0)
  {
    v10 = sub_2177525F8();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_2177525D8();
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

BOOL sub_217288474(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = a2.n128_u32[0];
  v5 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v6 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_2177525F8(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_2177525D8();
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
    if (v2 >= 0.0 || v12)
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
  if (v2 >= 0.0)
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
    if (v2 >= 0.0)
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

BOOL sub_217288628(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_u32[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2.n128_f64[0] > -1.0)
  {
    v10 = sub_2177525F8();
    if (v10 <= 15)
    {
      v11 = v10;
      v12 = sub_2177525D8();
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

BOOL sub_217288788(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = a2.n128_u32[0];
  v5 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v6 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v14 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_40;
  }

  v8 = sub_2177525F8();
  if (v8 > 31)
  {
    goto LABEL_40;
  }

  v9 = v8;
  v10 = sub_2177525D8();
  result = v9 >= v10;
  v7 = v10 + __clz(__rbit64(v6));
  v12 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v7 > 31)
  {
    if ((v12 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v12 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v12 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v12;
        if (v12 >= 0x40)
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
        v13 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (v2 < 0.0 && !v7)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (v12 >= -32 && v12 <= 32)
  {
    if (v12 < 0)
    {
      if (v12 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v12 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v12;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v13 = 1 << v9;
  }

LABEL_24:
  v14 = v7 | v13;
  if (v2 >= 0.0)
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
    if (v2 < 0.0)
    {
      LOBYTE(v7) = 0;
LABEL_39:
      v14 = 0x80000000;
      goto LABEL_29;
    }

LABEL_40:
    v14 = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_217288938(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_u32[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2.n128_f64[0] > -1.0)
  {
    v10 = sub_2177525F8();
    if (v10 <= 31)
    {
      v11 = v10;
      v12 = sub_2177525D8();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 31)
        {
          if (v14 < -32 || v14 > 32)
          {
LABEL_13:
            LODWORD(v14) = 0;
            v15 = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -32)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 32)
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

          v15 = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LODWORD(v14) = 0;
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
        LODWORD(v14) = 0;
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
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_217288A94()
{
  OUTLINED_FUNCTION_13_8();
  if (!v4)
  {
    v12 = 0;
    result = 1;
    goto LABEL_26;
  }

  if (v3 == 2047)
  {
    goto LABEL_29;
  }

  v5 = sub_2177525F8();
  if (v5 > 63)
  {
    goto LABEL_29;
  }

  v6 = v5;
  v7 = sub_2177525D8();
  result = v6 >= v7;
  v9 = v7 + __clz(__rbit64(v1));
  v10 = v6 - v9;
  if (__OFSUB__(v6, v9))
  {
    __break(1u);
LABEL_28:
    if (v2 >= 0.0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  if (v10 >= -64 && v10 <= 64)
  {
    if (v10 < 0)
    {
      if (v10 == -64)
      {
        goto LABEL_7;
      }

      v12 = v1 >> (v9 - v6);
    }

    else
    {
      if (v10 == 64)
      {
        goto LABEL_7;
      }

      v12 = v1 << v10;
    }

    if (v6 != 63)
    {
      if (v6 >= -64)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
LABEL_19:
          v11 = 1 << v6;
          goto LABEL_20;
        }

        if (v6 == -64)
        {
          goto LABEL_21;
        }
      }

      v11 = 0;
      goto LABEL_20;
    }

    if (v2 >= 0.0 || v12)
    {
LABEL_29:
      v12 = 0;
      result = 0;
      LOBYTE(v4) = 1;
      goto LABEL_26;
    }

LABEL_40:
    LOBYTE(v4) = 0;
    v12 = 0x8000000000000000;
    goto LABEL_26;
  }

LABEL_7:
  if (v6 == 63)
  {
    goto LABEL_28;
  }

  if (v6 >= -64)
  {
    if (v6 < 0)
    {
      goto LABEL_33;
    }

    v12 = 0;
    goto LABEL_19;
  }

  do
  {
    v11 = 0;
    v12 = 0;
LABEL_20:
    v12 |= v11;
LABEL_21:
    if (v2 >= 0.0)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
LABEL_33:
    ;
  }

  while (v6 != -64);
  v12 = 0;
  if (v2 < 0.0)
  {
LABEL_23:
    LOBYTE(v4) = 0;
    v12 = -v12;
    goto LABEL_26;
  }

LABEL_25:
  LOBYTE(v4) = 0;
LABEL_26:
  *v0 = v12;
  *(v0 + 8) = v4;
  return result;
}

BOOL sub_217288C28()
{
  OUTLINED_FUNCTION_13_8();
  if (v4)
  {
    if (v3 != 2047 && v2 > -1.0)
    {
      v9 = sub_2177525F8();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_2177525D8();
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

        v14 = v1 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
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

void *sub_217288D34(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B00, &qword_2177591F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_217288DA4(uint64_t a1, unint64_t a2)
{
  v2 = sub_217288E10(sub_217288E0C, 0, a1, a2);
  v6 = sub_217288E44(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_217288E44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_217752938();
    if (!v9 || (v10 = v9, v11 = sub_217288D34(v9, 0), v12 = sub_217288FA4(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_217751DE8(), , v12 == v10))
    {
      v13 = sub_217751FE8();

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
      return sub_217751FE8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_217752B88();
LABEL_4:

  return sub_217751FE8();
}

unint64_t sub_217288FA4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2172891B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2177520A8();
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
          result = sub_217752B88();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2172891B4(v12, a6, a7);
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

    result = sub_217752088();
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

unint64_t sub_2172891B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2177520B8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEA23F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_BYTE *sub_217289230@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_21728929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_217752A98();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

void sub_2172893B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v68 = a2;
  sub_217751DE8();
  v4 = sub_217752108();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4(v4, v5);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v20 = v9 - 1;
        if (v9 != 1)
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

          if (v8)
          {
            LOBYTE(v24) = 0;
            v25 = v8 + 1;
            while (v20)
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v21)
              {
                if (v26 < 0x41 || v26 >= v22)
                {
                  if (v26 < 0x61 || v26 >= v23)
                  {
                    goto LABEL_106;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = (v24 * a3);
              if (v28 != v24 * a3)
              {
                goto LABEL_106;
              }

              v24 = v28 + (v26 + v27);
              if ((v28 + v26 + v27) != v24)
              {
                goto LABEL_106;
              }

              --v20;
              ++v25;
            }
          }
        }

        goto LABEL_106;
      }

      goto LABEL_129;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        LOBYTE(v29) = 0;
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        while (1)
        {
          v33 = *v8;
          if (v33 < 0x30 || v33 >= v30)
          {
            if (v33 < 0x41 || v33 >= v31)
            {
              if (v33 < 0x61 || v33 >= v32)
              {
                goto LABEL_106;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v35 = v29 * a3;
          v36 = (v29 * a3);
          if (v36 == v35)
          {
            v29 = v36 + (v33 + v34);
            if (v29 == v29)
            {
              ++v8;
              if (--v9)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          LOBYTE(v15) = 0;
          v16 = v8 + 1;
          while (v11)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                if (v17 < 0x61 || v17 >= v14)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = (v15 * a3);
            if (v19 != v15 * a3)
            {
              break;
            }

            v15 = v19 - (v17 + v18);
            if ((v19 - (v17 + v18)) != v15)
            {
              break;
            }

            --v11;
            ++v16;
          }
        }
      }

LABEL_106:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v6;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        LOBYTE(v58) = 0;
        v59 = a3 + 55;
        v60 = a3 + 87;
        v61 = a3 + 48;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v60 = 97;
          v59 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v61)
          {
            if (v63 < 0x41 || v63 >= v59)
            {
              if (v63 < 0x61 || v63 >= v60)
              {
                goto LABEL_106;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a3;
          v66 = (v58 * a3);
          if (v66 == v65)
          {
            v58 = v66 + (v63 + v64);
            if (v58 == v58)
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (v40)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_106;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = (v41 * a3);
          if (v48 != v41 * a3)
          {
            goto LABEL_106;
          }

          v41 = v48 - (v46 + v47);
          if ((v48 - (v46 + v47)) != v41)
          {
            goto LABEL_106;
          }

          --v40;
          ++v45;
        }
      }

      goto LABEL_106;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v50) = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (v49)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_106;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = (v50 * a3);
        if (v57 != v50 * a3)
        {
          goto LABEL_106;
        }

        v50 = v57 + (v55 + v56);
        if ((v57 + v55 + v56) != v50)
        {
          goto LABEL_106;
        }

        --v49;
        ++v54;
      }
    }

    goto LABEL_106;
  }

LABEL_130:
  __break(1u);
}

void sub_217289994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;
  sub_217751DE8();
  v4 = sub_217752108();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4(v4, v5);
    v35 = v34;

    v7 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v19 = v9 - 1;
        if (v9 != 1)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v8)
          {
            LOBYTE(v23) = 0;
            v24 = v8 + 1;
            while (v19)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_106;
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

              if (((v23 * a3) & 0xFF00) != 0)
              {
                goto LABEL_106;
              }

              v23 = (v23 * a3) + (v25 + v26);
              if ((v23 >> 8))
              {
                goto LABEL_106;
              }

              --v19;
              ++v24;
            }
          }
        }

        goto LABEL_106;
      }

      goto LABEL_129;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        LOBYTE(v27) = 0;
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

        while (1)
        {
          v31 = *v8;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_106;
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

          v33 = v27 * a3;
          if ((v33 & 0xFF00) == 0)
          {
            v27 = v33 + (v31 + v32);
            if (((v27 >> 8) & 1) == 0)
            {
              ++v8;
              if (--v9)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          LOBYTE(v15) = 0;
          v16 = v8 + 1;
          while (v11)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                if (v17 < 0x61 || v17 >= v14)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (((v15 * a3) & 0xFF00) != 0)
            {
              break;
            }

            v15 = (v15 * a3) - (v17 + v18);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              break;
            }

            --v11;
            ++v16;
          }
        }
      }

LABEL_106:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v7) & 0xF;
  v61 = v6;
  v62 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        LOBYTE(v53) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v61;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_106;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v53 * a3;
          if ((v60 & 0xFF00) == 0)
          {
            v53 = v60 + (v58 + v59);
            if (((v53 >> 8) & 1) == 0)
            {
              v57 = (v57 + 1);
              if (--v36)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        LOBYTE(v38) = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v61 + 1;
        while (v37)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_106;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          if (((v38 * a3) & 0xFF00) != 0)
          {
            goto LABEL_106;
          }

          v38 = (v38 * a3) - (v43 + v44);
          if ((v38 & 0xFFFFFF00) != 0)
          {
            goto LABEL_106;
          }

          --v37;
          ++v42;
        }
      }

      goto LABEL_106;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      LOBYTE(v46) = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v61 + 1;
      while (v45)
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_106;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        if (((v46 * a3) & 0xFF00) != 0)
        {
          goto LABEL_106;
        }

        v46 = (v46 * a3) + (v51 + v52);
        if ((v46 >> 8))
        {
          goto LABEL_106;
        }

        --v45;
        ++v50;
      }
    }

    goto LABEL_106;
  }

LABEL_130:
  __break(1u);
}

void sub_217289F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v68 = a2;
  sub_217751DE8();
  v4 = sub_217752108();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4(v4, v5);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v20 = v9 - 1;
        if (v9 != 1)
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

          if (v8)
          {
            LOWORD(v24) = 0;
            v25 = v8 + 1;
            while (v20)
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v21)
              {
                if (v26 < 0x41 || v26 >= v22)
                {
                  if (v26 < 0x61 || v26 >= v23)
                  {
                    goto LABEL_106;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = (v24 * a3);
              if (v28 != v24 * a3)
              {
                goto LABEL_106;
              }

              v24 = v28 + (v26 + v27);
              if ((v28 + (v26 + v27)) != v24)
              {
                goto LABEL_106;
              }

              --v20;
              ++v25;
            }
          }
        }

        goto LABEL_106;
      }

      goto LABEL_129;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        LOWORD(v29) = 0;
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        while (1)
        {
          v33 = *v8;
          if (v33 < 0x30 || v33 >= v30)
          {
            if (v33 < 0x41 || v33 >= v31)
            {
              if (v33 < 0x61 || v33 >= v32)
              {
                goto LABEL_106;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v35 = v29 * a3;
          v36 = (v29 * a3);
          if (v36 == v35)
          {
            v29 = v36 + (v33 + v34);
            if (v29 == v29)
            {
              ++v8;
              if (--v9)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          LOWORD(v15) = 0;
          v16 = v8 + 1;
          while (v11)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                if (v17 < 0x61 || v17 >= v14)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = (v15 * a3);
            if (v19 != v15 * a3)
            {
              break;
            }

            v15 = v19 - (v17 + v18);
            if ((v19 - (v17 + v18)) != v15)
            {
              break;
            }

            --v11;
            ++v16;
          }
        }
      }

LABEL_106:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v6;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        LOWORD(v58) = 0;
        v59 = a3 + 55;
        v60 = a3 + 87;
        v61 = a3 + 48;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v60 = 97;
          v59 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v61)
          {
            if (v63 < 0x41 || v63 >= v59)
            {
              if (v63 < 0x61 || v63 >= v60)
              {
                goto LABEL_106;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a3;
          v66 = (v58 * a3);
          if (v66 == v65)
          {
            v58 = v66 + (v63 + v64);
            if (v58 == v58)
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOWORD(v41) = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (v40)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_106;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = (v41 * a3);
          if (v48 != v41 * a3)
          {
            goto LABEL_106;
          }

          v41 = v48 - (v46 + v47);
          if ((v48 - (v46 + v47)) != v41)
          {
            goto LABEL_106;
          }

          --v40;
          ++v45;
        }
      }

      goto LABEL_106;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOWORD(v50) = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (v49)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_106;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = (v50 * a3);
        if (v57 != v50 * a3)
        {
          goto LABEL_106;
        }

        v50 = v57 + (v55 + v56);
        if ((v57 + (v55 + v56)) != v50)
        {
          goto LABEL_106;
        }

        --v49;
        ++v54;
      }
    }

    goto LABEL_106;
  }

LABEL_130:
  __break(1u);
}

void sub_21728A544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;
  sub_217751DE8();
  v4 = sub_217752108();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4(v4, v5);
    v35 = v34;

    v7 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v19 = v9 - 1;
        if (v9 != 1)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v8)
          {
            LOWORD(v23) = 0;
            v24 = v8 + 1;
            while (v19)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_106;
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

              if (((v23 * a3) & 0xFFFF0000) != 0)
              {
                goto LABEL_106;
              }

              v23 = (v23 * a3) + (v25 + v26);
              if ((v23 & 0x10000) != 0)
              {
                goto LABEL_106;
              }

              --v19;
              ++v24;
            }
          }
        }

        goto LABEL_106;
      }

      goto LABEL_129;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        LOWORD(v27) = 0;
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

        while (1)
        {
          v31 = *v8;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_106;
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

          v33 = v27 * a3;
          if ((v33 & 0xFFFF0000) == 0)
          {
            v27 = v33 + (v31 + v32);
            if ((v27 & 0x10000) == 0)
            {
              ++v8;
              if (--v9)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          LOWORD(v15) = 0;
          v16 = v8 + 1;
          while (v11)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                if (v17 < 0x61 || v17 >= v14)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (((v15 * a3) & 0xFFFF0000) != 0)
            {
              break;
            }

            v15 = (v15 * a3) - (v17 + v18);
            if ((v15 & 0xFFFF0000) != 0)
            {
              break;
            }

            --v11;
            ++v16;
          }
        }
      }

LABEL_106:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v7) & 0xF;
  v61 = v6;
  v62 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        LOWORD(v53) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v61;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_106;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v53 * a3;
          if ((v60 & 0xFFFF0000) == 0)
          {
            v53 = v60 + (v58 + v59);
            if ((v53 & 0x10000) == 0)
            {
              v57 = (v57 + 1);
              if (--v36)
              {
                continue;
              }
            }
          }

          goto LABEL_106;
        }
      }

      goto LABEL_106;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        LOWORD(v38) = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v61 + 1;
        while (v37)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_106;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          if (((v38 * a3) & 0xFFFF0000) != 0)
          {
            goto LABEL_106;
          }

          v38 = (v38 * a3) - (v43 + v44);
          if ((v38 & 0xFFFF0000) != 0)
          {
            goto LABEL_106;
          }

          --v37;
          ++v42;
        }
      }

      goto LABEL_106;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      LOWORD(v46) = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v61 + 1;
      while (v45)
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_106;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        if (((v46 * a3) & 0xFFFF0000) != 0)
        {
          goto LABEL_106;
        }

        v46 = (v46 * a3) + (v51 + v52);
        if ((v46 & 0x10000) != 0)
        {
          goto LABEL_106;
        }

        --v45;
        ++v50;
      }
    }

    goto LABEL_106;
  }

LABEL_130:
  __break(1u);
}

void sub_21728AB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;
  sub_217751DE8();
  v4 = sub_217752108();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4(v4, v5);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v9 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v8)
          {
            v26 = 0;
            for (i = v8 + 1; ; ++i)
            {
              v17 = v22 != 0;
              if (!v22)
              {
                break;
              }

              v28 = *i;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_107;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a3;
              if (v30 != v30)
              {
                goto LABEL_107;
              }

              v31 = v28 + v29;
              v26 = v30 + v31;
              if (__OFADD__(v30, v31))
              {
                goto LABEL_107;
              }

              --v22;
            }

            goto LABEL_107;
          }

LABEL_65:
          v17 = 0;
LABEL_107:

          LOBYTE(v73) = v17;
          return;
        }

LABEL_126:
        v17 = 1;
        goto LABEL_107;
      }

      goto LABEL_130;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v17 = 1;
        do
        {
          v36 = *v8;
          if (v36 < 0x30 || v36 >= v33)
          {
            if (v36 < 0x41 || v36 >= v34)
            {
              if (v36 < 0x61 || v36 >= v35)
              {
                goto LABEL_107;
              }

              v37 = -87;
            }

            else
            {
              v37 = -55;
            }
          }

          else
          {
            v37 = -48;
          }

          v38 = v32 * a3;
          if (v38 != v38)
          {
            goto LABEL_126;
          }

          v39 = v36 + v37;
          v40 = __OFADD__(v38, v39);
          v32 = v38 + v39;
          if (v40)
          {
            goto LABEL_126;
          }

          ++v8;
          --v9;
        }

        while (v9);
        v17 = 0;
        goto LABEL_107;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          v15 = 0;
          for (j = v8 + 1; ; ++j)
          {
            v17 = v11 != 0;
            if (!v11)
            {
              break;
            }

            v18 = *j;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_107;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v15 * a3;
            if (v20 != v20)
            {
              goto LABEL_107;
            }

            v21 = v18 + v19;
            v15 = v20 - v21;
            if (__OFSUB__(v20, v21))
            {
              goto LABEL_107;
            }

            --v11;
          }

          goto LABEL_107;
        }

        goto LABEL_65;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v7) & 0xF;
  v73 = v6;
  v74 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        v64 = 0;
        v65 = a3 + 55;
        v66 = a3 + 87;
        v67 = a3 + 48;
        if (a3 > 10)
        {
          v67 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v68 = &v73;
        v17 = 1;
        do
        {
          v69 = *v68;
          if (v69 < 0x30 || v69 >= v67)
          {
            if (v69 < 0x41 || v69 >= v65)
            {
              if (v69 < 0x61 || v69 >= v66)
              {
                goto LABEL_107;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v64 * a3;
          if (v71 != v71)
          {
            goto LABEL_126;
          }

          v72 = v69 + v70;
          v40 = __OFADD__(v71, v72);
          v64 = v71 + v72;
          if (v40)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          --v43;
        }

        while (v43);
        v17 = 0;
        goto LABEL_107;
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        for (k = &v73 + 1; ; ++k)
        {
          v17 = v44 != 0;
          if (!v44)
          {
            break;
          }

          v50 = *k;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_107;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a3;
          if (v52 != v52)
          {
            goto LABEL_107;
          }

          v53 = v50 + v51;
          v45 = v52 - v53;
          if (__OFSUB__(v52, v53))
          {
            goto LABEL_107;
          }

          --v44;
        }

        goto LABEL_107;
      }

      goto LABEL_126;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v55 = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      for (m = &v73 + 1; ; ++m)
      {
        v17 = v54 != 0;
        if (!v54)
        {
          break;
        }

        v60 = *m;
        if (v60 < 0x30 || v60 >= v56)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            if (v60 < 0x61 || v60 >= v58)
            {
              goto LABEL_107;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v55 * a3;
        if (v62 != v62)
        {
          goto LABEL_107;
        }

        v63 = v60 + v61;
        v55 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_107;
        }

        --v54;
      }

      goto LABEL_107;
    }

    goto LABEL_126;
  }

LABEL_131:
  __break(1u);
}

void sub_21728B084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;
  sub_217751DE8();
  v4 = sub_217752108();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4(v4, v5);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v9 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v8)
          {
            v26 = 0;
            for (i = v8 + 1; ; ++i)
            {
              v17 = v22 != 0;
              if (!v22)
              {
                break;
              }

              v28 = *i;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_107;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_107;
              }

              v31 = v28 + v29;
              v26 = v30 + v31;
              if (__CFADD__(v30, v31))
              {
                goto LABEL_107;
              }

              --v22;
            }

            goto LABEL_107;
          }

LABEL_65:
          v17 = 0;
LABEL_107:

          LOBYTE(v73) = v17;
          return;
        }

LABEL_126:
        v17 = 1;
        goto LABEL_107;
      }

      goto LABEL_130;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v17 = 1;
        do
        {
          v36 = *v8;
          if (v36 < 0x30 || v36 >= v33)
          {
            if (v36 < 0x41 || v36 >= v34)
            {
              if (v36 < 0x61 || v36 >= v35)
              {
                goto LABEL_107;
              }

              v37 = -87;
            }

            else
            {
              v37 = -55;
            }
          }

          else
          {
            v37 = -48;
          }

          v38 = v32 * a3;
          if ((v38 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v36 + v37;
          v40 = __CFADD__(v38, v39);
          v32 = v38 + v39;
          if (v40)
          {
            goto LABEL_126;
          }

          ++v8;
          --v9;
        }

        while (v9);
        v17 = 0;
        goto LABEL_107;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          v15 = 0;
          for (j = v8 + 1; ; ++j)
          {
            v17 = v11 != 0;
            if (!v11)
            {
              break;
            }

            v18 = *j;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_107;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v15 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_107;
            }

            v21 = v18 + v19;
            v15 = v20 - v21;
            if (v20 < v21)
            {
              goto LABEL_107;
            }

            --v11;
          }

          goto LABEL_107;
        }

        goto LABEL_65;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v7) & 0xF;
  v73 = v6;
  v74 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        v64 = 0;
        v65 = a3 + 55;
        v66 = a3 + 87;
        v67 = a3 + 48;
        if (a3 > 10)
        {
          v67 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v68 = &v73;
        v17 = 1;
        do
        {
          v69 = *v68;
          if (v69 < 0x30 || v69 >= v67)
          {
            if (v69 < 0x41 || v69 >= v65)
            {
              if (v69 < 0x61 || v69 >= v66)
              {
                goto LABEL_107;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v64 * a3;
          if ((v71 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_126;
          }

          v72 = v69 + v70;
          v40 = __CFADD__(v71, v72);
          v64 = v71 + v72;
          if (v40)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          --v43;
        }

        while (v43);
        v17 = 0;
        goto LABEL_107;
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        for (k = &v73 + 1; ; ++k)
        {
          v17 = v44 != 0;
          if (!v44)
          {
            break;
          }

          v50 = *k;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_107;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a3;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_107;
          }

          v53 = v50 + v51;
          v45 = v52 - v53;
          if (v52 < v53)
          {
            goto LABEL_107;
          }

          --v44;
        }

        goto LABEL_107;
      }

      goto LABEL_126;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v55 = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      for (m = &v73 + 1; ; ++m)
      {
        v17 = v54 != 0;
        if (!v54)
        {
          break;
        }

        v60 = *m;
        if (v60 < 0x30 || v60 >= v56)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            if (v60 < 0x61 || v60 >= v58)
            {
              goto LABEL_107;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v55 * a3;
        if ((v62 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_107;
        }

        v63 = v60 + v61;
        v55 = v62 + v63;
        if (__CFADD__(v62, v63))
        {
          goto LABEL_107;
        }

        --v54;
      }

      goto LABEL_107;
    }

    goto LABEL_126;
  }

LABEL_131:
  __break(1u);
}

void sub_21728B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[0] = a1;
  v80[1] = a2;
  sub_217751DE8();
  v6 = sub_217752108();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v45 = OUTLINED_FUNCTION_132();
    sub_217288DA4(v45, v46);
    OUTLINED_FUNCTION_32_3();

    v7 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_0_11();
          if (v22)
          {
            OUTLINED_FUNCTION_26_5();
            while (v23)
            {
              OUTLINED_FUNCTION_8_9();
              if ((!v17 || v27 >= v26) && (v27 < 0x41 || v27 >= v25) && (v27 < 0x61 || v27 >= v24))
              {
                break;
              }

              OUTLINED_FUNCTION_21_7();
              if (v31 != v30 >> 63 || __OFADD__(v30, (v28 + v29)))
              {
                break;
              }

              OUTLINED_FUNCTION_9_7();
            }
          }
        }

        goto LABEL_91;
      }

      goto LABEL_119;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_0_11();
        if (v33 ^ v34 | v32)
        {
          v38 = v41;
        }

        if (v33 ^ v34 | v32)
        {
          v39 = 65;
        }

        if (!(v33 ^ v34 | v32))
        {
          v40 = 58;
        }

        while (1)
        {
          v42 = *v35;
          if (v42 < 0x30 || v42 >= v40)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              if (v42 < 0x61 || v42 >= v38)
              {
                goto LABEL_91;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v37 * a3;
          if ((v37 * a3) >> 64 == (v37 * a3) >> 63)
          {
            v37 = v44 + (v42 + v43);
            if (!__OFADD__(v44, (v42 + v43)))
            {
              ++v35;
              if (--v36)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        if (v11)
        {
          OUTLINED_FUNCTION_26_5();
          while (v12)
          {
            OUTLINED_FUNCTION_8_9();
            if ((!v17 || v16 >= v15) && (v16 < 0x41 || v16 >= v14) && (v16 < 0x61 || v16 >= v13))
            {
              break;
            }

            OUTLINED_FUNCTION_21_7();
            if (v21 != v20 >> 63 || __OFSUB__(v20, (v18 + v19)))
            {
              break;
            }

            OUTLINED_FUNCTION_9_7();
          }
        }
      }

LABEL_91:

      return;
    }

    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_16_11();
  if (!v32)
  {
    if (v48 != 45)
    {
      if (v47)
      {
        OUTLINED_FUNCTION_12_4();
        if (v68 ^ v69 | v67)
        {
          v72 = v75;
        }

        if (v68 ^ v69 | v67)
        {
          v73 = 65;
        }

        if (!(v68 ^ v69 | v67))
        {
          v74 = 58;
        }

        v76 = v80;
        while (1)
        {
          v77 = *v76;
          if (v77 < 0x30 || v77 >= v74)
          {
            if (v77 < 0x41 || v77 >= v73)
            {
              if (v77 < 0x61 || v77 >= v72)
              {
                goto LABEL_91;
              }

              v78 = -87;
            }

            else
            {
              v78 = -55;
            }
          }

          else
          {
            v78 = -48;
          }

          v79 = v71 * a3;
          if ((v71 * a3) >> 64 == (v71 * a3) >> 63)
          {
            v71 = v79 + (v77 + v78);
            if (!__OFADD__(v79, (v77 + v78)))
            {
              ++v76;
              if (--v70)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        OUTLINED_FUNCTION_24_7();
        while (v49)
        {
          OUTLINED_FUNCTION_8_9();
          if ((!v17 || v53 >= v52) && (v53 < 0x41 || v53 >= v51) && (v53 < 0x61 || v53 >= v50))
          {
            break;
          }

          OUTLINED_FUNCTION_21_7();
          if (v57 != v56 >> 63 || __OFSUB__(v56, (v54 + v55)))
          {
            break;
          }

          OUTLINED_FUNCTION_9_7();
        }
      }

      goto LABEL_91;
    }

    goto LABEL_118;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_24_7();
      while (v58)
      {
        OUTLINED_FUNCTION_8_9();
        if ((!v17 || v62 >= v61) && (v62 < 0x41 || v62 >= v60) && (v62 < 0x61 || v62 >= v59))
        {
          break;
        }

        OUTLINED_FUNCTION_21_7();
        if (v66 != v65 >> 63 || __OFADD__(v65, (v63 + v64)))
        {
          break;
        }

        OUTLINED_FUNCTION_9_7();
      }
    }

    goto LABEL_91;
  }

LABEL_120:
  __break(1u);
}

void sub_21728BABC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v74[0] = a1;
  v74[1] = a2;
  sub_217751DE8();
  v6 = sub_217752108();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v42 = OUTLINED_FUNCTION_132();
    sub_217288DA4(v42, v43);
    OUTLINED_FUNCTION_32_3();

    v7 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_0_11();
          if (v20)
          {
            OUTLINED_FUNCTION_26_5();
            while (v21)
            {
              OUTLINED_FUNCTION_8_9();
              if ((!v17 || v25 >= v24) && (v25 < 0x41 || v25 >= v23) && (v25 < 0x61 || v25 >= v22))
              {
                break;
              }

              OUTLINED_FUNCTION_25_5();
              if (!v28)
              {
                break;
              }

              OUTLINED_FUNCTION_22_5();
              if (__CFADD__(v27, v26))
              {
                break;
              }

              OUTLINED_FUNCTION_9_7();
            }
          }
        }

        goto LABEL_95;
      }

      goto LABEL_123;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_0_11();
        if (v29 ^ v30 | v28)
        {
          v34 = v37;
        }

        if (v29 ^ v30 | v28)
        {
          v35 = 65;
        }

        if (!(v29 ^ v30 | v28))
        {
          v36 = 58;
        }

        while (1)
        {
          v38 = *v31;
          if (v38 < 0x30 || v38 >= v36)
          {
            if (v38 < 0x41 || v38 >= v35)
            {
              if (v38 < 0x61 || v38 >= v34)
              {
                goto LABEL_95;
              }

              v39 = -87;
            }

            else
            {
              v39 = -55;
            }
          }

          else
          {
            v39 = -48;
          }

          if (is_mul_ok(v33, a3))
          {
            v40 = v33 * a3;
            v41 = v38 + v39;
            v17 = __CFADD__(v40, v41);
            v33 = v40 + v41;
            if (!v17)
            {
              ++v31;
              if (--v32)
              {
                continue;
              }
            }
          }

          goto LABEL_95;
        }
      }

      goto LABEL_95;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        if (v11)
        {
          OUTLINED_FUNCTION_26_5();
          while (v12)
          {
            OUTLINED_FUNCTION_8_9();
            if ((!v17 || v16 >= v15) && (v16 < 0x41 || v16 >= v14) && (v16 < 0x61 || v16 >= v13))
            {
              break;
            }

            OUTLINED_FUNCTION_25_5();
            if (!v28)
            {
              break;
            }

            OUTLINED_FUNCTION_22_5();
            if (v19 < v18)
            {
              break;
            }

            OUTLINED_FUNCTION_9_7();
          }
        }
      }

LABEL_95:

      return;
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  OUTLINED_FUNCTION_16_11();
  if (!v28)
  {
    if (v45 != 45)
    {
      if (v44)
      {
        OUTLINED_FUNCTION_12_4();
        if (v61 ^ v62 | v60)
        {
          v65 = v68;
        }

        if (v61 ^ v62 | v60)
        {
          v66 = 65;
        }

        if (!(v61 ^ v62 | v60))
        {
          v67 = 58;
        }

        v69 = v74;
        while (1)
        {
          v70 = *v69;
          if (v70 < 0x30 || v70 >= v67)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              if (v70 < 0x61 || v70 >= v65)
              {
                goto LABEL_95;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          if (is_mul_ok(v64, a3))
          {
            v72 = v64 * a3;
            v73 = v70 + v71;
            v17 = __CFADD__(v72, v73);
            v64 = v72 + v73;
            if (!v17)
            {
              ++v69;
              if (--v63)
              {
                continue;
              }
            }
          }

          goto LABEL_95;
        }
      }

      goto LABEL_95;
    }

    if (v44)
    {
      if (v44 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        OUTLINED_FUNCTION_24_7();
        while (v46)
        {
          OUTLINED_FUNCTION_8_9();
          if ((!v17 || v50 >= v49) && (v50 < 0x41 || v50 >= v48) && (v50 < 0x61 || v50 >= v47))
          {
            break;
          }

          OUTLINED_FUNCTION_25_5();
          if (!v28)
          {
            break;
          }

          OUTLINED_FUNCTION_22_5();
          if (v52 < v51)
          {
            break;
          }

          OUTLINED_FUNCTION_9_7();
        }
      }

      goto LABEL_95;
    }

    goto LABEL_122;
  }

  if (v44)
  {
    if (v44 != 1)
    {
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_24_7();
      while (v53)
      {
        OUTLINED_FUNCTION_8_9();
        if ((!v17 || v57 >= v56) && (v57 < 0x41 || v57 >= v55) && (v57 < 0x61 || v57 >= v54))
        {
          break;
        }

        OUTLINED_FUNCTION_25_5();
        if (!v28)
        {
          break;
        }

        OUTLINED_FUNCTION_22_5();
        if (__CFADD__(v59, v58))
        {
          break;
        }

        OUTLINED_FUNCTION_9_7();
      }
    }

    goto LABEL_95;
  }

LABEL_124:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_20_9(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t MusicLibrarySectionedRequest._library.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = (*a1 + *MEMORY[0x277D84DE8]);
  v26 = *(v9[1] + 16);
  v10 = *(v26 + 16);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  type metadata accessor for MusicPredicateValue(0, v10, v16, v17);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21_2();
  v19 = *v9;
  v20 = *(*(a3 + 40) + 8);
  v27[0] = *(a3 + 24);
  v27[1] = v19;
  v27[2] = v10;
  v27[3] = v20;
  type metadata accessor for MusicPredicate(0, v27);
  v21 = *(v12 + 16);
  v21(v4, a2, v10);
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(a1, v4);

  MEMORY[0x21CEA25D0](v22);
  sub_217204C70(*((*(v5 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_217752378();
  sub_21770B774();
  v23 = *(*(v5 + 104) + 16);
  sub_21770BAA4(v23);

  v21(v15, a2, v10);
  return sub_21770BBF4(v23, v15, (v5 + 104), v10, *(v26 + 24));
}

uint64_t MusicLibrarySectionedRequest.filterItems(matching:contains:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v9 = *(*a1 + *MEMORY[0x277D84DE8]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB24B10, &unk_217758190);
  v11 = *(*(a4 + 40) + 8);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  type metadata accessor for MusicPredicate(0, &v14);
  v14 = a2;
  v15 = a3;
  LOBYTE(v16) = 2;
  MusicPredicate.__allocating_init(_:_:)(a1, &v14);
  OUTLINED_FUNCTION_24_8();
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t MusicLibrarySectionedRequest.filterItems(matching:contains:)()
{
  OUTLINED_FUNCTION_3_10();
  v2 = OUTLINED_FUNCTION_28_3(*(v0 + 24), *(v1 + *MEMORY[0x277D84DE8]), v12, v14, v17);
  OUTLINED_FUNCTION_6_4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v15, v16);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v10);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t sub_21728C768(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  v6 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  type metadata accessor for MusicPredicateValue(0, v6, v7, v8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_15();
  (*(*(v6 - 8) + 16))(v3, a2, v6);
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v2, v3);
  OUTLINED_FUNCTION_24_8();

  MEMORY[0x21CEA25D0](v10);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t sub_21728C894(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  type metadata accessor for MusicPredicateValue(0, *(v5 + *MEMORY[0x277D84DE8] + 8), v6, v7);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_15();
  *v3 = a2;
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v2, v3);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v9);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t MusicLibrarySectionedRequest.filterSections<>(matching:contains:)()
{
  OUTLINED_FUNCTION_3_10();
  v2 = *(v1 + *MEMORY[0x277D84DE8]);
  v4 = *(v3 + 8);
  v15 = *(v0 + 16);
  v16 = v2;
  v17 = MEMORY[0x277D837D0];
  v18 = v4;
  v5 = type metadata accessor for MusicPredicate(0, &v15);
  OUTLINED_FUNCTION_6_4(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v13);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

{
  OUTLINED_FUNCTION_3_10();
  v2 = OUTLINED_FUNCTION_28_3(*(v0 + 16), *(v1 + *MEMORY[0x277D84DE8]), v12, v14, v17);
  OUTLINED_FUNCTION_6_4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v15, v16);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v10);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

uint64_t sub_21728CAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_15();
  v8 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  type metadata accessor for MusicPredicateValue(0, v8, v9, v10);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_22_6(*(a3 + 16));
  (*(*(v8 - 8) + 16))(v4, a2, v8);
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v3, v4);
  OUTLINED_FUNCTION_24_8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

uint64_t sub_21728CC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_15();
  type metadata accessor for MusicPredicateValue(0, *(v7 + *MEMORY[0x277D84DE8] + 8), v8, v9);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_22_6(*(a3 + 16));
  *v4 = a2;
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v3, v4);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v11);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

void MusicLibrarySectionedRequest.filterSections<>(text:)(uint64_t a1, uint64_t a2)
{
  sub_217751DE8();

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t MusicLibrarySectionedRequest.sortSections<A>(by:ascending:)()
{
  OUTLINED_FUNCTION_2_15();
  type metadata accessor for MusicSortDescriptor(0, *(v1 + *MEMORY[0x277D84DE8]), v2, v3);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_24_8();

  MEMORY[0x21CEA25D0](v4);
  sub_217204C70(*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_217752378();
}

uint64_t sub_21728CE28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *(v1 + 408) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21728CF28()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21728CF84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *(v1 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21728D084()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21728D0E0()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21728D13C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_21728D238()
{
  v58 = v0;
  v1 = v0;
  v2 = v0[67];
  v3 = v2[2];
  v0[24] = v3;
  v4 = v0 + 24;
  v5 = v0 + 69;
  v6 = v0[38];
  v45 = v0 + 38;
  v7 = v0 + 65;
  v8 = v2[4];
  v9 = v2[5];
  v4[1] = v4[44];
  v4[2] = v8;
  v4[3] = v9;
  v10 = OUTLINED_FUNCTION_25_6();
  v48 = type metadata accessor for MusicLibrarySection(v10, v11);
  v4[41] = sub_217752338();
  v51 = v6;
  v52 = v8;
  if (*(v5 + 48) == 1)
  {
    v43 = v3;
    v12 = OUTLINED_FUNCTION_36_3();
    v13 = [v12 numberOfSections];

    if ((v13 & 0x8000000000000000) == 0)
    {
      if (v13)
      {
        v14 = 0;
        v42 = v13;
        v53 = v1;
        do
        {
          v15 = OUTLINED_FUNCTION_36_3();
          v16 = [v15 numberOfItemsInSection_];

          if (v16 >= 1)
          {
            v18 = v53[68];
            v19 = *(v9 + 8);
            type metadata accessor for LegacySectionedCollectionItemLoader(0, v18, v19, v17);
            v20 = OUTLINED_FUNCTION_36_3();
            v54 = v14;
            v55 = 0;
            v56 = &unk_28295BCF8;
            v57 = 1;
            sub_21774D4B8(v20, &v54, &v56, &v57);

            MusicItemCollection.init(_:)(v21, (v4 + 28));
            v22 = OUTLINED_FUNCTION_36_3();
            v24 = type metadata accessor for MusicItemCollection(0, v18, v19, v23);
            v25 = v9;
            v26 = *(v24 - 8);
            (*(v26 + 16))(v45, v4 + 28, v24);
            sub_2176854D0(v45, v43, v18, v52, v25, v4);
            v27 = *(v48 - 8);
            (*(v27 + 16))(v45, v4, v48);
            OUTLINED_FUNCTION_25_6();
            sub_217752418();
            sub_2177523C8();
            v13 = v42;

            (*(v27 + 8))(v4, v48);
            v1 = v53;
            (*(v26 + 8))(v4 + 28, v24);
            v9 = v25;
          }

          ++v14;
        }

        while (v13 != v14);
      }

      v49 = 0;
      v28 = 0;
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v50 = *(v1 + 601);
  v47 = v7;
  v29 = v1;
  v30 = v1[68];
  v31 = v6;
  v44 = *v5;
  v46 = *(v5 + 1);
  v32 = v8;
  v33 = [v31 results];
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  *(v28 + 24) = v30;
  v1 = v29;
  *(v28 + 32) = v32;
  *(v28 + 40) = v9;
  *(v28 + 48) = v31;
  *(v28 + 56) = v46;
  *(v28 + 72) = v44;
  *(v28 + 88) = v50;
  *(v28 + 96) = v47;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21728FDAC;
  *(v34 + 24) = v28;
  v1[28] = sub_21728FDFC;
  v1[29] = v34;
  v1[24] = MEMORY[0x277D85DD0];
  v1[25] = 1107296256;
  v1[26] = sub_21728EAC4;
  v1[27] = &block_descriptor_18;
  v35 = _Block_copy(v4);

  [v33 enumerateTitledSectionsUsingBlock_];

  _Block_release(v35);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    goto LABEL_15;
  }

  v49 = sub_21728FDAC;
LABEL_11:
  v36 = v1[73];
  v37 = v1[66];
  v38 = v1[65];
  sub_217751DE8();
  v39 = [v51 results];
  v40 = [v39 totalItemCount];

  sub_2174F2398(v38, v40, v37);

  sub_2172202A4(v49, v28);
  OUTLINED_FUNCTION_20_0();

  v41();
}

uint64_t sub_21728D780(uint64_t a1)
{
  v2 = *(v1 + 592);
  v3 = *(v1 + 584);
  v4 = swift_willThrow();
  sub_21728FC9C(v4, v5, v6);
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v8();
}

uint64_t sub_21728D830()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 536) = v2;
  *(v1 + 528) = v3;
  memcpy((v1 + 80), v0, 0x70uLL);
  *(v1 + 640) = v0[112];
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21728D8A8()
{
  v25 = v0;
  v1 = *(*(v0 + 536) + 16);
  *(v0 + 544) = v1;
  v2 = dynamic_cast_existential_1_conditional(v1, v1, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  if (!v2 || (*(v0 + 552) = *(*(v0 + 536) + 24), (v4 = OUTLINED_FUNCTION_23_9(v2, v3, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding)) == 0))
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0](0xD000000000000011);
    sub_217753348();
    OUTLINED_FUNCTION_20_10();

    MEMORY[0x21CEA23B0](0x6D65746920726F20, 0xEE00206570797420, v21);
    sub_217753348();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4("Fatal error");
  }

  v6 = v4;
  v7 = v5;
  v8 = OUTLINED_FUNCTION_23_9(v4, v5, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
  *(v0 + 560) = v8;
  *(v0 + 568) = v9;
  if (!v8 || (v10 = OUTLINED_FUNCTION_23_9(v8, v9, &protocol descriptor for MusicItemTypeValueProviding), *(v0 + 576) = v10, *(v0 + 584) = v11, !v10))
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4("Fatal error");
  }

  v12 = dynamic_cast_existential_1_conditional(v1, v1, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
  *(v0 + 592) = v12;
  *(v0 + 600) = v13;
  if (!v12)
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0](0xD000000000000011);
    sub_217753348();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4("Fatal error");
  }

  v14 = dynamic_cast_existential_1_conditional(v1, v1, &protocol descriptor for MusicItemTypeValueProviding);
  *(v0 + 608) = v14;
  *(v0 + 616) = v15;
  if (!v14)
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0](0xD000000000000011);
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4("Fatal error");
  }

  v16 = *(v0 + 536);
  v17 = OUTLINED_FUNCTION_26_6();
  v18(v17);
  *(v0 + 641) = __dst[0];
  (*(v7 + 8))(__dst, v6, v7);
  *(v0 + 642) = __dst[0];
  memcpy(__dst, (v0 + 80), sizeof(__dst));
  v24 = *(v0 + 640);
  v19 = sub_21720E6A0(v16);
  *(v0 + 624) = v19;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 304;
  *(v0 + 24) = sub_21728DD4C;
  swift_continuation_init();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_9_8(v20);
  *(v0 + 200) = 1107296256;
  OUTLINED_FUNCTION_8_10();
  [v19 performWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21728DD4C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 632) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_21728DE48()
{
  v64 = v0;
  v1 = v0;
  v2 = *(v0 + 536);
  v3 = *(v2 + 32);
  *(v0 + 208) = v3;
  v4 = v0 + 208;
  *(v4 - 16) = *(v4 + 336);
  v5 = (v4 - 16);
  v6 = *(v4 + 96);
  v54 = (v4 + 96);
  v7 = *(v2 + 40);
  *(v4 + 8) = v7;
  aBlock = type metadata accessor for MusicLibrarySection(0, v4 - 16);
  *(v4 + 312) = sub_217752338();
  v8 = *(v4 + 432);
  v9 = &selRef_playlist;
  v10 = OUTLINED_FUNCTION_34_4();
  v11 = v10;
  v56 = v7;
  v57 = v3;
  if (v8 == 1)
  {
    v12 = [v10 numberOfSections];

    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = v12;
      if (v12)
      {
        v14 = 0;
        v51 = v12;
        v53 = v1;
        v52 = v6;
        do
        {
          v15 = OUTLINED_FUNCTION_34_4();
          v16 = [v15 numberOfItemsInSection_];

          if (v16 > 0 || dynamic_cast_existential_1_conditional(*(v1 + 544), *(v1 + 544), &protocol descriptor for MusicLibrarySectionExtendedRequestable) && ((*(v32 + 16))() & 1) != 0)
          {
            v17 = *(v1 + 552);
            v58 = *(v1 + 544);
            v18 = *(v56 + 8);
            v19 = OUTLINED_FUNCTION_25_6();
            type metadata accessor for LegacySectionedCollectionItemLoader(v19, v20, v18, v21);
            v22 = OUTLINED_FUNCTION_34_4();
            v60 = v14;
            v61 = 0;
            v62 = &unk_28295BD38;
            v63 = 1;
            sub_21774D4B8(v22, &v60, &v62, &v63);

            MusicItemCollection.init(_:)(v23, v4 + 208);
            v24 = OUTLINED_FUNCTION_34_4();
            v25 = OUTLINED_FUNCTION_25_6();
            v28 = type metadata accessor for MusicItemCollection(v25, v26, v18, v27);
            v29 = *(v28 - 8);
            (*(v29 + 16))(v54, v4 + 208, v28);
            sub_2176854D0(v54, v58, v17, v57, v56, v5);
            (*(*(aBlock - 1) + 16))(v54, v5, aBlock);
            OUTLINED_FUNCTION_25_6();
            sub_217752418();
            sub_2177523C8();
            v1 = v53;

            v30 = OUTLINED_FUNCTION_86();
            v13 = v51;
            v31(v30);
            (*(v29 + 8))(v4 + 208, v28);
            v6 = v52;
            v9 = &selRef_playlist;
          }

          ++v14;
        }

        while (v13 != v14);
      }

      v43 = v6;
      v59 = 0;
      v38 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v33 = v6;
  v34 = v7;
  v35 = *(v1 + 642);
  v36 = v3;
  v37 = *(v1 + 641);
  v38 = swift_allocObject();
  v39 = *(v1 + 560);
  *(v38 + 16) = *(v1 + 544);
  v40 = *(v1 + 592);
  *(v38 + 56) = *(v1 + 576);
  *(v38 + 32) = v36;
  *(v38 + 40) = v34;
  *(v38 + 48) = v33;
  *(v38 + 72) = v39;
  *(v38 + 88) = v35;
  *(v38 + 96) = *(v1 + 608);
  *(v38 + 112) = v40;
  *(v38 + 128) = v37;
  *(v38 + 136) = v4 + 312;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_21728FE74;
  *(v41 + 24) = v38;
  *(v1 + 224) = sub_21728FF9C;
  *(v1 + 232) = v41;
  *(v1 + 192) = MEMORY[0x277D85DD0];
  *(v1 + 200) = 1107296256;
  *(v1 + 208) = sub_2174EDE10;
  *(v1 + 216) = &block_descriptor_45;
  v42 = _Block_copy((v4 - 16));
  v43 = v33;
  v44 = v33;

  [v11 enumerateSectionIdentifiersUsingBlock_];

  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    goto LABEL_19;
  }

  v59 = sub_21728FE74;
LABEL_15:
  v45 = *(v1 + 624);
  v46 = *(v1 + 528);
  v47 = *(v1 + 520);
  sub_217751DE8();
  v48 = [v43 v9[35]];
  v49 = [v48 totalItemCount];

  sub_2174F2398(v47, v49, v46);

  sub_2172202A4(v59, v38);
  v50 = *(v1 + 8);

  v50();
}

uint64_t sub_21728E3A0(uint64_t a1)
{
  v2 = *(v1 + 624);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

void sub_21728E410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = MEMORY[0x21CEA3980](a1, a2, a3, a4);
  sub_21728E4E4(a5, a1, a6, a7, a8, a9, a10, a2, a3, a11, a12, a13, a14, a15);

  objc_autoreleasePoolPop(v21);
}

void sub_21728E4E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v46 = a8;
  v53 = a7;
  v52 = a6;
  v51 = a5;
  v50 = a4;
  v41 = sub_2177528F8();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v47 = &v40 - v17;
  v45 = *(a11 - 8);
  MEMORY[0x28223BE20](v18);
  v42 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = &v40 - v21;
  v22 = a1;
  v61 = sub_217752338();
  v23 = [v22 results];
  v24 = swift_allocObject();
  v48 = a11;
  *(v24 + 16) = a11;
  *(v24 + 24) = a12;
  v43 = a13;
  *(v24 + 32) = a13;
  *(v24 + 40) = a14;
  v44 = a14;
  *(v24 + 48) = a2;
  *(v24 + 56) = a3;
  *(v24 + 64) = v50;
  *(v24 + 72) = v22;
  v25 = v52;
  *(v24 + 80) = v51;
  *(v24 + 88) = v25;
  *(v24 + 96) = v53;
  *(v24 + 104) = &v61;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_21728FE3C;
  *(v26 + 24) = v24;
  v59 = sub_21728FE64;
  v60 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_2174EDE10;
  v58 = &block_descriptor_28;
  v27 = _Block_copy(&aBlock);

  [v23 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v27];

  _Block_release(v27);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    aBlock = v61;
    v28 = sub_217752418();
    swift_getWitnessTable();
    if ((sub_217752738() & 1) == 0)
    {
      aBlock = v46;
      v56 = a9;
      sub_217751DE8();
      v29 = v47;
      v30 = v48;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
        v31 = v45;
        v32 = v49;
        (*(v45 + 32))(v49, v29, v30);
        v33 = v42;
        (*(v31 + 16))(v42, v32, v30);
        aBlock = v61;
        v34 = v44;
        v35 = *(v44 + 8);
        sub_217751DE8();
        WitnessTable = swift_getWitnessTable();
        MusicItemCollection.init<A>(_:)(&aBlock, a12, v28, v35, WitnessTable, v54);
        v37 = v43;
        sub_217685554(v33, v54, v30, &aBlock);
        v54[0] = v30;
        v54[1] = a12;
        v54[2] = v37;
        v54[3] = v34;
        v38 = type metadata accessor for MusicLibrarySection(0, v54);
        v39 = *(v38 - 8);
        (*(v39 + 16))(v54, &aBlock, v38);
        sub_217752418();
        sub_2177523C8();
        (*(v39 + 8))(&aBlock, v38);
        (*(v31 + 8))(v49, v30);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
        (*(v40 + 8))(v29, v41);
      }
    }
  }
}

double sub_21728EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_217751F48();
  v6(a2, v7, v8, a4);
}

void sub_21728EB38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = MEMORY[0x21CEA3980](a1, a2, a3);
  sub_21728EC1C(a4, a1, a5, a6, a7, a8, a9, a2, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  objc_autoreleasePoolPop(v23);
}

void sub_21728EC1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v86 = a3;
  v81 = a8;
  LODWORD(v90) = a7;
  v88 = a5;
  v89 = a6;
  v87 = a4;
  v20 = sub_2177528F8();
  v21 = *(v20 - 8);
  v79 = v20;
  v80 = v21;
  MEMORY[0x28223BE20](v20);
  v78 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v82 = &v72 - v24;
  v85 = *(a15 - 8);
  MEMORY[0x28223BE20](v25);
  v76 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v73 = &v72 - v28;
  MEMORY[0x28223BE20](v29);
  v77 = &v72 - v30;
  v103 = sub_217752338();
  v31 = [a1 results];
  v32 = swift_allocObject();
  v83 = a15;
  v84 = a16;
  *(v32 + 16) = a15;
  *(v32 + 24) = a16;
  v74 = a17;
  v75 = a18;
  *(v32 + 32) = a17;
  *(v32 + 40) = a18;
  v34 = v86;
  v33 = v87;
  *(v32 + 48) = a2;
  *(v32 + 56) = v34;
  *(v32 + 64) = v33;
  *(v32 + 72) = a1;
  v35 = v89;
  *(v32 + 80) = v88;
  *(v32 + 88) = v35;
  *(v32 + 96) = v90;
  *(v32 + 104) = &v103;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_21728FED8;
  *(v36 + 24) = v32;
  v89 = v32;
  v100 = sub_21728FF9C;
  v101 = v36;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 1107296256;
  v98[2] = sub_2174EDE10;
  v99 = &block_descriptor_57;
  v37 = _Block_copy(v98);
  v38 = a1;

  v90 = a2;
  [v31 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v37];

  _Block_release(v37);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    v87 = a14;
    LODWORD(v88) = a13;
    v39 = *(a10 + 8);
    v40 = v81;
    swift_unknownObjectRetain();
    v39(&v91, a9, a10);
    v94 = v91;
    v95 = v92;
    *&v97[0] = &unk_28295BE38;
    v102[0] = 4;
    sub_2172B6904(v40, &v94, v97, v102, v98);
    v41 = [v38 results];
    v42 = [v41 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v42;
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v39(&v94, a9, a10);
    v97[0] = v94;
    v97[1] = v95;
    v102[0] = 1;
    v43 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
    v45 = v44;
    v99 = v43;
    v100 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    v98[0] = v44;
    LOBYTE(v91) = v88;
    v46 = *(a12 + 24);
    *(&v95 + 1) = a11;
    v96 = a12;
    __swift_allocate_boxed_opaque_existential_0(&v94);

    v46(v98, &v91, a11, a12);
    sub_2171FF30C(&v94, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    v47 = v82;
    v48 = v83;
    if (swift_dynamicCast())
    {
      v90 = v45;
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
      v49 = v85;
      v50 = v77;
      (*(v85 + 32))(v77, v47, v48);
      v98[0] = v103;
      v51 = v84;
      v52 = sub_217752418();
      swift_getWitnessTable();
      if ((sub_217752738() & 1) == 0)
      {
        v65 = v73;
        (*(v49 + 16))(v73, v50, v48);
        v98[0] = v103;
        v66 = v75;
        v67 = *(v75 + 8);
        sub_217751DE8();
        WitnessTable = swift_getWitnessTable();
        MusicItemCollection.init<A>(_:)(v98, v51, v52, v67, WitnessTable, &v91);
        v69 = v74;
        sub_217685554(v65, &v91, v48, v98);
        *&v91 = v48;
        *(&v91 + 1) = v51;
        *&v92 = v69;
        *(&v92 + 1) = v66;
        v70 = type metadata accessor for MusicLibrarySection(0, &v91);
        v71 = *(v70 - 8);
        (*(v71 + 16))(&v91, v98, v70);
        sub_217752418();
        sub_2177523C8();

        (*(v71 + 8))(v98, v70);
        (*(v49 + 8))(v50, v48);
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(&v94);

        return;
      }

      (*(v49 + 8))(v50, v48);
      v53 = v79;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
      v54 = v47;
      v53 = v79;
      (*(v80 + 8))(v54, v79);
      v51 = v84;
      v49 = v85;
    }

    sub_2171FF30C(&v94, v98);
    v55 = v78;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v48);
      v56 = v76;
      (*(v49 + 32))(v76, v55, v48);
      if (dynamic_cast_existential_1_conditional(v48, v48, &protocol descriptor for MusicLibrarySectionExtendedRequestable) && ((*(v57 + 16))() & 1) != 0)
      {
        v58 = v73;
        (*(v49 + 16))(v73, v56, v48);
        v98[0] = v103;
        v59 = sub_217752418();
        v60 = v75;
        v90 = *(v75 + 8);
        sub_217751DE8();
        v61 = swift_getWitnessTable();
        MusicItemCollection.init<A>(_:)(v98, v51, v59, v90, v61, &v91);
        v62 = v74;
        sub_217685554(v58, &v91, v48, v98);
        *&v91 = v48;
        *(&v91 + 1) = v51;
        *&v92 = v62;
        *(&v92 + 1) = v60;
        v63 = type metadata accessor for MusicLibrarySection(0, &v91);
        v64 = *(v63 - 8);
        (*(v64 + 16))(&v91, v98, v63);
        sub_217752418();
        sub_2177523C8();

        (*(v64 + 8))(v98, v63);
        (*(v49 + 8))(v76, v48);
      }

      else
      {
        (*(v49 + 8))(v56, v48);
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v55, 1, 1, v48);
      (*(v80 + 8))(v55, v53);
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_21728F610(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = MEMORY[0x21CEA3980](a1, a2, a3);
  sub_21728F6F4(a1, a4, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v24, a16, a17, a18);

  objc_autoreleasePoolPop(v23);
}

uint64_t sub_21728F6F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v65 = a8;
  v66 = a7;
  v60 = a6;
  v67 = a1;
  v76 = a9;
  v63 = a18;
  v62 = a17;
  v68 = a16;
  v61 = a12;
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v56 = v23;
  v57 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v64 = &v54 - v25;
  OUTLINED_FUNCTION_0();
  v58 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_31();
  v54 = v28;
  MEMORY[0x28223BE20](v29);
  v55 = &v54 - v30;
  v31 = sub_217751968();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_31();
  v59 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v54 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_217759200;
  v40 = v67;
  *(v39 + 32) = a2;
  *(v39 + 40) = v40;
  MEMORY[0x21CEA1CB0]();
  v41 = *(a5 + 8);
  swift_unknownObjectRetain();
  v41(&v70, a4, a5);
  v74 = v70;
  v75 = v71;
  *&v69[0] = v68;
  v77 = 4;
  sub_2172B6904(a3, &v74, v69, &v77, v73);
  v67 = v33;
  v68 = v31;
  (*(v33 + 16))(v59, v38, v31);
  v42 = [v60 results];
  v43 = [v42 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v43;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v44 = v61;
  v41(&v74, a4, a5);
  v69[0] = v74;
  v69[1] = v75;
  v77 = 1;
  v45 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v71 + 1) = v45;
  v72 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v70 = v46;
  LOBYTE(v74) = v76;
  v48 = v65;
  v47 = v66;
  v49 = *(v65 + 24);
  v73[3] = v66;
  v73[4] = v65;
  __swift_allocate_boxed_opaque_existential_0(v73);

  v49(&v70, &v74, v47, v48);
  v50 = v64;
  sub_2171FF30C(v73, &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v44);
    v51 = v58;
    v52 = v55;
    (*(v58 + 32))(v55, v50, v44);
    (*(v51 + 16))(v54, v52, v44);
    sub_217752418();
    sub_2177523C8();

    (*(v51 + 8))(v52, v44);
    (*(v67 + 8))(v38, v68);
  }

  else
  {
    (*(v67 + 8))(v38, v68);

    __swift_storeEnumTagSinglePayload(v50, 1, 1, v44);
    (*(v56 + 8))(v50, v57);
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

id MusicLibrarySectionedRequest.legacyModelRequest.getter(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_21720E6A0(a1);
  v4 = [v3 underlyingRequest];

  return v4;
}

unint64_t sub_21728FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD60;
  if (!qword_27CB2CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD60);
  }

  return result;
}

uint64_t sub_21728FCF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_21728FD30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_destroy_helper_17(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t OUTLINED_FUNCTION_11_15()
{
  v5 = *v2;
  v6 = *(*(v0 + 40) + 8);
  *(v3 - 96) = *(v0 + 24);
  *(v3 - 88) = v5;
  *(v3 - 80) = v1;
  *(v3 - 72) = v6;

  return type metadata accessor for MusicPredicate(0, v3 - 96);
}

void OUTLINED_FUNCTION_20_10()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_22_6@<X0>(uint64_t a1@<X8>)
{
  v6 = *v3;
  v7 = *(v1 + 8);
  *(v4 - 112) = a1;
  *(v4 - 104) = v6;
  *(v4 - 96) = v2;
  *(v4 - 88) = v7;

  return type metadata accessor for MusicPredicate(0, v4 - 112);
}

id OUTLINED_FUNCTION_34_4()
{

  return [v0 (v1 + 1672)];
}

uint64_t sub_217290064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2172900B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2172900F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_217290154(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = *a2;
  v24 = *(a2 + 8);
  if (v24 != 1)
  {
    v20 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_18:
    *a3 = v3;
    *(a3 + 8) = 0;
    *(a3 + 16) = v5;
    *(a3 + 24) = v20;
    *(a3 + 32) = v11;
    return;
  }

  v6 = a1;
  v7 = [v6 numberOfSections];
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v8 = v7;
  if (!v7)
  {

    v11 = MEMORY[0x277D84F90];
    v20 = 1;
    goto LABEL_18;
  }

  v21 = v3;
  v22 = v5;
  v23 = a3;
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = [v6 numberOfItemsInSection_];
    if (v12 < 1)
    {
      goto LABEL_14;
    }

    v13 = v9 + v12;
    if (__OFADD__(v9, v12))
    {
      break;
    }

    v14 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      goto LABEL_20;
    }

    if (v14 < v9)
    {
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B1944(0, *(v11 + 16) + 1, 1, v11);
      v11 = v18;
    }

    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2172B1944(v15 > 1, v16 + 1, 1, v11);
      v11 = v19;
    }

    *(v11 + 16) = v16 + 1;
    v17 = v11 + 16 * v16;
    *(v17 + 32) = v9;
    *(v17 + 40) = v14;
    v9 = v13;
LABEL_14:
    if (v8 == ++v10)
    {

      v20 = v24;
      v5 = v22;
      a3 = v23;
      v3 = v21;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_2172902F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_217751968();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  if (*(v2 + 24) != 1)
  {
    v31 = *(v2 + 16);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
    v33 = OUTLINED_FUNCTION_2_16(v32);
    *(v33 + 16) = xmmword_217759200;
    *(v33 + 32) = v31;
    *(v33 + 40) = a1;

LABEL_50:
    JUMPOUT(0x21CEA1CB0);
  }

  MEMORY[0x21CEA1CB0](&unk_28295BF38, v9);
  v12 = *(v2 + 32);
  v13 = *(v2 + 8);
  v14 = sub_21729093C(v13, v12);
  if ((v16 & 1) == 0 && v14 <= a1 && v15 >= a1)
  {
    v2 = a1 - v14;
    if (!__OFSUB__(a1, v14))
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_37;
  }

  v3 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v14 = sub_21729093C(v13 + 1, v12);
  if ((v19 & 1) == 0 && v14 <= a1 && v18 >= a1)
  {
LABEL_37:
    *(v2 + 8) = v3;
    v2 = a1 - v14;
    if (!__OFSUB__(a1, v14))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v35 = OUTLINED_FUNCTION_2_16(v34);
      *(v35 + 16) = xmmword_217759200;
      *(v35 + 32) = v3;
LABEL_41:
      *(v35 + 40) = v2;
      MEMORY[0x21CEA1CB0]();
      v37 = OUTLINED_FUNCTION_1_10();
      v38(v37);
      v39 = OUTLINED_FUNCTION_0_13();
      v40(v39);
      return (*(v7 + 32))(a2, v11, v6);
    }

    goto LABEL_47;
  }

  v21 = __OFSUB__(v13--, 1);
  if (v21)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = sub_21729093C(v13, v12);
  if ((v24 & 1) == 0 && v22 <= a1 && v23 >= a1)
  {
    *(v2 + 8) = v13;
    v2 = a1 - v22;
    if (!__OFSUB__(a1, v22))
    {
LABEL_40:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v35 = OUTLINED_FUNCTION_2_16(v36);
      *(v35 + 16) = xmmword_217759200;
      *(v35 + 32) = v13;
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  v26 = *(v12 + 16);
  if (v26)
  {
    v27 = 0;
    for (i = (v12 + 40); ; i += 2)
    {
      v29 = *(i - 1);
      if (v29 <= a1 && *i >= a1)
      {
        break;
      }

      if (v26 == ++v27)
      {
        return (*(v7 + 32))(a2, v11, v6);
      }
    }

    v21 = __OFSUB__(a1, v29);
    v42 = a1 - v29;
    if (!v21)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v44 = OUTLINED_FUNCTION_2_16(v43);
      *(v44 + 16) = xmmword_217759200;
      *(v44 + 32) = v27;
      *(v44 + 40) = v42;
      MEMORY[0x21CEA1CB0]();
      v45 = OUTLINED_FUNCTION_1_10();
      v46(v45);
      v47 = OUTLINED_FUNCTION_0_13();
      v48(v47);
      *(v2 + 8) = v27;
      return (*(v7 + 32))(a2, v11, v6);
    }

    goto LABEL_49;
  }

  return (*(v7 + 32))(a2, v11, v6);
}

void sub_217290620(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_217751968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  if (*(v3 + 24) != 1)
  {
    v37 = *(v3 + 16);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
    v39 = OUTLINED_FUNCTION_2_16(v38);
    *(v39 + 16) = xmmword_217759200;
    *(v39 + 32) = v37;
    *(v39 + 40) = a1;
    OUTLINED_FUNCTION_13();

LABEL_50:
    JUMPOUT(0x21CEA1CB0);
  }

  MEMORY[0x21CEA1CB0](a2, v11);
  v14 = *(v3 + 32);
  v15 = *(v3 + 8);
  v16 = OUTLINED_FUNCTION_34_2();
  v18 = sub_21729093C(v16, v17);
  if ((v20 & 1) == 0 && v18 <= a1 && v19 >= a1)
  {
    v3 = a1 - v18;
    if (!__OFSUB__(a1, v18))
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v18 = sub_21729093C(v15 + 1, v14);
  if ((v23 & 1) == 0 && v18 <= a1 && v22 >= a1)
  {
LABEL_37:
    *(v3 + 8) = v4;
    v3 = a1 - v18;
    if (!__OFSUB__(a1, v18))
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v42 = OUTLINED_FUNCTION_2_16(v41);
      *(v42 + 16) = xmmword_217759200;
      *(v42 + 32) = v4;
LABEL_41:
      *(v42 + 40) = v3;
      MEMORY[0x21CEA1CB0]();
      v44 = OUTLINED_FUNCTION_1_10();
      v45(v44);
      v46 = OUTLINED_FUNCTION_16_0();
      v47(v46);
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v25 = __OFSUB__(v15--, 1);
  if (v25)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v26 = OUTLINED_FUNCTION_34_2();
  v28 = sub_21729093C(v26, v27);
  if ((v30 & 1) == 0 && v28 <= a1 && v29 >= a1)
  {
    *(v3 + 8) = v15;
    v3 = a1 - v28;
    if (!__OFSUB__(a1, v28))
    {
LABEL_40:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v42 = OUTLINED_FUNCTION_2_16(v43);
      *(v42 + 16) = xmmword_217759200;
      *(v42 + 32) = v15;
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  v32 = *(v14 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = (v14 + 40);
    while (1)
    {
      v35 = *(v34 - 1);
      if (v35 <= a1 && *v34 >= a1)
      {
        break;
      }

      v34 += 2;
      if (v32 == ++v33)
      {
        goto LABEL_42;
      }
    }

    v25 = __OFSUB__(a1, v35);
    v48 = a1 - v35;
    if (!v25)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v50 = OUTLINED_FUNCTION_2_16(v49);
      *(v50 + 16) = xmmword_217759200;
      *(v50 + 32) = v33;
      *(v50 + 40) = v48;
      MEMORY[0x21CEA1CB0]();
      v51 = OUTLINED_FUNCTION_1_10();
      v52(v51);
      v53 = OUTLINED_FUNCTION_16_0();
      v54(v53);
      *(v3 + 8) = v33;
      goto LABEL_42;
    }

    goto LABEL_49;
  }

LABEL_42:
  (*(v9 + 32))(a3, v13, v8);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21729093C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0 || *(a2 + 16) <= a1)
  {
    return 0;
  }

  else
  {
    return *(a2 + 16 * a1 + 32);
  }
}

void PlaylistPropertyProvider.hasOnlyExplicitContent.getter()
{
  v2 = v0;
  v3 = type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v12 = &v117 - v11;
  v13 = *(v0 + 1505);
  if (v13 != 2)
  {
    if (qword_280BE8358 != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v120 = v10;
  v121 = v9;
  sub_2171F50C0(v0 + *(v3 + 224), v137, &unk_27CB28A60, &qword_217770B60);
  if (!v137[11])
  {
    v53 = &unk_27CB28A60;
    v54 = &qword_217770B60;
    v55 = v137;
LABEL_35:
    sub_2171F0738(v55, v53, v54);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v56 = sub_217751AF8();
    __swift_project_value_buffer(v56, qword_280C02570);
    OUTLINED_FUNCTION_1_11();
    v57 = OUTLINED_FUNCTION_16_0();
    sub_21729C8B0(v57, v58, v59);
    v60 = sub_217751AD8();
    v61 = sub_217752828();
    if (OUTLINED_FUNCTION_39_1(v61))
    {
      v62 = OUTLINED_FUNCTION_55();
      v137[0] = OUTLINED_FUNCTION_46_5();
      *v62 = 136315394;
      v63 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_37_1(v63);
      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v64);
      v65 = sub_21729C0E8(v12, v13, v137);

      *(v62 + 14) = v65;
      OUTLINED_FUNCTION_57_3();
      _os_log_impl(v66, v67, v68, v69, v62, 0x16u);
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_10();
    }

    else
    {

      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v70);
    }

    goto LABEL_61;
  }

  v117 = v0;
  memcpy(__dst, v137, 0x68uLL);
  v14 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v14 = *(v14 + 56);
  }

  if (!*(v14 + 16))
  {
    v53 = &qword_27CB240D0;
    v54 = &unk_21775D400;
    v55 = __dst;
    goto LABEL_35;
  }

  v118 = v2;
  v119 = v3;
  v2 = &v129;
  OUTLINED_FUNCTION_75_1(__dst, &v134);
  OUTLINED_FUNCTION_75_1(&v134, v137);
  v15 = v134;
  v16 = v135;
  sub_217283C5C(v134, v135);
  sub_2171F0738(&v134, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v15, v16);
  v12 = 0;
  v138 = 0;
  v17 = v137[0];
  v18 = LOBYTE(v137[1]);
  v122 = v137[0] + 32;
  while (!v18)
  {
    v21 = *(v17 + 16);
    if (v12 == v21)
    {
LABEL_40:
      sub_2171F0738(v137, &qword_27CB27E10, &qword_21776BCB0);
      v71 = 1;
      goto LABEL_43;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    if (v12 >= v21)
    {
      goto LABEL_65;
    }

    sub_2171F50C0(v122 + (v12 << 6), &v134, &dword_27CB27E20, &unk_2177589C0);
    sub_2171F50C0(&v134, v123, &dword_27CB27E20, &unk_2177589C0);
    if (v124[41])
    {
      sub_217283C5C(v17, 0);
      sub_217751DE8();
      v22 = OUTLINED_FUNCTION_1_5();
      sub_21729366C(v22, v23);

      sub_2171F0738(&v134, &dword_27CB27E20, &unk_2177589C0);
    }

    else
    {
      sub_217751DE8();
      sub_2171F0738(&v134, &dword_27CB27E20, &unk_2177589C0);
      OUTLINED_FUNCTION_34_1();
    }

    v131[0] = *v127;
    *(v131 + 9) = *&v127[9];
    v132 = v125;
    v133 = v126;
    v24 = OUTLINED_FUNCTION_50();
    sub_21725CF00(v24, 0);
    ++v12;
LABEL_19:
    v138 = v12;
    sub_217275710(&v132, &v134);
    if (v136)
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE6D00 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v124, &v129);
      v25 = *&v131[0];
      __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
      v26 = OUTLINED_FUNCTION_26_7();
      v27(v26, v25);
      v28 = *(&v126 + 1);
      __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      v29 = OUTLINED_FUNCTION_45_5();
      v30(v29, &type metadata for MusicVideo, &type metadata for ContentRating, v28);
      sub_217283C08(v123);
    }

    else
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE9878 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v124, &v129);
      v31 = *&v131[0];
      __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
      v32 = OUTLINED_FUNCTION_26_7();
      v33(v32, v31);
      v34 = *(&v126 + 1);
      __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      v35 = OUTLINED_FUNCTION_45_5();
      v36(v35, &type metadata for Song, &type metadata for ContentRating, v34);
      sub_217283B58(v123);
    }

    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_21729C644(&v129);
    v37 = v128;
    if (v128 == 2)
    {
      sub_2171F0738(v137, &qword_27CB27E10, &qword_21776BCB0);
      sub_21727576C(&v132);
      goto LABEL_42;
    }

    sub_21727576C(&v132);
    if ((v37 & 1) == 0)
    {
      sub_2171F0738(v137, &qword_27CB27E10, &qword_21776BCB0);
LABEL_42:
      v71 = 0;
LABEL_43:
      sub_2171F50C0(&__dst[2], v137, &qword_27CB24188, &dword_217758930);
      v72 = v137[3];
      sub_2171F0738(v137, &qword_27CB24188, &dword_217758930);
      v73 = v119;
      if (v72)
      {
        if (v71)
        {
          v74 = v118;
          if (qword_280BE8358 != -1)
          {
            OUTLINED_FUNCTION_3(&qword_280BE8358);
          }

          v75 = sub_217751AF8();
          __swift_project_value_buffer(v75, qword_280C02570);
          OUTLINED_FUNCTION_1_11();
          v76 = v120;
          sub_21729C8B0(v74, v120, v77);
          v78 = sub_217751AD8();
          v79 = sub_217752828();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = OUTLINED_FUNCTION_55();
            v137[0] = OUTLINED_FUNCTION_46_5();
            *v80 = 136315394;
            v81 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
            OUTLINED_FUNCTION_33_5(v81);
            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v76, v82);
            v83 = OUTLINED_FUNCTION_34_2();
            v86 = sub_21729C0E8(v83, v84, v85);

            *(v80 + 14) = v86;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_28_4();
            OUTLINED_FUNCTION_28_4();
          }

          else
          {

            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v76, v116);
          }

          sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_61:
          PlaylistPropertyProvider.hasExplicitContent.getter();
          goto LABEL_62;
        }

        v100 = v118;
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3(&qword_280BE8358);
        }

        v101 = sub_217751AF8();
        __swift_project_value_buffer(v101, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v90 = v121;
        sub_21729C8B0(v100, v121, v102);
        v92 = sub_217751AD8();
        v103 = sub_217752828();
        if (OUTLINED_FUNCTION_44_4(v103))
        {
          OUTLINED_FUNCTION_55();
          v137[0] = OUTLINED_FUNCTION_25_7();
          *v100 = 136315394;
          v104 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
          OUTLINED_FUNCTION_18_8(v104);
          v105 = *(v90 + *(v73 + 268));
          sub_217751DE8();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v90, v106);
          v107 = OUTLINED_FUNCTION_15();
          sub_21729C0E8(v107, v108, v109);
          OUTLINED_FUNCTION_76_2();
          *(v100 + 14) = v105;
          OUTLINED_FUNCTION_24_9();
          _os_log_impl(v110, v111, v112, v113, v114, 0x16u);
          OUTLINED_FUNCTION_41_5();
          OUTLINED_FUNCTION_23_10();
          OUTLINED_FUNCTION_22_7();

          goto LABEL_58;
        }
      }

      else
      {
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3(&qword_280BE8358);
        }

        v89 = sub_217751AF8();
        __swift_project_value_buffer(v89, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v90 = v117;
        sub_21729C8B0(v118, v117, v91);
        v92 = sub_217751AD8();
        v93 = sub_217752828();
        if (OUTLINED_FUNCTION_39_1(v93))
        {
          OUTLINED_FUNCTION_73_4();
          v137[0] = OUTLINED_FUNCTION_25_7();
          MEMORY[0] = 136315650;
          v94 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
          OUTLINED_FUNCTION_18_8(v94);
          OUTLINED_FUNCTION_66_1();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v90, v95);
          sub_21729C0E8(&dword_27CB27E20, v73, v137);

          OUTLINED_FUNCTION_64_3();
          OUTLINED_FUNCTION_57_3();
          _os_log_impl(v96, v97, v98, v99, 0, 0x1Cu);
          OUTLINED_FUNCTION_40_7();
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_22_7();

LABEL_58:
          sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
          goto LABEL_62;
        }
      }

      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v90, v115);
      goto LABEL_58;
    }
  }

  swift_beginAccess();
  if (v12 == *(*(v17 + 56) + 16))
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_21_8();
  sub_217294454();
  v132 = v129;
  v133 = v130;
  v19 = OUTLINED_FUNCTION_50();
  sub_21725CF00(v19, 1);
  if (!__OFADD__(v12++, 1))
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  OUTLINED_FUNCTION_3(&qword_280BE8358);
LABEL_30:
  v38 = sub_217751AF8();
  __swift_project_value_buffer(v38, qword_280C02570);
  OUTLINED_FUNCTION_1_11();
  sub_21729C8B0(v2, v12, v39);
  v40 = sub_217751AD8();
  v41 = sub_217752828();
  if (OUTLINED_FUNCTION_44_4(v41))
  {
    OUTLINED_FUNCTION_73_4();
    v137[0] = OUTLINED_FUNCTION_25_7();
    *v2 = 136315650;
    v42 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
    OUTLINED_FUNCTION_18_8(v42);
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v12, v43);
    v44 = OUTLINED_FUNCTION_15();
    sub_21729C0E8(v44, v45, v46);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_9();
    _os_log_impl(v47, v48, v49, v50, v51, 0x1Cu);
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_22_7();
  }

  else
  {

    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v12, v52);
  }

LABEL_62:
  OUTLINED_FUNCTION_13();
}

void PlaylistPropertyProvider.hasOnlyExplicitDownloadedContent.getter()
{
  v2 = v0;
  v3 = type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v117 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v117 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v117 - v13;
  v15 = *(v0 + 1504);
  if (v15 != 2)
  {
    if (qword_280BE8358 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_27;
  }

  sub_2171F50C0(v0 + *(v3 + 224), v138, &unk_27CB28A60, &qword_217770B60);
  if (!v138[11])
  {
    v48 = &unk_27CB28A60;
    v49 = &qword_217770B60;
    v50 = v138;
LABEL_32:
    sub_2171F0738(v50, v48, v49);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v51 = sub_217751AF8();
    __swift_project_value_buffer(v51, qword_280C02570);
    OUTLINED_FUNCTION_1_11();
    v52 = OUTLINED_FUNCTION_16_0();
    sub_21729C8B0(v52, v53, v54);
    v55 = sub_217751AD8();
    v56 = sub_217752828();
    if (OUTLINED_FUNCTION_39_1(v56))
    {
      v57 = OUTLINED_FUNCTION_55();
      v138[0] = OUTLINED_FUNCTION_46_5();
      *v57 = 136315394;
      v58 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_37_1(v58);
      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v59);
      v60 = sub_21729C0E8(v14, v15, v138);

      *(v57 + 14) = v60;
      OUTLINED_FUNCTION_57_3();
      _os_log_impl(v61, v62, v63, v64, v57, 0x16u);
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_10();
    }

    else
    {

      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v65);
    }

    goto LABEL_59;
  }

  v119 = v0;
  memcpy(__dst, v138, 0x68uLL);
  v16 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v16 = *(v16 + 56);
  }

  if (!*(v16 + 16))
  {
    v48 = &qword_27CB240D0;
    v49 = &unk_21775D400;
    v50 = __dst;
    goto LABEL_32;
  }

  v117 = v10;
  v118 = v7;
  v120 = v3;
  v121 = v2;
  v2 = &v127;
  OUTLINED_FUNCTION_75_1(__dst, v135);
  OUTLINED_FUNCTION_75_1(v135, v138);
  v17 = *&v135[0];
  v18 = BYTE8(v135[0]);
  sub_217283C5C(*&v135[0], SBYTE8(v135[0]));
  sub_2171F0738(v135, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v17, v18);
  v14 = 0;
  v139 = 0;
  v19 = v138[0];
  v20 = v138[0] + 32;
  v122 = LOBYTE(v138[1]);
  v21 = &dword_27CB27E20;
  while (v122)
  {
    swift_beginAccess();
    if (v14 == *(*(v19 + 56) + 16))
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_21_8();
    sub_217294454();
    v133 = v130;
    v134 = v131;
    v22 = OUTLINED_FUNCTION_52_3();
    sub_21725CF00(v22, 1);
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_63;
    }

LABEL_19:
    v139 = v14;
    sub_217275710(&v133, v135);
    if (v137)
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283C08(v123);
    }

    else
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283B58(v123);
    }

    v135[0] = v127;
    v135[1] = v128;
    v21 = v129;
    v136 = v129;
    __swift_project_boxed_opaque_existential_1(v135, *(&v128 + 1));
    v28 = OUTLINED_FUNCTION_26_7();
    v29(v28, v21);
    sub_21729C644(v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v132[0] = 0;
      v130 = 0u;
      v131 = 0u;
LABEL_39:
      sub_2171F0738(&v130, &qword_27CB24B48, &qword_21777F0F0);
      sub_21727576C(&v133);
LABEL_40:
      v66 = 0;
LABEL_41:
      sub_2171F0738(v138, &qword_27CB27E10, &qword_21776BCB0);
      sub_2171F50C0(&__dst[2], v138, &qword_27CB24188, &dword_217758930);
      v67 = v138[3];
      sub_2171F0738(v138, &qword_27CB24188, &dword_217758930);
      v68 = v120;
      if (v67)
      {
        if (v66)
        {
          v69 = v121;
          if (qword_280BE8358 != -1)
          {
            OUTLINED_FUNCTION_3(&qword_280BE8358);
          }

          v70 = sub_217751AF8();
          __swift_project_value_buffer(v70, qword_280C02570);
          OUTLINED_FUNCTION_1_11();
          v71 = v119;
          sub_21729C8B0(v69, v119, v72);
          v73 = sub_217751AD8();
          v74 = sub_217752828();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = OUTLINED_FUNCTION_55();
            v138[0] = OUTLINED_FUNCTION_46_5();
            *v75 = 136315394;
            v76 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
            OUTLINED_FUNCTION_33_5(v76);
            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v71, v77);
            v78 = OUTLINED_FUNCTION_34_2();
            v81 = sub_21729C0E8(v78, v79, v80);

            *(v75 + 14) = v81;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_28_4();
            OUTLINED_FUNCTION_28_4();
          }

          else
          {

            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v71, v115);
          }

          sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_59:
          PlaylistPropertyProvider.hasExplicitContent.getter();
          goto LABEL_60;
        }

        v95 = v121;
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3(&qword_280BE8358);
        }

        v96 = sub_217751AF8();
        __swift_project_value_buffer(v96, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v97 = v117;
        sub_21729C8B0(v95, v117, v98);
        v99 = sub_217751AD8();
        v100 = sub_217752828();
        if (OUTLINED_FUNCTION_44_4(v100))
        {
          OUTLINED_FUNCTION_55();
          v138[0] = OUTLINED_FUNCTION_25_7();
          *v95 = 136315394;
          v101 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
          OUTLINED_FUNCTION_18_8(v101);
          v102 = (v97 + *(v68 + 268));
          v103 = v97;
          v104 = *v102;
          sub_217751DE8();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v103, v105);
          v106 = OUTLINED_FUNCTION_15();
          sub_21729C0E8(v106, v107, v108);
          OUTLINED_FUNCTION_76_2();
          *(v95 + 14) = v104;
          OUTLINED_FUNCTION_24_9();
          _os_log_impl(v109, v110, v111, v112, v113, 0x16u);
          OUTLINED_FUNCTION_41_5();
          OUTLINED_FUNCTION_23_10();
          OUTLINED_FUNCTION_22_7();
        }

        else
        {

          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v97, v116);
        }
      }

      else
      {
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3(&qword_280BE8358);
        }

        v84 = sub_217751AF8();
        __swift_project_value_buffer(v84, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v85 = v118;
        sub_21729C8B0(v121, v118, v86);
        v87 = sub_217751AD8();
        v88 = sub_217752828();
        if (OUTLINED_FUNCTION_39_1(v88))
        {
          OUTLINED_FUNCTION_73_4();
          v138[0] = OUTLINED_FUNCTION_25_7();
          MEMORY[0] = 136315650;
          v89 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
          OUTLINED_FUNCTION_18_8(v89);
          OUTLINED_FUNCTION_66_1();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v85, v90);
          sub_21729C0E8(v21, v68, v138);

          OUTLINED_FUNCTION_64_3();
          OUTLINED_FUNCTION_57_3();
          _os_log_impl(v91, v92, v93, v94, 0, 0x1Cu);
          OUTLINED_FUNCTION_40_7();
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_22_7();
        }

        else
        {

          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v85, v114);
        }
      }

      sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
      goto LABEL_60;
    }

    v30 = *(&v131 + 1);
    if (!*(&v131 + 1))
    {
      goto LABEL_39;
    }

    v31 = *&v132[0];
    __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
    v32 = (*(v31 + 104))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(&v130);
    sub_21727576C(&v133);
    v21 = &dword_27CB27E20;
    if ((v32 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v24 = *(v19 + 16);
  if (v14 == v24)
  {
LABEL_37:
    v66 = 1;
    goto LABEL_41;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14 >= v24)
    {
      goto LABEL_64;
    }

    sub_2171F50C0(v20 + (v14 << 6), v135, &dword_27CB27E20, &unk_2177589C0);
    sub_2171F50C0(v135, v123, &dword_27CB27E20, &unk_2177589C0);
    if (v123[57])
    {
      sub_217283C5C(v19, 0);
      sub_217751DE8();
      v25 = OUTLINED_FUNCTION_1_5();
      sub_21729366C(v25, v26);

      sub_2171F0738(v135, &dword_27CB27E20, &unk_2177589C0);
    }

    else
    {
      sub_217751DE8();
      sub_2171F0738(v135, &dword_27CB27E20, &unk_2177589C0);
      OUTLINED_FUNCTION_34_1();
    }

    v132[0] = v126[0];
    *(v132 + 9) = *(v126 + 9);
    v133 = v124;
    v134 = v125;
    v27 = OUTLINED_FUNCTION_52_3();
    sub_21725CF00(v27, 0);
    ++v14;
    goto LABEL_19;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  OUTLINED_FUNCTION_3(&qword_280BE8358);
LABEL_27:
  v33 = sub_217751AF8();
  __swift_project_value_buffer(v33, qword_280C02570);
  OUTLINED_FUNCTION_1_11();
  sub_21729C8B0(v2, v14, v34);
  v35 = sub_217751AD8();
  v36 = sub_217752828();
  if (OUTLINED_FUNCTION_44_4(v36))
  {
    OUTLINED_FUNCTION_73_4();
    v138[0] = OUTLINED_FUNCTION_25_7();
    *v2 = 136315650;
    v37 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
    OUTLINED_FUNCTION_18_8(v37);
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v14, v38);
    v39 = OUTLINED_FUNCTION_15();
    sub_21729C0E8(v39, v40, v41);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_9();
    _os_log_impl(v42, v43, v44, v45, v46, 0x1Cu);
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_22_7();
  }

  else
  {

    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v14, v47);
  }

LABEL_60:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217291F64()
{
  sub_217293DCC(v4);
  v0 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v1 = OUTLINED_FUNCTION_51_2();
    v0 = v2(v1);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_2171F0738(v4, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v0 & 1;
}

uint64_t sub_21729201C(void (*a1)(void *__return_ptr))
{
  sub_217293EA0(a1, v5);
  v1 = v6;
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = OUTLINED_FUNCTION_51_2();
    v1 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_2171F0738(v5, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

BOOL PlaylistPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for PlaylistPropertyProvider(0);
  v2 = *(v0 + *(v1 + 156));
  if (*(v0 + 1368))
  {
    if (v2 != 2)
    {
      return (*(v0 + *(v1 + 204)) & 0xFD) == 1;
    }
  }

  else if (v2 != 2 && *(v0 + 1360) <= 0)
  {
    return (*(v0 + *(v1 + 204)) & 0xFD) == 1;
  }

  return 1;
}

uint64_t PlaylistPropertyProvider.isLibraryAddedContainer.getter()
{
  v1 = type metadata accessor for PlaylistPropertyProvider(0);
  v2 = *(v0 + v1[37]);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (*(v0 + v1[67] + 144) != 0) | *(v0 + v1[45]);
  }

  return v3 & 1;
}

uint64_t sub_217292370@<X0>(uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v9 = *(v4 + 24);
  swift_bridgeObjectRetain_n();

  sub_217586664(v9, v4, v17);
  sub_2171F50C0(v17, v14, &qword_27CB24B50, &qword_2177595A0);
  if (v14[3])
  {
    sub_2171FF30C(v14, v15);
    sub_21729C698(v14);
  }

  else
  {
    sub_2171F0738(v14, &qword_27CB24B50, &qword_2177595A0);
    memset(v15, 0, sizeof(v15));
    v16 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27590, &qword_21776ADF0);
  v10 = type metadata accessor for MusicPersonalRecommendation(0);
  if (swift_dynamicCast())
  {
    sub_2171F0738(v17, &qword_27CB24B50, &qword_2177595A0);

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    return sub_21729C84C(v8, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    sub_2171F0738(v8, &qword_27CB24B58, &unk_21775A2A0);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6F2065737573694DLL, 0xEA00000000002066);
    OUTLINED_FUNCTION_20_8();
    v12 = sub_217753348();
    MEMORY[0x21CEA23B0](v12);

    MEMORY[0x21CEA23B0](0xD000000000000035, 0x80000002177AB110, v13);
    result = OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
  }

  return result;
}

double sub_217293DCC@<D0>(uint64_t a1@<X8>)
{
  sub_21729C5E8(v1 + 16, v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v3 = OUTLINED_FUNCTION_36_4();
  v4(v3);
  sub_21729C644(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
  if ((OUTLINED_FUNCTION_56_3(v5, v6, v7, v8, v9, v10) & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_217293EA0@<D0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v3 = OUTLINED_FUNCTION_36_4();
  v4(v3);
  sub_21729C644(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
  if ((OUTLINED_FUNCTION_56_3(v5, v6, v7, v8, v9, v10) & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_217293F44(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  v6 = &v7 - v5;
  sub_2171F50C0(v2, &v7 - v5, &qword_27CB24978, &qword_21776DBA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217751DE8();

    sub_217292370(a1);
  }

  else
  {
    sub_21729C84C(v6, a1);
  }
}

void sub_217294230(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_48_4(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  if (v24)
  {
    OUTLINED_FUNCTION_71_3(v10, v11, v12, v13, v14, v15, v16, v17, v21);

    v20 = OUTLINED_FUNCTION_1_5();
    v9(v20);
  }

  else
  {
    OUTLINED_FUNCTION_63_2(v10, v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, v19);
    *(v8 + 48) = v23;
  }
}

__n128 sub_217294308(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_48_4(a1, a2, a3, a4, a5, a6, a7, a8, v22);
  if (v25)
  {
    OUTLINED_FUNCTION_71_3(v10, v11, v12, v13, v14, v15, v16, v17, v22);

    v20 = OUTLINED_FUNCTION_1_5();
    v9(v20);
  }

  else
  {
    OUTLINED_FUNCTION_63_2(v10, v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v19);
    result = v24;
    *(v8 + 41) = v24;
  }

  return result;
}

uint64_t sub_2172943A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_217294DE8(v2, a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_217294454()
{
  OUTLINED_FUNCTION_47_4();

  os_unfair_lock_lock(v2);
  v3 = OUTLINED_FUNCTION_60_4();
  v0(v3);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_2172944FC()
{
  OUTLINED_FUNCTION_47_4();

  os_unfair_lock_lock(v2);
  v3 = OUTLINED_FUNCTION_60_4();
  v0(v3);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_2172946AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v45 = v10;
  result = sub_2171F50C0(v14 + (a2 << 6) + 32, v44, &unk_27CB2AF10, &unk_217787490);
  if (v44[56] != 255)
  {
    v16 = *&v44[16];
    *a3 = *v44;
    a3[1] = v16;
    a3[2] = *&v44[32];
    *(a3 + 41) = *&v44[41];
    return result;
  }

  v31[2] = v3;
  sub_2171F0738(v44, &unk_27CB2AF10, &unk_217787490);
  v17 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchResponse.TopResult, &type metadata for MusicCatalogSearchResponse.TopResult, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  v32 = v18;
  v33 = v17;
  if (!v17)
  {
    goto LABEL_16;
  }

  v34 = v8;
  v35 = v7;
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959F28, v13);
  swift_endAccess();
  v7 = *(a1 + 16);
  v19 = sub_217751938();
  v13 = [v7 identifiersForItemAtIndexPath_];

  v20 = qword_27CB23C48;
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v43[0] = xmmword_27CB29528;
  v43[1] = xmmword_27CB29538;
  *&v40 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v31[1] = v13;
  sub_2172B6904(v13, v43, &v40, &v37, v44);
  memcpy(v43, v44, 0x161uLL);
  (*(v34 + 16))(v45, v10, v35);
  sub_217269EF4(v44, &v40);
  v21 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v21;
  *&v42[0] = 0;
  v40 = 0u;
  v41 = 0u;
  v37 = xmmword_27CB29528;
  v38 = xmmword_27CB29538;
  LOBYTE(v36[0]) = *(a1 + 48);
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v43[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v43[1] + 1) = v22;
  *&v43[0] = v23;
  v24 = *(v32 + 8);

  v24(v36);
  *(&v38 + 1) = &type metadata for MusicCatalogSearchResponse.TopResult;
  v39 = &protocol witness table for MusicCatalogSearchResponse.TopResult;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v43, &v40);
  MusicCatalogSearchResponse.TopResult.init(propertyProvider:)(&v40, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v41 = 0u;
    memset(v42, 0, 24);
    v40 = 0u;
    BYTE8(v42[1]) = -1;
    sub_2171F0738(&v40, &unk_27CB2AF10, &unk_217787490);
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
    goto LABEL_18;
  }

  sub_217269F50(v44);
  v43[0] = v40;
  v43[1] = v41;
  v43[2] = v42[0];
  *(&v43[2] + 9) = *(v42 + 9);
  sub_217283E1C(v43, a3);
  sub_217283E1C(a3, &v40);
  swift_beginAccess();
  v26 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503448();
    v26 = v30;
    *(a1 + 56) = v30;
  }

  v29 = v34;
  v28 = v35;
  if (*(v26 + 16) > a2)
  {
    sub_21729C968(&v40, v26 + (a2 << 6) + 32, &unk_27CB2AF10, &unk_217787490);
    *(a1 + 56) = v26;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_217283E78(v43);
    (*(v29 + 8))(v10, v28);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  __break(1u);
LABEL_16:
  *v44 = 0;
  *&v44[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217294DE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MusicPersonalRecommendation(0);
  MEMORY[0x28223BE20](v7);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217751968();
  v61 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v57 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v47 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = *(a1 + 56);
  if (*(v21 + 16) <= a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_7:
    v67[0] = xmmword_27CB29958;
    v67[1] = xmmword_27CB29968;
    *&v64 = *(a1 + 40);
    LOBYTE(v63[0]) = 4;
    sub_217751DE8();
    sub_217751DE8();
    v47 = v14;
    sub_2172B6904(v14, v67, &v64, v63, v68);
    memcpy(v67, v68, 0x161uLL);
    (*(v61 + 16))(v57, a3, v56);
    sub_217269EF4(v68, &v64);
    v29 = [v9 itemAtIndexPathBlock];
    *(swift_allocObject() + 16) = v29;
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v63[0] = xmmword_27CB29958;
    v63[1] = xmmword_27CB29968;
    v62 = *(a1 + 48);
    v30 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    swift_allocObject();
    sub_217751DE8();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    *(&v65 + 1) = v30;
    v66 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *&v64 = v31;
    v32 = *(v49 + 8);

    v32(v63);
    v34 = v51;
    v33 = v52;
    v35 = *(v51 + 24);
    *(&v67[1] + 1) = v52;
    *&v67[2] = v51;
    __swift_allocate_boxed_opaque_existential_0(v67);
    v35(&v64, v63, v33, v34);
    sub_2171FF30C(v67, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    v36 = v58;
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v7);
      sub_2171F0738(v36, &qword_27CB24B58, &unk_21775A2A0);
      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
      MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AB220);
      goto LABEL_20;
    }

    sub_217269F50(v68);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v7);
    v37 = v59;
    sub_21729C84C(v36, v59);
    v38 = v53;
    sub_21729C8B0(v37, v53, type metadata accessor for MusicPersonalRecommendation);
    v39 = v38;
    v40 = v60;
    sub_21729C8B0(v39, v60, type metadata accessor for MusicPersonalRecommendation);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v7);
    swift_beginAccess();
    v41 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503460();
      v41 = v46;
      *(a1 + 56) = v46;
    }

    v43 = v56;
    v44 = v69;
    if (*(v41 + 16) > a2)
    {
      sub_21729C968(v60, v41 + v55 + v48, &qword_27CB24B58, &unk_21775A2A0);
      *(a1 + 56) = v41;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21729C910(v37, type metadata accessor for MusicPersonalRecommendation);
      (*(v61 + 8))(v44, v43);
      return __swift_destroy_boxed_opaque_existential_1(v67);
    }

    __break(1u);
    goto LABEL_17;
  }

  v55 = (v14[80] + 32) & ~v14[80];
  v22 = *(v14 + 9) * a2;
  sub_2171F50C0(v21 + v55 + v22, v20, &qword_27CB24B58, &unk_21775A2A0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v7) != 1)
  {
    return sub_21729C84C(v20, a3);
  }

  v48 = v22;
  sub_2171F0738(v20, &qword_27CB24B58, &unk_21775A2A0);
  v23 = dynamic_cast_existential_1_conditional(v7, v7, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  if (v23)
  {
    v49 = v24;
    v50 = v23;
    v53 = a3;
    v56 = v9;
    v25 = dynamic_cast_existential_1_conditional(v7, v7, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
    v51 = v26;
    v52 = v25;
    if (!v25)
    {
      v68[0] = 0;
      v68[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AB220);
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
      goto LABEL_20;
    }

    v54 = v3;
    swift_beginAccess();
    a3 = v69;
    sub_217290620(a2, &unk_282959FB8, v69);
    swift_endAccess();
    v9 = *(a1 + 16);
    v27 = sub_217751938();
    v14 = [v9 identifiersForItemAtIndexPath_];

    v28 = qword_27CB23C90;
    swift_unknownObjectRetain();
    if (v28 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_17:
  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AB220);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_20:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217295738@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v45 = v10;
  result = sub_2171F50C0(v14 + (a2 << 6) + 32, v44, &unk_27CB2AEA0, &unk_21775A260);
  if (v44[56] != 255)
  {
    v16 = *&v44[16];
    *a3 = *v44;
    a3[1] = v16;
    a3[2] = *&v44[32];
    *(a3 + 41) = *&v44[41];
    return result;
  }

  v31[2] = v3;
  sub_2171F0738(v44, &unk_27CB2AEA0, &unk_21775A260);
  v17 = dynamic_cast_existential_1_conditional(&type metadata for MusicPersonalRecommendation.Item, &type metadata for MusicPersonalRecommendation.Item, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  v32 = v18;
  v33 = v17;
  if (!v17)
  {
    goto LABEL_16;
  }

  v34 = v8;
  v35 = v7;
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959F88, v13);
  swift_endAccess();
  v7 = *(a1 + 16);
  v19 = sub_217751938();
  v13 = [v7 identifiersForItemAtIndexPath_];

  v20 = qword_27CB23D08;
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v43[0] = xmmword_27CB2A5E8;
  v43[1] = xmmword_27CB2A5F8;
  *&v40 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v31[1] = v13;
  sub_2172B6904(v13, v43, &v40, &v37, v44);
  memcpy(v43, v44, 0x161uLL);
  (*(v34 + 16))(v45, v10, v35);
  sub_217269EF4(v44, &v40);
  v21 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v21;
  *&v42[0] = 0;
  v40 = 0u;
  v41 = 0u;
  v37 = xmmword_27CB2A5E8;
  v38 = xmmword_27CB2A5F8;
  LOBYTE(v36[0]) = *(a1 + 48);
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v43[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v43[1] + 1) = v22;
  *&v43[0] = v23;
  v24 = *(v32 + 8);

  v24(v36);
  *(&v38 + 1) = &type metadata for MusicPersonalRecommendation.Item;
  v39 = &protocol witness table for MusicPersonalRecommendation.Item;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v43, &v40);
  MusicPersonalRecommendation.Item.init(propertyProvider:)(&v40, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v41 = 0u;
    memset(v42, 0, 24);
    v40 = 0u;
    BYTE8(v42[1]) = -1;
    sub_2171F0738(&v40, &unk_27CB2AEA0, &unk_21775A260);
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
    goto LABEL_18;
  }

  sub_217269F50(v44);
  v43[0] = v40;
  v43[1] = v41;
  v43[2] = v42[0];
  *(&v43[2] + 9) = *(v42 + 9);
  sub_217283ECC(v43, a3);
  sub_217283ECC(a3, &v40);
  swift_beginAccess();
  v26 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503478();
    v26 = v30;
    *(a1 + 56) = v30;
  }

  v29 = v34;
  v28 = v35;
  if (*(v26 + 16) > a2)
  {
    sub_21729C968(&v40, v26 + (a2 << 6) + 32, &unk_27CB2AEA0, &unk_21775A260);
    *(a1 + 56) = v26;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_217283F28(v43);
    (*(v29 + 8))(v10, v28);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  __break(1u);
LABEL_16:
  *v44 = 0;
  *&v44[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217295E5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &unk_27CB2AF80, &qword_217758C30);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &unk_27CB2AF80, &qword_217758C30);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959EF8, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE26C0;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BE26C8;
  *&v39[16] = xmmword_280BE26D8;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BE26C8;
  v33 = xmmword_280BE26D8;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for Station;
  v34 = &protocol witness table for Station;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  Station.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_217283D6C(v39, a3);
    sub_217283D6C(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503490();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &unk_27CB2AF80, &qword_217758C30);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283DC8(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &unk_27CB2AF80, &qword_217758C30);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6E6F6974617453, 0xE700000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217296480@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &unk_27CB28A90, &qword_217758F90);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &unk_27CB28A90, &qword_217758F90);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959DD8, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE84D8;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BE84E0;
  *&v39[16] = xmmword_280BE84F0;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BE84E0;
  v33 = xmmword_280BE84F0;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for Playlist;
  v34 = &protocol witness table for Playlist;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  Playlist.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_2172757C0(v39, a3);
    sub_2172757C0(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034A8();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &unk_27CB28A90, &qword_217758F90);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21726B8C4(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &unk_27CB28A90, &qword_217758F90);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x7473696C79616C50, 0xE800000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217296AA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &unk_27CB275E0, &qword_2177589D0);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &unk_27CB275E0, &qword_2177589D0);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959B20, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE85B8;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BE85C0;
  *&v39[16] = xmmword_280BE85D0;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BE85C0;
  v33 = xmmword_280BE85D0;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for Album;
  v34 = &protocol witness table for Album;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  Album.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_21725CF0C(v39, a3);
    sub_21725CF0C(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034C0();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &unk_27CB275E0, &qword_2177589D0);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21725CE44(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &unk_27CB275E0, &qword_2177589D0);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6D75626C41, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}