void *sub_2541D1020(void *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  if (!a2)
  {
    goto LABEL_46;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_51;
  }

  if (a3 < 0)
  {
    goto LABEL_59;
  }

  v8 = a2;
  result = 0;
  v9 = a5;
  v10 = 0;
  v34 = a4 + 32;
  v35 = a6;
  v30 = a5;
  v31 = a4 + 56;
  v11 = 1;
  v32 = a3;
  while (1)
  {
    if (!a6)
    {
      v22 = 0;
      a3 = 0;
      a5 = v30;
      goto LABEL_51;
    }

    v33 = result;
    v12 = *(a4 + 16);
    if (v10 >= v12)
    {
      v22 = v10;
      goto LABEL_48;
    }

    if (v10 >= v12)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v13 = (v34 + 16 * v10);
    v14 = *v13;
    v15 = v13[1];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 == 2)
      {
        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        v19 = v17 - v18;
        if (__OFSUB__(v17, v18))
        {
          goto LABEL_58;
        }

        goto LABEL_18;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_24:
        result = sub_254134D04(v14, v15);
        v22 = v10 + 1;
        v23 = *(a4 + 16);
        if (v10 + 1 < v23)
        {
          v24 = (v31 + 16 * v10);
          do
          {
            if (v22 >= v23)
            {
              goto LABEL_56;
            }

            v14 = *(v24 - 1);
            v15 = *v24;
            v16 = *v24 >> 62;
            if (v16 > 1)
            {
              if (v16 != 2)
              {
                goto LABEL_27;
              }

              v27 = *(v14 + 16);
              v26 = *(v14 + 24);
              v25 = v26 - v27;
              if (__OFSUB__(v26, v27))
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (!v16)
              {
                if (BYTE6(v15))
                {
                  goto LABEL_36;
                }

                goto LABEL_27;
              }

              if (__OFSUB__(HIDWORD(v14), v14))
              {
                goto LABEL_57;
              }

              v25 = HIDWORD(v14) - v14;
            }

            sub_254140660(*(v24 - 1), *v24);
            if (v25 > 0)
            {
LABEL_36:
              v9 = 0;
              v10 = v22;
              if (v16)
              {
                goto LABEL_20;
              }

              goto LABEL_37;
            }

LABEL_27:
            result = sub_254134D04(v14, v15);
            ++v22;
            v23 = *(a4 + 16);
            v24 += 2;
          }

          while (v22 < v23);
        }

        v9 = 0;
LABEL_48:
        a3 = v33;
        goto LABEL_49;
      }

LABEL_62:
      __break(1u);
      return result;
    }

    if (!v16)
    {
      if (v9 >= BYTE6(v15))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v14), v14))
    {
      goto LABEL_57;
    }

    v19 = HIDWORD(v14) - v14;
LABEL_18:
    sub_254140660(v14, v15);
    if (v9 >= v19)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (v16)
    {
LABEL_20:
      if (v16 == 2)
      {
        v20 = *(v14 + 16);
        result = (v20 + v9);
        if (__OFADD__(v20, v9))
        {
          goto LABEL_61;
        }

        v21 = *(v14 + 24);
      }

      else
      {
        v20 = v14;
        result = (v14 + v9);
        if (__OFADD__(v14, v9))
        {
          goto LABEL_60;
        }

        v21 = v14 >> 32;
      }
    }

    else
    {
LABEL_37:
      v20 = 0;
      v21 = BYTE6(v15);
      result = v9;
    }

    if (result < v20 || v21 < result)
    {
      goto LABEL_62;
    }

    v28 = sub_25424D4C8();
    sub_254134D04(v14, v15);
    ++v9;
    *v8 = v28;
    a3 = v32;
    if (v11 == v32)
    {
      break;
    }

    ++v8;
    result = v11;
    v29 = __OFADD__(v11++, 1);
    a6 = v35;
    if (v29)
    {
      __break(1u);
LABEL_46:
      v22 = 0;
      a3 = 0;
LABEL_51:
      v9 = a5;
      goto LABEL_52;
    }
  }

  v22 = v10;
LABEL_49:
  a6 = v35;
  a5 = v30;
LABEL_52:
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = v22;
  v7[4] = v9;
  return a3;
}

uint64_t sub_2541D12E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_2541D2374(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_2541D1F00(v11, v14);
      sub_2541D1F00(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *sub_2541D1524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2541D1BC8(a1, a2, a3, a4, v41);
  v4 = v41[0];
  v5 = v41[2];
  v6 = v41[3];
  v7 = v41[4];
  result = sub_2541D1E98(v41, v40);
  if (v5)
  {
    v9 = *(v4 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v6 >= v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        if (v6 >= v9)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v13 = (v4 + 32 + 16 * v6);
        v14 = *v13;
        v15 = v13[1];
        v16 = v15 >> 62;
        if ((v15 >> 62) > 1)
        {
          break;
        }

        if (!v16)
        {
          if (v7 >= BYTE6(v15))
          {
            goto LABEL_21;
          }

          goto LABEL_8;
        }

        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_63;
        }

        v21 = HIDWORD(v14) - v14;
LABEL_18:
        sub_254140660(v14, v15);
        if (v7 >= v21)
        {
          goto LABEL_21;
        }

LABEL_8:
        if (v16)
        {
LABEL_9:
          if (v16 == 2)
          {
            v17 = *(v14 + 16);
            result = (v17 + v7);
            if (__OFADD__(v17, v7))
            {
              goto LABEL_68;
            }

            v18 = *(v14 + 24);
          }

          else
          {
            v17 = v14;
            result = (v14 + v7);
            if (__OFADD__(v14, v7))
            {
              goto LABEL_67;
            }

            v18 = v14 >> 32;
          }
        }

        else
        {
LABEL_36:
          v17 = 0;
          v18 = BYTE6(v15);
          result = v7;
        }

        if (result < v17 || v18 < result)
        {
          goto LABEL_69;
        }

        v27 = sub_25424D4C8();
        result = sub_254134D04(v14, v15);
        if (!v11)
        {
          v28 = *(v10 + 3);
          if (((v28 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_66;
          }

          v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
          if (v29 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v29;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
          v31 = swift_allocObject();
          v32 = 2 * _swift_stdlib_malloc_size(v31) - 64;
          *(v31 + 2) = v30;
          *(v31 + 3) = v32;
          v33 = v31 + 32;
          v34 = *(v10 + 3) >> 1;
          if (*(v10 + 2))
          {
            v35 = v10 + 32;
            if (v31 != v10 || v33 >= &v35[v34])
            {
              memmove(v31 + 32, v35, v34);
            }

            *(v10 + 2) = 0;
          }

          v12 = &v33[v34];
          v11 = (v32 >> 1) - v34;

          v10 = v31;
        }

        v36 = __OFSUB__(v11--, 1);
        if (v36)
        {
          goto LABEL_64;
        }

        ++v7;
        *v12++ = v27;
        v9 = *(v4 + 16);
        if (v6 >= v9)
        {
          goto LABEL_57;
        }
      }

      if (v16 == 2)
      {
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        v21 = v19 - v20;
        if (__OFSUB__(v19, v20))
        {
          goto LABEL_62;
        }

        goto LABEL_18;
      }

      if (v7 < 0)
      {
        goto LABEL_69;
      }

LABEL_21:
      result = sub_254134D04(v14, v15);
      v22 = *(v4 + 16);
      if (v6 + 1 < v22)
      {
        v23 = (v4 + 56 + 16 * v6++);
        do
        {
          if (v6 >= v22)
          {
            goto LABEL_61;
          }

          v14 = *(v23 - 1);
          v15 = *v23;
          v16 = *v23 >> 62;
          if (v16 > 1)
          {
            if (v16 != 2)
            {
              goto LABEL_33;
            }

            v26 = *(v14 + 16);
            v25 = *(v14 + 24);
            v24 = v25 - v26;
            if (__OFSUB__(v25, v26))
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (!v16)
            {
              if (BYTE6(v15))
              {
                goto LABEL_35;
              }

              goto LABEL_33;
            }

            if (__OFSUB__(HIDWORD(v14), v14))
            {
              goto LABEL_63;
            }

            v24 = HIDWORD(v14) - v14;
          }

          sub_254140660(*(v23 - 1), *v23);
          if (v24 > 0)
          {
LABEL_35:
            v7 = 0;
            if (v16)
            {
              goto LABEL_9;
            }

            goto LABEL_36;
          }

LABEL_33:
          result = sub_254134D04(v14, v15);
          ++v6;
          v22 = *(v4 + 16);
          v23 += 2;
        }

        while (v6 < v22);
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = MEMORY[0x277D84F90];
  }

LABEL_57:
  result = sub_2541D1ED0(v41);
  v37 = *(v10 + 3);
  if (v37 < 2)
  {
    return v10;
  }

  v38 = v37 >> 1;
  v36 = __OFSUB__(v38, v11);
  v39 = v38 - v11;
  if (!v36)
  {
    *(v10 + 2) = v39;
    return v10;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

char *sub_2541D1878(char *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 2);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v6 = 0;
      v7 = 0;
      v40 = result;
      v41 = result + 32;
      v8 = MEMORY[0x277D84F90] + 32;
      v39 = result + 56;
      while (1)
      {
        v42 = v8;
        if (v7 <= v3)
        {
          v9 = v3;
        }

        else
        {
          v9 = v7;
        }

        if (v7 >= v3)
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v10 = &v41[2 * v7];
        v11 = *v10;
        v12 = v10[1];
        v13 = v12 >> 62;
        if ((v12 >> 62) > 1)
        {
          break;
        }

        if (!v13)
        {
          if (a2 >= BYTE6(v12))
          {
            goto LABEL_24;
          }

          goto LABEL_11;
        }

        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_68;
        }

        v18 = HIDWORD(v11) - v11;
LABEL_21:
        sub_254140660(v11, v12);
        if (a2 >= v18)
        {
          goto LABEL_24;
        }

LABEL_11:
        if (v13)
        {
LABEL_12:
          if (v13 == 2)
          {
            v14 = *(v11 + 16);
            result = (v14 + a2);
            if (__OFADD__(v14, a2))
            {
              goto LABEL_73;
            }

            v15 = *(v11 + 24);
          }

          else
          {
            v14 = v11;
            result = (v11 + a2);
            if (__OFADD__(v11, a2))
            {
              goto LABEL_72;
            }

            v15 = v11 >> 32;
          }
        }

        else
        {
LABEL_39:
          v14 = 0;
          v15 = BYTE6(v12);
          result = a2;
        }

        if (result < v14 || v15 < result)
        {
          goto LABEL_74;
        }

        v23 = sub_25424D4C8();
        result = sub_254134D04(v11, v12);
        if (v6)
        {
          v24 = v40;
          v25 = v42;
          v26 = __OFSUB__(v6--, 1);
          if (v26)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v27 = *(v4 + 3);
          if (((v27 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_71;
          }

          v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
          if (v28 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v28;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
          v30 = swift_allocObject();
          v31 = 2 * _swift_stdlib_malloc_size(v30) - 64;
          *(v30 + 2) = v29;
          *(v30 + 3) = v31;
          v32 = v30 + 32;
          v33 = *(v4 + 3) >> 1;
          if (*(v4 + 2))
          {
            v34 = v4 + 32;
            if (v30 != v4 || v32 >= &v34[v33])
            {
              memmove(v30 + 32, v34, v33);
            }

            *(v4 + 2) = 0;
          }

          v25 = &v32[v33];
          v35 = (v31 >> 1) - v33;

          v4 = v30;
          v24 = v40;
          v26 = __OFSUB__(v35, 1);
          v6 = v35 - 1;
          if (v26)
          {
            goto LABEL_69;
          }
        }

        ++a2;
        *v25 = v23;
        v8 = (v25 + 1);
        v3 = *(v24 + 16);
        if (v7 >= v3)
        {
          goto LABEL_62;
        }
      }

      if (v13 == 2)
      {
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        v18 = v16 - v17;
        if (__OFSUB__(v16, v17))
        {
          goto LABEL_67;
        }

        goto LABEL_21;
      }

      if (a2 < 0)
      {
        goto LABEL_74;
      }

LABEL_24:
      result = sub_254134D04(v11, v12);
      if (v7 + 1 != v3)
      {
        v19 = &v39[2 * v7++];
        do
        {
          if (v9 == v7)
          {
            goto LABEL_66;
          }

          v11 = *(v19 - 1);
          v12 = *v19;
          v13 = *v19 >> 62;
          if (v13 > 1)
          {
            if (v13 != 2)
            {
              goto LABEL_36;
            }

            v22 = *(v11 + 16);
            v21 = *(v11 + 24);
            v20 = v21 - v22;
            if (__OFSUB__(v21, v22))
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (!v13)
            {
              if (BYTE6(v12))
              {
                goto LABEL_38;
              }

              goto LABEL_36;
            }

            if (__OFSUB__(HIDWORD(v11), v11))
            {
              goto LABEL_68;
            }

            v20 = HIDWORD(v11) - v11;
          }

          sub_254140660(*(v19 - 1), *v19);
          if (v20 > 0)
          {
LABEL_38:
            a2 = 0;
            if (v13)
            {
              goto LABEL_12;
            }

            goto LABEL_39;
          }

LABEL_36:
          result = sub_254134D04(v11, v12);
          ++v7;
          v19 += 2;
        }

        while (v3 != v7);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v4 = MEMORY[0x277D84F90];
  }

LABEL_62:
  v36 = *(v4 + 3);
  if (v36 < 2)
  {
    return v4;
  }

  v37 = v36 >> 1;
  v26 = __OFSUB__(v37, v6);
  v38 = v37 - v6;
  if (!v26)
  {
    *(v4 + 2) = v38;
    return v4;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void *sub_2541D1BC8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result[2];
  if (!v5)
  {
    v9 = 0;
    v10 = a2;
LABEL_35:
    *a5 = result;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = v9;
    a5[4] = v10;
    return result;
  }

  v6 = result[4];
  v7 = result[5];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 3)
    {
      v6 = 0;
    }

    else
    {
      v13 = v6 + 16;
      v11 = *(v6 + 16);
      v12 = *(v13 + 8);
      v22 = __OFSUB__(v12, v11);
      v6 = v12 - v11;
      if (v22)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }
  }

  else if (v8)
  {
    v22 = __OFSUB__(HIDWORD(v6), v6);
    LODWORD(v6) = HIDWORD(v6) - v6;
    if (v22)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v6 = v6;
  }

  else
  {
    v6 = BYTE6(v7);
  }

  v22 = __OFSUB__(v6, a2);
  v14 = v6 - a2;
  if (v22)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v14 <= a4)
  {
    v22 = __OFSUB__(a4, v14);
    v15 = a4 - v14;
    if (!v22)
    {
      if (v5 == 1)
      {
        v10 = 0;
        v9 = 1;
      }

      else
      {
        v16 = result + 7;
        v9 = 1;
        while (1)
        {
          v17 = *(v16 - 1);
          v18 = *v16 >> 62;
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v21 = v17 + 16;
              v19 = *(v17 + 16);
              v20 = *(v21 + 8);
              v22 = __OFSUB__(v20, v19);
              v17 = v20 - v19;
              if (v22)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v17 = 0;
            }
          }

          else if (v18)
          {
            v22 = __OFSUB__(HIDWORD(v17), v17);
            LODWORD(v17) = HIDWORD(v17) - v17;
            if (v22)
            {
              goto LABEL_37;
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(*v16);
          }

          v22 = __OFSUB__(v15, v17);
          v23 = v15 - v17;
          if (v23 < 0 != v22)
          {
            break;
          }

          if (v22)
          {
            goto LABEL_36;
          }

          ++v9;
          v16 += 2;
          v15 = v23;
          if (v5 == v9)
          {
            v10 = 0;
            v9 = result[2];
            goto LABEL_35;
          }
        }

        v10 = v15;
      }

      goto LABEL_35;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = 0;
  v10 = a2 + a4;
  if (!__OFADD__(a2, a4))
  {
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2541D1D18(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2541D1DD8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2541B09E0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2541D1D18(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2541D1F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2541D1F64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_2541D216C();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_25424E868();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_25424E868();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_2541D2080(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_25424E868();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_25424E868();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_2541D07F0(result, 1);

  return sub_2541D1F64(v7, v6, 1, v4);
}

unint64_t sub_2541D216C()
{
  result = qword_27F5B9118;
  if (!qword_27F5B9118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5B9118);
  }

  return result;
}

unint64_t sub_2541D21B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2541D230C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E00, &qword_254253F58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541D2374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2541D23E8(uint64_t *a1, int a2)
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

uint64_t sub_2541D2430(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2541D2494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2541D24DC(uint64_t result, int a2, int a3)
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

uint64_t sub_2541D2538(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541D25A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2541D26E8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2541D294C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, v2, v4);
  sub_25424DE98();
  return (*(v9 + 32))(a2, v11, AssociatedTypeWitness);
}

uint64_t sub_2541D2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2541D294C(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2541D2B3C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 24);
  v3[5] = *(a2 + 16);
  v3[6] = swift_getAssociatedTypeWitness();
  v4 = sub_25424E598();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541D2C30, 0, 0);
}

uint64_t sub_2541D2C30()
{
  v1 = v0[9];
  v2 = v0[6];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25424E5C8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    v4 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[9], v0[6]);
    v4 = 0;
  }

  (*(v3 + 56))(v0[2], v4, 1, v0[6]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2541D2DC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2541A0F4C;

  return sub_2541D2B3C(a1, a2);
}

uint64_t sub_2541D2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2541D2F34;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v12);
}

uint64_t sub_2541D2F34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2541D304C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541D30CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_2541D3260(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

void sub_2541D34A4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
    sub_25424E078();
  }

  else
  {
    sub_254148D7C(0, &qword_27F5BAF90, 0x277CBC5E8);
    sub_25424DF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
    sub_25424E088();
  }
}

uint64_t sub_2541D356C()
{
  v0 = sub_25424D988();
  MEMORY[0x28223BE20](v0 - 8);
  v74 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25424D9A8();
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAFA0, &qword_25425CEE8);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v44 - v5;
  v6 = sub_25424D7A8();
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25424D6A8();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25424D6C8();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25424D5F8();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25424D698();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v59 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25424D678();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25424D598();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_25424D5B8();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_25424D5D8();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_25424D638();
  v19 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25424D618();
  v22 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25424D658();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25424D788();
  MEMORY[0x28223BE20](v29 - 8);
  v30 = sub_25424D808();
  __swift_allocate_value_buffer(v30, qword_27F5BAEE0);
  v55 = __swift_project_value_buffer(v30, qword_27F5BAEE0);
  sub_25424D778();
  sub_25424D768();
  sub_25424D648();
  sub_25424D728();
  (*(v26 + 8))(v28, v25);
  sub_25424D768();
  sub_25424D608();
  sub_25424D6F8();
  (*(v22 + 8))(v24, v44);
  sub_25424D768();
  sub_25424D628();
  sub_25424D718();
  (*(v19 + 8))(v21, v45);
  sub_25424D768();
  v31 = v47;
  sub_25424D5A8();
  v32 = v49;
  sub_25424D588();
  v33 = v46;
  sub_25424D5C8();
  (*(v53 + 8))(v32, v54);
  (*(v51 + 8))(v31, v52);
  sub_25424D708();
  (*(v48 + 8))(v33, v50);
  sub_25424D768();
  v34 = v56;
  sub_25424D668();
  sub_25424D738();
  (*(v57 + 8))(v34, v58);
  sub_25424D768();
  v35 = v59;
  sub_25424D668();
  sub_25424D748();
  (*(v60 + 8))(v35, v61);
  sub_25424D768();
  v36 = v62;
  sub_25424D5E8();
  sub_25424D6E8();
  (*(v63 + 8))(v36, v64);
  sub_25424D768();
  v38 = v66;
  v37 = v67;
  v39 = v69;
  (*(v67 + 104))(v66, *MEMORY[0x277CC93F8], v69);
  v40 = v65;
  sub_25424D6B8();
  (*(v37 + 8))(v38, v39);
  sub_25424D758();
  (*(v68 + 8))(v40, v70);
  sub_25424D768();
  sub_25424D798();
  v41 = v72;
  sub_25424D958();
  v42 = sub_25424D968();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  sub_25424D998();
  sub_25424D978();
  return sub_25424D7E8();
}

uint64_t static CloudKitExporter.dateFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F5B8460 != -1)
  {
    swift_once();
  }

  v2 = sub_25424D808();
  v3 = __swift_project_value_buffer(v2, qword_27F5BAEE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void CloudKitExporter.init(outputStreamFactory:operationGroup:container:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = [a1 defaultConfiguration];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 container];

    if (v12)
    {

      a4 = v12;
    }

    *a5 = a2;
    a5[1] = a3;
    a5[2] = a4;
    a5[3] = a1;
  }

  else
  {
    __break(1u);
  }
}

