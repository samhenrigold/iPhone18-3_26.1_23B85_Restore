unint64_t sub_261A41E1C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_261A85914();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_261A47974(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_261A42124()
{
  sub_261A85C44();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A42198(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A421EC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_261A859E4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_261A4227C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_261A859E4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_261A422EC(uint64_t a1)
{
  v2 = sub_261A4A068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A42328(uint64_t a1)
{
  v2 = sub_261A4A068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A42364(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB250, &qword_261A88320);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4A068();
  sub_261A85CD4();
  v8 = *(v2 + 80);
  v18 = *(v2 + 64);
  v19 = v8;
  v20 = *(v2 + 96);
  v9 = *(v2 + 16);
  v14 = *v2;
  v15 = v9;
  v10 = *(v2 + 48);
  v16 = *(v2 + 32);
  v17 = v10;
  sub_261A4A0BC(v2, v12);
  sub_261A4A0F4();
  sub_261A85B54();
  v12[4] = v18;
  v12[5] = v19;
  v13 = v20;
  v12[0] = v14;
  v12[1] = v15;
  v12[3] = v17;
  v12[2] = v16;
  sub_261A39A74(v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_261A4251C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB298, &qword_261A88340);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4A448();
  sub_261A85CD4();
  v15 = 0;
  sub_261A85B74();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_261A85B14();
  v13 = 2;
  sub_261A85B74();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_261A426CC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB268, &qword_261A88328);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4A2F4();
  sub_261A85CD4();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB278, &unk_261A88330);
  sub_261A4A378(&qword_27FECB280, &qword_27FECB278, &unk_261A88330, sub_261A4A348);
  sub_261A85B54();
  if (!v5)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1D8, &qword_261A87D08);
    sub_261A478F8();
    sub_261A85B54();
    LOBYTE(v16) = 2;
    sub_261A85B34();
    LOBYTE(v16) = 3;
    sub_261A85B34();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_261A42964()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x646F69726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_261A429AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A4A148(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A429E0(uint64_t a1)
{
  v2 = sub_261A4A448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A42A1C(uint64_t a1)
{
  v2 = sub_261A4A448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A42A84()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A42B40(uint64_t a1)
{
  sub_261A85554();
}

uint64_t sub_261A42BE8(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

unint64_t sub_261A42CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261A4A25C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261A42CD0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "FixedCounterPMIs";
  v4 = 0xD000000000000021;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000016;
    v3 = "tersPeriodSeconds";
  }

  if (*v1)
  {
    v5 = "ConfiguredCounterGroupPMIs";
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v5 = "L1D_TLB_MISS_NONSPEC";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_261A42D4C()
{
  v1 = 0xD000000000000010;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261A42DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A4A25C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A42DF8(uint64_t a1)
{
  v2 = sub_261A4A2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A42E34(uint64_t a1)
{
  v2 = sub_261A4A2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A42EA8(uint64_t a1)
{
  sub_261A85554();
}

unint64_t sub_261A42FE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261A4A2A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261A43010(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEC00000073656C70;
    v9 = 0xD000000000000011;
    v10 = 0x8000000261A8DC00;
    if (v2 != 1)
    {
      v9 = 0x65646F435F43504BLL;
      v10 = 0xE900000000000073;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x6D615372656D6954;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEA00000000007365;
    v4 = 0x6C706D6153494D50;
    if (v2 != 5)
    {
      v4 = 0xD000000000000017;
      v3 = 0x8000000261A8DC60;
    }

    v5 = 0xD000000000000011;
    v6 = 0x8000000261A8DC20;
    if (v2 != 3)
    {
      v5 = 0xD000000000000010;
      v6 = 0x8000000261A8DC40;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_261A43114()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0x65646F435F43504BLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6D615372656D6954;
    }
  }

  else
  {
    v2 = 0x6C706D6153494D50;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_261A43210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A4A2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A43244(uint64_t a1)
{
  v2 = sub_261A47850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A43280(uint64_t a1)
{
  v2 = sub_261A47850();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_261A432BC()
{
  sub_261A39AC8(v0, v7);
  v1 = v7[0];
  v2 = v7[1];
  v3 = v7[2];
  v4 = v7[3];
  sub_261A858C4();

  MEMORY[0x2667168A0](v1, v2);
  MEMORY[0x2667168A0](0x6F206B6E75686320, 0xEA00000000002066);
  v5 = sub_261A85B94();
  MEMORY[0x2667168A0](v5);

  MEMORY[0x2667168A0](0x203A736574796220, 0xE800000000000000);
  MEMORY[0x2667168A0](v3, v4);
  return 0xD000000000000011;
}

uint64_t sub_261A43408(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1C0, &qword_261A87D00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A47850();
  sub_261A85CD4();
  LOBYTE(v13) = 4;
  sub_261A85B64();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 3;
  sub_261A85B64();
  LOBYTE(v13) = 0;
  sub_261A85B44();
  LOBYTE(v13) = 5;
  sub_261A85B44();
  LOBYTE(v13) = 1;
  sub_261A85B24();
  if (*v3)
  {
    v13 = *v3;
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1D8, &qword_261A87D08);
    sub_261A478F8();
    sub_261A85B54();
  }

  v10 = v3[9];
  if (!v10)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = *(v3 + 5);
  v15 = v3[12];
  v13 = v10;
  v12 = 6;
  sub_261A478A4();
  sub_261A85B54();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_261A436C0(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 80);
  v29 = *(v1 + 64);
  v30 = v5;
  v31 = *(v1 + 96);
  v6 = *(v1 + 16);
  v25 = *v1;
  v26 = v6;
  v8 = *(v1 + 32);
  v7 = *(v1 + 48);
  v9 = *(v1 + 64);
  v27 = v8;
  v28 = v7;
  if (v9 >> 60 == 15 || (v10 = *(v3 + 56), sub_261A4777C(v10, v9), sub_261A43874(a1, 20992, 0x696C70207065706BLL, 0xEA00000000007473, v10, v9), result = sub_261A477D0(v10, v9), !v2))
  {
    sub_261A852E4();
    swift_allocObject();
    sub_261A852D4();
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    sub_261A39A18(v3, v17);
    sub_261A476D4();
    v12 = sub_261A852C4();
    if (v2)
    {

      return sub_261A39A74(v3);
    }

    else
    {
      v14 = v12;
      v15 = a1;
      v16 = v13;
      sub_261A43874(v15, 20482, 0x6174656D20434D50, 0xEC00000061746164, v14, v13);
      sub_261A47728(v14, v16);
      sub_261A39A74(v3);
    }
  }

  return result;
}

uint64_t sub_261A43874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = BYTE6(a6);
  v8 = a4;
  v9 = a3;
  v10 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_20;
    }

    v24 = a4;
    v25 = a3;
    v8 = a1;
    v9 = *(a5 + 16);
    v11 = sub_261A85224();
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = sub_261A85244();
    v13 = v9 - v12;
    if (!__OFSUB__(v9, v12))
    {
LABEL_12:
      v11 += v13;
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v10)
  {
    goto LABEL_20;
  }

  v25 = v9;
  if (a5 > a5 >> 32)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24 = v8;
  v11 = sub_261A85224();
  if (v11)
  {
    v14 = sub_261A85244();
    v13 = a5 - v14;
    if (__OFSUB__(a5, v14))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_12;
  }

LABEL_13:
  v9 = v25;
  result = sub_261A85234();
  if (!v11)
  {
    __break(1u);
    return result;
  }

  if (v10 != 2)
  {
    v8 = v24;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

  v8 = v24;
  if (__OFSUB__(*(a5 + 24), *(a5 + 16)))
  {
    __break(1u);
  }

LABEL_20:
  result = ktrace_file_append_chunk();
  if (result)
  {
    return result;
  }

  v16 = MEMORY[0x2667166F0]();
  if (strerror(v16))
  {
    v17 = sub_261A855A4();
    v19 = v18;
    if (v10 <= 1)
    {
      goto LABEL_23;
    }

LABEL_26:
    if (v10 != 2)
    {
      v20 = 0;
      goto LABEL_33;
    }

    v22 = *(a5 + 16);
    v21 = *(a5 + 24);
    v20 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_30:
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v20 = HIDWORD(a5) - a5;
      goto LABEL_33;
    }

LABEL_38:
    __break(1u);
  }

  v19 = 0xE300000000000000;
  v17 = 4144959;
  if (v10 > 1)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (v10)
  {
    goto LABEL_30;
  }

  v20 = v6;
LABEL_33:
  sub_261A477E4();
  swift_allocError();
  *v23 = v9;
  v23[1] = v8;
  v23[2] = v17;
  v23[3] = v19;
  v23[4] = v20;
  swift_willThrow();
}

void *sub_261A43AC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  if (!a4)
  {
    v12 = &unk_28742FBC0;
LABEL_5:
    v25 = a1[6];
    v26 = v10;
    v27 = v11;
    v13 = sub_261A69FB0(MEMORY[0x277D84F90]);

    result = sub_261A59268(&v25, v12, v13, a2, v28);
    if (!v6)
    {
      CountingMode.Settings.kpc.getter(&v25);

      LODWORD(v24[0]) = v25;
      v24[1] = v26;
      v24[2] = v27;
      v23[0] = v9;
      v23[1] = v10;
      v23[2] = v11;
      sub_261A648C4(v23, a5);
    }

    return result;
  }

  if (a4 == 1)
  {
    v12 = &unk_28742FC60;
    goto LABEL_5;
  }

  v15 = *(a4 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v29 = a3;
    v25 = MEMORY[0x277D84F90];
    sub_261A3EF90(0, v15, 0);
    v16 = v25;
    v18 = (a4 + 40);
    while (1)
    {
      v19 = *v18;
      v28[0] = *(v18 - 1);
      v28[1] = v19;

      sub_261A43E54(v28, a2, v23, v24);
      if (v6)
      {
        break;
      }

      v6 = 0;

      v20 = v24[0];
      v25 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_261A3EF90((v21 > 1), v22 + 1, 1);
        v16 = v25;
      }

      *(v16 + 16) = v22 + 1;
      *(v16 + 8 * v22 + 32) = v20;
      v18 += 2;
      if (!--v15)
      {
        a3 = v29;
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    *a5 = 2;
    *(a5 + 8) = v16;
    *(a5 + 16) = a3;
  }
}

unint64_t sub_261A43CFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000002CLL, 0x8000000261A8E340);
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    v6 = sub_261A85514();
    MEMORY[0x2667168A0](v6);

    return v8;
  }

  if (a3 >> 62 == 1)
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000001FLL, 0x8000000261A8E320);
    return v8;
  }

  return 0xD000000000000027;
}

uint64_t sub_261A43E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {
    result = sub_261A5BD84(*a1, v6);
    if (v10)
    {
      *a4 = *(*(v8 + 56) + 40 * result + 16);
      return result;
    }
  }

  result = sub_261A442C0(30768, 0xE200000000000000, v7, v6);
  if (result)
  {

    v11 = sub_261A48EC0(2uLL, v7, v6);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    if ((v11 ^ v13) >> 14)
    {
      v44 = v7;
      v18 = a3;
      v19 = sub_261A48B58(v11, v13, v15, v17, 16);
      if ((v20 & 0x100) != 0)
      {
        v19 = sub_261A4836C(v11, v13, v15, v17, 16);
      }

      v21 = v19;
      v22 = v20;

      if ((v22 & 1) == 0)
      {
        *a4 = v21;
        return result;
      }

      a3 = v18;
      v7 = v44;
    }

    else
    {
    }
  }

  v23 = HIBYTE(v6) & 0xF;
  v24 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v25 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_75;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v27 = sub_261A47974(v7, v6, 10);
    v43 = v42;

    if (v43)
    {
      goto LABEL_75;
    }

LABEL_77:
    *a4 = v27;
    return result;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_261A85914();
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v33 = (result + 1);
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_73;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                goto LABEL_73;
              }

              v30 = __CFADD__(10 * v27, v34);
              v27 = 10 * v27 + v34;
              if (v30)
              {
                goto LABEL_73;
              }

              ++v33;
              if (!--v23)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_73;
      }

      goto LABEL_82;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        v27 = 0;
        if (result)
        {
          while (1)
          {
            v37 = *result - 48;
            if (v37 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              goto LABEL_73;
            }

            v30 = __CFADD__(10 * v27, v37);
            v27 = 10 * v27 + v37;
            if (v30)
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_73:
      v27 = 0;
      LOBYTE(v23) = 1;
LABEL_74:
      v46 = v23;
      if (v23)
      {
LABEL_75:
        sub_261A49674();
        v40 = swift_allocError();
        *v41 = v7;
        v41[1] = v6;
        v41[2] = 0x4000000000000000;
        swift_willThrow();
        *a3 = v40;
      }

      goto LABEL_77;
    }

    if (v24 >= 1)
    {
      v23 = v24 - 1;
      if (v24 != 1)
      {
        v27 = 0;
        if (result)
        {
          v28 = (result + 1);
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              goto LABEL_73;
            }

            v30 = 10 * v27 >= v29;
            v27 = 10 * v27 - v29;
            if (!v30)
            {
              goto LABEL_73;
            }

            ++v28;
            if (!--v23)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_65:
        LOBYTE(v23) = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v45[0] = v7;
  v45[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v23)
      {
        v27 = 0;
        v38 = v45;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = __CFADD__(10 * v27, v39);
          v27 = 10 * v27 + v39;
          if (v30)
          {
            break;
          }

          ++v38;
          if (!--v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v23)
    {
      if (--v23)
      {
        v27 = 0;
        v31 = v45 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = 10 * v27 >= v32;
          v27 = 10 * v27 - v32;
          if (!v30)
          {
            break;
          }

          ++v31;
          if (!--v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_81;
  }

  if (v23)
  {
    if (--v23)
    {
      v27 = 0;
      v35 = v45 + 1;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v36);
        v27 = 10 * v27 + v36;
        if (v30)
        {
          break;
        }

        ++v35;
        if (!--v23)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_261A442C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_261A855B4();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_261A855B4();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_261A85BA4();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_261A855B4();
      v7 = v9;
    }

    while (v9);
  }

  sub_261A855B4();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_261A4441C(uint64_t *a1, unint64_t *a2)
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

  return sub_261A347FC(v2, v3);
}

uint64_t sub_261A4445C()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746963696C706D69;
  }

  if (v1 == 1)
  {
    return 0x65636172544150;
  }

  v3 = MEMORY[0x2667169D0](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2667168A0](v3);

  MEMORY[0x2667168A0](41, 0xE100000000000000);
  return 0x28206D6F74737563;
}

uint64_t sub_261A4450C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_261A853D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261A853C4();
  v9 = OBJC_IVAR____TtC7Recount9AwimboPMC_logger;
  result = (*(v6 + 32))(v3 + OBJC_IVAR____TtC7Recount9AwimboPMC_logger, v8, v5);
  v11 = *(a1 + 64);
  *(v3 + 72) = *(a1 + 48);
  *(v3 + 88) = v11;
  *(v3 + 104) = *(a1 + 80);
  v12 = *(a1 + 16);
  *(v3 + 24) = *a1;
  v13 = *(a1 + 32);
  *(v3 + 40) = v12;
  *(v3 + 120) = *(a1 + 96);
  *(v3 + 56) = v13;
  v14 = *a1;
  if (*a1)
  {
    v41 = v9;
    v42 = v6;
    if (*(a1 + 32))
    {
      sub_261A39A18(a1, v44);

      v16 = sub_261A449D8(v15);
      v18 = v17;
    }

    else
    {
      sub_261A39A18(a1, v44);

      v16 = 0;
      v18 = 0;
    }

    v43 = v2;
    type metadata accessor for KPCSet();
    swift_allocObject();

    sub_261A3A3BC(3, v14, v16, v18);
    v20 = v19;
    if (qword_27FECAD70 != -1)
    {
      swift_once();
    }

    v46 = v5;
    __swift_project_value_buffer(v5, qword_27FED7CC0);

    v21 = sub_261A853B4();
    v22 = sub_261A85734();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v44[0] = v40;
      *v23 = 136446466;
      v24 = MEMORY[0x2667169D0](v14, MEMORY[0x277D84D38]);
      v26 = v25;

      v27 = sub_261A3E9E8(v24, v26, v44);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v28 = sub_261A3A6F0();
      v30 = sub_261A3E9E8(v28, v29, v44);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_261A33000, v21, v22, "Awimbo PMC starting KPC configuration with %{public}s, KPC set %{public}s", v23, 0x16u);
      v31 = v40;
      swift_arrayDestroy();
      MEMORY[0x266717700](v31, -1, -1);
      MEMORY[0x266717700](v23, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB218, &qword_261A87D58);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_261A87A10;
    *(v32 + 32) = v20;
    type metadata accessor for KPCConfiguration();
    swift_allocObject();

    v33 = v43;
    v34 = sub_261A3ABC8(v32, 0, 0, 1);
    v35 = v46;
    if (v33)
    {
      sub_261A39A74(a1);

      v36 = *(v3 + 72);
      v37 = *(v3 + 104);
      v44[4] = *(v3 + 88);
      v44[5] = v37;
      v45 = *(v3 + 120);
      v38 = *(v3 + 40);
      v44[0] = *(v3 + 24);
      v44[1] = v38;
      v44[2] = *(v3 + 56);
      v44[3] = v36;
      sub_261A39A74(v44);
      (*(v42 + 8))(v3 + v41, v35);
      type metadata accessor for AwimboPMC(0);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v39 = v34;

      sub_261A39A74(a1);
      *(v3 + 16) = v39;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261A449D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_261A3F200(0, v2, 0);
    v3 = (a1 + 32);
    v4 = *(v9 + 16);
    do
    {
      v5 = *v3++;
      v6 = v5 != 0;
      v7 = *(v9 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_261A3F200((v7 > 1), v4 + 1, 1);
      }

      *(v9 + 16) = v4 + 1;
      *(v9 + 4 * v4++ + 32) = 16 * v6;
      --v2;
    }

    while (v2);
  }
}

void sub_261A44AB8(uint64_t a1)
{
  v3 = v2;
  v72[1] = *MEMORY[0x277D85DE8];
  v71 = 0;
  if (kperf_sample_get())
  {
    v4 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0x672D656C706D6173;
    *(v5 + 16) = 0xEA00000000007465;
    swift_willThrow();
    return;
  }

  v6 = *(v1 + 49);
  if (v6 != 1)
  {
    v10 = 0;
    if ((*(v1 + 48) & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_17;
  }

  v7 = sub_261A3C430();
  if (v2)
  {
    goto LABEL_48;
  }

  v9 = v7;
  LODWORD(v10) = v8;
  v3 = 0;
  if ((sub_261A3C514(v7) & 1) == 0)
  {
    v64 = v1;
    aBlock = MEMORY[0x277D84F90];
    sub_261A3F200(0, 2, 0);
    v11 = aBlock;
    v13 = *(aBlock + 16);
    v12 = *(aBlock + 24);
    v14 = v12 >> 1;
    v15 = v13 + 1;
    if (v12 >> 1 <= v13)
    {
LABEL_75:
      v60 = v15;
      sub_261A3F200((v12 > 1), v15, 1);
      v15 = v60;
      v11 = aBlock;
      v12 = *(aBlock + 24);
      v14 = v12 >> 1;
    }

    *(v11 + 16) = v15;
    *(v11 + 4 * v13 + 32) = 20971520;
    v16 = v13 + 2;
    if (v14 < v16)
    {
      v61 = v15;
      sub_261A3F200((v12 > 1), v16, 1);
      v15 = v61;
      v11 = aBlock;
    }

    *(v11 + 16) = v16;
    *(v11 + 4 * v15 + 32) = 20971528;
    aBlock = MEMORY[0x277D84F90];
    sub_261A3F200(0, 2, 0);
    v17 = aBlock;
    v19 = *(aBlock + 16);
    v18 = *(aBlock + 24);
    v20 = v18 >> 1;
    v21 = v19 + 1;
    if (v18 >> 1 <= v19)
    {
      sub_261A3F200((v18 > 1), v19 + 1, 1);
      v21 = v19 + 1;
      v17 = aBlock;
      v18 = *(aBlock + 24);
      v20 = v18 >> 1;
    }

    *(v17 + 16) = v21;
    *(v17 + 4 * v19 + 32) = 20971557;
    v22 = v19 + 2;
    if (v20 < v22)
    {
      v63 = v21;
      sub_261A3F200((v18 > 1), v22, 1);
      v21 = v63;
      v17 = aBlock;
    }

    *(v17 + 16) = v22;
    *(v17 + 4 * v21 + 32) = 20971709;
    aBlock = v11;

    sub_261A7F368(v17);
    sub_261A3C29C(aBlock, v9);
    if (v3)
    {

      goto LABEL_48;
    }

    if (!*(v11 + 16))
    {
      __break(1u);
    }

    v69 = nullsub_1;
    v70 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_261A4551C;
    v68 = &block_descriptor_26;
    v29 = _Block_copy(&aBlock);
    ktrace_events_single();
    _Block_release(v29);
    v1 = v64;
  }

  if (v10)
  {
    v10 = v10;
  }

  else
  {
    v10 = 16;
  }

  LODWORD(aBlock) = 0;
  if (kperf_action_samplers_get() && kperf_action_count_set())
  {
    goto LABEL_35;
  }

  if ((aBlock & 0x20) == 0 && kperf_action_samplers_set())
  {
    goto LABEL_27;
  }

  sub_261A3C33C(v9, v10);
  v31 = v1;
  if (qword_27FECAD70 != -1)
  {
    swift_once();
  }

  v32 = sub_261A853D4();
  __swift_project_value_buffer(v32, qword_27FED7CC0);
  v33 = sub_261A853B4();
  v34 = sub_261A85734();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_261A33000, v33, v34, "Awimbo PMC configured sampling on context-switch", v35, 2u);
    MEMORY[0x266717700](v35, -1, -1);
  }

  v1 = v31;
  if (*(v31 + 48))
  {
LABEL_17:
    if (*(v1 + 56))
    {
      v23 = v6;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_21;
    }

    LODWORD(aBlock) = 0;
    if (kperf_action_samplers_get() && kperf_action_count_set())
    {
      goto LABEL_35;
    }

    if (!kperf_action_samplers_set())
    {
      goto LABEL_21;
    }

LABEL_27:
    v25 = 0x8000000261A8E390;
    v26 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v27 = v26;
    v28 = 0xD000000000000013;
LABEL_36:
    *(v27 + 8) = v28;
    *(v27 + 16) = v25;
LABEL_47:
    swift_willThrow();
LABEL_48:
    if (v71)
    {
      goto LABEL_49;
    }

    return;
  }

LABEL_44:
  v36 = *(v1 + 32);
  v37 = *(v1 + 40);
  if (kperf_timer_count_get())
  {
    v38 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v39 = v38;
    v40 = 0x65672D746E75;
LABEL_46:
    *(v39 + 8) = 0x6F632D72656D6974;
    *(v39 + 16) = v40 & 0xFFFFFFFFFFFFLL | 0xEF74000000000000;
    goto LABEL_47;
  }

  if (kperf_timer_count_set())
  {
    v41 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v39 = v41;
    v40 = 0x65732D746E75;
    goto LABEL_46;
  }

  v62 = v36;
  v64 = v1;
  v72[0] = MEMORY[0x277D84F90];
  sub_261A3F2F0(0, 8, 0);
  v13 = 0;
  v42 = v72[0];
  do
  {
    if (kperf_timer_action_get())
    {
      v47 = MEMORY[0x2667166F0]();
      sub_261A3C3DC();
      swift_allocError();
      *v48 = v47;
      *(v48 + 8) = 0xD000000000000010;
      *(v48 + 16) = 0x8000000261A8E3B0;
      swift_willThrow();

      goto LABEL_48;
    }

    v9 = 0;
    v72[0] = v42;
    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      sub_261A3F2F0((v43 > 1), v44 + 1, 1);
      v45 = v44 + 1;
      v42 = v72[0];
    }

    *(v42 + 16) = v45;
    v46 = v42 + 8 * v44;
    *(v46 + 32) = v13;
    *(v46 + 36) = 0;
    ++v13;
  }

  while (v13 != 8);
  v12 = 0;
  v15 = v42 + 24;
  do
  {
    if (v44 + 1 == v12)
    {

      sub_261A49674();
      swift_allocError();
      *v59 = 0;
      v59[1] = 0;
      v59[2] = 0x8000000000000000;
      goto LABEL_47;
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    v49 = *(v15 + 12);
    v15 += 8;
    ++v12;
  }

  while (v49);
  v50 = *v15;

  aBlock = v50;
  if (v6)
  {
    goto LABEL_63;
  }

  LODWORD(v72[0]) = 0;
  if (kperf_action_samplers_get() && kperf_action_count_set())
  {
LABEL_35:
    v25 = 0x8000000261A8E370;
    v30 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v27 = v30;
    v28 = 0xD000000000000010;
    goto LABEL_36;
  }

  v10 = 16;
  if (kperf_action_samplers_set())
  {
    goto LABEL_27;
  }

LABEL_63:
  sub_261A3C15C(v10, v62, v37);
  if (v3)
  {
    goto LABEL_48;
  }

  if (qword_27FECAD70 != -1)
  {
    swift_once();
  }

  v51 = sub_261A853D4();
  __swift_project_value_buffer(v51, qword_27FED7CC0);
  v52 = sub_261A853B4();
  v53 = sub_261A85734();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v72[0] = v55;
    *v54 = 136446210;
    v56 = sub_261A85D04();
    v58 = sub_261A3E9E8(v56, v57, v72);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_261A33000, v52, v53, "Awimbo PMC configured sampling on timer with period %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x266717700](v55, -1, -1);
    MEMORY[0x266717700](v54, -1, -1);
  }

LABEL_21:
  sub_261A3B57C();
  if (v3)
  {
    goto LABEL_48;
  }

  v69 = nullsub_1;
  v70 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_261A4551C;
  v68 = &block_descriptor_23;
  v24 = _Block_copy(&aBlock);
  ktrace_events_range();
  _Block_release(v24);
  if (v71)
  {
LABEL_49:
    kperf_sample_on();
  }
}

uint64_t sub_261A4551C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_261A45588()
{

  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  v3 = *(v0 + 12);
  v4 = *(v0 + 13);

  sub_261A477D0(v1, v2);
  sub_261A49634(v3, v4);
  v5 = OBJC_IVAR____TtC7Recount9AwimboPMC_logger;
  v6 = sub_261A853D4();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for AwimboPMC(uint64_t a1)
{
  result = qword_27FECB198;
  if (!qword_27FECB198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261A456D8(uint64_t a1)
{
  result = sub_261A853D4();
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

unint64_t sub_261A45850(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000002CLL, 0x8000000261A8E340);
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    v6 = sub_261A85514();
    MEMORY[0x2667168A0](v6);

    return v8;
  }

  if (a3 >> 62 == 1)
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000001FLL, 0x8000000261A8E320);
    return v8;
  }

  return 0xD000000000000020;
}

uint64_t sub_261A459A8()
{
  v1 = *v0;

  return v1;
}

BOOL sub_261A459D8(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = *(a1 + 12);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_261A85BA4();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v8 && v3 == v7 && v4 == v9 && v5 == v10)
  {
    return v6 == v11;
  }

  return result;
}

uint64_t sub_261A45A9C(uint64_t a1, uint64_t a2, char a3, double a4, int8x16_t a5, int8x16_t a6)
{
  a5.i64[0] = a2;
  if (a3)
  {
    *a5.i64 = *&a2 / a1;
  }

  v6 = floor(*a5.i64);
  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *a6.i64 = *a5.i64 - trunc(*a5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = *vbslq_s8(vnegq_f64(v7), a6, a5).i64 * 1.0e18;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < 9.22337204e18)
  {
    return MEMORY[0x2821FE630](v6, v8);
  }

LABEL_14:
  __break(1u);
  return MEMORY[0x2821FE630](a1, a2);
}

uint64_t sub_261A45B60(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_261A858C4();
    sub_261A85704();
    v2 = 0x8000000261A8E3D0;
    v3 = 0xD000000000000010;
  }

  else
  {
    sub_261A85704();
    v3 = 0x6573206863616520;
    v2 = 0xE900000000000074;
  }

  MEMORY[0x2667168A0](v3, v2);
  return 0;
}

uint64_t sub_261A45C30(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v6;
  v182 = a3;
  v181 = a2;
  v188 = a1;
  v10 = sub_261A85904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v169 - v14;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v172 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v170 = &v169 - v15;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v171 = &v169 - v16;
  v186 = v5;
  *(v5 + 128) = 0;
  v189 = a4;
  v183 = a5;
  if (a5 >> 60 == 15)
  {
    v184 = v6;
    v17 = off_27FECB190;

    v179 = 0;
    v180 = 0x3FE0000000000000;
    v18 = 0xE800000000000000;
    v7 = 0x73746C7561666564;
    goto LABEL_58;
  }

  sub_261A851B4();
  swift_allocObject();
  sub_261A4777C(a4, a5);
  v17 = sub_261A851A4();
  sub_261A85164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB148, &qword_261A879B0);
  sub_261A496DC();
  sub_261A85194();
  if (v6)
  {
    v195 = v6;
    v19 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v184 = v6;

      v22 = v189;
      v23 = v183;
      sub_261A477D0(v189, v183);
      sub_261A477D0(v22, v23);

      MEMORY[0x2667175A0](v195);
LABEL_73:
      v43 = v186;
LABEL_110:
      MEMORY[0x2667175A0](*(v43 + 128));
      type metadata accessor for AwimboPMI();
      swift_deallocPartialClassInstance();
      return v43;
    }

    MEMORY[0x2667175A0](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1F8, &qword_261A87D40);
    sub_261A49760();
    v20 = v189;
    v7 = v183;
    sub_261A85194();
    v184 = 0;
    v24 = v192;
    *&v193[0] = v192;
    v25 = *(v11 + 8);

    v25(v13, v10);
    MEMORY[0x2667175A0](v195);
    v26 = v20;
  }

  else
  {
    v21 = sub_261A41B08(v195);
    v184 = 0;
    v24 = v21;

    *&v193[0] = v24;

    v26 = v189;
  }

  v191 = v17;
  v27 = 0xD000000000000016;
  v28 = v24[2];
  if (!v28)
  {
LABEL_22:

    v35 = v24[2];
    if (!v35)
    {
LABEL_35:
      v179 = 0;
      v180 = 0x3FE0000000000000;
LABEL_36:
      v27 = v183;
      goto LABEL_37;
    }

    v7 = "tersPeriodSeconds";
    v36 = -v35;
    v37 = -32;
    v27 = 4;
    v26 = v189;
    while (1)
    {
      v18 = v27 - 4;
      if (v27 - 4 >= v24[2])
      {
        goto LABEL_142;
      }

      v17 = v24[v27];
      if (v17[2].isa)
      {

        sub_261A5BD84(0xD000000000000016, 0x8000000261A8DBD0);
        v39 = v38;

        if (v39)
        {
          break;
        }
      }

      ++v27;
      v37 -= 8;
      if (v36 + v27 == 4)
      {
        goto LABEL_35;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_29:
      if (v18 >= v24[2])
      {
        __break(1u);
      }

      else
      {
        v180 = sub_261A488FC(0xD000000000000016, v7 | 0x8000000000000000);
        *&v193[0] = v24;
        if (v40)
        {
LABEL_153:
          __break(1u);
          MEMORY[0x2667175A0](*(v186 + 128));
          type metadata accessor for AwimboPMI();
          result = swift_deallocPartialClassInstance();
          __break(1u);
          return result;
        }

        v26 = v189;
        if (v18 < v24[2])
        {
          v179 = 0;
          if (!*(v24[v27] + 16))
          {
            v27 = v183;
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_148:
    v24 = sub_261A67B00(v24);
    goto LABEL_29;
  }

  v7 = "FixedCounterPMIs";
  v29 = -v28;
  v30 = -32;
  v31 = 4;
  v26 = v189;
  while (1)
  {
    v18 = v31 - 4;
    if ((v31 - 4) >= v24[2])
    {
      goto LABEL_141;
    }

    v17 = v24[v31];
    if (!v17[2].isa)
    {
      goto LABEL_11;
    }

    sub_261A5BD84(0xD000000000000021, 0x8000000261A8DBA0);
    if (v32)
    {
      break;
    }

LABEL_11:
    ++v31;
    v30 -= 8;
    if (v29 + v31 == 4)
    {
      goto LABEL_22;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_261A67B00(v24);
  }

  if (v18 >= v24[2])
  {
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v180 = sub_261A488FC(0xD000000000000021, 0x8000000261A8DBA0);
  *&v193[0] = v24;
  if (v33)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v27 = v183;
  v26 = v189;
  if (v18 >= v24[2])
  {
    goto LABEL_147;
  }

  v34 = *(v24[v31] + 16);
  v179 = 1;
  if (!v34)
  {
LABEL_34:
    sub_261A3CD64(v18);

    v26 = v189;
  }

LABEL_37:
  v41 = *&v193[0];
  v18 = *(*&v193[0] + 16);
  v17 = MEMORY[0x277D84F90];
  if (v18)
  {
    v195 = MEMORY[0x277D84F90];
    sub_261A3F180(0, v18, 0);
    v42 = 0;
    v43 = v41 + 32;
    v17 = v195;
    do
    {
      if (v42 >= *(v41 + 16))
      {
        goto LABEL_131;
      }

      v44 = v17;
      v45 = 0;
      v46 = 0;
      v17 = *(v43 + 8 * v42);
      v47 = v42 + 1;
      v48 = 1 << LOBYTE(v17[4].isa);
      while (1)
      {
        isa = v17[v46 + 8].isa;
        if (isa)
        {
          break;
        }

        ++v46;
        v45 -= 64;
        if ((v48 + 63) >> 6 == v46)
        {
          goto LABEL_144;
        }
      }

      v50 = __clz(__rbit64(isa));
      if (v50 - v48 == v45)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      if (-v45 < 0)
      {
        goto LABEL_132;
      }

      v51 = v50 - v45;
      if (v51 >= v48)
      {
        goto LABEL_133;
      }

      if (((v17[(v46 & 0x3FFFFFFFFFFFFFFLL) + 8].isa >> v50) & 1) == 0)
      {
        goto LABEL_134;
      }

      if (!v17[2].isa)
      {
        goto LABEL_135;
      }

      v52 = (v17[6].isa + 16 * v51);
      v53 = *v52;
      v54 = v52[1];

      v55 = sub_261A5BD84(v53, v54);
      if ((v56 & 1) == 0)
      {
        goto LABEL_136;
      }

      v57 = *(v17[7].isa + v55);
      v7 = *&v57;

      if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_137;
      }

      if (v57 <= -9.22337204e18)
      {
        goto LABEL_138;
      }

      if (v57 >= 9.22337204e18)
      {
        goto LABEL_139;
      }

      v17 = v44;
      v195 = v44;
      v58 = *(v44 + 16);
      v59 = v17[3].isa;
      v7 = v58 + 1;
      if (v58 >= v59 >> 1)
      {
        sub_261A3F180((v59 > 1), v58 + 1, 1);
        v17 = v195;
      }

      v17[2].isa = v7;
      v60 = &v17[3 * v58];
      v60[4].isa = v53;
      v60[5].isa = v54;
      v60[6].isa = v57;
      v42 = v47;
    }

    while (v47 != v18);
    v27 = v183;
    v26 = v189;
  }

  sub_261A477D0(v26, v27);

  v18 = 0xE400000000000000;
  v7 = 1701603686;
LABEL_58:
  if (qword_27FECAD70 != -1)
  {
    goto LABEL_143;
  }

  while (2)
  {
    v61 = sub_261A853D4();
    v62 = __swift_project_value_buffer(v61, qword_27FED7CC0);

    v63 = v17;
    v64 = sub_261A853B4();
    v65 = sub_261A85734();

    v66 = os_log_type_enabled(v64, v65);
    v169 = v62;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v193[0] = v68;
      *v67 = 136446722;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB088, &unk_261A87D30);
      v70 = MEMORY[0x2667169D0](v63, v69);
      v191 = v7;
      v72 = sub_261A3E9E8(v70, v71, v193);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2082;
      v73 = sub_261A45B60(v180, v179);
      v7 = sub_261A3E9E8(v73, v74, v193);

      *(v67 + 14) = v7;
      *(v67 + 22) = 2082;
      v75 = sub_261A3E9E8(v191, v18, v193);

      *(v67 + 24) = v75;
      _os_log_impl(&dword_261A33000, v64, v65, "Awimbo PMI using events %{public}s, period %{public}s from %{public}s", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v68, -1, -1);
      MEMORY[0x266717700](v67, -1, -1);
    }

    else
    {
    }

    v43 = v186;
    v76 = v63[2].isa;
    if (v76)
    {
      *&v193[0] = MEMORY[0x277D84F90];
      v187 = v63;
      sub_261A3F160(0, v76, 0);
      v77 = v187;
      v78 = 0;
      v17 = *&v193[0];
      v79 = (v187 + 48);
      v185 = v76;
      while (v78 < *(v77 + 16))
      {
        v191 = v17;
        v81 = *(v79 - 2);
        v80 = *(v79 - 1);
        v190 = *v79;
        v17 = v188[2];
        v82 = v17[2].isa;

        if (!v82 || (v83 = sub_261A5BD84(v81, v80), (v84 & 1) == 0))
        {
          sub_261A49674();
          v94 = swift_allocError();
          *v95 = v81;
          v95[1] = v80;
          v95[2] = 0x4000000000000000;
          v184 = v94;
          swift_willThrow();

          sub_261A477D0(v189, v183);

          goto LABEL_73;
        }

        v85 = v17[7].isa + 40 * v83;
        v86 = *v85;
        v87 = *(v85 + 8);
        v18 = *(v85 + 16);
        v7 = *(v85 + 24);
        v88 = *(v85 + 32);

        v89 = v190;
        if ((v190 & 0x8000000000000000) != 0)
        {
          goto LABEL_130;
        }

        v17 = v191;
        *&v193[0] = v191;
        v91 = v191[2].isa;
        v90 = v191[3].isa;
        v92 = (v91 + 1);
        if (v91 >= v90 >> 1)
        {
          v191 = (v91 + 1);
          sub_261A3F160((v90 > 1), v91 + 1, 1);
          v92 = v191;
          v89 = v190;
          v17 = *&v193[0];
        }

        ++v78;
        v17[2].isa = v92;
        v93 = &v17[7 * v91];
        v93[4].isa = v86;
        v93[5].isa = v87;
        v93[6].isa = v18;
        v93[7].isa = v7;
        LOBYTE(v93[8].isa) = v88;
        v93[9].isa = v89;
        LODWORD(v93[10].isa) = 16;
        v79 += 3;
        v77 = v187;
        if (v185 == v78)
        {

          v43 = v186;
          goto LABEL_75;
        }
      }

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
      goto LABEL_140;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_75:
    v96 = v184;
    v7 = sub_261A599DC(v17, v181, v182, 1);
    v184 = v96;
    if (v96)
    {
      sub_261A477D0(v189, v183);

      goto LABEL_110;
    }

    v97 = *(v7 + 16);
    v44 = MEMORY[0x277D84F90];
    if (v97)
    {
      *&v193[0] = MEMORY[0x277D84F90];

      v17 = v193;
      sub_261A85944();
      v98 = 0;
      v187 = v7 + 32;
      v185 = v7;
      v182 = v97;
      while (v98 < *(v7 + 16))
      {
        v99 = *(v187 + 8 * v98);
        v100 = v99[2].isa;
        if (v100)
        {
          v190 = v98;
          v195 = v44;

          sub_261A3EF90(0, v100, 0);
          v18 = v195;
          v101 = v195[2].isa;
          v191 = v99;
          v102 = v99 + 6;
          v103 = v100;
          do
          {
            if (v102[-1].isa)
            {
              v104 = v102->isa;
            }

            else
            {
              v104 = 0;
            }

            v195 = v18;
            v105 = *(v18 + 24);
            if (v101 >= v105 >> 1)
            {
              sub_261A3EF90((v105 > 1), v101 + 1, 1);
              v18 = v195;
            }

            v102 += 7;
            *(v18 + 16) = v101 + 1;
            *(v18 + 8 * v101++ + 32) = v104;
            --v103;
          }

          while (v103);
          v195 = v44;
          sub_261A3EF90(0, v100, 0);
          v106 = v195;
          v107 = v195[2].isa;
          v108 = v191 + 9;
          v109 = v100;
          do
          {
            if (v108[-4].isa)
            {
              v110 = v108->isa;
            }

            else
            {
              v110 = 0;
            }

            v195 = v106;
            v111 = *(v106 + 24);
            if (v107 >= v111 >> 1)
            {
              sub_261A3EF90((v111 > 1), v107 + 1, 1);
              v106 = v195;
            }

            v108 += 7;
            *(v106 + 16) = v107 + 1;
            *(v106 + 8 * v107++ + 32) = v110;
            --v109;
          }

          while (v109);
          v44 = MEMORY[0x277D84F90];
          v195 = MEMORY[0x277D84F90];
          sub_261A3F200(0, v100, 0);
          v112 = v195;
          v113 = v195[2].isa;
          v114 = v191 + 10;
          do
          {
            if (v114[-5].isa)
            {
              v115 = v114->isa;
            }

            else
            {
              v115 = 0;
            }

            v195 = v112;
            v116 = *(v112 + 24);
            if (v113 >= v116 >> 1)
            {
              sub_261A3F200((v116 > 1), v113 + 1, 1);
              v112 = v195;
            }

            v114 += 7;
            *(v112 + 16) = v113 + 1;
            *(v112 + 4 * v113++ + 32) = v115;
            --v100;
          }

          while (v100);
          v7 = v185;
          v97 = v182;
          v98 = v190;
        }

        else
        {

          v112 = v44;
          v106 = v44;
          v18 = v44;
        }

        ++v98;
        type metadata accessor for KPCSet();
        swift_allocObject();
        sub_261A3A3BC(2, v18, v106, v112);

        v17 = v193;
        sub_261A85924();
        sub_261A85954();
        sub_261A85964();
        sub_261A85934();
        v43 = v186;
        if (v98 == v97)
        {

          v44 = *&v193[0];
          goto LABEL_106;
        }
      }

LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      swift_once();
      continue;
    }

    break;
  }

LABEL_106:
  v117 = v188[3];
  v118 = v188[4];
  sub_261A496C8(v117, v118);
  sub_261A48C24(v7, *&v180, v179, v117, v118, v196);
  v119 = v196[2];
  *(v43 + 72) = v196[3];
  v120 = v196[5];
  *(v43 + 88) = v196[4];
  *(v43 + 104) = v120;
  v121 = v196[1];
  *(v43 + 24) = v196[0];
  *(v43 + 40) = v121;
  *(v43 + 120) = v197;
  *(v43 + 56) = v119;
  if (!(v44 >> 62))
  {
    v122 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_108;
  }

LABEL_145:
  v122 = sub_261A85994();
LABEL_108:

  v126 = sub_261A45A9C(v122, v180, v179, v123, v124, v125);
  v128 = v127;
  type metadata accessor for KPCConfiguration();
  swift_allocObject();
  v129 = v184;
  v130 = sub_261A3ABC8(v44, v126, v128, 0);
  v184 = v129;
  if (v129)
  {
    sub_261A477D0(v189, v183);

    v131 = *(v43 + 72);
    v132 = *(v43 + 104);
    v193[4] = *(v43 + 88);
    v193[5] = v132;
    v194 = *(v43 + 120);
    v133 = *(v43 + 40);
    v193[0] = *(v43 + 24);
    v193[1] = v133;
    v134 = *(v43 + 56);
    v193[3] = v131;
    v193[2] = v134;
    sub_261A39A74(v193);
    goto LABEL_110;
  }

  *(v43 + 16) = v130;

  v136 = sub_261A853B4();
  v137 = sub_261A85734();

  if (!os_log_type_enabled(v136, v137))
  {
    sub_261A477D0(v189, v183);

    return v43;
  }

  v138 = swift_slowAlloc();
  v139 = swift_slowAlloc();
  v195 = v139;
  *v138 = 136446466;
  v140 = sub_261A3BAC0();
  v142 = sub_261A3E9E8(v140, v141, &v195);

  *(v138 + 4) = v142;
  *(v138 + 12) = 2080;
  v191 = v136;
  LODWORD(v190) = v137;
  v187 = v138;
  v185 = v139;
  if (!v122)
  {

    v143 = MEMORY[0x277D84F90];
    goto LABEL_128;
  }

  *&v193[0] = MEMORY[0x277D84F90];
  sub_261A3EFB0(0, v122 & ~(v122 >> 63), 0);
  if (v122 < 0)
  {
    goto LABEL_151;
  }

  v143 = *&v193[0];
  if ((v44 & 0xC000000000000001) != 0)
  {
    v144 = 0;
    do
    {
      MEMORY[0x266716BE0](v144, v44);
      v145 = sub_261A3A6F0();
      v147 = v146;
      swift_unknownObjectRelease();
      *&v193[0] = v143;
      v149 = v143[2];
      v148 = v143[3];
      if (v149 >= v148 >> 1)
      {
        sub_261A3EFB0((v148 > 1), v149 + 1, 1);
        v143 = *&v193[0];
      }

      ++v144;
      v143[2] = v149 + 1;
      v150 = &v143[2 * v149];
      v150[4] = v145;
      v150[5] = v147;
    }

    while (v122 != v144);
  }

  else
  {
    v151 = 32;
    do
    {

      v152 = sub_261A3A6F0();
      v154 = v153;

      *&v193[0] = v143;
      v156 = v143[2];
      v155 = v143[3];
      if (v156 >= v155 >> 1)
      {
        sub_261A3EFB0((v155 > 1), v156 + 1, 1);
        v143 = *&v193[0];
      }

      v143[2] = v156 + 1;
      v157 = &v143[2 * v156];
      v157[4] = v152;
      v157[5] = v154;
      v151 += 8;
      --v122;
    }

    while (v122);
  }

LABEL_128:
  v192 = v143;
  v158 = v172;
  v159 = v170;
  (*(v172 + 104))(v170, *MEMORY[0x277CC8AF0], v178);
  v160 = v176;
  v161 = v173;
  v162 = v177;
  (*(v176 + 104))(v173, *MEMORY[0x277CC8B10], v177);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83970]);
  v163 = v171;
  sub_261A85154();
  (*(v160 + 8))(v161, v162);
  (*(v158 + 8))(v159, v178);
  sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20, MEMORY[0x277CC8B28]);
  v164 = v175;
  sub_261A85674();
  (*(v174 + 8))(v163, v164);

  v165 = sub_261A3E9E8(*&v193[0], *(&v193[0] + 1), &v195);

  v166 = v187;
  *(v187 + 14) = v165;
  v167 = v191;
  _os_log_impl(&dword_261A33000, v191, v190, "Awimbo PMI using KPC configuration %{public}s, KPC sets %s", v166, 0x16u);
  v168 = v185;
  swift_arrayDestroy();
  MEMORY[0x266717700](v168, -1, -1);
  MEMORY[0x266717700](v166, -1, -1);
  sub_261A477D0(v189, v183);

  return v186;
}

void sub_261A473FC()
{
  v1 = *(v0 + 16);
  if (*(v1 + 32))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_261A857A4();
    sub_261A857C4();
    v2 = *(v1 + 72);
    if (v2)
    {
      swift_willThrow();
      v3 = v2;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_261A67C34();
  }
}

uint64_t sub_261A47498()
{

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];

  sub_261A477D0(v1, v2);
  sub_261A49634(v3, v4);
  MEMORY[0x2667175A0](v0[16]);

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

unint64_t get_enum_tag_for_layout_string_7Recount14AwimboPMIErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

void sub_261A4760C(uint64_t a1)
{
  sub_261A3B57C();
  if (!v1)
  {
    v3[4] = nullsub_1;
    v3[5] = 0;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 1107296256;
    v3[2] = sub_261A4551C;
    v3[3] = &block_descriptor_0;
    v2 = _Block_copy(v3);
    ktrace_events_range();
    _Block_release(v2);
  }
}

unint64_t sub_261A476D4()
{
  result = qword_27FECB1A8;
  if (!qword_27FECB1A8)
  {
    result = swift_getWitnessTable(byte_261A882F4, &type metadata for AwimboInfo, v0, v1);
    atomic_store(result, &qword_27FECB1A8);
  }

  return result;
}

uint64_t sub_261A47728(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_261A4777C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_261A477D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261A47728(result, a2);
  }

  return result;
}

