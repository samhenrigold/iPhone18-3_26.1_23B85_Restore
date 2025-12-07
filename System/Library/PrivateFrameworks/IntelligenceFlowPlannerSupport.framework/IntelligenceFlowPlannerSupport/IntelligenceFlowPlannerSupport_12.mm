void *static SpanDynamicContext.current.getter@<X0>(void *a1@<X8>)
{
  if (qword_28107B210 != -1)
  {
    sub_22BE188F0(&qword_28107B210);
  }

  result = sub_22C2742D4();
  if (__src[3] != 1)
  {
    return memcpy(a1, __src, 0x58uLL);
  }

  *a1 = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  a1[10] = 0;
  *(a1 + 8) = 1;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  return result;
}

uint64_t sub_22BF13940()
{
  sub_22BE5CE4C(&qword_27D90B180, &qword_22C28BFB8);
  swift_allocObject();
  result = sub_22C2742C4();
  qword_28107B200 = result;
  return result;
}

uint64_t static SpanDynamicContext.$taskLocalCurrent.getter()
{
  if (qword_28107B210 != -1)
  {
    sub_22BE188F0(&qword_28107B210);
  }
}

void *static SpanDynamicContext.taskLocalCurrent.getter()
{
  if (qword_28107B210 != -1)
  {
    sub_22BE188F0(&qword_28107B210);
  }

  return sub_22C2742D4();
}

__n128 SpanDynamicContext.init(spanId:participantId:aliasParticipantId:injectionContext:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v9 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v9;
  *(a8 + 80) = *(a7 + 32);
  return result;
}