void CloudKitExporter.init(outputStreamFactory:qualityOfService:container:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  v11 = v10;
  sub_2541D41D0(&v11, a4, a3);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = v10;
}

void sub_2541D41D0(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 defaultConfiguration];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v6 setContainer_];

  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  v23[0] = 47;
  v23[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v8);
  v22[2] = v23;
  v10 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_2541D8BB8, v22, 0xD000000000000024, v9 | 0x8000000000000000, v9);
  if (!v10[2])
  {
LABEL_8:

    __break(1u);
    goto LABEL_9;
  }

  v11 = v10[4];
  v12 = v10[5];
  v13 = v10[6];
  v14 = v10[7];

  v15 = MEMORY[0x259C05BF0](v11, v12, v13, v14);
  v17 = v16;

  MEMORY[0x259C05CA0](v15, v17);

  MEMORY[0x259C05CA0](46, 0xE100000000000000);
  v23[0] = &type metadata for CloudKitExporter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF98, &qword_25425CEE0);
  v18 = sub_25424DD08();
  MEMORY[0x259C05CA0](v18);

  v19 = sub_25424DCA8();

  [v5 setName_];

  if (a3 == -1)
  {
    return;
  }

  v20 = [v5 defaultConfiguration];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 setQualityOfService_];
}

uint64_t CloudKitExporter.start()()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2541D441C, 0, 0);
}

uint64_t sub_2541D441C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2541D4504;

  return MEMORY[0x28210DF30]();
}

uint64_t sub_2541D4504()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2541D4620;
  }

  else
  {

    v2 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541D4620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541D4684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_2541D46AC, 0, 0);
}

id sub_2541D46AC()
{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 16) = xmmword_254254380;
  *(inited + 32) = [v1 privateCloudDatabase];
  result = [v1 sharedCloudDatabase];
  *(inited + 40) = result;
  if ((inited & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C06580](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(inited + 32);
  }

  v5 = v4;
  *(v0 + 144) = v4;
  *(v0 + 64) = *(v0 + 104);
  *(v0 + 80) = *(v0 + 120);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_2541D47F8;

  return sub_2541D4CFC(v5);
}

uint64_t sub_2541D47F8()
{
  v2 = *v1;

  if (v0)
  {
    v2[22] = v2[18];
    v2[23] = v0;

    v3 = sub_2541D4BC0;
  }

  else
  {
    v3 = sub_2541D4920;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2541D4920()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 136);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x259C06580](1, v2);
  }

  else
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 40);
  }

  v4 = v3;
  *(v0 + 160) = v3;
  *(v0 + 64) = *(v0 + 104);
  *(v0 + 80) = *(v0 + 120);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_2541D4A0C;

  sub_2541D4CFC(v4);
}

uint64_t sub_2541D4A0C()
{
  v2 = *v1;

  if (v0)
  {
    v2[22] = v2[20];
    v2[23] = v0;

    v3 = sub_2541D4BC0;
  }

  else
  {
    v3 = sub_2541D4B38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541D4B38()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541D4BC0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541D4C24(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25412F724;

  return sub_2541D4684(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_2541D4CFC(uint64_t a1)
{
  *(v2 + 184) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_25424DAA8();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  v5 = v1[1];
  *(v2 + 240) = *v1;
  *(v2 + 256) = v5;

  return MEMORY[0x2822009F8](sub_2541D4E2C, 0, 0);
}

uint64_t sub_2541D4E2C()
{
  v36 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[23];
  sub_25421B67C(v0[29]);
  v4 = v3;

  v5 = v2;
  v6 = v1;
  v7 = sub_25424DA88();
  v8 = sub_25424E408();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[32];
    v10 = v0[28];
    v32 = v0[27];
    v33 = v0[29];
    v31 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v35[0] = v12;
    v35[1] = 40;
    v35[2] = 0xE100000000000000;
    v13 = [v9 containerID];
    v14 = [v13 containerIdentifier];

    v15 = sub_25424DCB8();
    v17 = v16;

    MEMORY[0x259C05CA0](v15, v17);

    MEMORY[0x259C05CA0](8236, 0xE200000000000000);
    [v31 scope];
    v18 = CKDatabaseScopeString();
    v19 = sub_25424DCB8();
    v21 = v20;

    MEMORY[0x259C05CA0](v19, v21);

    MEMORY[0x259C05CA0](41, 0xE100000000000000);
    v22 = sub_2542203C4(40, 0xE100000000000000, v35);

    *(v11 + 4) = v22;
    _os_log_impl(&dword_254124000, v7, v8, "Fetching zones for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C07330](v12, -1, -1);
    MEMORY[0x259C07330](v11, -1, -1);

    (*(v10 + 8))(v33, v32);
  }

  else
  {
    v24 = v0[28];
    v23 = v0[29];
    v25 = v0[27];

    (*(v24 + 8))(v23, v25);
  }

  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  v34 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_2541D5228;
  swift_continuation_init();
  v0[17] = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA000, &unk_254258180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  sub_25424E068();
  (*(v27 + 32))(boxed_opaque_existential_1, v26, v28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2541D34A4;
  v0[13] = &block_descriptor_9;
  [v34 fetchAllRecordZonesWithCompletionHandler_];
  (*(v27 + 8))(boxed_opaque_existential_1, v28);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2541D5228()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_2541D58F8;
  }

  else
  {
    v2 = sub_2541D5338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541D5338()
{
  v1 = *(v0 + 176);
  *(v0 + 280) = v1;
  if (v1 >> 62)
  {
LABEL_21:
    v18 = sub_25424E868();
    *(v0 + 288) = v18;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 288) = v2;
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        v4 = *(v0 + 280);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x259C06580](v3);
        }

        else
        {
          if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v5 = *(v4 + 8 * v3 + 32);
        }

        v6 = v5;
        *(v0 + 296) = v5;
        *(v0 + 304) = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v7 = [v5 zoneID];
        v8 = [v7 zoneName];

        v9 = sub_25424DCB8();
        v11 = v10;

        if (v9 == 0x746C75616665645FLL && v11 == 0xEC000000656E6F5ALL)
        {
        }

        else
        {
          v13 = sub_25424EAB8();

          if ((v13 & 1) == 0)
          {
            v14 = *(v0 + 256);
            *(v0 + 144) = *(v0 + 240);
            *(v0 + 160) = v14;
            v15 = swift_task_alloc();
            *(v0 + 312) = v15;
            *v15 = v0;
            v15[1] = sub_2541D559C;
            v16 = *(v0 + 184);

            return sub_2541D5A1C(v16, v6);
          }
        }

        v3 = *(v0 + 304);
      }

      while (v3 != *(v0 + 288));
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2541D559C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_2541D5978;
  }

  else
  {
    v2 = sub_2541D56B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2541D56B8()
{
  v1 = *(v0 + 304);
  if (v1 == *(v0 + 288))
  {
LABEL_2:

    v2 = *(v0 + 8);

    v2();
    return;
  }

  while (1)
  {
    v3 = *(v0 + 280);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x259C06580](v1);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v4 = *(v3 + 8 * v1 + 32);
    }

    v5 = v4;
    *(v0 + 296) = v4;
    *(v0 + 304) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v6 = [v4 zoneID];
    v7 = [v6 zoneName];

    v8 = sub_25424DCB8();
    v10 = v9;

    if (v8 != 0x746C75616665645FLL || v10 != 0xEC000000656E6F5ALL)
    {
      break;
    }

LABEL_7:

    v1 = *(v0 + 304);
    if (v1 == *(v0 + 288))
    {
      goto LABEL_2;
    }
  }

  v12 = sub_25424EAB8();

  if (v12)
  {
    goto LABEL_7;
  }

  v13 = *(v0 + 256);
  *(v0 + 144) = *(v0 + 240);
  *(v0 + 160) = v13;
  v14 = swift_task_alloc();
  *(v0 + 312) = v14;
  *v14 = v0;
  v14[1] = sub_2541D559C;
  v15 = *(v0 + 184);

  sub_2541D5A1C(v15, v5);
}

uint64_t sub_2541D58F8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2541D5978()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541D5A1C(uint64_t a1, uint64_t a2)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;
  v4 = sub_25424E3A8();
  *(v3 + 328) = v4;
  *(v3 + 336) = *(v4 - 8);
  *(v3 + 344) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF18, &qword_25425CE78);
  *(v3 + 352) = v5;
  *(v3 + 360) = *(v5 - 8);
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF20, &qword_25425CE80);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  v6 = sub_25424DAA8();
  *(v3 + 408) = v6;
  *(v3 + 416) = *(v6 - 8);
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  v7 = v2[1];
  *(v3 + 440) = *v2;
  *(v3 + 456) = v7;

  return MEMORY[0x2822009F8](sub_2541D5C1C, 0, 0);
}

uint64_t sub_2541D5C1C()
{
  v71 = v0;
  v1 = (v0 + 440);
  (*(v0 + 440))([*(v0 + 312) scope], *(v0 + 320));
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  if (*(v0 + 168))
  {
    v6 = *(v0 + 432);
    sub_25412DC4C((v0 + 144), v0 + 104);
    sub_25421B67C(v6);
    v7 = v4;
    v8 = v5;

    v9 = v3;
    v10 = v2;
    v11 = sub_25424DA88();
    v12 = sub_25424E408();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 432);
    v16 = *(v0 + 408);
    v15 = *(v0 + 416);
    if (v13)
    {
      v18 = *(v0 + 312);
      v17 = *(v0 + 320);
      v64 = *(v0 + 456);
      v65 = *v1;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v68 = v20;
      *v19 = 136315138;
      v69 = v65;
      v70 = v64;
      v21 = sub_2541D6C30(v18, v17);
      v23 = sub_2542203C4(v21, v22, &v68);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_254124000, v11, v12, "Fetching records for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v24 = v20;
      v1 = (v0 + 440);
      MEMORY[0x259C07330](v24, -1, -1);
      MEMORY[0x259C07330](v19, -1, -1);

      (*(v15 + 8))(v14, v16);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v43 = *(v0 + 456);
    v45 = *(v0 + 312);
    v44 = *(v0 + 320);
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_25424E688();

    *&v69 = 8827;
    *(&v69 + 1) = 0xE200000000000000;
    v46 = [v43 containerID];
    v47 = [v46 containerIdentifier];

    v48 = sub_25424DCB8();
    v50 = v49;

    MEMORY[0x259C05CA0](v48, v50);

    MEMORY[0x259C05CA0](578501154, 0xE400000000000000);
    [v45 scope];
    v51 = CKDatabaseScopeString();
    sub_25424DCB8();

    v52 = sub_25424DD18();
    v54 = v53;

    MEMORY[0x259C05CA0](v52, v54);

    MEMORY[0x259C05CA0](578501154, 0xE400000000000000);
    v55 = [v44 zoneID];
    v56 = [v55 zoneName];

    v57 = sub_25424DCB8();
    v59 = v58;

    MEMORY[0x259C05CA0](v57, v59);

    MEMORY[0x259C05CA0](8075810, 0xE300000000000000);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
    sub_25424E7F8();

    *(v1 + 80) = 1;
    *(v0 + 472) = 0;
    v60 = [*(v0 + 320) zoneID];
    *(v0 + 480) = v60;
    v61 = swift_task_alloc();
    *(v0 + 488) = v61;
    *v61 = v0;
    v61[1] = sub_2541D6298;

    return MEMORY[0x28210DF00](v60, 0, 0, 0, 1);
  }

  else
  {
    v25 = *(v0 + 424);
    sub_254132E5C(v0 + 144, &qword_27F5BAF28, &qword_25425CE88);
    sub_25421B67C(v25);
    v26 = v4;
    v27 = v5;

    v28 = v3;
    v29 = v2;
    v30 = sub_25424DA88();
    v31 = sub_25424E418();

    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 416);
    v33 = *(v0 + 424);
    v35 = *(v0 + 408);
    if (v32)
    {
      v37 = *(v0 + 312);
      v36 = *(v0 + 320);
      v66 = *(v0 + 456);
      v67 = *v1;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 136315138;
      v69 = v67;
      v70 = v66;
      v40 = sub_2541D6C30(v37, v36);
      v42 = sub_2542203C4(v40, v41, &v68);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_254124000, v30, v31, "Skipping %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x259C07330](v39, -1, -1);
      MEMORY[0x259C07330](v38, -1, -1);

      (*(v34 + 8))(v33, v35);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v62 = *(v0 + 8);

    return v62();
  }
}