unint64_t sub_261A477E4()
{
  result = qword_27FECB1B0;
  if (!qword_27FECB1B0)
  {
    result = swift_getWitnessTable(byte_261A882B4, &type metadata for AwimboConfiguration.Err, v0, v1);
    atomic_store(result, &qword_27FECB1B0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_261A47850()
{
  result = qword_27FECB1C8;
  if (!qword_27FECB1C8)
  {
    result = swift_getWitnessTable(byte_261A88264, &type metadata for AwimboConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB1C8);
  }

  return result;
}

unint64_t sub_261A478A4()
{
  result = qword_27FECB1D0;
  if (!qword_27FECB1D0)
  {
    result = swift_getWitnessTable(byte_261A8823C, &type metadata for AwimboPMIMultiplexing, v0, v1);
    atomic_store(result, &qword_27FECB1D0);
  }

  return result;
}

unint64_t sub_261A478F8()
{
  result = qword_27FECB1E0;
  if (!qword_27FECB1E0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB1D8, &qword_261A87D08);
    v4[0] = MEMORY[0x277D84D40];
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27FECB1E0);
  }

  return result;
}

unsigned __int8 *sub_261A47974(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_261A85644();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_261A47EF8(result, v5);
    v38 = v37;

    v5 = v38;
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
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261A85914();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
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

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
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

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
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

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
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

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
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

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_261A47EF8(uint64_t a1, unint64_t a2)
{
  v2 = sub_261A85654();
  v6 = sub_261A47F78(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_261A47F78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_261A85824();
    if (!v9 || (v10 = v9, v11 = sub_261A3EE28(v9, 0), v12 = sub_261A480D0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_261A85544();

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
      return sub_261A85544();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_261A85914();
LABEL_4:

  return sub_261A85544();
}

unint64_t sub_261A480D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_261A482F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_261A85604();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_261A85914();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_261A482F0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_261A855D4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_261A482F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_261A85614();
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
    v5 = MEMORY[0x2667168F0](15, a1 >> 16);
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

unsigned __int8 *sub_261A4836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_261A49888();

  result = sub_261A85644();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_261A47EF8(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261A85914();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
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

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_261A488FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_261A5BD84(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_261A74C58();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_261A489A8(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_261A489A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_261A85864() + 1) & ~v5;
    do
    {
      sub_261A85C44();

      sub_261A85554();
      v9 = sub_261A85C84();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_261A48B58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_261A85914();
  }

  result = sub_261A48F70(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_261A48C24@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  counter_count = kpc_get_counter_count();
  v9 = kpc_get_counter_count();
  v38 = a1;
  v10 = *(a1 + 16);
  v11 = v10;
  v30 = v9;
  if (a3)
  {
    v29 = a2 / v11;
  }

  else
  {
    v29 = a2;
    a2 = a2 * v11;
  }

  v32 = a2;
  v12 = MEMORY[0x277D84F90];
  if (v10)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_261A3F080(0, v10, 0);
    v14 = 0;
    v15 = v41;
    v36 = v10;
    v37 = a1 + 32;
    while (v14 < *(v38 + 16))
    {
      v16 = *(v37 + 8 * v14);
      v17 = *(v16 + 16);
      if (v17)
      {
        v39 = v14;
        v40 = v15;

        sub_261A3F0C0(0, v17, 0);
        v18 = v12;
        v19 = (v16 + 40);
        do
        {
          if (*v19)
          {
            v20 = v19[4];
            v21 = v19[1];
            v22 = *v19;
            v23 = *(v19 - 1);
          }

          else
          {
            v21 = 0;
            v22 = 0xE800000000000000;
            v23 = 0x544E4556455F4F4ELL;
            v20 = 1000000000;
          }

          v25 = *(v12 + 16);
          v24 = *(v12 + 24);

          if (v25 >= v24 >> 1)
          {
            sub_261A3F0C0((v24 > 1), v25 + 1, 1);
          }

          *(v12 + 16) = v25 + 1;
          v26 = (v12 + 32 * v25);
          v26[4] = v21;
          v26[5] = v23;
          v26[6] = v22;
          v26[7] = v20;
          v19 += 7;
          --v17;
        }

        while (v17);

        v12 = MEMORY[0x277D84F90];
        v10 = v36;
        v14 = v39;
        v15 = v40;
      }

      else
      {
        v18 = v12;
      }

      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_261A3F080((v27 > 1), v28 + 1, 1);
      }

      ++v14;
      *(v15 + 16) = v28 + 1;
      *(v15 + 8 * v28 + 32) = v18;
      if (v14 == v10)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_22:
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *a6 = 0;
    *(a6 + 24) = 1;
    *(a6 + 25) = 0;
    *(a6 + 32) = 0;
    *(a6 + 40) = 1;
    *(a6 + 44) = counter_count;
    *(a6 + 48) = v30;
    *(a6 + 56) = a4;
    *(a6 + 64) = a5;
    *(a6 + 72) = v15;
    *(a6 + 80) = v12;
    *(a6 + 88) = v32;
    *(a6 + 96) = v29;
  }

  return result;
}

unint64_t sub_261A48EC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

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
  result = sub_261A85584();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_261A85654();
}

uint64_t sub_261A48F70(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_261A482F0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_261A855F4();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_261A482F0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_261A482F0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_261A855F4();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
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

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_261A493DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 25);
  v6 = *(a1 + 32);

  Silicon.init()(&v33);
  if (v2)
  {
    v38[0] = *a1;
    sub_261A49858(v38);
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v28 = v33;
    v29 = v34;
    v22 = v35;
    v23 = v36;
    v24[0] = v37;
    *v21 = v33;
    *&v21[16] = v34;
    sub_261A39B98(&v28, v17);
    v8 = sub_261A4D704(v21);
    v9 = *a1;
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v32;
    v25[0] = v28;
    v25[1] = v29;
    sub_261A43AC8(v25, v8, v6, v9, v26);
    sub_261A38A70(v9);

    sub_261A39BF4(&v28);
    v15 = v27;
    v10 = *(v8 + 32);
    v39 = *(v8 + 24);
    sub_261A496C8(v39, v10);

    LODWORD(v9) = kpc_get_counter_count();
    counter_count = kpc_get_counter_count();

    *v17 = v15;
    *&v17[8] = *(a1 + 8);
    v17[24] = *(a1 + 24);
    v17[25] = v5;
    *&v18 = v6;
    BYTE8(v18) = 0;
    HIDWORD(v18) = v9;
    LODWORD(v19) = counter_count;
    *(&v19 + 1) = v39;
    *v20 = v10;
    memset(&v20[8], 0, 32);
    *v21 = v15;
    *&v21[8] = *&v17[8];
    v21[24] = v17[24];
    v21[25] = v5;
    *&v22 = v6;
    BYTE8(v22) = 0;
    HIDWORD(v22) = v9;
    LODWORD(v23) = counter_count;
    *(&v23 + 1) = v39;
    *&v24[0] = v10;
    *(v24 + 8) = 0u;
    *(&v24[1] + 8) = 0u;
    sub_261A39A18(v17, v16);
    result = sub_261A39A74(v21);
    v12 = *&v20[16];
    *(a2 + 64) = *v20;
    *(a2 + 80) = v12;
    *(a2 + 96) = *&v20[32];
    v13 = *&v17[16];
    *a2 = *v17;
    *(a2 + 16) = v13;
    v14 = v19;
    *(a2 + 32) = v18;
    *(a2 + 48) = v14;
  }

  return result;
}

uint64_t sub_261A49634(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_261A49674()
{
  result = qword_27FECB1E8;
  if (!qword_27FECB1E8)
  {
    result = swift_getWitnessTable(byte_261A881FC, &type metadata for AwimboPMCError, v0, v1);
    atomic_store(result, &qword_27FECB1E8);
  }

  return result;
}

uint64_t sub_261A496C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261A4777C(result, a2);
  }

  return result;
}

unint64_t sub_261A496DC()
{
  result = qword_27FECB1F0;
  if (!qword_27FECB1F0)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB148, &qword_261A879B0);
    v4[0] = MEMORY[0x277D83808];
    v4[1] = MEMORY[0x277D83A30];
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v4);
    atomic_store(result, &qword_27FECB1F0);
  }

  return result;
}

