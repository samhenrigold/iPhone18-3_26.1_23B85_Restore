unsigned __int8 *sub_26809D10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2680B41AC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26809D710(result, v5);
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
      result = sub_2680B434C();
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

uint64_t sub_26809D6A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249148, &qword_2680B5380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26809D710(uint64_t a1, uint64_t a2)
{
  v2 = sub_26809D77C();
  v6 = sub_26809D7B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26809D7B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2680B42BC();
    if (!v9 || (v10 = v9, v11 = sub_26809D910(v9, 0), v12 = sub_26809D980(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2680B40FC();

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
      return sub_2680B40FC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2680B434C();
LABEL_4:

  return sub_2680B40FC();
}

void *sub_26809D910(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249168, &qword_2680B53A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_26809D980(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_26809DB90(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2680B415C();
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
          result = sub_2680B434C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26809DB90(v12, a6, a7);
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

    result = sub_2680B413C();
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

unint64_t sub_26809DB90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2680B419C();
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
    v5 = MEMORY[0x26D60FCE0](15, a1 >> 16);
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

unint64_t sub_26809DC0C()
{
  result = qword_280249178;
  if (!qword_280249178)
  {
    sub_268087C68(255, &unk_281318F50, 0x277CCAC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249178);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_44()
{
}

__n128 OUTLINED_FUNCTION_47(__n128 *a1)
{
  result = *(v1 - 256);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58()
{
}

void OUTLINED_FUNCTION_59()
{
  v2 = *(v0 - 288);
}

uint64_t sub_26809DDA4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_268093DAC(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26809DE54@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  a2(0);
  if (v7)
  {
    OUTLINED_FUNCTION_33();
    sub_26808CDD4(a1 + v8, a4, a3);
  }

  OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_26809DF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  if (v4)
  {
    OUTLINED_FUNCTION_33();
    sub_26809F7D4(a1 + v5, a2);
  }

  OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_26809DFD8(uint64_t a1)
{
  v2 = sub_2680B2FCC();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = __OFSUB__(a1, 1);
  v10 = a1 - 1;
  if (v9)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = *(sub_2680B31DC() + 16);

    if (v10 < v11)
    {
      if (v10 < *(sub_2680B31DC() + 16))
      {
        OUTLINED_FUNCTION_33();
        (*(v4 + 16))(v8, v12 + v13 + *(v4 + 72) * v10, v2);

        sub_2680B2FAC();
        (*(v4 + 8))(v8, v2);
        return;
      }

      goto LABEL_8;
    }
  }
}

void *static MatchingSpanUtils.utf16CodeUnitsToCodePointsMapping(_:)(uint64_t a1, uint64_t a2)
{

  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_2680B412C();
    if (!v5)
    {

      return v4;
    }

    v6 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = OUTLINED_FUNCTION_30_0();
    if (__OFADD__(v4[2], (v8 & 1) == 0))
    {
      break;
    }

    v9 = v7;
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491A0, &qword_2680B53E0);
    if (sub_2680B43AC())
    {
      v11 = sub_268093DAC(v3);
      if ((v10 & 1) != (v12 & 1))
      {
        goto LABEL_41;
      }

      v9 = v11;
    }

    v4 = v28;
    if (v10)
    {
      *(v28[7] + 8 * v9) = v2;
    }

    else
    {
      OUTLINED_FUNCTION_22_0(&v28[v9 >> 6]);
      *(v28[6] + 8 * v9) = v3;
      *(v28[7] + 8 * v9) = v2;
      v13 = v28[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_40;
      }

      v28[2] = v15;
    }

    if ((v6 & 0x1000000000000000) != 0)
    {
      v16 = sub_2680B416C();
    }

    else
    {
      v16 = sub_2680B417C();
    }

    v17 = v16;

    v18 = v17 - 1;
    if (v17 < 1)
    {
      goto LABEL_37;
    }

    if (v17 != 1)
    {
      while (v18)
      {
        if (v3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_33;
        }

        ++v3;
        swift_isUniquelyReferenced_nonNull_native();
        v19 = OUTLINED_FUNCTION_30_0();
        v21 = v20;
        if (__OFADD__(v4[2], (v20 & 1) == 0))
        {
          goto LABEL_34;
        }

        v22 = v19;
        if (sub_2680B43AC())
        {
          v23 = sub_268093DAC(v3);
          if ((v21 & 1) != (v24 & 1))
          {
            goto LABEL_41;
          }

          v22 = v23;
        }

        v4 = v28;
        if (v21)
        {
          *(v28[7] + 8 * v22) = v2;
        }

        else
        {
          OUTLINED_FUNCTION_22_0(&v28[v22 >> 6]);
          *(v28[6] + 8 * v22) = v3;
          *(v28[7] + 8 * v22) = v2;
          v25 = v28[2];
          v14 = __OFADD__(v25, 1);
          v26 = v25 + 1;
          if (v14)
          {
            goto LABEL_35;
          }

          v28[2] = v26;
        }

        if (!--v18)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

LABEL_26:
    v14 = __OFADD__(v2++, 1);
    if (v14)
    {
      goto LABEL_38;
    }

    v14 = __OFADD__(v3++, 1);
    if (v14)
    {
      goto LABEL_39;
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
  result = sub_2680B44AC();
  __break(1u);
  return result;
}

uint64_t static MatchingSpanUtils.getUnicodeScalarIndexes(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2680B2FCC();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = sub_2680B332C();
  v12 = *(sub_2680B31DC() + 16);

  if (v12 <= v11)
  {
    return 0;
  }

  result = sub_2680B31DC();
  if (*(result + 16) <= v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    (*(v6 + 16))(v10, v14 + v15 + *(v6 + 72) * v11, v4);

    v16 = sub_2680B2FBC();
    (*(v6 + 8))(v10, v4);
    if (v16 == -1)
    {
      return 0;
    }

    v17 = sub_2680B32FC();
    sub_26809DFD8(v17);
    if (v18 == -1)
    {
      return 0;
    }

    v19 = v18;
    v20 = sub_26809DDA4(v16, a3);
    if (v21)
    {
      return 0;
    }

    v22 = v20;
    result = sub_26809DDA4(v19 - 1, a3);
    if (v23)
    {
      return 0;
    }

    if (!__OFADD__(result, 1))
    {
      return v22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26809E574(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 < 0 || a2 < 0 || a2 < a1)
  {
    return v2;
  }

  sub_2680B31BC();
  sub_2680B31BC();

  sub_2680B31BC();

  OUTLINED_FUNCTION_19_0();
  v3 = sub_2680B418C();
  v5 = v4;

  if (v5)
  {
    return 0;
  }

  sub_2680B31BC();
  sub_2680B31BC();

  sub_2680B31BC();

  OUTLINED_FUNCTION_19_0();
  v6 = sub_2680B418C();
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  result = sub_2680B31BC();
  if (v6 >> 14 >= v3 >> 14)
  {
    v10 = sub_2680B41BC();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v2 = MEMORY[0x26D60FC80](v10, v12, v14, v16);

    return v2;
  }

  __break(1u);
  return result;
}

void static MatchingSpanUtils.trailingAdjacent(_:_:usingTokens:)()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_11_0();
  v0 = sub_2680B2FCC();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6();
  v6 = v5 - v4;
  v7 = sub_2680B31DC();
  v8 = sub_2680B32FC();
  if (v8 != sub_2680B332C())
  {
    v9 = sub_2680B32FC();
    if (sub_2680B332C() >= v9)
    {
      v10 = sub_2680B32FC();
      v11 = *(v7 + 16);
      if (v11 != v10)
      {
        if (v11 < sub_2680B32FC() || v11 <= sub_2680B332C())
        {

          v0 = sub_2680B425C();
          if (qword_2813194A0 != -1)
          {
LABEL_16:
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v15 = off_2813194A8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_2680B5360;
          v17 = sub_2680B31BC();
          v19 = v18;
          *(v16 + 56) = MEMORY[0x277D837D0];
          *(v16 + 64) = sub_26808C1E4();
          *(v16 + 32) = v17;
          *(v16 + 40) = v19;
          v20 = sub_2680B32FC();
          v21 = MEMORY[0x277D84CC0];
          v22 = MEMORY[0x277D84D30];
          *(v16 + 96) = MEMORY[0x277D84CC0];
          *(v16 + 104) = v22;
          *(v16 + 72) = v20;
          v23 = sub_2680B332C();
          *(v16 + 136) = v21;
          *(v16 + 144) = v22;
          *(v16 + 112) = v23;
          sub_2680B406C(v0, &dword_268086000, v15, "Spans outside of TokenChain: %@. First end index: %d, Second start index: %d", 76, 2, v16);
        }

        else
        {
          v12 = sub_2680B32FC();
          while (v12 < sub_2680B332C())
          {
            if (v12 >= *(v7 + 16))
            {
              __break(1u);
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_33();
            (*(v2 + 16))(v6, v7 + v13 + *(v2 + 72) * v12, v0);
            v14 = sub_2680B2F9C();
            (*(v2 + 8))(v6, v0);
            ++v12;
            if (v14)
            {
              break;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_53();
}

char *sub_26809E9D0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

void sub_26809EA84()
{
  OUTLINED_FUNCTION_26_1();
  if (v3 && (v4 = OUTLINED_FUNCTION_24(), __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), OUTLINED_FUNCTION_9(), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_6_2();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_24();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_6_2();

    swift_arrayInitWithTakeFrontToBack();
  }
}

unint64_t sub_26809EB44(uint64_t a1, uint64_t a2)
{
  sub_2680B452C();
  sub_2680B410C();
  v4 = sub_2680B454C();

  return sub_26809EC04(a1, a2, v4);
}

unint64_t sub_26809EBBC(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x26D6100A0](*(v1 + 40), a1, 4);

  return sub_26809ECB8(v2, v3);
}

unint64_t sub_26809EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2680B447C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26809ECB8(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_26809ED18()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491B8, &qword_2680B5410);
    v9 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_26809EDEC()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_280249198, &unk_2680B53D0);
  OUTLINED_FUNCTION_11_0();
  sub_2680B33EC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_1_2(v8);
    sub_26808B38C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809EEC8()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491D0, &qword_2680B5428);
  OUTLINED_FUNCTION_11_0();
  sub_2680B3D1C();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_1_2(v8);
    sub_26808B38C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809EFA4()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491D8, &qword_2680B5430);
  OUTLINED_FUNCTION_11_0();
  sub_2680B307C();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_1_2(v8);
    sub_26808B38C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F080()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491E0, &qword_2680B5438);
  OUTLINED_FUNCTION_11_0();
  sub_2680B35EC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_1_2(v8);
    sub_26808B38C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F15C()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491C8, &qword_2680B5420);
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for OverrideMatchResultAndParse(v8);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_1_2(v9);
    sub_26808B38C(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F238()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_26809F474(*(v0 + 16), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    OUTLINED_FUNCTION_1_2(v7);
    sub_26809EA84();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F308()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_280249210, &qword_2680B5468);
  OUTLINED_FUNCTION_11_0();
  sub_2680B30CC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_1_2(v8);
    sub_26808B38C(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void *sub_26809F3E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491C0, &qword_2680B5418);
  v4 = OUTLINED_FUNCTION_32_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_14_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_26809F474(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249208, &qword_2680B5460);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MatchingSpanUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MatchingSpanUtils(_BYTE *result, int a2, int a3)
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

void sub_26809F688(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = a1 - a2;
  if (__OFSUB__(0, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2680ACB64(v4 - v5, 1);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  swift_arrayDestroy();
  if (!v5)
  {
LABEL_10:
    *v2 = v7;
    return;
  }

  if (__OFSUB__(*(v7 + 16), a2))
  {
    goto LABEL_16;
  }

  sub_26809EA84();
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, v6);
  v10 = v8 - v5;
  if (!v9)
  {
    *(v7 + 16) = v10;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_26809F7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_268093DAC(v0);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_allocObject();
}

void *sub_26809F89C()
{
  sub_26809F900();
  result = sub_2680B429C();
  off_2813194A8 = result;
  return result;
}

unint64_t sub_26809F900()
{
  result = qword_281319308;
  if (!qword_281319308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281319308);
  }

  return result;
}

id static ParseOverride.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2680B40BC();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_26809F9BC()
{
  result = qword_280249240;
  if (!qword_280249240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280249248, &qword_2680B5498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249240);
  }

  return result;
}

uint64_t sub_26809FA38@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 creation];
  if (v3)
  {
    v4 = v3;
    sub_2680B2E7C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2680B2E9C();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_26809FAB8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26809FDFC(a1, &v10 - v5);
  v7 = *a2;
  v8 = sub_2680B2E9C();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_2680B2E5C();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setCreation_];
}

void sub_26809FBBC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_2(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2680B40CC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_26809FC1C()
{
  OUTLINED_FUNCTION_1_3();
  if (v2)
  {
    v3 = sub_2680B40BC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v1 *v0];
}

void sub_26809FC80(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_2(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2680B2E4C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_26809FCE0()
{
  OUTLINED_FUNCTION_1_3();
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2680B2E2C();
  }

  v4 = v3;
  [v1 *v0];
}

uint64_t sub_26809FD4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26809FE6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26809FDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26809FE6C(void *a1)
{
  v1 = [a1 id];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2680B40CC();

  return v3;
}

uint64_t Array<A>.previousTurns.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0;
  }

  v2 = sub_2680A01E0(1uLL, v1, a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {
LABEL_3:
    sub_2680A0100(v2, v4, v6, v8);
    v10 = v9;
LABEL_11:
    swift_unknownObjectRelease();
    return v10;
  }

  sub_2680B448C();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return v10;
}

uint64_t Array<A>.currentTurnLocale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2680B3E1C();
    return Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(a2);
  }

  else
  {
    v4 = sub_2680B2F5C();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t Array<A>.currentTurnUtterance.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_2680B3E1C();
  return sub_2680B3E0C();
}

void sub_2680A0100(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_26809F44C((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_2680B3E1C();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

unint64_t sub_2680A01E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_2680B3E1C();
  }

LABEL_10:
  __break(1u);
  return result;
}

BOOL sub_2680A0288()
{
  v0 = sub_2680B324C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2680B313C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2680B3DCC();
  sub_2680B312C();
  (*(v5 + 8))(v7, v4);
  sub_2680B3DFC();
  sub_268094024();
  v9 = v8;

  (*(v1 + 8))(v3, v0);
  return (v9 & 1) == 0;
}

uint64_t sub_2680A0460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2680A04C8(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_2680B432C();
    v2 = "rride is unspecified.";
    v3 = 0xD000000000000015;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_2680B432C();
    v2 = "de is unspecified.";
    v3 = 0xD000000000000012;
LABEL_5:
    MEMORY[0x26D60FCB0](v3, v2 | 0x8000000000000000);
    v4 = sub_2680B445C();
    MEMORY[0x26D60FCB0](v4);

    MEMORY[0x26D60FCB0](0xD000000000000033, 0x80000002680B66E0);
    return 0;
  }

  if (a1)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000025;
  }
}

unint64_t sub_2680A060C(uint64_t a1, char a2)
{
  result = 0xD00000000000005DLL;
  if (a2 && (a2 == 1 || a1))
  {
    return 0xD000000000000057;
  }

  return result;
}

uint64_t sub_2680A06D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249278, &qword_2680B54F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v16 - v2;
  v4 = sub_2680B3B8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  [v0 namespace];
  sub_2680B3B6C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26808C12C(v3, &qword_280249278, &qword_2680B54F8);
    v11 = [v0 namespace];
    sub_2680A0E58();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 104))(v8, *MEMORY[0x277D5DCC8], v4);
    sub_2680A0EAC(qword_2813192B8, MEMORY[0x277D5DCD8], MEMORY[0x277D5DCE0]);
    sub_2680B41CC();
    sub_2680B41CC();
    v14 = *(v5 + 8);
    v14(v8, v4);
    if (v16[1] == v16[0])
    {
      sub_2680A0E58();
      swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 2;
      swift_willThrow();
    }

    return (v14)(v10, v4);
  }
}

uint64_t sub_2680A09A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249260, &qword_2680B54F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v16 - v2;
  v4 = sub_2680B3B5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  [v0 source];
  sub_2680B3B3C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26808C12C(v3, &qword_280249260, &qword_2680B54F0);
    v11 = [v0 source];
    sub_2680A0E58();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 104))(v8, *MEMORY[0x277D5DCB0], v4);
    sub_2680A0EAC(&qword_280249270, MEMORY[0x277D5DCB8], MEMORY[0x277D5DCC0]);
    sub_2680B41CC();
    sub_2680B41CC();
    v14 = *(v5 + 8);
    v14(v8, v4);
    if (v16[3] == v16[1])
    {
      sub_2680A0E58();
      swift_allocError();
      *v15 = 1;
      *(v15 + 8) = 2;
      swift_willThrow();
    }

    return (v14)(v10, v4);
  }
}

uint64_t sub_2680A0CEC(SEL *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ParseOverride();
  if (objc_msgSendSuper2(&v7, *a1, v8))
  {
    v4 = v8[0];
    result = sub_2680A06D4();
    if (!v2)
    {
      return sub_2680A09A0();
    }
  }

  else
  {
    v6 = v8[0];
    sub_2680B2E1C();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2680A0DD4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

unint64_t sub_2680A0E58()
{
  result = qword_280249268;
  if (!qword_280249268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249268);
  }

  return result;
}

uint64_t sub_2680A0EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s15ValidationErrorOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t _s15ValidationErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2680A0F8C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2680A0FA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

BOOL sub_2680A0FD0(uint64_t a1)
{
  sub_2680B32EC();
  v1 = sub_268098390();

  return v1;
}

uint64_t sub_2680A1050(uint64_t a1, uint64_t a2)
{
  sub_2680B32DC();
  sub_2680913A4();
  return sub_2680B40AC() & 1;
}

uint64_t sub_2680A1120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2680B452C();
  sub_2680B410C();
  MEMORY[0x26D6100D0](a3);
  return sub_2680B454C();
}

uint64_t sub_2680A11A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2680A11E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2680A1234()
{
  result = qword_281319338;
  if (!qword_281319338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319338);
  }

  return result;
}

uint64_t sub_2680A129C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249140, &qword_2680B52C8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281319250 = result;
  return result;
}

uint64_t static SiriNLOverridePrimaryStore.getWeakSharedTrieStore()(uint64_t a1)
{
  if (qword_281319248 != -1)
  {
    a1 = OUTLINED_FUNCTION_9_2(&qword_281319248);
  }

  v1 = qword_281319250;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_17_1();
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_2680A1540(v3, &v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_2680A13A8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281319230 != -1)
  {
    swift_once();
  }

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t SiriNLOverridePrimaryStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SiriNLOverridePrimaryStore.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void *sub_2680A1514@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_26809A11C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_2680A155C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26808A6DC(a1, a2);
  }
}

uint64_t UtteranceRuleMatchResult.init(matched:comparisonType:allUdaSpanNodes:textCheckingResult:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  v11 = matched[6];
  *a5 = a1;
  *&a5[v11] = a3;
  v12 = matched[5];
  sub_2680B37CC();
  OUTLINED_FUNCTION_9();
  result = (*(v13 + 32))(&a5[v12], a2);
  *&a5[matched[7]] = a4;
  return result;
}

uint64_t TurnInputRuleMatchResult.init(matched:utteranceRuleMatchResult:userDialogActs:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  v9 = *(matched + 24);
  *a4 = a1;
  result = sub_2680A16FC(a2, &a4[*(matched + 20)]);
  *&a4[v9] = a3;
  return result;
}

uint64_t sub_2680A16FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680A1778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriNLOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OverrideMatchResult.turnInputMatchResults.getter()
{
  type metadata accessor for OverrideMatchResult(0);
}

uint64_t OverrideMatchResult.userDialogActs.getter()
{
  type metadata accessor for OverrideMatchResult(0);
}

uint64_t OverrideMatchResult.userDialogActs.setter()
{
  v2 = OUTLINED_FUNCTION_10_1();
  v3 = *(type metadata accessor for OverrideMatchResult(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*OverrideMatchResult.userDialogActs.modify())()
{
  v0 = OUTLINED_FUNCTION_10_1();
  type metadata accessor for OverrideMatchResult(v0);
  return nullsub_1;
}

uint64_t OverrideMatchResult.getPatchedUserParse(turnInputAndPreprocessing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a1;
  v159 = a2;
  v134 = sub_2680B31FC();
  OUTLINED_FUNCTION_4();
  v133 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v131 = v6 - v5;
  OUTLINED_FUNCTION_21();
  v137 = sub_2680B37CC();
  OUTLINED_FUNCTION_4();
  v136 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v135 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x28223BE20](v12);
  v152 = &v125 - v13;
  v14 = OUTLINED_FUNCTION_21();
  matched = type metadata accessor for UtteranceRuleMatchResult(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v156 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492D0, &qword_2680B5718);
  v19 = OUTLINED_FUNCTION_7(v18);
  MEMORY[0x28223BE20](v19);
  v151 = &v125 - v20;
  v21 = OUTLINED_FUNCTION_21();
  v150 = type metadata accessor for TurnInputRuleMatchResult(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v155 = v24 - v23;
  OUTLINED_FUNCTION_21();
  v149 = sub_2680B2EBC();
  OUTLINED_FUNCTION_4();
  v147 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6();
  v145 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492D8, &unk_2680B5720);
  v30 = OUTLINED_FUNCTION_7(v29);
  MEMORY[0x28223BE20](v30);
  v146 = &v125 - v31;
  OUTLINED_FUNCTION_21();
  v148 = sub_2680B2F8C();
  OUTLINED_FUNCTION_4();
  v140 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20();
  v139 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  v138 = &v125 - v37;
  OUTLINED_FUNCTION_21();
  v143 = sub_2680B2FDC();
  OUTLINED_FUNCTION_4();
  v142 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6();
  v42 = v41 - v40;
  v43 = sub_2680B2FEC();
  OUTLINED_FUNCTION_4();
  v141 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6();
  v48 = v47 - v46;
  v157 = sub_2680B302C();
  OUTLINED_FUNCTION_4();
  v144 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_20();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v125 - v55;
  v57 = sub_2680B403C();
  v58 = OUTLINED_FUNCTION_7(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6();
  v59 = sub_2680B31AC();
  OUTLINED_FUNCTION_4();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_20();
  v130 = (v63 - v64);
  v66 = MEMORY[0x28223BE20](v65);
  MEMORY[0x28223BE20](v66);
  v158 = &v125 - v67;
  v68 = OUTLINED_FUNCTION_21();
  v69 = *(type metadata accessor for SiriNLOverride(v68) + 48);
  v153 = v2;
  v70 = (v2 + v69);
  v71 = v70[1];
  if (v71 >> 60 != 15)
  {
    v127 = v61;
    v75 = *v70;
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    sub_2680A155C(v75, v71);
    sub_26808A6DC(v75, v71);
    sub_2680B402C();
    sub_2680A278C();
    v128 = v75;
    v129 = v71;
    sub_2680B404C();
    v126 = *(v127 + 32);
    v126();
    v78 = *(sub_2680B30DC() + 16);

    if (v78)
    {
      sub_2680B301C();
      (*(v141 + 104))(v48, *MEMORY[0x277D5DAB0], v43);
      sub_2680B300C();
      (*(v142 + 104))(v42, *MEMORY[0x277D5DA80], v143);
      sub_2680B2FFC();
      v79 = v144;
      v80 = v157;
      (*(v144 + 16))(v53, v56, v157);
      sub_2680B319C();
      v81 = v145;
      sub_2680B2EAC();
      v82 = v146;
      sub_2680B3EAC();
      (*(v147 + 8))(v81, v149);
      v83 = v148;
      if (__swift_getEnumTagSinglePayload(v82, 1, v148) == 1)
      {
        (*(v79 + 8))(v56, v80);
        sub_26808C18C(v82, &qword_2802492D8, &unk_2680B5720);
      }

      else
      {
        v87 = v140;
        v88 = v59;
        v89 = v79;
        v90 = v138;
        (*(v140 + 32))(v138, v82, v83);
        (*(v87 + 16))(v139, v90, v83);
        sub_2680B318C();
        (*(v87 + 8))(v90, v83);
        (*(v89 + 8))(v56, v157);
        v59 = v88;
      }

      v91 = v156;
      v92 = matched;
      v94 = v151;
      v93 = v152;
      v95 = v150;
      v96 = type metadata accessor for OverrideMatchResult(0);
      sub_26809DDFC(*(v153 + *(v96 + 24)), v94);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v95);
      v98 = v155;
      if (EnumTagSinglePayload == 1)
      {
        v99 = &qword_2802492D0;
        v100 = &qword_2680B5718;
        v101 = v94;
LABEL_22:
        sub_26808C18C(v101, v99, v100);
        v102 = sub_2680B425C();
        v103 = v159;
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2813194A0);
        }

        sub_2680B406C(v102, &dword_268086000, off_2813194A8, "Aborting – override match result is missing the first matched TurnInputRule", 77, 0, MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_6_4();
        v104 = OUTLINED_FUNCTION_7_4();
        v105(v104);
        v76 = v103;
        goto LABEL_9;
      }

      sub_2680A2854(v94, v155, type metadata accessor for TurnInputRuleMatchResult);
      sub_2680A27E4(v98 + *(v95 + 20), v93);
      if (__swift_getEnumTagSinglePayload(v93, 1, v92) == 1)
      {
        OUTLINED_FUNCTION_0_4();
        v99 = &qword_2802492C8;
        v100 = &qword_2680B5710;
        v101 = v93;
        goto LABEL_22;
      }

      sub_2680A2854(v93, v91, type metadata accessor for UtteranceRuleMatchResult);
      v106 = v136;
      v107 = v135;
      v108 = v137;
      (*(v136 + 16))(v135, v91 + *(v92 + 20), v137);
      v109 = (*(v106 + 88))(v107, v108);
      if (v109 == *MEMORY[0x277D5DBA0])
      {
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_1_5();
        v110 = v158;
        v111 = v159;
        v112 = v159;
LABEL_27:
        (v126)(v112, v110, v59);
        v76 = v111;
        v77 = 0;
        return __swift_storeEnumTagSinglePayload(v76, v77, 1, v59);
      }

      v113 = v158;
      if (v109 != *MEMORY[0x277D5DBA8])
      {
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_0_4();
        v120 = OUTLINED_FUNCTION_7_4();
        v121(v120);
        OUTLINED_FUNCTION_1_5();
        __swift_storeEnumTagSinglePayload(v159, 1, 1, v59);
        return (*(v136 + 8))(v135, v137);
      }

      if (*(v91 + *(v92 + 24)))
      {
        sub_2680B3E0C();
        v114 = v113;
        v115 = v131;
        sub_2680B3DDC();
        sub_26809B764();
        v117 = v116;

        (*(v133 + 8))(v115, v134);
        if (v117)
        {
          v118 = v127;
          v119 = v130;
          (*(v127 + 16))(v130, v114, v59);
          sub_2680B317C();
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_0_4();
          (*(v118 + 8))(v114, v59);
          OUTLINED_FUNCTION_1_5();
          v111 = v159;
          v112 = v159;
          v110 = v119;
        }

        else
        {
          OUTLINED_FUNCTION_0_4();
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_1_5();
          v111 = v159;
          v112 = v159;
          v110 = v113;
        }

        goto LABEL_27;
      }

      v122 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_0_4();
      v123 = OUTLINED_FUNCTION_7_4();
      v124(v123);
      OUTLINED_FUNCTION_1_5();
    }

    else
    {
      v84 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      sub_2680B406C(v84, &dword_268086000, off_2813194A8, "Aborting - Empty UDA in Override UserParse", 42, 2, MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_4();
      v85 = OUTLINED_FUNCTION_7_4();
      v86(v85);
    }

    v76 = v159;
LABEL_9:
    v77 = 1;
    return __swift_storeEnumTagSinglePayload(v76, v77, 1, v59);
  }

  v72 = v159;
  v73 = sub_2680B425C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2813194A0);
  }

  sub_2680B406C(v73, &dword_268086000, off_2813194A8, "Aborting – matched override has no attached UserParse", 56, 0, MEMORY[0x277D84F90]);

  return __swift_storeEnumTagSinglePayload(v72, 1, 1, v59);
}