uint64_t sub_2541D6298(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v5;
  v8 = *v5;
  *(v8 + 521) = a4;
  *(v8 + 496) = a1;
  *(v8 + 504) = v4;

  if (v4)
  {
    v9 = sub_2541D6B20;
  }

  else
  {
    *(v8 + 512) = a3;

    v9 = sub_2541D63F4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2541D63F4()
{
  v65 = *(v0 + 512);
  v1 = *(v0 + 496);

  v7 = 0;
  v8 = v1 + 64;
  v9 = -1;
  v67 = v1;
  v10 = -1 << *(v1 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v1 + 64);
  v12 = (63 - v10) >> 6;
  v13 = *(v0 + 520);
  v66 = v12;
  for (i = v1 + 64; ; v8 = i)
  {
    if (!v11)
    {
      if (v12 <= v7 + 1)
      {
        v26 = v7 + 1;
      }

      else
      {
        v26 = v12;
      }

      v27 = v26 - 1;
      while (1)
      {
        v25 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v25 >= v12)
        {
          v58 = *(v0 + 392);
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF30, &qword_25425CE90);
          (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
          v11 = 0;
          v7 = v27;
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * v25);
        ++v7;
        if (v11)
        {
          v24 = v13;
          v7 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x28210DF00](v2, v3, v4, v5, v6);
    }

    v24 = v13;
    v25 = v7;
LABEL_16:
    v28 = *(v0 + 384);
    v29 = *(v0 + 392);
    v30 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v31 = v30 | (v25 << 6);
    v32 = *(*(v67 + 48) + 8 * v31);
    sub_2541D8ACC(*(v67 + 56) + *(*(v0 + 360) + 72) * v31, v28);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF30, &qword_25425CE90);
    v34 = *(v33 + 48);
    *v29 = v32;
    sub_25417E6C8(v28, v29 + v34, &qword_27F5BAF18, &qword_25425CE78);
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
    v35 = v32;
    v13 = v24;
    v12 = v66;
LABEL_17:
    v36 = *(v0 + 400);
    sub_25417E6C8(*(v0 + 392), v36, &qword_27F5BAF20, &qword_25425CE80);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF30, &qword_25425CE90);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      break;
    }

    v38 = *(v0 + 400);
    v39 = *(v0 + 368);
    v40 = *(v0 + 376);
    v41 = *v38;
    sub_25417E6C8(v38 + *(v37 + 48), v40, &qword_27F5BAF18, &qword_25425CE78);
    v42 = 44;
    if (v13)
    {
      v42 = 0;
    }

    v43 = 0xE000000000000000;
    if ((v13 & 1) == 0)
    {
      v43 = 0xE100000000000000;
    }

    *(v0 + 272) = v42;
    *(v0 + 280) = v43;
    *(v0 + 288) = 34;
    *(v0 + 296) = 0xE100000000000000;
    v69 = v41;
    v44 = [v41 recordName];
    v45 = sub_25424DCB8();
    v47 = v46;

    MEMORY[0x259C05CA0](v45, v47);

    MEMORY[0x259C05CA0](14882, 0xE200000000000000);
    MEMORY[0x259C05CA0](*(v0 + 288), *(v0 + 296));

    sub_2541D8ACC(v40, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = *(v0 + 368);
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v49;
      sub_254148D7C(0, &qword_27F5BAF38, 0x277CCAAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF40, &qword_25425CE98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254254360;
      *(inited + 32) = 0x726F727265;
      *(inited + 40) = 0xE500000000000000;
      swift_getErrorValue();
      v16 = *(v0 + 248);
      v17 = *(v0 + 256);
      *(v0 + 240) = v17;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v16, v17);
      sub_2541D74D0((v0 + 216), inited + 48);
      __swift_destroy_boxed_opaque_existential_1((v0 + 216));
      v19 = sub_254224B24(inited);
      swift_setDeallocating();
      sub_254132E5C(inited + 32, &qword_27F5BAF48, &qword_25425CEA0);
      *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF50, &qword_25425CEA8);
      *(v0 + 184) = v19;
      v20 = sub_2541D7CD4((v0 + 184), 14);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1((v0 + 184));
      MEMORY[0x259C05CA0](v20, v22);
    }

    else
    {
      v51 = *(v0 + 336);
      v50 = *(v0 + 344);
      v52 = *(v0 + 328);
      v53 = (*(v51 + 32))(v50, v49, v52);
      v54 = MEMORY[0x259C06250](v53);
      v55 = sub_2541D6DBC(v54);
      v57 = v56;

      MEMORY[0x259C05CA0](v55, v57);

      (*(v51 + 8))(v50, v52);
    }

    v23 = *(v0 + 376);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
    sub_25424E7F8();

    v2 = sub_254132E5C(v23, &qword_27F5BAF18, &qword_25425CE78);
    v13 = 0;
  }

  v60 = *(v0 + 521);

  if (v60)
  {
    *(v0 + 520) = v13 & 1;
    *(v0 + 472) = v65;
    v61 = [*(v0 + 320) zoneID];
    *(v0 + 480) = v61;
    v62 = swift_task_alloc();
    *(v0 + 488) = v62;
    *v62 = v0;
    v62[1] = sub_2541D6298;
    v2 = v61;
    v3 = v65;
    v4 = 0;
    v5 = 0;
    v6 = 1;

    return MEMORY[0x28210DF00](v2, v3, v4, v5, v6);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
  sub_25424E7F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_2541D6B20()
{
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
  sub_25424E7F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541D6C30(void *a1, void *a2)
{
  v5 = [*(v2 + 16) containerID];
  v6 = [v5 containerIdentifier];

  v7 = sub_25424DCB8();
  v9 = v8;

  MEMORY[0x259C05CA0](v7, v9);

  MEMORY[0x259C05CA0](8236, 0xE200000000000000);
  [a1 scope];
  v10 = CKDatabaseScopeString();
  v11 = sub_25424DCB8();
  v13 = v12;

  MEMORY[0x259C05CA0](v11, v13);

  MEMORY[0x259C05CA0](8236, 0xE200000000000000);
  v14 = [a2 zoneID];
  v15 = [v14 zoneName];

  v16 = sub_25424DCB8();
  v18 = v17;

  MEMORY[0x259C05CA0](v16, v18);

  MEMORY[0x259C05CA0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_2541D6DBC(void *a1)
{
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25424E558();
  v8 = v7;
  v9 = [a1 creationDate];
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9;
  v69[3] = v2;
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_25424D888();

  sub_2541D74D0(v69, v70);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v11 = [a1 modificationDate];
  if (v11)
  {
    v12 = v11;
    v57 = v8;
    v58 = v6;
    v54 = v5;
    v55 = v3;
    v56 = v2;
    v68[3] = v2;
    __swift_allocate_boxed_opaque_existential_1(v68);
    sub_25424D888();

    sub_2541D74D0(v68, v69);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v13 = [a1 values];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    v14 = sub_25424DB78();

    ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF60, &qword_25425CEB0);
    *&v66 = v14;
    sub_2541D74D0(&v66, v68);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v15 = [objc_msgSend(a1 encryptedValues)];
    swift_unknownObjectRelease();
    v16 = sub_25424DF98();

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF68, &qword_25425CEB8);
    v17 = v16;
    v60 = *(v16 + 16);
    if (v60)
    {
      v18 = 0;
      v19 = (v16 + 40);
      v20 = MEMORY[0x277D84F98];
      v59 = v17;
      while (1)
      {
        if (v18 >= *(v17 + 16))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v22 = *(v19 - 1);
        v23 = *v19;

        v24 = a1;
        v25 = [a1 encryptedValues];
        v26 = sub_25424DCA8();
        v27 = [v25 objectForKeyedSubscript_];
        swift_unknownObjectRelease();

        if (!v27)
        {
          goto LABEL_27;
        }

        ObjectType = swift_getObjectType();
        *&v66 = v27;
        sub_25412DCA8(&v66, &v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v20;
        v30 = sub_25422095C(v22, v23);
        v31 = v20[2];
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_25;
        }

        v34 = v29;
        if (v20[3] >= v33)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v20 = v63;
            if (v29)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_2542230E0();
            v20 = v63;
            if (v34)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_254221B7C(v33, isUniquelyReferenced_nonNull_native);
          v35 = sub_25422095C(v22, v23);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_30;
          }

          v30 = v35;
          v20 = v63;
          if (v34)
          {
LABEL_5:
            v21 = (v20[7] + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1(v21);
            sub_25412DCA8(&v64, v21);

            goto LABEL_6;
          }
        }

        v20[(v30 >> 6) + 8] |= 1 << v30;
        v37 = (v20[6] + 16 * v30);
        *v37 = v22;
        v37[1] = v23;
        sub_25412DCA8(&v64, (v20[7] + 32 * v30));
        v38 = v20[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_26;
        }

        v20[2] = v40;
LABEL_6:
        ++v18;
        v19 += 2;
        v17 = v59;
        a1 = v24;
        if (v60 == v18)
        {
          goto LABEL_21;
        }
      }
    }

    v20 = MEMORY[0x277D84F98];
LABEL_21:

    *&v61 = v20;
    sub_2541D74D0(&v61, &v66);
    __swift_destroy_boxed_opaque_existential_1(&v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF40, &qword_25425CE98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25425CD20;
    *(inited + 32) = 0x795464726F636572;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &off_286639078;
    *(inited + 40) = 0xEA00000000006570;
    v42 = v57;
    *(inited + 48) = v58;
    *(inited + 56) = v42;
    *(inited + 88) = 0x64657461657263;
    *(inited + 96) = 0xE700000000000000;
    sub_254140708(v70, inited + 104);
    *(inited + 144) = 0x6465696669646F6DLL;
    *(inited + 152) = 0xE800000000000000;
    sub_254140708(v69, inited + 160);
    *(inited + 200) = 0x7365756C6176;
    *(inited + 208) = 0xE600000000000000;
    sub_254140708(v68, inited + 216);
    *(inited + 256) = 0x6574707972636E65;
    *(inited + 264) = 0xE900000000000064;
    sub_254140708(&v66, inited + 272);
    v43 = sub_254224B24(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF48, &qword_25425CEA0);
    swift_arrayDestroy();
    v44 = [a1 expirationDate];
    if (v44)
    {
      v45 = v54;
      v46 = v44;
      sub_25424D888();

      v47 = v56;
      v65 = v56;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v49 = v55;
      (*(v55 + 16))(boxed_opaque_existential_1, v45, v47);
      sub_2541D74D0(&v64, &v61);
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v64 = v43;
      sub_2541AE66C(&v61, 0x73657269707865, 0xE700000000000000, v50);
      (*(v49 + 8))(v45, v47);
      v43 = v64;
    }

    sub_254148D7C(0, &qword_27F5BAF38, 0x277CCAAA0);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF50, &qword_25425CEA8);
    *&v61 = v43;
    v51 = sub_2541D7CD4(&v61, 14);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(&v61);
    return v51;
  }

  else
  {
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_25424EB38();
    __break(1u);
  }

  return result;
}

uint64_t sub_2541D74D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74[4] = *MEMORY[0x277D85DE8];
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  sub_25414076C(a1, v74);
  v11 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    v12 = v71[0];
    *(a2 + 24) = v11;
    *(a2 + 32) = &off_286639078;
    *a2 = v12;
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v13 = MEMORY[0x277D83B88];
  if (swift_dynamicCast())
  {
    v14 = *&v71[0];
    v15 = &off_286639080;
LABEL_7:
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *a2 = v14;
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v13 = MEMORY[0x277D83E88];
  if (swift_dynamicCast())
  {
    v14 = *&v71[0];
    v15 = &off_286639088;
    goto LABEL_7;
  }

  v17 = MEMORY[0x277D83A90];
  if (swift_dynamicCast())
  {
    v18 = v71[0];
    *(a2 + 24) = v17;
    *(a2 + 32) = &off_286639090;
    *a2 = v18;
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v19 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    v20 = *&v71[0];
    *(a2 + 24) = v19;
    *(a2 + 32) = &off_286639098;
    *a2 = v20;
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  if (swift_dynamicCast())
  {
    v22 = v72;
    v21 = v73;
    v23 = v73 >> 62;
    if ((v73 >> 62) > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_38;
      }

      v27 = *(v72 + 16);
      v28 = *(v72 + 24);
    }

    else
    {
      if (!v23)
      {
        if ((v73 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      v27 = v72;
      v28 = v72 >> 32;
    }

    if (v27 != v28)
    {
LABEL_39:
      v44 = objc_opt_self();
      v45 = sub_25424D4F8();
      v67[0] = 0;
      v46 = [v44 JSONObjectWithData:v45 options:0 error:v67];

      v47 = v67[0];
      if (v46)
      {
        sub_25424E5D8();
        swift_unknownObjectRelease();
        sub_25412DCA8(&v68, v71);
        sub_2541D74D0(v71, a2);
        sub_254134D04(v22, v21);
        __swift_destroy_boxed_opaque_existential_1(v71);
      }

      else
      {
        v55 = v47;
        v56 = sub_25424D3A8();

        swift_willThrow();
        v57 = sub_25424D508();
        v59 = v58;
        *(a2 + 24) = v11;
        *(a2 + 32) = &off_286639078;
        sub_254134D04(v22, v21);
        *a2 = v57;
        *(a2 + 8) = v59;
      }

      return __swift_destroy_boxed_opaque_existential_1(v74);
    }

LABEL_38:
    *(a2 + 24) = v11;
    *(a2 + 32) = &off_286639078;
    sub_254134D04(v22, v21);
    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  if (swift_dynamicCast())
  {
    (*(v5 + 32))(v8, v10, v4);
    if (qword_27F5B8460 == -1)
    {
LABEL_20:
      v24 = sub_25424D808();
      __swift_project_value_buffer(v24, qword_27F5BAEE0);
      v25 = sub_25424D7F8();
      *(a2 + 24) = v11;
      *(a2 + 32) = &off_286639078;
      *a2 = v25;
      *(a2 + 8) = v26;
      (*(v5 + 8))(v8, v4);
      return __swift_destroy_boxed_opaque_existential_1(v74);
    }

LABEL_48:
    swift_once();
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF68, &qword_25425CEB8);
  if (swift_dynamicCast())
  {
    v4 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
    v29 = sub_25424E878();
    v30 = v29;
    v31 = 0;
    v8 = (v4 + 64);
    v32 = 1 << *(v4 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v4 + 64);
    v5 = (v32 + 63) >> 6;
    v65 = v29 + 64;
    v66 = v4;
    if (v34)
    {
      while (1)
      {
        v35 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
LABEL_33:
        v38 = v35 | (v31 << 6);
        v39 = (*(v66 + 48) + 16 * v38);
        v4 = *v39;
        v11 = v39[1];
        sub_25414076C(*(v66 + 56) + 32 * v38, &v68);

        sub_2541D74D0(&v68, v71);
        __swift_destroy_boxed_opaque_existential_1(&v68);
        *(v65 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        v40 = (v30[6] + 16 * v38);
        *v40 = v4;
        v40[1] = v11;
        sub_25412DC4C(v71, v30[7] + 40 * v38);
        v41 = v30[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          break;
        }

        v30[2] = v43;
        if (!v34)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_28:
      v36 = v31;
      while (1)
      {
        v31 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v31 >= v5)
        {

          *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF50, &qword_25425CEA8);
          *(a2 + 32) = &off_2866390A8;
          *a2 = v30;
          return __swift_destroy_boxed_opaque_existential_1(v74);
        }

        v37 = *&v8[8 * v31];
        ++v36;
        if (v37)
        {
          v35 = __clz(__rbit64(v37));
          v34 = (v37 - 1) & v37;
          goto LABEL_33;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF70, &qword_25425CEC0);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(v71, &v68);
    v48 = v69;
    v49 = v70;
    v50 = __swift_project_boxed_opaque_existential_1(&v68, v69);
    MEMORY[0x28223BE20](v50);
    *(&v65 - 4) = v48;
    *(&v65 - 3) = v49;
    *(&v65 - 2) = sub_2541D7F48;
    *(&v65 - 1) = 0;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF78, &qword_25425CEC8);
    sub_2541D8018(sub_2541D8B94, (&v65 - 6), v48, v51, MEMORY[0x277D84A98], v49, MEMORY[0x277D84AC0], v52);
    v54 = v53;
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF80, &qword_25425CED0);
    *(a2 + 32) = &off_2866390A0;
    *a2 = v54;
    __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  else
  {
    v60 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x28223BE20](v60);
    (*(v62 + 16))(&v65 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    v63 = sub_25424DD08();
    *(a2 + 24) = v11;
    *(a2 + 32) = &off_286639078;
    *a2 = v63;
    *(a2 + 8) = v64;
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_2541D7CD4(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_25424DCF8();
  MEMORY[0x28223BE20](v4 - 8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = 0;
  v6 = [ObjCClassFromMetadata dataWithJSONObject:sub_25424EAA8() options:a2 error:&v17];
  swift_unknownObjectRelease();
  v7 = v17;
  if (v6)
  {
    v8 = sub_25424D518();
    v10 = v9;

    sub_25424DCE8();
    v11 = sub_25424DCD8();
    if (v12)
    {
      v13 = v11;
      sub_254134D04(v8, v10);
      return v13;
    }

    v17 = 0;
    v18 = 0xE000000000000000;
    sub_25424E688();

    v17 = 0xD000000000000025;
    v18 = 0x80000002542512D0;
    v16 = sub_25424D448();
    MEMORY[0x259C05CA0](v16);
  }

  else
  {
    v15 = v7;
    sub_25424D3A8();

    swift_willThrow();
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000021, 0x80000002542512A0);
    swift_getErrorValue();
    sub_25424EA98();
  }

  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t sub_2541D7F4C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_2541D8018(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v9 = v8;
  v59 = a2;
  v60 = a4;
  v58 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v41 - v15;
  v45 = a5;
  v43 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v41 - v18;
  v19 = sub_25424E598();
  v46 = *(v19 - 8);
  v47 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v49 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v48 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v54 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a6;
  v61 = swift_getAssociatedTypeWitness();
  v50 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v31 = &v41 - v30;
  v32 = sub_25424DEA8();
  v62 = sub_25424E778();
  v57 = sub_25424E788();
  sub_25424E738();
  (*(v54 + 2))(v29, v51, a3);
  v60 = v31;
  v54 = a3;
  sub_25424DE98();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v32)
  {
    v33 = (v53 + 48);
    v34 = (v53 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25424E5C8();
      if ((*v33)(v24, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_17;
      }

      v58(v24, v56);
      if (v9)
      {
        (*(v50 + 8))(v60, v61);

        (*(v43 + 32))(v44, v56, v45);
        (*v34)(v24, AssociatedTypeWitness);
        return;
      }

      v9 = 0;
      (*v34)(v24, AssociatedTypeWitness);
      sub_25424E768();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = v49;
  sub_25424E5C8();
  v36 = v35;
  v37 = v53;
  v38 = *(v53 + 48);
  v56 = (v53 + 48);
  v54 = v38;
  if (v38(v35, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v50 + 8))(v60, v61);
    (*(v46 + 8))(v36, v47);
  }

  else
  {
    v53 = *(v37 + 32);
    v39 = (v37 + 8);
    v40 = v42;
    while (1)
    {
      (v53)(v40, v36, AssociatedTypeWitness);
      v58(v40, v55);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v39)(v40, AssociatedTypeWitness);
      sub_25424E768();
      sub_25424E5C8();
      if (v54(v36, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v39)(v40, AssociatedTypeWitness);
    (*(v50 + 8))(v60, v61);

    (*(v43 + 32))(v44, v55, v45);
  }
}

unint64_t sub_2541D870C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25424DE88();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2541B0BE0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2541B0BE0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25424DE58();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25424DDA8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25424DDA8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25424DE88();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2541B0BE0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25424DE88();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2541B0BE0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2541B0BE0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25424DDA8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541D8ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF18, &qword_25425CE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541D8B3C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25424EAB8() & 1;
  }
}

uint64_t sub_2541D8BB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25424EAB8() & 1;
  }
}

uint64_t sub_2541D8C30()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25412F910;

  return (sub_25412FDA0)();
}

void sub_2541D8D04(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_2541D8FDC;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541ED26C;
  v6[3] = &block_descriptor_10;
  v5 = _Block_copy(v6);

  [a1 exitWithExitStatus:a3 reply:v5];
  _Block_release(v5);
}

uint64_t sub_2541D8DE4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2541D8FFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D17DC8]) init];
  v1 = objc_allocWithZone(MEMORY[0x277D17D98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAFC0, &unk_25425CF40);
  v2 = sub_25424DF88();
  v3 = [v1 initWithDelegate:0 filters:v2];

  type metadata accessor for MetricsManager();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v3;
  result = [v0 addObserver:v3 forProtocol:&unk_286640B30];
  off_27F5BAFB0 = v4;
  return result;
}

uint64_t static MetricsManager.sharedInstance.getter()
{
  if (qword_27F5B8468 != -1)
  {
    swift_once();
  }
}

void MetricsManager.submitLogEvent(_:error:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v2 + 16);
    if (a2)
    {
      v7 = sub_25424D398();
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v6 submitLogEvent:v5 error:?];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000013, 0x8000000254251330);
    swift_getObjectType();
    sub_25424EA98();
    sub_25424E858();
    __break(1u);
  }
}