unint64_t sub_261A49760()
{
  result = qword_27FECB200;
  if (!qword_27FECB200)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB1F8, &qword_261A87D40);
    v4[0] = sub_261A496DC();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27FECB200);
  }

  return result;
}

uint64_t sub_261A497E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB210, &qword_261A87D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261A4984C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_261A49888()
{
  result = qword_27FECB220;
  if (!qword_27FECB220)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83E58], MEMORY[0x277D83E40], v0, v1);
    atomic_store(result, &qword_27FECB220);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount21AwimboPMIMultiplexingVSg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_261A498F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261A49948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_261A499A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_261A499F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_261A49A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_261A49AA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A49AEC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_261A49B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_261A49BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_261A49C0C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_261A87A20;
  }

  return result;
}

uint64_t sub_261A49C5C(uint64_t a1, int a2)
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

uint64_t sub_261A49CA4(uint64_t result, int a2, int a3)
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

uint64_t sub_261A49D00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_261A49D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_261A49DDC(uint64_t *a1, int a2)
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

uint64_t sub_261A49E24(uint64_t result, int a2, int a3)
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

unint64_t sub_261A49E7C()
{
  result = qword_27FECB228;
  if (!qword_27FECB228)
  {
    result = swift_getWitnessTable(aL, &type metadata for AwimboConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB228);
  }

  return result;
}