uint64_t SpanDynamicContext.participantId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SpanDynamicContext.aliasParticipantId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t SpanID.init(_:)(unint64_t result, unint64_t a2)
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

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v4)
        {
          if (v4 != 1)
          {
            sub_22BE38320();
            while (1)
            {
              sub_22BE18550();
              if (!v9 && v8)
              {
                break;
              }

              sub_22BE1BA2C();
              if (!v9)
              {
                break;
              }

              sub_22BE230F8();
              if (v8)
              {
                break;
              }

              sub_22BE230DC();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v2 = 0;
          while (1)
          {
            sub_22BE18550();
            if (!v9 && v8)
            {
              break;
            }

            sub_22BE1BA2C();
            if (!v9)
            {
              break;
            }

            sub_22BE230F8();
            if (v8)
            {
              break;
            }

            sub_22BE230DC();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          sub_22BE38320();
          while (1)
          {
            sub_22BE18550();
            if (!v9 && v8)
            {
              break;
            }

            sub_22BE1BA2C();
            if (!v9)
            {
              break;
            }

            v8 = 10 * v2 >= v12;
            v2 = 10 * v2 - v12;
            if (!v8)
            {
              break;
            }

            sub_22BE230DC();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22C273B44();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v2 = 0;
            if (result)
            {
              while (1)
              {
                sub_22BE18550();
                if (!v9 && v8)
                {
                  goto LABEL_71;
                }

                sub_22BE1BA2C();
                if (!v9)
                {
                  goto LABEL_71;
                }

                sub_22BE230F8();
                if (v8)
                {
                  goto LABEL_71;
                }

                sub_22BE230DC();
                if (v9)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v2 = 0;
          if (result)
          {
            while (1)
            {
              v13 = *result - 48;
              if (v13 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v2, 0xAuLL))
              {
                goto LABEL_71;
              }

              v8 = __CFADD__(10 * v2, v13);
              v2 = 10 * v2 + v13;
              if (v8)
              {
                goto LABEL_71;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_71:
        v2 = 0;
        v11 = 1;
        goto LABEL_72;
      }

      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v2 = 0;
          if (result)
          {
            while (1)
            {
              sub_22BE18550();
              if (!v9 && v8)
              {
                goto LABEL_71;
              }

              sub_22BE1BA2C();
              if (!v9)
              {
                goto LABEL_71;
              }

              v8 = 10 * v2 >= v10;
              v2 = 10 * v2 - v10;
              if (!v8)
              {
                goto LABEL_71;
              }

              sub_22BE230DC();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_61:
          v11 = 0;
LABEL_72:
          v14 = v11;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_22BF14880(result, a2, 10);
  v2 = v15;
  v14 = v16;
LABEL_73:

  if (v14)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t SpanID.init<A>(tracingInteger:for:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v37 = sub_22C272DC4();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  v36 = sub_22C272E04();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = v18 - v17;
  v20 = *(a4 - 8);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, a1, a4);
  sub_22C272DF4();
  v40 = v19;
  sub_22BF14098(v24, sub_22BF14E08, v39, a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v25);
  v26 = sub_22BE297F8(a2, a3);
  v28 = v27;
  sub_22BE19208();
  sub_22BF153E0(v29, v30, v19, v31, v32, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22BE29DD4(v26, v28);
  sub_22C272DE4();
  sub_22BE1A65C();
  sub_22C272DB4();
  v33 = *(v20 + 8);
  v33(a1, a4);
  (*(v9 + 8))(v13, v37);
  v33(v24, a4);
  (*(v15 + 8))(v19, v36);
  return v38;
}

uint64_t sub_22BF14098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_22BF1418C(uint64_t a1)
{
  v2 = sub_22C272E14();
  v7 = v2;
  v8 = sub_22BF157B0(&qword_28106DEC0, MEMORY[0x277CC5578], MEMORY[0x277CC5568]);
  v3 = sub_22BE62524(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_22BE1BD3C(v6, v7);
  sub_22BE18574();
  sub_22C26DD64();
  sub_22BE26B64(v6);
  (*(v4 + 8))(a1, v2);
  return sub_22BE18040();
}

void *sub_22BF142B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_22BF14338@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SpanID.init(_:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

void sub_22BF14368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v85 = a2;

  v4 = sub_22C2732D4();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22C1927D8(v4, v5);
    v46 = v45;

    v7 = v46;
    if ((v46 & 0x2000000000000000) == 0)
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
      v8 = sub_22C273B44();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          sub_22BE3AFD4();
          if (v26 ^ v27 | v25)
          {
            v30 = 65;
          }

          if (!(v26 ^ v27 | v25))
          {
            v31 = 58;
          }

          if (v28)
          {
            v32 = 0;
            v33 = (v28 + 1);
            while (1)
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v31)
              {
                if (v34 < 0x41 || v34 >= v30)
                {
                  sub_22BE3E580();
                  if (!v23 || v34 >= v36)
                  {
                    goto LABEL_140;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v37 = v32 * a3;
              if ((v32 * a3) >> 64 == (v32 * a3) >> 63)
              {
                v32 = v37 + (v34 + v35);
                if (!__OFADD__(v37, (v34 + v35)))
                {
                  ++v33;
                  if (--v29)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_140;
            }
          }
        }

        goto LABEL_140;
      }

      goto LABEL_144;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        if (v8)
        {
          v41 = 0;
          while (1)
          {
            v42 = *v8;
            if (v42 < 0x30 || v42 >= v38)
            {
              if (v42 < 0x41 || v42 >= v39)
              {
                if (v42 < 0x61 || v42 >= v40)
                {
                  goto LABEL_140;
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

            v44 = v41 * a3;
            if ((v41 * a3) >> 64 == (v41 * a3) >> 63)
            {
              v41 = v44 + (v42 + v43);
              if (!__OFADD__(v44, (v42 + v43)))
              {
                ++v8;
                if (--v9)
                {
                  continue;
                }
              }
            }

            goto LABEL_140;
          }
        }
      }

      goto LABEL_140;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        sub_22BE3AFD4();
        if (v12 ^ v13 | v11)
        {
          v16 = 65;
        }

        if (!(v12 ^ v13 | v11))
        {
          v17 = 58;
        }

        if (v14)
        {
          v18 = 0;
          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19;
            if (v20 < 0x30 || v20 >= v17)
            {
              if (v20 < 0x41 || v20 >= v16)
              {
                sub_22BE3E580();
                if (!v23 || v20 >= v22)
                {
                  break;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v18 * a3;
            if ((v18 * a3) >> 64 == (v18 * a3) >> 63)
            {
              v18 = v24 - (v20 + v21);
              if (!__OFSUB__(v24, (v20 + v21)))
              {
                ++v19;
                if (--v15)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_140:

      return;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v47 = HIBYTE(v7) & 0xF;
  v84 = v6;
  v85 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v47)
      {
        sub_22BE18D84();
        if (v73 ^ v74 | v72)
        {
          v77 = 65;
        }

        if (!(v73 ^ v74 | v72))
        {
          v78 = 58;
        }

        v79 = &v84;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v78)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              sub_22BE3E580();
              if (!v23 || v80 >= v82)
              {
                goto LABEL_140;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          v83 = v76 * a3;
          if ((v76 * a3) >> 64 == (v76 * a3) >> 63)
          {
            v76 = v83 + (v80 + v81);
            if (!__OFADD__(v83, (v80 + v81)))
            {
              v79 = (v79 + 1);
              if (--v75)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        sub_22BE18D84();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v84 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              sub_22BE3E580();
              if (!v23 || v56 >= v58)
              {
                goto LABEL_140;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 == (v52 * a3) >> 63)
          {
            v52 = v59 - (v56 + v57);
            if (!__OFSUB__(v59, (v56 + v57)))
            {
              ++v55;
              if (--v51)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    goto LABEL_143;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      sub_22BE18D84();
      if (v61 ^ v62 | v60)
      {
        v65 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v66 = 58;
      }

      v67 = &v84 + 1;
      while (1)
      {
        v68 = *v67;
        if (v68 < 0x30 || v68 >= v66)
        {
          if (v68 < 0x41 || v68 >= v65)
          {
            sub_22BE3E580();
            if (!v23 || v68 >= v70)
            {
              goto LABEL_140;
            }

            v69 = -87;
          }

          else
          {
            v69 = -55;
          }
        }

        else
        {
          v69 = -48;
        }

        v71 = v64 * a3;
        if ((v64 * a3) >> 64 == (v64 * a3) >> 63)
        {
          v64 = v71 + (v68 + v69);
          if (!__OFADD__(v71, (v68 + v69)))
          {
            ++v67;
            if (--v63)
            {
              continue;
            }
          }
        }

        goto LABEL_140;
      }
    }

    goto LABEL_140;
  }

LABEL_145:
  __break(1u);
}

void sub_22BF14880(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_22C2732D4();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22C1927D8(v4, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
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
      v8 = sub_22C273B44();
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
            v27 = v8 + 1;
            while (1)
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
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

              if (is_mul_ok(v26, a3))
              {
                v30 = v26 * a3;
                v31 = v28 + v29;
                v21 = __CFADD__(v30, v31);
                v26 = v30 + v31;
                if (!v21)
                {
                  ++v27;
                  if (--v22)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (v8)
        {
          v35 = 0;
          while (1)
          {
            v36 = *v8;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
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

            if (is_mul_ok(v35, a3))
            {
              v38 = v35 * a3;
              v39 = v36 + v37;
              v21 = __CFADD__(v38, v39);
              v35 = v38 + v39;
              if (!v21)
              {
                ++v8;
                if (--v9)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
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
          v16 = v8 + 1;
          while (1)
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

            if (is_mul_ok(v15, a3))
            {
              v19 = v15 * a3;
              v20 = v17 + v18;
              v21 = v19 >= v20;
              v15 = v19 - v20;
              if (v21)
              {
                ++v16;
                if (--v11)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v72 = v6;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v63 = 0;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v72;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_127;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          if (is_mul_ok(v63, a3))
          {
            v70 = v63 * a3;
            v71 = v68 + v69;
            v21 = __CFADD__(v70, v71);
            v63 = v70 + v71;
            if (!v21)
            {
              v67 = (v67 + 1);
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v72 + 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (is_mul_ok(v44, a3))
          {
            v51 = v44 * a3;
            v52 = v49 + v50;
            v21 = v51 >= v52;
            v44 = v51 - v52;
            if (v21)
            {
              ++v48;
              if (--v43)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v54 = 0;
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

      v58 = &v72 + 1;
      while (1)
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
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

        if (is_mul_ok(v54, a3))
        {
          v61 = v54 * a3;
          v62 = v59 + v60;
          v21 = __CFADD__(v61, v62);
          v54 = v61 + v62;
          if (!v21)
          {
            ++v58;
            if (--v53)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

void *sub_22BF14E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_22BF154E4(sub_22BF15908, v5, a1, a2);
}

uint64_t sub_22BF14E88(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BE29DD4(v7, v6);
      *v5 = xmmword_22C28BFC0;
      sub_22BE29DD4(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_22C26DCF4() && __OFSUB__(v7, sub_22C26DD14()))
      {
        goto LABEL_24;
      }

      sub_22C26DD24();
      swift_allocObject();
      v14 = sub_22C26DCD4();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_22BF15548(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BE29DD4(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_22C28BFC0;
      sub_22BE29DD4(0, 0xC000000000000000);
      sub_22C26DF84();
      v7 = v17;
      v10 = sub_22BF15548(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_22BE29DD4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_22BF1524C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_22C26DF74();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318A6690]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318A66B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_22BF152C8()
{
  result = qword_28106F240;
  if (!qword_28106F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106F240);
  }

  return result;
}

unint64_t sub_22BF15320()
{
  result = qword_27D90B188;
  if (!qword_27D90B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B188);
  }

  return result;
}

void sub_22BF153E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v17 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v17;
      goto LABEL_9;
    case 2uLL:
      v14 = *(a1 + 24);
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v16 = v14;
LABEL_9:
      sub_22BF156D0(a1, v16, v15, a3, a4, a5, a6, a7);
      if (v7)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v13 = 0;
      goto LABEL_5;
    default:
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_22BF155FC(a1, v13, a3, a4, a5, a6, a7);
      if (v7)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_22BF1549C(uint64_t result)
{
  if (result)
  {
    result = sub_22C273AB4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22BF154E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_22BF15548(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22C26DCF4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22C26DD14();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22C26DD04();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22BF155FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  a4(0);
  sub_22BF157B0(a5, a6, a7);
  return sub_22C272D84();
}

uint64_t sub_22BF156D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_22C26DCF4();
  if (!result || (result = sub_22C26DD14(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22C26DD04();
      a5(0);
      sub_22BF157B0(a6, a7, a8);
      return sub_22C272D84();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF157B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BF157F8(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B198, &unk_22C28C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_22BF15860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_22BF14E34(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_22BF158B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BE29DD4(result, a2);
  }

  return result;
}

uint64_t sub_22BF158C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22BF1549C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t Timepoint.date.setter()
{
  sub_22BE17BC4();
  sub_22C26E164();
  sub_22BE18000();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Timepoint.suspendingClockInstantNs.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for Timepoint(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

void (*Timepoint.suspendingClockInstantNs.modify())()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Timepoint(v0);
  return nullsub_1;
}

uint64_t Timepoint.continuousClockInstantNs.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for Timepoint(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

void (*Timepoint.continuousClockInstantNs.modify())()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Timepoint(v0);
  return nullsub_1;
}

uint64_t Timepoint.bootSessionUUID.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Timepoint(v2) + 28);
  sub_22C26E1D4();
  sub_22BE18000();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Timepoint.bootSessionUUID.modify())()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Timepoint(v0);
  return nullsub_1;
}

uint64_t Timepoint.init(date:suspendingClockInstantNs:continuousClockInstantNs:bootSessionUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22C26E164();
  sub_22BE18000();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for Timepoint(0);
  *(a5 + v11[5]) = a2;
  *(a5 + v11[6]) = a3;
  v12 = v11[7];
  sub_22C26E1D4();
  sub_22BE18000();
  v14 = *(v13 + 32);

  return v14(a5 + v12, a4);
}

uint64_t Timepoint.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22C26E134();
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    swift_once();
  }

  v5 = sub_22C26E1D4();
  v6 = sub_22BE199F4(v5, qword_28108A1E0);
  v7 = type metadata accessor for Timepoint(0);
  result = (*(*(v5 - 8) + 16))(a2 + v7[7], v6, v5);
  *(a2 + v7[5]) = v3;
  *(a2 + v7[6]) = v4;
  return result;
}

void sub_22BF15CF4()
{
  v0 = sub_22C26E1D4();
  sub_22BE952A4(v0, qword_28108A1E0);
  v1 = sub_22BE199F4(v0, qword_28108A1E0);
  sub_22BF15D40(v1);
}

void sub_22BF15D40(uint64_t a1@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_22C273534();
  *(v5 + 16) = 37;
  *(v5 + 48) = 0u;
  *(v5 + 61) = 0;
  *(v5 + 32) = 0u;
  v13[0] = 37;
  if (sysctlbyname("kern.bootsessionuuid", (v5 + 32), v13, 0, 0))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = sub_22BE957C8(v5);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  v8 = sub_22BF15F7C(v7);
  v10 = v9;
  sub_22C26E174();
  v11 = sub_22C26E1D4();
  if (sub_22BE1AEA8(v4, 1, v11) == 1)
  {
    sub_22BF16980(v4);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_22C273AA4();
    MEMORY[0x2318AB8D0](0xD000000000000036, 0x800000022C2D3BB0);
    MEMORY[0x2318AB8D0](v8, v10);
    MEMORY[0x2318AB8D0](39, 0xE100000000000000);
    sub_22C273C94();
    __break(1u);
  }

  else
  {

    (*(*(v11 - 8) + 32))(a1, v4, v11);
  }
}

uint64_t sub_22BF15F7C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_22C273124();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Timepoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22C26E114() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Timepoint(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)) || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  return sub_22C26E1B4();
}

uint64_t sub_22BF1608C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000022C2D3B10 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x800000022C2D3B30 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73736553746F6F62 && a2 == 0xEF444955556E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BF161FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF1608C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF16224(uint64_t a1)
{
  v2 = sub_22BE33758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF16260(uint64_t a1)
{
  v2 = sub_22BE33758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Timepoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_22C26E1D4();
  sub_22BE179D8();
  v38 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C26E164();
  sub_22BE179D8();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v44 = v12 - v11;
  sub_22BE5CE4C(&qword_27D90B1A8, &qword_22C28C178);
  sub_22BE179D8();
  v42 = v14;
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = type metadata accessor for Timepoint(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  v21 = v20 - v19;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE33758();
  v45 = v16;
  v22 = v46;
  sub_22C274214();
  if (v22)
  {
    return sub_22BE26B64(a1);
  }

  v46 = v7;
  v23 = v41;
  v50 = 0;
  sub_22BE1BEF0();
  sub_22BE337AC(v24, v25, MEMORY[0x277CC95A0]);
  sub_22C273EB4();
  v26 = *(v23 + 32);
  v27 = v21;
  v26(v21, v44, v8);
  v49 = 1;
  *(v21 + v17[5]) = sub_22C273EC4();
  v48 = 2;
  v28 = a1;
  *(v27 + v17[6]) = sub_22C273EC4();
  v47 = 3;
  sub_22BE189C0();
  sub_22BE337AC(v29, v30, MEMORY[0x277CC9618]);
  v44 = v27;
  v31 = v46;
  v32 = v40;
  sub_22C273EB4();
  v33 = sub_22BE1858C();
  v34(v33);
  v35 = v44;
  (*(v38 + 32))(v44 + v17[7], v31, v32);
  sub_22BF166D0(v35, v39);
  sub_22BE26B64(v28);
  return sub_22BF16734(v35);
}

uint64_t sub_22BF166D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timepoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF16734(uint64_t a1)
{
  v2 = type metadata accessor for Timepoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF167D4(uint64_t a1)
{
  result = sub_22C26E164();
  if (v2 <= 0x3F)
  {
    result = sub_22C26E1D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BF1687C()
{
  result = qword_27D90B1B8;
  if (!qword_27D90B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B1B8);
  }

  return result;
}

unint64_t sub_22BF168D4()
{
  result = qword_28106E040;
  if (!qword_28106E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E040);
  }

  return result;
}

unint64_t sub_22BF1692C()
{
  result = qword_28106E048;
  if (!qword_28106E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E048);
  }

  return result;
}

uint64_t sub_22BF16980(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF169E8()
{
  v0 = sub_22C271C14();
  sub_22BE952A4(v0, qword_28108A218);
  sub_22BE199F4(v0, qword_28108A218);
  return sub_22C271C04();
}

uint64_t SharedAssistantSchemaProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BF16CCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BF16D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22BE3B674(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_22C26E684();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = sub_22BE2500C();
    v14 = v10;
  }

  else
  {
    sub_22C26E684();
    sub_22BE1A140();
  }

  return sub_22BE19DC4(v11, v12, v13, v14);
}

double sub_22BF16DE8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_22BE6068C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_22BE635C4(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22BF16E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_22BE3B674(a1, a2);
    if (v3)
    {
    }
  }

  return sub_22BE19454();
}

uint64_t sub_22BF16ECC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22BE60930();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BF16F48@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 16) && (v7 = a3(), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(a1 + 56);
    v11 = a2(0);
    (*(*(v11 - 8) + 16))(a4, v10 + *(*(v11 - 8) + 72) * v9, v11);
    v12 = sub_22BE2500C();
    v15 = v11;
  }

  else
  {
    a2(0);
    sub_22BE1A140();
  }

  return sub_22BE19DC4(v12, v13, v14, v15);
}

void sub_22BF17014()
{
  sub_22BE19460();
  v0 = sub_22C2720A4();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  sub_22C271B14();
  v7 = sub_22C272084();
  v8 = sub_22C273794();
  if (os_log_type_enabled(v7, v8))
  {
    sub_22BE1A260();
    v9 = swift_slowAlloc();
    sub_22BE2386C();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_22C2742E4();
    v13 = sub_22BE61C88(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22BE15000, v7, v8, "Model Caching - %s does not exist, creating new model holder", v9, 0xCu);
    sub_22BE26B64(v10);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v2 + 8))(v6, v0);
  sub_22BE1AABC();
}

void sub_22BF17188()
{
  sub_22BE19460();
  v2 = v0;
  v4 = v3;
  v5 = sub_22C271FF4();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE25A90();
  v13 = sub_22C272024();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  if (sub_22BE63620(v4, v4, &protocol descriptor for ModelCache.CachableModel))
  {
    v35 = v5;
    sub_22C270B34();
    sub_22C270B34();
    sub_22C272014();
    sub_22C271FC4();
    v34 = *(v15 + 8);
    v34(v19, v13);
    v23 = sub_22C272014();
    v24 = sub_22C2737F4();
    if (sub_22C273824())
    {
      v25 = swift_slowAlloc();
      v33 = v2;
      v26 = v25;
      *v25 = 0;
      v27 = sub_22C271FD4();
      _os_signpost_emit_with_name_impl(&dword_22BE15000, v23, v24, v27, "ModelCache.ModelLoad", "", v26, 2u);
      v2 = v33;
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v7 + 16))(v11, v1, v35);
    sub_22C272064();
    swift_allocObject();
    v28 = sub_22C272054();
    v29 = sub_22BE354DC();
    v30(v29);
    v34(v22, v13);
    v31 = *(v2 + 16);
    os_unfair_lock_lock((v31 + 24));
    *(v31 + 16) = v28;

    os_unfair_lock_unlock((v31 + 24));
  }

  sub_22BE1AABC();
}

void sub_22BF1744C()
{
  sub_22BE19460();
  v2 = v1;
  sub_22C2720A4();
  sub_22BE179D8();
  v53 = v4;
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v52 = v6 - v5;
  sub_22BE183BC();
  v7 = sub_22C272034();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  sub_22C271FF4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22C272024();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v16 = sub_22BE63620(v2, v2, &protocol descriptor for ModelCache.CachableModel);
  if (v16)
  {
    v17 = v16;
    v18 = *(v0 + 16);
    os_unfair_lock_lock((v18 + 24));
    v19 = *(v18 + 16);
    *(v18 + 16) = 0;
    v20 = (v18 + 24);
    v21 = v19;
    os_unfair_lock_unlock(v20);
    if (v21)
    {
      sub_22C270B34();
      v22 = sub_22C272014();
      sub_22C272044();
      v51 = sub_22C2737E4();
      if (sub_22C273824())
      {

        sub_22C272074();

        if ((*(v9 + 88))(v13, v7) == *MEMORY[0x277D85B00])
        {
          v23 = 0;
          v24 = 0;
          v50 = "[Error] Interval already ended";
        }

        else
        {
          (*(v9 + 8))(v13, v7);
          v50 = "ModelName=%{public, signpost.telemetry:string1,public}s enableTelemetry=YES";
          v24 = 2;
          v23 = 1;
        }

        v29 = v52;
        sub_22BE1A260();
        v30 = swift_slowAlloc();
        sub_22BE2386C();
        v31 = swift_slowAlloc();
        v55 = v31;
        *v30 = v24;
        *(v30 + 1) = v23;
        *(v30 + 2) = 2082;
        v32 = sub_22BE373B8();
        v33(v32);
        v34 = sub_22C273AD4();
        v36 = sub_22BE61C88(v34, v35, &v55);

        *(v30 + 4) = v36;
        v37 = sub_22C271FD4();
        _os_signpost_emit_with_name_impl(&dword_22BE15000, v22, v51, v37, "ModelCache.ModelLoad", v50, v30, 0xCu);
        sub_22BE26B64(v31);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();

        v38 = sub_22BE201DC();
        v39(v38);
        v40 = sub_22BE290D8();
        v41(v40);
      }

      else
      {

        v25 = sub_22BE201DC();
        v26(v25);
        v27 = sub_22BE290D8();
        v28(v27);
        v29 = v52;
      }

      sub_22C271B14();
      v42 = sub_22C272084();
      v43 = sub_22C273794();
      if (os_log_type_enabled(v42, v43))
      {
        sub_22BE1A260();
        v44 = swift_slowAlloc();
        sub_22BE2386C();
        v45 = swift_slowAlloc();
        v55 = v45;
        *v44 = 136315138;
        v46 = sub_22BE373B8();
        v47(v46);
        v48 = sub_22C273AD4();
        sub_22BE61C88(v48, v49, &v55);
        sub_22BE22C70();

        *(v44 + 4) = v17;
        _os_log_impl(&dword_22BE15000, v42, v43, "Caching - signpost for %s", v44, 0xCu);
        sub_22BE26B64(v45);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      else
      {
      }

      (*(v53 + 8))(v29, v54);
    }
  }

  sub_22BE1AABC();
}

uint64_t _s30IntelligenceFlowPlannerSupport26SentencePieceCachableModelCfD_0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BF17A44()
{
  type metadata accessor for ModelCache(0);
  swift_allocObject();
  result = sub_22BF17AE0();
  qword_28107D1D0 = result;
  return result;
}

uint64_t static ModelCache.shared.getter()
{
  if (qword_28107D1C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BF17AE0()
{
  type metadata accessor for ModelCache.ModelCacheCallbacks();
  v1 = swift_allocObject();
  sub_22BE5CE4C(&qword_27D90B268, &unk_22C28C720);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  sub_22BF1C2E4(qword_28107D278, v3, type metadata accessor for ModelCache.ModelCacheCallbacks, &unk_22C28C6A0);
  sub_22C271BF4();
  return v0;
}

void ModelCache.getModel<A>(modelType:prewarm:keepAlive:)()
{
  sub_22BE19130();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8();
  v13 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  sub_22C271BD4();
  if (v0)
  {
    v8 = *(v13 + 32);
    v9 = sub_22BE354DC();
    v8(v9);
    sub_22BE1AB1C();
    swift_getAssociatedConformanceWitness();
    sub_22BE1AB74();
    if (sub_22C273FF4())
    {
      v10 = sub_22BE1AB74();
      v11(v10);
    }

    else
    {
      swift_allocError();
      (v8)(v12, v6, AssociatedTypeWitness);
    }
  }

  sub_22BE18478();
}

void ModelCache.sustainModelLifetime(using:for:)()
{
  ModelCache.getModel<A>(modelType:prewarm:keepAlive:)();
  if (!v0)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t ModelCache.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport10ModelCache_instance;
  sub_22C271C14();
  sub_22BE18524();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ModelCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport10ModelCache_instance;
  sub_22C271C14();
  sub_22BE18524();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t SentencePieceCachableModel.__allocating_init(parameters:)(uint64_t a1)
{
  v1 = swift_allocObject();
  SentencePieceCachableModel.init(parameters:)();
  return v1;
}

void SentencePieceCachableModel.init(parameters:)()
{
  sub_22BE19130();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C2720A4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;
  type metadata accessor for ToolEmbeddingsDatabase(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_22BF1C058(0x6D5F656365697073, 0xEB0000000070616DLL, 0x6C65646F6DLL, 0xE500000000000000, v12);
  v15 = v14;

  if (v15 && (sub_22BE45D84(0, &qword_28106DB08, 0x277D4D3A0), (v16 = sub_22BF181E4(v13, v15)) != 0))
  {
    v17 = v16;
    sub_22BE5CE4C(&qword_27D90B1F8, &unk_22C28C450);
    v18 = swift_allocObject();
    *(v18 + 24) = 0;
    *(v18 + 16) = v17;
    sub_22C271B74();
    sub_22BE18524();
    (*(v19 + 8))(v3);
    *(v1 + 16) = v18;
  }

  else
  {
    sub_22C271B14();
    v20 = sub_22C272084();
    v21 = sub_22C2737A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22BE15000, v20, v21, "Sentence piece model missing. Embedding failed.", v22, 2u);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v6 + 8))(v10, v4);
    sub_22BF1C114();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    sub_22C271B74();
    sub_22BE18524();
    (*(v24 + 8))(v3);
    swift_deallocPartialClassInstance();
  }

  sub_22BE18478();
}

id sub_22BF181E4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22C272FF4();

  v4 = [v2 initWithModelPath_];

  return v4;
}

Swift::Void __swiftcall SentencePieceCachableModel.prewarm()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = sub_22C272FF4();

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_22BF18330(uint64_t a1, void *a2)
{
  result = SentencePieceCachableModel.__allocating_init(parameters:)(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_22BF18388()
{
  v0 = sub_22C26DEA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C26DF64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271A84();
  v9[0] = 0xD00000000000001ALL;
  v9[1] = 0x800000022C28C600;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_22BE699D0();
  sub_22C26DF54();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_22BF18558()
{
  sub_22BE19460();
  v0 = sub_22C26DEA4();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C26DF64();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  sub_22BF18388();
  (*(v2 + 104))(v6, *MEMORY[0x277CC91D8], v0);
  sub_22BE699D0();
  sub_22C26DF54();
  v14 = sub_22BE1AB74();
  v15(v14);
  (*(v9 + 8))(v13, v7);
  sub_22BE1AABC();
}

void sub_22BF186E4()
{
  sub_22BE19130();
  v122 = v3;
  v123 = v2;
  v124 = v4;
  v125 = v5;
  v130 = v6;
  v134 = *MEMORY[0x277D85DE8];
  sub_22C2720A4();
  sub_22BE179D8();
  v126 = v8;
  v127 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  sub_22BE25A90();
  sub_22C26DF64();
  sub_22BE179D8();
  v128 = v14;
  v129 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v112 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v112 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v112 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v112 - v31;
  sub_22BF190CC();
  if (v0)
  {
    goto LABEL_13;
  }

  v118 = v26;
  v119 = v23;
  v116 = v20;
  v117 = v1;
  v121 = v11;
  v115 = v17;
  v120 = 0;
  sub_22C26DED4();
  sub_22BF18388();
  sub_22BE336E8();
  sub_22C26DEF4();

  v33 = v129;
  v34 = v128 + 8;
  v35 = *(v128 + 8);
  (v35)(v29, v129);
  v36 = [objc_opt_self() defaultManager];
  sub_22BF18388();
  sub_22C26DEE4();
  v37 = sub_22BE194EC();
  (v35)(v37, v33);
  v132[0] = 0;
  v38 = [v36 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v132];

  if (!v38)
  {
    v59 = v132[0];
    sub_22BE22C70();
    sub_22C26DE84();

    swift_willThrow();
    (v35)(v32, v33);
    goto LABEL_13;
  }

  v113 = v35;
  v114 = v34;
  v39 = v132[0];
  v40 = sub_22C26DEE4();
  v41 = sub_22C26DEE4();
  v132[0] = 0;
  v42 = [v36 copyItemAtURL:v40 toURL:v41 error:v132];

  v43 = v36;
  if (!v42)
  {
    v60 = v132[0];
    sub_22BE22C70();
    sub_22C26DE84();

LABEL_10:
    swift_willThrow();

    v61 = v32;
    v62 = v129;
LABEL_12:
    (v113)(v61, v62);
    goto LABEL_13;
  }

  v112 = v32;
  v44 = v132[0];
  sub_22C26DF24();
  sub_22C272FF4();
  sub_22BE22C70();

  v131 = 0;
  v45 = [v36 attributesOfItemAtPath:v40 error:&v131];

  v46 = v131;
  v47 = v129;
  if (!v45)
  {
    v63 = v131;
    sub_22BE194EC();
    sub_22C26DE84();

    swift_willThrow();
    v61 = v112;
    v62 = v47;
    goto LABEL_12;
  }

  type metadata accessor for FileAttributeKey(0);
  v48 = sub_22BF1C2E4(&qword_28106DB38, 255, type metadata accessor for FileAttributeKey, &unk_22C274F38);
  v49 = MEMORY[0x277D84F70];
  v50 = v48;
  v51 = sub_22C272E54();
  v52 = v46;

  v53 = *MEMORY[0x277CCA1C0];
  sub_22BE2684C();
  sub_22BF16DE8(v54, v55);

  if (v133)
  {
    if (sub_22BE18258(v56, v57, v58, MEMORY[0x277D84A28]))
    {
      v130 = v131;
      goto LABEL_16;
    }
  }

  else
  {
    sub_22BE233E8(v132, &qword_27D90B260, &qword_22C28C718);
  }

  v130 = 0;
LABEL_16:
  v32 = v112;
  sub_22C26DF24();
  sub_22C272FF4();
  sub_22BE22C70();

  v131 = 0;
  v64 = [v36 attributesOfItemAtPath:v51 error:&v131];

  v65 = v131;
  if (!v64)
  {
    v88 = v131;
    sub_22BE194EC();
    sub_22C26DE84();

    goto LABEL_10;
  }

  v66 = sub_22C272E54();
  v67 = v65;

  sub_22BE2684C();
  sub_22BF16DE8(v68, v69);

  if (!v133)
  {
    sub_22BE233E8(v132, &qword_27D90B260, &qword_22C28C718);
    sub_22BE2547C();
LABEL_24:
    if (!v130)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  sub_22BE18258(v70, v71, v72, MEMORY[0x277D84A28]);
  sub_22BE2547C();
  if (!v73)
  {
    goto LABEL_24;
  }

  if (v130 == v131)
  {
LABEL_20:
    sub_22C271AD4();
    (*(v53 + 16))(v49, v66, v50);
    v74 = sub_22C272084();
    v75 = sub_22C2737C4();
    if (os_log_type_enabled(v74, v75))
    {
      sub_22BE1A260();
      v76 = swift_slowAlloc();
      sub_22BE2386C();
      v77 = swift_slowAlloc();
      v132[0] = v77;
      *v76 = 136315138;
      sub_22BE17C78();
      sub_22BF1C2E4(v78, 255, v79, MEMORY[0x277CC9290]);
      v80 = sub_22C273FD4();
      sub_22BE38348();
      v82 = *(v81 - 256);
      v82();
      v83 = sub_22BE336E8();
      sub_22BE61C88(v83, v84, v85);
      sub_22BE289CC();
      v66 = v112;

      *(v76 + 4) = v80;
      v50 = v129;
      _os_log_impl(&dword_22BE15000, v74, v75, "Tool Retrieval: Saving precompiled model at %s", v76, 0xCu);
      sub_22BE26B64(v77);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      sub_22BE3D14C();
      v87 = v121;
    }

    else
    {

      v107 = v49;
      v82 = v113;
      (v113)(v107, v50);
      sub_22BE3D14C();
      v87 = v65;
    }

    v86(v87, v127);
    v108 = v116;
    sub_22BE1BA50();
    sub_22BF18558();
    v109 = v120;
    sub_22C26E044();
    if (v109)
    {

      v110 = v108;
    }

    else
    {
      (v82)(v108, v50);
      sub_22BE19F14();
      v111 = v115;
      sub_22BF18558();
      sub_22C26E044();

      v110 = v111;
    }

    (v82)(v110, v50);
    (v82)(v66, v50);
    goto LABEL_13;
  }

LABEL_25:
  v89 = v117;
  sub_22C271AD4();
  v90 = sub_22BE1AB1C();
  v91(v90);
  v92 = sub_22C272084();
  v93 = sub_22C2737A4();
  if (os_log_type_enabled(v92, v93))
  {
    sub_22BE1A260();
    v94 = swift_slowAlloc();
    sub_22BE2386C();
    v95 = swift_slowAlloc();
    v132[0] = v95;
    *v94 = 136315138;
    sub_22BE17C78();
    sub_22BF1C2E4(v96, 255, v97, MEMORY[0x277CC9290]);
    v98 = v32;
    sub_22C273FD4();
    sub_22BE3D43C();
    sub_22BE38348();
    v100 = *(v99 - 256);
    v100();
    v101 = sub_22BE336E8();
    sub_22BE61C88(v101, v102, v103);
    sub_22BE289CC();
    v66 = v112;

    *(v94 + 4) = v98;
    _os_log_impl(&dword_22BE15000, v92, v93, "Error while copying the compiled model to %s", v94, 0xCu);
    sub_22BE26B64(v95);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    sub_22BE3D14C();
    v105 = v117;
  }

  else
  {

    sub_22BE38348();
    v100 = *(v106 - 256);
    v100();
    sub_22BE3D14C();
    v105 = v89;
  }

  v104(v105, v127);
  sub_22BF190CC();
  (v100)(v66, v129);

LABEL_13:
  sub_22BE18478();
}

void sub_22BF190CC()
{
  sub_22BE19130();
  v33[1] = *MEMORY[0x277D85DE8];
  sub_22C2720A4();
  sub_22BE179D8();
  v31 = v1;
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  sub_22BE179EC();
  v4 = v3 - v2;
  v5 = sub_22C26DF64();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = [objc_opt_self() defaultManager];
  sub_22BF18388();
  sub_22C26DF14();
  v13 = *(v7 + 8);
  v13(v11, v5);
  sub_22BE19454();
  v14 = sub_22C272FF4();

  v15 = [v12 fileExistsAtPath_];

  if (v15)
  {
    v30 = v12;
    sub_22C271AD4();
    v16 = sub_22C272084();
    v17 = sub_22C2737C4();
    if (os_log_type_enabled(v16, v17))
    {
      sub_22BE1A260();
      v28 = swift_slowAlloc();
      sub_22BE2386C();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v28 = 136315138;
      sub_22BF18388();
      sub_22BE17C78();
      sub_22BF1C2E4(v18, 255, v19, MEMORY[0x277CC9290]);
      v20 = sub_22C273FD4();
      v13(v11, v5);
      v21 = sub_22BE336E8();
      sub_22BE61C88(v21, v22, v23);
      sub_22BE289CC();

      *(v28 + 4) = v20;
      _os_log_impl(&dword_22BE15000, v16, v17, "Tool Retrieval: Deleting precompiled model at %s", v28, 0xCu);
      sub_22BE26B64(v29);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v31 + 8))(v4, v32);
    sub_22BF18388();
    v24 = sub_22C26DEE4();
    v13(v11, v5);
    v33[0] = 0;
    v12 = v30;
    v25 = [v30 removeItemAtURL:v24 error:v33];

    if (v25)
    {
      v26 = v33[0];
    }

    else
    {
      v27 = v33[0];
      sub_22C26DE84();

      swift_willThrow();
    }
  }

  sub_22BE18478();
}

void sub_22BF19450()
{
  sub_22BE19130();
  v100 = v2;
  v101 = v0;
  v102[3] = *MEMORY[0x277D85DE8];
  sub_22C2720A4();
  sub_22BE179D8();
  v98 = v4;
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  v94 = v5 - v6;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v7);
  v97 = &v86 - v8;
  sub_22BE183BC();
  sub_22C26DEA4();
  sub_22BE179D8();
  v92 = v10;
  v93 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v91 = v12 - v11;
  sub_22BE183BC();
  v13 = sub_22C26DF64();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v96 = v17 - v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE25A90();
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  sub_22BE1BA50();
  sub_22BF18558();
  v22 = sub_22C26DF14();
  v95 = v15;
  v25 = *(v15 + 8);
  v23 = v15 + 8;
  v24 = v25;
  v25(v1, v13);
  sub_22C272FF4();
  sub_22BE194EC();

  v26 = [v21 fileExistsAtPath_];

  if (!v26)
  {
    sub_22BE1A140();
    v48 = v13;
LABEL_22:
    sub_22BE19DC4(v45, v46, v47, v48);
    goto LABEL_23;
  }

  v27 = [v20 defaultManager];
  sub_22BF18388();
  sub_22C26DF14();
  v24(v1, v13);
  v28 = sub_22C272FF4();

  v102[0] = 0;
  v29 = [v27 contentsOfDirectoryAtPath:v28 error:v102];

  v30 = v102[0];
  if (!v29)
  {
    v67 = v102[0];
    sub_22C26DE84();

    swift_willThrow();
    goto LABEL_23;
  }

  v87 = v24;
  v88 = v23;
  v90 = v13;
  v31 = sub_22C273494();
  v32 = v30;

  v33 = 0;
  v34 = *(v31 + 16);
  v35 = v31 + 40;
  v36 = MEMORY[0x277D84F90];
  v89 = v31 + 40;
LABEL_4:
  v37 = (v35 + 16 * v33);
  while (v34 != v33)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
    }

    v38 = *(v37 - 1);
    v39 = *v37;

    if (sub_22C273274())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102[0] = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE70138(0, v36[2] + 1, 1);
        v36 = v102[0];
      }

      v42 = v36[2];
      v41 = v36[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v86 = v42 + 1;
        sub_22BE70138(v41 > 1, v42 + 1, 1);
        v43 = v86;
        v36 = v102[0];
      }

      ++v33;
      v36[2] = v43;
      v44 = &v36[2 * v42];
      v44[4] = v38;
      v44[5] = v39;
      v35 = v89;
      goto LABEL_4;
    }

    v37 += 2;
    ++v33;
  }

  if (v36[2] != 1)
  {

    v68 = v94;
    sub_22C271AD4();
    v69 = sub_22C272084();
    v70 = sub_22C2737C4();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v90;
    if (v71)
    {
      sub_22BE1A260();
      v73 = swift_slowAlloc();
      sub_22BE2386C();
      v74 = swift_slowAlloc();
      v102[0] = v74;
      *v73 = 136315138;
      sub_22BF18388();
      sub_22BE17C78();
      sub_22BF1C2E4(v75, 255, v76, MEMORY[0x277CC9290]);
      v77 = sub_22C273FD4();
      v79 = v78;
      v80 = sub_22BE1AB74();
      v87(v80);
      v81 = sub_22BE61C88(v77, v79, v102);

      *(v73 + 4) = v81;
      _os_log_impl(&dword_22BE15000, v69, v70, "No compiled model found in %s", v73, 0xCu);
      sub_22BE26B64(v74);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v98 + 8))(v68, v99);
    sub_22BE1A140();
    v48 = v72;
    goto LABEL_22;
  }

  v49 = v36[4];
  v50 = v36[5];

  v51 = v96;
  sub_22BF18388();
  v102[0] = v49;
  v102[1] = v50;
  v53 = v91;
  v52 = v92;
  v54 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277CC91D8], v93);
  sub_22BE699D0();
  sub_22C26DF34();
  (*(v52 + 8))(v53, v54);

  v55 = v97;
  sub_22C271AD4();
  v56 = sub_22C272084();
  v57 = sub_22C2737C4();
  if (os_log_type_enabled(v56, v57))
  {
    sub_22BE1A260();
    v58 = swift_slowAlloc();
    sub_22BE2386C();
    v59 = swift_slowAlloc();
    v102[0] = v59;
    *v58 = 136315138;
    swift_beginAccess();
    sub_22BE17C78();
    sub_22BF1C2E4(v60, 255, v61, MEMORY[0x277CC9290]);
    v62 = v90;
    v63 = sub_22C273FD4();
    v65 = sub_22BE61C88(v63, v64, v102);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_22BE15000, v56, v57, "Tool Retrieval: Using the precompiled model at %s", v58, 0xCu);
    sub_22BE26B64(v59);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    (*(v98 + 8))(v55, v99);
    v66 = v100;
  }

  else
  {

    (*(v98 + 8))(v55, v99);
    v66 = v100;
    v62 = v90;
  }

  v82 = v95;
  swift_beginAccess();
  (*(v82 + 16))(v66, v51, v62);
  v83 = sub_22BE2500C();
  sub_22BE19DC4(v83, v84, v85, v62);
  (v87)(v51, v62);
LABEL_23:
  sub_22BE18478();
}

uint64_t SbertCachableModel.__allocating_init(parameters:)(uint64_t a1)
{
  v1 = swift_allocObject();
  SbertCachableModel.init(parameters:)();
  return v1;
}

void SbertCachableModel.init(parameters:)()
{
  sub_22BE19130();
  v299 = v1;
  v297 = v2;
  v300[2] = *MEMORY[0x277D85DE8];
  v3 = *v0;
  v298 = v0;
  v295 = v3;
  sub_22C2720A4();
  sub_22BE179D8();
  v284 = v5;
  v285 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v283 = v7 - v6;
  sub_22BE183BC();
  v276 = sub_22C273064();
  sub_22BE179D8();
  v277 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v275 = v11 - v10;
  sub_22BE183BC();
  v281 = sub_22C26DEA4();
  sub_22BE179D8();
  v280 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v279 = v15 - v14;
  v16 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  MEMORY[0x28223BE20](v16 - 8);
  sub_22BE183AC();
  v294 = (v17 - v18);
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v20);
  v288 = v273 - v21;
  sub_22BE183BC();
  v293 = sub_22C26DF64();
  sub_22BE179D8();
  v289 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v25);
  sub_22BE19490();
  v282 = v26;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v27);
  sub_22BE19490();
  v286 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v30);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  v287 = v273 - v37;
  sub_22BE183BC();
  v38 = sub_22C26E514();
  sub_22BE179D8();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  sub_22BE179EC();
  v44 = v43 - v42;
  v292 = sub_22C26EA04();
  sub_22BE179D8();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  sub_22BE179EC();
  v50 = v49 - v48;
  v51 = sub_22BE5CE4C(&qword_27D90B200, &qword_22C28C460);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v273 - v52;
  v54 = sub_22C270264();
  sub_22BE179D8();
  v290 = v55;
  MEMORY[0x28223BE20](v56);
  sub_22BE179EC();
  v291 = v58 - v57;
  v296 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v296 setComputeUnits_];
  type metadata accessor for QueryableToolbox();
  v59 = static QueryableToolbox.getLanguageCode()();
  if (!v60)
  {
    goto LABEL_7;
  }

  v61 = v59;
  v62 = v60;
  sub_22C26E9F4();
  (*(v40 + 104))(v44, *MEMORY[0x277D1C220], v38);
  v273[1] = v61;
  sub_22C26E9E4();
  (*(v40 + 8))(v44, v38);
  (*(v46 + 8))(v50, v292);
  if (sub_22BE1AEA8(v53, 1, v54) != 1)
  {
    v292 = v62;
    (*(v290 + 32))(v291, v53, v54);
    v66 = v288;
    sub_22C270244();
    v67 = v293;
    if (sub_22BE1AEA8(v66, 1, v293) == 1)
    {
      v68 = sub_22BE336E8();
      v69(v68);

      v63 = &qword_27D908088;
      v64 = &qword_22C278EC0;
      v65 = v66;
      goto LABEL_6;
    }

    v273[0] = v54;
    v300[0] = 0xD000000000000037;
    v300[1] = 0x800000022C2D3CE0;
    v90 = v280;
    v91 = v279;
    v92 = v281;
    v280[13](v279, *MEMORY[0x277CC91D8], v281);
    sub_22BE699D0();
    v93 = v278;
    sub_22C26DF54();
    (*(v90 + 8))(v91, v92);
    v94 = v289;
    v96 = (v289 + 8);
    v95 = *(v289 + 8);
    v95(v66, v67);
    v98 = *(v94 + 32);
    v97 = v94 + 32;
    v99 = v67;
    v100 = v287;
    v281 = v98;
    v98(v287, v93, v99);
    v288 = objc_opt_self();
    v101 = [v288 defaultManager];
    sub_22C26DF14();
    v102 = sub_22C272FF4();

    v103 = [v101 fileExistsAtPath_];

    if ((v103 & 1) == 0)
    {

      v95(v100, v99);
      v113 = sub_22BE1A68C();
      v114(v113);
      goto LABEL_7;
    }

    v294 = v95;
    v104 = sub_22C270254();
    v286 = v96;
    if (v104)
    {
      v105 = sub_22BE1BA50();
      sub_22BF16E4C(v105, 0xE700000000000000, v104);
      v107 = v106;

      sub_22BE36748();
      if (v107)
      {
        sub_22BE236D4();
        sub_22C273054();
        v108 = sub_22C273034();
        v110 = v109;
        v104 = v108;

        v111 = sub_22BE336E8();
        v112(v111);
      }

      else
      {
        v104 = 0;
        v110 = 0xF000000000000000;
      }
    }

    else
    {
      v110 = 0xF000000000000000;
      sub_22BE36748();
    }

    sub_22C273054();
    v285 = sub_22C273034();
    v127 = v126;

    v128 = v100 + 8;
    v129 = sub_22BE336E8();
    v282 = v130;
    (v130)(v129);
    v292 = v127;
    v283 = v110 >> 60;
    v284 = v127 >> 60;
    if (v110 >> 60 == 15)
    {
      v277 = v128;
      sub_22BF1C7C0();
      v131 = v287;
LABEL_27:
      v132 = objc_opt_self();
      v133 = sub_22C26DEE4();
      v300[0] = 0;
      v134 = [v132 compileModelAtURL:v133 error:v300];

      v135 = v300[0];
      if (!v134)
      {
        v163 = v300[0];
        sub_22C26DE84();

        swift_willThrow();
        sub_22BF158B4(v285, v292);
        v164 = sub_22BE23108();
        sub_22BF158B4(v164, v165);

        sub_22C271B74();
        sub_22BE18524();
        (*(v166 + 8))(v297);
        v294(v131, v293);
        v83 = sub_22BE1A68C();
LABEL_13:
        v82(v83);
        goto LABEL_39;
      }

      v280 = v104;
      v136 = v274;
      sub_22C26DF04();
      v137 = v135;
      v138 = v136;

      v139 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse;
      v140 = v293;
      (*(v97 + 16))(v128 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse, v136, v293);
      v141 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
      sub_22BE19DC4(v128 + v139, 0, 1, v141);
      goto LABEL_29;
    }

    v152 = sub_22BE23108();
    sub_22BE29D7C(v152, v153);
    sub_22BE1B754();
    v154 = v299;
    sub_22BF19450();
    v299 = v154;
    v131 = v287;
    v155 = v294;
    if (v154)
    {
      sub_22BF158B4(v285, v292);
      v156 = sub_22BE23108();
      sub_22BF158B4(v156, v157);
      v158 = sub_22BE23108();
      sub_22BF158B4(v158, v159);

      sub_22C271B74();
      sub_22BE18524();
      (*(v160 + 8))(v297);
      v155(v131, v293);
LABEL_33:
      v161 = sub_22BE1A68C();
      v162(v161);
      goto LABEL_39;
    }

    v167 = v293;
    if (sub_22BE1AEA8(v95, 1, v293) == 1)
    {
      v277 = v128;
      v168 = sub_22BE23108();
      sub_22BF158B4(v168, v169);
      sub_22BE233E8(v95, &qword_27D908088, &qword_22C278EC0);
      sub_22BF1C7C0();
      goto LABEL_27;
    }

    v194 = sub_22BE196E0();
    v281(v194, v95, v167);
    v280 = v104;
    v195 = sub_22BE23108();
    sub_22BE29D7C(v195, v196);
    v197 = [v288 defaultManager];
    sub_22BE236D4();
    sub_22BF18558();
    v198 = sub_22C26DF14();
    v294(v104, v167);
    sub_22C272FF4();
    sub_22BE194EC();

    v199 = [v197 fileExistsAtPath_];

    if (!v199)
    {
      v277 = v128;
      v97 = v289;
      sub_22BE33A0C();
LABEL_53:
      v213 = sub_22BE23108();
      sub_22BF158B4(v213, v214);
      v215 = sub_22BE23108();
      sub_22BF158B4(v215, v216);
      v217 = sub_22BE336E8();
      sub_22BF158B4(v217, v218);
      v128 = v298;
LABEL_54:
      v219 = sub_22BE196E0();
      v294(v219, v293);
LABEL_55:
      v131 = v287;
      goto LABEL_27;
    }

    sub_22BE236D4();
    sub_22BF18558();
    v200 = v299;
    sub_22C26DFA4();
    v299 = v200;
    if (v200)
    {
      sub_22BE25668();
      sub_22BE29DD4(0x6E6F6973726576, v110);

      sub_22C271B74();
      sub_22BE18524();
      (*(v201 + 8))(v297);
      v202 = v293;
      v203 = v294;
      v294(v104, v293);
      v204 = sub_22BE196E0();
      v203(v204, v202);
      v203(v287, v202);
      goto LABEL_33;
    }

    v220 = sub_22BE3D43C();
    v294(v220, v293);
    v104 = v280;
    v277 = v128;
    if (v197 >> 60 == 15)
    {
      v97 = v289;
      goto LABEL_53;
    }

    v221 = sub_22BE23108();
    sub_22BF1C1E4(v221, v222);
    v223 = sub_22BE336E8();
    sub_22BF1C1E4(v223, v224);
    v225 = sub_22BE23108();
    v226 = MEMORY[0x2318A6720](v225);
    v227 = sub_22BE336E8();
    sub_22BF158B4(v227, v228);
    v229 = sub_22BE336E8();
    sub_22BF158B4(v229, v230);
    v231 = sub_22BE23108();
    sub_22BF158B4(v231, v232);
    v233 = sub_22BE23108();
    sub_22BF158B4(v233, v234);
    if ((v226 & 1) == 0)
    {
      v245 = sub_22BE23108();
      sub_22BF158B4(v245, v246);
      sub_22BF1C7C0();
      goto LABEL_54;
    }

    v235 = [v288 defaultManager];
    sub_22BE236D4();
    sub_22BF18558();
    sub_22C26DF14();
    v236 = sub_22BE3D43C();
    v294(v236, v293);
    sub_22BE336E8();
    sub_22C272FF4();
    sub_22BE289CC();

    v237 = [v235 fileExistsAtPath_];

    if (v237)
    {
      sub_22BE19F14();
      sub_22BE1B754();
      sub_22BF18558();
      v238 = v299;
      v239 = sub_22C26DFA4();
      v299 = v238;
      if (v238)
      {
        sub_22BE25668();

        sub_22C271B74();
        sub_22BE18524();
        (*(v241 + 8))(v297);
        v243 = v293;
        v242 = v294;
        v294(v237, v293);
        v244 = sub_22BE196E0();
        v242(v244, v243);
        v242(v287, v243);
        goto LABEL_33;
      }

      v250 = v239;
      v247 = v240;
      v294(v237, v293);
      if (v284 > 0xE)
      {
LABEL_66:
        v128 = v285;
        sub_22BF1C1E4(v285, v292);
        sub_22BE33A0C();
        v251 = sub_22BE23108();
        sub_22BF158B4(v251, v252);
        if (v247 >> 60 == 15)
        {
          v253 = sub_22BE2684C();
          sub_22BF158B4(v253, v254);
LABEL_68:
          v138 = v274;
          v140 = v293;
          v281(v274, v273[4], v293);
          sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
          v128 = v298;
          sub_22BE1A140();
          sub_22BE19DC4(v255, v256, v257, v258);
LABEL_29:
          sub_22BE45D84(0, &qword_28106DAF8, 0x277CBFF20);
          v142 = v273[6];
          v143 = sub_22BE1AB1C();
          v144(v143);
          v145 = v296;
          v146 = v299;
          v147 = sub_22BF1B700(v142, v145);
          if (v146)
          {
            sub_22BF158B4(v285, v292);
            sub_22BF158B4(v280, v110);

            sub_22C271B74();
            sub_22BE18524();
            (*(v148 + 8))(v297);
            v149 = v294;
            v294(v138, v140);
            v149(v287, v140);
            v150 = sub_22BE1A68C();
            v151(v150);
            sub_22BF1C168(v128 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse);
            goto LABEL_39;
          }

          v179 = v147;
          sub_22BE5CE4C(&qword_27D90B208, &qword_22C28C468);
          v180 = swift_allocObject();
          *(v180 + 24) = 0;
          *(v180 + 16) = v179;
          v128[2] = v180;
          v181 = v283 >= 0xF && v284 >= 0xF;
          v182 = v280;
          if (v181)
          {
            sub_22BE236D4();
            sub_22C273054();
            v205 = sub_22C273034();
            v207 = v206;

            sub_22C271B74();
            sub_22BE18524();
            (*(v208 + 8))(v297);
            v282(v142, v276);
            v209 = sub_22BE35824();
            (v145)(v209);
            (v145)(v287, v140);
            v210 = sub_22BE1A68C();
            v211(v210);
            v128[3] = v205;
            v128[4] = v207;
            v212 = (v128 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
            *v212 = v205;
            v212[1] = v207;
            sub_22BF1C1E4(v205, v207);
          }

          else
          {

            sub_22C271B74();
            sub_22BE18524();
            (*(v183 + 8))(v297);
            v184 = sub_22BE35824();
            (v145)(v184);
            (v145)(v287, v140);
            v185 = sub_22BE1A68C();
            v186(v185);
            v128[3] = v182;
            v128[4] = v110;
            v187 = (v128 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
            v188 = v292;
            *v187 = v285;
            v187[1] = v188;
          }

          goto LABEL_40;
        }

        goto LABEL_69;
      }

      if (v247 >> 60 != 15)
      {
        v264 = v285;
        v265 = v292;
        sub_22BF1C1E4(v285, v292);
        sub_22BF1C1E4(v250, v247);
        v266 = MEMORY[0x2318A6720](v264, v265, v250, v247);
        v267 = sub_22BE19454();
        sub_22BF158B4(v267, v268);
        v269 = sub_22BE19454();
        sub_22BF158B4(v269, v270);
        sub_22BE33A0C();
        v271 = sub_22BE23108();
        sub_22BF158B4(v271, v272);
        sub_22BF158B4(v264, v265);
        if (v266)
        {
          goto LABEL_68;
        }

LABEL_70:
        v263 = sub_22BE196E0();
        v294(v263, v293);
        sub_22BF1C7C0();
        goto LABEL_55;
      }
    }

    else
    {
      v247 = 0xF000000000000000;
      if (v284 > 0xE)
      {
        goto LABEL_66;
      }
    }

    v128 = v285;
    sub_22BF1C1E4(v285, v292);
    sub_22BE33A0C();
    v248 = sub_22BE23108();
    sub_22BF158B4(v248, v249);
LABEL_69:
    v259 = sub_22BE2684C();
    sub_22BF158B4(v259, v260);
    v261 = sub_22BE19454();
    sub_22BF158B4(v261, v262);
    goto LABEL_70;
  }

  v63 = &qword_27D90B200;
  v64 = &qword_22C28C460;
  v65 = v53;
LABEL_6:
  sub_22BE233E8(v65, v63, v64);
LABEL_7:
  v70 = v294;
  v71 = v299;
  sub_22BF19450();
  if (v71)
  {
    sub_22C271B74();
    sub_22BE18524();
    (*(v72 + 8))(v297);

LABEL_39:
    swift_deallocPartialClassInstance();
    goto LABEL_40;
  }

  v73 = v293;
  v74 = sub_22BE1AEA8(v70, 1, v293);
  v75 = v298;
  if (v74 == 1)
  {
    sub_22BE233E8(v70, &qword_27D908088, &qword_22C278EC0);
    v76 = v283;
    sub_22C271AD4();
    v77 = sub_22C272084();
    v78 = sub_22C2737C4();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_22BE15000, v77, v78, "Tool Retrieval Model not found in OTA asset and no saved model available", v79, 2u);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v284 + 8))(v76, v285);
    sub_22BF1C114();
    swift_allocError();
    *v80 = 2;
    swift_willThrow();

    sub_22C271B74();
    sub_22BE18524();
    v82 = *(v81 + 8);
    v83 = v297;
    goto LABEL_13;
  }

  v84 = v289;
  v85 = v286;
  v86 = sub_22BE1AB74();
  v87(v86);
  sub_22BE45D84(0, &qword_28106DAF8, 0x277CBFF20);
  v88 = v282;
  (*(v84 + 16))(v282, v85, v73);
  v89 = v296;
  v115 = sub_22BF1B700(v88, v89);
  sub_22BE5CE4C(&qword_27D90B208, &qword_22C28C468);
  v116 = swift_allocObject();
  *(v116 + 24) = 0;
  *(v116 + 16) = v115;
  v75[2] = v116;
  sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
  sub_22BE1A140();
  sub_22BE19DC4(v117, v118, v119, v120);
  v296 = objc_opt_self();
  v121 = [v296 defaultManager];
  sub_22BF18558();
  sub_22C26DF14();
  v122 = sub_22BE354DC();
  v299 = v123;
  v123(v122);
  v124 = sub_22C272FF4();

  v125 = [v121 fileExistsAtPath_];

  if (v125)
  {
    sub_22BE1B754();
    sub_22BF18558();
    v170 = sub_22C26DFA4();
    v172 = v171;
    v299(0x6E6F6973726576, v293);
  }

  else
  {
    v170 = 0;
    v172 = 0xF000000000000000;
  }

  v75[3] = v170;
  v75[4] = v172;
  v173 = [v296 defaultManager];
  sub_22BE236D4();
  sub_22BF18558();
  sub_22C26DF14();
  v174 = v172;
  v175 = v299;
  v299(v174, v293);
  v176 = sub_22C272FF4();

  v177 = [v173 fileExistsAtPath_];

  if (v177)
  {
    sub_22BE19F14();
    sub_22BE1B754();
    sub_22BF18558();
    v189 = sub_22C26DFA4();
    v191 = v190;

    sub_22C271B74();
    sub_22BE18524();
    (*(v192 + 8))(v297);
    v175(v173, v293);
  }

  else
  {

    sub_22C271B74();
    sub_22BE18524();
    (*(v178 + 8))(v297);
    v189 = 0;
    v191 = 0xF000000000000000;
  }

  v175(v286, v293);
  v193 = (v75 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
  *v193 = v189;
  v193[1] = v191;
LABEL_40:
  sub_22BE18478();
}

id sub_22BF1B700(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C26DEE4();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_22C26DF64();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_22C26DE84();

    swift_willThrow();
    v11 = sub_22C26DF64();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void SbertCachableModel.deinit()
{
  sub_22BE19460();
  sub_22C2720A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v2 = sub_22C26DF64();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = type metadata accessor for SbertCachableModel.ModelOptions(0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse;
  sub_22BF1C1F8(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse, v11 - v10);
  v14 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
  v15 = &qword_27D90B000;
  if (sub_22BE1AEA8(v12, 1, v14) != 1)
  {
    (*(v4 + 32))(v8, v12, v2);
    v16 = *(v0 + 32);
    if (v16 >> 60 == 15 || (v17 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale + 8), v17 >> 60 == 15))
    {
      v18 = sub_22BE1AB1C();
      v19(v18);
    }

    else
    {
      v20 = *(v0 + 24);
      v21 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
      sub_22BF1C1E4(v20, v16);
      sub_22BF1C1E4(v21, v17);
      sub_22BF186E4();
      v22 = sub_22BE1AB1C();
      v23(v22);
      sub_22BF158B4(v21, v17);
      sub_22BF158B4(v20, v16);
    }

    v15 = &qword_27D90B000;
  }

  sub_22BF158B4(*(v0 + 24), *(v0 + 32));
  sub_22BF1C168(v0 + v13);
  sub_22BF158B4(*(v0 + v15[68]), *(v0 + v15[68] + 8));
  sub_22BE1AABC();
}

uint64_t SbertCachableModel.__deallocating_deinit()
{
  SbertCachableModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SbertCachableModel.prewarm()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22BF1BCCC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_22BF1BCCC(void **a1)
{
  v23[17] = *MEMORY[0x277D85DE8];
  v3 = sub_22BE5CE4C(&qword_27D90B250, &qword_22C28C708);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  v23[0] = 0;
  sub_22BF1C754();
  sub_22C2720B4();
  v23[0] = 0;
  sub_22C2720B4();
  sub_22BE5CE4C(&qword_27D90B258, &qword_22C28C710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C2759F0;
  *(inited + 32) = 0x64695F6E656B6F74;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 72) = v3;
  v11 = sub_22BE62524((inited + 48));
  v12 = *(v4 + 16);
  v12(v11, v9, v3);
  strcpy((inited + 80), "padding_mask");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 120) = v3;
  v13 = sub_22BE62524((inited + 96));
  v12(v13, v6, v3);
  v14 = sub_22C272E84();
  v15 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v16 = sub_22BF646D8(v14);
  if (!v1)
  {
    v17 = v16;
    v18 = *a1;
    v23[0] = 0;
    if ([v18 predictionFromFeatures:v17 error:v23])
    {
      v19 = v23[0];

      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v23[0];
      sub_22C26DE84();

      swift_willThrow();
    }
  }

  v21 = *(v4 + 8);
  v21(v6, v3);
  return (v21)(v9, v3);
}

uint64_t sub_22BF1BFF8(uint64_t a1, void *a2)
{
  result = SbertCachableModel.__allocating_init(parameters:)(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

void sub_22BF1C028(void *a1)
{
  SbertCachableModel.prewarm()();
  if (v2)
  {
    *a1 = v2;
  }
}

uint64_t sub_22BF1C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C272FF4();

  v7 = sub_22C272FF4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_22C273024();

  return v9;
}

unint64_t sub_22BF1C114()
{
  result = qword_27D90B1F0;
  if (!qword_27D90B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B1F0);
  }

  return result;
}

uint64_t sub_22BF1C168(uint64_t a1)
{
  v2 = type metadata accessor for SbertCachableModel.ModelOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BF1C1E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_22BE29D7C(a1, a2);
  }
}

uint64_t sub_22BF1C1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SbertCachableModel.ModelOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF1C25C(uint64_t a1, uint64_t a2)
{
  result = sub_22BF1C2E4(&qword_2810783D0, a2, type metadata accessor for SentencePieceCachableModel, &protocol conformance descriptor for SentencePieceCachableModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BF1C2E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BF1C32C(uint64_t a1)
{
  result = sub_22BF1C2E4(qword_28107B2D0, 255, type metadata accessor for SbertCachableModel, &protocol conformance descriptor for SbertCachableModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BF1C3D0(uint64_t a1)
{
  result = sub_22C271C14();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolRetrievalCompiledModel(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BF1C5A4(uint64_t a1)
{
  result = type metadata accessor for SbertCachableModel.ModelOptions(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BF1C6B4(uint64_t a1)
{
  sub_22BF1C70C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22BF1C70C()
{
  if (!qword_27D90B248)
  {
    v0 = sub_22C26DF64();
    if (!v1)
    {
      atomic_store(v0, &qword_27D90B248);
    }
  }
}

unint64_t sub_22BF1C754()
{
  result = qword_28106DF90[0];
  if (!qword_28106DF90[0])
  {
    sub_22BE7431C(&qword_27D90B250, &qword_22C28C708);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106DF90);
  }

  return result;
}

void sub_22BF1C7CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116000(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v8[0] = v2 + 32;
  v8[1] = v7;
  sub_22BF24AE0(v8);
  *a1 = v2;
}

uint64_t sub_22BF1C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  a4(0);
  sub_22BF255E0(a5, a6, a7);
  v10 = sub_22C271BD4();
  if (v13)
  {
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (sub_22C273FF4())
    {
    }

    else
    {
      swift_allocError();
      *v11 = v14;
    }
  }

  return v10;
}

void (*MutableToolbox.__allocating_init<A, B>(delegate:planGenerationDelegate:databasePath:sandboxIdentifier:toolbox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t, uint64_t)
{
  v45 = a8;
  v49 = a6;
  v50 = a4;
  v51 = a5;
  v46 = a3;
  v56 = a2;
  v47 = a9;
  v48 = a10;
  v13 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v44 - v14;
  v16 = *(a8 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE17C68();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v44 - v27;
  v53 = v21;
  v29 = *(v21 + 16);
  v29(v44 - v27, a1, a7, v26);
  v44[1] = type metadata accessor for QueryableToolbox();
  v55 = a1;
  v30 = a1;
  v31 = v46;
  (v29)(v24, v30, a7);
  v32 = v45;
  v54 = v16;
  v33 = v16;
  v34 = v47;
  (*(v33 + 16))(v19, v56, v45);
  v58 = 1;
  sub_22BF25580(v31, v15, &qword_27D908088, &qword_22C278EC0);
  v35 = v49;
  sub_22BF1CDC0(v49, v57);
  v36 = v52;
  v37 = sub_22BF26B58(v24, v19, &v58, v15, v50, v51, v57, 0, a7, v32, v34, v48);
  if (v36)
  {
    sub_22BF1CE1C(v35);
    sub_22BE233E8(v31, &qword_27D908088, &qword_22C278EC0);
    v38 = sub_22BE285E0();
    v39(v38);
    v40 = *(v53 + 8);
    v40(v55, a7);
    v40(v28, a7);
  }

  else
  {
    v40 = MutableToolbox.__allocating_init<A>(delegate:queryableToolbox:)(v28, v37, a7, v34);
    sub_22BF1CE1C(v35);
    sub_22BE233E8(v31, &qword_27D908088, &qword_22C278EC0);
    v41 = sub_22BE285E0();
    v42(v41);
    (*(v53 + 8))(v55, a7);
  }

  return v40;
}

uint64_t MutableToolbox.__allocating_init<A>(delegate:queryableToolbox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = sub_22BE18240();
  MutableToolbox.init<A>(delegate:queryableToolbox:)(v7, v8, a3, a4);
  return v6;
}

uint64_t *MutableToolbox.init<A>(delegate:queryableToolbox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_22BE62524(v4 + 2);
  sub_22BE1BC24();
  (*(v6 + 32))();
  v4[7] = a2;
  return v4;
}

uint64_t sub_22BF1CF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  _s19SentinelFileManagerVMa(0);
  v8[9] = swift_task_alloc();
  v12 = sub_22C2720A4();
  v8[10] = v12;
  v8[11] = *(v12 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v13 = sub_22C26E2F4();
  v8[14] = v13;
  v8[15] = *(v13 - 8);
  v8[16] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[17] = v14;
  *v14 = v8;
  v14[1] = sub_22BF1D10C;

  return sub_22BF1E000(a6, a7, a8);
}

uint64_t sub_22BF1D10C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1D208()
{
  sub_22BE27B90();
  sub_22BE201F0();

  sub_22BE1B080();

  sub_22BE1A26C();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF1D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  v17 = *(v16 + 144);
  *(v16 + 16) = v17;
  v18 = v17;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22BE19454();
  if (!swift_dynamicCast())
  {
LABEL_6:
    v38 = *(v16 + 144);

    sub_22C271AD4();
    v39 = v38;

    v40 = sub_22C272084();
    v41 = sub_22C2737A4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v16 + 88);
      a10 = *(v16 + 80);
      a11 = *(v16 + 96);
      v43 = sub_22BE2B808();
      v44 = swift_slowAlloc();
      a12 = sub_22BE25618();
      v47 = sub_22BE22DD4(4.8151e-34, a12, v45, v46);
      sub_22BE28744(v47);
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v48;
      *v44 = v48;
      sub_22BE25F34(&dword_22BE15000, v49, v50, "MutableToolbox %s unexpected error: %@");
      sub_22BE233E8(v44, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(a12);
      sub_22BE183C8();
      sub_22BE183C8();

      (*(v42 + 8))(a11, a10);
    }

    else
    {

      v51 = sub_22BE33FD8();
      v52(v51);
    }

    swift_willThrow();

    sub_22BE17A94();
    goto LABEL_12;
  }

  if ((*(*(v16 + 120) + 88))(*(v16 + 128), *(v16 + 112)) != *MEMORY[0x277D781A0])
  {
    (*(*(v16 + 120) + 8))(*(v16 + 128), *(v16 + 112));
    goto LABEL_6;
  }

  v19 = sub_22BE18944();
  v20(v19);
  sub_22C271AD4();

  v21 = sub_22C272084();
  v22 = sub_22C2737A4();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v16 + 104);
  v26 = *(v16 + 80);
  v25 = *(v16 + 88);
  if (v23)
  {
    a11 = *(v16 + 104);
    v27 = sub_22BE2B808();
    swift_slowAlloc();
    sub_22BE40BF4();
    v31 = sub_22BE1B760(4.8151e-34, v28, v29, v30);
    v35 = sub_22BE41078(v31, v32, v33, v34);

    *(v27 + 14) = v35;
    sub_22BE3EA60(&dword_22BE15000, v36, v37, "MutableToolbox %s failed due to unrecoverable error: %s");
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v25 + 8))(a11, a10);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
  }

  v53 = *(v16 + 72);
  sub_22BE3C394(*(*(*(v16 + 40) + 56) + 16));
  sub_22BF2B12C();
  sub_22BF249B8(v53);

  sub_22BE1B080();

  sub_22BE1A26C();
LABEL_12:
  sub_22BE285F4();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF1D6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[3] = a2;
  _s19SentinelFileManagerVMa(0);
  v9[8] = swift_task_alloc();
  v11 = sub_22C2720A4();
  v9[9] = v11;
  v9[10] = *(v11 - 8);
  v9[11] = swift_task_alloc();
  v9[12] = swift_task_alloc();
  v12 = sub_22C26E2F4();
  v9[13] = v12;
  v9[14] = *(v12 - 8);
  v9[15] = swift_task_alloc();
  v13 = swift_task_alloc();
  v9[16] = v13;
  *v13 = v9;
  v13[1] = sub_22BF1D858;

  return sub_22BF1F9A0(a1, a5, a6);
}

uint64_t sub_22BF1D858()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1D954()
{
  sub_22BE183FC();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF1D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  v17 = *(v16 + 136);
  *(v16 + 16) = v17;
  v18 = v17;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22BE19454();
  if (!swift_dynamicCast())
  {
LABEL_6:
    v38 = *(v16 + 136);

    sub_22C271AD4();
    v39 = v38;

    v40 = sub_22C272084();
    v41 = sub_22C2737A4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v16 + 80);
      a10 = *(v16 + 72);
      a11 = *(v16 + 88);
      v43 = sub_22BE2B808();
      v44 = swift_slowAlloc();
      a12 = sub_22BE25618();
      v47 = sub_22BE22DD4(4.8151e-34, a12, v45, v46);
      sub_22BE28744(v47);
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v48;
      *v44 = v48;
      sub_22BE25F34(&dword_22BE15000, v49, v50, "MutableToolbox %s unexpected error: %@");
      sub_22BE233E8(v44, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(a12);
      sub_22BE183C8();
      sub_22BE183C8();

      (*(v42 + 8))(a11, a10);
    }

    else
    {

      v51 = sub_22BE33FD8();
      v52(v51);
    }

    swift_willThrow();

    sub_22BE17A94();
    goto LABEL_12;
  }

  if ((*(*(v16 + 112) + 88))(*(v16 + 120), *(v16 + 104)) != *MEMORY[0x277D781A0])
  {
    (*(*(v16 + 112) + 8))(*(v16 + 120), *(v16 + 104));
    goto LABEL_6;
  }

  v19 = sub_22BE18944();
  v20(v19);
  sub_22C271AD4();

  v21 = sub_22C272084();
  v22 = sub_22C2737A4();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v16 + 96);
  v26 = *(v16 + 72);
  v25 = *(v16 + 80);
  if (v23)
  {
    a11 = *(v16 + 96);
    v27 = sub_22BE2B808();
    swift_slowAlloc();
    sub_22BE40BF4();
    v31 = sub_22BE1B760(4.8151e-34, v28, v29, v30);
    v35 = sub_22BE41078(v31, v32, v33, v34);

    *(v27 + 14) = v35;
    sub_22BE3EA60(&dword_22BE15000, v36, v37, "MutableToolbox %s failed due to unrecoverable error: %s");
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v25 + 8))(a11, a10);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
  }

  v53 = *(v16 + 64);
  sub_22BE3C394(*(*(*(v16 + 40) + 56) + 16));
  sub_22BF2B12C();
  sub_22BF249B8(v53);

  sub_22BE1A26C();
LABEL_12:
  sub_22BE285F4();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MutableToolbox.replaceClientActions(clientIdentifier:toolDefinitions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BE18DA0();
}

uint64_t sub_22BF1DE0C()
{
  sub_22BE183FC();

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22BF1DEE0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_22BF1CF54(v1, 0xD000000000000037, 0x800000022C2D3EC0, v2, v2, v4, v5, v3);
}

uint64_t sub_22BF1DEE0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1E000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  _s19SentinelFileManagerVMa(0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF1E0C4, 0, 0);
}

uint64_t sub_22BF1E0C4()
{
  sub_22BE183F0();
  v1 = *(v0[5] + 56);
  v0[11] = v1;
  v0[12] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_22BF1E16C;

  return sub_22BF45440();
}

uint64_t sub_22BF1E16C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1E26C()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v1 = v0[14];
  v2 = v0[10];
  sub_22BE3C394(*(v0[11] + 16));
  sub_22BF2B144();
  sub_22BF249B8(v2);
  if (v1)
  {

    sub_22BE19220();
    sub_22BE1AF3C();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_22BF1E38C;
    sub_22BE1AF3C();

    return MutableToolbox.toolRetrievalModelMetadata()();
  }
}

uint64_t sub_22BF1E38C()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  *v4 = *v1;
  v3[16] = v5;
  v3[17] = v6;
  v3[18] = v7;
  v3[19] = v8;

  if (v0)
  {

    sub_22BE17A94();
    sub_22BE1AF3C();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    sub_22BE201FC();
    sub_22BE1AF3C();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }
}

uint64_t sub_22BF1E4E8()
{
  sub_22BE183F0();
  v0[20] = *(v0[11] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22BF1E594;
  sub_22BE3E2E8(v0[4]);

  return sub_22BF45938();
}

uint64_t sub_22BF1E594()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22BF1E694()
{
  v1 = v0[17];
  sub_22BF1C1E4(v0[16], v1);
  v2 = sub_22BE19454();
  sub_22BF1C1E4(v2, v3);
  v4 = sub_22BE19454();
  sub_22BF158B4(v4, v5);
  v6 = v0[22];
  if (v1 >> 60 != 15)
  {
    v7 = v0[9];
    v8 = sub_22BE17C90(v0[11]);
    sub_22BF1F294(v8, v7);
    v9 = sub_22BE200D4();
    sub_22BF2B170(v9, v10);
    sub_22BF249B8(v7);
    v11 = sub_22BE200D4();
    sub_22BF158B4(v11, v12);
    if (v6)
    {
      v13 = v0[18];
      v14 = v0[19];
LABEL_7:
      v27 = sub_22BE1A6A0(v13, v14);
      goto LABEL_11;
    }
  }

  v15 = sub_22BE1AB1C();
  sub_22BF1C1E4(v15, v16);
  v17 = sub_22BE19454();
  sub_22BF1C1E4(v17, v18);
  v19 = sub_22BE1AB1C();
  sub_22BF158B4(v19, v20);
  sub_22BF2562C();
  if (!(!v22 & v21))
  {
    v23 = v0[8];
    v24 = sub_22BE17C90(v0[11]);
    sub_22BF1F294(v24, v23);
    v25 = sub_22BE19454();
    sub_22BF2B19C(v25, v26);
    sub_22BF249B8(v23);
    if (v6)
    {
      v13 = sub_22BE1A6A0(v0[16], v0[17]);
      goto LABEL_7;
    }

    v29 = sub_22BE19454();
    sub_22BF158B4(v29, v30);
  }

  v31 = v0[7];
  v32 = sub_22BE17C90(v0[11]);
  sub_22BF1F294(v32, v31);
  sub_22BF2B1C8();
  sub_22BF249B8(v31);
  if (!v6)
  {
    v37 = v0[6];
    v38 = sub_22BE17C90(v0[11]);
    sub_22BF1F294(v38, v37);
    sub_22BF2B1F4();
    v39 = sub_22BE18240();
    sub_22BF158B4(v39, v40);
    v41 = sub_22BE200D4();
    sub_22BF158B4(v41, v42);
    sub_22BF249B8(v37);

    sub_22BE1A26C();
LABEL_12:
    sub_22BE25CF0();

    __asm { BRAA            X1, X16 }
  }

  v33 = sub_22BE18240();
  sub_22BF158B4(v33, v34);
  v27 = sub_22BE200D4();
LABEL_11:
  sub_22BF158B4(v27, v28);

  sub_22BE19220();
  goto LABEL_12;
}

uint64_t sub_22BF1E8BC()
{
  sub_22BE27B90();
  sub_22BE201F0();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF1E950()
{
  sub_22BE27B90();
  sub_22BE201F0();

  v0 = sub_22BE232C8();
  v2 = sub_22BE1A6A0(v0, v1);
  sub_22BF158B4(v2, v3);

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t MutableToolbox.toolRetrievalModelMetadata()()
{
  sub_22BE183F0();
  v1[2] = v0;
  _s19SentinelFileManagerVMa(0);
  v1[3] = sub_22BE25184();
  v2 = sub_22C273064();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BF1EACC()
{
  v86 = v0;
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  sub_22BE1BD3C(v1 + 2, v2);
  sub_22BE17C68();
  sub_22BE25184();
  sub_22BE2C690();
  v4();
  (*(v3 + 8))(&v85, v2, v3);
  v5 = sub_22BE33FD8();
  v6(v5);
  if (v85)
  {
    if (qword_28107D1C8 != -1)
    {
      sub_22BE25234(&qword_28107D1C8);
    }

    sub_22BE1859C();
    v12 = sub_22BE412BC(v7, v8, v9, v10, v11, type metadata accessor for SbertCachableModel, &protocol conformance descriptor for SbertCachableModel);
    if (v2)
    {
LABEL_12:

      sub_22BE19220();
      sub_22BE25CF0();

      __asm { BRAA            X1, X16 }
    }

    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    v15 = sub_22BE29454();
    sub_22BF1C1E4(v15, v16);
  }

  else
  {
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    sub_22C273054();
    v13 = sub_22BF25638();
    v14 = v20;
    (*(v18 + 8))(v17, v19);
  }

  v0[7] = v13;
  v0[8] = v14;

  v21 = v1[5];
  sub_22BE1BD3C(v1 + 2, v21);
  sub_22BE17C68();
  sub_22BE25184();
  sub_22BE2C690();
  v22();
  v23 = sub_22BE236C8();
  v24(v23);
  v25 = sub_22BE33FD8();
  v26(v25);
  if ((v85 & 0x100) != 0)
  {
    if (qword_28107D1C8 != -1)
    {
      sub_22BE25234(&qword_28107D1C8);
    }

    sub_22BE1859C();
    v32 = sub_22BE412BC(v27, v28, v29, v30, v31, type metadata accessor for SbertCachableModel, &protocol conformance descriptor for SbertCachableModel);
    if (v21)
    {
      v33 = sub_22BE29454();
      sub_22BF158B4(v33, v34);
      goto LABEL_12;
    }

    v40 = *(v32 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
    v42 = *(v32 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale + 8);
    sub_22BF1C1E4(v40, v42);
  }

  else
  {
    v38 = v0[5];
    v37 = v0[6];
    v39 = v0[4];
    sub_22C273054();
    v40 = sub_22BF25638();
    v42 = v41;
    (*(v38 + 8))(v37, v39);
  }

  v0[9] = v40;
  v0[10] = v42;
  v44 = v0[2];
  v43 = v0[3];

  v45 = *(v44 + 56);
  sub_22BE3C394(*(v45 + 16));
  v46 = sub_22BF2B5A4();
  v48 = v47;
  v0[11] = v46;
  v0[12] = v47;
  sub_22BF249B8(v43);
  if (v48 >> 60 == 15)
  {
LABEL_22:

    sub_22BE23ACC();
    sub_22BE25CF0();

    __asm { BRAA            X5, X16 }
  }

  v49 = v0[3];
  sub_22BF1F294(*(v45 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v49);
  v50 = sub_22BF2B5BC();
  v52 = v51;
  v0[13] = v50;
  v0[14] = v51;
  sub_22BF249B8(v49);
  sub_22BF2562C();
  if (!v54 & v53)
  {
    v52 = v48;
    v55 = v46;
LABEL_21:
    sub_22BF158B4(v55, v52);
    goto LABEL_22;
  }

  v58 = sub_22BE1A6BC();
  sub_22BF1C1E4(v58, v59);
  v60 = sub_22BE29454();
  sub_22BF1C1E4(v60, v61);
  if (v14 >> 60 == 15)
  {
    v62 = sub_22BE29454();
    sub_22BF158B4(v62, v63);
    v64 = sub_22BE1A6BC();
LABEL_27:
    sub_22BF158B4(v64, v65);
    goto LABEL_33;
  }

  v66 = sub_22BE29454();
  v67 = MEMORY[0x2318A6720](v66);
  v68 = sub_22BE1A6BC();
  sub_22BF158B4(v68, v69);
  v70 = sub_22BE29454();
  sub_22BF158B4(v70, v71);
  if (v67)
  {
    sub_22BF1C1E4(v50, v52);
    v55 = v50;
    v72 = sub_22BE236C8();
    sub_22BF1C1E4(v72, v73);
    if (v42 >> 60 == 15)
    {
      v74 = sub_22BE236C8();
      sub_22BF158B4(v74, v75);
      v64 = v50;
      v65 = v52;
      goto LABEL_27;
    }

    v76 = sub_22BE236C8();
    v77 = MEMORY[0x2318A6720](v76);
    sub_22BF158B4(v50, v52);
    v78 = sub_22BE236C8();
    sub_22BF158B4(v78, v79);
    if (v77)
    {
      v80 = sub_22BE1A6BC();
      sub_22BF158B4(v80, v81);
      goto LABEL_21;
    }
  }

LABEL_33:
  v0[15] = *(v45 + 16);

  v82 = swift_task_alloc();
  v0[16] = v82;
  *v82 = v0;
  v82[1] = sub_22BF1F060;
  sub_22BE25CF0();

  return sub_22BF471A8();
}

uint64_t sub_22BF1F060()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1F160()
{
  sub_22BE183F0();
  v1 = sub_22BE1A6A0(*(v0 + 104), *(v0 + 112));
  sub_22BF158B4(v1, v2);

  v3 = sub_22BE23ACC();

  return v4(v3);
}

uint64_t sub_22BF1F1D4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = sub_22BE19454();
  sub_22BF158B4(v3, v4);
  v5 = sub_22BE232C8();
  sub_22BF158B4(v5, v6);
  v7 = sub_22BE18240();
  sub_22BF158B4(v7, v8);
  sub_22BF158B4(v2, v1);

  sub_22BE17A94();

  return v9();
}

uint64_t sub_22BF1F294(uint64_t a1, uint64_t a2)
{
  v4 = _s19SentinelFileManagerVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF1F2F8()
{
  sub_22BE183F0();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  _s19SentinelFileManagerVMa(0);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = *v3;
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1F3A8()
{
  sub_22BE201F0();
  v1 = *(v0[7] + 56);
  v0[13] = v1;
  sub_22BE3C394(*(v1 + 16));
  sub_22BF2B144();
  v3 = v0[11];
  v2 = v0[12];
  sub_22BF249B8(v0[10]);

  sub_22BF461A8();

  v0[14] = *(v1 + 16);
  v0[2] = v3;
  v0[3] = v2;

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22BF1F518;
  sub_22BE3E2E8(v0[4]);

  return sub_22BF461FC();
}

uint64_t sub_22BF1F518()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 128) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1F620()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v1 = v0[16];
  sub_22BE3C394(*(v0[13] + 16));
  sub_22BF2B1C8();
  if (v1)
  {
    sub_22BF249B8(v0[9]);

    sub_22BE19220();
  }

  else
  {
    v2 = v0[13];
    v3 = v0[8];
    sub_22BF249B8(v0[9]);
    sub_22BE3C394(*(v2 + 16));
    sub_22BF2B1F4();
    sub_22BF249B8(v3);

    sub_22BE1A26C();
  }

  sub_22BE1AF3C();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22BF1F710()
{
  sub_22BE183FC();

  sub_22BE17A94();

  return v0();
}

uint64_t MutableToolbox.loadAllTools(isCancelled:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF1F79C()
{
  sub_22BE183FC();

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_22BF1F860;
  v3 = v0[2];
  v2 = v0[3];

  return sub_22BF1D6A8(v1, 0xD00000000000001ALL, 0x800000022C2D3F00, v2, v2, v3);
}

uint64_t sub_22BF1F860()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF1F9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a2;
  v3[33] = a3;
  v4 = sub_22C2720A4();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF1FA6C, 0, 0);
}

uint64_t sub_22BF1FA6C()
{
  sub_22BE183FC();
  sub_22C271AD4();
  v1 = sub_22C272084();
  v2 = sub_22C273784();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22BE15000, v1, v2, "Toolbox indexing started. Notifying the system with TBToolboxIndexingStarted", v3, 2u);
    sub_22BE183C8();
  }

  v4 = v0[35];

  v0[38] = *(v4 + 8);
  v5 = sub_22BE33FD8();
  v6(v5);
  v7 = objc_opt_self();
  v0[39] = v7;
  v8 = [v7 defaultCenter];
  v9 = sub_22C272FF4();
  v0[40] = sub_22BE5CE4C(&qword_27D90B270, &qword_22C28C7D8);
  inited = swift_initStackObject();
  v11 = sub_22BF25660(inited, xmmword_22C275160);
  *(v11 + 224) = v12;
  v0[29] = 0xE600000000000000;
  v13 = MEMORY[0x277D837D0];
  sub_22C273A04();
  inited[6].n128_u64[0] = v13;
  sub_22BE3610C();
  inited[4].n128_u64[1] = v14;
  inited[5].n128_u64[0] = v15;
  v16 = sub_22C272E84();
  sub_22BF25474(v9, 0, v16, v8);

  v17 = swift_task_alloc();
  v0[41] = v17;
  *v17 = v0;
  v17[1] = sub_22BF1FC7C;
  v18 = sub_22BE3E2E8(v0[33]);

  return sub_22BF1FF90(v18);
}

uint64_t sub_22BF1FC7C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_22BE27278();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_22BF1FDB0(__n128 a1)
{
  sub_22C271AD4();
  v2 = sub_22C272084();
  v3 = sub_22C273784();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BE15000, v2, v3, "Toolbox indexing finished. Notifying the system with TBToolboxIndexingEnded", v4, 2u);
    sub_22BE183C8();
  }

  v5 = v1[39];
  v6 = v1[38];
  v7 = v1[36];
  v8 = v1[34];

  v6(v7, v8);
  v9 = [v5 defaultCenter];
  v10 = sub_22C272FF4();
  inited = swift_initStackObject();
  v12 = sub_22BF25660(inited, xmmword_22C275160);
  *(v12 + 240) = v13;
  v1[31] = 0xE600000000000000;
  v14 = MEMORY[0x277D837D0];
  sub_22C273A04();
  inited[6].n128_u64[0] = v14;
  sub_22BE3610C();
  inited[4].n128_u64[1] = v15;
  inited[5].n128_u64[0] = v16;
  v17 = sub_22C272E84();
  sub_22BF25474(v10, 0, v17, v9);

  sub_22BE1A26C();

  return v18();
}

uint64_t sub_22BF1FF90(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22C2720A4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_22C270B14();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  _s19SentinelFileManagerVMa(0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF20120, 0, 0);
}

uint64_t sub_22BF20120()
{
  sub_22BE183F0();
  v1 = *(v0[8] + 56);
  v0[22] = v1;
  v0[23] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_22BF201C8;

  return sub_22BF45440();
}

uint64_t sub_22BF201C8()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF202C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = v12[25];
  sub_22BE3C394(*(v12[22] + 16));
  sub_22BF2B144();
  v14 = sub_22BF249B8(v12[21]);
  if (v13)
  {
    sub_22BE256B0(v14, v15, v16, v17, v18);

    sub_22BE19220();
    sub_22BE25494();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  else
  {
    v28 = swift_task_alloc();
    v12[26] = v28;
    *v28 = v12;
    v28[1] = sub_22BF203FC;
    sub_22BE25494();

    return MutableToolbox.toolRetrievalModelMetadata()();
  }
}

uint64_t sub_22BF203FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BE190F0();
  v15 = v14;
  sub_22BE18800();
  *v16 = v15;
  *v16 = *v13;
  v15[27] = v17;
  v15[28] = v18;
  v15[29] = v19;
  v15[30] = v20;

  if (v12)
  {

    sub_22BE17A94();
    sub_22BE25494();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    sub_22BE201FC();
    sub_22BE25494();

    return MEMORY[0x2822009F8](v30, v31, v32);
  }
}

uint64_t sub_22BF20580()
{
  sub_22BE183FC();
  v1 = *(v0 + 160);
  sub_22BF1F294(*(*(v0 + 176) + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v1);
  sub_22BF2B2A4();
  v3 = v2;
  sub_22BF249B8(v1);
  if (v3 >> 60 == 15 && (v4 = *(v0 + 160), sub_22BF1F294(*(*(v0 + 176) + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v4), sub_22BF2B2BC(), v6 = v5, sub_22BF249B8(v4), v6 >> 60 == 15))
  {
    v7 = 1;
  }

  else
  {
    v8 = sub_22BE18944();
    sub_22BF158B4(v8, v9);
    v7 = 0;
  }

  *(v0 + 304) = v7;
  sub_22BE26B00(*(*(v0 + 176) + 16) + 32, v0 + 16);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_22BF206D0;
  v11 = *(v0 + 56);

  return sub_22BF217F8(v0 + 16, v11);
}

uint64_t sub_22BF206D0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 305) = v5;
  *(v3 + 256) = v0;

  sub_22BE26B64((v3 + 16));
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BF207DC()
{
  (*(*(v0 + 104) + 104))(*(v0 + 112), *MEMORY[0x277D1EBD8], *(v0 + 96));
  v1 = sub_22C270B04();
  v2 = sub_22BE18944();
  v3(v2);
  if (v1)
  {
    v4 = swift_task_alloc();
    *(v0 + 264) = v4;
    *v4 = v0;
    v4[1] = sub_22BF20CD0;
    sub_22BE3E2E8(*(v0 + 56));
    sub_22BE18174();

    return sub_22BF23660(v5);
  }

  sub_22C271AD4();
  v8 = sub_22C272084();
  v9 = sub_22C2737C4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 88);
  if (v10)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22BE15000, v8, v9, "Skipping shim indexing since ShimToolRetrieval flag is disabled", v12, 2u);
    sub_22BE183C8();
  }

  v13 = sub_22BE33FD8();
  v14(v13);
  v15 = *(v0 + 256);
  *(v0 + 307) = 0;
  v16 = *(v0 + 56);
  if (v16 && (*(v16 + 16) & 1) != 0)
  {
    v17 = *(v0 + 128);
    v18 = sub_22BE17C90(*(v0 + 176));
    sub_22BF1F294(v18, v17);
    sub_22BF2B2D4();
    if (v15)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v0 + 128));
      v46 = sub_22BE1AB1C();
LABEL_22:
      v44 = sub_22BE1A6A0(v46, v47);
      goto LABEL_23;
    }

    sub_22BE180A8();
    sub_22BE23CB4(*(v9 + 16));
    sub_22BF2B300();
    goto LABEL_36;
  }

  if ((*(v0 + 304) & 1) == 0)
  {
    sub_22BE37564();

    v21 = sub_22BF46A44();
    if (v15)
    {
      sub_22BF158B4(*(v0 + 216), *(v0 + 224));
      v22 = sub_22BE200D4();
      sub_22BF158B4(v22, v23);

LABEL_24:
      sub_22BE256B0(v24, v25, v26, v27, v28);

      sub_22BE19220();
      goto LABEL_25;
    }

    v29 = v21;

    if (v29 <= 1000)
    {
      sub_22BF1C1E4(*(v0 + 216), *(v0 + 224));
      v30 = sub_22BE19454();
      sub_22BF1C1E4(v30, v31);
      v32 = sub_22BE19454();
      sub_22BF158B4(v32, v33);
      sub_22BE1C1C0();
      if (!(!v35 & v34))
      {
        v36 = *(v0 + 152);
        v37 = sub_22BE17C90(*(v0 + 176));
        sub_22BF1F294(v37, v36);
        v38 = sub_22BE23114();
        sub_22BF2B170(v38, v39);
        if (v36)
        {
          sub_22BE2F154();
          sub_22BF249B8(*(v0 + 152));
          v40 = sub_22BE1AB1C();
          v42 = sub_22BE1A6A0(v40, v41);
          sub_22BF158B4(v42, v43);
          v44 = sub_22BE1AB1C();
LABEL_23:
          v24 = sub_22BF158B4(v44, v45);
          goto LABEL_24;
        }

        sub_22BF249B8(*(v0 + 152));
        v50 = sub_22BE19454();
        sub_22BF158B4(v50, v51);
      }

      v17 = *(v0 + 240);
      v52 = sub_22BE232C8();
      sub_22BF1C1E4(v52, v53);
      v54 = sub_22BE19454();
      sub_22BF1C1E4(v54, v55);
      v56 = sub_22BE232C8();
      sub_22BF158B4(v56, v57);
      sub_22BF2562C();
      if (!(!v35 & v34))
      {
        v58 = *(v0 + 144);
        v59 = sub_22BE17C90(*(v0 + 176));
        sub_22BF1F294(v59, v58);
        v60 = sub_22BE23114();
        sub_22BF2B19C(v60, v61);
        v17 = *(v0 + 240);
        if (v58)
        {
          sub_22BF249B8(*(v0 + 144));
          v62 = sub_22BE1AB1C();
          v46 = sub_22BE1A6A0(v62, v63);
          goto LABEL_22;
        }

        sub_22BF249B8(*(v0 + 144));
        v64 = sub_22BE19454();
        sub_22BF158B4(v64, v65);
      }

      if ((*(v0 + 305) & 1) == 0 && !*(v0 + 307))
      {
LABEL_37:
        sub_22BE28F38();
        v68 = sub_22BE17C90(v67);
        sub_22BF1F294(v68, v17);
        sub_22BF2B1F4();
        v69 = sub_22BE18240();
        sub_22BF158B4(v69, v70);
        v71 = sub_22BE232C8();
        sub_22BF158B4(v71, v72);
        sub_22BF249B8(v17);

        sub_22BE1A26C();
LABEL_25:
        sub_22BE18174();

        __asm { BRAA            X1, X16 }
      }

      v11 = (v0 + 136);
      v17 = *(v0 + 136);
      v66 = sub_22BE17C90(*(v0 + 176));
      sub_22BF1F294(v66, v17);
      sub_22BF2B1C8();
LABEL_36:
      sub_22BF249B8(*v11);
      goto LABEL_37;
    }
  }

  sub_22BE37564();
  *(v0 + 280) = v8;

  v19 = swift_task_alloc();
  *(v0 + 288) = v19;
  *v19 = v0;
  sub_22BE3D44C(v19);
  sub_22BE18174();

  return sub_22BF46B28();
}

uint64_t sub_22BF20CD0()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 306) = v3 & 1;
  }

  sub_22BE27278();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF20DDC()
{
  v4 = *(v2 + 272);
  *(v2 + 307) = *(v2 + 306);
  v5 = *(v2 + 56);
  if (v5 && (*(v5 + 16) & 1) != 0)
  {
    v6 = *(v2 + 128);
    v7 = sub_22BE17C90(*(v2 + 176));
    sub_22BF1F294(v7, v6);
    sub_22BF2B2D4();
    if (v4)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v2 + 128));
      v36 = sub_22BE1AB1C();
LABEL_16:
      v34 = sub_22BE1A6A0(v36, v37);
      goto LABEL_17;
    }

    sub_22BE180A8();
    sub_22BE23CB4(*(v3 + 16));
    sub_22BF2B300();
    goto LABEL_30;
  }

  if ((*(v2 + 304) & 1) == 0)
  {
    sub_22BE37564();

    v11 = sub_22BF46A44();
    if (v4)
    {
      sub_22BF158B4(*(v2 + 216), *(v2 + 224));
      v12 = sub_22BE200D4();
      sub_22BF158B4(v12, v13);

LABEL_18:
      sub_22BE256B0(v14, v15, v16, v17, v18);

      sub_22BE19220();
      goto LABEL_19;
    }

    v19 = v11;

    if (v19 <= 1000)
    {
      sub_22BF1C1E4(*(v2 + 216), *(v2 + 224));
      v20 = sub_22BE19454();
      sub_22BF1C1E4(v20, v21);
      v22 = sub_22BE19454();
      sub_22BF158B4(v22, v23);
      sub_22BE1C1C0();
      if (!(!v25 & v24))
      {
        v26 = *(v2 + 152);
        v27 = sub_22BE17C90(*(v2 + 176));
        sub_22BF1F294(v27, v26);
        v28 = sub_22BE23114();
        sub_22BF2B170(v28, v29);
        if (v26)
        {
          sub_22BE2F154();
          sub_22BF249B8(*(v2 + 152));
          v30 = sub_22BE1AB1C();
          v32 = sub_22BE1A6A0(v30, v31);
          sub_22BF158B4(v32, v33);
          v34 = sub_22BE1AB1C();
LABEL_17:
          v14 = sub_22BF158B4(v34, v35);
          goto LABEL_18;
        }

        sub_22BF249B8(*(v2 + 152));
        v40 = sub_22BE19454();
        sub_22BF158B4(v40, v41);
      }

      v6 = *(v2 + 240);
      v42 = sub_22BE232C8();
      sub_22BF1C1E4(v42, v43);
      v44 = sub_22BE19454();
      sub_22BF1C1E4(v44, v45);
      v46 = sub_22BE232C8();
      sub_22BF158B4(v46, v47);
      sub_22BF2562C();
      if (!(!v25 & v24))
      {
        v48 = *(v2 + 144);
        v49 = sub_22BE17C90(*(v2 + 176));
        sub_22BF1F294(v49, v48);
        v50 = sub_22BE23114();
        sub_22BF2B19C(v50, v51);
        v6 = *(v2 + 240);
        if (v48)
        {
          sub_22BF249B8(*(v2 + 144));
          v52 = sub_22BE1AB1C();
          v36 = sub_22BE1A6A0(v52, v53);
          goto LABEL_16;
        }

        sub_22BF249B8(*(v2 + 144));
        v54 = sub_22BE19454();
        sub_22BF158B4(v54, v55);
      }

      if ((*(v2 + 305) & 1) == 0 && !*(v2 + 307))
      {
LABEL_31:
        sub_22BE28F38();
        v58 = sub_22BE17C90(v57);
        sub_22BF1F294(v58, v6);
        sub_22BF2B1F4();
        v59 = sub_22BE18240();
        sub_22BF158B4(v59, v60);
        v61 = sub_22BE232C8();
        sub_22BF158B4(v61, v62);
        sub_22BF249B8(v6);

        sub_22BE1A26C();
LABEL_19:
        sub_22BE18174();

        __asm { BRAA            X1, X16 }
      }

      v0 = (v2 + 136);
      v6 = *(v2 + 136);
      v56 = sub_22BE17C90(*(v2 + 176));
      sub_22BF1F294(v56, v6);
      sub_22BF2B1C8();
LABEL_30:
      sub_22BF249B8(*v0);
      goto LABEL_31;
    }
  }

  sub_22BE37564();
  *(v2 + 280) = v1;

  v8 = swift_task_alloc();
  *(v2 + 288) = v8;
  *v8 = v2;
  sub_22BE3D44C(v8);
  sub_22BE18174();

  return sub_22BF46B28();
}

uint64_t sub_22BF2118C()
{
  sub_22BE183FC();
  sub_22BE18800();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v0;

  sub_22BE27278();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22BF212AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  v17 = *(v16 + 296);
  v18 = *(v16 + 240);
  v19 = *(v16 + 224);
  sub_22BF1C1E4(*(v16 + 216), v19);
  v20 = sub_22BE19454();
  sub_22BF1C1E4(v20, v21);
  v22 = sub_22BE19454();
  sub_22BF158B4(v22, v23);
  if (v19 >> 60 != 15)
  {
    sub_22BF25678(*(*(v16 + 176) + 16));
    v24 = sub_22BE19454();
    sub_22BF2B170(v24, v25);
    if (v17)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v16 + 152));
      v26 = sub_22BE1AB1C();
      v28 = sub_22BE1A6A0(v26, v27);
      sub_22BF158B4(v28, v29);
      v30 = sub_22BE1AB1C();
LABEL_14:
      v50 = sub_22BF158B4(v30, v31);
      sub_22BE256B0(v50, v51, v52, v53, v54);

      sub_22BE19220();
      goto LABEL_17;
    }

    v18 = *(v16 + 224);
    sub_22BF249B8(*(v16 + 152));
    v32 = sub_22BE19454();
    sub_22BF158B4(v32, v33);
  }

  sub_22BE2F154();
  v34 = sub_22BE1AB1C();
  sub_22BF1C1E4(v34, v35);
  v36 = sub_22BE19454();
  sub_22BF1C1E4(v36, v37);
  v38 = sub_22BE1AB1C();
  sub_22BF158B4(v38, v39);
  sub_22BF2562C();
  if (!(!v41 & v40))
  {
    sub_22BF25678(*(*(v16 + 176) + 16));
    v42 = sub_22BE19454();
    sub_22BF2B19C(v42, v43);
    v18 = *(v16 + 240);
    if (v17)
    {
      sub_22BF249B8(*(v16 + 144));
      v44 = sub_22BE1AB1C();
      v46 = sub_22BE1A6A0(v44, v45);
LABEL_13:
      v30 = sub_22BE1A6A0(v46, v47);
      goto LABEL_14;
    }

    sub_22BF249B8(*(v16 + 144));
    v48 = sub_22BE19454();
    sub_22BF158B4(v48, v49);
  }

  if ((*(v16 + 305) & 1) != 0 || *(v16 + 307))
  {
    v18 = *(v16 + 136);
    sub_22BE3C394(*(*(v16 + 176) + 16));
    sub_22BF2B1C8();
    if (v17)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v16 + 136));
      v46 = sub_22BE1AB1C();
      goto LABEL_13;
    }

    sub_22BF249B8(*(v16 + 136));
  }

  sub_22BE28F38();
  a9 = *(v16 + 128);
  a10 = *(v16 + 120);
  a11 = *(v16 + 112);
  a12 = *(v16 + 88);
  sub_22BE3C394(*(v55 + 16));
  sub_22BF2B1F4();
  v56 = sub_22BE18240();
  sub_22BF158B4(v56, v57);
  v58 = sub_22BE232C8();
  sub_22BF158B4(v58, v59);
  sub_22BF249B8(v18);

  sub_22BE1A26C();
LABEL_17:
  sub_22BE285F4();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF21540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();

  sub_22BE19F24(v12, v13, v14, v15, v16);

  sub_22BE17A94();
  sub_22BE25494();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_22BF215E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = sub_22BE1A6A0(*(v12 + 216), *(v12 + 224));
  v15 = sub_22BF158B4(v13, v14);
  sub_22BE19F24(v15, v16, v17, v18, v19);

  sub_22BE17A94();
  sub_22BE25494();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22BF21698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = sub_22BE1A6A0(*(v12 + 216), *(v12 + 224));
  v15 = sub_22BF158B4(v13, v14);
  sub_22BE19F24(v15, v16, v17, v18, v19);

  sub_22BE17A94();
  sub_22BE25494();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22BF21748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = sub_22BE1A6A0(*(v12 + 216), *(v12 + 224));
  v15 = sub_22BF158B4(v13, v14);
  sub_22BE19F24(v15, v16, v17, v18, v19);

  sub_22BE17A94();
  sub_22BE25494();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22BF217F8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_22C273064();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_22C26E514();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_22C26EA04();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D90B200, &qword_22C28C460);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for ToolboxVersion(0);
  v3[18] = swift_task_alloc();
  v7 = sub_22C2720A4();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v3[24] = swift_task_alloc();
  v8 = sub_22C26E1D4();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  _s19SentinelFileManagerVMa(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D90B278, &qword_22C28C808);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF21BA8, 0, 0);
}

uint64_t sub_22BF21BA8()
{
  v233 = v0;
  v1 = *(v0 + 264);
  v2 = *(*(v0 + 48) + 56);
  *(v0 + 304) = v2;
  sub_22BE23CB4(*(v2 + 16));
  v3 = sub_22BF2B32C();
  v5 = v4;
  sub_22BF249B8(v1);
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  sub_22BE200D4();
  sub_22C26E174();
  if (sub_22BE1AEA8(v7, 1, v6) == 1)
  {
    v8 = *(v0 + 192);

    sub_22BE233E8(v8, &qword_27D9082F0, &qword_22C27AB00);
LABEL_4:
    v9 = *(v0 + 32);
    v10 = v9[3];
    v11 = v9[4];
    sub_22BE1BD3C(v9, v10);
    v12 = sub_22C272404();
    v13 = *(v11 + 88);
    v14 = sub_22BF255E0(&qword_28106DF60, MEMORY[0x277D726E8], MEMORY[0x277D726E0]);
    v13(v12, v12, v14, v10, v11);
    v41 = *(v0 + 280);
    sub_22BF25510(*(v0 + 288), *(v0 + 296));
    v42 = sub_22BE18944();
    sub_22BF25580(v42, v43, v44, v45);
    v46 = sub_22C272424();
    v47 = sub_22BE1AEA8(v41, 1, v46);
    if (v47 == 1)
    {
      sub_22BE233E8(*(v0 + 280), &qword_27D90B278, &qword_22C28C808);
      v17 = 0;
    }

    else
    {
      sub_22BF24164();
      v17 = v92;
      (*(*(v46 - 8) + 8))(*(v0 + 280), v46);
    }

    goto LABEL_11;
  }

  v222 = v2;
  v225 = v3;
  v15 = *(v0 + 296);
  v227 = v5;
  (*(*(v0 + 208) + 32))(*(v0 + 224), *(v0 + 192), *(v0 + 200));
  v16 = sub_22BE1AB1C();
  v17 = v5;
  v18(v16);
  sub_22C272414();
  v46 = sub_22C272424();
  sub_22BE19DC4(v15, 0, 1, v46);
  sub_22C271AD4();

  v19 = sub_22C272084();
  LOBYTE(v15) = sub_22C273784();

  v216 = v15;
  v20 = os_log_type_enabled(v19, v15);
  v21 = *(v0 + 224);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 184);
  v25 = *(v0 + 160);
  v218 = *(v0 + 152);
  if (v20)
  {
    v203 = *(v0 + 208);
    v26 = *(v0 + 144);
    v197 = *(v0 + 136);
    v214 = *(v0 + 224);
    v27 = *(v0 + 48);
    v210 = *(v0 + 200);
    v28 = sub_22BE2B808();
    v232[0] = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_22BE61C88(v225, v17, v232);
    *(v28 + 12) = 2080;
    log = v19;
    v30 = v27[5];
    v29 = v27[6];
    sub_22BE1BD3C(v27 + 2, v30);
    sub_22BE17C68();
    v206 = v24;
    v32 = v31;
    v33 = sub_22BE25184();
    sub_22BE2C690();
    v34();
    (*(v29 + 16))(v30, v29);
    (*(v32 + 8))(v33, v30);
    v35 = *(v197 + 20);
    v36 = sub_22C26FDE4();
    v38 = v37;
    sub_22C26FDF4();
    sub_22BE18524();
    (*(v39 + 8))(v26 + v35);
    v17 = v227;

    v40 = sub_22BE61C88(v36, v38, v232);

    *(v28 + 14) = v40;
    _os_log_impl(&dword_22BE15000, log, v216, "MutableToolbox: using %s as toolbox version for\n%s.", v28, 0x16u);
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v25 + 8))(v206, v218);
    (*(v203 + 8))(v214, v210);
  }

  else
  {

    (*(v25 + 8))(v24, v218);
    (*(v22 + 8))(v21, v23);
  }

  v2 = v222;
LABEL_11:
  *(v0 + 312) = v17;
  v48 = *(v0 + 272);
  sub_22BF25580(*(v0 + 296), v48, &qword_27D90B278, &qword_22C28C808);
  sub_22C272424();
  if (sub_22BE1AEA8(v48, 1, v46) == 1)
  {
    sub_22BE233E8(*(v0 + 272), &qword_27D90B278, &qword_22C28C808);
    v49 = 0;
    v50 = 0xF000000000000000;
  }

  else
  {
    ToolDatabase.LaunchServicesDatabaseVersion.encodedLSDBVersion()();
    v49 = v54;
    v50 = v55;
    sub_22BE1BC24();
    (*(v56 + 8))();
  }

  *(v0 + 320) = v49;
  *(v0 + 328) = v50;
  v57 = *(v0 + 264);
  sub_22BE23CB4(*(v2 + 16));
  v58 = sub_22BF2B2BC();
  v60 = v59;
  *(v0 + 336) = v58;
  *(v0 + 344) = v59;
  sub_22BF249B8(v57);
  sub_22BE1C1C0();
  if (!v62 & v61)
  {
    v63 = 1;
  }

  else
  {
    v63 = v50 >> 60 == 15;
  }

  v209 = v49;
  v228 = v17;
  v215 = v58;
  v217 = v60;
  if (v63)
  {
    goto LABEL_26;
  }

  v64 = sub_22BE2C254();
  sub_22BF1C1E4(v64, v65);
  sub_22BF1C1E4(v49, v50);
  v66 = sub_22BE2C254();
  if ((MEMORY[0x2318A6720](v66) & 1) == 0)
  {
    sub_22BF158B4(v49, v50);
    v89 = sub_22BE2C254();
    sub_22BF158B4(v89, v90);
LABEL_26:
    v91 = 0;
    goto LABEL_29;
  }

  sub_22C271AD4();

  v67 = sub_22C272084();
  v68 = sub_22C273784();

  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v0 + 176);
  v71 = *(v0 + 160);
  v219 = *(v0 + 152);
  if (v69)
  {
    v223 = v2;
    v72 = *(v0 + 144);
    v198 = *(v0 + 136);
    v207 = v67;
    v73 = *(v0 + 48);
    v74 = swift_slowAlloc();
    v204 = sub_22BE25618();
    v232[0] = v204;
    *v74 = 136315138;
    v211 = v70;
    v76 = v73[5];
    v75 = v73[6];
    sub_22BE1BD3C(v73 + 2, v76);
    sub_22BE17C68();
    loga = v68;
    v77 = v50;
    v79 = v78;
    v80 = sub_22BE25184();
    sub_22BE2C690();
    v81();
    (*(v75 + 16))(v76, v75);
    (*(v79 + 8))(v80, v76);
    v50 = v77;
    v82 = *(v198 + 20);
    v83 = sub_22C26FDE4();
    v85 = v84;
    sub_22C26FDF4();
    sub_22BE18524();
    v87 = v72 + v82;
    v2 = v223;
    (*(v86 + 8))(v87);

    v88 = sub_22BE61C88(v83, v85, v232);

    *(v74 + 4) = v88;
    _os_log_impl(&dword_22BE15000, v207, loga, "ToolEmbeddingDatabase: %s.\nStored toolDefinitionsVersion is equal to the passed in version.", v74, 0xCu);
    sub_22BE26B64(v204);
    sub_22BE183C8();
    sub_22BE183C8();
    sub_22BF158B4(v215, v217);
    sub_22BF158B4(v209, v50);

    (*(v71 + 8))(v211, v219);
  }

  else
  {
    sub_22BF158B4(v58, v217);
    sub_22BF158B4(v49, v50);

    (*(v71 + 8))(v70, v219);
  }

  v91 = 1;
LABEL_29:
  v93 = *(v0 + 264);
  sub_22BE23CB4(*(v2 + 16));
  v94 = sub_22BF2B3E8();
  v96 = v95;
  *(v0 + 352) = v94;
  *(v0 + 360) = v95;
  sub_22BF249B8(v93);
  type metadata accessor for QueryableToolbox();
  static QueryableToolbox.getLanguageCode()();
  if (v97)
  {
    v220 = v50;
    v224 = v94;
    v212 = v96;
    v98 = *(v0 + 128);
    v100 = *(v0 + 88);
    v99 = *(v0 + 96);
    v101 = *(v0 + 80);
    sub_22C26E9F4();
    (*(v100 + 104))(v99, *MEMORY[0x277D1C238], v101);
    sub_22BE35838();
    sub_22C26E9E4();

    (*(v100 + 8))(v99, v101);
    v102 = sub_22BE2C254();
    v103(v102);
    v104 = sub_22C270264();
    v105 = sub_22BE1AEA8(v98, 1, v104);
    v106 = *(v0 + 128);
    if (v105 == 1)
    {
      sub_22BE233E8(*(v0 + 128), &qword_27D90B200, &qword_22C28C460);
      v107 = 0;
      v108 = 0xF000000000000000;
      v109 = v228;
      v50 = v220;
      v96 = v212;
    }

    else
    {
      v110 = sub_22C270254();
      sub_22BE1BC24();
      (*(v111 + 8))(v106, v104);
      v50 = v220;
      v96 = v212;
      if (v110 && (sub_22BF16E4C(0x6E6F6973726576, 0xE700000000000000, v110), v113 = v112, , v113))
      {
        sub_22C273054();
        v107 = sub_22C273034();
        v108 = v114;

        v115 = sub_22BE236C8();
        v116(v115);
        if (v108 >> 60 != 15)
        {
          v109 = v228;
          v50 = v220;
          if (v212 >> 60 != 15)
          {
            v186 = sub_22BE194C4();
            sub_22BF1C1E4(v186, v187);
            v188 = sub_22BE1ABB0();
            v189 = MEMORY[0x2318A6720](v188);
            sub_22BF158B4(v94, v212);
            v190 = sub_22BE194C4();
            sub_22BF158B4(v190, v191);
            v192 = sub_22BE194C4();
            sub_22BF158B4(v192, v193);
            if (v91 & v189)
            {
              goto LABEL_41;
            }

            v143 = 0;
            goto LABEL_46;
          }

          v143 = 0;
LABEL_44:
          v144 = sub_22BE1ABB0();
          sub_22BF158B4(v144, v145);
          sub_22BF158B4(v94, v96);
          goto LABEL_46;
        }

        v109 = v228;
        v50 = v220;
      }

      else
      {
        v107 = 0;
        v108 = 0xF000000000000000;
        v109 = v228;
      }
    }
  }

  else
  {
    v107 = 0;
    v108 = 0xF000000000000000;
    v109 = v228;
  }

  if (v96 >> 60 != 15)
  {
    v143 = 1;
    goto LABEL_44;
  }

  v117 = sub_22BE1ABB0();
  sub_22BF158B4(v117, v118);
  if (v91)
  {
    v224 = v94;
LABEL_41:

    sub_22C271AD4();

    v119 = sub_22C272084();
    v120 = sub_22C273784();

    v229 = v120;
    v121 = os_log_type_enabled(v119, v120);
    v122 = *(v0 + 296);
    v123 = *(v0 + 160);
    v124 = *(v0 + 168);
    v125 = *(v0 + 152);
    if (v121)
    {
      v208 = *(v0 + 160);
      v194 = *(v0 + 144);
      v195 = *(v0 + 136);
      v226 = *(v0 + 296);
      v126 = *(v0 + 48);
      buf = swift_slowAlloc();
      v199 = sub_22BE25618();
      v232[0] = v199;
      *buf = 136315138;
      v205 = v124;
      v221 = v50;
      v127 = *(v126 + 40);
      sub_22BE1BD3C((v126 + 16), v127);
      sub_22BE17C68();
      v213 = v96;
      v129 = v128;
      logb = v125;
      v130 = sub_22BE25184();
      sub_22BE2C690();
      v131();
      v132 = sub_22BE236C8();
      v133(v132);
      (*(v129 + 8))(v130, v127);
      v134 = *(v195 + 20);
      v135 = sub_22C26FDE4();
      v137 = v136;
      sub_22C26FDF4();
      sub_22BE18524();
      (*(v138 + 8))(v194 + v134);

      v139 = sub_22BE61C88(v135, v137, v232);

      *(buf + 4) = v139;
      _os_log_impl(&dword_22BE15000, v119, v229, "ToolEmbeddingDatabase: %s.\nStored toolDenyListVersion and ToolKit versions are up to date.", buf, 0xCu);
      sub_22BE26B64(v199);
      sub_22BE183C8();
      sub_22BE183C8();

      sub_22BF158B4(v209, v221);
      sub_22BF158B4(v224, v213);
      v140 = sub_22BE194C4();
      sub_22BF158B4(v140, v141);
      sub_22BF158B4(v215, v217);
      (v208[1].isa)(v205, logb);
      v142 = v226;
    }

    else
    {

      sub_22BF158B4(v209, v50);
      sub_22BF158B4(v224, v96);
      v157 = sub_22BE194C4();
      sub_22BF158B4(v157, v158);
      sub_22BF158B4(v215, v217);
      (*(v123 + 8))(v124, v125);
      v142 = v122;
    }

    sub_22BE233E8(v142, &qword_27D90B278, &qword_22C28C808);
    v230 = 0;
    goto LABEL_67;
  }

  v143 = 1;
LABEL_46:
  *(v0 + 368) = v108;
  *(v0 + 376) = v107;
  *(v0 + 400) = v143;
  if (!v109)
  {
    v147 = *(v0 + 40);
    if (v147 && (*(v147 + 16) & 1) != 0)
    {
      v148 = *(v0 + 240);
      v149 = sub_22BE17C90(*(v0 + 304));
      sub_22BF1F294(v149, v148);
      sub_22BF2B458();
      v180 = *(v0 + 304);
      sub_22BF249B8(*(v0 + 240));
      sub_22BE23CB4(*(v180 + 16));
      sub_22BF2B484();
      v181 = sub_22BE2501C();
      v182 = *(v0 + 232);
      v184 = sub_22BE3AFFC(v181, v183);
      v185 = v50;
LABEL_65:
      sub_22BF158B4(v184, v185);
      sub_22BF249B8(v182);
      sub_22BE233E8(v96, &qword_27D90B278, &qword_22C28C808);
      goto LABEL_66;
    }

    sub_22BF2562C();
    if (!v62 & v61)
    {
      if (!v143)
      {
LABEL_64:
        v172 = *(v0 + 248);
        v173 = sub_22BE17C90(*(v0 + 304));
        sub_22BF1F294(v173, v172);
        v174 = sub_22BE18944();
        sub_22BF2B42C(v174, v175);
        v96 = *(v0 + 296);
        v182 = *(v0 + 248);
        sub_22BF158B4(*(v0 + 376), *(v0 + 368));
        v176 = sub_22BE196A8();
        v178 = sub_22BE1A6A0(v176, v177);
        sub_22BF158B4(v178, v179);
        v184 = sub_22BE1AB1C();
        goto LABEL_65;
      }
    }

    else
    {
      v159 = *(v0 + 256);
      v160 = sub_22BE17C90(*(v0 + 304));
      sub_22BF1F294(v160, v159);
      v161 = sub_22BE19454();
      sub_22BE29D7C(v161, v162);
      v163 = sub_22BE23114();
      sub_22BF2B400(v163, v164);
      if (v159)
      {
        v231 = *(v0 + 344);
        v166 = *(v0 + 320);
        v165 = *(v0 + 328);
        v167 = *(v0 + 296);
        v168 = *(v0 + 256);
        sub_22BF158B4(v166, v165);
        v169 = sub_22BE3AFFC(v166, v165);
        sub_22BF158B4(v169, v231);
        sub_22BF249B8(v168);
        sub_22BE233E8(v167, &qword_27D90B278, &qword_22C28C808);
        sub_22BE3C824();

        v51 = sub_22BE2B7F8();
LABEL_15:

        return v52(v51);
      }

      sub_22BF249B8(*(v0 + 256));
      v170 = sub_22BE19454();
      sub_22BF158B4(v170, v171);
      if ((*(v0 + 400) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    v150 = sub_22BE3E8E8();
    sub_22BE233E8(v150, &qword_27D90B278, &qword_22C28C808);
    v151 = sub_22BE18240();
    v153 = sub_22BE1A6A0(v151, v152);
    sub_22BF158B4(v153, v154);
    v155 = sub_22BE232C8();
    sub_22BF158B4(v155, v156);
LABEL_66:
    v230 = 1;
LABEL_67:
    sub_22BE3C824();
    sub_22BE2352C();

    sub_22BE2589C();
    v51 = v230;
    goto LABEL_15;
  }

  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v146 = swift_task_alloc();
  *(v0 + 384) = v146;
  *v146 = v0;
  v146[1] = sub_22BF22F50;

  return sub_22BF1F2F8();
}

uint64_t sub_22BF22F50()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 392) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF23058(uint64_t a1)
{
  v4 = *(v1 + 392);
  v5 = *(v1 + 40);
  if (v5 && (*(v5 + 16) & 1) != 0)
  {
    sub_22BE3C394(*(*(v1 + 304) + 16));
    sub_22BF2B458();
    if (v4)
    {
      v7 = *(v1 + 368);
      v6 = *(v1 + 376);
      v9 = *(v1 + 336);
      v8 = *(v1 + 344);
      v10 = *(v1 + 296);
      v11 = *(v1 + 240);
      sub_22BF158B4(*(v1 + 320), *(v1 + 328));
      v12 = sub_22BE18240();
      sub_22BF158B4(v12, v13);
      sub_22BF158B4(v6, v7);
      v14 = v9;
      v15 = v8;
LABEL_8:
      sub_22BF158B4(v14, v15);
      sub_22BF249B8(v11);
      sub_22BE233E8(v10, &qword_27D90B278, &qword_22C28C808);
LABEL_15:
      sub_22BE3C824();
      sub_22BE2352C();

      v50 = sub_22BE2B7F8();
      goto LABEL_17;
    }

    v47 = *(v1 + 304);
    sub_22BF249B8(*(v1 + 240));
    sub_22BE3C394(*(v47 + 16));
    sub_22BF2B484();
    v48 = sub_22BE2501C();
    v40 = *(v1 + 232);
    v45 = sub_22BE3AFFC(v48, v49);
    v46 = v2;
  }

  else
  {
    sub_22BF2562C();
    if (!(!v17 & v16))
    {
      sub_22BF25678(*(*(v1 + 304) + 16));
      v18 = sub_22BE19454();
      sub_22BE29D7C(v18, v19);
      v20 = sub_22BE19454();
      sub_22BF2B400(v20, v21);
      if (v4)
      {
        v23 = *(v1 + 368);
        v22 = *(v1 + 376);
        v24 = *(v1 + 336);
        v53 = *(v1 + 344);
        v25 = *(v1 + 320);
        v26 = *(v1 + 328);
        v10 = *(v1 + 296);
        v11 = *(v1 + 256);
        sub_22BF158B4(v25, v26);
        sub_22BF158B4(v25, v26);
        v27 = sub_22BE196A8();
        sub_22BF158B4(v27, v28);
        sub_22BF158B4(v22, v23);
        v14 = v24;
        v15 = v53;
        goto LABEL_8;
      }

      sub_22BF249B8(*(v1 + 256));
      v29 = sub_22BE19454();
      sub_22BF158B4(v29, v30);
    }

    if (*(v1 + 400) == 1)
    {
      v31 = sub_22BE3E8E8();
      sub_22BE233E8(v31, &qword_27D90B278, &qword_22C28C808);
      v32 = sub_22BE18240();
      v34 = sub_22BE1A6A0(v32, v33);
      sub_22BF158B4(v34, v35);
      v36 = sub_22BE232C8();
      sub_22BF158B4(v36, v37);
      goto LABEL_16;
    }

    sub_22BF25678(*(*(v1 + 304) + 16));
    v38 = sub_22BE18944();
    sub_22BF2B42C(v38, v39);
    v3 = *(v1 + 296);
    v40 = *(v1 + 248);
    sub_22BF158B4(*(v1 + 376), *(v1 + 368));
    v41 = sub_22BE196A8();
    v43 = sub_22BE1A6A0(v41, v42);
    sub_22BF158B4(v43, v44);
    v45 = sub_22BE1AB1C();
  }

  sub_22BF158B4(v45, v46);
  sub_22BF249B8(v40);
  sub_22BE233E8(v3, &qword_27D90B278, &qword_22C28C808);
  if (v4)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_22BE2352C();

  sub_22BE2589C();
  v50 = 1;
LABEL_17:

  return v51(v50);
}

uint64_t sub_22BF234C8()
{
  v1 = v0[37];
  sub_22BF158B4(v0[40], v0[41]);
  v2 = sub_22BE232C8();
  sub_22BF158B4(v2, v3);
  v4 = sub_22BE18944();
  sub_22BF158B4(v4, v5);
  v6 = sub_22BE18240();
  sub_22BF158B4(v6, v7);
  sub_22BE233E8(v1, &qword_27D90B278, &qword_22C28C808);
  sub_22BE3C824();
  sub_22BE2352C();

  v8 = sub_22BE2B7F8();

  return v9(v8);
}

uint64_t sub_22BF23660(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for ToolboxVersion(0);
  v2[6] = swift_task_alloc();
  v3 = sub_22C2720A4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22C272224();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  _s19SentinelFileManagerVMa(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF237F0, 0, 0);
}

uint64_t sub_22BF237F0()
{
  v96 = v0;
  v1 = v0;
  v2 = sub_22BF3C48C();
  v0[16] = v2;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v6 = v1[11];
    v95[0] = MEMORY[0x277D84F90];
    sub_22BE70138(0, v3, 0);
    v4 = v95[0];
    v7 = *(v6 + 16);
    v6 += 16;
    v8 = v5 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v91 = *(v6 + 56);
    log = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[12];
      v11 = v1;
      v12 = v1[10];
      (log)(v10, v8, v12);
      v13 = sub_22C2721E4();
      v15 = v14;
      (*v9)(v10, v12);
      v95[0] = v4;
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22BE70138(v16 > 1, v17 + 1, 1);
        v4 = v95[0];
      }

      *(v4 + 16) = v17 + 1;
      v18 = v4 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v8 += v91;
      --v3;
      v1 = v11;
    }

    while (v3);
  }

  v95[0] = v4;

  sub_22BF1C7CC(v95);
  v19 = v1[15];
  v20 = v1[4];

  v1[2] = v95[0];
  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BEBAF64();
  sub_22C272FB4();

  static ToolBoxUtility.stableHashData(hashableString:)();
  v22 = v21;

  v23 = sub_22C26E034();
  v25 = v24;

  v1[17] = v23;
  v1[18] = v25;
  v26 = *(v20 + 56);
  v1[19] = v26;
  sub_22BF1F294(*(v26 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v19);
  sub_22BF2B4B0();
  sub_22BF249B8(v19);
  sub_22BF2562C();
  if (!v32 & v31)
  {
    sub_22BE1C1C0();
    if (!v32 & v31)
    {
      v27 = sub_22BE232C8();
      sub_22BE29D7C(v27, v28);

      v29 = sub_22BE35838();
      sub_22BF158B4(v29, v30);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  sub_22BE1C1C0();
  if (!v32 & v31)
  {
LABEL_13:
    v33 = sub_22BE232C8();
    sub_22BE29D7C(v33, v34);
    v35 = sub_22BE35838();
    sub_22BF158B4(v35, v36);
    v37 = sub_22BE232C8();
    sub_22BF158B4(v37, v38);
    goto LABEL_14;
  }

  v45 = sub_22BE232C8();
  sub_22BE29D7C(v45, v46);
  v47 = sub_22BE232C8();
  sub_22BE29D7C(v47, v48);
  v49 = sub_22BE35838();
  sub_22BF1C1E4(v49, v50);
  v51 = sub_22BE35838();
  v52 = MEMORY[0x2318A6720](v51);
  v53 = sub_22BE232C8();
  sub_22BF158B4(v53, v54);
  v55 = sub_22BE232C8();
  sub_22BE29DD4(v55, v56);
  v57 = sub_22BE35838();
  sub_22BF158B4(v57, v58);
  v59 = sub_22BE35838();
  sub_22BF158B4(v59, v60);
  if (v52)
  {

LABEL_19:
    sub_22C271AD4();

    v61 = sub_22C272084();
    v62 = sub_22C273784();

    v63 = os_log_type_enabled(v61, v62);
    v65 = v1[8];
    v64 = v1[9];
    v66 = v1[7];
    if (v63)
    {
      v67 = v1[6];
      v87 = v1[5];
      loga = v61;
      v68 = v1[4];
      buf = swift_slowAlloc();
      v90 = sub_22BE25618();
      v95[0] = v90;
      *buf = 136315138;
      v89 = v62;
      v69 = v68[5];
      v70 = v68[6];
      sub_22BE1BD3C(v68 + 2, v69);
      sub_22BE17C68();
      v92 = v66;
      sub_22BE25184();
      sub_22BE2C690();
      v71();
      (*(v70 + 16))(v69, v70);
      v72 = sub_22BE196A8();
      v73(v72);
      v74 = v64;
      v75 = *(v87 + 20);
      v76 = sub_22C26FDE4();
      v78 = v77;
      sub_22C26FDF4();
      sub_22BE18524();
      (*(v79 + 8))(v67 + v75);

      v80 = sub_22BE61C88(v76, v78, v95);

      *(buf + 4) = v80;
      _os_log_impl(&dword_22BE15000, loga, v89, "ToolEmbeddingDatabase: %s\nloadAllSiriXShims is a no-op. Stored SiriX shims version is equal to the passed in version.", buf, 0xCu);
      sub_22BE26B64(v90);
      sub_22BE183C8();
      sub_22BE183C8();

      v81 = sub_22BE232C8();
      sub_22BE29DD4(v81, v82);
      (*(v65 + 8))(v74, v92);
    }

    else
    {
      v83 = sub_22BE232C8();
      sub_22BE29DD4(v83, v84);

      (*(v65 + 8))(v64, v66);
    }

    sub_22BE2946C();

    __asm { BRAA            X2, X16 }
  }

LABEL_14:
  v39 = swift_task_alloc();
  v1[20] = v39;
  *v39 = v1;
  v39[1] = sub_22BF23E30;
  sub_22BE2946C();

  return sub_22BF1E000(v40, v41, v42);
}

uint64_t sub_22BF23E30()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF23F30(uint64_t a1)
{
  v2 = v1[3];
  if (v2 && (*(v2 + 16) & 1) != 0)
  {
    v3 = v1[21];
    sub_22BE3C394(*(v1[19] + 16));
    sub_22BF2B578();
    v4 = v1[13];
  }

  else
  {
    v3 = v1[21];
    sub_22BF25678(*(v1[19] + 16));
    v5 = sub_22BE19454();
    sub_22BF2B4C8(v5, v6);
    v4 = v1[14];
  }

  sub_22BF249B8(v4);
  v7 = sub_22BE19454();
  sub_22BE29DD4(v7, v8);

  if (v3)
  {
    v9 = sub_22BE2B7F8();
  }

  else
  {
    sub_22BE2589C();
    v9 = 1;
  }

  return v10(v9);
}

uint64_t sub_22BF240B0()
{
  sub_22BE201F0();
  sub_22BE29DD4(*(v0 + 136), *(v0 + 144));

  v1 = sub_22BE2B7F8();

  return v2(v1);
}

char *sub_22BF24164()
{
  v1 = sub_22C273064();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C26DC34();
  swift_allocObject();
  sub_22C26DC24();
  sub_22C272424();
  sub_22BF255E0(&qword_28106DF58, MEMORY[0x277D726F0], MEMORY[0x277D726F8]);
  v4 = sub_22C26DC04();
  v6 = v5;

  if (!v0)
  {
    sub_22C273054();
    v7 = sub_22C273044();
    if (v8)
    {
      v3 = v7;
    }

    else
    {
      v3 = 0x800000022C2D4060;
      sub_22BF103C8();
      swift_allocError();
      *v10 = 0xD00000000000007FLL;
      *(v10 + 8) = 0x800000022C2D3FE0;
      *(v10 + 16) = xmmword_22C28C730;
      *(v10 + 32) = 0x800000022C2D4060;
      swift_willThrow();
    }

    sub_22BE29DD4(v4, v6);
  }

  return v3;
}

uint64_t MutableToolbox.allowList(toolDefinitions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF243D8()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22BF24470;
  v2 = sub_22BE3E2E8(*(v0 + 16));

  return QueryableToolbox.allowList(toolDefinitions:)(v2);
}

uint64_t sub_22BF24470()
{
  sub_22BE183F0();
  v3 = v2;
  sub_22BE190F0();
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;

  sub_22BE2589C();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t MutableToolbox.metadata(enableAllowList:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF24574()
{
  sub_22BE183F0();
  v1 = *(v0[2] + 56);
  v0[3] = v1;
  v0[4] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  sub_22BE23878(v2);

  return sub_22BF3AE08();
}

uint64_t sub_22BF24618()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 48) = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BF24720()
{
  sub_22BE183F0();
  v0[8] = *(v0[3] + 16);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  sub_22BE23878(v1);

  return sub_22BF3B42C();
}

uint64_t sub_22BF247BC()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    sub_22BE27278();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);
    v13 = *(v5 + 48);

    return v12(v13, v3);
  }
}

uint64_t sub_22BF248F8()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF24954()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF249B8(uint64_t a1)
{
  v2 = _s19SentinelFileManagerVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MutableToolbox.deinit()
{
  sub_22BE26B64((v0 + 16));

  return v0;
}

uint64_t MutableToolbox.__deallocating_deinit()
{
  sub_22BE26B64((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_22BF24AE0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22C273FC4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BF24C9C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22BF24BD4(0, v2, 1, a1);
  }
}

uint64_t sub_22BF24BD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        result = sub_22C274014();
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

void sub_22BF24C9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
          v14 = sub_22C274014();
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

          else if ((v14 ^ sub_22C274014()))
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
            v88 = v9;
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
                if (v37 || (sub_22C274014() & 1) == 0)
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
            v9 = v88;
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
        sub_22BE6614C();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_22BE6614C();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
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
          sub_22BF252D0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
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

  sub_22BF251A4(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_22BF251A4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C115CA4(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_22BF252D0((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22BF252D0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22BE67CB0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22C274014() & 1) == 0)
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

  sub_22BE67CB0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_22C274014() & 1) != 0)
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

void sub_22BF25474(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22C272E44();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_22BF25510(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B278, &qword_22C28C808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF25580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BE5CE4C(a3, a4);
  sub_22BE1BC24();
  v5 = sub_22BE19454();
  v6(v5);
  return a2;
}

uint64_t sub_22BF255E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BF25638()
{

  return sub_22C273034();
}

uint64_t sub_22BF25678@<X0>(uint64_t a1@<X8>)
{

  return sub_22BF1F294(a1 + v1, v2);
}

uint64_t sub_22BF25690(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000797265;
  v3 = 0x7551797469746E65;
  v4 = a1;
  v5 = 0x7551797469746E65;
  v6 = 0xEB00000000797265;
  switch(v4)
  {
    case 1:
      v5 = 0x61636F5669726973;
      v6 = 0xEE007972616C7562;
      break;
    case 2:
      v5 = 0xD000000000000014;
      v6 = 0x800000022C2D29F0;
      break;
    case 3:
      v5 = 0x656D6F646167656DLL;
      v7 = 5391173;
      goto LABEL_8;
    case 4:
      v5 = 0x52747865746E6F63;
      v6 = 0xEF79727473696765;
      break;
    case 5:
      v5 = 0x61566E7275746572;
      v7 = 6649196;
LABEL_8:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v5 = 0x6D6F725072657375;
      v6 = 0xEA00000000007470;
      break;
    case 7:
      v5 = 0x72616573696E6D6FLL;
      v6 = 0xEA00000000006863;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x61636F5669726973;
      v2 = 0xEE007972616C7562;
      break;
    case 2:
      v3 = 0xD000000000000014;
      v2 = 0x800000022C2D29F0;
      break;
    case 3:
      v3 = 0x656D6F646167656DLL;
      v8 = 5391173;
      goto LABEL_17;
    case 4:
      v3 = 0x52747865746E6F63;
      v2 = 0xEF79727473696765;
      break;
    case 5:
      v3 = 0x61566E7275746572;
      v8 = 6649196;
LABEL_17:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v3 = 0x6D6F725072657375;
      v2 = 0xEA00000000007470;
      break;
    case 7:
      v3 = 0x72616573696E6D6FLL;
      v2 = 0xEA00000000006863;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22BE1A6C8(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_22BF258F8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7469725764616572;
  }

  else
  {
    v3 = 0x796C6E4F64616572;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (a2)
  {
    v5 = 0x7469725764616572;
  }

  else
  {
    v5 = 0x796C6E4F64616572;
  }

  if (a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_22BF25990(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000073656C70;
  v3 = 0x6D6178655F736F70;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6D6178655F67656ELL;
    }

    else
    {
      v5 = 0x7470697263736564;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000073656C70;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  else
  {
    v5 = 0x6D6178655F736F70;
    v6 = 0xEC00000073656C70;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x6D6178655F67656ELL : 0x7470697263736564;
    if (a2 != 1)
    {
      v2 = 0xEB000000006E6F69;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE1A6C8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_22BF25AA4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x4149445F4C4C5546;
  }

  if (v2)
  {
    v4 = 0xEB00000000474F4CLL;
  }

  else
  {
    v4 = 0x800000022C2D2980;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x4149445F4C4C5546;
  }

  if (a2)
  {
    v6 = 0x800000022C2D2980;
  }

  else
  {
    v6 = 0xEB00000000474F4CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_22BF25B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22BE17CA0(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_22BF25C14(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65747441666C6573;
  }

  else
  {
    v3 = 0x676E69727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006E6F69746ELL;
  }

  if (a2)
  {
    v5 = 0x65747441666C6573;
  }

  else
  {
    v5 = 0x676E69727473;
  }

  if (a2)
  {
    v6 = 0xED00006E6F69746ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_22BF25CB0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x74706D6F7270;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x444974706D6F7270;
    }

    else
    {
      v4 = 0x655474706D6F7270;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE006574616C706DLL;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x74706D6F7270;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x444974706D6F7270;
    }

    else
    {
      v2 = 0x655474706D6F7270;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEE006574616C706DLL;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_22BF25DB4(char a1, uint64_t a2)
{
  v3 = 0xE100000000000000;
  v4 = 61;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 15649;
      break;
    case 2:
      v4 = 62;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v4 = 15678;
      break;
    case 4:
      v4 = 60;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v4 = 15676;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v4 = 0x736E6961746E6F63;
      break;
    case 7:
      v4 = 0x666572705F736168;
      goto LABEL_11;
    case 8:
      v4 = 0x666675735F736168;
LABEL_11:
      v3 = 0xEA00000000007869;
      break;
    case 9:
      v4 = 0x65777465625F7369;
      v3 = 0xEA00000000006E65;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 61;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 15649;
      break;
    case 2:
      v6 = 62;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v6 = 15678;
      break;
    case 4:
      v6 = 60;
      break;
    case 5:
      v5 = 0xE200000000000000;
      v6 = 15676;
      break;
    case 6:
      v5 = 0xE800000000000000;
      v6 = 0x736E6961746E6F63;
      break;
    case 7:
      v6 = 0x666572705F736168;
      goto LABEL_22;
    case 8:
      v6 = 0x666675735F736168;
LABEL_22:
      v5 = 0xEA00000000007869;
      break;
    case 9:
      v6 = 0x65777465625F7369;
      v5 = 0xEA00000000006E65;
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
    v8 = sub_22BE17CA0(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_22BF25F94(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000064726177;
  v3 = 0x726F466563696F76;
  v4 = a1;
  v5 = 0x726F466563696F76;
  v6 = 0xEC00000064726177;
  switch(v4)
  {
    case 1:
      v5 = 0x6C6E4F6563696F76;
      v6 = 0xE900000000000079;
      break;
    case 2:
      v5 = 0x4679616C70736964;
      v6 = 0xEE0064726177726FLL;
      break;
    case 3:
      v5 = 0x4F79616C70736964;
      v6 = 0xEB00000000796C6ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C6E4F6563696F76;
      v2 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0x4679616C70736964;
      v2 = 0xEE0064726177726FLL;
      break;
    case 3:
      v3 = 0x4F79616C70736964;
      v2 = 0xEB00000000796C6ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE1A6C8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_22BF2610C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1868852853;
  }

  else
  {
    v3 = 0x6D726F66726570;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1868852853;
  }

  else
  {
    v5 = 0x6D726F66726570;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_22BF26198()
{
  sub_22C272274();
  sub_22BF269FC();
  sub_22C2733C4();
  sub_22C2733C4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_22C274014();
  }

  return v1 & 1;
}

uint64_t PlannerToolboxDelegate.version.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_22BE5CE4C(&qword_27D90B280, &qword_22C28C820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_22C26FDF4();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  swift_getKeyPath();
  sub_22C26E624();

  sub_22C26FDD4();
  if (sub_22BE1AEA8(v4, 1, v5) == 1)
  {
    sub_22BF26408(v11);
    if (sub_22BE1AEA8(v4, 1, v5) != 1)
    {
      sub_22BF26590(v4);
    }
  }

  else
  {
    (*(v7 + 32))(v11, v4, v5);
  }

  *a1 = 14;
  v12 = type metadata accessor for ToolboxVersion(0);
  return (*(v7 + 32))(&a1[*(v12 + 20)], v11, v5);
}

uint64_t sub_22BF26408@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C2720A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271B14();
  v6 = sub_22C272084();
  v7 = sub_22C2737A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22BE15000, v6, v7, "Unknown planner type, will assume agenticPlanner for toolbox version", v8, 2u);
    MEMORY[0x2318AD180](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *MEMORY[0x277D1CE80];
  v10 = sub_22C26FDF4();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_22BF26590(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B280, &qword_22C28C820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlannerToolboxDelegate.toolFilter(_:)(uint64_t a1)
{
  v2 = sub_22C272224();
  sub_22BE179D8();
  v35 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  sub_22C2720A4();
  sub_22BE179D8();
  v36 = v9;
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = sub_22C272274();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  sub_22C272214();
  (*(v15 + 104))(v18, *MEMORY[0x277D723F0], v13);
  v22 = sub_22BF26198();
  v23 = *(v15 + 8);
  v23(v18, v13);
  v23(v21, v13);
  if (v22)
  {
    ToolDefinition.isAvailableForToolboxIndexing.getter();
    if (v24)
    {
      return 1;
    }

    sub_22C271B24();
    v26 = v35;
    (*(v35 + 16))(v7, a1, v2);
    v27 = sub_22C272084();
    v28 = sub_22C2737C4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v31 = sub_22C2721D4();
      v33 = v32;
      (*(v26 + 8))(v7, v2);
      v34 = sub_22BE61C88(v31, v33, &v38);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_22BE15000, v27, v28, "PlannerToolboxDelegate: Skipping tool due to unsatisfied requirements: %s", v29, 0xCu);
      sub_22BE26B64(v30);
      MEMORY[0x2318AD180](v30, -1, -1);
      MEMORY[0x2318AD180](v29, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v7, v2);
    }

    (*(v36 + 8))(v12, v37);
  }

  return 0;
}

unint64_t sub_22BF269FC()
{
  result = qword_27D90B288;
  if (!qword_27D90B288)
  {
    sub_22C272274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B288);
  }

  return result;
}

uint64_t static QueryableToolbox.getLanguageCode()()
{
  v0 = [objc_opt_self() sharedPreferences];
  sub_22BF2ADF0(v0);
  v2 = v1;
  if (v1)
  {
    sub_22BE699D0();
    v3 = sub_22C273954();

    if (v3[2])
    {
      v4 = v3[4];
      v5 = v3[5];
      v6 = v3[6];
      v7 = v3[7];
      swift_bridgeObjectRetain_n();

      v2 = MEMORY[0x2318AB7C0](v4, v5, v6, v7);
      swift_bridgeObjectRelease_n();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t sub_22BF26B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  sub_22BF27224(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, SWORD1(a10), SWORD2(a10), SBYTE6(a10), SHIBYTE(a10), a11, a12, a9, a10, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29);
  return v18;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryableToolbox.countToolDefinitions()()
{

  sub_22BE1BF08();
  sub_22BF27AD0(v0, v1, v2, v3, v4);
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryableToolbox.count(toolType:clientIdentifier:)(IntelligenceFlowPlannerSupport::ToolBoxToolType toolType, Swift::String_optional clientIdentifier)
{
  object = clientIdentifier.value._object;
  countAndFlagsBits = clientIdentifier.value._countAndFlagsBits;
  v4 = *toolType;

  sub_22BE1BF08();
  return sub_22BF2805C(v5, v6, v7, v8, v9, v4, countAndFlagsBits, object);
}

uint64_t QueryableToolbox.allowList(toolDefinitions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22BF26D2C, 0, 0);
}

uint64_t sub_22BF26D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22BF26DC8;

  return sub_22BF4C7A0();
}

uint64_t sub_22BF26DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v6;

  v9 = *(v11 + 8);
  if (!v5)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t QueryableToolbox.isReady.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void QueryableToolbox.__allocating_init<A, B>(delegate:planGenerationDelegate:databasePath:sandboxIdentifier:toolbox:toolkitCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BE19130();
  a22 = v27;
  a23 = v28;
  v68 = v26;
  v30 = v29;
  v66 = v31;
  v67 = v32;
  v64 = v34;
  v65 = v33;
  v61 = v35;
  v69 = v36;
  v38 = v37;
  v60 = v37;
  v62 = a26;
  v39 = a24;
  v63 = a25;
  v40 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v41 = sub_22BE19448(v40);
  MEMORY[0x28223BE20](v41);
  v43 = &v59 - v42;
  sub_22BE17C68();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  sub_22BE179EC();
  v49 = v48 - v47;
  sub_22BE17C68();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  sub_22BE179EC();
  v55 = v54 - v53;
  (*(v51 + 16))(v54 - v53, v38, v30);
  v56 = v39;
  (*(v45 + 16))(v49, v69, v39);
  a13 = 0;
  v57 = v61;
  sub_22BF2AF04(v61, v43, &qword_27D908088, &qword_22C278EC0);
  v58 = v64;
  sub_22BF1CDC0(v64, v70);
  sub_22BF26B58(v55, v49, &a13, v43, v65, v66, v70, v67, v30, v56, v63, v62);
  sub_22BF1CE1C(v58);
  sub_22BE23388(v57, &qword_27D908088, &qword_22C278EC0);
  (*(v45 + 8))(v69, v56);
  (*(v51 + 8))(v60, v30);
  sub_22BE18478();
}

void sub_22BF27224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BE19130();
  a23 = v30;
  a24 = v31;
  v76 = v32;
  v75 = v33;
  v77 = v34;
  v78 = v35;
  v83 = v36;
  v81 = v37;
  v73 = v38;
  v40 = v39;
  v41 = a25;
  v42 = a26;
  v74 = a28;
  v82 = a27;
  v71 = *v28;
  v43 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v44 = sub_22BE19448(v43);
  MEMORY[0x28223BE20](v44);
  v46 = &v71 - v45;
  sub_22BE17C68();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  sub_22BE179EC();
  v52 = v51 - v50;
  sub_22BE17C68();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  sub_22BE179EC();
  v58 = v57 - v56;
  v59 = v82;
  a10 = *v81;
  v81 = v28;
  *(v28 + 24) = 0;
  (*(v59 + 8))(v84, v41);
  v60 = 128;
  if (LOBYTE(v84[0]))
  {
    v60 = 384;
  }

  v72 = v60;
  type metadata accessor for ToolEmbeddingsDatabase(0);
  v61 = *(v54 + 16);
  v80 = v40;
  v62 = v40;
  v63 = v73;
  v61(v58, v62, v41);
  v79 = v48;
  (*(v48 + 16))(v52, v63, v42);
  sub_22BF2AF04(v83, v46, &qword_27D908088, &qword_22C278EC0);
  a14 = a10;
  v64 = v75;
  sub_22BF1CDC0(v75, v84);
  v65 = sub_22BF47390(v58, v52, v46, &a14, v72, v77, v78, v84, v76, v41, v42, v82, v74);
  if (v29)
  {
    sub_22BF1CE1C(v64);
    sub_22BE23388(v83, &qword_27D908088, &qword_22C278EC0);
    v66 = sub_22BE23128();
    v67(v66);
    (*(v54 + 8))(v80, v41);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v68 = v65;
    sub_22BF1CE1C(v64);
    sub_22BE23388(v83, &qword_27D908088, &qword_22C278EC0);
    v69 = sub_22BE23128();
    v70(v69);
    (*(v54 + 8))(v80, v41);
    v81[2] = v68;
  }

  sub_22BE18478();
}

void sub_22BF275C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v22 = v21;
  v24 = v23;
  v66 = v25;
  v64 = v26;
  v69 = v27;
  v28 = _s19SentinelFileManagerVMa(0);
  v29 = sub_22BE19448(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BE179EC();
  v65 = v31 - v30;
  sub_22C2720A4();
  sub_22BE17C68();
  v67 = v33;
  v68 = v32;
  MEMORY[0x28223BE20](v32);
  v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v64 - v37;
  sub_22C26E2F4();
  sub_22BE17C68();
  MEMORY[0x28223BE20](v39);
  sub_22BE179EC();
  v42 = (v41 - v40);
  sub_22C26E314();
  if (v20)
  {
    v70 = v22;
    v43 = v20;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v44 = sub_22BE1B328();
      v46 = v45(v44);
      if (v46 == *MEMORY[0x277D781A0])
      {

        v47 = sub_22BE1B328();
        v48(v47);
        v50 = *v42;
        v49 = v42[1];
        sub_22C271AD4();
        v51 = v66;

        v52 = sub_22C272084();
        v53 = sub_22C2737A4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v71[0] = swift_slowAlloc();
          *v54 = 136315394;
          *(v54 + 4) = sub_22BE61C88(v64, v51, v71);
          *(v54 + 12) = 2080;
          v55 = sub_22BE61C88(v50, v49, v71);

          *(v54 + 14) = v55;
          _os_log_impl(&dword_22BE15000, v52, v53, "QueryableToolbox %s failed due to unrecoverable error: %s", v54, 0x16u);
          swift_arrayDestroy();
          sub_22BE183C8();
          sub_22BE183C8();
        }

        else
        {
        }

        (*(v67 + 8))(v35, v68);
        v61 = v65;
        sub_22BF1F294(*(v24 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v65);
        sub_22BF2B12C();
        sub_22BF249B8(v61);
        sub_22BE189D8();
        *(v24 + 24) = 0;

LABEL_13:

        goto LABEL_16;
      }

      if (v46 == *MEMORY[0x277D781A8])
      {

        sub_22C271AD4();
        v56 = v66;

        v57 = sub_22C272084();
        v58 = sub_22C2737C4();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v71[0] = v60;
          *v59 = 136315138;
          *(v59 + 4) = sub_22BE61C88(v64, v56, v71);
          _os_log_impl(&dword_22BE15000, v57, v58, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v59, 0xCu);
          sub_22BE26B64(v60);
          sub_22BE183C8();
          sub_22BE183C8();
        }

        (*(v67 + 8))(v38, v68);
        sub_22BE189D8();
        *(v24 + 24) = 0;

        goto LABEL_13;
      }

      v62 = sub_22BE1B328();
      v63(v62);
    }

    goto LABEL_16;
  }

  sub_22BE189D8();
  *(v24 + 24) = 1;

LABEL_16:
  sub_22BE18478();
}

void sub_22BF27AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v36 = a2;
  v41 = a1;
  v8 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C2720A4();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_22C26E2F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BF4B6F0();
  if (!v5)
  {
    swift_beginAccess();
    *(a4 + 24) = 1;

    return;
  }

  v42 = a5;
  v44 = v5;
  v20 = v5;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v21 = (*(v17 + 88))(v19, v16);
    if (v21 == *MEMORY[0x277D781A0])
    {

      (*(v17 + 96))(v19, v16);
      v23 = *v19;
      v22 = v19[1];
      sub_22C271AD4();
      v24 = v38;

      v25 = sub_22C272084();
      v26 = sub_22C2737A4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43[0] = v28;
        *v27 = 136315394;
        *(v27 + 4) = sub_22BE61C88(v36, v24, v43);
        *(v27 + 12) = 2080;
        v29 = sub_22BE61C88(v23, v22, v43);

        *(v27 + 14) = v29;
        _os_log_impl(&dword_22BE15000, v25, v26, "QueryableToolbox %s failed due to unrecoverable error: %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v28, -1, -1);
        MEMORY[0x2318AD180](v27, -1, -1);
      }

      else
      {
      }

      (*(v39 + 8))(v12, v40);
      v35 = v37;
      sub_22BF1F294(*(a4 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v37);
      sub_22BF2B12C();
      sub_22BF249B8(v35);
      swift_beginAccess();
      *(a4 + 24) = 0;

LABEL_13:

      return;
    }

    if (v21 == *MEMORY[0x277D781A8])
    {

      sub_22C271AD4();
      v30 = v38;

      v31 = sub_22C272084();
      v32 = sub_22C2737C4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v43[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_22BE61C88(v36, v30, v43);
        _os_log_impl(&dword_22BE15000, v31, v32, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v33, 0xCu);
        sub_22BE26B64(v34);
        MEMORY[0x2318AD180](v34, -1, -1);
        MEMORY[0x2318AD180](v33, -1, -1);
      }

      (*(v39 + 8))(v15, v40);
      swift_beginAccess();
      *(a4 + 24) = 0;

      goto LABEL_13;
    }

    (*(v17 + 8))(v19, v16);
  }
}