uint64_t MetricsManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t MetricsManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SimpleAsyncCache.__allocating_init()()
{
  v0 = swift_allocObject();
  SimpleAsyncCache.init()();
  return v0;
}

void *SimpleAsyncCache.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_25424DB48();
  return v0;
}

uint64_t SimpleAsyncCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SimpleAsyncCache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t SimpleAsyncCache.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_2541D948C, v2, 0);
}

uint64_t sub_2541D948C()
{
  swift_beginAccess();

  sub_25424DBF8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SimpleAsyncCache.get(_:)(uint64_t a1)
{
  swift_beginAccess();

  return sub_25424DBC8();
}

uint64_t sub_2541D9624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v16 - v12;
  (*(*(a4 - 8) + 16))(&v16 - v12, a1, a4);
  (*(*(a5 - 8) + 16))(&v13[*(TupleTypeMetadata2 + 48)], a2, a5);
  v14 = sub_25424E2E8();
  (*(v11 + 8))(v13, TupleTypeMetadata2);
  return v14 & 1;
}

uint64_t SimpleAsyncCache.set(_:key:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_25424E598();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = *(v5 + 80);
  MEMORY[0x28223BE20](v8);
  (*(v13 + 16))(&v16 - v12, a2, v11);
  v14 = *(v6 - 8);
  (*(v14 + 16))(v10, a1, v6);
  (*(v14 + 56))(v10, 0, 1, v6);
  swift_beginAccess();
  sub_25424DBE8();
  sub_25424DC08();
  return swift_endAccess();
}

uint64_t SimpleAsyncCache.clear(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = sub_25424E598();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = *(v3 + 80);
  MEMORY[0x28223BE20](v6);
  (*(v11 + 16))(&v13 - v10, a1, v9);
  (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
  swift_beginAccess();
  sub_25424DBE8();
  sub_25424DC08();
  return swift_endAccess();
}

uint64_t sub_2541D9B74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return SimpleAsyncCache.subscript.getter(a1, a2);
}

uint64_t sub_2541D9C20(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2541D9C40, v3, 0);
}

uint64_t sub_2541D9C40()
{
  v1 = SimpleAsyncCache.get(_:)(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2541D9CA0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2541D9CC4, v4, 0);
}

uint64_t sub_2541D9CC4()
{
  SimpleAsyncCache.set(_:key:)(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2541D9D28(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2541D9D48, v3, 0);
}

uint64_t sub_2541D9D48()
{
  SimpleAsyncCache.clear(_:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static HMVCommands.registerForTaskWithIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541D9E80, 0, 0);
}

uint64_t sub_2541D9E80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2541B244C;

  return sub_25412FDA0(sub_25412FDA0, sub_2541DA040, v3);
}

void sub_2541D9F58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25424DCA8();
  v8[4] = sub_2541DA240;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2541ED26C;
  v8[3] = &block_descriptor_11;
  v7 = _Block_copy(v8);

  [a1 hmvutilRegisterForTaskWithIdentifierWithIdentifier:v6 reply:v7];
  _Block_release(v7);
}

uint64_t sub_2541DA048(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

HomeKitEvents::EventCategory_optional __swiftcall EventCategory.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 3)
  {
    switch(rawValue)
    {
      case 1:
        *v1 = 0;
        return rawValue;
      case 2:
        *v1 = 1;
        return rawValue;
      case 3:
        *v1 = 2;
        return rawValue;
    }

LABEL_14:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 6)
  {
    if (rawValue == 7)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 255)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_14;
  }

  if (rawValue == 4)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 5)
  {
    goto LABEL_14;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_2541DA454()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_25425D180[v1]);
  return sub_25424EC28();
}

uint64_t sub_2541DA4DC(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_25425D180[v2]);
  return sub_25424EC28();
}

BOOL sub_2541DA534(char a1, uint64_t a2)
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

  while (qword_25425D180[v6] != qword_25425D180[a1]);
  return v4 != 0;
}

unint64_t sub_2541DA578()
{
  result = qword_27F5BB048;
  if (!qword_27F5BB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB048);
  }

  return result;
}

unint64_t sub_2541DA5D0()
{
  result = qword_27F5BB050;
  if (!qword_27F5BB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB058, &qword_25425D108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB050);
  }

  return result;
}

unint64_t sub_2541DA654()
{
  result = qword_27F5BB060;
  if (!qword_27F5BB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB060);
  }

  return result;
}

uint64_t XPCConnectionError.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

unint64_t sub_2541DA738()
{
  result = qword_27F5BB068;
  if (!qword_27F5BB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB068);
  }

  return result;
}

uint64_t SomeEvent.anyEvent.getter@<X0>(uint64_t *a2@<X8>)
{
  sub_2541DA834(v8);
  v3 = v9;
  v4 = v10;
  v5 = __swift_project_boxed_opaque_existential_1(v8, v9);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_2541DA834@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SomeEvent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541DD76C(v2, v15, type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a1[3] = type metadata accessor for HomeActivityStateEvent(0);
      a1[4] = sub_2541DD83C(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_2541DD7D4(v15, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
    }

    sub_2541DD7D4(v15, v9, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    sub_2541DD76C(v9, v7, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25)
    {
      if (v25 == 1)
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
        v26 = sub_2541DD83C(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
        v27 = type metadata accessor for EnergyKit.LoadSessionEvent;
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
        v26 = sub_2541DD83C(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
        v27 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      }
    }

    else
    {
      SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
      v26 = sub_2541DD83C(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
      v27 = type metadata accessor for EnergyKit.LoadEvent;
    }

    v28 = v27;
    v36 = v26;
    v29 = __swift_allocate_boxed_opaque_existential_1(&v34);
    sub_2541DD7D4(v7, v29, v28);
    sub_25412DC4C(&v34, v37);
    v30 = v38;
    v31 = v39;
    v32 = __swift_project_boxed_opaque_existential_1(v37, v38);
    a1[3] = v30;
    a1[4] = *(v31 + 16);
    v33 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v30 - 8) + 16))(v33, v32, v30);
    v23 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
    v24 = v9;
  }

  else
  {
    sub_2541DD7D4(v15, v12, type metadata accessor for SomeAccessoryEvent);
    sub_254239494(v37);
    v19 = v38;
    v20 = v39;
    v21 = __swift_project_boxed_opaque_existential_1(v37, v38);
    a1[3] = v19;
    a1[4] = *(v20 + 16);
    v22 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v19 - 8) + 16))(v22, v21, v19);
    v23 = type metadata accessor for SomeAccessoryEvent;
    v24 = v12;
  }

  sub_2541DD70C(v24, v23);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2541DACB8(uint64_t a1)
{
  v2 = sub_2541DCFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DACF4(uint64_t a1)
{
  v2 = sub_2541DCFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2541DAD30()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x694B796772656E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F737365636361;
  }
}

uint64_t sub_2541DAD94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2541DD574(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2541DADBC(uint64_t a1)
{
  v2 = sub_2541DCEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DADF8(uint64_t a1)
{
  v2 = sub_2541DCEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541DAE34(uint64_t a1)
{
  v2 = sub_2541DCF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DAE70(uint64_t a1)
{
  v2 = sub_2541DCF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541DAEAC(uint64_t a1)
{
  v2 = sub_2541DCF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DAEE8(uint64_t a1)
{
  v2 = sub_2541DCF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SomeEvent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB070, &qword_25425D290);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v31 - v3;
  v39 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB078, &qword_25425D298);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v31 - v6;
  v34 = type metadata accessor for HomeActivityStateEvent(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB080, &qword_25425D2A0);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v31 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v31);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SomeEvent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB088, &qword_25425D2A8);
  v16 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v18 = &v31 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541DCEF4();
  sub_25424EC78();
  sub_2541DD76C(v44, v15, type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      sub_2541DD7D4(v15, v35, type metadata accessor for HomeActivityStateEvent);
      v47 = 1;
      sub_2541DCF9C();
      v22 = v36;
      v23 = v45;
      sub_25424E9A8();
      sub_2541DD83C(&qword_27F5B9C80, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
      v24 = v38;
      sub_25424EA18();
      (*(v37 + 8))(v22, v24);
      v25 = type metadata accessor for HomeActivityStateEvent;
    }

    else
    {
      v21 = v40;
      sub_2541DD7D4(v15, v40, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v48 = 2;
      sub_2541DCF48();
      v29 = v41;
      v23 = v45;
      sub_25424E9A8();
      sub_2541DD83C(&qword_27F5BB0A0, type metadata accessor for EnergyKit.SomeEnergyKitEvent, &protocol conformance descriptor for EnergyKit.SomeEnergyKitEvent);
      v30 = v43;
      sub_25424EA18();
      (*(v42 + 8))(v29, v30);
      v25 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
    }

    sub_2541DD70C(v21, v25);
    return (*v20)(v18, v23);
  }

  else
  {
    sub_2541DD7D4(v15, v12, type metadata accessor for SomeAccessoryEvent);
    v46 = 0;
    sub_2541DCFF0();
    v26 = v45;
    sub_25424E9A8();
    sub_2541DD83C(&qword_27F5BB0B8, type metadata accessor for SomeAccessoryEvent, &protocol conformance descriptor for SomeAccessoryEvent);
    v27 = v33;
    sub_25424EA18();
    (*(v32 + 8))(v10, v27);
    sub_2541DD70C(v12, type metadata accessor for SomeAccessoryEvent);
    return (*v20)(v18, v26);
  }
}

uint64_t SomeEvent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25424D948();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = v38 - v8;
  v9 = sub_25424D8B8();
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v38 - v12;
  v14 = type metadata accessor for HomeActivityStateEvent(0);
  MEMORY[0x28223BE20](v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SomeEvent(0);
  MEMORY[0x28223BE20](v20);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541DD76C(v1, v22, type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2541DD7D4(v22, v16, type metadata accessor for HomeActivityStateEvent);
      MEMORY[0x259C06AA0](1);
      v38[0] = sub_2541DD83C(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_25424DC28();
      v24 = type metadata accessor for EventBase(0);
      v25 = sub_2541DD83C(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = v44;
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_25425D868[v16[*(v24 + 24)]]);
      v27 = &v16[*(v14 + 20)];
      MEMORY[0x259C06AA0](*v27);
      if (v27[1] != 2)
      {
        sub_25424EBF8();
      }

      v30 = v41;
      sub_25424EBF8();
      v31 = type metadata accessor for HomeActivityStateEvent.State(0);
      sub_254132DF4(&v27[*(v31 + 24)], v13, &unk_27F5BA1B0, qword_2542544A0);
      v32 = v43;
      v33 = (*(v43 + 48))(v13, 1, v9);
      v38[1] = v25;
      if (v33 == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v34 = v39;
        (*(v32 + 32))(v39, v13, v9);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v32 + 8))(v34, v9);
      }

      v35 = v42;
      sub_254132DF4(&v16[*(v14 + 24)], v30, &unk_27F5B8E50, &qword_254254390);
      if ((*(v35 + 48))(v30, 1, v26) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v36 = v40;
        (*(v35 + 32))(v40, v30, v26);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v35 + 8))(v36, v26);
      }

      v28 = type metadata accessor for HomeActivityStateEvent;
      v29 = v16;
    }

    else
    {
      sub_2541DD7D4(v22, v5, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      MEMORY[0x259C06AA0](2);
      EnergyKit.SomeEnergyKitEvent.hash(into:)(a1);
      v28 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v29 = v5;
    }
  }

  else
  {
    sub_2541DD7D4(v22, v19, type metadata accessor for SomeAccessoryEvent);
    MEMORY[0x259C06AA0](0);
    SomeAccessoryEvent.hash(into:)(a1);
    v28 = type metadata accessor for SomeAccessoryEvent;
    v29 = v19;
  }

  return sub_2541DD70C(v29, v28);
}