unint64_t sub_261A49EE0(uint64_t a1)
{
  *(a1 + 8) = sub_261A49F10();
  result = sub_261A49F64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_261A49F10()
{
  result = qword_27FECB230;
  if (!qword_27FECB230)
  {
    result = swift_getWitnessTable(aQX, &type metadata for EventSampler, v0, v1);
    atomic_store(result, &qword_27FECB230);
  }

  return result;
}

unint64_t sub_261A49F64()
{
  result = qword_27FECB238;
  if (!qword_27FECB238)
  {
    result = swift_getWitnessTable(byte_261A88140, &type metadata for EventSampler, v0, v1);
    atomic_store(result, &qword_27FECB238);
  }

  return result;
}

unint64_t sub_261A49FBC()
{
  result = qword_27FECB240;
  if (!qword_27FECB240)
  {
    result = swift_getWitnessTable(byte_261A87FE0, &type metadata for AwimboConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB240);
  }

  return result;
}

unint64_t sub_261A4A014()
{
  result = qword_27FECB248;
  if (!qword_27FECB248)
  {
    result = swift_getWitnessTable(byte_261A88008, &type metadata for AwimboConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB248);
  }

  return result;
}

unint64_t sub_261A4A068()
{
  result = qword_27FECB258;
  if (!qword_27FECB258)
  {
    result = swift_getWitnessTable(byte_261A88680, &type metadata for AwimboInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB258);
  }

  return result;
}

unint64_t sub_261A4A0F4()
{
  result = qword_27FECB260;
  if (!qword_27FECB260)
  {
    result = swift_getWitnessTable(byte_261A87C24, &type metadata for AwimboConfiguration, v0, v1);
    atomic_store(result, &qword_27FECB260);
  }

  return result;
}

uint64_t sub_261A4A148(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_261A4A25C(uint64_t a1, uint64_t a2)
{
  v2 = sub_261A859E4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261A4A2A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_261A859E4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261A4A2F4()
{
  result = qword_27FECB270;
  if (!qword_27FECB270)
  {
    result = swift_getWitnessTable(byte_261A88630, &type metadata for AwimboPMIMultiplexing.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB270);
  }

  return result;
}

uint64_t sub_261A4A378(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A4A3F4()
{
  result = qword_27FECB290;
  if (!qword_27FECB290)
  {
    result = swift_getWitnessTable(byte_261A88118, &type metadata for AwimboEvent, v0, v1);
    atomic_store(result, &qword_27FECB290);
  }

  return result;
}

unint64_t sub_261A4A448()
{
  result = qword_27FECB2A0;
  if (!qword_27FECB2A0)
  {
    result = swift_getWitnessTable(aI0, &type metadata for AwimboEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwimboPMIMultiplexing.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AwimboPMIMultiplexing.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwimboInfo.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AwimboInfo.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_261A4A6E0()
{
  result = qword_27FECB2A8;
  if (!qword_27FECB2A8)
  {
    result = swift_getWitnessTable(byte_261A88410, &type metadata for AwimboInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2A8);
  }

  return result;
}

unint64_t sub_261A4A738()
{
  result = qword_27FECB2B0;
  if (!qword_27FECB2B0)
  {
    result = swift_getWitnessTable(byte_261A88500, &type metadata for AwimboPMIMultiplexing.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2B0);
  }

  return result;
}

unint64_t sub_261A4A790()
{
  result = qword_27FECB2B8;
  if (!qword_27FECB2B8)
  {
    result = swift_getWitnessTable(byte_261A885B8, &type metadata for AwimboEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2B8);
  }

  return result;
}

unint64_t sub_261A4A7E8()
{
  result = qword_27FECB2C0;
  if (!qword_27FECB2C0)
  {
    result = swift_getWitnessTable(aYD, &type metadata for AwimboEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2C0);
  }

  return result;
}

unint64_t sub_261A4A840()
{
  result = qword_27FECB2C8;
  if (!qword_27FECB2C8)
  {
    result = swift_getWitnessTable(byte_261A88550, &type metadata for AwimboEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2C8);
  }

  return result;
}

unint64_t sub_261A4A898()
{
  result = qword_27FECB2D0;
  if (!qword_27FECB2D0)
  {
    result = swift_getWitnessTable(aIP, &type metadata for AwimboPMIMultiplexing.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2D0);
  }

  return result;
}

unint64_t sub_261A4A8F0()
{
  result = qword_27FECB2D8;
  if (!qword_27FECB2D8)
  {
    result = swift_getWitnessTable(aYH, &type metadata for AwimboPMIMultiplexing.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2D8);
  }

  return result;
}

unint64_t sub_261A4A948()
{
  result = qword_27FECB2E0;
  if (!qword_27FECB2E0)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for AwimboInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2E0);
  }

  return result;
}

unint64_t sub_261A4A9A0()
{
  result = qword_27FECB2E8;
  if (!qword_27FECB2E8)
  {
    result = swift_getWitnessTable(aIT, &type metadata for AwimboInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2E8);
  }

  return result;
}

uint64_t sub_261A4AAA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB350, &unk_261A88840);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4DF60();
  sub_261A85CD4();
  v8[15] = 0;
  sub_261A85B14();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_261A85B74();
  v8[13] = 2;
  sub_261A85B74();
  v8[12] = 3;
  sub_261A85B24();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_261A4AC64()
{
  v1 = 1701667182;
  v2 = 0x4D7265746E756F63;
  if (*v0 != 2)
  {
    v2 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    v1 = 0x726F7463656C6573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261A4ACE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A4DBB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A4AD0C(uint64_t a1)
{
  v2 = sub_261A4DF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4AD48(uint64_t a1)
{
  v2 = sub_261A4DF60();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A4AD84@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_261A4DD24(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_261A4ADE4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v6 || v3 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = sub_261A85BA4();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6 && v3 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

unint64_t sub_261A4AEB0()
{
  sub_261A858C4();

  v0 = sub_261A68480();
  MEMORY[0x2667168A0](v0);

  return 0xD000000000000026;
}

uint64_t sub_261A4AF88@<X0>(int *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v43) = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v41 - v5;
  v6 = sub_261A85314();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261A85394();
  v46 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v17 = *a1;
  v16 = a1[1];
  LODWORD(a1) = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB030, &qword_261A88860);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84CC0];
  *(v18 + 16) = xmmword_261A886D0;
  v20 = MEMORY[0x277D84D30];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = v17;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 72) = v16;
  *(v18 + 136) = v19;
  *(v18 + 144) = v20;
  *(v18 + 112) = a1;
  v21 = sub_261A854D4();
  v23 = v22;
  if ((v43 & 1) == 0)
  {
    v41 = "/usr/local/share/kpep/";
    v30 = *MEMORY[0x277CC91C0];
    v42 = v23;
    v31 = *(v7 + 104);
    v31(v9, v30, v6);
    v43 = v46[7];
    v43(v44, 1, 1, v10);
    sub_261A85374();
    v47 = v21;
    v48 = v42;
    v31(v9, *MEMORY[0x277CC91D8], v6);
    sub_261A4E05C();
    sub_261A85384();
    (*(v7 + 8))(v9, v6);
    v29 = v46[1];
    v29(v13, v10);

    v28 = v15;
    goto LABEL_5;
  }

  v41 = v13;
  v42 = v15;
  v24 = v44;
  v25 = v45;
  if (os_variant_has_internal_content())
  {
    v26 = *(v7 + 104);
    v26(v9, *MEMORY[0x277CC91C0], v6);
    v43 = v46[7];
    v43(v24, 1, 1, v10);
    v27 = v41;
    sub_261A85374();
    v47 = v21;
    v48 = v23;
    v26(v9, *MEMORY[0x277CC91D8], v6);
    sub_261A4E05C();
    v28 = v42;
    sub_261A85384();
    (*(v7 + 8))(v9, v6);
    v29 = v46[1];
    v29(v27, v10);

LABEL_5:
    v32 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    sub_261A85364();
    v33 = sub_261A85494();

    v34 = [v32 fileExistsAtPath_];

    if (v34)
    {
      v35 = v45;
      v36 = v46[4];
      v46 += 4;
      v36(v45, v28, v10);
      v37 = v35;
      v38 = 0;
    }

    else
    {
      v29(v28, v10);
      v37 = v45;
      v38 = 1;
    }

    return (v43)(v37, v38, 1, v10);
  }

  v40 = v46[7];

  return v40(v25, 1, 1, v10);
}

uint64_t sub_261A4B554()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x456F5473656D616ELL;
  }
}

uint64_t sub_261A4B594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x456F5473656D616ELL && a2 == 0xED000073746E6576;
  if (v6 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_261A4B684(uint64_t a1)
{
  v2 = sub_261A4BCDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4B6C0(uint64_t a1)
{
  v2 = sub_261A4BCDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A4B6FC()
{

  sub_261A477D0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_261A4B760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_261A4B7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A4B7FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB2F0, &qword_261A88820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4BCDC();
  sub_261A85CD4();
  v12 = v3[2];
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB300, &qword_261A88828);
  sub_261A4BDD8(&qword_27FECB308, sub_261A4BD30, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_261A85B54();
  if (!v2)
  {
    v9 = v3[4];
    v12 = v3[3];
    v13 = v9;
    v14 = 1;
    sub_261A496C8(v12, v9);
    sub_261A4BD84();
    sub_261A85B04();
    sub_261A477D0(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_261A4B9E8(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB320, &qword_261A88830);
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4BCDC();
  sub_261A85CB4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB300, &qword_261A88828);
    v13 = 0;
    sub_261A4BDD8(&qword_27FECB328, sub_261A4BE5C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v8 = v11;
    sub_261A85A94();
    *(v1 + 16) = v12;
    v13 = 1;
    sub_261A4BEB0();
    sub_261A85A34();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void *sub_261A4BC60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_261A4B9E8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_261A4BCDC()
{
  result = qword_27FECB2F8;
  if (!qword_27FECB2F8)
  {
    result = swift_getWitnessTable(byte_261A88C24, &type metadata for EventDictionary.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB2F8);
  }

  return result;
}

unint64_t sub_261A4BD30()
{
  result = qword_27FECB310;
  if (!qword_27FECB310)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for Event, v0, v1);
    atomic_store(result, &qword_27FECB310);
  }

  return result;
}

unint64_t sub_261A4BD84()
{
  result = qword_27FECB318;
  if (!qword_27FECB318)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27FECB318);
  }

  return result;
}

uint64_t sub_261A4BDD8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB300, &qword_261A88828);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A4BE5C()
{
  result = qword_27FECB330;
  if (!qword_27FECB330)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for Event, v0, v1);
    atomic_store(result, &qword_27FECB330);
  }

  return result;
}

unint64_t sub_261A4BEB0()
{
  result = qword_27FECB338;
  if (!qword_27FECB338)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27FECB338);
  }

  return result;
}