unint64_t sub_2680A278C()
{
  result = qword_2813192E8;
  if (!qword_2813192E8)
  {
    sub_2680B31AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813192E8);
  }

  return result;
}

uint64_t sub_2680A27E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680A2854(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2680A28B4()
{
  v1 = OUTLINED_FUNCTION_10_1();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t TurnInputRuleMatchResult.utteranceRuleMatchResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TurnInputRuleMatchResult(0) + 20);

  return sub_2680A27E4(v3, a1);
}

void (*TurnInputRuleMatchResult.userDialogActs.modify())()
{
  v0 = OUTLINED_FUNCTION_10_1();
  type metadata accessor for TurnInputRuleMatchResult(v0);
  return nullsub_1;
}

uint64_t UtteranceRuleMatchResult.comparisonType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtteranceRuleMatchResult(0) + 20);
  sub_2680B37CC();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_2680A2A7C(uint64_t (*a1)(void))
{
  a1(0);
}

uint64_t sub_2680A2AD0()
{
  v2 = OUTLINED_FUNCTION_10_1();
  v4 = *(v3(v2) + 24);

  *(v1 + v4) = v0;
  return result;
}

void (*UtteranceRuleMatchResult.allUdaSpanNodes.modify())()
{
  v0 = OUTLINED_FUNCTION_10_1();
  type metadata accessor for UtteranceRuleMatchResult(v0);
  return nullsub_1;
}