uint64_t SomeEvent.hashValue.getter()
{
  sub_25424EBD8();
  SomeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t SomeEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0C0, &qword_25425D2B0);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3);
  v67 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0C8, &qword_25425D2B8);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x28223BE20](v6);
  v66 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0D0, &qword_25425D2C0);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0D8, &qword_25425D2C8);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for SomeEvent(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  v26 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2541DCEF4();
  v27 = v71;
  sub_25424EC68();
  if (!v27)
  {
    v55 = v20;
    v56 = v23;
    v57 = v17;
    v29 = v65;
    v28 = v66;
    v71 = 0;
    v58 = v14;
    v31 = v67;
    v30 = v68;
    v32 = v70;
    v33 = sub_25424E988();
    v34 = (2 * *(v33 + 16)) | 1;
    v73 = v33;
    v74 = v33 + 32;
    v75 = 0;
    v76 = v34;
    v35 = sub_254140884();
    if (v35 == 3 || v75 != v76 >> 1)
    {
      v39 = sub_25424E6F8();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v41 = v58;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v77 = 1;
          sub_2541DCF9C();
          v36 = v71;
          sub_25424E8F8();
          v37 = v30;
          v38 = v69;
          if (v36)
          {
            goto LABEL_9;
          }

          v71 = v25;
          type metadata accessor for HomeActivityStateEvent(0);
          sub_2541DD83C(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
          v51 = v55;
          v52 = v61;
          sub_25424E978();
          (*(v62 + 8))(v28, v52);
          (*(v38 + 8))(v13, v70);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v51;
        }

        else
        {
          v77 = 2;
          sub_2541DCF48();
          v46 = v31;
          v47 = v71;
          sub_25424E8F8();
          v48 = v69;
          if (v47)
          {
            goto LABEL_9;
          }

          v37 = v30;
          v71 = v25;
          type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
          sub_2541DD83C(&qword_27F5BB0E0, type metadata accessor for EnergyKit.SomeEnergyKitEvent, &protocol conformance descriptor for EnergyKit.SomeEnergyKitEvent);
          v49 = v57;
          v50 = v63;
          sub_25424E978();
          (*(v64 + 8))(v46, v50);
          (*(v48 + 8))(v13, v32);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v49;
        }

LABEL_17:
        v53 = v71;
        sub_2541DD7D4(v44, v71, type metadata accessor for SomeEvent);
        sub_2541DD7D4(v53, v37, type metadata accessor for SomeEvent);
        return __swift_destroy_boxed_opaque_existential_1(v72);
      }

      v77 = 0;
      sub_2541DCFF0();
      v43 = v71;
      sub_25424E8F8();
      if (!v43)
      {
        v71 = v25;
        type metadata accessor for SomeAccessoryEvent(0);
        sub_2541DD83C(&qword_27F5BB0E8, type metadata accessor for SomeAccessoryEvent, &protocol conformance descriptor for SomeAccessoryEvent);
        v44 = v56;
        v45 = v60;
        sub_25424E978();
        (*(v59 + 8))(v29, v45);
        (*(v69 + 8))(v13, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v37 = v30;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v69 + 8))(v13, v32);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_2541DC5A8()
{
  sub_25424EBD8();
  SomeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541DC5EC(uint64_t a1)
{
  sub_25424EBD8();
  SomeEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t SomeEvent.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomeActivityStateEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SomeEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F0, &unk_254254580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F8, &unk_25425D2D0);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(v14, v13);
    sub_254140708(v13, v12);
    SomeAccessoryEvent.init(_:)(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v15);
    sub_2541DD7D4(v9, a2, type metadata accessor for SomeEvent);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (swift_dynamicCast())
  {
    sub_2541DD7D4(v6, v9, type metadata accessor for HomeActivityStateEvent);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA368, &qword_254258CF8);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(v14, v13);
    sub_254140708(v13, v12);
    EnergyKit.SomeEnergyKitEvent.init(_:)(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_7;
  }

  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000019, 0x8000000254250CF0);
  v13[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0F0, &qword_25425D2E0);
  v11 = sub_25424DD08();
  MEMORY[0x259C05CA0](v11);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EA98();
  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t SomeEvent.isLegacySecurityEvent.getter()
{
  sub_2541DA834(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 32))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & 1;
}

uint64_t SomeEvent.tags.getter()
{
  sub_2541DA834(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 48))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HomeActivityStateEvent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SomeEvent(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB170, &unk_25425D858);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_2541DD76C(a1, &v33 - v22, type metadata accessor for SomeEvent);
  sub_2541DD76C(v34, &v23[v24], type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2541DD76C(v23, v17, type metadata accessor for SomeEvent);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2541DD7D4(&v23[v24], v7, type metadata accessor for HomeActivityStateEvent);
        v26 = static HomeActivityStateEvent.== infix(_:_:)();
        v27 = type metadata accessor for HomeActivityStateEvent;
        sub_2541DD70C(v7, type metadata accessor for HomeActivityStateEvent);
        v28 = v17;
LABEL_13:
        sub_2541DD70C(v28, v27);
        sub_2541DD70C(v23, type metadata accessor for SomeEvent);
        return v26 & 1;
      }

      v29 = type metadata accessor for HomeActivityStateEvent;
      v30 = v17;
    }

    else
    {
      sub_2541DD76C(v23, v14, type metadata accessor for SomeEvent);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_2541DD7D4(&v23[v24], v33, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v26 = _s13HomeKitEvents06EnergyB0O04SomedB5EventO2eeoiySbAE_AEtFZ_0(v14, v31);
        v27 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        sub_2541DD70C(v31, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v28 = v14;
        goto LABEL_13;
      }

      v29 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v30 = v14;
    }
  }

  else
  {
    sub_2541DD76C(v23, v19, type metadata accessor for SomeEvent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2541DD7D4(&v23[v24], v10, type metadata accessor for SomeAccessoryEvent);
      v26 = _s13HomeKitEvents18SomeAccessoryEventO2eeoiySbAC_ACtFZ_0(v19, v10);
      v27 = type metadata accessor for SomeAccessoryEvent;
      sub_2541DD70C(v10, type metadata accessor for SomeAccessoryEvent);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for SomeAccessoryEvent;
    v30 = v19;
  }

  sub_2541DD70C(v30, v29);
  sub_2541DD6A4(v23);
  v26 = 0;
  return v26 & 1;
}

uint64_t type metadata accessor for SomeEvent(uint64_t a1)
{
  result = qword_27F5BB100;
  if (!qword_27F5BB100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2541DCEF4()
{
  result = qword_27F5BB090;
  if (!qword_27F5BB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB090);
  }

  return result;
}

unint64_t sub_2541DCF48()
{
  result = qword_27F5BB098;
  if (!qword_27F5BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB098);
  }

  return result;
}

unint64_t sub_2541DCF9C()
{
  result = qword_27F5BB0A8;
  if (!qword_27F5BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB0A8);
  }

  return result;
}

unint64_t sub_2541DCFF0()
{
  result = qword_27F5BB0B0;
  if (!qword_27F5BB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB0B0);
  }

  return result;
}

uint64_t sub_2541DD08C(uint64_t a1)
{
  result = type metadata accessor for SomeAccessoryEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HomeActivityStateEvent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for EnergyKit.SomeEnergyKitEvent(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2541DD158()
{
  result = qword_27F5BB110;
  if (!qword_27F5BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB110);
  }

  return result;
}

unint64_t sub_2541DD1B0()
{
  result = qword_27F5BB118;
  if (!qword_27F5BB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB118);
  }

  return result;
}

unint64_t sub_2541DD208()
{
  result = qword_27F5BB120;
  if (!qword_27F5BB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB120);
  }

  return result;
}

unint64_t sub_2541DD260()
{
  result = qword_27F5BB128;
  if (!qword_27F5BB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB128);
  }

  return result;
}

unint64_t sub_2541DD2B8()
{
  result = qword_27F5BB130;
  if (!qword_27F5BB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB130);
  }

  return result;
}

unint64_t sub_2541DD310()
{
  result = qword_27F5BB138;
  if (!qword_27F5BB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB138);
  }

  return result;
}

unint64_t sub_2541DD368()
{
  result = qword_27F5BB140;
  if (!qword_27F5BB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB140);
  }

  return result;
}

unint64_t sub_2541DD3C0()
{
  result = qword_27F5BB148;
  if (!qword_27F5BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB148);
  }

  return result;
}

unint64_t sub_2541DD418()
{
  result = qword_27F5BB150;
  if (!qword_27F5BB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB150);
  }

  return result;
}

unint64_t sub_2541DD470()
{
  result = qword_27F5BB158;
  if (!qword_27F5BB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB158);
  }

  return result;
}

unint64_t sub_2541DD4C8()
{
  result = qword_27F5BB160;
  if (!qword_27F5BB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB160);
  }

  return result;
}

unint64_t sub_2541DD520()
{
  result = qword_27F5BB168;
  if (!qword_27F5BB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB168);
  }

  return result;
}