unint64_t sub_261A4BF04()
{
  sub_261A4EDF0(v0, v8);
  sub_261A39AC8(v8, v7);
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_261A858C4();

  v5 = 0xD00000000000001ELL;
  v6 = 0x8000000261A8E510;
  sub_261A39AE0(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB360, &unk_261A88850);
  v1 = sub_261A85514();
  MEMORY[0x2667168A0](v1);

  v2 = v5;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2;
}

uint64_t sub_261A4BFD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x737265746E756F63;
  }

  else
  {
    v3 = 0x7265626D756ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006B73616D5FLL;
  }

  if (*a2)
  {
    v5 = 0x737265746E756F63;
  }

  else
  {
    v5 = 0x7265626D756ELL;
  }

  if (*a2)
  {
    v6 = 0xED00006B73616D5FLL;
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
    v8 = sub_261A85BA4();
  }

  return v8 & 1;
}

uint64_t sub_261A4C080()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4C10C(uint64_t a1)
{
  sub_261A85554();
}

uint64_t sub_261A4C184(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4C20C@<X0>(char *a2@<X8>)
{
  v3 = sub_261A859E4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_261A4C26C(uint64_t *a1@<X8>)
{
  v2 = 0x7265626D756ELL;
  if (*v1)
  {
    v2 = 0x737265746E756F63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006B73616D5FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261A4C2B4()
{
  if (*v0)
  {
    return 0x737265746E756F63;
  }

  else
  {
    return 0x7265626D756ELL;
  }
}

uint64_t sub_261A4C2F8@<X0>(char *a3@<X8>)
{
  v4 = sub_261A859E4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_261A4C35C(uint64_t a1)
{
  v2 = sub_261A4F4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4C398(uint64_t a1)
{
  v2 = sub_261A4F4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A4C3D4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_261A4E5C0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_261A4C420()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4C4F8(uint64_t a1)
{
  sub_261A85554();
}

uint64_t sub_261A4C5BC(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

unint64_t sub_261A4C690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261A4E788(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261A4C6C0(uint64_t *a1@<X8>)
{
  v2 = 0xEE00737265746E75;
  v3 = 0x6F635F6465786966;
  v4 = 0xE700000000000000;
  v5 = 0x73657361696C61;
  if (*v1 != 2)
  {
    v5 = 0x73746E657665;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x635F6769666E6F63;
    v2 = 0xEF737265746E756FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_261A4C754()
{
  v1 = 0x6F635F6465786966;
  v2 = 0x73657361696C61;
  if (*v0 != 2)
  {
    v2 = 0x73746E657665;
  }

  if (*v0)
  {
    v1 = 0x635F6769666E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261A4C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A4E788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A4C80C(uint64_t a1)
{
  v2 = sub_261A4F198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4C848(uint64_t a1)
{
  v2 = sub_261A4F198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A4C884@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261A4E7D4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_261A4C8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7696483 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_261A85BA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261A4C94C(uint64_t a1)
{
  v2 = sub_261A4EFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4C988(uint64_t a1)
{
  v2 = sub_261A4EFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261A4C9C4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261A4EA48(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_261A4C9F4()
{
  sub_261A85C44();
  MEMORY[0x266716F60](0);
  return sub_261A85C84();
}

uint64_t sub_261A4CA38(uint64_t a1)
{
  sub_261A85C44();
  MEMORY[0x266716F60](0);
  return sub_261A85C84();
}

uint64_t sub_261A4CA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_261A85BA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261A4CB10(uint64_t a1)
{
  v2 = sub_261A4ED48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4CB4C(uint64_t a1)
{
  v2 = sub_261A4ED48();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261A4CB88@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261A4EBC8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_261A4CBB8(uint64_t a1, unint64_t a2)
{
  sub_261A852B4();
  swift_allocObject();
  sub_261A852A4();
  sub_261A4DFB4();
  sub_261A85294();
  if (v2)
  {
    v10 = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB360, &unk_261A88850);
    if (swift_dynamicCast())
    {
      MEMORY[0x2667175A0](v2);
      sub_261A39AC8(&v9, v8);
      sub_261A4E008();
      swift_allocError();
      sub_261A39AE0(v8, v6);
      swift_willThrow();

      sub_261A47728(a1, a2);
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {

      sub_261A47728(a1, a2);
    }

    return MEMORY[0x2667175A0](v10);
  }

  else
  {

    sub_261A47728(a1, a2);
    return v9;
  }
}

uint64_t sub_261A4CD44(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = a2 & 1;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v12 << 6);
      v16 = *(a1 + 56) + 32 * v15;
      if ((*(v16 + 8) & 1) == 0)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v18 = (*(a1 + 48) + 16 * v15);
    v19 = v18[1];
    v26 = *v16;
    v27 = *v18;
    LODWORD(v18) = *(v16 + 24);
    v20 = *(v16 + 16);
    if (v18)
    {
      v20 = a3;
    }

    v25 = v20;
    swift_bridgeObjectRetain_n();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_261A65C08(0, v13[2] + 1, 1, v13);
      v13 = result;
    }

    v22 = v13[2];
    v21 = v13[3];
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      result = sub_261A65C08((v21 > 1), v22 + 1, 1, v13);
      v23 = v22 + 1;
      v13 = result;
    }

    v13[2] = v23;
    v24 = &v13[7 * v22];
    v24[4] = v27;
    v24[5] = v19;
    v24[6] = v27;
    v24[7] = v19;
    v24[8] = v26;
    v24[9] = v25;
    *(v24 + 80) = v10;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v9)
    {

      return v13;
    }

    v8 = *(v5 + 8 * v17);
    ++v12;
    if (v8)
    {
      v12 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261A4CEF8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 80);
    do
    {
      v14 = *(v5 - 6);
      v13 = *(v5 - 5);
      v16 = *(v5 - 4);
      v15 = *(v5 - 3);
      v18 = *(v5 - 2);
      v17 = *(v5 - 1);
      v19 = *v5;

      if (!v13)
      {
        break;
      }

      v34 = v19;
      v36 = v17;
      v37 = v3;
      v20 = *a3;
      result = sub_261A5BD84(v14, v13);
      v22 = v20[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        result = sub_261A85BE4();
        __break(1u);
        return result;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((a2 & 1) == 0)
        {
          v33 = result;
          sub_261A74AC8();
          result = v33;
        }
      }

      else
      {
        sub_261A75220(v25, a2 & 1);
        result = sub_261A5BD84(v14, v13);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_18;
        }
      }

      v28 = *a3;
      if (v26)
      {
        v6 = 40 * result;
        v7 = v28[7] + 40 * result;
        v9 = *v7;
        v8 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
        v35 = *(v7 + 32);

        v12 = v28[7] + v6;
        *v12 = v9;
        *(v12 + 8) = v8;
        *(v12 + 16) = v10;
        *(v12 + 24) = v11;
        *(v12 + 32) = v35;
      }

      else
      {
        v28[(result >> 6) + 8] |= 1 << result;
        v29 = (v28[6] + 16 * result);
        *v29 = v14;
        v29[1] = v13;
        v30 = v28[7] + 40 * result;
        *v30 = v16;
        *(v30 + 8) = v15;
        *(v30 + 16) = v18;
        *(v30 + 24) = v36;
        *(v30 + 32) = v34;
        v31 = v28[2];
        v24 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v24)
        {
          goto LABEL_17;
        }

        v28[2] = v32;
      }

      v5 += 56;
      a2 = 1;
      --v3;
    }

    while (v37 != 1);
  }

  return result;
}

void *sub_261A4D0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  v16 = sub_261A4CD44(a3, a10, a1);

  if (a6)
  {

    v17 = sub_261A4CD44(a7, 1, a1);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v63 = v16;
  sub_261A7F260(v17);
  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB380, &qword_261A88868);
    v18 = sub_261A859C4();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v63 = v18;
  sub_261A4CEF8(v16, 1, &v63);
  v59 = v10;
  if (v10)
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v63;
  v24 = v22 & *(a2 + 64);
  v25 = (v21 + 63) >> 6;
  v62 = a2;
  while (v24)
  {
    v26 = v24;
LABEL_17:
    v24 = (v26 - 1) & v26;
    if (v23[2])
    {
      v28 = __clz(__rbit64(v26)) | (v19 << 6);
      v29 = *(*(a2 + 48) + 16 * v28 + 8);
      v61 = *(*(a2 + 48) + 16 * v28);
      v30 = (*(a2 + 56) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];

      v33 = sub_261A5BD84(v31, v32);
      v35 = v34;

      if (v35)
      {
        v36 = v23[7] + 40 * v33;
        v56 = *(v36 + 16);
        v57 = *(v36 + 24);
        v58 = *(v36 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v23;
        v38 = sub_261A5BD84(v61, v29);
        v40 = v23[2];
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          goto LABEL_33;
        }

        v44 = v39;
        if (v23[3] >= v43)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v45 = v61;
            goto LABEL_26;
          }

          v50 = v38;
          sub_261A74AC8();
          v38 = v50;
          v45 = v61;
          v47 = v58;
          if ((v44 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_27:
          v48 = v38;

          v23 = v63;
          v49 = v63[7] + 40 * v48;
          *v49 = v45;
          *(v49 + 8) = v29;
          *(v49 + 16) = v56;
          *(v49 + 24) = v57;
          *(v49 + 32) = v47;

          a2 = v62;
        }

        else
        {
          sub_261A75220(v43, isUniquelyReferenced_nonNull_native);
          v45 = v61;
          v38 = sub_261A5BD84(v61, v29);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_35;
          }

LABEL_26:
          v47 = v58;
          if (v44)
          {
            goto LABEL_27;
          }

LABEL_29:
          v23 = v63;
          v63[(v38 >> 6) + 8] |= 1 << v38;
          v51 = (v23[6] + 16 * v38);
          *v51 = v45;
          v51[1] = v29;
          v52 = v23[7] + 40 * v38;
          *v52 = v45;
          *(v52 + 8) = v29;
          *(v52 + 16) = v56;
          *(v52 + 24) = v57;
          *(v52 + 32) = v47;
          v53 = v23[2];
          v42 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v42)
          {
            goto LABEL_34;
          }

          v23[2] = v54;
          a2 = v62;
        }
      }

      else
      {

        a2 = v62;
      }
    }
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      type metadata accessor for EventDictionary();
      result = swift_allocObject();
      result[2] = v23;
      result[3] = a8;
      result[4] = a9;
      return result;
    }

    v26 = *(v20 + 8 * v27);
    ++v19;
    if (v26)
    {
      v19 = v27;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_261A85BE4();
  __break(1u);
LABEL_36:

  MEMORY[0x2667175A0](v59);

  __break(1u);
  return result;
}

void *sub_261A4D4D8(void *result, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = a2 >> 60;
  v11 = result;
  v12 = a2;
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    sub_261A4777C(a3, a4);
    v11 = a3;
    v12 = a4;
  }

  sub_261A4777C(v11, v12);
  sub_261A4777C(v11, v12);
  sub_261A496C8(v9, a2);
  sub_261A4CBB8(v11, v12);
  if (v4)
  {
    sub_261A47728(v11, v12);
    sub_261A47728(v11, v12);
    sub_261A477D0(a3, a4);
    sub_261A477D0(v9, a2);
  }

  else
  {
    v16 = 0;
    if (v10 > 0xE || a4 >> 60 == 15)
    {
      v24 = v11;
      v25 = v12;
      v19 = 0;
      v21 = 0;
      v23 = 0;
    }

    else
    {
      v26 = v13;
      v17 = v15;
      v27 = v14;
      sub_261A4777C(a3, a4);
      sub_261A47728(v11, v12);
      sub_261A4777C(a3, a4);
      v16 = sub_261A4CBB8(a3, a4);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = a3;
      v25 = a4;
      v14 = v27;
      v15 = v17;
      v13 = v26;
    }

    v5 = sub_261A4D0F4(v13, v14, v15, v16, v19, v21, v23, v24, v25, v10 > 0xE);
    sub_261A47728(v11, v12);
    sub_261A477D0(a3, a4);
    sub_261A477D0(v9, a2);
  }

  return v5;
}

uint64_t sub_261A4D704(__int128 *a1)
{
  v2 = sub_261A85394();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = a1[3];
  v55 = a1[2];
  v56 = v19;
  v57 = a1[4];
  v20 = a1[1];
  v53 = *a1;
  v54 = v20;
  v21 = v55;
  LODWORD(a1) = DWORD1(v55);
  v22 = DWORD2(v55);
  *&v52[0] = v55;
  DWORD2(v52[0]) = DWORD2(v55);
  sub_261A4AF88(v52, 0, &v46 - v17);
  *&v52[0] = __PAIR64__(a1, v21);
  DWORD2(v52[0]) = v22;
  v58 = v16;
  sub_261A4AF88(v52, 1, v16);
  v49 = v3;
  v23 = *(v3 + 48);
  if (v23(v18, 1, v2) == 1 && v23(v58, 1, v2) == 1)
  {
    v52[2] = v55;
    v52[3] = v56;
    v52[4] = v57;
    v52[0] = v53;
    v52[1] = v54;
    sub_261A4E0B0();
    swift_allocError();
    sub_261A4E104(v52, v24);
    swift_willThrow();
LABEL_8:
    v32 = v58;
    goto LABEL_16;
  }

  sub_261A39BF4(&v53);
  sub_261A4E18C(v18, v13);
  if (v23(v13, 1, v2) == 1)
  {
    v25 = 0;
    v47 = 0xF000000000000000;
    v26 = v51;
    v27 = v50;
  }

  else
  {
    v28 = v49;
    (*(v49 + 32))(v7, v13, v2);
    v29 = v51;
    v30 = sub_261A853A4();
    v26 = v29;
    v27 = v50;
    if (v29)
    {
      (*(v28 + 8))(v7, v2);
      goto LABEL_8;
    }

    v25 = v30;
    v47 = v31;
    (*(v28 + 8))(v7, v2);
  }

  v32 = v58;
  sub_261A4E18C(v58, v27);
  if (v23(v27, 1, v2) == 1)
  {
    v33 = 0;
    v34 = 0xF000000000000000;
  }

  else
  {
    v35 = v49;
    v36 = v48;
    (*(v49 + 32))(v48, v27, v2);
    v37 = sub_261A853A4();
    if (v26)
    {
      (*(v35 + 8))(v36, v2);
      sub_261A477D0(v25, v47);
      goto LABEL_16;
    }

    v39 = v37;
    v40 = v38;
    v41 = v36;
    v42 = v2;
    v2 = v39;
    v43 = v40;
    (*(v35 + 8))(v41, v42);
    v34 = v43;
    v33 = v2;
  }

  v44 = sub_261A4D4D8(v25, v47, v33, v34);
  if (!v26)
  {
    v2 = v44;
    sub_261A4E124(v18);
    sub_261A4E124(v32);
    return v2;
  }

LABEL_16:
  sub_261A4E124(v18);
  sub_261A4E124(v32);
  return v2;
}

uint64_t sub_261A4DBB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D7265746E756F63 && a2 == 0xEB000000006B7361 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_261A4DD24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB340, &qword_261A88838);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4DF60();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v9 = sub_261A85A54();
  v11 = v10;
  v12 = v9;
  v20 = 1;
  v17 = sub_261A85AB4();
  v19 = 2;
  v16 = sub_261A85AB4();
  v18 = 3;
  v13 = sub_261A85A64();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  v15 = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13 & 1;
  return result;
}

unint64_t sub_261A4DF60()
{
  result = qword_27FECB348;
  if (!qword_27FECB348)
  {
    result = swift_getWitnessTable("U*{ Ȃ", &type metadata for Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB348);
  }

  return result;
}

unint64_t sub_261A4DFB4()
{
  result = qword_27FECB358;
  if (!qword_27FECB358)
  {
    result = swift_getWitnessTable(asc_261A88BAC, &type metadata for KPEPPropertyList, v0, v1);
    atomic_store(result, &qword_27FECB358);
  }

  return result;
}

unint64_t sub_261A4E008()
{
  result = qword_27FECB368;
  if (!qword_27FECB368)
  {
    result = swift_getWitnessTable(asc_261A88B6C, &type metadata for KPEPError, v0, v1);
    atomic_store(result, &qword_27FECB368);
  }

  return result;
}

unint64_t sub_261A4E05C()
{
  result = qword_27FECB370;
  if (!qword_27FECB370)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27FECB370);
  }

  return result;
}

unint64_t sub_261A4E0B0()
{
  result = qword_27FECB378;
  if (!qword_27FECB378)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for EventStoreError, v0, v1);
    atomic_store(result, &qword_27FECB378);
  }

  return result;
}

_OWORD *sub_261A4E104(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  a2[1] = v2;
  a2[2] = v3;
  return a2;
}

uint64_t sub_261A4E124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261A4E18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_261A4E218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_261A4E260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A4E2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A4E30C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_261A4E3AC()
{
  result = qword_27FECB388;
  if (!qword_27FECB388)
  {
    result = swift_getWitnessTable(asc_261A889BC, &type metadata for EventDictionary.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB388);
  }

  return result;
}

unint64_t sub_261A4E404()
{
  result = qword_27FECB390;
  if (!qword_27FECB390)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB390);
  }

  return result;
}

unint64_t sub_261A4E464()
{
  result = qword_27FECB398;
  if (!qword_27FECB398)
  {
    result = swift_getWitnessTable(byte_261A889E4, &type metadata for Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB398);
  }

  return result;
}

unint64_t sub_261A4E4BC()
{
  result = qword_27FECB3A0;
  if (!qword_27FECB3A0)
  {
    result = swift_getWitnessTable(byte_261A88A0C, &type metadata for Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3A0);
  }

  return result;
}

unint64_t sub_261A4E514()
{
  result = qword_27FECB3A8;
  if (!qword_27FECB3A8)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for EventDictionary.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3A8);
  }

  return result;
}