void *UtteranceRuleMatchResult.textCheckingResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for UtteranceRuleMatchResult(0) + 28));
  v2 = v1;
  return v1;
}

void sub_2680A2B88(uint64_t a1)
{
  type metadata accessor for SiriNLOverride(319);
  if (v1 <= 0x3F)
  {
    sub_2680A2D78(319, &qword_281318F80, type metadata accessor for TurnInputRuleMatchResult, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2680A2ED0(319, &unk_281318F68, &qword_2802492E0, &qword_2680B5798);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2680A2C9C(uint64_t a1)
{
  sub_2680A2D78(319, &qword_2813193B0, type metadata accessor for UtteranceRuleMatchResult, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2680A2ED0(319, &unk_281318F68, &qword_2802492E0, &qword_2680B5798);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2680A2D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2680A2DDC(uint64_t a1)
{
  sub_2680B37CC();
  if (v1 <= 0x3F)
  {
    sub_2680A2ED0(319, &qword_281318F98, &qword_2802492E8, qword_2680B57E0);
    if (v2 <= 0x3F)
    {
      sub_2680A2D78(319, &qword_281318F48, sub_2680A2F24, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2680A2ED0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2680B42AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2680A2F24()
{
  result = qword_281319310;
  if (!qword_281319310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281319310);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_2680A28B4();
}

id ParseOverride.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ParseOverride.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ParseOverride();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ParseOverride.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParseOverride();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2680A3140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F8, &unk_2680B5848);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_2680B31AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OverrideMatchResult.getPatchedUserParse(turnInputAndPreprocessing:)(a2, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_26808C18C(v8, &qword_2802492F8, &unk_2680B5848);
    matched = type metadata accessor for OverrideMatchResultAndParse(0);
    v14 = a3;
    v15 = 1;
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v12, v8, v9);
    sub_2680A5EF0(a1, a3);
    v17 = type metadata accessor for OverrideMatchResultAndParse(0);
    v16((a3 + *(v17 + 20)), v12, v9);
    v14 = a3;
    v15 = 0;
    matched = v17;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, matched);
}

uint64_t OverrideResult.init(replaceMatchFromMatches:turnInputAndPreprocessing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F8, &unk_2680B5848);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_2680B31AC();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B8, &qword_2680B56A0);
  OUTLINED_FUNCTION_7(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  matched = type metadata accessor for OverrideMatchResult(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  Array<A>.oldestOverride.getter(a1);

  if (__swift_getEnumTagSinglePayload(v20, 1, matched) == 1)
  {
    sub_2680B3E1C();
    OUTLINED_FUNCTION_9();
    (*(v26 + 8))(a2);
    v27 = &qword_2802492B8;
    v28 = &qword_2680B56A0;
    v29 = v20;
  }

  else
  {
    sub_26808AC2C(v20, v25);
    OverrideMatchResult.getPatchedUserParse(turnInputAndPreprocessing:)(a2, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      v31 = *(v12 + 32);
      v31(v16, v9, v10);
      sub_2680B314C();
      sub_2680B3E1C();
      OUTLINED_FUNCTION_9();
      (*(v32 + 8))(a2);
      OUTLINED_FUNCTION_8_2();
      v31(a3, v16, v10);
      goto LABEL_7;
    }

    sub_2680B3E1C();
    OUTLINED_FUNCTION_9();
    (*(v30 + 8))(a2);
    OUTLINED_FUNCTION_8_2();
    v27 = &qword_2802492F8;
    v28 = &unk_2680B5848;
    v29 = v9;
  }

  sub_26808C18C(v29, v27, v28);
LABEL_7:
  type metadata accessor for OverrideResult(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2680A367C(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t))
{
  v6 = a1;

  a2(&v6);
  a3(v6);
}

void sub_2680A370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_1();
  v33 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_33_0();
  v15 = sub_2680B2E9C();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  v25 = type metadata accessor for SiriNLOverride(0);
  sub_26809FDFC(v8 + *(v25 + 36), v5);
  OUTLINED_FUNCTION_16_1(v5, 1);
  if (v29)
  {
    sub_26808C18C(v5, &qword_280249250, &qword_2680B54D8);
  }

  else
  {
    v32[1] = v4;
    v26 = *(v17 + 32);
    v26(v24, v5, v15);
    sub_26809FDFC(v33 + *(v25 + 36), v13);
    v27 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_16_1(v27, v28);
    if (v29)
    {
      (*(v17 + 8))(v24, v15);
      sub_26808C18C(v13, &qword_280249250, &qword_2680B54D8);
    }

    else
    {
      v26(v21, v13, v15);
      sub_2680B2E8C();
      v30 = *(v17 + 8);
      v31 = OUTLINED_FUNCTION_23_2();
      v30(v31);
      (v30)(v24, v15);
    }
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_2680A3A04(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_25_0();
      if (v8)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249208, &qword_2680B5460);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  OUTLINED_FUNCTION_19_2(v12);
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_22_2();
  v16 = _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (a1)
  {
    sub_26809EA5C(a4 + v18, v10, v15 + v18);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
  }
}

void sub_2680A3B84(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_25_0();
      if (v8)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249318, &qword_2680B58D8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  OUTLINED_FUNCTION_19_2(v12);
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_22_2();
  v16 = _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (a1)
  {
    sub_26809EA70(a4 + v18, v10, v15 + v18);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
  }
}

uint64_t sub_2680A3D04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2680A3D5C(uint64_t *a1)
{
  v2 = *(type metadata accessor for OverrideMatchResultAndParse(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2680A5E30(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_2680A40AC(v6, type metadata accessor for OverrideMatchResultAndParse);
  *a1 = v3;
}

void sub_2680A3E44(uint64_t *a1)
{
  v2 = *(type metadata accessor for OverrideMatchResult(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2680A5E90(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_2680A40AC(v6, type metadata accessor for OverrideMatchResult);
  *a1 = v3;
}

void sub_2680A3F34(uint64_t a1)
{
  sub_2680B31AC();
  if (v1 <= 0x3F)
  {
    sub_2680A3FA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2680A3FA8(uint64_t a1)
{
  if (!qword_281318F88)
  {
    sub_2680B31AC();
    v1 = sub_2680B420C();
    if (!v2)
    {
      atomic_store(v1, &qword_281318F88);
    }
  }
}

uint64_t sub_2680A4028(uint64_t a1)
{
  result = type metadata accessor for OverrideMatchResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_2680B31AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2680A40AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 8);
  if (sub_2680B444C() < v3)
  {
    if (v3 >= -1)
    {
      v4 = v3 / 2;
      if (v3 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v5 = sub_2680B41FC();
        *(v5 + 16) = v4;
      }

      v10 = a2(0);
      OUTLINED_FUNCTION_7(v10);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_32_1();
      sub_2680A4658(v11, v12, v13, v14);
      *(v5 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_32_1();
    sub_2680A4200(v6, v7, v8, v9);
  }
}

void sub_2680A4200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_1();
  v75 = v4;
  v84 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v79 = v18;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  v81 = v20;
  OUTLINED_FUNCTION_21();
  v80 = sub_2680B2E9C();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v76 = v24;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v64[-v26];
  v28 = v7(0);
  v29 = v27;
  v74 = v28;
  v30 = MEMORY[0x28223BE20](v28);
  v73 = &v64[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v64[-v33];
  MEMORY[0x28223BE20](v32);
  v83 = &v64[-v36];
  v66 = v13;
  if (v11 != v13)
  {
    v37 = *v9;
    v38 = *(v35 + 72);
    v77 = (v22 + 8);
    v78 = (v22 + 32);
    v39 = v37 + v38 * (v11 - 1);
    v71 = -v38;
    v72 = v37;
    v40 = v15 - v11;
    v65 = v38;
    v41 = v37 + v38 * v11;
    while (2)
    {
      v69 = v39;
      v70 = v11;
      v67 = v41;
      v68 = v40;
      v42 = v40;
      while (1)
      {
        v43 = v83;
        sub_2680A5EF0(v41, v83);
        sub_2680A5EF0(v39, v34);
        v44 = type metadata accessor for SiriNLOverride(0);
        v45 = v81;
        sub_26809FDFC(&v43[*(v44 + 36)], v81);
        v46 = OUTLINED_FUNCTION_18_1();
        v47 = v80;
        OUTLINED_FUNCTION_16_1(v46, v48);
        if (v49)
        {
          v63 = v45;
          goto LABEL_13;
        }

        v82 = v42;
        v50 = v45;
        v51 = *v78;
        (*v78)(v29, v50, v47);
        v52 = &v34[*(v44 + 36)];
        v53 = v79;
        sub_26809FDFC(v52, v79);
        OUTLINED_FUNCTION_16_1(v53, 1);
        if (v49)
        {
          break;
        }

        v54 = v34;
        v55 = v29;
        v56 = v76;
        v51(v76, v53, v47);
        v57 = sub_2680B2E8C();
        v58 = *v77;
        v59 = v56;
        v29 = v55;
        v34 = v54;
        (*v77)(v59, v47);
        v58(v29, v47);
        sub_2680A3D04(v54, v84);
        sub_2680A3D04(v83, v84);
        v60 = v82;
        if (v57 == -1)
        {
          if (!v72)
          {
            __break(1u);
            return;
          }

          v61 = v73;
          sub_26808AC2C(v41, v73);
          swift_arrayInitWithTakeFrontToBack();
          sub_26808AC2C(v61, v39);
          v39 += v71;
          v41 += v71;
          v62 = __CFADD__(v60, 1);
          v42 = v60 + 1;
          v34 = v54;
          if (!v62)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      (*v77)(v29, v47);
      v63 = v53;
LABEL_13:
      sub_26808C18C(v63, &qword_280249250, &qword_2680B54D8);
      sub_2680A3D04(v34, v84);
      sub_2680A3D04(v83, v84);
LABEL_14:
      v11 = v70 + 1;
      v39 = v69 + v65;
      v40 = v68 - 1;
      v41 = v67 + v65;
      if (v70 + 1 != v66)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_2680A4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_1();
  v198 = v6;
  v213 = v7;
  v9 = v8;
  v11 = v10;
  v203 = v4;
  v13 = v12;
  v15 = v14;
  v185 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v210 = v19;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_51();
  v212 = v21;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_51();
  v191 = v23;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_26_0();
  v195 = v25;
  OUTLINED_FUNCTION_21();
  v26 = sub_2680B2E9C();
  OUTLINED_FUNCTION_4();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v208 = v30;
  OUTLINED_FUNCTION_5_4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v182 - v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51();
  v186 = v35;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_33_0();
  v209 = v11(v37);
  OUTLINED_FUNCTION_4();
  v199 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  v192 = v40;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_51();
  v207 = v42;
  OUTLINED_FUNCTION_5_4();
  v44 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_51();
  v218 = v45;
  OUTLINED_FUNCTION_5_4();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v182 - v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_51();
  v202 = v50;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v51);
  v53 = MEMORY[0x28223BE20](&v182 - v52);
  v56 = &v182 - v54;
  v200 = v15;
  v57 = v15[1];
  if (v57 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_115:
    v219 = *v185;
    if (!*v185)
    {
      goto LABEL_157;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_151:
      i = sub_2680A5C2C(i);
    }

    v172 = i;
    v173 = (i + 16);
    for (i = *(i + 16); i >= 2; *v173 = i)
    {
      if (!*v200)
      {
        goto LABEL_154;
      }

      v174 = (v172 + 16 * i);
      v175 = *v174;
      v176 = &v173[2 * i];
      v177 = v176[1];
      v178 = v203;
      sub_2680A5418(*v200 + *(v199 + 72) * *v174, *v200 + *(v199 + 72) * *v176, *v200 + *(v199 + 72) * v177, v219, v9, v198, v9, v171, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v203 = v178;
      if (v178)
      {
        break;
      }

      if (v177 < v175)
      {
        goto LABEL_142;
      }

      if (i - 2 >= *v173)
      {
        goto LABEL_143;
      }

      *v174 = v175;
      v174[1] = v177;
      v179 = *v173 - i;
      if (*v173 < i)
      {
        goto LABEL_144;
      }

      i = *v173 - 1;
      memmove(v176, v176 + 2, 16 * v179);
    }

LABEL_125:

    OUTLINED_FUNCTION_26_2();
    return;
  }

  v58 = 0;
  v215 = (v28 + 8);
  i = MEMORY[0x277D84F90];
  v187 = v13;
  v219 = v34;
  v194 = v5;
  v183 = &v182 - v54;
  v217 = v26;
  v214 = v55;
  v201 = v49;
  v182 = v53;
  v216 = (v28 + 32);
  while (1)
  {
    v60 = v58 + 1;
    v188 = v58;
    if (v58 + 1 >= v57)
    {
      goto LABEL_39;
    }

    v61 = v58;
    v197 = v57;
    v62 = *v200;
    v63 = *(v199 + 72);
    v204 = v58 + 1;
    v64 = v62 + v63 * v60;
    OUTLINED_FUNCTION_37_0(v64);
    v28 = v182;
    sub_2680A5EF0(v62 + v63 * v61, v182);
    v65 = v203;
    sub_2680A370C(v56, v28, v66, v67);
    LODWORD(v205) = v68;
    v203 = v65;
    if (v65)
    {
      sub_2680A3D04(v28, v9);
      v180 = OUTLINED_FUNCTION_23_2();
      sub_2680A3D04(v180, v181);
      goto LABEL_125;
    }

    v184 = i;
    sub_2680A3D04(v28, v9);
    v69 = OUTLINED_FUNCTION_23_2();
    sub_2680A3D04(v69, v70);
    v71 = v61 + 2;
    i = v62 + v63 * (v61 + 2);
    v60 = v204;
    v26 = v217;
    v196 = v63;
    v72 = v197;
    while (1)
    {
      v73 = v71;
      if (v60 + 1 >= v72)
      {
        break;
      }

      v206 = v71;
      v204 = v60;
      v74 = v202;
      OUTLINED_FUNCTION_37_0(i);
      v75 = v201;
      sub_2680A5EF0(v64, v201);
      type metadata accessor for SiriNLOverride(0);
      OUTLINED_FUNCTION_29_0();
      v77 = v74 + v76;
      v78 = v195;
      sub_26809FDFC(v77, v195);
      OUTLINED_FUNCTION_17_3(v78, 1, v26);
      if (v85)
      {
        sub_26808C18C(v78, &qword_280249250, &qword_2680B54D8);
        v28 = 0;
      }

      else
      {
        v79 = v78;
        v80 = v194;
        v193 = *v216;
        (v193)(v194, v79, v26);
        v81 = v75 + *(v28 + 36);
        v82 = v191;
        sub_26809FDFC(v81, v191);
        v83 = OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_17_3(v83, v84, v26);
        if (v85)
        {
          (*v215)(v80, v26);
          sub_26808C18C(v82, &qword_280249250, &qword_2680B54D8);
          v28 = 0;
        }

        else
        {
          v86 = v186;
          (v193)(v186, v82, v26);
          v87 = sub_2680B2E8C();
          v88 = *v215;
          (*v215)(v86, v26);
          v88(v194, v26);
          v28 = v87 == -1;
        }

        v63 = v196;
      }

      v73 = v206;
      sub_2680A3D04(v201, v9);
      sub_2680A3D04(v202, v9);
      i += v63;
      v64 += v63;
      v60 = v204 + 1;
      v71 = v73 + 1;
      v72 = v197;
      if ((v205 & 1) != v28)
      {
        goto LABEL_17;
      }
    }

    v60 = v72;
LABEL_17:
    if ((v205 & 1) == 0)
    {
      v13 = v187;
LABEL_38:
      i = v184;
      goto LABEL_39;
    }

    v13 = v187;
    if (v60 < v188)
    {
      goto LABEL_150;
    }

    if (v188 >= v60)
    {
      goto LABEL_38;
    }

    v89 = v72 >= v73 ? v73 : v72;
    v90 = v63;
    v91 = v63 * (v89 - 1);
    v92 = v90 * v89;
    v93 = v188 * v90;
    v94 = v60;
    v95 = v188;
    do
    {
      if (v95 != --v94)
      {
        v96 = *v200;
        if (!*v200)
        {
          goto LABEL_155;
        }

        v97 = v60;
        v28 = v96 + v93;
        sub_26808AC2C(v96 + v93, v192);
        v98 = v93 < v91 || v28 >= v96 + v92;
        if (v98)
        {
          OUTLINED_FUNCTION_31_0();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v93 != v91)
        {
          OUTLINED_FUNCTION_31_0();
          swift_arrayInitWithTakeBackToFront();
        }

        sub_26808AC2C(v192, v96 + v91);
        v13 = v187;
        v60 = v97;
        v26 = v217;
      }

      ++v95;
      v91 -= v196;
      v92 -= v196;
      v93 += v196;
    }

    while (v95 < v94);
    i = v184;
    v34 = v219;
LABEL_39:
    v99 = v200[1];
    v100 = v212;
    if (v60 >= v99)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v60, v188))
    {
      goto LABEL_147;
    }

    if (v60 - v188 >= v13)
    {
LABEL_62:
      v101 = v188;
      goto LABEL_63;
    }

    v101 = v188;
    v102 = v188 + v13;
    if (__OFADD__(v188, v13))
    {
      goto LABEL_148;
    }

    if (v102 >= v99)
    {
      v102 = v200[1];
    }

    if (v102 < v188)
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v60 != v102)
    {
      break;
    }

LABEL_63:
    if (v60 < v101)
    {
      goto LABEL_146;
    }

    v204 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18();
      sub_26809ED18();
      i = v169;
    }

    v123 = *(i + 16);
    v124 = v123 + 1;
    v125 = v204;
    if (v123 >= *(i + 24) >> 1)
    {
      sub_26809ED18();
      v125 = v204;
      i = v170;
    }

    *(i + 16) = v124;
    v126 = i + 32;
    v127 = (i + 32 + 16 * v123);
    *v127 = v188;
    v127[1] = v125;
    v206 = *v185;
    if (!v206)
    {
      goto LABEL_156;
    }

    v128 = v26;
    if (v123)
    {
      while (1)
      {
        v129 = v124 - 1;
        v130 = (v126 + 16 * (v124 - 1));
        v131 = (i + 16 * v124);
        if (v124 >= 4)
        {
          break;
        }

        if (v124 == 3)
        {
          v132 = *(i + 32);
          v133 = *(i + 40);
          v142 = __OFSUB__(v133, v132);
          v134 = v133 - v132;
          v135 = v142;
LABEL_83:
          if (v135)
          {
            goto LABEL_133;
          }

          v147 = *v131;
          v146 = v131[1];
          v148 = __OFSUB__(v146, v147);
          v149 = v146 - v147;
          v150 = v148;
          if (v148)
          {
            goto LABEL_136;
          }

          v151 = v130[1];
          v152 = v151 - *v130;
          if (__OFSUB__(v151, *v130))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v149, v152))
          {
            goto LABEL_141;
          }

          if (v149 + v152 >= v134)
          {
            if (v134 < v152)
            {
              v129 = v124 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v124 < 2)
        {
          goto LABEL_135;
        }

        v154 = *v131;
        v153 = v131[1];
        v142 = __OFSUB__(v153, v154);
        v149 = v153 - v154;
        v150 = v142;
LABEL_98:
        if (v150)
        {
          goto LABEL_138;
        }

        v156 = *v130;
        v155 = v130[1];
        v142 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v142)
        {
          goto LABEL_140;
        }

        if (v157 < v149)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v129 - 1 >= v124)
        {
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
          goto LABEL_149;
        }

        if (!*v200)
        {
          goto LABEL_153;
        }

        v161 = i;
        v162 = (v126 + 16 * (v129 - 1));
        v163 = *v162;
        v164 = v126;
        v165 = v129;
        i = v126 + 16 * v129;
        v166 = *(i + 8);
        v167 = v203;
        sub_2680A5418(*v200 + *(v199 + 72) * *v162, *v200 + *(v199 + 72) * *i, *v200 + *(v199 + 72) * v166, v206, v9, v198, v9, v122, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
        v203 = v167;
        if (v167)
        {
          goto LABEL_125;
        }

        if (v166 < v163)
        {
          goto LABEL_128;
        }

        v28 = *(v161 + 16);
        if (v165 > v28)
        {
          goto LABEL_129;
        }

        *v162 = v163;
        v162[1] = v166;
        if (v165 >= v28)
        {
          goto LABEL_130;
        }

        v168 = v165;
        v124 = v28 - 1;
        memmove(i, (i + 16), 16 * (v28 - 1 - v168));
        i = v161;
        *(v161 + 16) = v28 - 1;
        v128 = v217;
        v34 = v219;
        v126 = v164;
        if (v28 <= 2)
        {
          goto LABEL_112;
        }
      }

      v136 = v126 + 16 * v124;
      v137 = *(v136 - 64);
      v138 = *(v136 - 56);
      v142 = __OFSUB__(v138, v137);
      v139 = v138 - v137;
      if (v142)
      {
        goto LABEL_131;
      }

      v141 = *(v136 - 48);
      v140 = *(v136 - 40);
      v142 = __OFSUB__(v140, v141);
      v134 = v140 - v141;
      v135 = v142;
      if (v142)
      {
        goto LABEL_132;
      }

      v143 = v131[1];
      v144 = v143 - *v131;
      if (__OFSUB__(v143, *v131))
      {
        goto LABEL_134;
      }

      v142 = __OFADD__(v134, v144);
      v145 = v134 + v144;
      if (v142)
      {
        goto LABEL_137;
      }

      if (v145 >= v139)
      {
        v159 = *v130;
        v158 = v130[1];
        v142 = __OFSUB__(v158, v159);
        v160 = v158 - v159;
        if (v142)
        {
          goto LABEL_145;
        }

        if (v134 < v160)
        {
          v129 = v124 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v57 = v200[1];
    v58 = v204;
    v13 = v187;
    v56 = v183;
    v26 = v128;
    if (v204 >= v57)
    {
      goto LABEL_115;
    }
  }

  v184 = i;
  v103 = *v200;
  v104 = *(v199 + 72);
  v105 = *v200 + v104 * (v60 - 1);
  v205 = -v104;
  v206 = v103;
  v106 = v188 - v60;
  v189 = v104;
  v107 = (v103 + v60 * v104);
  v211 = v9;
  v190 = v102;
LABEL_48:
  v204 = v60;
  v193 = v107;
  v196 = v106;
  v197 = v105;
  while (1)
  {
    v108 = v218;
    OUTLINED_FUNCTION_37_0(v107);
    v109 = v214;
    sub_2680A5EF0(v105, v214);
    type metadata accessor for SiriNLOverride(0);
    OUTLINED_FUNCTION_29_0();
    sub_26809FDFC(v108 + v110, v100);
    v111 = v217;
    OUTLINED_FUNCTION_17_3(v100, 1, v217);
    if (v85)
    {
      v121 = v100;
LABEL_58:
      sub_26808C18C(v121, &qword_280249250, &qword_2680B54D8);
      v9 = v211;
      sub_2680A3D04(v214, v211);
      sub_2680A3D04(v218, v9);
      goto LABEL_60;
    }

    v112 = v100;
    v113 = *v216;
    (*v216)(v34, v112, v111);
    v114 = v109 + *(v28 + 36);
    v28 = v210;
    sub_26809FDFC(v114, v210);
    v115 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v115, v116, v111);
    if (v85)
    {
      (*v215)(v34, v111);
      v121 = v28;
      v100 = v212;
      goto LABEL_58;
    }

    v117 = v208;
    v113(v208, v28, v111);
    v28 = sub_2680B2E8C();
    v118 = *v215;
    v119 = v117;
    v34 = v219;
    (*v215)(v119, v111);
    v118(v219, v111);
    v120 = v109;
    v9 = v211;
    sub_2680A3D04(v120, v211);
    sub_2680A3D04(v218, v9);
    if (v28 != -1)
    {
      v100 = v212;
LABEL_60:
      v60 = v204 + 1;
      v105 = v197 + v189;
      v106 = v196 - 1;
      v107 = &v193[v189];
      if (v204 + 1 == v190)
      {
        v60 = v190;
        i = v184;
        v26 = v217;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v206)
    {
      break;
    }

    v28 = v207;
    sub_26808AC2C(v107, v207);
    swift_arrayInitWithTakeFrontToBack();
    sub_26808AC2C(v28, v105);
    v105 += v205;
    v107 += v205;
    v98 = __CFADD__(v106++, 1);
    v100 = v212;
    if (v98)
    {
      goto LABEL_60;
    }
  }

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
}

void sub_2680A5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v149 = v26;
  v150 = v25;
  v28 = v27;
  v133 = v20;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v36 = OUTLINED_FUNCTION_7(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_51();
  v142 = v41;
  OUTLINED_FUNCTION_5_4();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v132 - v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_26_0();
  v148 = v46;
  OUTLINED_FUNCTION_21();
  v47 = sub_2680B2E9C();
  OUTLINED_FUNCTION_4();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v134 = v51;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_51();
  v136 = v53;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_51();
  v137 = v55;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_26_0();
  v146 = v57;
  v58 = OUTLINED_FUNCTION_21();
  v147 = v28(v58);
  v59 = MEMORY[0x28223BE20](v147);
  v60 = MEMORY[0x28223BE20](v59);
  v145 = &v132 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v132 - v63;
  MEMORY[0x28223BE20](v62);
  v67 = &v132 - v66;
  v69 = *(v68 + 72);
  if (!v69)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v70 = v32 - v34 == 0x8000000000000000 && v69 == -1;
  if (v70)
  {
    goto LABEL_73;
  }

  v71 = v30 - v32;
  if (v30 - v32 == 0x8000000000000000 && v69 == -1)
  {
    goto LABEL_74;
  }

  v135 = v39;
  a10 = v34;
  v152 = v150;
  v141 = (v49 + 32);
  v139 = v45;
  v140 = (v49 + 8);
  v73 = v71 / v69;
  v144 = v24;
  v74 = v69;
  if ((v32 - v34) / v69 < v71 / v69)
  {
    v142 = v64;
    v75 = (v32 - v34) / v69;
    v76 = v150;
    (v149)(v34, v75, v150);
    v145 = v76 + v75 * v74;
    v151 = v145;
    v138 = v30;
    v143 = v74;
    while (1)
    {
      if (v150 >= v145 || v32 >= v30)
      {
        goto LABEL_71;
      }

      sub_2680A5EF0(v32, v67);
      v78 = v142;
      OUTLINED_FUNCTION_37_0(v150);
      type metadata accessor for SiriNLOverride(0);
      OUTLINED_FUNCTION_29_0();
      v80 = v148;
      sub_26809FDFC(&v67[v79], v148);
      OUTLINED_FUNCTION_17_3(v80, 1, v47);
      if (v70)
      {
        goto LABEL_20;
      }

      v149 = v32;
      v81 = *v141;
      v82 = v146;
      (*v141)(v146, v148, v47);
      v83 = v78 + *(v76 + 36);
      v84 = v139;
      sub_26809FDFC(v83, v139);
      v85 = OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_3(v85, v86, v47);
      if (v70)
      {
        break;
      }

      v91 = v34;
      v92 = v137;
      v81(v137, v84, v47);
      v93 = sub_2680B2E8C();
      v94 = *v140;
      v95 = v92;
      v34 = v91;
      (*v140)(v95, v47);
      v94(v146, v47);
      v24 = v144;
      sub_2680A3D04(v78, v144);
      sub_2680A3D04(v67, v24);
      v32 = v149;
      v30 = v138;
      if (v93 == -1)
      {
        v89 = v143;
        v76 = &v149[v143];
        if (v34 < v149 || v34 >= v76)
        {
          OUTLINED_FUNCTION_14_3();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v34 != v149)
        {
          OUTLINED_FUNCTION_14_3();
          swift_arrayInitWithTakeBackToFront();
        }

        v32 += v89;
        goto LABEL_30;
      }

LABEL_21:
      v89 = v143;
      v76 = v150 + v143;
      if (v34 < v150 || v34 >= v76)
      {
        OUTLINED_FUNCTION_14_3();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v34 != v150)
      {
        OUTLINED_FUNCTION_14_3();
        swift_arrayInitWithTakeBackToFront();
      }

      v152 = v76;
      v150 = v76;
LABEL_30:
      v34 += v89;
      a10 = v34;
    }

    (*v140)(v82, v47);
    v80 = v84;
    v32 = v149;
    v24 = v144;
    v30 = v138;
LABEL_20:
    sub_26808C18C(v80, &qword_280249250, &qword_2680B54D8);
    v87 = OUTLINED_FUNCTION_23_2();
    sub_2680A3D04(v87, v88);
    sub_2680A3D04(v67, v24);
    goto LABEL_21;
  }

  v148 = v65;
  v139 = v47;
  v97 = v150;
  (v149)(v32, v71 / v69, v150);
  v98 = v97 + v73 * v74;
  v99 = -v74;
  v100 = v98;
  v137 = -v74;
LABEL_42:
  v149 = v32;
  v101 = v32 + v99;
  v102 = v30;
  v132 = v100;
  v103 = v100;
  v104 = v136;
  v143 = v101;
  while (1)
  {
    if (v98 <= v150)
    {
      a10 = v149;
      v151 = v103;
      goto LABEL_71;
    }

    if (v149 <= v34)
    {
      break;
    }

    v105 = v104;
    v146 = v102;
    v138 = v103;
    v106 = v98 + v99;
    v107 = v98 + v99;
    v108 = v145;
    sub_2680A5EF0(v107, v145);
    v109 = v148;
    sub_2680A5EF0(v101, v148);
    type metadata accessor for SiriNLOverride(0);
    OUTLINED_FUNCTION_29_0();
    v111 = v142;
    sub_26809FDFC(v108 + v110, v142);
    v112 = v139;
    OUTLINED_FUNCTION_16_1(v111, 1);
    if (v70)
    {
      v113 = v111;
    }

    else
    {
      v114 = *v141;
      (*v141)(v105, v111, v112);
      v115 = v109 + *(v101 + 36);
      v116 = v135;
      sub_26809FDFC(v115, v135);
      v117 = OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_16_1(v117, v118);
      if (!v119)
      {
        v122 = v134;
        v114(v134, v116, v112);
        v123 = sub_2680B2E8C();
        v124 = *v140;
        v125 = v122;
        v104 = v136;
        (*v140)(v125, v112);
        v124(v104, v112);
        v126 = v123 == -1;
        goto LABEL_52;
      }

      v120 = OUTLINED_FUNCTION_23_2();
      v121(v120);
      v113 = v116;
    }

    sub_26808C18C(v113, &qword_280249250, &qword_2680B54D8);
    v126 = 0;
    v104 = v105;
LABEL_52:
    v99 = v137;
    v127 = v146;
    v30 = &v146[v137];
    v24 = v144;
    sub_2680A3D04(v148, v144);
    sub_2680A3D04(v145, v24);
    if (v126)
    {
      if (v127 < v149 || v30 >= v149)
      {
        v32 = v143;
        OUTLINED_FUNCTION_14_3();
        swift_arrayInitWithTakeFrontToBack();
        v100 = v138;
      }

      else
      {
        v130 = v138;
        v100 = v138;
        v131 = v143;
        v32 = v143;
        if (v127 != v149)
        {
          OUTLINED_FUNCTION_10_2();
          swift_arrayInitWithTakeBackToFront();
          v32 = v131;
          v100 = v130;
        }
      }

      goto LABEL_42;
    }

    if (v127 < v98 || v30 >= v98)
    {
      OUTLINED_FUNCTION_10_2();
      swift_arrayInitWithTakeFrontToBack();
      v102 = &v127[v99];
      v98 = v106;
      v103 = v106;
      v101 = v143;
    }

    else
    {
      v103 = v106;
      v70 = v98 == v127;
      v102 = &v127[v99];
      v98 = v106;
      v101 = v143;
      if (!v70)
      {
        OUTLINED_FUNCTION_10_2();
        swift_arrayInitWithTakeBackToFront();
        v102 = &v127[v99];
        v98 = v106;
        v103 = v106;
      }
    }
  }

  a10 = v149;
  v151 = v132;
LABEL_71:
  sub_2680A5C40(&a10, &v152, &v151, v24);
  OUTLINED_FUNCTION_26_2();
}

void sub_2680A5C40(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_9();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_2680A5D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491B8, &qword_2680B5410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2680A5EF0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_52();
  v5(v4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_2680A5FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2680956CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2680A6018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26808DCA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2680A6044()
{
  if (qword_2813194B8 != -1)
  {
    swift_once();
  }

  if (qword_2813194D0 != -1)
  {
    swift_once();
  }

  v0 = dword_2813194C8;
  swift_beginAccess();
  v1 = off_2813194C0;
  if (*(off_2813194C0 + 2) && (v2 = sub_26809EBBC(v0), (v3 & 1) != 0))
  {
    v4 = *(v1[7] + v2);
    result = swift_endAccess();
  }

  else
  {
    result = swift_endAccess();
    v4 = 8;
  }

  byte_281319958 = v4;
  return result;
}

void sub_2680A612C()
{
  v0 = sub_2680B40BC();
  v1 = MGGetSInt32Answer();

  dword_2813194C8 = v1;
}

void *sub_2680A6180()
{
  result = sub_2680B407C();
  off_2813194C0 = result;
  return result;
}

uint64_t sub_2680A61E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249320, &qword_2680B58E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MobileGestalt.DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2680A649C()
{
  result = qword_280249328;
  if (!qword_280249328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249328);
  }

  return result;
}

void sub_2680A64F0()
{
  OUTLINED_FUNCTION_54();
  sub_2680B3AEC();
  OUTLINED_FUNCTION_4();
  v42 = v3;
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_45_0();
  sub_2680B3DBC();
  OUTLINED_FUNCTION_4();
  v40 = v5;
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v39 = v7 - v6;
  OUTLINED_FUNCTION_21();
  sub_2680B3D8C();
  OUTLINED_FUNCTION_4();
  v45 = v9;
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v44 = v11 - v10;
  OUTLINED_FUNCTION_21();
  sub_2680B38CC();
  OUTLINED_FUNCTION_4();
  v48 = v13;
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v47 = v15 - v14;
  OUTLINED_FUNCTION_21();
  v16 = sub_2680B341C();
  OUTLINED_FUNCTION_4();
  v50 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v22 = sub_2680B3BAC();
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6();
  v28 = v27 - v26;
  v29 = sub_2680B38FC();
  OUTLINED_FUNCTION_4();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6();
  v35 = v34 - v33;
  if (sub_2680B3A5C())
  {
    sub_2680B3ADC();
    sub_2680A8270();
    OUTLINED_FUNCTION_27_2();
    (*(v31 + 8))(v35, v29);
  }

  else if (sub_2680B3A6C())
  {
    sub_2680B3A3C();
    sub_2680A83C4();
    OUTLINED_FUNCTION_27_2();
    (*(v24 + 8))(v28, v22);
  }

  else if (sub_2680B3A2C())
  {
    sub_2680B3ABC();
    sub_2680A87F8();
    OUTLINED_FUNCTION_27_2();
    (*(v50 + 8))(v21, v16);
  }

  else
  {
    if (sub_2680B3A4C())
    {
      v36 = v47;
      sub_2680B3ACC();
      sub_2680A894C();
      OUTLINED_FUNCTION_27_2();
      v38 = v48;
      v37 = v49;
    }

    else if (sub_2680B3A9C())
    {
      v36 = v44;
      sub_2680B3A7C();
      sub_2680A8CFC();
      OUTLINED_FUNCTION_27_2();
      v38 = v45;
      v37 = v46;
    }

    else
    {
      if ((sub_2680B3AAC() & 1) == 0)
      {
        (*(v42 + 16))(v1, v0, v43);
        OUTLINED_FUNCTION_26();
        sub_2680B40DC();
        OUTLINED_FUNCTION_27_2();
        goto LABEL_14;
      }

      v36 = v39;
      sub_2680B3A8C();
      sub_2680A8E50();
      OUTLINED_FUNCTION_27_2();
      v38 = v40;
      v37 = v41;
    }

    (*(v38 + 8))(v36, v37);
  }

LABEL_14:
  OUTLINED_FUNCTION_53();
}

uint64_t sub_2680A692C(unsigned __int8 a1, char a2)
{
  v2 = 0x454E4F4850;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x454E4F4850;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 4473168;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4E414D4553524F48;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1398097242;
      break;
    case 4:
      v5 = 0x4F454D4143;
      break;
    case 5:
      v5 = 0x4843544157;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 5390659;
      break;
    case 7:
      v5 = 0x544952414752414DLL;
      v3 = 0xE900000000000041;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 4473168;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4E414D4553524F48;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1398097242;
      break;
    case 4:
      v2 = 0x4F454D4143;
      break;
    case 5:
      v2 = 0x4843544157;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 5390659;
      break;
    case 7:
      v2 = 0x544952414752414DLL;
      v6 = 0xE900000000000041;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    v8 = sub_2680B447C();
  }

  return v8 & 1;
}

uint64_t sub_2680A6B18(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0x7865547475706E69;
      v3 = 0xE900000000000074;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v4 = 0x656C61636F6CLL;
      break;
    case 3:
      v4 = 0x63617073656D616ELL;
      goto LABEL_11;
    case 4:
      v3 = 0xE600000000000000;
      v4 = 0x656372756F73;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v4 = 0x6E6F697461657263;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v4 = 0x64656C62616E65;
      break;
    case 7:
      v4 = 0x656469727265766FLL;
      v3 = 0xEA00000000006449;
      break;
    case 8:
      v4 = 0x7372615072657375;
LABEL_11:
      v3 = 0xE900000000000065;
      break;
    case 9:
      v4 = 0xD000000000000017;
      v3 = 0x80000002680B5E00;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v6 = 0x7865547475706E69;
      v5 = 0xE900000000000074;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x656C61636F6CLL;
      break;
    case 3:
      v6 = 0x63617073656D616ELL;
      goto LABEL_22;
    case 4:
      v5 = 0xE600000000000000;
      v6 = 0x656372756F73;
      break;
    case 5:
      v5 = 0xE800000000000000;
      v6 = 0x6E6F697461657263;
      break;
    case 6:
      v5 = 0xE700000000000000;
      v6 = 0x64656C62616E65;
      break;
    case 7:
      v6 = 0x656469727265766FLL;
      v5 = 0xEA00000000006449;
      break;
    case 8:
      v6 = 0x7372615072657375;
LABEL_22:
      v5 = 0xE900000000000065;
      break;
    case 9:
      v6 = 0xD000000000000017;
      v5 = 0x80000002680B5E00;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    v8 = sub_2680B447C();
  }

  return v8 & 1;
}

uint64_t sub_2680A6D80(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26808AE98(result, 1, sub_26809F238);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2680A6EA0()
{
  v0 = sub_2680B3AEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v41[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2680B311C();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v45 = &v41[-v8];
  v9 = sub_2680B3A1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v41[-v19];
  if (sub_2680B320C())
  {
    sub_2680B323C();
    v42 = sub_2680B39AC();
    v21 = *(v10 + 8);
    v21(v20, v9);
    if (v42 & 1) != 0 || (sub_2680B323C(), v22 = sub_2680B39BC(), v21(v18, v9), (v22))
    {
      sub_2680B323C();
      v23 = sub_2680B39AC();
      v21(v15, v9);
      if (v23)
      {
        sub_2680B323C();
        v42 = sub_2680B398C();
        v21(v18, v9);
      }

      else
      {
        v42 = 0;
      }

      v26 = v21;
      v27 = v44;
      sub_2680B323C();
      v28 = sub_2680B39BC();
      v26(v27, v9);
      if (v28)
      {
        sub_2680B323C();
        v29 = sub_2680B399C();
        v26(v18, v9);
        v25 = v47;
        if ((v42 & 1) == 0)
        {
          v24 = v29;
          goto LABEL_16;
        }
      }

      else
      {
        v25 = v47;
        if ((v42 & 1) == 0)
        {
          v24 = 0;
          goto LABEL_16;
        }
      }

      v24 = 1;
      goto LABEL_16;
    }

    v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = v47;
LABEL_16:
  if ((sub_2680B322C() & 1) != 0 && (v30 = v45, sub_2680B321C(), v31 = sub_2680B310C(), v32 = *(v25 + 8), v32(v30, v46), v33 = *(v31 + 16), , v33))
  {
    v34 = v24;
    v35 = v43;
    sub_2680B321C();
    v36 = sub_2680B310C();
    result = v32(v35, v46);
    v38 = 0;
    v39 = *(v36 + 16);
    while (v39 != v38)
    {
      if (v38 >= *(v36 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v36 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v38++, v0);
      v40 = sub_2680B3A5C();
      result = (*(v1 + 8))(v3, v0);
      if (v40)
      {

        return 1;
      }
    }

    if (v34)
    {
      return 1;
    }
  }

  else if (v24)
  {
    return 1;
  }

  return 0;
}

void sub_2680A7394()
{
  sub_2680B3EBC();
  v0 = MEMORY[0x26D60FA70]();
  v1 = sub_2680913FC(v0);
  if (!v1)
  {
LABEL_10:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
    sub_268099CC4();
    sub_2680B409C();

    return;
  }

  v2 = v1;
  v12 = MEMORY[0x277D84F90];
  sub_26808D0A8(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D60FED0](v3, v0);
      }

      else
      {
      }

      v10 = sub_2680B3F9C();
      v11 = v4;
      MEMORY[0x26D60FCB0](14906, 0xE200000000000000);
      v5 = sub_2680B3FAC();
      MEMORY[0x26D60FCB0](v5);

      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = OUTLINED_FUNCTION_27(v6);
        sub_26808D0A8(v9, v7 + 1, 1);
      }

      ++v3;
      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
    }

    while (v2 != v3);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2680A7590()
{
  v1 = sub_2680B35EC();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2680B3BEC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2680B3CCC();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2680B3B2C();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2680B345C();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v45 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2680B32CC();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v48 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2680B328C();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2680B3D5C();
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2680B30CC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2680B393C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B346C())
  {
    sub_2680B34FC();
    sub_2680B392C();
    (*(v24 + 8))(v26, v23);
LABEL_5:
    sub_2680A7394();
    v28 = v27;
    (*(v20 + 8))(v22, v19);
    return v28;
  }

  if (sub_2680B357C())
  {
    sub_2680B354C();
    sub_2680B3D4C();
    (*(v53 + 8))(v18, v16);
    goto LABEL_5;
  }

  if (sub_2680B347C())
  {
    sub_2680B359C();
    sub_2680B327C();
    v30 = v51;
    v29 = v52;
  }

  else if (sub_2680B348C())
  {
    v15 = v48;
    sub_2680B35BC();
    sub_2680B32BC();
    v30 = v49;
    v29 = v50;
  }

  else if (sub_2680B34BC())
  {
    v15 = v45;
    sub_2680B35DC();
    sub_2680B344C();
    v30 = v46;
    v29 = v47;
  }

  else if (sub_2680B352C())
  {
    v15 = v42;
    sub_2680B34AC();
    sub_2680B3B1C();
    v30 = v43;
    v29 = v44;
  }

  else if (sub_2680B356C())
  {
    v15 = v39;
    sub_2680B351C();
    sub_2680B3CBC();
    v30 = v40;
    v29 = v41;
  }

  else
  {
    if ((sub_2680B355C() & 1) == 0)
    {
      (*(v37 + 16))(v36, v0, v38);
      return sub_2680B40DC();
    }

    v15 = v33;
    sub_2680B34DC();
    sub_2680B3BDC();
    v30 = v34;
    v29 = v35;
  }

  (*(v30 + 8))(v15, v29);
  sub_2680A7394();
  v28 = v31;
  (*(v20 + 8))(v22, v19);
  return v28;
}

uint64_t sub_2680A7C7C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_2680B3BEC();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2680B3CCC();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2680B3B2C();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2680B345C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2680B32CC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2680B328C();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2680B3D5C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2680B393C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B346C())
  {
    sub_2680B34FC();
    v23 = v46;
    sub_2680B392C();
    (*(v20 + 8))(v22, v19);
    v24 = sub_2680B30CC();
    v25 = v23;
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  v26 = v46;
  if (sub_2680B357C())
  {
    sub_2680B354C();
    sub_2680B3D4C();
    (*(v16 + 8))(v18, v15);
LABEL_18:
    v24 = sub_2680B30CC();
    v25 = v26;
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  if (sub_2680B347C())
  {
    sub_2680B359C();
    sub_2680B327C();
    (*(v45 + 8))(v14, v12);
    goto LABEL_18;
  }

  if (sub_2680B348C())
  {
    sub_2680B35BC();
    sub_2680B32BC();
    v28 = v43;
    v27 = v44;
LABEL_17:
    (*(v28 + 8))(v11, v27);
    goto LABEL_18;
  }

  if (sub_2680B34BC())
  {
    v11 = v40;
    sub_2680B35DC();
    sub_2680B344C();
    v28 = v41;
    v27 = v42;
    goto LABEL_17;
  }

  if (sub_2680B352C())
  {
    v11 = v37;
    sub_2680B34AC();
    sub_2680B3B1C();
    v28 = v38;
    v27 = v39;
    goto LABEL_17;
  }

  if (sub_2680B356C())
  {
    v11 = v34;
    sub_2680B351C();
    sub_2680B3CBC();
    v28 = v35;
    v27 = v36;
    goto LABEL_17;
  }

  if (sub_2680B355C())
  {
    v11 = v31;
    sub_2680B34DC();
    sub_2680B3BDC();
    v28 = v32;
    v27 = v33;
    goto LABEL_17;
  }

  v30 = sub_2680B30CC();

  return __swift_storeEnumTagSinglePayload(v26, 1, 1, v30);
}

unint64_t sub_2680A8270()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B38EC())
  {
    sub_2680B38DC();
    sub_2680A7394();
    v5 = v4;
    v7 = v6;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x296C696E28;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_2680B432C();

  v9 = 0xD000000000000016;
  v10 = 0x80000002680B72A0;
  MEMORY[0x26D60FCB0](v5, v7);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v9;
}

unint64_t sub_2680A83C4()
{
  v27 = sub_2680B35EC();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2680B30DC();
  v4 = *(v3 + 16);
  if (v4)
  {
    v28 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v4, 0);
    v5 = v28;
    v7 = *(v0 + 16);
    v6 = v0 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v25 = *(v6 + 56);
    v26 = v7;
    v23[1] = v3;
    v24 = (v6 - 8);
    do
    {
      v9 = v27;
      v10 = v6;
      v26(v2, v8, v27);
      v11 = sub_2680A7590();
      v13 = v12;
      (*v24)(v2, v9);
      v28 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26808D0A8(v14 > 1, v15 + 1, 1);
        v5 = v28;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += v25;
      --v4;
      v6 = v10;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v17 = sub_2680A8654(v5);
  v18 = sub_2680A8714(v17);

  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
  sub_268099CC4();
  v19 = sub_2680B409C();
  v21 = v20;

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_2680B432C();

  v28 = 0xD00000000000001ALL;
  v29 = 0x80000002680B5F60;
  MEMORY[0x26D60FCB0](v19, v21);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v28;
}

uint64_t sub_2680A8654(uint64_t a1)
{
  result = MEMORY[0x26D60FDB0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2680AD57C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void *sub_2680A8714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_26809F3E4(*(a1 + 16), 0);
  v4 = sub_2680ADE18(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_2680AE0BC(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_2680ACB7C(&v7);
  return v7;
}

unint64_t sub_2680A87F8()
{
  v0 = sub_2680B35EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B33FC())
  {
    sub_2680B340C();
    v4 = sub_2680A7590();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v6 = 0xE500000000000000;
    v4 = 0x296C696E28;
  }

  v8 = 0;
  v9 = 0xE000000000000000;
  sub_2680B432C();

  v8 = 0xD000000000000016;
  v9 = 0x80000002680B5F40;
  MEMORY[0x26D60FCB0](v4, v6);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v8;
}

unint64_t sub_2680A894C()
{
  v25 = sub_2680B30CC();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2680B30DC();
  v4 = *(v3 + 16);
  if (v4)
  {
    v31 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v4, 0);
    v5 = v31;
    v6 = *(v0 + 16);
    v29 = v0 + 16;
    v30 = v6;
    v7 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v24 = v3;
    v8 = v3 + v7;
    v9 = *(v0 + 72);
    v26 = 0x80000002680B5FC0;
    v27 = (v0 + 8);
    v28 = v9;
    v10 = v25;
    while (1)
    {
      v30(v2, v8, v10);
      sub_2680B3EBC();

      v12 = MEMORY[0x26D60FA70](v11);

      if (v12 >> 62)
      {
        result = sub_2680B43CC();
        if (result)
        {
LABEL_5:
          if ((v12 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D60FED0](0, v12);
          }

          else
          {
            if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          v14 = sub_2680B3FAC();
          v16 = v15;

          goto LABEL_12;
        }
      }

      else
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_5;
        }
      }

      if (!sub_2680B3EFC())
      {

        v14 = 0x69746E65206F6E5BLL;
        v16 = 0xEB000000005D7974;
        goto LABEL_13;
      }

      v14 = sub_2680B3F9C();
      v16 = v17;

LABEL_12:

LABEL_13:
      v10 = v25;
      (*v27)(v2, v25);
      v31 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26808D0A8(v18 > 1, v19 + 1, 1);
        v10 = v25;
        v5 = v31;
      }

      *(v5 + 16) = v19 + 1;
      v20 = v5 + 16 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      v8 += v28;
      if (!--v4)
      {

        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_20:
  v31 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
  sub_268099CC4();
  v21 = sub_2680B409C();
  v23 = v22;

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2680B432C();

  v31 = 0xD000000000000018;
  v32 = 0x80000002680B5F20;
  MEMORY[0x26D60FCB0](v21, v23);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v31;
}

unint64_t sub_2680A8CFC()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B3D7C())
  {
    sub_2680B3D6C();
    sub_2680A7394();
    v5 = v4;
    v7 = v6;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x296C696E28;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_2680B432C();

  v9 = 0xD00000000000001BLL;
  v10 = 0x80000002680B5F00;
  MEMORY[0x26D60FCB0](v5, v7);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v9;
}

unint64_t sub_2680A8E50()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B3DAC())
  {
    sub_2680B3D9C();
    sub_2680A7394();
    v5 = v4;
    v7 = v6;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x296C696E28;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_2680B432C();

  v9 = 0xD00000000000001BLL;
  v10 = 0x80000002680B5EE0;
  MEMORY[0x26D60FCB0](v5, v7);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v9;
}

void sub_2680A8FA4()
{
  OUTLINED_FUNCTION_54();
  v159 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249338, &qword_2680B59C0);
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_0();
  v139 = v4;
  OUTLINED_FUNCTION_21();
  v165 = sub_2680B3F7C();
  OUTLINED_FUNCTION_4();
  v155 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v156 = v7;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_0();
  v164 = v9;
  OUTLINED_FUNCTION_21();
  v149 = sub_2680B3F4C();
  OUTLINED_FUNCTION_4();
  v153 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v152 = v13;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249340, &qword_2680B59C8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  v167 = &v138 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249348, &qword_2680B59D0);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51();
  v160 = v19;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26_0();
  v163 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249350, &qword_2680B59D8);
  v23 = OUTLINED_FUNCTION_7(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_51();
  v166 = v28;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_0();
  v168 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249358, &qword_2680B59E0);
  v32 = OUTLINED_FUNCTION_7(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_26_0();
  v151 = v34;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_3();
  v158 = v35;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_51();
  v161 = v37;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v38);
  v40 = &v138 - v39;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249208, &qword_2680B5460);
  v41 = swift_allocObject();
  v154 = xmmword_2680B4FE0;
  *(v41 + 16) = xmmword_2680B4FE0;
  v42 = sub_2680B3F2C();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  sub_2680B3F8C();
  v171 = v41;
  v46 = swift_allocObject();
  *(v46 + 16) = v154;
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v42);
  sub_2680B3F8C();
  v170 = v46;
  v50 = v161;
  v157 = (v155 + 8);
  *&v154 = v42;
  v159 = v42 - 8;
  v138 = (v153 + 4);
  ++v153;
  v141 = (v155 + 32);
  v162 = v40;
  while (1)
  {
    if (!*(v41 + 16))
    {

LABEL_46:
      OUTLINED_FUNCTION_53();
      return;
    }

    v51 = v170;
    if (!*(v170 + 16))
    {

LABEL_45:

      goto LABEL_46;
    }

    v52 = v151;
    sub_26809DF30(v41, v151);
    v53 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v53, v54, v169);
    if (v83)
    {
      goto LABEL_50;
    }

    sub_2680ADF74(v52, v40, &qword_280249200, &qword_2680B58D0);
    if (!*(v41 + 16))
    {
      break;
    }

    sub_26809F688(0, 1);
    if (!*(v51 + 16))
    {
      goto LABEL_48;
    }

    v55 = v150;
    sub_26809DF30(v51, v150);
    v56 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v56, v57, v169);
    if (v83)
    {
      goto LABEL_51;
    }

    sub_2680ADF74(v55, v50, &qword_280249200, &qword_2680B58D0);
    if (!*(v51 + 16))
    {
      goto LABEL_49;
    }

    sub_26809F688(0, 1);
    v58 = v158;
    sub_2680ADFC0(v40, v158, &qword_280249200, &qword_2680B58D0);
    v59 = v50;
    v60 = v169;
    v61 = *(v169 + 48);
    sub_2680ADF74(v58, v168, &qword_280249350, &qword_2680B59D8);
    v62 = *v157;
    v63 = v165;
    (*v157)(v58 + v61, v165);
    sub_2680ADFC0(v59, v58, &qword_280249200, &qword_2680B58D0);
    v64 = *(v60 + 48);
    v65 = v166;
    sub_2680ADF74(v58, v166, &qword_280249350, &qword_2680B59D8);
    v155 = v62;
    (v62)(v58 + v64, v63);
    v66 = v145;
    sub_2680ADFC0(v168, v145, &qword_280249350, &qword_2680B59D8);
    v67 = OUTLINED_FUNCTION_18_1();
    v68 = v154;
    OUTLINED_FUNCTION_17_3(v67, v69, v154);
    if (v83)
    {
      sub_26808C12C(v66, &qword_280249350, &qword_2680B59D8);
      v71 = 1;
      v72 = v160;
      v70 = v163;
    }

    else
    {
      v70 = v163;
      sub_2680B3F1C();
      (*(*(v68 - 8) + 8))(v66, v68);
      v71 = 0;
      v72 = v160;
    }

    v73 = v149;
    __swift_storeEnumTagSinglePayload(v70, v71, 1, v149);
    v74 = v146;
    sub_2680ADFC0(v65, v146, &qword_280249350, &qword_2680B59D8);
    OUTLINED_FUNCTION_17_3(v74, 1, v68);
    if (v83)
    {
      sub_26808C12C(v74, &qword_280249350, &qword_2680B59D8);
      v75 = 1;
    }

    else
    {
      sub_2680B3F1C();
      v72 = v160;
      (*(*(v68 - 8) + 8))(v74, v68);
      v75 = 0;
    }

    v76 = v147;
    __swift_storeEnumTagSinglePayload(v72, v75, 1, v73);
    v77 = *(v148 + 48);
    v78 = v167;
    sub_2680ADFC0(v163, v167, &qword_280249348, &qword_2680B59D0);
    sub_2680ADFC0(v72, v78 + v77, &qword_280249348, &qword_2680B59D0);
    OUTLINED_FUNCTION_17_3(v78, 1, v73);
    if (v83)
    {
      sub_26808C12C(v72, &qword_280249348, &qword_2680B59D0);
      v79 = OUTLINED_FUNCTION_28_1();
      sub_26808C12C(v79, v80, &qword_2680B59D0);
      OUTLINED_FUNCTION_17_3(v167 + v77, 1, v73);
      v81 = v166;
      if (!v83)
      {
        goto LABEL_42;
      }

      sub_26808C12C(v167, &qword_280249348, &qword_2680B59D0);
    }

    else
    {
      v82 = v167;
      sub_2680ADFC0(v167, v76, &qword_280249348, &qword_2680B59D0);
      OUTLINED_FUNCTION_17_3(v82 + v77, 1, v73);
      v81 = v166;
      if (v83)
      {
        OUTLINED_FUNCTION_31_1(v160);
        OUTLINED_FUNCTION_31_1(v163);
        (*v153)(v76, v73);
LABEL_42:
        sub_26808C12C(v167, &qword_280249340, &qword_2680B59C8);
        v90 = v162;
LABEL_43:
        OUTLINED_FUNCTION_31_1(v81);
        OUTLINED_FUNCTION_31_1(v168);
        OUTLINED_FUNCTION_31_1(v161);
        v137 = v90;
        goto LABEL_44;
      }

      v84 = v152;
      (*v138)(v152, v167 + v77, v73);
      OUTLINED_FUNCTION_14_4();
      sub_2680AE00C(&qword_280249360, v85, MEMORY[0x277D5F408]);
      OUTLINED_FUNCTION_43_0();
      v86 = sub_2680B40AC();
      v87 = *v153;
      (*v153)(v84, v73);
      sub_26808C12C(v160, &qword_280249348, &qword_2680B59D0);
      sub_26808C12C(v163, &qword_280249348, &qword_2680B59D0);
      v87(v76, v73);
      v88 = OUTLINED_FUNCTION_24_1();
      v68 = v154;
      sub_26808C12C(v88, v89, &qword_2680B59D0);
      v90 = v162;
      if ((v86 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v91 = v143;
    sub_2680ADFC0(v168, v143, &qword_280249350, &qword_2680B59D8);
    v92 = OUTLINED_FUNCTION_18_1();
    v94 = v68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, v93, v68);
    if (EnumTagSinglePayload == 1)
    {
      sub_26808C12C(v91, &qword_280249350, &qword_2680B59D8);
      v96 = 0;
    }

    else
    {
      v96 = sub_2680B3F0C();
      (*(*(v94 - 8) + 8))(v91, v94);
    }

    v97 = v144;
    sub_2680ADFC0(v81, v144, &qword_280249350, &qword_2680B59D8);
    v98 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v98, v99, v94);
    if (v83)
    {
      sub_26808C12C(v97, &qword_280249350, &qword_2680B59D8);
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v100 = sub_2680B3F0C();
      (*(*(v94 - 8) + 8))(v97, v94);
      if (EnumTagSinglePayload == 1 || v96 != v100)
      {
LABEL_38:
        v134 = v81;
LABEL_40:
        OUTLINED_FUNCTION_31_1(v134);
        OUTLINED_FUNCTION_31_1(v168);
        OUTLINED_FUNCTION_31_1(v161);
        v137 = v162;
LABEL_44:
        OUTLINED_FUNCTION_31_1(v137);

        goto LABEL_45;
      }
    }

    v102 = v158;
    sub_2680ADFC0(v162, v158, &qword_280249200, &qword_2680B58D0);
    v103 = v169;
    v104 = *v141;
    v105 = v165;
    (*v141)(v164, v102 + *(v169 + 48), v165);
    sub_26808C12C(v102, &qword_280249350, &qword_2680B59D8);
    sub_2680ADFC0(v161, v102, &qword_280249200, &qword_2680B58D0);
    v104(v156, v102 + *(v103 + 48), v105);
    sub_26808C12C(v102, &qword_280249350, &qword_2680B59D8);
    v106 = v152;
    sub_2680B3F6C();
    v107 = v142;
    sub_2680B3F6C();
    OUTLINED_FUNCTION_14_4();
    sub_2680AE00C(&qword_280249360, v108, MEMORY[0x277D5F408]);
    LOBYTE(v104) = sub_2680B40AC();
    v109 = *v153;
    (*v153)(v107, v73);
    v109(v106, v73);
    if ((v104 & 1) == 0)
    {
      v135 = v165;
      v136 = v155;
      (v155)(v156, v165);
      v136(v164, v135);
      v134 = v166;
      goto LABEL_40;
    }

    v110 = sub_2680B3F3C();
    v111 = v139;
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v110);
    v115 = v156;
    v116 = v140;
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v110);
    OUTLINED_FUNCTION_42_0();
    sub_2680B3F5C();
    sub_26808C12C(v116, &qword_280249338, &qword_2680B59C0);
    sub_26808C12C(v111, &qword_280249338, &qword_2680B59C0);
    v120 = sub_2680B3ECC();

    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v110);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v110);
    OUTLINED_FUNCTION_42_0();
    sub_2680B3F5C();
    v127 = v116;
    v128 = v165;
    sub_26808C12C(v127, &qword_280249338, &qword_2680B59C0);
    v129 = v111;
    v40 = v162;
    sub_26808C12C(v129, &qword_280249338, &qword_2680B59C0);
    v130 = sub_2680B3ECC();

    v131 = sub_2680A9F70(v120);

    sub_2680A6D80(v131);
    v132 = sub_2680A9F70(v130);

    sub_2680A6D80(v132);
    v133 = v155;
    (v155)(v115, v128);
    v133(v164, v128);
    sub_26808C12C(v166, &qword_280249350, &qword_2680B59D8);
    sub_26808C12C(v168, &qword_280249350, &qword_2680B59D8);
    v50 = v161;
    sub_26808C12C(v161, &qword_280249200, &qword_2680B58D0);
    sub_26808C12C(v40, &qword_280249200, &qword_2680B58D0);
    v41 = v171;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_2680A9F70(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249368, &qword_2680B59E8);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2680A14D4(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_2680ADFC0(v11, v4, &qword_280249368, &qword_2680B59E8);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2680A14D4(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_2680ADF74(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_280249200, &qword_2680B58D0);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_2680AA1A8(uint64_t a1)
{
  if (sub_2680B3A5C())
  {

    sub_2680AA30C();
  }

  else if (sub_2680B3A6C())
  {

    sub_2680AA5D4();
  }

  else if (sub_2680B3A2C())
  {

    sub_2680AB3A0();
  }

  else if (sub_2680B3A4C())
  {

    sub_2680AB964();
  }

  else if (sub_2680B3A9C())
  {

    sub_2680ABFBC();
  }

  else if (sub_2680B3AAC())
  {

    sub_2680AC284();
  }

  else if ((sub_2680B3A5C() & 1) == 0 && (sub_2680B3A6C() & 1) == 0 && (sub_2680B3A2C() & 1) == 0 && (sub_2680B3A4C() & 1) == 0 && (sub_2680B3A9C() & 1) == 0)
  {
    sub_2680B3AAC();
  }
}

void sub_2680AA30C()
{
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_3();
  v7 = sub_2680B38FC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_2();
  if (sub_2680B3A5C())
  {
    OUTLINED_FUNCTION_16_2();
    sub_2680B3ADC();
    sub_2680B38EC();
    v11 = OUTLINED_FUNCTION_18_2();
    v4(v11);
    OUTLINED_FUNCTION_34_0();
    sub_2680B3ADC();
    v12 = sub_2680B38EC();
    v13 = OUTLINED_FUNCTION_24_1();
    v4(v13);
    if (v2 & 1) != 0 && (v12)
    {
      sub_2680B3ADC();
      sub_2680B38DC();
      (v4)(v1, v7);
      OUTLINED_FUNCTION_33_1();
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_37_1();
        v15(v14);
        v19 = sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2813194A0);
        }

        sub_2680B406C(v19, &dword_268086000, off_2813194A8, "Unable to deserialize prompted SystemDialogAct graph protobuf", 61, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        v16 = OUTLINED_FUNCTION_8_3();
        v17(v16);
        OUTLINED_FUNCTION_36_1();
        sub_2680B3ADC();
        OUTLINED_FUNCTION_35_0();
        sub_2680B38DC();
        v18 = OUTLINED_FUNCTION_28_1();
        v4(v18);
        sub_2680B3EBC();
        v20 = OUTLINED_FUNCTION_10_3();
        v21(v20);
        sub_2680A8FA4();
      }
    }
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

void sub_2680AA5D4()
{
  OUTLINED_FUNCTION_54();
  v160 = v0;
  v3 = v2;
  sub_2680B30CC();
  OUTLINED_FUNCTION_4();
  v157 = v4;
  v158 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_51();
  v149 = v10;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_51();
  v155 = v12;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48_0();
  v159 = sub_2680B35EC();
  OUTLINED_FUNCTION_4();
  v146 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  v161 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_20();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_51();
  v145 = v24;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_51();
  v154 = v26;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_51();
  v153 = v28;
  OUTLINED_FUNCTION_5_4();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v139 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_26_0();
  v152 = v33;
  OUTLINED_FUNCTION_21();
  v34 = sub_2680B3BAC();
  OUTLINED_FUNCTION_4();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_20();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v139 - v42;
  if ((sub_2680B3A6C() & 1) == 0)
  {
    goto LABEL_86;
  }

  v142 = v3;
  v147 = v8;
  sub_2680B3A3C();
  v44 = sub_2680B30DC();
  v45 = *(v36 + 8);
  v141 = v34;
  v140 = v45;
  v45(v43, v34);
  v46 = *(v44 + 16);
  v156 = v22;
  v148 = v1;
  v143 = v40;
  v144 = v36 + 8;
  if (v46)
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    sub_2680A14F4(0, v46, 0);
    v47 = v162;
    v160 = *(v146 + 16);
    v48 = v44 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
    v49 = *(v146 + 72);
    v150 = v44;
    v151 = v49;
    v50 = (v146 + 8);
    do
    {
      v51 = v159;
      (v160)(v18, v48, v159);
      sub_2680A7C7C(v32);
      (*v50)(v18, v51);
      v162 = v47;
      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      if (v53 >= v52 >> 1)
      {
        v56 = OUTLINED_FUNCTION_27(v52);
        sub_2680A14F4(v56, v53 + 1, 1);
        v47 = v162;
      }

      *(v47 + 16) = v53 + 1;
      OUTLINED_FUNCTION_6_5();
      sub_2680ADF74(v32, v47 + v54 + *(v55 + 72) * v53, &qword_280249218, &qword_2680B5470);
      v48 += v151;
      --v46;
    }

    while (v46);

    v22 = v156;
    v57 = v148;
    v40 = v143;
  }

  else
  {
    v57 = v1;

    v47 = MEMORY[0x277D84F90];
  }

  v58 = *(v47 + 16);
  v59 = v157;
  if (v58)
  {
    v60 = v57;
    OUTLINED_FUNCTION_6_5();
    v62 = v47 + v61;
    v64 = *(v63 + 72);
    v150 = (v158 + 32);
    v151 = v64;
    v160 = MEMORY[0x277D84F90];
    do
    {
      v65 = v152;
      sub_2680ADFC0(v62, v152, &qword_280249218, &qword_2680B5470);
      v66 = v65;
      v67 = v153;
      sub_2680ADF74(v66, v153, &qword_280249218, &qword_2680B5470);
      OUTLINED_FUNCTION_17_3(v67, 1, v59);
      if (v68)
      {
        sub_26808C12C(v67, &qword_280249218, &qword_2680B5470);
      }

      else
      {
        v69 = *v150;
        (*v150)(v60, v67, v59);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v71 = v160;
        }

        else
        {
          sub_26809F308();
          v71 = v77;
        }

        v73 = *(v71 + 16);
        v72 = *(v71 + 24);
        if (v73 >= v72 >> 1)
        {
          OUTLINED_FUNCTION_27(v72);
          sub_26809F308();
          v71 = v78;
        }

        *(v71 + 16) = v73 + 1;
        v59 = v157;
        OUTLINED_FUNCTION_6_5();
        v160 = v74;
        v60 = v148;
        v69(v74 + v75 + *(v76 + 72) * v73);
        v22 = v156;
      }

      v62 += v151;
      --v58;
    }

    while (v58);

    v40 = v143;
  }

  else
  {

    v160 = MEMORY[0x277D84F90];
  }

  sub_2680B3A3C();
  v79 = sub_2680B30DC();
  v140(v40, v141);
  v80 = *(v79 + 16);
  if (v80)
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    sub_2680A14F4(0, v80, 0);
    v81 = v162;
    v82 = v145;
    v83 = *(v146 + 16);
    v84 = *(v146 + 80);
    v151 = v79;
    v85 = v79 + ((v84 + 32) & ~v84);
    v152 = *(v146 + 72);
    v153 = v83;
    v86 = (v146 + 8);
    do
    {
      v87 = v159;
      v153(v18, v85, v159);
      sub_2680A7C7C(v82);
      (*v86)(v18, v87);
      v162 = v81;
      v89 = *(v81 + 16);
      v88 = *(v81 + 24);
      if (v89 >= v88 >> 1)
      {
        v92 = OUTLINED_FUNCTION_27(v88);
        sub_2680A14F4(v92, v89 + 1, 1);
        v81 = v162;
      }

      *(v81 + 16) = v89 + 1;
      OUTLINED_FUNCTION_6_5();
      sub_2680ADF74(v82, v81 + v90 + *(v91 + 72) * v89, &qword_280249218, &qword_2680B5470);
      v85 += v152;
      --v80;
    }

    while (v80);

    v22 = v156;
    v59 = v157;
  }

  else
  {

    v81 = MEMORY[0x277D84F90];
  }

  v93 = *(v81 + 16);
  if (v93)
  {
    OUTLINED_FUNCTION_6_5();
    v95 = v81 + v94;
    v161 = *(v96 + 72);
    v97 = (v158 + 32);
    v98 = MEMORY[0x277D84F90];
    do
    {
      v99 = v154;
      sub_2680ADFC0(v95, v154, &qword_280249218, &qword_2680B5470);
      sub_2680ADF74(v99, v22, &qword_280249218, &qword_2680B5470);
      OUTLINED_FUNCTION_17_3(v22, 1, v59);
      if (v68)
      {
        sub_26808C12C(v22, &qword_280249218, &qword_2680B5470);
      }

      else
      {
        v100 = *v97;
        (*v97)(v155, v22, v59);
        v101 = swift_isUniquelyReferenced_nonNull_native();
        if ((v101 & 1) == 0)
        {
          sub_26809F308();
          v98 = v106;
        }

        v103 = *(v98 + 16);
        v102 = *(v98 + 24);
        if (v103 >= v102 >> 1)
        {
          OUTLINED_FUNCTION_27(v102);
          sub_26809F308();
          v98 = v107;
        }

        *(v98 + 16) = v103 + 1;
        v59 = v157;
        OUTLINED_FUNCTION_6_5();
        v100(v98 + v104 + *(v105 + 72) * v103, v155, v59);
        v22 = v156;
      }

      v95 += v161;
      --v93;
    }

    while (v93);
  }

  else
  {

    v98 = MEMORY[0x277D84F90];
  }

  v108 = *(v160 + 16);
  if (v108)
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    sub_2680B437C();
    v109 = 0;
    OUTLINED_FUNCTION_6_5();
    v161 = v110 + v111;
    v113 = (v112 + 8);
    while (v109 < *(v110 + 16))
    {
      v114 = v149;
      (*(v158 + 16))(v149, v161 + *(v158 + 72) * v109, v59);
      sub_2680B3EBC();
      ++v109;
      (*v113)(v114, v59);
      sub_2680B435C();
      sub_2680B438C();
      sub_2680B439C();
      sub_2680B436C();
      v110 = v160;
      if (v108 == v109)
      {

        v160 = v162;
        v115 = v147;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v116 = *(v98 + 16);

  v115 = v147;
  if (!v116)
  {
LABEL_88:

LABEL_86:
    OUTLINED_FUNCTION_53();
    return;
  }

  v160 = MEMORY[0x277D84F90];
  v59 = v157;
LABEL_50:
  if (*(v98 + 16))
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    v161 = v117;
    sub_2680B437C();
    v118 = 0;
    OUTLINED_FUNCTION_6_5();
    v120 = v98 + v119;
    v122 = (v121 + 8);
    while (v118 < *(v98 + 16))
    {
      (*(v158 + 16))(v115, v120 + *(v158 + 72) * v118, v59);
      sub_2680B3EBC();
      ++v118;
      (*v122)(v115, v59);
      sub_2680B435C();
      sub_2680B438C();
      v115 = v147;
      sub_2680B439C();
      sub_2680B436C();
      if (v161 == v118)
      {

        v59 = v162;
        goto LABEL_56;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    OUTLINED_FUNCTION_0(&qword_2813194A0);
    sub_2680B406C(v59, &dword_268086000, off_2813194A8, "Unable to deserialize gave options SystemDialogAct graph protobuf", 65, 2, MEMORY[0x277D84F90]);

    goto LABEL_86;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_56:
  v123 = v160;
  v124 = sub_2680913FC(v160);
  v125 = 0;
  v126 = v123 & 0xC000000000000001;
  v127 = v123 + 32;
  v128 = v59 & 0xC000000000000001;
  v159 = v59 + 32;
  while (2)
  {
    if (v125 == v124)
    {

      goto LABEL_88;
    }

    sub_268091880(v125, v126 == 0, v123);
    if (v126)
    {
      v161 = MEMORY[0x26D60FED0](v125, v123);
    }

    else
    {
      v161 = *(v127 + 8 * v125);
    }

    v156 = v127;
    v157 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      __break(1u);
    }

    else
    {
      v129 = sub_2680913FC(v59);
      v130 = 0;
      do
      {
        if (v129 == v130)
        {

          goto LABEL_86;
        }

        sub_268091880(v130, v128 == 0, v59);
        if (v128)
        {
          MEMORY[0x26D60FED0](v130, v59);
        }

        else
        {
        }

        if (__OFADD__(v130, 1))
        {
          goto LABEL_90;
        }

        sub_2680A8FA4();
        v132 = v131;

        ++v130;
      }

      while ((v132 & 1) == 0);
      v133 = 0;
LABEL_69:
      if (v133 == v129)
      {

        v127 = v156;
        v125 = v157;
        continue;
      }

      v134 = v124;
      sub_268091880(v133, v128 == 0, v59);
      if (v128)
      {
        MEMORY[0x26D60FED0](v133, v59);
      }

      else
      {
      }

      v158 = v133 + 1;
      if (!__OFADD__(v133, 1))
      {
        v135 = 0;
        while (v134 != v135)
        {
          sub_268091880(v135, v126 == 0, v123);
          if (v126)
          {
            v136 = OUTLINED_FUNCTION_24_1();
            MEMORY[0x26D60FED0](v136);
          }

          else
          {
          }

          if (__OFADD__(v135, 1))
          {
            goto LABEL_92;
          }

          sub_2680A8FA4();
          v138 = v137;

          ++v135;
          v123 = v160;
          if (v138)
          {

            v124 = v134;
            v133 = v158;
            goto LABEL_69;
          }
        }

        goto LABEL_86;
      }
    }

    break;
  }

  __break(1u);
}

void sub_2680AB3A0()
{
  OUTLINED_FUNCTION_54();
  v1 = sub_2680B30CC();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v48 = v5;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_0();
  v50 = v7;
  OUTLINED_FUNCTION_21();
  sub_2680B35EC();
  OUTLINED_FUNCTION_4();
  v51 = v8;
  v52 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v49 = v15;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_51();
  v55 = v18;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  v54 = v20;
  OUTLINED_FUNCTION_21();
  sub_2680B341C();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_45_0();
  if (sub_2680B3A2C())
  {
    v46 = v3;
    v47 = v1;
    sub_2680B3ABC();
    v24 = sub_2680B33FC();
    v25 = *(v22 + 8);
    v26 = OUTLINED_FUNCTION_26();
    v25(v26);
    sub_2680B3ABC();
    v27 = sub_2680B33FC();
    v28 = OUTLINED_FUNCTION_26();
    v25(v28);
    if (v24 & 1) != 0 && (v27)
    {
      sub_2680B3ABC();
      sub_2680B340C();
      v29 = OUTLINED_FUNCTION_26();
      v25(v29);
      sub_2680A7C7C(v54);
      v53 = *(v52 + 8);
      v53(v12, v51);
      sub_2680B3ABC();
      sub_2680B340C();
      v30 = OUTLINED_FUNCTION_26();
      v25(v30);
      sub_2680A7C7C(v55);
      v53(v12, v51);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v47);
      v32 = __swift_getEnumTagSinglePayload(v55, 1, v47);
      if (EnumTagSinglePayload != 1 && v32 != 1)
      {
        v33 = v0;
        sub_2680ADFC0(v54, v0, &qword_280249218, &qword_2680B5470);
        OUTLINED_FUNCTION_17_3(v0, 1, v47);
        if (!v34)
        {
          v35 = *(v46 + 32);
          v35(v50, v0, v47);
          v33 = v49;
          sub_2680ADFC0(v55, v49, &qword_280249218, &qword_2680B5470);
          OUTLINED_FUNCTION_17_3(v49, 1, v47);
          if (!v34)
          {
            v40 = OUTLINED_FUNCTION_42_0();
            (v35)(v40);
            OUTLINED_FUNCTION_33_1();
            if (!v49)
            {
              sub_2680B3EBC();
              sub_2680A8FA4();

              v44 = *(v46 + 8);
              v44(v48, v47);
              v45 = OUTLINED_FUNCTION_43_0();
              (v44)(v45);
              sub_26808C12C(v55, &qword_280249218, &qword_2680B5470);
              sub_26808C12C(v54, &qword_280249218, &qword_2680B5470);
              goto LABEL_14;
            }

            v41 = sub_2680B423C();
            if (qword_2813194A0 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_2813194A0);
            }

            sub_2680B406C(v41, &dword_268086000, off_2813194A8, "Unable to deserialize offered SystemDialogAct graph protobuf", 60, 2, MEMORY[0x277D84F90], v0);

            v42 = *(v46 + 8);
            v42(v48, v47);
            v43 = OUTLINED_FUNCTION_43_0();
            (v42)(v43);
            goto LABEL_13;
          }

          v36 = OUTLINED_FUNCTION_43_0();
          v37(v36);
        }

        OUTLINED_FUNCTION_31_1(v33);
      }

LABEL_13:
      v38 = OUTLINED_FUNCTION_26();
      sub_26808C12C(v38, v39, &qword_2680B5470);
      OUTLINED_FUNCTION_31_1(v54);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

void sub_2680AB964()
{
  OUTLINED_FUNCTION_54();
  v3 = v2;
  sub_2680B30CC();
  OUTLINED_FUNCTION_4();
  v66 = v4;
  v67 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v65 = v6;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_48_0();
  v8 = sub_2680B38CC();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v63 = v12;
  OUTLINED_FUNCTION_5_4();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  if (sub_2680B3A4C())
  {
    v64 = v0;
    sub_2680B3ACC();
    v22 = sub_2680B30DC();
    v23 = *(v10 + 8);
    v23(v21, v8);
    v24 = v10 + 8;
    v25 = v8;
    v26 = *(v22 + 16);

    v62 = v3;
    sub_2680B3ACC();
    v27 = sub_2680B30DC();
    v28 = v19;
    v29 = v23;
    v23(v28, v25);
    v30 = *(v27 + 16);

    if (v26 == v30)
    {
      sub_2680B3ACC();
      v31 = sub_2680B30DC();
      v61 = v24;
      v23(v16, v25);
      v32 = *(v31 + 16);
      v33 = MEMORY[0x277D84F90];
      if (v32)
      {
        v59 = v23;
        v60 = v25;
        v68 = MEMORY[0x277D84F90];
        sub_2680B437C();
        v34 = 0;
        OUTLINED_FUNCTION_6_5();
        v64 = v31 + v35;
        v37 = (v36 + 8);
        while (1)
        {
          v38 = v66;
          if (v34 >= *(v31 + 16))
          {
            break;
          }

          (*(v67 + 16))(v1, v64 + *(v67 + 72) * v34, v66);
          sub_2680B3EBC();
          ++v34;
          (*v37)(v1, v38);
          sub_2680B435C();
          sub_2680B438C();
          sub_2680B439C();
          sub_2680B436C();
          if (v32 == v34)
          {

            v39 = v68;
            v29 = v59;
            v25 = v60;
            v33 = MEMORY[0x277D84F90];
            goto LABEL_9;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        OUTLINED_FUNCTION_0(&qword_2813194A0);
        sub_2680B406C(v32, &dword_268086000, off_2813194A8, "Unable to deserialize informed SystemDialogAct graph protobuf", 61, 2, MEMORY[0x277D84F90]);

        goto LABEL_30;
      }

      v39 = MEMORY[0x277D84F90];
LABEL_9:
      v40 = v63;
      sub_2680B3ACC();
      v41 = sub_2680B30DC();
      v29(v40, v25);
      v42 = *(v41 + 16);
      v43 = v65;
      v64 = v39;
      if (v42)
      {
        v68 = v33;
        sub_2680B437C();
        v44 = 0;
        OUTLINED_FUNCTION_6_5();
        v32 = v41 + v45;
        v47 = (v46 + 8);
        while (v44 < *(v41 + 16))
        {
          v48 = v66;
          (*(v67 + 16))(v43, v32 + *(v67 + 72) * v44, v66);
          sub_2680B3EBC();
          ++v44;
          (*v47)(v43, v48);
          sub_2680B435C();
          sub_2680B438C();
          v43 = v65;
          sub_2680B439C();
          sub_2680B436C();
          if (v42 == v44)
          {

            v32 = v68;
            v39 = v64;
            goto LABEL_15;
          }
        }

        goto LABEL_34;
      }

      v32 = MEMORY[0x277D84F90];
LABEL_15:
      v49 = sub_2680913FC(v39);
      v50 = 0;
      v51 = v39 & 0xC000000000000001;
      v52 = v32 & 0xC000000000000001;
      v66 = v39 + 32;
      v67 = v49;
LABEL_16:
      if (v50 != v49)
      {
        sub_268091880(v50, v51 == 0, v39);
        if (v51)
        {
          MEMORY[0x26D60FED0](v50, v39);
        }

        else
        {
        }

        if (__OFADD__(v50++, 1))
        {
          goto LABEL_35;
        }

        v54 = sub_2680913FC(v32);
        v55 = 0;
        while (1)
        {
          if (v54 == v55)
          {

            goto LABEL_30;
          }

          sub_268091880(v55, v52 == 0, v32);
          if (v52)
          {
            MEMORY[0x26D60FED0](v55, v32);
          }

          else
          {
          }

          if (__OFADD__(v55, 1))
          {
            break;
          }

          sub_2680A8FA4();
          v57 = v56;

          ++v55;
          if (v57)
          {

            v39 = v64;
            v49 = v67;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_33;
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_53();
}

void sub_2680ABFBC()
{
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_3();
  v7 = sub_2680B3D8C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_2();
  if (sub_2680B3A9C())
  {
    OUTLINED_FUNCTION_16_2();
    sub_2680B3A7C();
    sub_2680B3D7C();
    v11 = OUTLINED_FUNCTION_18_2();
    v4(v11);
    OUTLINED_FUNCTION_34_0();
    sub_2680B3A7C();
    v12 = sub_2680B3D7C();
    v13 = OUTLINED_FUNCTION_24_1();
    v4(v13);
    if (v2 & 1) != 0 && (v12)
    {
      sub_2680B3A7C();
      sub_2680B3D6C();
      (v4)(v1, v7);
      OUTLINED_FUNCTION_33_1();
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_37_1();
        v15(v14);
        v19 = sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2813194A0);
        }

        sub_2680B406C(v19, &dword_268086000, off_2813194A8, "Unable to deserialize reported failure SystemDialogAct graph protobuf", 69, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        v16 = OUTLINED_FUNCTION_8_3();
        v17(v16);
        OUTLINED_FUNCTION_36_1();
        sub_2680B3A7C();
        OUTLINED_FUNCTION_35_0();
        sub_2680B3D6C();
        v18 = OUTLINED_FUNCTION_28_1();
        v4(v18);
        sub_2680B3EBC();
        v20 = OUTLINED_FUNCTION_10_3();
        v21(v20);
        sub_2680A8FA4();
      }
    }
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

void sub_2680AC284()
{
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_3();
  v7 = sub_2680B3DBC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_2();
  if (sub_2680B3AAC())
  {
    OUTLINED_FUNCTION_16_2();
    sub_2680B3A8C();
    sub_2680B3DAC();
    v11 = OUTLINED_FUNCTION_18_2();
    v4(v11);
    OUTLINED_FUNCTION_34_0();
    sub_2680B3A8C();
    v12 = sub_2680B3DAC();
    v13 = OUTLINED_FUNCTION_24_1();
    v4(v13);
    if (v2 & 1) != 0 && (v12)
    {
      sub_2680B3A8C();
      sub_2680B3D9C();
      (v4)(v1, v7);
      OUTLINED_FUNCTION_33_1();
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_37_1();
        v15(v14);
        v19 = sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2813194A0);
        }

        sub_2680B406C(v19, &dword_268086000, off_2813194A8, "Unable to deserialize reported success SystemDialogAct graph protobuf", 69, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        v16 = OUTLINED_FUNCTION_8_3();
        v17(v16);
        OUTLINED_FUNCTION_36_1();
        sub_2680B3A8C();
        OUTLINED_FUNCTION_35_0();
        sub_2680B3D9C();
        v18 = OUTLINED_FUNCTION_28_1();
        v4(v18);
        sub_2680B3EBC();
        v20 = OUTLINED_FUNCTION_10_3();
        v21(v20);
        sub_2680A8FA4();
      }
    }
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

BOOL sub_2680AC54C()
{
  v0 = sub_2680B397C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-v5];
  if (sub_2680B39FC())
  {
    if ((sub_2680B39FC() & 1) == 0)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v7 = sub_2680B39CC();
    v9 = v8;
    if (v7 != sub_2680B39CC() || v9 != v10)
    {
      v12 = sub_2680B447C();

      v13 = v12 ^ 1;
LABEL_9:
      v23 = v13;
      goto LABEL_12;
    }
  }

  v23 = 0;
LABEL_12:
  if (sub_2680B39AC())
  {
    v14 = sub_2680B398C();
    v15 = v14 ^ sub_2680B398C();
  }

  else
  {
    v15 = 0;
  }

  if (sub_2680B39BC())
  {
    v16 = sub_2680B399C();
    v17 = v16 ^ sub_2680B399C();
  }

  else
  {
    v17 = 0;
  }

  if (sub_2680B3A0C())
  {
    v18 = sub_2680B39EC();
    v19 = v18 ^ sub_2680B39EC();
  }

  else
  {
    v19 = 0;
  }

  if ((sub_2680B396C() & 1) == 0)
  {
    return ((v23 | v15 | v17 | v19) & 1) == 0;
  }

  sub_2680B39DC();
  sub_2680B39DC();
  sub_2680AE00C(&qword_280249370, MEMORY[0x277D5DC28], MEMORY[0x277D5DC30]);
  sub_2680B41CC();
  sub_2680B41CC();
  v20 = *(v1 + 8);
  v20(v4, v0);
  v20(v6, v0);
  result = v25 == v24;
  if ((v23 | v15 | v17 | v19))
  {
    return 0;
  }

  return result;
}

uint64_t sub_2680AC838()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B2F6C())
  {
    sub_2680B2F7C();
    sub_2680A7394();
    v5 = v4;
    v7 = v6;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x296C696E28;
  }

  v9[0] = 0x7361745B6B736154;
  v9[1] = 0xEA00000000003D6BLL;
  MEMORY[0x26D60FCB0](v5, v7);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v9[0];
}

uint64_t sub_2680AC974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    v9 = sub_2680B447C();
  }

  return v9 & 1;
}

uint64_t sub_2680ACB7C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2680A5E1C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2680ACBE8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2680ACBE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2680B444C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2680B41FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2680ACDA4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2680ACCDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2680ACCDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2680B447C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2680ACDA4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2680B447C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2680B447C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            __dst = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2680B447C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = __dst;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26809ED18();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_26809ED18();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2680AD3D8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), __dsta);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_2680AD2AC(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_2680AD2AC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2680A5C2C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2680AD3D8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2680AD3D8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_26809E9D0(__src, (a2 - __src) / 16, __dst);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_2680B447C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_26809E9D0(a2, (a3 - a2) / 16, __dst);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_2680B447C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

BOOL sub_2680AD57C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2680B452C();
  sub_2680B410C();
  v8 = sub_2680B454C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2680B447C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2680AD924(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2680AD6C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249378, &unk_2680B59F0);
  result = sub_2680B431C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2680B04A4(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2680B452C();
    sub_2680B410C();
    result = sub_2680B454C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2680AD924(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2680AD6C8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2680ADBE4(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2680B452C();
      sub_2680B410C();
      result = sub_2680B454C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2680B447C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2680ADA8C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2680B449C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2680ADA8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249378, &unk_2680B59F0);
  v2 = *v0;
  v3 = sub_2680B430C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2680ADBE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249378, &unk_2680B59F0);
  result = sub_2680B431C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2680B452C();

        sub_2680B410C();
        result = sub_2680B454C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void *sub_2680ADE18(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}