uint64_t sub_2541DD574(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002542513A0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694B796772656E65 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v5 = sub_25424EAB8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2541DD6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB170, &unk_25425D858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541DD70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541DD76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541DD7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541DD83C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2541DD888(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9280, &qword_2542545D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for LubyRackoffEncryptionKey(0);
  v10 = MEMORY[0x28223BE20](v9);
  v26 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v25 = &v22 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = a3 + 32;
  v22 = v12;
  v16 = (v12 + 48);
  v17 = MEMORY[0x277D84F90];
  v23 = v9;
  v24 = a1;
  while (1)
  {
    a1(v15);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_254132E5C(v8, &unk_27F5B9280, &qword_2542545D8);
    }

    else
    {
      v18 = v25;
      sub_2541DF3BC(v8, v25);
      sub_2541DF3BC(v18, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2541B0D14(0, v17[2] + 1, 1, v17);
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_2541B0D14((v19 > 1), v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      sub_2541DF3BC(v26, v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20);
      v9 = v23;
      a1 = v24;
    }

    v15 += 40;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

void *sub_2541DDB14(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9268, &qword_2542545B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  v28 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v31 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  if (a4 < a3)
  {
    goto LABEL_25;
  }

  v32 = a4;
  a1(&v32);
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_4:
  }

  else
  {
    v29 = *(v28 + 48);
    v30 = v28 + 48;
    v19 = v29(v12, 1, v13);
    v27 = v13;
    if (v19 != 1)
    {
      sub_2541DF34C(v12, v17);
      sub_2541DF34C(v17, v31);
      v6 = MEMORY[0x277D84F90];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

    sub_254132E5C(v12, &qword_27F5B9268, &qword_2542545B8);
    v6 = MEMORY[0x277D84F90];
    while (a4 != a3)
    {
      v26 = a1;
      while (a4 > a3)
      {
        v32 = --a4;
        a1(&v32);
        if (v5)
        {
          goto LABEL_4;
        }

        if (v29(v12, 1, v13) == 1)
        {
          sub_254132E5C(v12, &qword_27F5B9268, &qword_2542545B8);
          if (a3 == a4)
          {
            return v6;
          }
        }

        else
        {
          sub_2541DF34C(v12, v17);
          sub_2541DF34C(v17, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2541B0F18(0, v6[2] + 1, 1, v6);
          }

          v24 = v6[2];
          v23 = v6[3];
          if (v24 >= v23 >> 1)
          {
            v6 = sub_2541B0F18((v23 > 1), v24 + 1, 1, v6);
          }

          v6[2] = v24 + 1;
          sub_2541DF34C(v31, v6 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24);
          a1 = v26;
          v13 = v27;
          if (a3 == a4)
          {
            return v6;
          }
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v6 = sub_2541B0F18(0, v6[2] + 1, 1, v6);
LABEL_9:
      v21 = v6[2];
      v20 = v6[3];
      v22 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        v26 = (v21 + 1);
        v25 = sub_2541B0F18((v20 > 1), v21 + 1, 1, v6);
        v22 = v26;
        v6 = v25;
      }

      v6[2] = v22;
      sub_2541DF34C(v31, v6 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21);
      v13 = v27;
    }
  }

  return v6;
}

uint64_t sub_2541DDF14(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return a2(v4, v2, v3);
}

uint64_t sub_2541DDF98(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t))
{
  sub_2541DA834(v10);
  v3 = v11;
  v4 = v12;
  v5 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v13[3] = v3;
  v6 = *(v4 + 8);
  v13[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v8 = a2(boxed_opaque_existential_1, v3, v6);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

uint64_t sub_2541DE084@<X0>(unint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t *a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a6;
  v32 = a5;
  LODWORD(v27) = a4;
  v30 = a8;
  v11 = sub_25424D8B8();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  v13 = sub_25424D218();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *a1 / 6 - 255 * (((*a1 / 6 * 0x4040404040404041uLL) >> 64) >> 6);
  v31 = a2;
  if (v18 == a3)
  {
    v27 = result;
    result = sub_25424D1F8();
LABEL_12:
    v22 = *v32;
    if (*v32 == v29)
    {
      sub_25424D1D8();
LABEL_17:
      sub_25424D1E8();
      v23 = _s13HomeKitEvents9EventTagsO8CategoryO4tags3for12dateIntervalSay10Foundation4DataVGShyAA0dF0OG_AI04DateJ0VtFZ_0(v28);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
      v25 = *(v24 + 48);
      v26 = v30;
      (*(v14 + 32))(v30, v17, v27);
      *(v26 + v25) = v23;
      result = (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
      *v32 = v18;
      goto LABEL_18;
    }

    if (is_mul_ok(v22, 0x3CuLL))
    {
      if (is_mul_ok(60 * v22, 0x3CuLL))
      {
        sub_25424D568();
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v19 != v27 || *a2 == v19)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
    result = (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
LABEL_18:
    *v31 = v19;
    return result;
  }

  if (!is_mul_ok(v18, 0x3CuLL))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (is_mul_ok(60 * v18, 0x3CuLL))
  {
    v27 = result;
    result = sub_25424D568();
    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_2541DE3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{

  v6 = sub_2541DEB88(v5);

  v7 = a3(v6, a2);

  return v7;
}

uint64_t sub_2541DE450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v13, a1, a2);
  (*(a3 + 48))(&v19, a2, a3);
  LOBYTE(a1) = v19;
  (*(a3 + 32))(a2, a3);
  sub_2541DE894(v10);
  LOBYTE(a3) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2542542D0;
  *(v15 + 32) = a3;
  *(v15 + 33) = 0xFF070504030201uLL >> (8 * a1);
  v16 = sub_2541B1AC4(v15);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v13, a2);
  return v16;
}

uint64_t sub_2541DE690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, a2);
  (*(a3 + 32))(a2, a3);
  sub_2541DE894(v10);
  LOBYTE(a3) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2542542D0;
  *(v15 + 32) = a3;
  *(v15 + 33) = -1;
  v16 = sub_2541B1AC4(v15);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v13, a2);
  return v16;
}

void sub_2541DE894(uint64_t a1)
{
  sub_25424D578();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void *_s13HomeKitEvents9EventTagsO8CategoryO15tagsSplitByDate3for12dateIntervalSay10Foundation0jM0VAH_SayAI4DataVG0G0tGShyAA0dF0OG_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D1F8();
  sub_25424D578();
  v9 = v8;
  v10 = v8;
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_25424D1D8();
  sub_25424D578();
  v14 = v13;
  v15 = v13;
  result = v11(v7, v4);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v14 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v14 / 0x5460 + ((v14 / 0x5460 * 0x101010101010102uLL) >> 64);
  v20 = v14 / 0xE10;
  if (v20 >= v9 / 0xE10)
  {
    MEMORY[0x28223BE20](result);
    *&v19[-64] = &v21;
    *&v19[-56] = v16;
    v19[-48] = v17;
    *&v19[-40] = &v20;
    *&v19[-32] = a2;
    *&v19[-24] = v18;
    *&v19[-16] = a1;
    return sub_2541DDB14(sub_2541DF324, &v19[-80], v16, v18);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2541DEB88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2541BB3C0();
  v4 = MEMORY[0x259C06190](v2, &type metadata for EventCategory, v3);
  if (!v2)
  {
    return v4;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4 + 56;
    while (1)
    {
      v7 = *(a1 + 32 + v5++);
      sub_25424EBD8();
      v8 = qword_25425D8A8[v7];
      MEMORY[0x259C06AA0](v8);
      v9 = sub_25424EC28();
      v10 = -1 << *(v4 + 32);
      v11 = v9 & ~v10;
      if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        break;
      }

      v12 = ~v10;
      while (qword_25425D8A8[*(*(v4 + 48) + v11)] != v8)
      {
        v11 = (v11 + 1) & v12;
        if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v5 == v2)
      {
        return v4;
      }
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 16);
    if (*(v4 + 24) > v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25416A1C0();
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_25417E910(v14 + 1);
    }

    else
    {
      sub_25417E90C(v14 + 1);
    }

    sub_25424EBD8();
    MEMORY[0x259C06AA0](v8);
    v15 = sub_25424EC28();
    v16 = -1 << *(v4 + 32);
    v11 = v15 & ~v16;
    if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_21:
    *(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v11;
    *(*(v4 + 48) + v11) = v7;
    v18 = *(v4 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
      goto LABEL_25;
    }

    *(v4 + 16) = v20;
    if (v5 == v2)
    {
      return v4;
    }
  }

  v17 = ~v16;
  while (qword_25425D8A8[*(*(v4 + 48) + v11)] != v8)
  {
    v11 = (v11 + 1) & v17;
    if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  result = sub_25424EB28();
  __break(1u);
  return result;
}

char *_s13HomeKitEvents9EventTagsO8CategoryO4tags3for12dateIntervalSay10Foundation4DataVGShyAA0dF0OG_AI04DateJ0VtFZ_0(uint64_t a1)
{
  v51[5] = *MEMORY[0x277D85DE8];
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D1F8();
  sub_25424D578();
  v7 = v6;
  v8 = v6;
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v7 <= -1.0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_25424D1D8();
  sub_25424D578();
  v11 = v10;
  v12 = v10;
  v9(v5, v2);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v11 <= -1.0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v13 = v11 / 0x5460;
  v14 = v13 - v7 / 0x5460;
  if (v13 < v7 / 0x5460)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v15 = v14 + 1;
  if (v14 == -1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v16 = *(a1 + 16);
  if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
  {
    goto LABEL_52;
  }

  v17 = sub_2541B09E0(0, (v15 * v16) & ~((v15 * v16) >> 63), 0, MEMORY[0x277D84F90]);
  v18 = 0;
  v19 = a1 + 56;
  v48 = v13 - 255 * ((v13 * 0x101010101010102uLL) >> 64);
  if (v15 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v15;
  }

  v43 = v20;
  v47 = xmmword_2542542D0;
  v44 = v15;
  while (2)
  {
    v45 = v18 + 1;
    v22 = 1 << *(a1 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a1 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    if (v24)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v27 >= v25)
      {
        break;
      }

      v24 = *(v19 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
        do
        {
LABEL_27:
          v28 = a1;
          v29 = 0xFF070504030201uLL >> (8 * *(*(a1 + 48) + (__clz(__rbit64(v24)) | (v26 << 6))));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
          v30 = swift_allocObject();
          *(v30 + 16) = v47;
          *(v30 + 32) = v48;
          *(v30 + 33) = v29;
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2D0, &qword_254258C40);
          v51[3] = v31;
          v51[4] = sub_2541DF2C0();
          v51[0] = v30;
          v32 = __swift_project_boxed_opaque_existential_1(v51, v31);
          v33 = *v32;
          v34 = *(*v32 + 16);
          if (v34)
          {
            if (v34 <= 0xE)
            {
              memset(__dst, 0, sizeof(__dst));
              v50 = v34;
              memcpy(__dst, (v33 + 32), v34);
              v37 = *__dst;
              v38 = v46 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v50 << 16)) << 32);
              v46 = v38;
            }

            else
            {
              sub_25424D2B8();
              swift_allocObject();
              v35 = sub_25424D258();
              v36 = v35;
              if (v34 >= 0x7FFFFFFF)
              {
                sub_25424D468();
                v37 = swift_allocObject();
                *(v37 + 16) = 0;
                *(v37 + 24) = v34;
                v38 = v36 | 0x8000000000000000;
              }

              else
              {
                v37 = v34 << 32;
                v38 = v35 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v37 = 0;
            v38 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(v51);
          v40 = *(v17 + 2);
          v39 = *(v17 + 3);
          if (v40 >= v39 >> 1)
          {
            v17 = sub_2541B09E0((v39 > 1), v40 + 1, 1, v17);
          }

          v24 &= v24 - 1;
          *(v17 + 2) = v40 + 1;
          v41 = &v17[16 * v40];
          *(v41 + 4) = v37;
          *(v41 + 5) = v38;
          a1 = v28;
        }

        while (v24);
      }
    }

    if (v48)
    {
      v18 = v45;
      if (v45 == v44)
      {
        return v17;
      }

      v21 = v48 - 1;
      goto LABEL_18;
    }

    v18 = v45;
    if (v45 != v44)
    {
      v21 = 255;
LABEL_18:
      v48 = v21;
      if (v18 == v43)
      {
        goto LABEL_42;
      }

      continue;
    }

    return v17;
  }
}

unint64_t sub_2541DF2C0()
{
  result = qword_27F5BA2D8;
  if (!qword_27F5BA2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA2D0, &qword_254258C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA2D8);
  }

  return result;
}

uint64_t sub_2541DF34C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541DF3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LubyRackoffEncryptionKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void asyncCache<A, B>(of:withKeysOf:expirationDuration:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>, double a5@<D0>)
{
  if (a5 > 0.0)
  {
    v7 = type metadata accessor for ExpiringAsyncCache(0, a1, a2, a3);
    v8 = ExpiringAsyncCache.__allocating_init(expirationDuration:)(a5);
    a4[3] = v7;
LABEL_6:
    a4[4] = swift_getWitnessTable();
    *a4 = v8;
    return;
  }

  if (a5 == 0.0)
  {
    v9 = type metadata accessor for SimpleAsyncCache(0, a1, a2, a3);
    v8 = SimpleAsyncCache.__allocating_init()();
    a4[3] = v9;
    goto LABEL_6;
  }

  a4[3] = type metadata accessor for DiscardingAsyncCache(0, a1, a2, a3);
  a4[4] = swift_getWitnessTable();

  DiscardingAsyncCache.init()();
}

uint64_t dispatch thunk of AsyncCache.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25412F818;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncCache.get(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2541A5FB8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AsyncCache.set(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25412F724;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncCache.clear(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return v9(a1, a2, a3);
}

HomeKitEvents::WindowEvent::State_optional __swiftcall WindowEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t WindowEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WindowEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for WindowEvent(uint64_t a1)
{
  result = qword_27F5BB1F0;
  if (!qword_27F5BB1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WindowEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WindowEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WindowEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t WindowEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WindowEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t WindowEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static WindowEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for WindowEvent(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t WindowEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25424D8B8();
  sub_2541E08DC(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_2541E08DC(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425DC30[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for WindowEvent(0);
  return MEMORY[0x259C06AA0](*(v1 + *(v11 + 20)));
}

uint64_t WindowEvent.hashValue.getter()
{
  sub_25424EBD8();
  WindowEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541E0054()
{
  sub_25424EBD8();
  WindowEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541E0098(uint64_t a1)
{
  sub_25424EBD8();
  WindowEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t WindowEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 1;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for WindowEvent(0);
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t WindowEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254149170(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v9 = v11[0];
  sub_25414A414(v7, a2);
  result = type metadata accessor for WindowEvent(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

uint64_t WindowEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v9[15] = *(v1 + *(type metadata accessor for WindowEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9[14] = 1;
    sub_2541E05D0();
    sub_25424EA18();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_2541E05D0()
{
  result = qword_27F5BB178;
  if (!qword_27F5BB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB178);
  }

  return result;
}

unint64_t sub_2541E0628()
{
  result = qword_27F5BB180;
  if (!qword_27F5BB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB180);
  }

  return result;
}

unint64_t sub_2541E0680()
{
  result = qword_27F5BB188;
  if (!qword_27F5BB188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB190, &qword_25425D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB188);
  }

  return result;
}

unint64_t sub_2541E06E8()
{
  result = qword_27F5BB198;
  if (!qword_27F5BB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB198);
  }

  return result;
}

uint64_t sub_2541E073C(void *a1)
{
  a1[1] = sub_2541E08DC(&qword_27F5BB1A8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
  a1[2] = sub_2541E08DC(&qword_27F5BB1B0, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
  result = sub_2541E08DC(&qword_27F5BB1B8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541E0830(void *a1)
{
  a1[1] = sub_2541E08DC(&qword_27F5BB1C8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
  a1[2] = sub_2541E08DC(&qword_27F5BB1D0, type metadata accessor for WindowEvent, &unk_25425DAF0);
  result = sub_2541E08DC(&qword_27F5BB1D8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541E08DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2541E096C(void *a1)
{
  a1[1] = sub_25414ACD4();
  a1[2] = sub_2541E05D0();
  result = sub_2541E09A4();
  a1[3] = result;
  return result;
}

unint64_t sub_2541E09A4()
{
  result = qword_27F5BB1E0;
  if (!qword_27F5BB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB1E0);
  }

  return result;
}

unint64_t sub_2541E09F8(uint64_t a1)
{
  result = sub_2541E0A20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541E0A20()
{
  result = qword_27F5BB1E8;
  if (!qword_27F5BB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB1E8);
  }

  return result;
}

unint64_t sub_2541E0A74(uint64_t a1)
{
  result = sub_2541E06E8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541E0AC4(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2541E0B48()
{
  result = qword_27F5BB200;
  if (!qword_27F5BB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB200);
  }

  return result;
}

uint64_t DigestQuery.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase(0) + 20);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DigestQuery.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase(0) + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DigestQuery.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for QueryBase(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DigestQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_2541E0D58@<D0>(uint64_t a1@<X8>)
{
  sub_2541E3BBC(v1, a1, type metadata accessor for DigestQuery.AsyncEventSequence);
  v3 = type metadata accessor for DigestQuery.AsyncEventSequence.AsyncIterator(0);
  v4 = a1 + v3[5];
  *(v4 + 32) = 0;
  result = 0.0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v6 = a1 + v3[6];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(a1 + v3[7]) = 0;
  return result;
}

uint64_t sub_2541E0DCC(uint64_t a1)
{
  v2[55] = a1;
  v2[56] = v1;
  v3 = sub_25424D3C8();
  v2[57] = v3;
  v2[58] = *(v3 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8);
  v2[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC800, &unk_25425DD60);
  v2[62] = swift_task_alloc();
  v4 = type metadata accessor for DigestRecord(0);
  v2[63] = v4;
  v2[64] = *(v4 - 8);
  v2[65] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB230, &unk_254263DF0);
  v2[66] = v5;
  v2[67] = *(v5 - 8);
  v2[68] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB238, &unk_25425DD70);
  v2[69] = v6;
  v2[70] = *(v6 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = type metadata accessor for DigestQuery.AsyncEventSequence(0);
  v2[73] = swift_task_alloc();
  v7 = sub_25424D218();
  v2[74] = v7;
  v2[75] = *(v7 - 8);
  v2[76] = swift_task_alloc();
  v2[77] = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = type metadata accessor for SomeAccessoryEvent(0);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v8 = sub_25424D8B8();
  v2[83] = v8;
  v2[84] = *(v8 - 8);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530);
  v2[87] = swift_task_alloc();
  v9 = type metadata accessor for SomeEvent(0);
  v2[88] = v9;
  v2[89] = *(v9 - 8);
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541E1238, 0, 0);
}

uint64_t sub_2541E1238()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 448);
  v3 = type metadata accessor for DigestQuery.AsyncEventSequence.AsyncIterator(0);
  *(v0 + 736) = v3;
  v4 = *(v3 + 28);
  *(v0 + 800) = v4;
  v5 = *(v1 + 20);
  v6 = *(v2 + v4);
  *(v0 + 744) = v6;
  if (v6 != *(v2 + v5))
  {
    v9 = *(v3 + 24);
    *(v0 + 804) = v9;
    v10 = v2 + v9;
    *(v0 + 808) = *MEMORY[0x277D858A0];
    if (*(v2 + v9 + 24))
    {
      sub_254140708(v10, v0 + 16);
      if (*(v0 + 40))
      {
LABEL_7:
        v11 = *(v0 + 448) + *(v0 + 804);
        v12 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v15 = *(v11 + 24);
        if (v15)
        {
          v16 = *(v0 + 448) + *(v0 + 804);
          v17 = *(v16 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v16, *(v11 + 24));
          v18 = swift_task_alloc();
          *(v0 + 752) = v18;
          *v18 = v0;
          v18[1] = sub_2541E186C;
          v12 = *(v0 + 696);
          v13 = v15;
          v14 = v17;
          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      v19 = *v10;
      v20 = *(v10 + 16);
      *(v0 + 48) = *(v10 + 32);
      *(v0 + 16) = v19;
      *(v0 + 32) = v20;
      if (*(v0 + 40))
      {
        goto LABEL_7;
      }
    }

    v21 = *(v0 + 448);
    v22 = v21 + *(*(v0 + 736) + 20);
    if (*(v22 + 24))
    {
      sub_254140708(v21 + *(*(v0 + 736) + 20), v0 + 56);
      if (*(v0 + 80))
      {
LABEL_12:
        v12 = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        goto LABEL_13;
      }
    }

    else
    {
      v26 = *v22;
      v27 = *(v22 + 16);
      *(v0 + 88) = *(v22 + 32);
      *(v0 + 72) = v27;
      *(v0 + 56) = v26;
      if (*(v0 + 80))
      {
        goto LABEL_12;
      }
    }

    sub_25424E1E8();
    v38 = *(v0 + 808);
    v28 = *(v0 + 680);
    v29 = *(v0 + 672);
    v30 = *(v0 + 584);
    v39 = *(v0 + 568);
    v40 = *(v0 + 664);
    v41 = *(v0 + 552);
    v42 = *(v0 + 560);
    v31 = *(v0 + 544);
    v32 = *(v0 + 536);
    v33 = *(v0 + 528);
    sub_2541E3CDC(*(v0 + 448), v30, type metadata accessor for DigestQuery.AsyncEventSequence);
    sub_25424D898();
    v34 = swift_task_alloc();
    *(v34 + 16) = v30;
    *(v34 + 24) = v28;
    (*(v32 + 104))(v31, v38, v33);
    sub_25424E278();

    (*(v29 + 8))(v28, v40);
    sub_2541E3D44(v30, type metadata accessor for EventDigestQuery);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB240, &qword_25425DD80);
    *(v0 + 128) = sub_25414081C(&qword_27F5BB248, &qword_27F5BB240, &qword_25425DD80, MEMORY[0x277D858D0]);
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_25424E178();
    v12 = (*(v42 + 8))(v39, v41);
    v35 = *(v0 + 120);
    if (*(v22 + 24))
    {
      v12 = __swift_destroy_boxed_opaque_existential_1(v22);
      if (v35)
      {
LABEL_21:
        v12 = sub_25412DC4C((v0 + 96), v22);
        goto LABEL_13;
      }
    }

    else if (v35)
    {
      goto LABEL_21;
    }

    v36 = *(v0 + 96);
    v37 = *(v0 + 112);
    *(v22 + 32) = *(v0 + 128);
    *v22 = v36;
    *(v22 + 16) = v37;
LABEL_13:
    v23 = *(v22 + 24);
    if (v23)
    {
      v24 = *(v22 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v22, *(v22 + 24));
      v25 = swift_task_alloc();
      *(v0 + 768) = v25;
      *v25 = v0;
      v25[1] = sub_2541E29D0;
      v12 = *(v0 + 496);
      v13 = v23;
      v14 = v24;
LABEL_15:

      return MEMORY[0x282200308](v12, v13, v14);
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x282200308](v12, v13, v14);
  }

  (*(*(v0 + 712) + 56))(*(v0 + 440), 1, 1, *(v0 + 704));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2541E186C()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_2541E34FC;
  }

  else
  {
    v2 = sub_2541E1980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541E1980()
{
  v1 = *(v0 + 696);
  if ((*(*(v0 + 712) + 48))(v1, 1, *(v0 + 704)) == 1)
  {
    v2 = *(v0 + 760);
    sub_254132E5C(v1, &qword_27F5B9110, &qword_254254530);
    sub_25424E1E8();
    if (v2)
    {
      goto LABEL_43;
    }

LABEL_47:
    v78 = *(v0 + 448);
    v79 = v78 + *(*(v0 + 736) + 20);
    if (*(v79 + 24))
    {
      sub_254140708(v78 + *(*(v0 + 736) + 20), v0 + 56);
      if (*(v0 + 80))
      {
LABEL_49:
        v58 = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        goto LABEL_50;
      }
    }

    else
    {
      v83 = *v79;
      v84 = *(v79 + 16);
      *(v0 + 88) = *(v79 + 32);
      *(v0 + 72) = v84;
      *(v0 + 56) = v83;
      if (*(v0 + 80))
      {
        goto LABEL_49;
      }
    }

    sub_25424E1E8();
    if (v2)
    {
      goto LABEL_43;
    }

    v95 = *(v0 + 808);
    v85 = *(v0 + 680);
    v86 = *(v0 + 672);
    v87 = *(v0 + 584);
    v97 = *(v0 + 568);
    v99 = *(v0 + 664);
    v101 = *(v0 + 552);
    v103 = *(v0 + 560);
    v88 = *(v0 + 544);
    v89 = *(v0 + 536);
    v90 = *(v0 + 528);
    sub_2541E3CDC(*(v0 + 448), v87, type metadata accessor for DigestQuery.AsyncEventSequence);
    sub_25424D898();
    v91 = swift_task_alloc();
    *(v91 + 16) = v87;
    *(v91 + 24) = v85;
    (*(v89 + 104))(v88, v95, v90);
    sub_25424E278();

    (*(v86 + 8))(v85, v99);
    sub_2541E3D44(v87, type metadata accessor for EventDigestQuery);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB240, &qword_25425DD80);
    *(v0 + 128) = sub_25414081C(&qword_27F5BB248, &qword_27F5BB240, &qword_25425DD80, MEMORY[0x277D858D0]);
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_25424E178();
    v58 = (*(v103 + 8))(v97, v101);
    v92 = *(v0 + 120);
    if (*(v79 + 24))
    {
      v58 = __swift_destroy_boxed_opaque_existential_1(v79);
      if (v92)
      {
LABEL_59:
        v58 = sub_25412DC4C((v0 + 96), v79);
        goto LABEL_50;
      }
    }

    else if (v92)
    {
      goto LABEL_59;
    }

    v93 = *(v0 + 96);
    v94 = *(v0 + 112);
    *(v79 + 32) = *(v0 + 128);
    *v79 = v93;
    *(v79 + 16) = v94;
LABEL_50:
    v80 = *(v79 + 24);
    if (v80)
    {
      v81 = *(v79 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v79, *(v79 + 24));
      v82 = swift_task_alloc();
      *(v0 + 768) = v82;
      *v82 = v0;
      v82[1] = sub_2541E29D0;
      v58 = *(v0 + 496);
      v59 = v80;
      v60 = v81;
LABEL_52:

      return MEMORY[0x282200308](v58, v59, v60);
    }

    goto LABEL_63;
  }

  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  sub_2541E3BBC(v1, v3, type metadata accessor for SomeEvent);
  sub_2541E3CDC(v3, v4, type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + 720);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0 + 720);
      *(v0 + 280) = type metadata accessor for HomeActivityStateEvent(0);
      *(v0 + 288) = sub_2541E3C94(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
      sub_2541E3BBC(v7, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
      goto LABEL_34;
    }

    v15 = *(v0 + 632);
    v16 = *(v0 + 624);
    sub_2541E3BBC(v6, v15, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    sub_2541E3CDC(v15, v16, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    v17 = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 624);
    if (v17)
    {
      if (v17 == 1)
      {
        *(v0 + 360) = type metadata accessor for EnergyKit.LoadSessionEvent(0);
        v19 = sub_2541E3C94(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
        v20 = type metadata accessor for EnergyKit.LoadSessionEvent;
      }

      else
      {
        *(v0 + 360) = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
        v19 = sub_2541E3C94(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
        v20 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      }
    }

    else
    {
      *(v0 + 360) = type metadata accessor for EnergyKit.LoadEvent(0);
      v19 = sub_2541E3C94(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
      v20 = type metadata accessor for EnergyKit.LoadEvent;
    }

    v21 = v20;
    *(v0 + 368) = v19;
    v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
    sub_2541E3BBC(v18, v22, v21);
    v23 = *(v0 + 632);
    sub_25412DC4C((v0 + 336), v0 + 296);
    v24 = *(v0 + 320);
    v25 = *(v0 + 328);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 296), v24);
    *(v0 + 280) = v24;
    *(v0 + 288) = *(v25 + 16);
    v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    (*(*(v24 - 8) + 16))(v27, v26, v24);
    sub_2541E3D44(v23, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    v28 = (v0 + 296);
  }

  else
  {
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    sub_2541E3BBC(v6, v9, type metadata accessor for SomeAccessoryEvent);
    sub_2541E3CDC(v9, v10, type metadata accessor for SomeAccessoryEvent);
    v11 = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 648);
    if (v11 > 4)
    {
      if (v11 <= 6)
      {
        if (v11 == 5)
        {
          *(v0 + 400) = type metadata accessor for SmokeDetectorEvent(0);
          v13 = sub_2541E3C94(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
          v14 = type metadata accessor for SmokeDetectorEvent;
        }

        else
        {
          *(v0 + 400) = type metadata accessor for ThermostatAutomationEvent(0);
          v13 = sub_2541E3C94(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
          v14 = type metadata accessor for ThermostatAutomationEvent;
        }
      }

      else if (v11 == 7)
      {
        *(v0 + 400) = type metadata accessor for ThermostatAutomationFailureEvent(0);
        v13 = sub_2541E3C94(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
        v14 = type metadata accessor for ThermostatAutomationFailureEvent;
      }

      else if (v11 == 8)
      {
        *(v0 + 400) = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
        v13 = sub_2541E3C94(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
        v14 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
      }

      else
      {
        *(v0 + 400) = type metadata accessor for WindowEvent(0);
        v13 = sub_2541E3C94(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
        v14 = type metadata accessor for WindowEvent;
      }
    }

    else if (v11 <= 1)
    {
      if (v11)
      {
        *(v0 + 400) = type metadata accessor for DoorEvent(0);
        v13 = sub_2541E3C94(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
        v14 = type metadata accessor for DoorEvent;
      }

      else
      {
        *(v0 + 400) = type metadata accessor for ContactSensorEvent(0);
        v13 = sub_2541E3C94(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
        v14 = type metadata accessor for ContactSensorEvent;
      }
    }

    else if (v11 == 2)
    {
      *(v0 + 400) = type metadata accessor for GarageDoorEvent(0);
      v13 = sub_2541E3C94(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
      v14 = type metadata accessor for GarageDoorEvent;
    }

    else if (v11 == 3)
    {
      *(v0 + 400) = type metadata accessor for LockEvent(0);
      v13 = sub_2541E3C94(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
      v14 = type metadata accessor for LockEvent;
    }

    else
    {
      *(v0 + 400) = type metadata accessor for SecuritySystemEvent(0);
      v13 = sub_2541E3C94(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
      v14 = type metadata accessor for SecuritySystemEvent;
    }

    v29 = v14;
    *(v0 + 408) = v13;
    v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
    sub_2541E3BBC(v12, v30, v29);
    v31 = *(v0 + 656);
    v32 = *(v0 + 400);
    v33 = *(v0 + 408);
    v34 = __swift_project_boxed_opaque_existential_1((v0 + 376), v32);
    *(v0 + 280) = v32;
    *(v0 + 288) = *(v33 + 16);
    v35 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    (*(*(v32 - 8) + 16))(v35, v34, v32);
    sub_2541E3D44(v31, type metadata accessor for SomeAccessoryEvent);
    v28 = (v0 + 376);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_34:
  v36 = *(v0 + 680);
  v37 = *(v0 + 672);
  v100 = *(v0 + 608);
  v102 = *(v0 + 664);
  v38 = *(v0 + 600);
  v39 = *(v0 + 584);
  v96 = *(v0 + 448);
  v98 = *(v0 + 592);
  v41 = *(v0 + 280);
  v40 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v41);
  *(v0 + 240) = v41;
  v42 = *(v40 + 8);
  *(v0 + 248) = v42;
  __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  (*(*(v41 - 8) + 16))();
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  (*(v42 + 32))(v41, v42);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  sub_2541E3CDC(v96, v39, type metadata accessor for DigestQuery.AsyncEventSequence);
  v43 = type metadata accessor for EventDigestQuery.Configuration(0);
  (*(v38 + 16))(v100, v39 + *(v43 + 32), v98);
  sub_2541E3D44(v39, type metadata accessor for EventDigestQuery);
  sub_25424D1F8();
  LOBYTE(v40) = sub_25424D838();
  v44 = *(v37 + 8);
  v44(v36, v102);
  if (v40)
  {
    v45 = *(v0 + 728);
    v46 = *(v0 + 712);
    v47 = *(v0 + 704);
    v48 = *(v0 + 688);
    v49 = *(v0 + 664);
    v50 = *(v0 + 440);
    (*(*(v0 + 600) + 8))(*(v0 + 608), *(v0 + 592));
    v44(v48, v49);
    sub_2541E3D44(v45, type metadata accessor for SomeEvent);
    (*(v46 + 56))(v50, 1, 1, v47);
  }

  else
  {
    v51 = *(v0 + 688);
    v52 = *(v0 + 680);
    v53 = *(v0 + 664);
    v54 = *(v0 + 608);
    v55 = *(v0 + 600);
    v56 = *(v0 + 592);
    sub_25424D1D8();
    v57 = sub_25424D828();
    v44(v52, v53);
    (*(v55 + 8))(v54, v56);
    v58 = (v44)(v51, v53);
    if (v57)
    {
      sub_2541E3D44(*(v0 + 728), type metadata accessor for SomeEvent);
      v2 = *(v0 + 760);
      v61 = *(v0 + 448) + *(v0 + 804);
      if (*(v61 + 24))
      {
        sub_254140708(v61, v0 + 16);
        if (!*(v0 + 40))
        {
          goto LABEL_47;
        }
      }

      else
      {
        v76 = *v61;
        v77 = *(v61 + 16);
        *(v0 + 48) = *(v61 + 32);
        *(v0 + 16) = v76;
        *(v0 + 32) = v77;
        if (!*(v0 + 40))
        {
          goto LABEL_47;
        }
      }

      v62 = *(v0 + 448) + *(v0 + 804);
      v58 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v63 = *(v62 + 24);
      if (v63)
      {
        v64 = *(v0 + 448) + *(v0 + 804);
        v65 = *(v64 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v64, *(v62 + 24));
        v66 = swift_task_alloc();
        *(v0 + 752) = v66;
        *v66 = v0;
        v66[1] = sub_2541E186C;
        v58 = *(v0 + 696);
        v59 = v63;
        v60 = v65;
        goto LABEL_52;
      }

LABEL_64:
      __break(1u);
      return MEMORY[0x282200308](v58, v59, v60);
    }

    v67 = *(v0 + 744);
    v68 = __OFADD__(v67, 1);
    v69 = v67 + 1;
    if (v68)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v70 = *(v0 + 728);
    v71 = *(v0 + 712);
    v72 = *(v0 + 704);
    v73 = *(v0 + 440);
    *(*(v0 + 448) + *(v0 + 800)) = v69;
    sub_2541E3BBC(v70, v73, type metadata accessor for SomeEvent);
    (*(v71 + 56))(v73, 0, 1, v72);
  }

LABEL_43:

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_2541E29D0()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_2541E3654;
  }

  else
  {
    v2 = sub_2541E2AE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541E2AE4()
{
  v1 = *(v0 + 496);
  if ((*(*(v0 + 512) + 48))(v1, 1, *(v0 + 504)) != 1)
  {
    v8 = *(v0 + 480);
    v7 = *(v0 + 488);
    v9 = *(v0 + 464);
    v69 = *(v0 + 472);
    v65 = v8;
    v67 = *(v0 + 456);
    sub_2541E3BBC(v1, *(v0 + 520), type metadata accessor for DigestRecord);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92D0, &qword_2542546F0);
    *(v0 + 200) = v10;
    *(v0 + 208) = sub_25414081C(&qword_27F5B92D8, &qword_27F5B92D0, &qword_2542546F0, &unk_254254798);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_25424D3D8();
    *(boxed_opaque_existential_1 + *(v8 + 36)) = 0x4000;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B92E8, &unk_254254700);
    *(boxed_opaque_existential_1 + *(v63 + 36)) = 1;
    *(boxed_opaque_existential_1 + *(v10 + 36)) = 0;
    v12 = *(v0 + 200);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 176), v12);
    v14 = *(v12 - 8);
    v15 = swift_task_alloc();
    (*(v14 + 16))(v15, v13, v12);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    v16 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_2541E3C24(v15, v7);
    (*(v9 + 16))(v69, v7, v67);
    sub_2541E3C94(&qword_27F5BB250, MEMORY[0x277CC91B0], MEMORY[0x277CC91B8]);
    sub_25424E208();
    v17 = *(v7 + *(v65 + 36));
    v18 = sub_254132E5C(v7, &qword_27F5B92E0, &qword_2542546F8);
    if (v17 < 1)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v21 = *(v0 + 520);
    v22 = *(v0 + 448) + *(v0 + 804);
    v23 = *(v0 + 416);
    v24 = *(v0 + 424);
    *(v0 + 792) = 1;
    v25 = *(v15 + *(v63 + 36));
    *(v0 + 814) = *(v0 + 817);
    *(v0 + 812) = *(v0 + 815);
    *(v0 + 785) = *(v0 + 793);
    *(v0 + 788) = *(v0 + 796);
    *(v0 + 784) = 1;
    v26 = *(v15 + *(v10 + 36));
    *v16 = v23;
    *(v16 + 1) = v24;
    v16[3] = v17;
    *(v16 + 2) = xmmword_254252DB0;
    v27 = MEMORY[0x277D84F90];
    v16[6] = 0;
    v16[7] = v27;
    v16[8] = 0;
    v16[9] = 0;
    *(v16 + 80) = 1;
    v28 = *(v0 + 812);
    *(v16 + 83) = *(v0 + 814);
    *(v16 + 81) = v28;
    *(v16 + 21) = 0;
    *(v16 + 88) = 1;
    v29 = *(v0 + 785);
    *(v16 + 23) = *(v0 + 788);
    *(v16 + 89) = v29;
    *(v16 + 6) = xmmword_254252DB0;
    *(v16 + 7) = xmmword_254252DB0;
    *(v16 + 8) = xmmword_254252DB0;
    *(v16 + 144) = v25;
    v16[19] = 0;
    v16[20] = 0;
    *(v16 + 168) = 2;
    v16[22] = v27;
    v16[23] = 0;
    v16[24] = 0;
    v16[25] = 0;
    *(v16 + 208) = 1;
    v16[27] = 0;
    *(v16 + 224) = v26;
    (*(v14 + 8))(v15, v12);
    sub_2541E3D44(v21, type metadata accessor for DigestRecord);

    v30 = *(v0 + 160);
    v31 = *(v0 + 804);
    v32 = *(v0 + 448);
    v33 = v32 + v31;
    if (*(v22 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v32 + v31));
      v33 = *(v0 + 448) + *(v0 + 804);
      if (v30)
      {
LABEL_9:
        sub_25412DC4C((v0 + 136), v33);
        goto LABEL_12;
      }
    }

    else if (v30)
    {
      goto LABEL_9;
    }

    v34 = *(v0 + 136);
    v35 = *(v0 + 152);
    *(v33 + 32) = *(v0 + 168);
    *v33 = v34;
    *(v33 + 16) = v35;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    v36 = *(v0 + 776);
    v37 = *(v0 + 448) + *(v0 + 804);
    if (*(v37 + 24))
    {
      sub_254140708(v37, v0 + 16);
      if (*(v0 + 40))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43 = *v37;
      v44 = *(v37 + 16);
      *(v0 + 48) = *(v37 + 32);
      *(v0 + 16) = v43;
      *(v0 + 32) = v44;
      if (*(v0 + 40))
      {
LABEL_14:
        v38 = *(v0 + 448) + *(v0 + 804);
        v18 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v39 = *(v38 + 24);
        if (v39)
        {
          v40 = *(v0 + 448) + *(v0 + 804);
          v41 = *(v40 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v40, *(v38 + 24));
          v42 = swift_task_alloc();
          *(v0 + 752) = v42;
          *v42 = v0;
          v42[1] = sub_2541E186C;
          v18 = *(v0 + 696);
          v19 = v39;
          v20 = v41;
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    v45 = *(v0 + 448);
    v46 = v45 + *(*(v0 + 736) + 20);
    if (*(v46 + 24))
    {
      sub_254140708(v45 + *(*(v0 + 736) + 20), v0 + 56);
      if (*(v0 + 80))
      {
LABEL_19:
        v18 = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        goto LABEL_20;
      }
    }

    else
    {
      v50 = *v46;
      v51 = *(v46 + 16);
      *(v0 + 88) = *(v46 + 32);
      *(v0 + 72) = v51;
      *(v0 + 56) = v50;
      if (*(v0 + 80))
      {
        goto LABEL_19;
      }
    }

    sub_25424E1E8();
    if (v36)
    {

      v5 = *(v0 + 8);
      goto LABEL_3;
    }

    v62 = *(v0 + 808);
    v52 = *(v0 + 680);
    v53 = *(v0 + 672);
    v54 = *(v0 + 584);
    v64 = *(v0 + 568);
    v66 = *(v0 + 664);
    v68 = *(v0 + 552);
    v70 = *(v0 + 560);
    v55 = *(v0 + 544);
    v56 = *(v0 + 536);
    v57 = *(v0 + 528);
    sub_2541E3CDC(*(v0 + 448), v54, type metadata accessor for DigestQuery.AsyncEventSequence);
    sub_25424D898();
    v58 = swift_task_alloc();
    *(v58 + 16) = v54;
    *(v58 + 24) = v52;
    (*(v56 + 104))(v55, v62, v57);
    sub_25424E278();

    (*(v53 + 8))(v52, v66);
    sub_2541E3D44(v54, type metadata accessor for EventDigestQuery);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB240, &qword_25425DD80);
    *(v0 + 128) = sub_25414081C(&qword_27F5BB248, &qword_27F5BB240, &qword_25425DD80, MEMORY[0x277D858D0]);
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_25424E178();
    v18 = (*(v70 + 8))(v64, v68);
    v59 = *(v0 + 120);
    if (*(v46 + 24))
    {
      v18 = __swift_destroy_boxed_opaque_existential_1(v46);
      if (v59)
      {
LABEL_30:
        v18 = sub_25412DC4C((v0 + 96), v46);
        goto LABEL_20;
      }
    }

    else if (v59)
    {
      goto LABEL_30;
    }

    v60 = *(v0 + 96);
    v61 = *(v0 + 112);
    *(v46 + 32) = *(v0 + 128);
    *v46 = v60;
    *(v46 + 16) = v61;
LABEL_20:
    v47 = *(v46 + 24);
    if (v47)
    {
      v48 = *(v46 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v46, *(v46 + 24));
      v49 = swift_task_alloc();
      *(v0 + 768) = v49;
      *v49 = v0;
      v49[1] = sub_2541E29D0;
      v18 = *(v0 + 496);
      v19 = v47;
      v20 = v48;
LABEL_22:

      return MEMORY[0x282200308](v18, v19, v20);
    }

LABEL_35:
    __break(1u);
    return MEMORY[0x282200308](v18, v19, v20);
  }

  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 440);
  sub_254132E5C(v1, &unk_27F5BC800, &unk_25425DD60);
  (*(v2 + 56))(v4, 1, 1, v3);

  v5 = *(v0 + 8);
LABEL_3:

  return v5();
}

uint64_t sub_2541E34FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541E3654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541E37AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25412F724;

  return sub_2541E0DCC(a1);
}

uint64_t sub_2541E3844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_2541A78F4;

  return sub_2541E0DCC(a1);
}

uint64_t sub_2541E3908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = sub_25424D948();
  (*(*(v12 - 8) + 16))(a6, a1, v12);
  Base = type metadata accessor for QueryBase(0);
  v14 = Base[5];
  v15 = sub_25424D8B8();
  v16 = *(*(v15 - 8) + 16);
  v16(a6 + v14, a2, v15);
  v16(a6 + Base[6], a3, v15);
  *(a6 + Base[7]) = a4;
  *(a6 + Base[8]) = v11;
  result = type metadata accessor for DigestQuery(0);
  *(a6 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_2541E3AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541E3BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541E3C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541E3C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2541E3CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541E3D44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2541E3DCC(uint64_t a1)
{
  type metadata accessor for DigestQuery.AsyncEventSequence(319);
  if (v1 <= 0x3F)
  {
    sub_2541E3EA0(319, &qword_27F5BB268, &qword_27F5BB270, &qword_25425DDD8);
    if (v2 <= 0x3F)
    {
      sub_2541E3EA0(319, &qword_27F5BB278, &qword_27F5BB280, &qword_25425DDE0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2541E3EA0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25424E598();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t static HMVCommands.submitTaskRequestForIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541E3F18, 0, 0);
}

uint64_t sub_2541E3F18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2541B244C;

  return sub_25412FDA0(sub_25412FDA0, sub_2541E40D8, v3);
}

void sub_2541E3FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25424DCA8();
  v8[4] = sub_2541E42D8;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2541ED26C;
  v8[3] = &block_descriptor_12;
  v7 = _Block_copy(v8);

  [a1 hmvutilSubmitTaskRequestForIdentifierWithIdentifier:v6 reply:v7];
  _Block_release(v7);
}

uint64_t sub_2541E40E0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541E42F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25412DCA8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_2541AE2C8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25424E848();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_254132E5C(a1, &qword_27F5BB2C0, &qword_25425E0F8);
    sub_2541E9E2C(a2, v9);
    v7 = sub_25424E848();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_254132E5C(v9, &qword_27F5BB2C0, &qword_25425E0F8);
  }

  return result;
}

void EventRecord.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25424D8B8();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventRecord.DecodedEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v59 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v72 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  if (sub_25424E558() == 0x746E657645 && v21 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25424EAB8();

    if ((v22 & 1) == 0)
    {
      v33 = type metadata accessor for EventRecord(0);
      *v77 = 0;
      *&v77[8] = 0xE000000000000000;
      sub_25424E688();

      *v77 = 0xD00000000000001FLL;
      *&v77[8] = 0x8000000254250D10;
      v38 = sub_25424E558();
      MEMORY[0x259C05CA0](v38);

      v32 = *&v77[8];
      v31 = *v77;
      goto LABEL_10;
    }
  }

  v65 = a2;
  v66 = v4;
  v73 = v20;
  v23 = [a1 recordID];
  v24 = [v23 recordName];

  sub_25424DCB8();
  sub_25424D8C8();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_254132E5C(v10, &unk_27F5B8E50, &qword_254254390);
    v25 = type metadata accessor for EventRecord(0);
    *v77 = 0;
    *&v77[8] = 0xE000000000000000;
    sub_25424E688();

    *v77 = 0xD00000000000002FLL;
    *&v77[8] = 0x8000000254250D30;
    v26 = [a1 recordID];
    v27 = [v26 recordName];

    v28 = sub_25424DCB8();
    v30 = v29;

    MEMORY[0x259C05CA0](v28, v30);

    v32 = *&v77[8];
    v31 = *v77;
    v33 = v25 | 0x8000000000000000;
LABEL_10:
    sub_2541BB760();
    swift_allocError();
    *v39 = v33;
    v39[1] = v31;
    v39[2] = v32;
    swift_willThrow();

    return;
  }

  v34 = v73;
  (*(v12 + 32))(v73, v10, v11);
  v35 = [a1 encryptedValues];
  v36 = v80;
  v37 = sub_25422F9F4(1, v35);
  if (v36)
  {
    swift_unknownObjectRelease();

    (*(v12 + 8))(v34, v11);
  }

  else
  {
    v40 = v37;
    EventRecord.DataType.init(rawValue:)(v37);
    v41 = v77[0];
    if (v77[0] == 15)
    {
      v42 = type metadata accessor for EventRecord(0);
      *v77 = 0;
      *&v77[8] = 0xE000000000000000;
      sub_25424E688();

      *v77 = 0xD000000000000020;
      *&v77[8] = 0x80000002542513C0;
      v74[0] = v40;
      v43 = sub_25424EA58();
      MEMORY[0x259C05CA0](v43);

      v44 = *v77;
      sub_2541BB760();
      swift_allocError();
      *v45 = v42 | 0x2000000000000000;
      *(v45 + 8) = v44;
      swift_willThrow();
      swift_unknownObjectRelease();

      (*(v12 + 8))(v73, v11);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_25422FC64(0, v35, v77);
      swift_unknownObjectRelease();
      v46 = *v77;
      v63 = *(v12 + 16);
      v63(v72, v73, v11);
      v77[0] = v41;
      *&v77[8] = v46;
      v64 = *(&v46 + 1);
      v80 = v46;
      sub_254140660(v46, *(&v46 + 1));
      static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(v77, 0, v71);
      v63(v68, v72, v11);
      EventRecord.DecodedEvent.anyEvent.getter(v77);
      v61 = v78;
      v62 = v35;
      v47 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      (*(v47 + 40))(v61, v47);
      EventRecord.DecodedEvent.anyEvent.getter(v74);
      v48 = v75;
      v49 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      (*(v49 + 32))(v48, v49);
      sub_254140660(v80, v64);
      v60 = EventRecord.DecodedEvent.tags.getter();
      v50 = v65;
      v51 = v63;
      v63(v65, v68, v11);
      v52 = type metadata accessor for EventRecord(0);
      v51(&v50[v52[5]], v69, v11);
      v53 = v67;
      (*(v67 + 16))(&v50[v52[6]], v70, v66);
      v54 = v52;
      v61 = v52;
      v50[v52[7]] = v41;
      v55 = &v50[v52[8]];
      v56 = v80;
      v57 = v64;
      *v55 = v80;
      *(v55 + 1) = v57;
      *&v50[v54[9]] = v60;
      type metadata accessor for Configuration();
      v63 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
      sub_254134D04(v56, v57);
      swift_unknownObjectRelease();

      sub_254134D04(v56, v57);
      (*(v53 + 8))(v70, v66);
      v58 = *(v12 + 8);
      v58(v69, v11);
      v58(v68, v11);
      sub_2541E9064(v71, type metadata accessor for EventRecord.DecodedEvent);
      v58(v72, v11);
      v58(v73, v11);
      *&v50[*(v61 + 40)] = v63;
      __swift_destroy_boxed_opaque_existential_1(v74);
      __swift_destroy_boxed_opaque_existential_1(v77);
    }
  }
}

HomeKitEvents::EventRecord::DataType_optional __swiftcall EventRecord.DataType.init(rawValue:)(Swift::Int64 rawValue)
{
  if ((rawValue - 1) > 0x24)
  {
    *v1 = 15;
  }

  else
  {
    *v1 = byte_25425E102[rawValue - 1];
  }

  return rawValue;
}

uint64_t static EventRecord.decodeEvent(encoded:retainEncodedEvent:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  switch(*a1)
  {
    case 1:
      result = sub_2541E66A4(1, v5, v6, a2 & 1, a3);
      break;
    case 2:
      result = sub_2541E69D4(2, v5, v6, a2 & 1, a3);
      break;
    case 3:
      result = sub_2541E6D04(3, v5, v6, a2 & 1, a3);
      break;
    case 4:
      result = sub_2541E7034(4, v5, v6, a2 & 1, a3);
      break;
    case 5:
      result = sub_2541E7364(5, v5, v6, a2 & 1, a3);
      break;
    case 6:
      result = sub_2541E7694(6, v5, v6, a2 & 1, a3);
      break;
    case 7:
      sub_25424D168();
      swift_allocObject();
      sub_25424D158();
      type metadata accessor for FakeEvent(0);
      sub_2541E9F08(&qword_27F5BA258, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
      sub_25424D138();

      if (!v3)
      {
        type metadata accessor for EventRecord.DecodedEvent(0);
        result = swift_storeEnumTagMultiPayload();
      }

      break;
    case 8:
      result = sub_2541E79C4(8, v5, v6, a2 & 1, a3);
      break;
    case 9:
      result = sub_2541E866C(9, v5, v6, a2 & 1, a3);
      break;
    case 0xA:
      result = sub_2541E899C(10, v5, v6, a2 & 1, a3);
      break;
    case 0xB:
      result = sub_2541E8CCC(11, v5, v6, a2 & 1, a3);
      break;
    case 0xC:
      result = sub_2541E7CDC(12, v5, v6, a2 & 1, a3);
      break;
    case 0xD:
      result = sub_2541E833C(13, v5, v6, a2 & 1, a3);
      break;
    case 0xE:
      result = sub_2541E800C(14, v5, v6, a2 & 1, a3);
      break;
    default:
      result = sub_2541E6374(0, v5, v6, a2 & 1, a3);
      break;
  }

  return result;
}

uint64_t static EventRecord.encodeEvent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25424D188();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for EventRecord.DecodedEvent(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for SomeEvent(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v35 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  sub_2541E8FFC(a1, v11, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2541E9064(v11, type metadata accessor for EventRecord.DecodedEvent);
  }

  else
  {
    v34 = v9;
    v19 = a2;
    sub_2541E90C4(v11, v18, type metadata accessor for SomeEvent);
    sub_2541DA834(v40);
    v20 = v41;
    v21 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v21 + 56))(&v36, v20, v21);
    sub_2541E9064(v18, type metadata accessor for SomeEvent);
    if (v36 != 15)
    {
      v31 = v37;
      *v19 = v36;
      *(v19 + 8) = v31;
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
    a2 = v19;
    v9 = v34;
  }

  EventRecord.DecodedEvent.anyEvent.getter(v40);
  v22 = v41;
  v23 = v42;
  v24 = __swift_project_boxed_opaque_existential_1(v40, v41);
  v38 = v22;
  v39 = *(v23 + 16);
  v25 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(v22 - 8) + 16))(v25, v24, v22);
  sub_25424D1C8();
  swift_allocObject();
  sub_25424D1B8();
  sub_25424D178();
  sub_25424D198();
  __swift_project_boxed_opaque_existential_1(&v36, v38);
  v26 = sub_25424D1A8();
  v28 = v27;

  __swift_destroy_boxed_opaque_existential_1(&v36);
  result = __swift_destroy_boxed_opaque_existential_1(v40);
  if (!v2)
  {
    sub_2541E8FFC(a1, v9, type metadata accessor for EventRecord.DecodedEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = sub_2541E9064(v9, type metadata accessor for EventRecord.DecodedEvent);
      v30 = 7;
    }

    else
    {
      v32 = v35;
      sub_2541E90C4(v9, v35, type metadata accessor for SomeEvent);
      v33 = v43;
      sub_2541E8FFC(v32, v43, type metadata accessor for SomeEvent);
      EventRecord.DataType.init(someEvent:)(v33, v40);
      result = sub_2541E9064(v32, type metadata accessor for SomeEvent);
      v30 = v40[0];
    }

    *a2 = v30;
    *(a2 + 8) = v26;
    *(a2 + 16) = v28;
  }

  return result;
}

uint64_t EventRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EventRecord.home.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventRecord(0) + 20);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventRecord.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventRecord(0) + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventRecord.dataType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventRecord(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t EventRecord.data.getter()
{
  v1 = v0 + *(type metadata accessor for EventRecord(0) + 32);
  v2 = *v1;
  sub_254140660(*v1, *(v1 + 8));
  return v2;
}

uint64_t EventRecord.tags.getter()
{
  type metadata accessor for EventRecord(0);
}

uint64_t EventRecord.init(identifier:home:date:dataType:data:tags:coalescingWindowSeconds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, id a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v24 = *a4;
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(a9, a1, v14);
  v17 = type metadata accessor for EventRecord(0);
  v16(a9 + v17[5], a2, v14);
  v18 = v17[6];
  v19 = sub_25424D8B8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a9 + v18, a3, v19);
  *(a9 + v17[7]) = v24;
  v21 = (a9 + v17[8]);
  *v21 = a5;
  v21[1] = a6;
  *(a9 + v17[9]) = a7;
  if (a10)
  {
    type metadata accessor for Configuration();
    a8 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
  }

  (*(v20 + 8))(a3, v19);
  v22 = *(v15 + 8);
  v22(a2, v14);
  result = (v22)(a1, v14);
  *(a9 + v17[10]) = a8;
  return result;
}

uint64_t EventRecord.init(identifier:encoded:coalescingWindowSeconds:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v57 = a3;
  v58 = a5;
  v8 = type metadata accessor for EventRecord(0);
  MEMORY[0x28223BE20](v8);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25424D8B8();
  v60 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v59 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = type metadata accessor for EventRecord.DecodedEvent(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = *(a2 + 2);
  v22 = *(a2 + 1);
  v53 = v20;
  LOBYTE(v64[0]) = v20;
  v64[1] = v22;
  v64[2] = v21;
  static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(v64, 0, v19);
  if (v5)
  {
    (*(v12 + 8))(a1, v11);
    return sub_254134D04(v22, v21);
  }

  else
  {
    v48 = 0;
    v46 = v12;
    v45 = *(v12 + 16);
    v50 = a1;
    v45(v16, a1, v11);
    EventRecord.DecodedEvent.anyEvent.getter(v64);
    v51 = v8;
    v25 = v65;
    v24 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    (*(v24 + 40))(v25, v24);
    EventRecord.DecodedEvent.anyEvent.getter(v61);
    v26 = v62;
    v27 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v28 = *(v27 + 32);
    v52 = v22;
    v29 = v59;
    v30 = v26;
    v31 = v51;
    v28(v30, v27);
    sub_254140660(v52, v21);
    v32 = EventRecord.DecodedEvent.tags.getter();
    v33 = v55;
    v47 = v16;
    v34 = v16;
    v35 = v45;
    v45(v55, v34, v11);
    v36 = v33 + v31[5];
    v49 = v11;
    v35(v36, v67, v11);
    v37 = v57;
    v38 = v29;
    v39 = v52;
    v40 = v54;
    (*(v60 + 16))(v33 + v31[6], v38, v54);
    *(v33 + v31[7]) = v53;
    v41 = (v33 + v31[8]);
    *v41 = v39;
    v41[1] = v21;
    *(v33 + v31[9]) = v32;
    if (v56)
    {
      type metadata accessor for Configuration();
      v37 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
    }

    sub_254134D04(v39, v21);
    v42 = *(v46 + 8);
    v43 = v49;
    v42(v50, v49);
    (*(v60 + 8))(v59, v40);
    v42(v67, v43);
    v42(v47, v43);
    sub_2541E9064(v19, type metadata accessor for EventRecord.DecodedEvent);
    *(v33 + v31[10]) = v37;
    sub_2541E90C4(v33, v58, type metadata accessor for EventRecord);
    __swift_destroy_boxed_opaque_existential_1(v61);
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }
}

uint64_t EventRecord.DecodedEvent.anyEvent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SomeEvent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EventRecord.DecodedEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v2, v9, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a1[3] = type metadata accessor for FakeEvent(0);
    a1[4] = sub_2541E9F08(&qword_27F5BA250, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_2541E90C4(v9, boxed_opaque_existential_1, type metadata accessor for FakeEvent);
  }

  else
  {
    sub_2541E90C4(v9, v6, type metadata accessor for SomeEvent);
    sub_2541DA834(v17);
    v12 = v18;
    v13 = v19;
    v14 = __swift_project_boxed_opaque_existential_1(v17, v18);
    a1[3] = v12;
    a1[4] = *(v13 + 8);
    v15 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v12 - 8) + 16))(v15, v14, v12);
    sub_2541E9064(v6, type metadata accessor for SomeEvent);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }
}

uint64_t EventRecord.DecodedEvent.tags.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FakeEvent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SomeEvent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventRecord.DecodedEvent(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v1, v10, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2541E90C4(v10, v4, type metadata accessor for FakeEvent);
    v11 = FakeEvent.tags.getter();
    sub_2541E9064(v4, type metadata accessor for FakeEvent);
  }

  else
  {
    sub_2541E90C4(v10, v7, type metadata accessor for SomeEvent);
    sub_2541DA834(v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = (*(v13 + 48))(v12, v13);
    sub_2541E9064(v7, type metadata accessor for SomeEvent);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

uint64_t EventRecord.DataType.init(fakeEvent:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541E9064(a1, type metadata accessor for FakeEvent);
  *a2 = 7;
  return result;
}

uint64_t EventRecord.DataType.init(someEvent:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SomeEvent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      result = sub_2541E9064(a1, type metadata accessor for SomeEvent);
      v12 = 8;
    }

    else
    {
      sub_2541E90C4(a1, v6, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v14 = swift_getEnumCaseMultiPayload();
      result = sub_2541E9064(v6, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v12 = v14 + 9;
    }
  }

  else
  {
    sub_2541E90C4(a1, v9, type metadata accessor for SomeAccessoryEvent);
    v13 = swift_getEnumCaseMultiPayload();
    result = sub_2541E9064(v9, type metadata accessor for SomeAccessoryEvent);
    v12 = byte_25425E127[v13];
  }

  *a2 = v12;
  return result;
}

uint64_t sub_2541E6374@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for LockEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5B8E98, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for LockEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E66A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for ContactSensorEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for ContactSensorEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E69D4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for DoorEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BB2D0, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for DoorEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E6D04@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for GarageDoorEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for GarageDoorEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E7034@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for SecuritySystemEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for SecuritySystemEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E7364@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for SmokeDetectorEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for SmokeDetectorEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E7694@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for WindowEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BB1A8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for WindowEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E79C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for HomeActivityStateEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for HomeActivityStateEvent);
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}