unint64_t sub_261A4E56C()
{
  result = qword_27FECB3B0;
  if (!qword_27FECB3B0)
  {
    result = swift_getWitnessTable(byte_261A88954, &type metadata for EventDictionary.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3B0);
  }

  return result;
}

uint64_t sub_261A4E5C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB470, &qword_261A89170);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_261A4F4C8();
  sub_261A85CB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13[31] = 0;
    v7 = sub_261A85A44();
    v9 = v8;
    v13[30] = 1;
    sub_261A85A44();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v13[24] = v9 & 1;
    v13[8] = v12 & 1;
  }

  return v7;
}

unint64_t sub_261A4E788(uint64_t a1, uint64_t a2)
{
  v2 = sub_261A859E4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261A4E7D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB420, &qword_261A88FC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4F198();
  sub_261A85CB4();
  LOBYTE(v10) = 0;
  v6 = sub_261A85AB4();
  LOBYTE(v10) = 1;
  sub_261A85AB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB430, &qword_261A88FD0);
  v9 = 2;
  sub_261A4F1EC();
  sub_261A85A94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB440, &qword_261A88FD8);
  v9 = 3;
  sub_261A4F268();
  sub_261A85A94();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

void *sub_261A4EA48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB3F0, &qword_261A88E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4EFC8();
  sub_261A85CB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_261A4F01C();
    sub_261A85A94();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

void *sub_261A4EBC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB3B8, &qword_261A88C78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4ED48();
  sub_261A85CB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_261A4ED9C();
    sub_261A85A94();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_261A4ED48()
{
  result = qword_27FECB3C0;
  if (!qword_27FECB3C0)
  {
    result = swift_getWitnessTable(byte_261A88E0C, &type metadata for KPEPPropertyList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3C0);
  }

  return result;
}

unint64_t sub_261A4ED9C()
{
  result = qword_27FECB3C8;
  if (!qword_27FECB3C8)
  {
    result = swift_getWitnessTable(asc_261A88DE4, &type metadata for KPEPPropertyList.SystemList, v0, v1);
    atomic_store(result, &qword_27FECB3C8);
  }

  return result;
}

unint64_t sub_261A4EE6C()
{
  result = qword_27FECB3D0;
  if (!qword_27FECB3D0)
  {
    result = swift_getWitnessTable(byte_261A88D04, &type metadata for EventSource, v0, v1);
    atomic_store(result, &qword_27FECB3D0);
  }

  return result;
}

unint64_t sub_261A4EEC4()
{
  result = qword_27FECB3D8;
  if (!qword_27FECB3D8)
  {
    result = swift_getWitnessTable(asc_261A88DBC, &type metadata for KPEPPropertyList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3D8);
  }

  return result;
}

unint64_t sub_261A4EF1C()
{
  result = qword_27FECB3E0;
  if (!qword_27FECB3E0)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for KPEPPropertyList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3E0);
  }

  return result;
}

unint64_t sub_261A4EF74()
{
  result = qword_27FECB3E8;
  if (!qword_27FECB3E8)
  {
    result = swift_getWitnessTable(byte_261A88D54, &type metadata for KPEPPropertyList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3E8);
  }

  return result;
}

unint64_t sub_261A4EFC8()
{
  result = qword_27FECB3F8;
  if (!qword_27FECB3F8)
  {
    result = swift_getWitnessTable(byte_261A88F78, &type metadata for KPEPPropertyList.SystemList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB3F8);
  }

  return result;
}

unint64_t sub_261A4F01C()
{
  result = qword_27FECB400;
  if (!qword_27FECB400)
  {
    result = swift_getWitnessTable(byte_261A88F50, &type metadata for KPEPPropertyList.System, v0, v1);
    atomic_store(result, &qword_27FECB400);
  }

  return result;
}

unint64_t sub_261A4F094()
{
  result = qword_27FECB408;
  if (!qword_27FECB408)
  {
    result = swift_getWitnessTable(byte_261A88F28, &type metadata for KPEPPropertyList.SystemList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB408);
  }

  return result;
}

unint64_t sub_261A4F0EC()
{
  result = qword_27FECB410;
  if (!qword_27FECB410)
  {
    result = swift_getWitnessTable(asc_261A88E98, &type metadata for KPEPPropertyList.SystemList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB410);
  }

  return result;
}

unint64_t sub_261A4F144()
{
  result = qword_27FECB418;
  if (!qword_27FECB418)
  {
    result = swift_getWitnessTable(byte_261A88EC0, &type metadata for KPEPPropertyList.SystemList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB418);
  }

  return result;
}

unint64_t sub_261A4F198()
{
  result = qword_27FECB428;
  if (!qword_27FECB428)
  {
    result = swift_getWitnessTable("\r%{ \\~", &type metadata for KPEPPropertyList.System.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB428);
  }

  return result;
}

unint64_t sub_261A4F1EC()
{
  result = qword_27FECB438;
  if (!qword_27FECB438)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB430, &qword_261A88FD0);
    v4[0] = MEMORY[0x277D83808];
    v4[1] = MEMORY[0x277D83808];
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v4);
    atomic_store(result, &qword_27FECB438);
  }

  return result;
}

unint64_t sub_261A4F268()
{
  result = qword_27FECB448;
  if (!qword_27FECB448)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB440, &qword_261A88FD8);
    v4 = sub_261A4F2F4();
    v5[0] = MEMORY[0x277D83808];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v5);
    atomic_store(result, &qword_27FECB448);
  }

  return result;
}

unint64_t sub_261A4F2F4()
{
  result = qword_27FECB450;
  if (!qword_27FECB450)
  {
    result = swift_getWitnessTable(byte_261A890F4, &type metadata for KPEPPropertyList.KPEPEvent, v0, v1);
    atomic_store(result, &qword_27FECB450);
  }

  return result;
}

uint64_t sub_261A4F360(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261A4F380(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

unint64_t sub_261A4F3C4()
{
  result = qword_27FECB458;
  if (!qword_27FECB458)
  {
    result = swift_getWitnessTable(byte_261A890CC, &type metadata for KPEPPropertyList.System.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB458);
  }

  return result;
}

unint64_t sub_261A4F41C()
{
  result = qword_27FECB460;
  if (!qword_27FECB460)
  {
    result = swift_getWitnessTable(byte_261A89004, &type metadata for KPEPPropertyList.System.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB460);
  }

  return result;
}

unint64_t sub_261A4F474()
{
  result = qword_27FECB468;
  if (!qword_27FECB468)
  {
    result = swift_getWitnessTable(byte_261A8902C, &type metadata for KPEPPropertyList.System.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB468);
  }

  return result;
}

unint64_t sub_261A4F4C8()
{
  result = qword_27FECB478;
  if (!qword_27FECB478)
  {
    result = swift_getWitnessTable(byte_261A89268, &type metadata for KPEPPropertyList.KPEPEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountingMode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CountingMode.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261A4F670()
{
  result = qword_27FECB480;
  if (!qword_27FECB480)
  {
    result = swift_getWitnessTable(byte_261A89240, &type metadata for KPEPPropertyList.KPEPEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB480);
  }

  return result;
}

unint64_t sub_261A4F6C8()
{
  result = qword_27FECB488;
  if (!qword_27FECB488)
  {
    result = swift_getWitnessTable(asc_261A89178, &type metadata for KPEPPropertyList.KPEPEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB488);
  }

  return result;
}

unint64_t sub_261A4F720()
{
  result = qword_27FECB490;
  if (!qword_27FECB490)
  {
    result = swift_getWitnessTable(a9, &type metadata for KPEPPropertyList.KPEPEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB490);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261A4F7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_261A4F80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A4F87C(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  v7 = (a1 + 40);
  while (2)
  {
    v8 = (v6 + 16 * v5);
    v9 = *v8;
    v10 = v8[1];
    ++v5;
    v11 = *(a1 + 16) + 1;
    v12 = v7;
    while (--v11)
    {
      if (*(v12 - 1) != v9 || *v12 != v10)
      {
        v12 += 12;
        if ((sub_261A85BA4() & 1) == 0)
        {
          continue;
        }
      }

      return v9;
    }

    v9 = 0;
    if (v5 != v3)
    {
      continue;
    }

    break;
  }

  return v9;
}

uint64_t sub_261A4F950(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB508, &qword_261A89448);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A50664();
  sub_261A85CD4();
  LOBYTE(v11) = 0;
  sub_261A85B14();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_261A85B14();
    LOBYTE(v11) = 2;
    sub_261A85AE4();
    v11 = *(v3 + 48);
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFD0, &qword_261A89450);
    sub_261A506B8();
    sub_261A85B54();
    v11 = *(v3 + 56);
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB528, &qword_261A89458);
    sub_261A50790();
    sub_261A85B54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_261A4FBB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB498, &qword_261A89420);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A502B0();
  sub_261A85CD4();
  LOBYTE(v11) = 0;
  sub_261A85B14();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_261A85B14();
    LOBYTE(v11) = 2;
    sub_261A85B14();
    LOBYTE(v11) = 3;
    sub_261A85AE4();
    v11 = v3[8];
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4A8, &qword_261A89428);
    sub_261A50304();
    sub_261A85B54();
    v11 = v3[9];
    HIBYTE(v10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4C0, &qword_261A89430);
    sub_261A503DC();
    sub_261A85B54();
    v11 = v3[10];
    HIBYTE(v10) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4D8, &qword_261A89438);
    sub_261A504B4();
    sub_261A85B54();
    v11 = v3[11];
    HIBYTE(v10) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4F0, &qword_261A89440);
    sub_261A5058C();
    sub_261A85B54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_261A4FEF0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x4D6C616974696E69;
  v4 = 0x7365646F6DLL;
  if (v1 != 3)
  {
    v4 = 0x6D726F6674616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261A4FF98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A54188(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A4FFC0(uint64_t a1)
{
  v2 = sub_261A50664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4FFFC(uint64_t a1)
{
  v2 = sub_261A50664();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A50038@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_261A54348(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_261A50094()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C6F687365726874;
  if (v1 != 6)
  {
    v3 = 0x7372656767697274;
  }

  v4 = 0x7363697274656DLL;
  if (v1 != 4)
  {
    v4 = 0x7379616C70736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736973706F6E7973;
  if (v1 != 2)
  {
    v5 = 0x746E656D75636F64;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261A501A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A54940(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A501D4(uint64_t a1)
{
  v2 = sub_261A502B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A50210(uint64_t a1)
{
  v2 = sub_261A502B0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A5024C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_261A54BE8(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

unint64_t sub_261A502B0()
{
  result = qword_27FECB4A0;
  if (!qword_27FECB4A0)
  {
    result = swift_getWitnessTable(byte_261A89974, &type metadata for ModeSpec.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECB4A0);
  }

  return result;
}

unint64_t sub_261A50304()
{
  result = qword_27FECB4B0;
  if (!qword_27FECB4B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4A8, &qword_261A89428);
    v4[0] = sub_261A50388();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27FECB4B0);
  }

  return result;
}

unint64_t sub_261A50388()
{
  result = qword_27FECB4B8;
  if (!qword_27FECB4B8)
  {
    result = swift_getWitnessTable(byte_261A8994C, &type metadata for MetricSpec, v0, v1);
    atomic_store(result, &qword_27FECB4B8);
  }

  return result;
}

unint64_t sub_261A503DC()
{
  result = qword_27FECB4C8;
  if (!qword_27FECB4C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4C0, &qword_261A89430);
    v4[0] = sub_261A50460();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27FECB4C8);
  }

  return result;
}

unint64_t sub_261A50460()
{
  result = qword_27FECB4D0;
  if (!qword_27FECB4D0)
  {
    result = swift_getWitnessTable(byte_261A89924, &type metadata for DisplaySpec, v0, v1);
    atomic_store(result, &qword_27FECB4D0);
  }

  return result;
}

unint64_t sub_261A504B4()
{
  result = qword_27FECB4E0;
  if (!qword_27FECB4E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4D8, &qword_261A89438);
    v4[0] = sub_261A50538();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27FECB4E0);
  }

  return result;
}

unint64_t sub_261A50538()
{
  result = qword_27FECB4E8;
  if (!qword_27FECB4E8)
  {
    result = swift_getWitnessTable(byte_261A898FC, &type metadata for ThresholdSpec, v0, v1);
    atomic_store(result, &qword_27FECB4E8);
  }

  return result;
}

unint64_t sub_261A5058C()
{
  result = qword_27FECB4F8;
  if (!qword_27FECB4F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4F0, &qword_261A89440);
    v4[0] = sub_261A50610();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27FECB4F8);
  }

  return result;
}

unint64_t sub_261A50610()
{
  result = qword_27FECB500;
  if (!qword_27FECB500)
  {
    result = swift_getWitnessTable(byte_261A898D4, &type metadata for TriggerSpec, v0, v1);
    atomic_store(result, &qword_27FECB500);
  }

  return result;
}