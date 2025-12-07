uint64_t sub_237D71C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D717A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D71C5C(uint64_t a1)
{
  v2 = sub_237D76FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D71C98(uint64_t a1)
{
  v2 = sub_237D76FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D71CD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_237D71914(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, v15, v17, v18, v20, v21, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v16;
    result = *&v19;
    a9[2] = v19;
    a9[3] = v22;
  }

  return result;
}

uint64_t sub_237D71D18@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_98_0();
  v4 = OUTLINED_FUNCTION_89_1();
  v6 = v5;
  result = OUTLINED_FUNCTION_89_1();
  *a1 = v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = result;
  a1[5] = v8;
  return result;
}

uint64_t sub_237D71DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656572546D756ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C617261506D756ELL && a2 == 0xEF656572546C656CLL;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6661654C657A6973 && a2 == 0xEE00726F74636556)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_237D71EC8(char a1)
{
  if (!a1)
  {
    return 0x73656572546D756ELL;
  }

  if (a1 == 1)
  {
    return 0x6C617261506D756ELL;
  }

  return 0x6661654C657A6973;
}

void sub_237D71F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_4();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB23F8, &qword_237F11668);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_70_4();
  sub_237D7769C();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_110_0(v31, v32, v33);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v34 = sub_237EF9910();
    v44 = v35;
    v42 = sub_237EF9910();
    v43 = v36;
    v37 = sub_237EF9910();
    v38 = OUTLINED_FUNCTION_47_4();
    v40 = v39;
    v41(v38, v29);
    __swift_destroy_boxed_opaque_existential_1(v26);
    *v28 = v34;
    v28[1] = v44;
    v28[2] = v42;
    v28[3] = v43;
    v28[4] = v37;
    v28[5] = v40;
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D7213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D71DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D72164(uint64_t a1)
{
  v2 = sub_237D7769C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D721A0(uint64_t a1)
{
  v2 = sub_237D7769C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D72220()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237F105F0;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v33 = v3;
  MEMORY[0x2383E0710](v0[4], v0[5]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v4, v5, v6, v7, v8, v9, v10, v11, 0xD000000000000010, v33);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v34 = v12;
  MEMORY[0x2383E0710](v1[2], v1[3]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v13, v14, v15, v16, v17, v18, v19, v20, 0xD000000000000010, v34);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  *(v2 + 64) = v31;
  *(v2 + 72) = v35;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v36 = v21;
  MEMORY[0x2383E0710](v1[6], v1[7]);
  OUTLINED_FUNCTION_36_11();
  *(v2 + 80) = 0xD000000000000015;
  *(v2 + 88) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5(v22, v23, v24, v25, v26, v27, v28, v29, v2, v36);
  OUTLINED_FUNCTION_56_8();

  return v32;
}

uint64_t sub_237D723D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F4E6D756ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x75746165466D756ELL && a2 == 0xEA00000000006572;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74656C65446D756ELL && a2 == 0xEA00000000006465;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6661654C657A6973 && a2 == 0xEE00726F74636556)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237D72544(char a1)
{
  result = 0x7365646F4E6D756ELL;
  switch(a1)
  {
    case 1:
      result = 0x75746165466D756ELL;
      break;
    case 2:
      result = 0x74656C65446D756ELL;
      break;
    case 3:
      result = 0x6661654C657A6973;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D725E0()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22F0, &qword_237F10D90);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v3 = sub_237D7669C();
  OUTLINED_FUNCTION_86_0(&type metadata for XGBoostArtifact.Tree.Parameters.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    v5 = sub_237EF9910();
    OUTLINED_FUNCTION_63_4(v5, v6);
    v7 = OUTLINED_FUNCTION_76_3();
    v8(v7);
    v9 = OUTLINED_FUNCTION_53_7();
    sub_237D766F0(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v11 = OUTLINED_FUNCTION_59_6();
    sub_237D76728(v11);
    OUTLINED_FUNCTION_65_4();
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D727E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6968437466656CLL && a2 == 0xEC0000006E657264;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6968437468676972 && a2 == 0xED00006E6572646CLL;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C746C7561666564 && a2 == 0xEB00000000746665;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73746E65726170 && a2 == 0xE700000000000000;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E61684373736F6CLL && a2 == 0xEB00000000736567;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F4374696C7073 && a2 == 0xEF736E6F69746964;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646E4974696C7073 && a2 == 0xEC00000073656369;
                if (v12 || (sub_237EF9D40() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x70795474696C7073 && a2 == 0xE900000000000065;
                  if (v13 || (sub_237EF9D40() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6769655765736162 && a2 == 0xEB00000000737468;
                    if (v14 || (sub_237EF9D40() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x69737365486D7573 && a2 == 0xEA00000000006E61;
                      if (v15 || (sub_237EF9D40() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6172615065657274 && a2 == 0xE90000000000006DLL)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_237EF9D40();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_237D72BAC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C6968437466656CLL;
      break;
    case 2:
      result = 0x6968437468676972;
      break;
    case 3:
      result = 0x4C746C7561666564;
      break;
    case 4:
      result = 0x73746E65726170;
      break;
    case 5:
      result = 0x6E61684373736F6CLL;
      break;
    case 6:
      result = 0x6E6F4374696C7073;
      break;
    case 7:
      result = 0x646E4974696C7073;
      break;
    case 8:
      result = 0x70795474696C7073;
      break;
    case 9:
      result = 0x6769655765736162;
      break;
    case 10:
      result = 0x69737365486D7573;
      break;
    case 11:
      result = 0x6172615065657274;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D72D38()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2258, &unk_237F109C8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52_8();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237D75EAC();
  OUTLINED_FUNCTION_107_0();
  sub_237EFA190();
  if (v0)
  {
    OUTLINED_FUNCTION_13_23();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (v1)
    {

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v20)
    {
LABEL_5:
      if (v21)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v21)
    {
LABEL_6:

      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v24[0]) = 0;
  OUTLINED_FUNCTION_42_7();
  v7 = sub_237EF9950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
  sub_237D75F00(&qword_280C8CD28, &qword_27DEAD350, &unk_237F07040);
  OUTLINED_FUNCTION_4_47();
  v19 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v18 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v17 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v16 = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
  sub_237D75F00(&qword_27DEB2268, &qword_27DEAE3D8, &qword_237F07050);
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v15 = v24[0];
  OUTLINED_FUNCTION_20_23(6);
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v14 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v13 = v24[0];
  LOBYTE(v23[0]) = 8;
  OUTLINED_FUNCTION_4_47();
  v12 = v24[0];
  OUTLINED_FUNCTION_20_23(9);
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v11 = v24[0];
  OUTLINED_FUNCTION_20_23(10);
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v10 = v24[0];
  v29 = 11;
  sub_237D75F68();
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v8 = OUTLINED_FUNCTION_21_25();
  v9(v8);
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  *&v23[17] = v33;
  *&v23[13] = v31;
  *&v23[15] = v32;
  v23[0] = v7;
  v23[1] = v19;
  v23[2] = v18;
  v23[3] = v17;
  v23[4] = v16;
  v23[5] = v15;
  v23[6] = v14;
  v23[7] = v13;
  v23[8] = v12;
  v23[9] = v11;
  v23[10] = v10;
  *&v23[11] = v30;
  sub_237D74EE4(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v3);
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v24[0] = v7;
  v24[1] = v19;
  v24[2] = v18;
  v24[3] = v17;
  v24[4] = v16;
  v24[5] = v15;
  v24[6] = v14;
  v24[7] = v13;
  v24[8] = v12;
  v24[9] = v11;
  v24[10] = v10;
  v28 = v37;
  sub_237D74F1C(v24);
  memcpy(v5, v23, 0x98uLL);
LABEL_12:
  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D733D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D723D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D733F8(uint64_t a1)
{
  v2 = sub_237D7669C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D73434(uint64_t a1)
{
  v2 = sub_237D7669C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D7349C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_237D734EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D727E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D73514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D72BA4();
  *a1 = result;
  return result;
}

uint64_t sub_237D7353C(uint64_t a1)
{
  v2 = sub_237D75EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D73578(uint64_t a1)
{
  v2 = sub_237D75EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D735B4(void *a1@<X8>)
{
  sub_237D72D38();
  if (!v1)
  {
    memcpy(a1, __src, 0x98uLL);
  }
}

void *sub_237D7360C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[6] <= 1)
  {
    sub_237D736DC(a1, __src);
    memcpy(v4, __src, 0xC0uLL);
    v4[24] = &unk_284ACD948;
    memcpy(__dst, v4, sizeof(__dst));
    nullsub_1();
    memcpy(v6, __src, sizeof(v6));
    v7 = &unk_284ACD948;
    sub_237D6E968(v4, v9);
    sub_237D6E9A0(v6);
    memcpy(v9, __dst, sizeof(v9));
  }

  else
  {
    sub_237D74F4C(a1);
    sub_237D74FB4(v9);
  }

  return memcpy(a2, v9, 0xC8uLL);
}

__n128 sub_237D736DC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_237D74FBC(a1, v27);
  sub_237D73898(a1, v28);
  v5 = a1[3];
  v4 = a1[4];
  if (v4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[4];
  }

  v27[0] = a1[2];
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83BF8];
  v9 = OUTLINED_FUNCTION_87_1();
  v25 = v10;
  v26 = v9;
  v27[0] = v5;
  v11 = OUTLINED_FUNCTION_87_1();
  v13 = v12;
  v27[0] = v6;
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_98_0();
  v14 = sub_237EF8C30();
  v16 = v15;
  sub_237D74F4C(a1);
  v17 = xmmword_237F10600;
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0xEF6369747369676FLL;
      v21 = 0x6C3A7972616E6962;
    }

    else
    {
      v27[0] = v4;
      v18 = sub_237EF9AB0();
      v17 = 0uLL;
      v20 = 0xEE00626F72707466;
      v21 = 0x6F733A69746C756DLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    v21 = 0xD000000000000010;
  }

  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v21;
  *(a2 + 72) = v20;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v17;
  *(a2 + 112) = 0x656572746267;
  *(a2 + 120) = 0xE600000000000000;
  result = v28[0];
  v23 = v28[1];
  v24 = v28[3];
  *(a2 + 160) = v28[2];
  *(a2 + 176) = v24;
  *(a2 + 128) = result;
  *(a2 + 144) = v23;
  return result;
}

double sub_237D73898@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_237D71D18(v18);
  v6 = *(v4 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    sub_237D74FBC(a1, v17);
    v17[0] = v7;
    sub_237C62DB0(0, v6, 0);
    v7 = v17[0];
    v8 = *(v17[0] + 16);
    v9 = (v4 + 40);
    do
    {
      v11 = *v9;
      v9 += 2;
      v10 = v11;
      v17[0] = v7;
      v12 = *(v7 + 24);
      if (v8 >= v12 >> 1)
      {
        v13 = OUTLINED_FUNCTION_17_0(v12);
        sub_237C62DB0(v13, v8 + 1, 1);
        v7 = v17[0];
      }

      *(v7 + 16) = v8 + 1;
      *(v7 + 8 * v8++ + 32) = v10;
      --v6;
    }

    while (v6);
    v5 = sub_237D74F4C(a1);
  }

  MEMORY[0x28223BE20](v5);
  sub_237D74FBC(a1, v17);
  v14 = sub_237D6DDC4(0, v4, sub_237D7502C);
  sub_237D74F4C(a1);
  sub_237D74F4C(a1);
  v15 = v18[1];
  *a2 = v18[0];
  *(a2 + 16) = v15;
  result = *&v19;
  *(a2 + 32) = v19;
  *(a2 + 48) = v7;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_237D73A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[8] == 0x6C3A7972616E6962 && v1[9] == 0xEF6369747369676FLL;
  if (!v3)
  {
    result = sub_237EF9D40();
    if ((result & 1) == 0)
    {
      v45 = v1[4];
      v44 = v1[5];
      v46 = HIBYTE(v44) & 0xF;
      v47 = v45 & 0xFFFFFFFFFFFFLL;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v48 = HIBYTE(v44) & 0xF;
      }

      else
      {
        v48 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (!v48)
      {
        goto LABEL_107;
      }

      if ((v44 & 0x1000000000000000) != 0)
      {
        goto LABEL_109;
      }

      if ((v44 & 0x2000000000000000) != 0)
      {
        __dst[0] = v1[4];
        __dst[1] = v44 & 0xFFFFFFFFFFFFFFLL;
        if (v45 == 43)
        {
          if (v46)
          {
            if (v46 != 1)
            {
              OUTLINED_FUNCTION_96_1();
              while (1)
              {
                OUTLINED_FUNCTION_14_33();
                if (!v3 & v50)
                {
                  break;
                }

                OUTLINED_FUNCTION_16_30();
                if (!v3)
                {
                  break;
                }

                v5 = v59 + v58;
                if (__OFADD__(v59, v58))
                {
                  break;
                }

                OUTLINED_FUNCTION_49_8();
                if (v3)
                {
                  goto LABEL_106;
                }
              }
            }

            goto LABEL_105;
          }

LABEL_115:
          __break(1u);
          return result;
        }

        if (v45 != 45)
        {
          if (v46)
          {
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v3 & v50)
              {
                break;
              }

              OUTLINED_FUNCTION_16_30();
              if (!v3)
              {
                break;
              }

              v5 = v63 + v62;
              if (__OFADD__(v63, v62))
              {
                break;
              }

              OUTLINED_FUNCTION_49_8();
              if (v3)
              {
                goto LABEL_106;
              }
            }
          }

          goto LABEL_105;
        }

        if (v46)
        {
          if (v46 != 1)
          {
            OUTLINED_FUNCTION_96_1();
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v3 & v50)
              {
                break;
              }

              OUTLINED_FUNCTION_16_30();
              if (!v3)
              {
                break;
              }

              v5 = v55 - v54;
              if (__OFSUB__(v55, v54))
              {
                break;
              }

              OUTLINED_FUNCTION_49_8();
              if (v3)
              {
                goto LABEL_106;
              }
            }
          }

          goto LABEL_105;
        }
      }

      else
      {
        if ((v45 & 0x1000000000000000) != 0)
        {
          result = (v44 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          OUTLINED_FUNCTION_11_19();
          result = sub_237EF9420();
        }

        v49 = *result;
        if (v49 == 43)
        {
          if (v47 >= 1)
          {
            if (v47 != 1)
            {
              v5 = 0;
              if (result)
              {
                OUTLINED_FUNCTION_95_1();
                while (1)
                {
                  OUTLINED_FUNCTION_14_33();
                  if (!v3 & v50)
                  {
                    goto LABEL_105;
                  }

                  OUTLINED_FUNCTION_16_30();
                  if (!v3)
                  {
                    goto LABEL_105;
                  }

                  v5 = v57 + v56;
                  if (__OFADD__(v57, v56))
                  {
                    goto LABEL_105;
                  }

                  OUTLINED_FUNCTION_49_8();
                  if (v3)
                  {
                    goto LABEL_106;
                  }
                }
              }

              goto LABEL_96;
            }

            goto LABEL_105;
          }

          goto LABEL_114;
        }

        if (v49 != 45)
        {
          if (v47)
          {
            v5 = 0;
            if (result)
            {
              while (1)
              {
                v60 = *result - 48;
                if (v60 > 9)
                {
                  goto LABEL_105;
                }

                v61 = 10 * v5;
                if ((v5 * 10) >> 64 != (10 * v5) >> 63)
                {
                  goto LABEL_105;
                }

                v5 = v61 + v60;
                if (__OFADD__(v61, v60))
                {
                  goto LABEL_105;
                }

                ++result;
                if (!--v47)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_96;
          }

LABEL_105:
          v5 = 0;
          v53 = 1;
LABEL_106:
          LOBYTE(v79[0]) = v53;
          if (v53)
          {
            goto LABEL_107;
          }

          goto LABEL_7;
        }

        if (v47 >= 1)
        {
          if (v47 != 1)
          {
            v5 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_95_1();
              while (1)
              {
                OUTLINED_FUNCTION_14_33();
                if (!v3 & v50)
                {
                  goto LABEL_105;
                }

                OUTLINED_FUNCTION_16_30();
                if (!v3)
                {
                  goto LABEL_105;
                }

                v5 = v52 - v51;
                if (__OFSUB__(v52, v51))
                {
                  goto LABEL_105;
                }

                OUTLINED_FUNCTION_49_8();
                if (v3)
                {
                  goto LABEL_106;
                }
              }
            }

LABEL_96:
            v53 = 0;
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        __break(1u);
      }

      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  v5 = 2;
LABEL_7:
  while (1)
  {
    v71 = v1[18];
    v72 = v5;
    v70 = v1[19];
    v6 = v1[23];
    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      break;
    }

    v68 = v1;
    v69 = a1;
    v9 = v1[22];
    v82 = MEMORY[0x277D84F90];
    v1 = &v82;
    sub_237C63194(0, v7, 0);
    a1 = 0;
    v10 = v82;
    v73 = v7;
    v74 = v9 + 32;
    v75 = *(v9 + 16);
    v76 = v6 + 32;
    while (1)
    {
      memcpy(__dst, (v76 + 152 * a1), 0x98uLL);
      if (a1 == v75)
      {
        break;
      }

      v11 = *(v74 + 8 * a1);
      v12 = *(__dst[5] + 16);
      if (v12)
      {
        v77 = *(v74 + 8 * a1);
        sub_237D74EE4(__dst, v79);
        v81 = v8;
        v1 = &v81;
        sub_237C631B4(0, v12, 0);
        v13 = 0;
        v14 = v81;
        while (1)
        {
          v78 = v13;
          sub_237D74BCC(&v78, __dst, v79);
          v81 = v14;
          v16 = *(v14 + 16);
          v15 = *(v14 + 24);
          if (v16 >= v15 >> 1)
          {
            v21 = OUTLINED_FUNCTION_17_0(v15);
            v1 = &v81;
            sub_237C631B4(v21, v16 + 1, 1);
            v14 = v81;
          }

          *(v14 + 16) = v16 + 1;
          v17 = v14 + 56 * v16;
          v18 = v79[0];
          v19 = v79[1];
          v20 = v80[0];
          *(v17 + 78) = *(v80 + 14);
          *(v17 + 48) = v19;
          *(v17 + 64) = v20;
          *(v17 + 32) = v18;
          if (v12 - 1 == v13)
          {
            break;
          }

          ++v13;
        }

        sub_237D74F1C(__dst);
        v8 = MEMORY[0x277D84F90];
        v7 = v73;
        v11 = v77;
      }

      else
      {
        v14 = v8;
      }

      v82 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_17_0(v22);
        v1 = &v82;
        v27 = v26;
        sub_237C63194(v25, v23 + 1, 1);
        v11 = v27;
        v10 = v82;
      }

      ++a1;
      *(v10 + 16) = v23 + 1;
      v24 = v10 + 16 * v23;
      *(v24 + 32) = v14;
      *(v24 + 40) = v11;
      if (a1 == v7)
      {
        v1 = v68;
        a1 = v69;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_109:
    sub_237EF8260();
    v64 = OUTLINED_FUNCTION_11_19();
    v5 = sub_237D7503C(v64, v65, 10);
    v67 = v66;

    if (v67)
    {
LABEL_107:
      v5 = 0;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_23:
  v28 = *v1;
  v29 = v1[1];
  v30 = v1[2];
  v31 = v1[3];
  v33 = v1[6];
  v32 = v1[7];
  sub_237EF8260();
  v34 = sub_237D741A8(v33, v32);
  if ((v34 & 0x100000000) != 0)
  {
    v35 = 0.5;
  }

  else
  {
    v35 = *&v34;
  }

  sub_237EF8260();
  v36 = sub_237D73F48(v28, v29);
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  sub_237EF8260();
  v39 = sub_237D73F48(v30, v31);
  if (v40)
  {
    v41 = 1;
  }

  else
  {
    v41 = v39;
  }

  sub_237EF8260();
  result = sub_237D73F48(v71, v70);
  *a1 = v10;
  *(a1 + 8) = v35;
  if (v42)
  {
    v43 = 1;
  }

  else
  {
    v43 = result;
  }

  *(a1 + 16) = v38;
  *(a1 + 24) = v41;
  *(a1 + 32) = v72;
  *(a1 + 40) = v43;
  *(a1 + 48) = 1;
  return result;
}

unint64_t sub_237D73F48(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_104_0();
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_23_24();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_49_8();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_14_33();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_23_24();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_49_8();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_104_0();
          while (1)
          {
            OUTLINED_FUNCTION_14_33();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_23_24();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_49_8();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
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
        result = sub_237EF9420();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_95_1();
              while (1)
              {
                OUTLINED_FUNCTION_14_33();
                if (!v9 & v8)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_23_24();
                if (!v9)
                {
                  goto LABEL_70;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_49_8();
                if (v9)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_70;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_70;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v7 = 0;
        v12 = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_95_1();
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v9 & v8)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_23_24();
              if (!v9)
              {
                goto LABEL_70;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_49_8();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v12 = 0;
LABEL_71:
          v23 = v12;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v7 = sub_237D7503C(result, a2, 10);
  v23 = v24;
LABEL_72:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

unint64_t sub_237D741A8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = sub_237D74D88(a1, a2, &v5);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

void *sub_237D74214@<X0>(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X3>)
{
  v7 = *(a4 + 16);
  sub_237EF8260();
  sub_237D74284(a1, a3, __src, v7, 0, 0);
  return memcpy(a2, __src, 0x98uLL);
}

uint64_t sub_237D74284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>)
{
  v6 = a1;
  v7 = *(a1 + 16);
  v147 = a1;
  if (!v7)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_36:
    v146 = v34;
LABEL_37:
    v136 = v34;
    v137 = v34;
    goto LABEL_38;
  }

  sub_237EF8260();
  v8 = 0;
  v9 = v7 - 1;
  v10 = v6 + 48;
  v11 = MEMORY[0x277D84F98];
  v145 = v7 - 1;
  while (1)
  {
    if (v8 >= v7)
    {
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
      result = sub_237EFA020();
      __break(1u);
      return result;
    }

    if ((*(v10 + 37) & 1) == 0)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_237D2FCC4(v12);
      if (__OFADD__(*(v11 + 16), (v15 & 1) == 0))
      {
        goto LABEL_110;
      }

      v16 = v14;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED18, &qword_237F07138);
      if (sub_237EF96B0())
      {
        v18 = sub_237D2FCC4(v12);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_114;
        }

        v16 = v18;
      }

      if (v17)
      {
        *(*(v11 + 56) + 8 * v16) = v8;
      }

      else
      {
        OUTLINED_FUNCTION_97_0(v11 + 8 * (v16 >> 6));
        *(v20 + 8 * v16) = v12;
        *(*(v11 + 56) + 8 * v16) = v8;
        v21 = *(v11 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_112;
        }

        *(v11 + 16) = v23;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_237D2FCC4(v13);
      v26 = v25;
      if (__OFADD__(*(v11 + 16), (v25 & 1) == 0))
      {
        goto LABEL_111;
      }

      v27 = v24;
      if (sub_237EF96B0())
      {
        v28 = sub_237D2FCC4(v13);
        v9 = v145;
        if ((v26 & 1) != (v29 & 1))
        {
          goto LABEL_114;
        }

        v27 = v28;
      }

      else
      {
        v9 = v145;
      }

      if (v26)
      {
        *(*(v11 + 56) + 8 * v27) = v8;
      }

      else
      {
        OUTLINED_FUNCTION_97_0(v11 + 8 * (v27 >> 6));
        *(v30 + 8 * v27) = v13;
        *(*(v11 + 56) + 8 * v27) = v8;
        v31 = *(v11 + 16);
        v22 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v22)
        {
          goto LABEL_113;
        }

        *(v11 + 16) = v32;
      }

      v6 = v147;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_109;
    }

    if (v9 == v8)
    {
      break;
    }

    v7 = *(v6 + 16);
    v10 += 56;
    ++v8;
  }

  v33 = *(v6 + 16);
  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
    goto LABEL_36;
  }

  v149 = MEMORY[0x277D84F90];
  sub_237EF8260();
  v35 = OUTLINED_FUNCTION_55_6();
  sub_237C62DB0(v35, v36, v37);
  v38 = *(v149 + 16);
  v39 = (v6 + 85);
  do
  {
    if (*v39)
    {
      v40 = -1;
    }

    else
    {
      v40 = *(v39 - 37);
    }

    OUTLINED_FUNCTION_93_1();
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_24_19(v41);
      sub_237C62DB0(v44, v9, 1);
      v42 = v149;
    }

    v39 += 56;
    *(v42 + 16) = v9;
    *(v42 + 8 * v38 + 32) = v40;
    v38 = v9;
    --v33;
  }

  while (v33);
  v146 = v42;

  v77 = *(v6 + 16);
  v34 = MEMORY[0x277D84F90];
  if (!v77)
  {
    goto LABEL_37;
  }

  v153 = MEMORY[0x277D84F90];
  sub_237EF8260();
  v78 = OUTLINED_FUNCTION_55_6();
  sub_237C62DB0(v78, v79, v80);
  v81 = *(v153 + 16);
  v82 = (v6 + 85);
  do
  {
    if (*v82)
    {
      v83 = -1;
    }

    else
    {
      v83 = *(v82 - 29);
    }

    v84 = *(v153 + 24);
    v85 = v81 + 1;
    if (v81 >= v84 >> 1)
    {
      v86 = OUTLINED_FUNCTION_24_19(v84);
      sub_237C62DB0(v86, v81 + 1, 1);
    }

    v82 += 56;
    *(v153 + 16) = v85;
    *(v153 + 8 * v81++ + 32) = v83;
    --v77;
  }

  while (v77);

  v88 = *(v6 + 16);
  if (v88)
  {
    v137 = v153;
    v154 = MEMORY[0x277D84F90];
    sub_237EF8260();
    v89 = OUTLINED_FUNCTION_55_6();
    sub_237C62DB0(v89, v90, v91);
    v92 = *(v154 + 16);
    v93 = (v6 + 85);
    do
    {
      v94 = *v93;
      v95 = *(v93 - 21) == *(v93 - 37);
      OUTLINED_FUNCTION_93_1();
      if (v43)
      {
        v98 = OUTLINED_FUNCTION_24_19(v96);
        sub_237C62DB0(v98, v85, 1);
        v97 = v154;
      }

      v93 += 56;
      *(v97 + 16) = v85;
      *(v97 + 8 * v92 + 32) = v95 & ~v94;
      v92 = v85;
      --v88;
    }

    while (v88);
    v136 = v97;
  }

  else
  {
    v136 = MEMORY[0x277D84F90];
    v137 = v153;
  }

LABEL_38:
  MEMORY[0x28223BE20](a1);
  sub_237EF8260();
  sub_237D6DEF4(0, v6, sub_237D75034);
  v135 = v45;

  v46 = *(v6 + 16);
  v47 = MEMORY[0x277D84F90];
  if (v46)
  {
    v150 = MEMORY[0x277D84F90];
    sub_237EF8260();
    v48 = OUTLINED_FUNCTION_22_22();
    sub_237C63670(v48, v49, v50);
    v51 = v150;
    v52 = *(v150 + 16);
    v53 = (v6 + 85);
    do
    {
      if (*v53)
      {
        v54 = 0.0;
      }

      else
      {
        v54 = *(v53 - 13);
      }

      v55 = *(v150 + 24);
      if (v52 >= v55 >> 1)
      {
        v56 = OUTLINED_FUNCTION_24_19(v55);
        sub_237C63670(v56, v52 + 1, 1);
      }

      v53 += 56;
      *(v150 + 16) = v52 + 1;
      *(v150 + 4 * v52++ + 32) = v54;
      --v46;
    }

    while (v46);

    v57 = *(v6 + 16);
    v47 = MEMORY[0x277D84F90];
    if (v57)
    {
      v151 = MEMORY[0x277D84F90];
      sub_237EF8260();
      v58 = OUTLINED_FUNCTION_22_22();
      sub_237C63670(v58, v59, v60);
      v47 = v151;
      v61 = *(v151 + 16);
      v62 = (v6 + 85);
      do
      {
        if (*v62)
        {
          v63 = -53;
        }

        else
        {
          v63 = -45;
        }

        v64 = *&v62[v63];
        v65 = *(v151 + 24);
        if (v61 >= v65 >> 1)
        {
          v66 = OUTLINED_FUNCTION_24_19(v65);
          sub_237C63670(v66, v61 + 1, 1);
        }

        v62 += 56;
        *(v151 + 16) = v61 + 1;
        *(v151 + 4 * v61++ + 32) = v64;
        --v57;
      }

      while (v57);

      v67 = *(v6 + 16);
      v68 = MEMORY[0x277D84F90];
      if (v67)
      {
        v152 = MEMORY[0x277D84F90];
        sub_237EF8260();
        v69 = OUTLINED_FUNCTION_22_22();
        sub_237C62DB0(v69, v70, v71);
        v68 = v152;
        v72 = *(v152 + 16);
        v73 = (v6 + 85);
        do
        {
          if (*v73)
          {
            v74 = 0;
          }

          else
          {
            v74 = *(v73 - 53);
          }

          v75 = *(v152 + 24);
          if (v72 >= v75 >> 1)
          {
            v76 = OUTLINED_FUNCTION_24_19(v75);
            sub_237C62DB0(v76, v72 + 1, 1);
          }

          v73 += 56;
          *(v152 + 16) = v72 + 1;
          *(v152 + 8 * v72++ + 32) = v74;
          --v67;
        }

        while (v67);

        v87 = *(v6 + 16);
      }

      else
      {
        v87 = 0;
      }

      goto LABEL_81;
    }

    v87 = 0;
  }

  else
  {
    v87 = 0;
    v51 = MEMORY[0x277D84F90];
  }

  v68 = v47;
LABEL_81:
  sub_237CDBF9C(0, v87);
  v134 = v99;
  v100 = *(v6 + 16);
  v101 = MEMORY[0x277D84F90];
  if (v100)
  {
    v155 = MEMORY[0x277D84F90];
    sub_237EF8260();
    v102 = OUTLINED_FUNCTION_22_22();
    sub_237C63670(v102, v103, v104);
    v101 = v155;
    v105 = *(v155 + 16);
    v106 = (v6 + 85);
    do
    {
      if (*v106)
      {
        v107 = -49;
      }

      else
      {
        v107 = -9;
      }

      v108 = *&v106[v107];
      v109 = *(v155 + 24);
      if (v105 >= v109 >> 1)
      {
        v110 = OUTLINED_FUNCTION_24_19(v109);
        sub_237C63670(v110, v105 + 1, 1);
      }

      v106 += 56;
      *(v155 + 16) = v105 + 1;
      *(v155 + 4 * v105++ + 32) = v108;
      --v100;
    }

    while (v100);

    v111 = *(v147 + 16);
    v112 = MEMORY[0x277D84F90];
    if (v111)
    {
      v156 = MEMORY[0x277D84F90];
      sub_237EF8260();
      v113 = OUTLINED_FUNCTION_22_22();
      sub_237C63670(v113, v114, v115);
      v112 = v156;
      v116 = v147;
      do
      {
        if (*(v116 + 85))
        {
          v117 = 12;
        }

        else
        {
          v117 = 52;
        }

        if (*(v116 + 85))
        {
          v118 = 8;
        }

        else
        {
          v118 = 48;
        }

        v119 = v116 + v118;
        if (*(v116 + v117 + 32))
        {
          v120 = 0.0;
        }

        else
        {
          v120 = *(v119 + 32);
        }

        v122 = *(v156 + 16);
        v121 = *(v156 + 24);
        if (v122 >= v121 >> 1)
        {
          v123 = OUTLINED_FUNCTION_24_19(v121);
          sub_237C63670(v123, v122 + 1, 1);
        }

        v116 += 56;
        *(v156 + 16) = v122 + 1;
        *(v156 + 4 * v122 + 32) = v120;
        --v111;
      }

      while (v111);
    }
  }

  else
  {
    v112 = MEMORY[0x277D84F90];
  }

  v124 = sub_237EF9AB0();
  v148 = v125;
  v139 = OUTLINED_FUNCTION_84_2(a4);
  v133 = v126;
  v141 = OUTLINED_FUNCTION_84_2(a5);
  v128 = v127;
  v129 = OUTLINED_FUNCTION_84_2(a6);
  v131 = v130;

  *a3 = a2;
  a3[1] = v146;
  a3[2] = v137;
  a3[3] = v136;
  a3[4] = v135;
  a3[5] = v51;
  a3[6] = v47;
  a3[7] = v68;
  a3[8] = v134;
  a3[9] = v101;
  a3[10] = v112;
  a3[11] = v124;
  a3[12] = v148;
  a3[13] = v139;
  a3[14] = v133;
  a3[15] = v141;
  a3[16] = v128;
  a3[17] = v129;
  a3[18] = v131;
  return result;
}

uint64_t sub_237D74B8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16) && (v4 = sub_237D2FCC4(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

unint64_t *sub_237D74BCC@<X0>(unint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2[1];
  if (v3 >= *(v4 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *(v4 + 8 * v3 + 32);
  if (v5 != -1)
  {
    goto LABEL_6;
  }

  v6 = a2[2];
  if (v3 >= *(v6 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v6 + 8 * v3 + 32) != -1)
  {
LABEL_6:
    v7 = a2[7];
    if (v3 < *(v7 + 16))
    {
      v8 = a2[6];
      if (v3 < *(v8 + 16))
      {
        v9 = a2[2];
        if (v3 < *(v9 + 16))
        {
          v10 = a2[3];
          if (v3 < *(v10 + 16))
          {
            v11 = *(v9 + 8 * v3 + 32);
            if (*(v10 + 8 * v3 + 32) == 1)
            {
              v12 = v5;
            }

            else
            {
              v12 = v11;
            }

            v13 = a2[5];
            if (v3 < *(v13 + 16))
            {
              v14 = a2[9];
              if (v3 < *(v14 + 16))
              {
                v15 = a2[10];
                result = *(v15 + 16);
                if (v3 < result)
                {
                  v16 = *(v7 + 8 * v3 + 32);
                  v17 = *(v8 + 4 * v3 + 32);
                  v18 = *(v13 + 4 * v3 + 32);
                  v19 = *(v14 + 4 * v3 + 32);
                  v20 = *(v15 + 4 * v3 + 32);
                  *(a3 + 8) = v17;
                  *(a3 + 40) = v18;
                  *(a3 + 44) = v19;
                  *a3 = v16;
                  *(a3 + 16) = v5;
                  *(a3 + 24) = v11;
                  *(a3 + 32) = v12;
                  *(a3 + 48) = v20;
                  *(a3 + 52) = 0;
                  return result;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2[6];
  if (v3 >= *(v21 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v22 = a2[9];
  if (v3 >= *(v22 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = a2[10];
  if (v3 < *(v23 + 16))
  {
    v24 = *(v21 + 4 * v3 + 32);
    v25 = *(v22 + 4 * v3 + 32);
    v26 = *(v23 + 4 * v3 + 32);
    *a3 = v24;
    *(a3 + 4) = v25;
    *(a3 + 8) = v26;
    *(a3 + 12) = 0;
    *(a3 + 53) = 1;
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

BOOL sub_237D74D88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_237EF9320();
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
  v5 = _swift_stdlib_strtof_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

unint64_t sub_237D74E80()
{
  result = qword_27DEB2208;
  if (!qword_27DEB2208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0, qword_237F0EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2208);
  }

  return result;
}

uint64_t sub_237D74F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D74FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_237D7503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v82 = a2;
  sub_237EF8260();
  result = sub_237EF86D0();
  v7 = result;
  v8 = v6;
  if ((v6 & 0x1000000000000000) != 0)
  {
    v44 = OUTLINED_FUNCTION_11_19();
    sub_237D755D0(v44, v45);
    OUTLINED_FUNCTION_37_9();

    v8 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v6 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_11_19();
      result = sub_237EF9420();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_78_1();
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
            v18 = 0;
            v32 = (v28 + 1);
            do
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v31)
              {
                if (v33 < 0x41 || v33 >= v30)
                {
                  OUTLINED_FUNCTION_75_3();
                  if (!v23 || v33 >= v35)
                  {
                    goto LABEL_142;
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

              v36 = v18 * a3;
              if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v18 = v36 + (v33 + v34);
              if (__OFADD__(v36, (v33 + v34)))
              {
                goto LABEL_141;
              }

              ++v32;
              --v29;
            }

            while (v29);
LABEL_52:
            v7 = v18;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v7 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (result)
        {
          v40 = 0;
          do
          {
            v41 = *result;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                v7 = 0;
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_142;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            v43 = v40 * a3;
            if ((v40 * a3) >> 64 != (v40 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v40 = v43 + (v41 + v42);
            if (__OFADD__(v43, (v41 + v42)))
            {
              goto LABEL_141;
            }

            ++result;
            --v9;
          }

          while (v9);
          v7 = v43 + (v41 + v42);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_78_1();
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
                OUTLINED_FUNCTION_75_3();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_142;
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
            if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v18 = v24 - (v20 + v21);
            if (__OFSUB__(v24, (v20 + v21)))
            {
              goto LABEL_141;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v7 = 0;
LABEL_142:

        return v7;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v46 = HIBYTE(v8) & 0xF;
  v81 = v7;
  v82 = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v46)
      {
        OUTLINED_FUNCTION_31_12();
        if (v71 ^ v72 | v70)
        {
          v74 = 65;
        }

        if (!(v71 ^ v72 | v70))
        {
          v75 = 58;
        }

        v76 = &v81;
        while (1)
        {
          v77 = *v76;
          if (v77 < 0x30 || v77 >= v75)
          {
            if (v77 < 0x41 || v77 >= v74)
            {
              OUTLINED_FUNCTION_75_3();
              if (!v23 || v77 >= v79)
              {
                goto LABEL_142;
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

          v80 = v51 * a3;
          if ((v51 * a3) >> 64 != (v51 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v51 = v80 + (v77 + v78);
          if (__OFADD__(v80, (v77 + v78)))
          {
            goto LABEL_141;
          }

          v76 = (v76 + 1);
          if (!--v73)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v46)
    {
      if (v46 != 1)
      {
        OUTLINED_FUNCTION_31_12();
        if (v48 ^ v49 | v47)
        {
          v52 = 65;
        }

        if (!(v48 ^ v49 | v47))
        {
          v53 = 58;
        }

        v54 = &v81 + 1;
        while (1)
        {
          v55 = *v54;
          if (v55 < 0x30 || v55 >= v53)
          {
            if (v55 < 0x41 || v55 >= v52)
            {
              OUTLINED_FUNCTION_75_3();
              if (!v23 || v55 >= v57)
              {
                goto LABEL_142;
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

          v58 = v51 * a3;
          if ((v51 * a3) >> 64 != (v51 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v51 = v58 - (v55 + v56);
          if (__OFSUB__(v58, (v55 + v56)))
          {
            goto LABEL_141;
          }

          ++v54;
          if (!--v50)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v46)
  {
    if (v46 != 1)
    {
      OUTLINED_FUNCTION_31_12();
      if (v60 ^ v61 | v59)
      {
        v63 = 65;
      }

      if (!(v60 ^ v61 | v59))
      {
        v64 = 58;
      }

      v65 = &v81 + 1;
      do
      {
        v66 = *v65;
        if (v66 < 0x30 || v66 >= v64)
        {
          if (v66 < 0x41 || v66 >= v63)
          {
            OUTLINED_FUNCTION_75_3();
            if (!v23 || v66 >= v68)
            {
              goto LABEL_142;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }
        }

        else
        {
          v67 = -48;
        }

        v69 = v51 * a3;
        if ((v51 * a3) >> 64 != (v51 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v51 = v69 + (v66 + v67);
        if (__OFADD__(v69, (v66 + v67)))
        {
          goto LABEL_141;
        }

        ++v65;
        --v62;
      }

      while (v62);
LABEL_140:
      v7 = v51;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

_BYTE *sub_237D75548@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

uint64_t sub_237D755D0(uint64_t a1, unint64_t a2)
{
  v2 = sub_237D7563C(sub_237D75638, 0, a1, a2);
  v6 = sub_237D75670(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_237D75670(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_237EF9190();
    if (!v9 || (v10 = v9, v11 = sub_237D6D2A4(v9, 0), v12 = sub_237D757D0(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_237EF8260(), , v12 == v10))
    {
      v13 = sub_237EF8600();

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
      return sub_237EF8600();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_237EF9420();
LABEL_4:

  return sub_237EF8600();
}

unint64_t sub_237D757D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_237D759E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_237EF8680();
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
          result = sub_237EF9420();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_237D759E0(v12, a6, a7);
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

    result = sub_237EF8660();
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

unint64_t sub_237D759E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_237EF8690();
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
    v5 = MEMORY[0x2383E0750](15, a1 >> 16);
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

uint64_t sub_237D75A5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_237D75A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D75B24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_237D75B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237D75BE4()
{
  result = qword_27DEB2218;
  if (!qword_27DEB2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2218);
  }

  return result;
}

unint64_t sub_237D75C48()
{
  result = qword_27DEB2220;
  if (!qword_27DEB2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2220);
  }

  return result;
}

unint64_t sub_237D75CA0()
{
  result = qword_27DEB2228;
  if (!qword_27DEB2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2228);
  }

  return result;
}

unint64_t sub_237D75CF4()
{
  result = qword_27DEB2238;
  if (!qword_27DEB2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2238);
  }

  return result;
}

unint64_t sub_237D75D48()
{
  result = qword_27DEB2240;
  if (!qword_27DEB2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2240);
  }

  return result;
}

unint64_t sub_237D75D9C()
{
  result = qword_27DEB2248;
  if (!qword_27DEB2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2248);
  }

  return result;
}

unint64_t sub_237D75E20()
{
  result = qword_27DEB2250;
  if (!qword_27DEB2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2250);
  }

  return result;
}

unint64_t sub_237D75EAC()
{
  result = qword_27DEB2260;
  if (!qword_27DEB2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2260);
  }

  return result;
}

uint64_t sub_237D75F00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_237D75F68()
{
  result = qword_27DEB2270;
  if (!qword_27DEB2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2270);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XGBoostArtifact.Tree.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XGBoostArtifact.Tree.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237D7613C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_237D7617C(uint64_t result, int a2, int a3)
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

unint64_t sub_237D761F8()
{
  result = qword_27DEB2278;
  if (!qword_27DEB2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2278);
  }

  return result;
}

unint64_t sub_237D76250()
{
  result = qword_27DEB2280;
  if (!qword_27DEB2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2280);
  }

  return result;
}

unint64_t sub_237D762A8()
{
  result = qword_27DEB2288;
  if (!qword_27DEB2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2288);
  }

  return result;
}

unint64_t sub_237D76300()
{
  result = qword_27DEB2290;
  if (!qword_27DEB2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2290);
  }

  return result;
}

unint64_t sub_237D76358()
{
  result = qword_27DEB2298;
  if (!qword_27DEB2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2298);
  }

  return result;
}

unint64_t sub_237D763B0()
{
  result = qword_27DEB22A0;
  if (!qword_27DEB22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22A0);
  }

  return result;
}

unint64_t sub_237D76404()
{
  result = qword_27DEB22B0;
  if (!qword_27DEB22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22B0);
  }

  return result;
}

unint64_t sub_237D76490()
{
  result = qword_27DEB22C0;
  if (!qword_27DEB22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22C0);
  }

  return result;
}

unint64_t sub_237D764E4()
{
  result = qword_27DEB22C8;
  if (!qword_27DEB22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22C8);
  }

  return result;
}

unint64_t sub_237D76538()
{
  result = qword_27DEB22D0;
  if (!qword_27DEB22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22D0);
  }

  return result;
}

unint64_t sub_237D7658C()
{
  result = qword_27DEB22E0;
  if (!qword_27DEB22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22E0);
  }

  return result;
}

unint64_t sub_237D765E0()
{
  result = qword_27DEB22E8;
  if (!qword_27DEB22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22E8);
  }

  return result;
}

unint64_t sub_237D7669C()
{
  result = qword_27DEB22F8;
  if (!qword_27DEB22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22F8);
  }

  return result;
}

uint64_t sub_237D76768(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
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
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_83_2(v8);
}

_BYTE *sub_237D767EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_82_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_80_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_81_2(result, v6);
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
          result = OUTLINED_FUNCTION_68_3(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237D768C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
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
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_83_2(v8);
}

_BYTE *sub_237D7694C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_82_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_80_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_81_2(result, v6);
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
          result = OUTLINED_FUNCTION_68_3(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237D76A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0 && *(a1 + 64))
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

  return OUTLINED_FUNCTION_83_2(v2);
}

uint64_t sub_237D76A54(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_57_7(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57_7(result, a2);
    }
  }

  return result;
}

uint64_t sub_237D76AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_83_2(v2);
}

uint64_t sub_237D76AF0(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_57_7(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57_7(result, a2);
    }
  }

  return result;
}

unint64_t sub_237D76B34()
{
  result = qword_27DEB2300;
  if (!qword_27DEB2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2300);
  }

  return result;
}

unint64_t sub_237D76B8C()
{
  result = qword_27DEB2308;
  if (!qword_27DEB2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2308);
  }

  return result;
}

unint64_t sub_237D76BE4()
{
  result = qword_27DEB2310;
  if (!qword_27DEB2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2310);
  }

  return result;
}

unint64_t sub_237D76C3C()
{
  result = qword_27DEB2318;
  if (!qword_27DEB2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2318);
  }

  return result;
}

unint64_t sub_237D76C94()
{
  result = qword_27DEB2320;
  if (!qword_27DEB2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2320);
  }

  return result;
}

unint64_t sub_237D76CEC()
{
  result = qword_27DEB2328;
  if (!qword_27DEB2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2328);
  }

  return result;
}

unint64_t sub_237D76D44()
{
  result = qword_27DEB2330;
  if (!qword_27DEB2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2330);
  }

  return result;
}

unint64_t sub_237D76D9C()
{
  result = qword_27DEB2338;
  if (!qword_27DEB2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2338);
  }

  return result;
}

unint64_t sub_237D76DF4()
{
  result = qword_27DEB2340;
  if (!qword_27DEB2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2340);
  }

  return result;
}

unint64_t sub_237D76E4C()
{
  result = qword_27DEB2348;
  if (!qword_27DEB2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2348);
  }

  return result;
}

unint64_t sub_237D76EA4()
{
  result = qword_27DEB2350;
  if (!qword_27DEB2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2350);
  }

  return result;
}

unint64_t sub_237D76EFC()
{
  result = qword_27DEB2358;
  if (!qword_27DEB2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2358);
  }

  return result;
}

unint64_t sub_237D76F50()
{
  result = qword_27DEB2368;
  if (!qword_27DEB2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2368);
  }

  return result;
}

unint64_t sub_237D76FA4()
{
  result = qword_27DEB2378;
  if (!qword_27DEB2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2378);
  }

  return result;
}

unint64_t sub_237D76FF8()
{
  result = qword_27DEB2388;
  if (!qword_27DEB2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2388);
  }

  return result;
}

unint64_t sub_237D7704C()
{
  result = qword_27DEB2390;
  if (!qword_27DEB2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2390);
  }

  return result;
}

unint64_t sub_237D770A0()
{
  result = qword_27DEB23A0;
  if (!qword_27DEB23A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2398, &qword_237F112D8);
    sub_237D77124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23A0);
  }

  return result;
}

unint64_t sub_237D77124()
{
  result = qword_27DEB23A8;
  if (!qword_27DEB23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23A8);
  }

  return result;
}

uint64_t sub_237D77200(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_88(a1);
}

_BYTE *sub_237D7724C(_BYTE *result, int a2, int a3)
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

uint64_t sub_237D772F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0 && *(a1 + 48))
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

  return OUTLINED_FUNCTION_83_2(v2);
}

uint64_t sub_237D77334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return OUTLINED_FUNCTION_57_7(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57_7(result, a2);
    }
  }

  return result;
}

unint64_t sub_237D77388()
{
  result = qword_27DEB23B0;
  if (!qword_27DEB23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23B0);
  }

  return result;
}

unint64_t sub_237D773E0()
{
  result = qword_27DEB23B8;
  if (!qword_27DEB23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23B8);
  }

  return result;
}

unint64_t sub_237D77438()
{
  result = qword_27DEB23C0;
  if (!qword_27DEB23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23C0);
  }

  return result;
}

unint64_t sub_237D77490()
{
  result = qword_27DEB23C8;
  if (!qword_27DEB23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23C8);
  }

  return result;
}

unint64_t sub_237D774E8()
{
  result = qword_27DEB23D0;
  if (!qword_27DEB23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23D0);
  }

  return result;
}

unint64_t sub_237D77540()
{
  result = qword_27DEB23D8;
  if (!qword_27DEB23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23D8);
  }

  return result;
}

unint64_t sub_237D77598()
{
  result = qword_27DEB23E0;
  if (!qword_27DEB23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23E0);
  }

  return result;
}

unint64_t sub_237D775F0()
{
  result = qword_27DEB23E8;
  if (!qword_27DEB23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23E8);
  }

  return result;
}

unint64_t sub_237D77648()
{
  result = qword_27DEB23F0;
  if (!qword_27DEB23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23F0);
  }

  return result;
}

unint64_t sub_237D7769C()
{
  result = qword_27DEB2400;
  if (!qword_27DEB2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2400);
  }

  return result;
}

uint64_t sub_237D776F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_83_2(v8);
}

_BYTE *sub_237D77774(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_82_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_80_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_81_2(result, v6);
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
          result = OUTLINED_FUNCTION_68_3(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D77844()
{
  result = qword_27DEB2408;
  if (!qword_27DEB2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2408);
  }

  return result;
}

unint64_t sub_237D7789C()
{
  result = qword_27DEB2410;
  if (!qword_27DEB2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2410);
  }

  return result;
}

unint64_t sub_237D778F4()
{
  result = qword_27DEB2418[0];
  if (!qword_27DEB2418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB2418);
  }

  return result;
}

void *OUTLINED_FUNCTION_4_47()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_5_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return MEMORY[0x28211F3E0](va, v11, v11, v10, v10);
}

void OUTLINED_FUNCTION_9_32()
{
  v0[20] = 0;
  v0[22] = 0;
  v0[24] = 0;
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return sub_237EF83F0();
}

void *OUTLINED_FUNCTION_11_34()
{

  return sub_237C62D90(0, v0, 0);
}

void OUTLINED_FUNCTION_12_32()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v0;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_13_23()
{
  v0[20] = 0;
  v0[22] = 0;
  v0[24] = 0;
}

void OUTLINED_FUNCTION_15_29()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_17_29()
{

  return sub_237EF9AB0();
}

void OUTLINED_FUNCTION_18_27()
{

  JUMPOUT(0x2383E0710);
}

void *OUTLINED_FUNCTION_25_18@<X0>(unint64_t a1@<X8>)
{

  return sub_237C62D90((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_34_7()
{

  return sub_237EF83F0();
}

void OUTLINED_FUNCTION_36_11()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_40_9()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_41_6()
{

  JUMPOUT(0x2383E0710);
}

void *OUTLINED_FUNCTION_44_7()
{

  return sub_237C62D90(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_45_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return MEMORY[0x28211F3E0](va, v10, v10, v11, v11);
}

unint64_t OUTLINED_FUNCTION_46_7()
{

  return sub_237D05400();
}

uint64_t OUTLINED_FUNCTION_53_7()
{
  v4 = *(v3 - 232);
  v5 = *(v3 - 224);
  *(v3 - 216) = v2;
  *(v3 - 208) = v5;
  v6 = *(v3 - 240);
  *(v3 - 200) = *(v3 - 248);
  *(v3 - 192) = v4;
  *(v3 - 184) = *(v3 - 256);
  *(v3 - 176) = v6;
  *(v3 - 168) = v0;
  *(v3 - 160) = v1;
  return v3 - 216;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_237EF8260();
}

void OUTLINED_FUNCTION_56_8()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  *(v6 - 152) = v3;
  *(v6 - 144) = v1;
  v7 = *(v6 - 232);
  *(v6 - 136) = v5;
  *(v6 - 128) = v7;
  *(v6 - 120) = *(v6 - 256);
  *(v6 - 112) = v4;
  *(v6 - 104) = v0;
  *(v6 - 96) = v2;
  return v6 - 152;
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 256) = a1;
  *(v2 - 240) = a2;
  *(v2 - 65) = 3;

  return sub_237EF9910();
}

void OUTLINED_FUNCTION_64_4()
{

  sub_237D0B354();
}

__n128 OUTLINED_FUNCTION_65_4()
{
  v2 = *(v1 - 200);
  *v0 = *(v1 - 216);
  *(v0 + 16) = v2;
  result = *(v1 - 184);
  v4 = *(v1 - 168);
  *(v0 + 32) = result;
  *(v0 + 48) = v4;
  return result;
}

void OUTLINED_FUNCTION_69_5()
{

  JUMPOUT(0x2383E0710);
}

void *OUTLINED_FUNCTION_70_4()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_84_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return sub_237EF9AB0();
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EFA190();
}

uint64_t OUTLINED_FUNCTION_86_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EFA190();
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_237EF9AB0();
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_237EF9AB0();
}

void *OUTLINED_FUNCTION_90_1(void *a1)
{

  return sub_237C62D90(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_92_1(uint64_t a1)
{

  return sub_237EF83F0();
}

__n128 OUTLINED_FUNCTION_99_0()
{
  v2 = *(v1 - 144);
  *(v0 + 256) = *(v1 - 160);
  *(v0 + 272) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 288) = result;
  *(v0 + 304) = v4;
  return result;
}

void OUTLINED_FUNCTION_108_0()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EFA190();
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_237C8F200(v7, &v6);
}

__n128 FullyConnectedNetworkMultiLabelClassifier.configuration.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_237D78264(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

double sub_237D782D8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + a2 - 64);
  v9 = *(a1 + a2 - 80);
  v10 = v4;
  v5 = *(a1 + a2 - 32);
  v11 = *(a1 + a2 - 48);
  v12 = v5;
  v13 = *(a1 + a2 - 16);
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier(0, &v9);
  FullyConnectedNetworkMultiLabelClassifier.configuration.getter(&v9);
  v6 = v10;
  *a3 = v9;
  a3[1] = v6;
  result = *&v11;
  v8 = v12;
  a3[2] = v11;
  a3[3] = v8;
  return result;
}

double sub_237D78344(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v14[0] = *a1;
  v14[1] = v5;
  v6 = a1[3];
  v14[2] = a1[2];
  v14[3] = v6;
  v11 = *(a3 + a4 - 64);
  v12 = *(a3 + a4 - 80);
  v9 = *(a3 + a4 - 32);
  v10 = *(a3 + a4 - 48);
  v8 = *(a3 + a4 - 16);
  sub_237C8F200(v14, v13);
  v13[0] = v12;
  v13[1] = v11;
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v8;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier(0, v13);
  *&result = FullyConnectedNetworkMultiLabelClassifier.configuration.setter(a1).n128_u64[0];
  return result;
}

void (*FullyConnectedNetworkMultiLabelClassifier.networkConfiguration.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x110uLL);
  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  OUTLINED_FUNCTION_29_17();
  memcpy(v6, v7, v8);
  FullyConnectedNetworkMultiLabelClassifier.configuration.getter(v5);
  return sub_237D7845C;
}

void sub_237D7845C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (a2)
  {
    v2[8] = *v2;
    v2[9] = v3;
    v4 = v2[3];
    v6 = *v2;
    v5 = v2[1];
    v2[10] = v2[2];
    v2[11] = v4;
    v11 = v6;
    v12 = v5;
    v7 = v2[3];
    v13 = v2[2];
    v14 = v7;
    sub_237C8F200((v2 + 8), (v2 + 12));
    FullyConnectedNetworkMultiLabelClassifier.configuration.setter(&v11);
    v8 = v2[1];
    v2[4] = *v2;
    v2[5] = v8;
    v9 = v2[3];
    v2[6] = v2[2];
    v2[7] = v9;
    sub_237D78264((v2 + 4));
  }

  else
  {
    v11 = *v2;
    v12 = v3;
    v10 = v2[3];
    v13 = v2[2];
    v14 = v10;
    FullyConnectedNetworkMultiLabelClassifier.configuration.setter(&v11);
  }

  free(v2);
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

double static FullyConnectedNetworkMultiLabelClassifier.defaultConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 981668463;
  *(a1 + 16) = 1000;
  *(a1 + 24) = 1045220557;
  *(a1 + 32) = 16;
  *(a1 + 40) = 0x3F847AE147AE147BLL;
  *&result = 10;
  *(a1 + 48) = xmmword_237F11780;
  *a1 = MEMORY[0x277D84F90];
  return result;
}

__n128 FullyConnectedNetworkMultiLabelClassifier.init(labels:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = a1;
  v3 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  return result;
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v0[13] = v7;
  v0[20] = *(v1 - 8);
  v0[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v8, v9, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237D78688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v10[20] + 16))(v10[21], v10[14], v10[18]);
  sub_237EF7E90();
  sub_237EF8CF0();
  v11 = OUTLINED_FUNCTION_23_8();
  type metadata accessor for AnnotatedFeature(v11, v12, v13, v14);
  v15 = sub_237EF8A90();
  v10[22] = v15;
  v10[11] = v15;
  OUTLINED_FUNCTION_23_8();
  v16 = sub_237EF89A0();
  v10[23] = v16;
  v10[12] = v16;
  v17 = swift_task_alloc();
  v10[24] = v17;
  OUTLINED_FUNCTION_23_8();
  v18 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v17 = v10;
  v17[1] = sub_237D787F0;
  v20 = OUTLINED_FUNCTION_52_9(WitnessTable);

  return sub_237D789B0(v20, (v10 + 11), (v10 + 12), v21, v22, v23, v18, v18, a9, a10);
}

uint64_t sub_237D787F0()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237D78954()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D789B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 616) = a10;
  *(v10 + 608) = a9;
  *(v10 + 600) = a8;
  *(v10 + 592) = a7;
  *(v10 + 584) = a6;
  *(v10 + 576) = a5;
  *(v10 + 568) = a4;
  *(v10 + 560) = a3;
  *(v10 + 552) = a2;
  *(v10 + 544) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  *(v10 + 624) = v12;
  OUTLINED_FUNCTION_6_1(v12);
  *(v10 + 632) = v13;
  *(v10 + 640) = OUTLINED_FUNCTION_27_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A0, &qword_237F118B0);
  OUTLINED_FUNCTION_18(v14);
  *(v10 + 648) = OUTLINED_FUNCTION_27_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8, &qword_237F118B8);
  *(v10 + 656) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v10 + 664) = OUTLINED_FUNCTION_27_0();
  v16 = sub_237EF6B10();
  *(v10 + 672) = v16;
  OUTLINED_FUNCTION_6_1(v16);
  *(v10 + 680) = v17;
  *(v10 + 688) = swift_task_alloc();
  *(v10 + 696) = swift_task_alloc();
  *(v10 + 704) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B0, &qword_237F118C0);
  *(v10 + 712) = v18;
  OUTLINED_FUNCTION_6_1(v18);
  *(v10 + 720) = v19;
  *(v10 + 728) = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF64C0();
  *(v10 + 736) = v20;
  OUTLINED_FUNCTION_6_1(v20);
  *(v10 + 744) = v21;
  *(v10 + 752) = OUTLINED_FUNCTION_27_0();
  v22 = a6[2];
  *(v10 + 760) = v22;
  v23 = a6[3];
  *(v10 + 768) = v23;
  v24 = a6[4];
  *(v10 + 776) = v24;
  v25 = a6[5];
  *(v10 + 784) = v25;
  *&v26 = v22;
  *(&v26 + 1) = v23;
  *&v27 = v24;
  *(&v27 + 1) = v25;
  v28 = a6[8];
  *(v10 + 792) = v28;
  v29 = a6[9];
  *(v10 + 800) = v29;
  v30 = a6[10];
  *(v10 + 808) = v30;
  v31 = a6[11];
  *(v10 + 816) = v31;
  *(v10 + 232) = v26;
  *&v26 = v28;
  *(&v26 + 1) = v29;
  *(v10 + 248) = v27;
  *&v27 = v30;
  *(&v27 + 1) = v31;
  *(v10 + 264) = v26;
  *(v10 + 280) = v27;
  v32 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, v10 + 232);
  *(v10 + 824) = v32;
  OUTLINED_FUNCTION_6_1(v32);
  *(v10 + 832) = v33;
  *(v10 + 840) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v34 = sub_237EF7E90();
  *(v10 + 848) = v34;
  OUTLINED_FUNCTION_1();
  *(v10 + 856) = v35;
  *(v10 + 864) = OUTLINED_FUNCTION_27_0();
  v36 = sub_237EF8CF0();
  *(v10 + 872) = v36;
  *(v10 + 880) = type metadata accessor for AnnotatedFeature(255, v34, v36, v37);
  v38 = sub_237EF90F0();
  *(v10 + 888) = v38;
  OUTLINED_FUNCTION_6_1(v38);
  *(v10 + 896) = v39;
  *(v10 + 904) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v40, v41, v42);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v43, v44, v45);
}

void sub_237D78D9C()
{
  v195 = v0;
  if (sub_237EF8DD0())
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 904);
  v2 = *(v0 + 880);
  sub_237EF8E80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 904);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v0 + 896) + 8))(*(v0 + 904), *(v0 + 888));
LABEL_4:
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v5 = 0xD000000000000030;
    *(v5 + 8) = 0x8000000237EFEA50;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_1_59();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_45_7();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 880);
  v9 = *(v0 + 608);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v12 = *(v0 + 552);
  (*(*(v0 + 856) + 16))(*(v0 + 864), *(v0 + 904), *(v0 + 848));
  (*(*(v8 - 8) + 8))(v4, v8);
  v13 = sub_237EF7E20();
  v14 = OUTLINED_FUNCTION_55_1();
  v15(v14);
  OUTLINED_FUNCTION_46_8();
  sub_237D7C468(v12, v13, v11, v10, v9, v16, v17, v18, v126, v130, v134, v138, v142, v146, v150, v153, v156, v159, v162, v165);
  OUTLINED_FUNCTION_31_13();
  if ((sub_237EF8DD0() & 1) == 0)
  {
    v19 = *(v0 + 616);
    v20 = *(v0 + 600);
    v21 = *(v0 + 584);
    v22 = *(v0 + 560);
    OUTLINED_FUNCTION_46_8();
    sub_237D7C468(v22, v13, v21, v20, v19, v23, v24, v25, v127, v131, v135, v139, v143, v147, v151, v154, v157, v160, v163, v166);
  }

  v26 = *(v0 + 816);
  v27 = *(v0 + 792);
  v171 = *(v0 + 784);
  v173 = *(v0 + 800);
  v167 = *(v0 + 808);
  v170 = *(v0 + 776);
  v28 = *(v0 + 768);
  v175 = *(v0 + 760);
  v176 = *(v0 + 840);
  v29 = *(v0 + 752);
  v30 = *(v0 + 744);
  v179 = *(v0 + 736);
  v191 = *(v0 + 608);
  v188 = *(v0 + 592);
  v185 = *(v0 + 584);
  v181 = *(v0 + 552);
  *(v0 + 912) = *(v0 + 80);
  v31 = sub_237EF8260();
  v32 = sub_237E5E16C(v31, v28, v27, v26);
  v34 = v33;
  *(v0 + 920) = v32;
  *(v0 + 928) = v33;
  v35 = *(v0 + 32);
  v194[0] = *(v0 + 16);
  v194[1] = v35;
  v36 = *(v0 + 64);
  v194[2] = *(v0 + 48);
  v194[3] = v36;
  sub_237C8F200(v0 + 16, v0 + 296);
  sub_237EF8260();
  sub_237EF8260();
  swift_getTupleTypeMetadata2();
  sub_237EF89A0();
  v37 = sub_237EF8230();
  sub_237E2AC2C(v194, v32, v34, v13, 0, v37, v175, v28, v176, v170, v171, v27, v173, v167, v26);
  v38 = *(v0 + 56);
  sub_237CDC02C(*(v0 + 64), 0.0);
  *(v0 + 464) = v38;
  *(v0 + 472) = v39;
  (*(v30 + 104))(v29, *MEMORY[0x277D2CD40], v179);
  type metadata accessor for FullyConnectedNetwork(0);
  sub_237C77B74();
  sub_237EF68C0();
  (*(v30 + 8))(v29, v179);
  OUTLINED_FUNCTION_46_8();
  sub_237D7C7AC(v181, v32, v34, v185, v188, v191, v40, v41, v128, v132, v136, v140, v144, v148, v151, v154, v157, v160, v163, v167);
  v42 = *(v0 + 32);
  *(v0 + 936) = v42;
  if (v42 < 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  if (v42)
  {
    v43 = 0;
    v44 = 0;
    v164 = v0 + 760;
    v174 = (v0 + 536);
    while (1)
    {
      v168 = v44;
      *(v0 + 944) = v44;
      v45 = *(v0 + 664);
      v46 = *(v0 + 656);
      sub_237EF6A10();
      sub_237EF6B60();
      v172 = *(v45 + *(v46 + 44));
      OUTLINED_FUNCTION_6_38();
      sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8, &qword_237F118C8, v47);
      v48 = v43;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8, &qword_237F118C8);
        sub_237EF91A0();
        v49 = *(v0 + 648);
        v50 = *(v0 + 624);
        if (*(v0 + 480))
        {
          *&v194[0] = *(v0 + 480);
          v172(v194);

          v51 = v49;
          v52 = 0;
        }

        else
        {
          v51 = *(v0 + 648);
          v52 = 1;
        }

        __swift_storeEnumTagSinglePayload(v51, v52, 1, v50);
        v53 = *(v0 + 648);
        v54 = *(v0 + 624);
        v55 = __swift_getEnumTagSinglePayload(v53, 1, v54);
        v56 = *(v0 + 840);
        if (v55 == 1)
        {
          break;
        }

        v180 = *(v0 + 792);
        v182 = *(v0 + 808);
        v184 = *(v0 + 784);
        v192 = *(v0 + 776);
        v189 = *(v0 + 768);
        v186 = *(v0 + 760);
        v57 = *(v0 + 704);
        v43 = *(v0 + 640);
        v58 = *(v0 + 632);
        v59 = *(v0 + 616);
        v60 = *(v0 + 608);
        v61 = v0;
        v177 = *(v0 + 600);
        v62 = *(v0 + 592);
        v63 = *(v0 + 584);
        v64 = (*(v58 + 32))(v43, v53, v54);
        v65 = MEMORY[0x2383E24F0](v64);
        v66 = v57;
        v48 = 0;
        sub_237D7CA2C(v66, v56, v43, v186, v189, v62, v177, v192, v184, *(v63 + 48), *(v63 + 56), v180, *(&v180 + 1), v182, *(&v182 + 1), v60, v59, v174);
        objc_autoreleasePoolPop(v65);
        v67 = OUTLINED_FUNCTION_31_0();
        v68(v67);
        v0 = v61;
      }

      v69 = *(v0 + 824);
      sub_237C863A0(*(v0 + 664), &qword_27DEB24A8, &qword_237F118B8);
      v70 = *(v56 + *(v69 + 96));
      *(v0 + 952) = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_31_13();
      *(v56 + v71) = v72;
      if (sub_237EF8DD0())
      {
        v43 = v48;
        *(v164 + 404) = 0;
        if (*(v0 + 568))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v73 = *(v0 + 928);
        v74 = *(v0 + 920);
        v75 = *(v0 + 840);
        OUTLINED_FUNCTION_54_6();
        memcpy((v0 + 88), (v0 + 16), 0x48uLL);
        sub_237D7CB84(v75, &qword_27DEB24B8, v74, v73, v56, v43, v53, v76, v129, v133, v137, v141, v145, v149, v152, v155, v158, v161, v164, v168);
        v43 = 0;
        v77 = *(v0 + 696);
        v78 = *(v0 + 680);
        v79 = *(v0 + 672);
        sub_237EF6A90();
        (*(v78 + 8))(v77, v79);
        sub_237D0FC4C(v169, *(v0 + 1152), v80, v81, v82);
        *(v164 + 404) = v83 & 1;
        if (*(v0 + 568))
        {
LABEL_33:
          v183 = *(v0 + 848);
          v93 = *(v0 + 800);
          v94 = *(v0 + 792);
          v193 = *(v164 + 16);
          v95 = *(v0 + 616);
          v96 = *(v0 + 608);
          v97 = *(v0 + 584);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
          v178 = *v164;
          v187 = *(v0 + 592);
          v190 = *(v164 + 48);
          inited = swift_initStackObject();
          OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
          v99 = OUTLINED_FUNCTION_39_9();
          sub_237C70604(v99, v100);
          sub_237EF6A90();
          inited[3].n128_f64[0] = *(v0 + 1156);
          sub_237C758C4();
          *(v0 + 960) = sub_237EF8230();
          v101 = swift_task_alloc();
          *v101 = v178;
          *(v101 + 16) = v187;
          *(v101 + 32) = v193;
          v102 = *(v97 + 48);
          *(v0 + 968) = v102;
          *(v101 + 48) = v102;
          v103 = *(v97 + 56);
          *(v0 + 976) = v103;
          *(v101 + 56) = v103;
          *(v101 + 64) = v94;
          *(v101 + 72) = v93;
          *(v101 + 80) = v190;
          *(v101 + 96) = v96;
          *(v101 + 104) = v95;
          KeyPath = swift_getKeyPath();

          v105 = swift_task_alloc();
          *(&v106 + 1) = v94;
          *&v107 = vdupq_laneq_s64(v193, 1).u64[0];
          *(&v107 + 1) = v102;
          *&v106 = v103;
          *(v105 + 32) = v107;
          *(v105 + 48) = v106;
          *(v105 + 16) = v187;
          *(v105 + 64) = v93;
          *(v105 + 72) = v190;
          *(v105 + 80) = v96;
          *(v105 + 88) = v95;
          *(v105 + 96) = KeyPath;
          v108 = OUTLINED_FUNCTION_4_48();
          sub_237C9339C(v108, v109, v110, v183, v111, v96);
          v113 = v112;
          *(v0 + 984) = v112;

          *(v0 + 488) = v113;
          v114 = swift_task_alloc();
          *(v0 + 992) = v114;
          *(v0 + 1000) = sub_237EF8A60();
          OUTLINED_FUNCTION_5_46();
          *(v0 + 1008) = swift_getWitnessTable();
          *(v0 + 1016) = OUTLINED_FUNCTION_8_44();
          *v114 = v0;
          v114[1] = sub_237D79B48;
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_45_7();

          Transformer.applied<A>(to:eventHandler:)(v115, v116, v117, v118, v119, v120, v121);
          return;
        }

        if (v83)
        {
          v123 = *(v0 + 704);
          v124 = *(v0 + 680);
          v125 = *(v0 + 672);

          (*(v124 + 8))(v123, v125);
          goto LABEL_27;
        }
      }

      v84 = *(v0 + 936);
      v85 = *(v0 + 944) + 1;
      (*(*(v0 + 680) + 8))(*(v0 + 704), *(v0 + 672));
      if (v85 == v84)
      {
        break;
      }

      v44 = *(v0 + 944) + 1;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_31_13();
  v86 = sub_237EF8DD0();
  v87 = swift_task_alloc();
  *(v0 + 1128) = v87;
  *v87 = v0;
  if (v86)
  {
    v87[1] = sub_237D7B82C;
  }

  else
  {
    v87[1] = sub_237D7BAB0;
  }

  OUTLINED_FUNCTION_45_7();

  FullyConnectedNetworkMultiLabelClassifierModel.updatePrecisionRecallCurves<A>(_:)(v88, v89, v90, v91);
}

uint64_t sub_237D79B48()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 1024) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1032) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237D79C90()
{
  v228 = v0;
  v194 = *(v0 + 1024);
  v206 = *(v0 + 960);
  v198 = *(v0 + 912);
  v192 = *(v0 + 872);
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v224 = *(v0 + 776);
  v213 = *(v0 + 760);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  *(v0 + 496) = *(v0 + 1032);
  v7 = swift_task_alloc();
  v218 = *(v0 + 592);
  v190 = *(v0 + 968);
  *v7 = v213;
  *(v7 + 16) = v218;
  *(v7 + 32) = v224;
  *(v7 + 48) = v190;
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;
  *(v7 + 80) = v2;
  *(v7 + 88) = v1;
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  *(v9 + 16) = v218;
  *(v9 + 32) = *(&v224 + 1);
  *(v9 + 40) = v190;
  *(v9 + 56) = v4;
  *(v9 + 64) = v3;
  *(v9 + 72) = v2;
  *(v9 + 80) = v6;
  *(v9 + 88) = v5;
  *(v9 + 96) = KeyPath;
  sub_237C9339C(sub_237D7E538, v9, v218, v192, MEMORY[0x277D84A98], v6);
  v11 = v10;

  *(v0 + 504) = v11;
  type metadata accessor for ClassificationDistribution(255, *(&v213 + 1), v1, v12);
  v13 = sub_237EF8A60();
  *(v0 + 1040) = v13;
  v14 = sub_237EF8A60();
  *(v0 + 1048) = v14;
  v15 = MEMORY[0x277D83970];
  WitnessTable = swift_getWitnessTable();
  *(v0 + 1056) = WitnessTable;
  v17 = swift_getWitnessTable();
  *(v0 + 1064) = v17;
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(v0 + 496, v0 + 504, v198, *(&v213 + 1), v13, v14, v1, WitnessTable, v17, v161, v164, v167, v169, v171, v173, v175, v177, v179, v181, v183, v0 + 776, v0 + 760, v0 + 808);
  v19 = v18;

  swift_isUniquelyReferenced_nonNull_native();
  v227[0] = v206;
  sub_237C91610(0xD00000000000001FLL, 0x8000000237EFDE30, v19);
  if (sub_237EF8DD0())
  {
    v193 = (v0 + 536);
    v20 = *(v0 + 952);
    v21 = *(v0 + 936);
    v22 = *(v0 + 576);
    v23 = *(v0 + 568);
    v24 = sub_237C908A4(v206);

    *(v0 + 416) = 0xD000000000000029;
    *(v0 + 424) = 0x8000000237F117F0;
    *(v0 + 432) = v20;
    *(v0 + 440) = v21;
    *(v0 + 448) = 0;
    *(v0 + 456) = v24;
    v23(v0 + 416);
    sub_237C5EE40(v23, v22);

    v25 = *(v0 + 1164);
    v26 = v0;
    v27 = v194;
    while (1)
    {
      if (v25)
      {

        v144 = OUTLINED_FUNCTION_6_23();
        v145(v144);
        goto LABEL_31;
      }

      v28 = *(v26 + 936);
      v29 = *(v26 + 944) + 1;
      v30 = OUTLINED_FUNCTION_6_23();
      v31(v30);
      if (v29 == v28)
      {
        break;
      }

      v185 = *(v26 + 944) + 1;
      *(v26 + 944) = v185;
      v32 = *(v26 + 664);
      v33 = *(v26 + 656);
      sub_237EF6A10();
      sub_237EF6B60();
      v191 = *(v32 + *(v33 + 44));
      OUTLINED_FUNCTION_6_38();
      sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8, &qword_237F118C8, v34);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8, &qword_237F118C8);
        sub_237EF91A0();
        v35 = *(v26 + 648);
        v36 = *(v26 + 624);
        if (*(v26 + 480))
        {
          v227[0] = *(v26 + 480);
          v191(v227);

          v37 = v35;
          v38 = 0;
        }

        else
        {
          v37 = OUTLINED_FUNCTION_38_7();
        }

        __swift_storeEnumTagSinglePayload(v37, v38, 1, v36);
        v39 = *(v26 + 624);
        v40 = OUTLINED_FUNCTION_38_7();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, v41, v39);
        v43 = *(v26 + 840);
        v225 = v27;
        if (EnumTagSinglePayload == 1)
        {
          break;
        }

        v199 = *(v26 + 792);
        v202 = *(v26 + 808);
        v207 = *(v26 + 784);
        v219 = *(v26 + 776);
        v44 = *(v26 + 616);
        v45 = *(v26 + 608);
        v195 = *(v26 + 600);
        v46 = *(v26 + 584);
        v47 = OUTLINED_FUNCTION_56_9();
        v49 = v48(v47);
        v50 = MEMORY[0x2383E24F0](v49);
        v163 = *(v46 + 48);
        v166 = *(v46 + 56);
        OUTLINED_FUNCTION_41_7();
        sub_237D7CA2C(v51, v52, v53, v54, v55, v56, v195, v219, v207, v163, v166, v199, *(&v199 + 1), v202, *(&v202 + 1), v45, v44, v193);
        if (v225)
        {
          v222 = *(v26 + 840);
          v111 = *(v26 + 832);
          v215 = *(v26 + 824);
          v112 = *(v26 + 728);
          v113 = *(v26 + 720);
          v114 = *(v26 + 712);
          v211 = *(v26 + 704);
          v115 = *(v26 + 680);
          v208 = *(v26 + 672);
          v197 = *(v26 + 664);
          v204 = *(v26 + 640);
          v116 = *(v26 + 632);
          v200 = *(v26 + 624);

          objc_autoreleasePoolPop(v50);
          (*(v113 + 8))(v112, v114);
          sub_237C863A0(v197, &qword_27DEB24A8, &qword_237F118B8);
          (*(v116 + 8))(v204, v200);
          (*(v115 + 8))(v211, v208);
          (*(v111 + 8))(v222, v215);
          goto LABEL_22;
        }

        objc_autoreleasePoolPop(v50);
        v57 = OUTLINED_FUNCTION_20_24();
        v58(v57);
        v27 = 0;
      }

      v59 = *(v26 + 824);
      result = sub_237C863A0(*(v26 + 664), &qword_27DEB24A8, &qword_237F118B8);
      v61 = *(v59 + 96);
      v62 = *(v43 + v61);
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      *(v26 + 952) = v64;
      if (v63)
      {
        __break(1u);
        return result;
      }

      *(v43 + v61) = v64;
      if (sub_237EF8DD0())
      {
        v25 = 0;
      }

      else
      {
        v65 = *(v26 + 616);
        v66 = *(v26 + 600);
        v67 = *(v26 + 584);
        memcpy((v26 + 88), (v26 + 16), 0x48uLL);
        v68 = OUTLINED_FUNCTION_37_10();
        sub_237D7CB84(v68, v69, v70, v71, v67, v66, v65, v72, v160, v162, v165, v168, v170, v172, v174, v176, v178, v180, v182, v185);
        if (v225)
        {
          v223 = *(v26 + 840);
          v153 = *(v26 + 832);
          v217 = *(v26 + 824);
          v154 = *(v26 + 728);
          v155 = *(v26 + 720);
          v156 = *(v26 + 712);
          v157 = *(v26 + 704);
          v158 = *(v26 + 680);
          v159 = *(v26 + 672);

          (*(v155 + 8))(v154, v156);

          (*(v158 + 8))(v157, v159);
          (*(v153 + 8))(v223, v217);
LABEL_22:
          OUTLINED_FUNCTION_34_8();

          OUTLINED_FUNCTION_3_0();
          OUTLINED_FUNCTION_44_8();

          __asm { BRAA            X1, X16 }
        }

        sub_237EF6A90();
        v73 = OUTLINED_FUNCTION_20_24();
        v74(v73);
        sub_237D0FC4C(v186, *(v26 + 1152), v75, v76, v77);
        v27 = 0;
      }

      *(v26 + 1164) = v25 & 1;
      v78 = *(v26 + 568);
      if (v78)
      {
        v203 = *(v26 + 848);
        v79 = *(v26 + 800);
        v80 = *(v26 + 792);
        v220 = *v187;
        v81 = *(v26 + 616);
        v82 = *(v26 + 608);
        v83 = *(v26 + 584);
        v84 = *(v26 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
        v196 = *v188;
        v85 = v26;
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
        sub_237C70604(v78, v84);
        sub_237EF6A90();
        inited[3].n128_f64[0] = *(v85 + 1156);
        sub_237C758C4();
        *(v85 + 960) = sub_237EF8230();
        v87 = swift_task_alloc();
        v88 = OUTLINED_FUNCTION_59_7(v87, v196, v220);
        *(v85 + 968) = v84;
        v89[3].n128_u64[0] = v84;
        v90 = *(v83 + 56);
        *(v85 + 976) = v90;
        v89[3].n128_u64[1] = v90;
        v89[4].n128_u64[0] = v80;
        v89[4].n128_u64[1] = v79;
        v89[5] = v88;
        v89[6].n128_u64[0] = v82;
        v89[6].n128_u64[1] = v81;
        v91 = swift_getKeyPath();

        v92 = swift_task_alloc();
        OUTLINED_FUNCTION_16_31(v92);
        v93[10] = v82;
        v93[11] = v81;
        v93[12] = v91;
        v94 = OUTLINED_FUNCTION_4_48();
        sub_237C9339C(v94, v95, v96, v203, v97, v82);
        v99 = v98;
        *(v85 + 984) = v98;

        *(v85 + 488) = v99;
        v100 = swift_task_alloc();
        *(v85 + 992) = v100;
        *(v85 + 1000) = sub_237EF8A60();
        OUTLINED_FUNCTION_5_46();
        *(v85 + 1008) = swift_getWitnessTable();
        *(v85 + 1016) = OUTLINED_FUNCTION_8_44();
        *v100 = v85;
        OUTLINED_FUNCTION_15_30();
        OUTLINED_FUNCTION_23();
        goto LABEL_26;
      }
    }

LABEL_31:
    v146 = sub_237EF8DD0();
    v147 = swift_task_alloc();
    *(v26 + 1128) = v147;
    *v147 = v26;
    if (v146)
    {
      v147[1] = sub_237D7B82C;
    }

    else
    {
      v147[1] = sub_237D7BAB0;
    }

    OUTLINED_FUNCTION_44_8();

    return FullyConnectedNetworkMultiLabelClassifierModel.updatePrecisionRecallCurves<A>(_:)(v148, v149, v150, v151);
  }

  else
  {
    v221 = v206;
    v101 = *(v0 + 928);
    v102 = *(v0 + 920);
    v103 = *(v0 + 840);
    OUTLINED_FUNCTION_54_6();
    memcpy((v0 + 160), (v0 + 16), 0x48uLL);
    sub_237D7CB84(v103, v15, v102, v101, v14, v206, WitnessTable, v104, v160, v162, v165, v168, v170, v172, v174, v176, v178, v180, v182, v184);
    if (v194)
    {
      v214 = *(v0 + 840);
      v105 = *(v0 + 832);
      v210 = *(v0 + 824);
      v106 = *(v0 + 704);
      v107 = *(v0 + 680);
      v108 = *(v0 + 672);
      sub_237C5EE40(*(v0 + 568), *(v0 + 576));

      v109 = OUTLINED_FUNCTION_39_9();
      v110(v109);

      (*(v107 + 8))(v106, v108);
      (*(v105 + 8))(v214, v210);
      goto LABEL_22;
    }

    v119 = *(v0 + 848);
    v226 = *v187;
    v120 = *(v0 + 688);
    v121 = *(v0 + 680);
    v122 = *(v0 + 672);
    v123 = *(v0 + 616);
    v124 = *(v0 + 608);
    v201 = *v188;
    v216 = *v189;
    v205 = *(v0 + 592);
    v209 = *(v0 + 792);
    v212 = *(v0 + 968);
    sub_237EF6A90();
    v125 = *(v121 + 8);
    *(v0 + 1072) = v125;
    *(v0 + 1080) = (v121 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v125(v120, v122);
    v126 = *(v0 + 1160);
    swift_isUniquelyReferenced_nonNull_native();
    v227[0] = v221;
    sub_237C91610(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v126);
    *(v0 + 1088) = v221;
    v127 = swift_task_alloc();
    *v127 = v201;
    *(v127 + 16) = v205;
    *(v127 + 32) = v226;
    *(v127 + 48) = v212;
    *(v127 + 64) = v209;
    *(v127 + 80) = v216;
    *(v127 + 96) = v124;
    *(v127 + 104) = v123;
    v128 = swift_getKeyPath();

    v129 = swift_task_alloc();
    OUTLINED_FUNCTION_50_8(v129, v130, v205);
    *(v131 + 40) = v212;
    *(v131 + 56) = v209;
    *(v131 + 72) = v216;
    *(v131 + 80) = v124;
    *(v131 + 88) = v123;
    *(v131 + 96) = v128;
    sub_237C9339C(sub_237D7E538, v129, v132, v119, MEMORY[0x277D84A98], v123);
    v134 = v133;
    *(v0 + 1096) = v133;

    *(v0 + 512) = v134;
    v135 = swift_task_alloc();
    *(v0 + 1104) = v135;
    *v135 = v0;
    v135[1] = sub_237D7ABA8;
    OUTLINED_FUNCTION_23();
LABEL_26:
    OUTLINED_FUNCTION_44_8();

    return Transformer.applied<A>(to:eventHandler:)(v136, v137, v138, v139, v140, v141, v142);
  }
}

uint64_t sub_237D7ABA8()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 1112) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1120) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237D7ACF0()
{
  v186 = v0;
  v159 = (v0 + 536);
  v157 = *(v0 + 1112);
  v176 = *(v0 + 1088);
  v161 = *(v0 + 1064);
  v172 = *(v0 + 1056);
  v168 = *(v0 + 1048);
  v165 = *(v0 + 1040);
  v160 = *(v0 + 912);
  v155 = *(v0 + 872);
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v183 = *(v0 + 776);
  v178 = *(v0 + 760);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  *(v0 + 520) = *(v0 + 1120);
  v7 = swift_task_alloc();
  v153 = *(v0 + 592);
  v154 = *(v0 + 968);
  *v7 = v178;
  *(v7 + 16) = v153;
  *(v7 + 32) = v183;
  *(v7 + 48) = v154;
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;
  *(v7 + 80) = v2;
  *(v7 + 88) = v1;
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_50_8(v9, v10, v153);
  *(v11 + 40) = v154;
  *(v11 + 56) = v4;
  *(v11 + 64) = v3;
  *(v11 + 72) = v2;
  *(v11 + 80) = v6;
  *(v11 + 88) = v5;
  *(v11 + 96) = KeyPath;
  sub_237C9339C(sub_237D7E678, v9, v12, v155, MEMORY[0x277D84A98], v5);
  v14 = v13;
  v184 = v157;

  *(v0 + 528) = v14;
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(v0 + 520, v0 + 528, v160, *(&v178 + 1), v165, v168, v1, v172, v161, v129, v132, v135, v137, v139, v141, v143, v145, v147, v149, v0 + 776, v0 + 760, v0 + 808, v153.n128_i64[0]);
  v16 = v15;

  swift_isUniquelyReferenced_nonNull_native();
  v185[0] = v176;
  sub_237C91610(0xD000000000000021, 0x8000000237EFDE50, v16);
  v17 = *(v0 + 952);
  v18 = *(v0 + 936);
  v19 = *(v0 + 576);
  v20 = *(v0 + 568);
  v21 = sub_237C908A4(v176);

  *(v0 + 416) = 0xD000000000000029;
  *(v0 + 424) = 0x8000000237F117F0;
  *(v0 + 432) = v17;
  *(v0 + 440) = v18;
  *(v0 + 448) = 0;
  *(v0 + 456) = v21;
  v22 = v0;
  v20(v0 + 416);
  sub_237C5EE40(v20, v19);

  v23 = *(v0 + 1164);
  while (1)
  {
    if (v23)
    {

      v112 = OUTLINED_FUNCTION_6_23();
      v113(v112);
      goto LABEL_26;
    }

    v24 = *(v22 + 936);
    v25 = *(v22 + 944) + 1;
    v26 = OUTLINED_FUNCTION_6_23();
    v27(v26);
    if (v25 == v24)
    {
      break;
    }

    v156 = *(v22 + 944) + 1;
    *(v22 + 944) = v156;
    v28 = *(v22 + 664);
    v29 = *(v22 + 656);
    sub_237EF6A10();
    sub_237EF6B60();
    v158 = *(v28 + *(v29 + 44));
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8, &qword_237F118C8, v30);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8, &qword_237F118C8);
      sub_237EF91A0();
      v31 = *(v22 + 648);
      v32 = *(v22 + 624);
      if (*(v22 + 480))
      {
        v185[0] = *(v22 + 480);
        v158(v185);

        v33 = v31;
        v34 = 0;
      }

      else
      {
        v33 = OUTLINED_FUNCTION_38_7();
      }

      __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
      v35 = *(v22 + 624);
      v36 = OUTLINED_FUNCTION_38_7();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, v37, v35);
      v39 = *(v22 + 840);
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v169 = *(v22 + 808);
      v166 = *(v22 + 792);
      v179 = *(v22 + 776);
      v173 = *(v22 + 784);
      v40 = *(v22 + 616);
      v41 = *(v22 + 608);
      v162 = *(v22 + 600);
      v42 = *(v22 + 584);
      v43 = OUTLINED_FUNCTION_56_9();
      v45 = v44(v43);
      v46 = MEMORY[0x2383E24F0](v45);
      v131 = *(v42 + 48);
      v134 = *(v42 + 56);
      OUTLINED_FUNCTION_41_7();
      sub_237D7CA2C(v47, v48, v49, v50, v51, v52, v162, v179, v173, v131, v134, v166, *(&v166 + 1), v169, *(&v169 + 1), v41, v40, v159);
      if (v184)
      {
        v181 = *(v22 + 840);
        v104 = *(v22 + 832);
        v177 = *(v22 + 824);
        v105 = *(v22 + 728);
        v106 = *(v22 + 720);
        v107 = *(v22 + 712);
        v108 = *(v22 + 680);
        v174 = *(v22 + 672);
        v175 = *(v22 + 704);
        v164 = *(v22 + 664);
        v171 = *(v22 + 640);
        v109 = *(v22 + 632);
        v167 = *(v22 + 624);

        objc_autoreleasePoolPop(v46);
        (*(v106 + 8))(v105, v107);
        sub_237C863A0(v164, &qword_27DEB24A8, &qword_237F118B8);
        (*(v109 + 8))(v171, v167);
        (*(v108 + 8))(v175, v174);
        (*(v104 + 8))(v181, v177);
        goto LABEL_21;
      }

      objc_autoreleasePoolPop(v46);
      v53 = OUTLINED_FUNCTION_20_24();
      v54(v53);
      v184 = 0;
    }

    v55 = *(v22 + 824);
    result = sub_237C863A0(*(v22 + 664), &qword_27DEB24A8, &qword_237F118B8);
    v57 = *(v55 + 96);
    v58 = *(v39 + v57);
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    *(v22 + 952) = v60;
    if (v59)
    {
      __break(1u);
      return result;
    }

    *(v39 + v57) = v60;
    if (sub_237EF8DD0())
    {
      v23 = 0;
    }

    else
    {
      v61 = *(v22 + 616);
      v62 = *(v22 + 600);
      v63 = *(v22 + 584);
      memcpy((v22 + 88), (v22 + 16), 0x48uLL);
      v64 = OUTLINED_FUNCTION_37_10();
      sub_237D7CB84(v64, v65, v66, v67, v63, v62, v61, v68, v128, v130, v133, v136, v138, v140, v142, v144, v146, v148, v150, v151);
      if (v184)
      {
        v182 = *(v22 + 840);
        v121 = *(v22 + 832);
        v122 = *(v22 + 824);
        v123 = *(v22 + 728);
        v124 = *(v22 + 720);
        v125 = *(v22 + 712);

        (*(v124 + 8))(v123, v125);

        v126 = OUTLINED_FUNCTION_39_9();
        v127(v126);
        (*(v121 + 8))(v182, v122);
LABEL_21:
        OUTLINED_FUNCTION_34_8();

        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_43_10();

        __asm { BRAA            X1, X16 }
      }

      sub_237EF6A90();
      v69 = OUTLINED_FUNCTION_20_24();
      v70(v69);
      sub_237D0FC4C(v156, *(v22 + 1152), v71, v72, v73);
      v184 = 0;
    }

    *(v22 + 1164) = v23 & 1;
    v74 = *(v22 + 568);
    if (v74)
    {
      v170 = *(v22 + 848);
      v75 = *(v22 + 800);
      v76 = *(v22 + 792);
      v180 = *v151;
      v77 = *(v22 + 616);
      v78 = *(v22 + 608);
      v79 = *(v22 + 584);
      v80 = *(v22 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
      v163 = *v152;
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
      sub_237C70604(v74, v80);
      sub_237EF6A90();
      inited[3].n128_f64[0] = *(v22 + 1156);
      sub_237C758C4();
      *(v22 + 960) = sub_237EF8230();
      v82 = swift_task_alloc();
      v83 = OUTLINED_FUNCTION_59_7(v82, v163, v180);
      *(v22 + 968) = v80;
      v84[3].n128_u64[0] = v80;
      v85 = *(v79 + 56);
      *(v22 + 976) = v85;
      v84[3].n128_u64[1] = v85;
      v84[4].n128_u64[0] = v76;
      v84[4].n128_u64[1] = v75;
      v84[5] = v83;
      v84[6].n128_u64[0] = v78;
      v84[6].n128_u64[1] = v77;
      v86 = swift_getKeyPath();

      v87 = swift_task_alloc();
      OUTLINED_FUNCTION_16_31(v87);
      v88[10] = v78;
      v88[11] = v77;
      v88[12] = v86;
      v89 = OUTLINED_FUNCTION_4_48();
      sub_237C9339C(v89, v90, v91, v170, v92, v78);
      v94 = v93;
      *(v22 + 984) = v93;

      *(v22 + 488) = v94;
      v95 = swift_task_alloc();
      *(v22 + 992) = v95;
      *(v22 + 1000) = sub_237EF8A60();
      OUTLINED_FUNCTION_5_46();
      *(v22 + 1008) = swift_getWitnessTable();
      *(v22 + 1016) = OUTLINED_FUNCTION_8_44();
      *v95 = v22;
      OUTLINED_FUNCTION_15_30();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_43_10();

      return Transformer.applied<A>(to:eventHandler:)(v96, v97, v98, v99, v100, v101, v102);
    }
  }

LABEL_26:
  v114 = sub_237EF8DD0();
  v115 = swift_task_alloc();
  *(v22 + 1128) = v115;
  *v115 = v22;
  if (v114)
  {
    v115[1] = sub_237D7B82C;
  }

  else
  {
    v115[1] = sub_237D7BAB0;
  }

  OUTLINED_FUNCTION_43_10();

  return FullyConnectedNetworkMultiLabelClassifierModel.updatePrecisionRecallCurves<A>(_:)(v116, v117, v118, v119);
}

uint64_t sub_237D7B82C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 1136) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D7B928()
{
  if ((sub_237D0510C() & 1) == 0)
  {
    v1 = FullyConnectedNetworkMultiLabelClassifierModel.debugDescription.getter();
    sub_237D05198(v1, v2);
  }

  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[68];
  (*(v0[90] + 8))(v0[91], v0[89]);
  (*(v4 + 16))(v6, v3, v5);
  v7 = OUTLINED_FUNCTION_39_9();
  v8(v7);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237D7BAB0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 1144) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D7BBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[91];
  v16 = v14[90];
  v17 = v14[89];
  sub_237C5EE40(v14[71], v14[72]);
  (*(v16 + 8))(v15, v17);
  v18 = OUTLINED_FUNCTION_55_1();
  v19(v18);
  v20 = OUTLINED_FUNCTION_31_0();
  v21(v20);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D7BCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[134];
  v31 = v14[105];
  v16 = v14[104];
  v17 = v14[103];
  v18 = v14[91];
  v19 = v14[90];
  v20 = v14[89];
  sub_237C5EE40(v14[71], v14[72]);
  (*(v19 + 8))(v18, v20);
  v21 = OUTLINED_FUNCTION_55_1();
  v15(v21);
  (*(v16 + 8))(v31, v17);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_237D7BE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v14 = OUTLINED_FUNCTION_25_19();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D7BEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v14 = OUTLINED_FUNCTION_25_19();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v10[21] = a9;
  v10[22] = a10;
  v10[19] = v11;
  v10[20] = v13;
  v10[17] = v14;
  v10[18] = v15;
  v10[15] = v16;
  v10[16] = v17;
  v10[13] = v18;
  v10[14] = v19;
  v10[23] = *(v13 - 8);
  v10[24] = OUTLINED_FUNCTION_27_0();
  v10[25] = *(v12 - 8);
  v10[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v20, v21, v22);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237D7C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[23];
  v11 = v10[24];
  v13 = v10[20];
  v14 = v10[15];
  (*(v10[25] + 16))(v10[26], v10[14], v10[19], a4, a5, a6, a7, a8);
  v15 = sub_237EF7E90();
  v16 = sub_237EF8CF0();
  type metadata accessor for AnnotatedFeature(0, v15, v16, v17);
  v18 = sub_237EF8A90();
  v10[27] = v18;
  v10[11] = v18;
  (*(v12 + 16))(v11, v14, v13);
  v19 = sub_237EF8A90();
  v10[28] = v19;
  v10[12] = v19;
  v20 = swift_task_alloc();
  v10[29] = v20;
  v21 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v20 = v10;
  v20[1] = sub_237D7C28C;
  v23 = OUTLINED_FUNCTION_52_9(WitnessTable);

  return sub_237D789B0(v23, (v10 + 11), (v10 + 12), v24, v25, v26, v21, v21, a9, a10);
}

uint64_t sub_237D7C28C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237D7C400()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237D7C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v80 = v20;
  v81 = v23;
  v25 = v24;
  v27 = v26;
  v83 = v28;
  v84 = v26;
  v30 = v29;
  OUTLINED_FUNCTION_29_17();
  memcpy(v31, v32, v33);
  OUTLINED_FUNCTION_29_17();
  memcpy(v34, v35, v36);
  v37 = v30[3];
  v79 = v30[2];
  v85[12] = v79;
  v85[13] = v37;
  v76 = v37;
  v38 = v30[5];
  v78 = v30[4];
  v85[14] = v27;
  v85[15] = v78;
  v39 = v30[6];
  v40 = v30[7];
  v85[16] = v38;
  v85[17] = v39;
  v82 = v38;
  v42 = v30[8];
  v41 = v30[9];
  v85[18] = v40;
  v85[19] = v42;
  v44 = v30[10];
  v43 = v30[11];
  v85[20] = v41;
  v85[21] = v44;
  v75 = v43;
  v85[22] = v43;
  v85[23] = v25;
  KeyPath = swift_getKeyPath();
  v85[2] = v84;
  v85[3] = v38;
  v72 = v40;
  v73 = v39;
  v85[4] = v39;
  v85[5] = v40;
  v70 = v41;
  v71 = v42;
  v85[6] = v42;
  v85[7] = v41;
  v74 = v44;
  v85[8] = v44;
  v85[9] = v25;
  v46 = v25;
  v85[10] = KeyPath;
  v47 = v79;
  v48 = sub_237EF7E90();
  v77 = v46;
  sub_237C9339C(sub_237D7E4CC, v85, v84, v48, MEMORY[0x277D84A98], v46);
  v50 = v49;

  a10 = v50;
  OUTLINED_FUNCTION_23_8();
  v51 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_24();
  v53 = swift_getWitnessTable();
  v54 = v81;
  v81 = v30;
  sub_237D13CC4(&a10, v54, v30, v51, v79, WitnessTable, v53, v78, v82);

  if (!v20)
  {
    v55 = memcpy(v86, v87, sizeof(v86));
    MEMORY[0x28223BE20](v55);
    v68[0] = v47;
    v68[1] = v76;
    v56 = v82;
    v58 = v72;
    v57 = v73;
    v59 = v70;
    v60 = v71;
    v68[11] = v77;
    v61 = swift_getKeyPath();
    v80 = &v69;
    MEMORY[0x28223BE20](v61);
    v62 = v84;
    v68[2] = v84;
    v68[3] = v56;
    v68[4] = v57;
    v68[5] = v58;
    v68[6] = v60;
    v68[7] = v59;
    v63 = v77;
    v68[8] = v74;
    v68[9] = v77;
    v68[10] = v64;
    v65 = sub_237EF8CF0();
    sub_237C9339C(sub_237D7E4CC, v68, v62, v65, MEMORY[0x277D84A98], v63);
    v67 = v66;

    a10 = v67;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    sub_237D7D198();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237D7C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v46[2] = v22;
  v47 = v21;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v46[1] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24D0, &unk_237F11920);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  v38 = v46 - v37;
  memcpy(v64, v23, 0x48uLL);
  v39 = v29[2];
  v48[1] = v29[1];
  v50 = v39;
  v40 = v29[4];
  v51 = v29[3];
  v49 = v27;
  v52 = v40;
  v53 = v29[5];
  v54 = v25;
  v55 = v64;
  v56 = v33;
  v57 = v31;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  v43 = v47;
  sub_237C9339C(sub_237D7E564, v48, v27, v41, v42, v25);
  if (v43)
  {
    goto LABEL_4;
  }

  v44 = sub_237EF64F0();
  if ((v64[7] & 0x8000000000000000) == 0)
  {
    v45 = sub_237EF64E0();
    v62 = v44;
    v63 = MEMORY[0x277D2CD60];
    v61 = v45;
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8, &unk_237F1C880);
    sub_237C96710(&qword_27DEB24D8, &qword_27DEAE2B8, &unk_237F1C880, MEMORY[0x277D83980]);
    sub_237D7E5CC();
    sub_237C96710(&qword_27DEB24E8, &qword_27DEAE2B0, &unk_237F11860, MEMORY[0x277D2CC60]);
    sub_237E9194C(v38);
    sub_237EF6B70();
LABEL_4:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  __break(1u);
}

uint64_t sub_237D7CA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v29[9] = a1;
  v23 = sub_237EF6B10();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237EF8B90();
  if (v18)
  {
    *a18 = v18;
  }

  else
  {
    v29[0] = a4;
    v29[1] = a5;
    v29[2] = a8;
    v29[3] = a9;
    v29[4] = a12;
    v29[5] = a13;
    v29[6] = a14;
    v29[7] = a15;
    v28 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, v29);
    sub_237E2AF24(a3, v28);
    sub_237EF69F0();
    return (*(v24 + 8))(v26, v23);
  }

  return result;
}

void sub_237D7CB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v74 = v21;
  v22 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v73 = v33;
  v65 = v34;
  v70 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8, &unk_237F16690);
  OUTLINED_FUNCTION_18(v36);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v38);
  v69 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v67 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17(&v65 - v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  OUTLINED_FUNCTION_1();
  v66 = v47;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v49);
  memcpy(v85, v22, 0x48uLL);
  v50 = v28[2];
  v75[1] = v28[1];
  v77 = v50;
  v51 = v28[4];
  v78 = v28[3];
  v76 = v26;
  v79 = v51;
  v80 = v28[5];
  v81 = v24;
  v82 = v85;
  v83 = v32;
  v84 = v30;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  v53 = v74;
  sub_237C9339C(sub_237D7E648, v75, v26, v46, v52, v24);
  if (!v53)
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8, &unk_237F1C880);
    OUTLINED_FUNCTION_17_30();
    v57 = sub_237C96710(v55, &qword_27DEAE2B8, &unk_237F1C880, v56);
    sub_237D7DF10(v54, v57, v71);

    sub_237EF6420();
    type metadata accessor for FullyConnectedNetwork(0);
    sub_237C77B74();
    sub_237EF6830();
    v58 = *(v67 + 8);
    v59 = v69;
    v58(v43, v69);
    sub_237EF6400();
    v60 = *MEMORY[0x277D2CD58];
    v61 = sub_237EF64D0();
    v62 = v68;
    (*(*(v61 - 8) + 104))(v68, v60, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    v63 = v72;
    sub_237EF6560();
    sub_237C863A0(v62, &qword_27DEB24C8, &unk_237F16690);
    v64 = OUTLINED_FUNCTION_55_1();
    (v58)(v64);
    v58(v63, v59);
    (*(v66 + 8))(v71, v46);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D7CFBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return FullyConnectedNetworkMultiLabelClassifier.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237D7D09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237C6A904;

  return FullyConnectedNetworkMultiLabelClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

void sub_237D7D198()
{
  OUTLINED_FUNCTION_13_4();
  v57 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  AssociatedConformanceWitness = v7;
  v8 = *(v5 + 24);
  v48 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v45 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v51 = v11;
  OUTLINED_FUNCTION_1_1();
  v43 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17(v15 - v14);
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v53 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v44 = v23;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  memcpy(v56, v57, sizeof(v56));
  v52 = v6;
  v50 = *(v6 + 88);
  if (sub_237EF8C70() < 2)
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v34 = swift_allocError();
    *v35 = 0xD000000000000030;
    v35[1] = 0x8000000237EFEA50;
    v35[2] = 0xD000000000000027;
    v35[3] = 0x8000000237EFBED0;
    OUTLINED_FUNCTION_47_5(v34, v35);
  }

  else
  {
    (*(v17 + 16))(v21, AssociatedConformanceWitness, v4);
    sub_237EF86F0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    ++v45;
    v46 = v26;
    for (i = AssociatedTypeWitness; ; AssociatedTypeWitness = i)
    {
      v27 = sub_237EF91A0();
      if (!v54)
      {
        (*(v44 + 8))(v26, AssociatedTypeWitness);
        goto LABEL_9;
      }

      MEMORY[0x28223BE20](v27);
      v28 = v52;
      v29 = *(v52 + 48);
      *(&v42 - 11) = *(v52 + 32);
      *(&v42 - 14) = *(v28 + 16);
      *(&v42 - 13) = v8;
      *(&v42 - 12) = v4;
      *(&v42 - 9) = v29;
      *(&v42 - 7) = *(v28 + 64);
      v30 = v50;
      *(&v42 - 5) = *(v28 + 80);
      *(&v42 - 4) = v30;
      *(&v42 - 3) = v53;
      *(&v42 - 2) = v56;
      OUTLINED_FUNCTION_23_8();
      sub_237EF8CF0();
      swift_getWitnessTable();
      v31 = v51;
      sub_237EF87D0();

      v32 = OUTLINED_FUNCTION_38_7();
      if (__swift_getEnumTagSinglePayload(v32, v33, v8) != 1)
      {
        break;
      }

      (*v45)(v31, v48);
      v26 = v46;
    }

    v36 = v43;
    v37 = v42;
    (*(v43 + 32))(v42, v31, v8);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x27206C6562614CLL, 0xE700000000000000);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237EFE4B0);
    v38 = v54;
    v39 = v55;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v40 = swift_allocError();
    *v41 = 0xD000000000000030;
    v41[1] = 0x8000000237EFEA50;
    v41[2] = v38;
    v41[3] = v39;
    OUTLINED_FUNCTION_47_5(v40, v41);
    (*(v36 + 8))(v37, v8);
    (*(v44 + 8))(v46, i);
  }

LABEL_9:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D7D6CC()
{
  OUTLINED_FUNCTION_13_4();
  v104 = v0;
  v3 = v2;
  v116 = v4;
  v117 = v5;
  v115 = v6;
  v103 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v10);
  v11 = sub_237EF6450();
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17(v14 - v13);
  v15 = v3[3];
  OUTLINED_FUNCTION_1_1();
  v111 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v119 = v19 - v18;
  v20 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v118 = v22;
  v127 = v3[2];
  v23 = v3[4];
  v113 = v3;
  v114 = v23;
  v24 = sub_237EF7E90();
  v112 = v24;
  OUTLINED_FUNCTION_1_1();
  v26 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58_6();
  v28 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26();
  v101 = (v32 - v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v98 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v98 - v38;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v98 - v42;
  (*(v26 + 16))(v1, v115, v24, v41);
  v44 = v113;
  sub_237D4A7B4(v1, v127, v36);
  sub_237EF69B0();
  v102 = v30;
  v45 = *(v30 + 8);
  v100 = v36;
  v45(v36, v28);
  v108 = v43;
  sub_237EF6AE0();
  v99 = v39;
  v109 = v28;
  v45(v39, v28);
  v46 = *(v44 + 88);
  v114 = *(v44 + 64);
  v47 = sub_237E5E170(v116, v117, v15, v114, v46);
  sub_237CDC1E8(v47, 0.0);
  v128 = v48;
  v49 = sub_237EF8CF0();
  v51 = type metadata accessor for AnnotatedFeature(0, v112, v49, v50);
  v52 = *(v115 + *(v51 + 36));
  v106 = v45;
  v107 = v30 + 8;
  v113 = v46;
  if ((v52 & 0xC000000000000001) != 0)
  {
    sub_237EF8260();
    sub_237EF92A0();
    sub_237EF8CC0();
    v53 = v122;
    v54 = v123;
    v55 = v124;
    v56 = v125;
    v57 = v126;
  }

  else
  {
    v58 = -1 << *(v52 + 32);
    v54 = v52 + 56;
    v55 = ~v58;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v57 = v60 & *(v52 + 56);
    v53 = sub_237EF8260();
    v56 = 0;
  }

  v105 = v55;
  v110 = v111 + 16;
  v61 = (v111 + 32);
  v112 = (v111 + 8);
  v62 = v118;
  v115 = v53;
  if (v53 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v63 = v57;
  v64 = v56;
  if (v57)
  {
LABEL_13:
    v66 = (v63 - 1) & v63;
    (*(v111 + 16))(v62, *(v53 + 48) + *(v111 + 72) * (__clz(__rbit64(v63)) | (v64 << 6)), v15);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v15);
      v68 = v62;
      v69 = v119;
      (*v61)(v119, v68, v15);
      v70 = sub_237E5E354(v69, v116, v117, v15, v114, v113);
      if (v71)
      {
        break;
      }

      v72 = v70;
      v73 = v128;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E64308(v128, v74, v75, v76);
        v73 = v77;
      }

      (*v112)(v119, v15);
      if ((v72 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (v72 >= *(v73 + 16))
      {
        goto LABEL_29;
      }

      v128 = v73;
      *(v73 + 4 * v72 + 32) = 1065353216;
      v56 = v64;
      v57 = v66;
      v62 = v118;
      v53 = v115;
      if ((v115 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (!sub_237EF92B0())
      {
        goto LABEL_23;
      }

      v67 = v118;
      sub_237EF9D10();
      v62 = v67;
      swift_unknownObjectRelease();
      v64 = v56;
      v66 = v57;
    }

    v120 = 0;
    v121 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x697461746F6E6E41, 0xEB00000000206E6FLL);
    v93 = v119;
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFEA90);
    v94 = v120;
    v95 = v121;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v96 = swift_allocError();
    *v97 = 0xD000000000000030;
    v97[1] = 0x8000000237EFEA50;
    v97[2] = v94;
    v97[3] = v95;
    OUTLINED_FUNCTION_47_5(v96, v97);
    OUTLINED_FUNCTION_33_11();
    (*v112)(v93, v15);
    v106(v108, v109);
LABEL_24:
    OUTLINED_FUNCTION_12_6();
  }

  else
  {
    v65 = v56;
    while (1)
    {
      v64 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v64 >= ((v55 + 64) >> 6))
      {
LABEL_23:
        OUTLINED_FUNCTION_37_1();
        __swift_storeEnumTagSinglePayload(v78, v79, v80, v15);
        OUTLINED_FUNCTION_33_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_237F03530;
        *(v81 + 32) = *(v128 + 16);
        sub_237EF6460();
        v120 = v128;
        sub_237EF64B0();
        OUTLINED_FUNCTION_37_1();
        __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
        OUTLINED_FUNCTION_17_30();
        sub_237C96710(v86, &qword_27DEAE3D8, &qword_237F07050, v87);
        v88 = v99;
        sub_237EF6A20();
        v89 = *(v102 + 16);
        v91 = v108;
        v90 = v109;
        v89(v100, v108, v109);
        v89(v101, v88, v90);
        sub_237EF6410();
        v92 = v106;
        v106(v88, v90);
        v92(v91, v90);
        goto LABEL_24;
      }

      v63 = *(v54 + 8 * v64);
      ++v65;
      if (v63)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_237D7DF10@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8, &qword_237F08EB8);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_58_6();
  v7 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v34 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v33 = &v31 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  sub_237C9339C(sub_237D7E1C0, 0, a1, v7, MEMORY[0x277D84A98], a2);
  v21 = sub_237EF6430();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  sub_237EF6970();
  sub_237C9339C(sub_237D7E1EC, 0, v32, v7, MEMORY[0x277D84A98], a2);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  sub_237EF6970();
  v28 = *(v9 + 16);
  v28(v33, v20, v7);
  v28(v34, v17, v7);
  sub_237EF6410();
  v29 = *(v9 + 8);
  v29(v17, v7);
  return (v29)(v20, v7);
}

uint64_t sub_237D7E218(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  a3(v11);
  sub_237EF6950();
  return (*(v6 + 8))(v10, v4);
}

void sub_237D7E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier(0, v15);
  sub_237D7D6CC();
  if (v14)
  {
    *a14 = v14;
  }
}

uint64_t sub_237D7E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D7E424(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_237D7E464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237D7E5CC()
{
  result = qword_27DEB24E0;
  if (!qword_27DEB24E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE2B0, &unk_237F11860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB24E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_44()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_16_31(uint64_t a1)
{
  *(&v6 + 1) = v1;
  *&v7 = vdupq_laneq_s64(*(v5 - 144), 1).u64[0];
  *(&v7 + 1) = v2;
  *&v6 = v3;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  result = *(v5 - 176);
  v9 = *(v5 - 160);
  *(a1 + 16) = result;
  *(a1 + 64) = v4;
  *(a1 + 72) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_16()
{
}

uint64_t OUTLINED_FUNCTION_33_11()
{

  return sub_237C9FE9C();
}

uint64_t OUTLINED_FUNCTION_34_8()
{
  *(v1 - 144) = *(v0 + 640);
}

void *OUTLINED_FUNCTION_46_8()
{

  return memcpy((v1 - 176), (v0 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 5;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_50_8(__n128 *a1, double a2, __n128 a3)
{
  a1[1] = a3;
  result = *(v3 - 128);
  a1[2].n128_u64[0] = result.n128_u64[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1)
{
  v3 = *(v1 + 104);
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  return v3;
}

__n128 OUTLINED_FUNCTION_59_7(uint64_t a1, __n128 a2, __n128 a3)
{
  *a1 = a2;
  result = *(v3 - 160);
  *(a1 + 16) = *(v3 - 176);
  *(a1 + 32) = a3;
  return result;
}

uint64_t sub_237D7E9A8@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v65 = v2;
  MEMORY[0x28223BE20](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - v7;
  v9 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_237EF6A30();
  v16 = sub_237EF6470();
  v17 = *(v11 + 8);
  v17(v15, v9);
  sub_237EF6A30();
  v66 = sub_237EF6470();
  v69 = v9;
  v70 = v17;
  v71 = v11 + 8;
  v17(v15, v9);
  sub_237EF6960();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  result = swift_allocObject();
  *(result + 16) = xmmword_237F105F0;
  v67 = v16;
  *(result + 32) = v16;
  v20 = *v68;
  v21 = v68[1];
  v22 = *v68 * v21;
  if ((*v68 * v21) >> 64 == v22 >> 63)
  {
    *(result + 40) = v22;
    *(result + 48) = v66;
    *(result + 56) = 1;
    v59 = xmmword_237F105F0;
    v60 = v20;
    v61 = v21;
    sub_237EF6460();
    v63 = v18;
    sub_237EF6AC0();
    v70(v15, v69);
    v23 = v65;
    v25 = v65 + 8;
    v24 = *(v65 + 8);
    v26 = OUTLINED_FUNCTION_10_37();
    v24(v26);
    v65 = *(v23 + 32);
    v27 = OUTLINED_FUNCTION_5_47();
    v28(v27);
    v62 = type metadata accessor for SpatialTemporalGraphConvolutionModel(0);
    sub_237EF6C30();
    sub_237EF6850();
    v29 = OUTLINED_FUNCTION_10_37();
    v24(v29);
    v58 = v24;
    v30 = OUTLINED_FUNCTION_5_47();
    v31 = v65;
    (v65)(v30);
    v32 = swift_allocObject();
    *(v32 + 16) = v59;
    v33 = v60;
    v34 = v61;
    *(v32 + 32) = v67;
    *(v32 + 40) = v33;
    v35 = v66;
    *(v32 + 48) = v34;
    *(v32 + 56) = v35;
    sub_237EF6460();
    sub_237EF6AC0();
    v70(v15, v69);
    v36 = OUTLINED_FUNCTION_10_37();
    v24(v36);
    v37 = OUTLINED_FUNCTION_5_47();
    v31(v37);
    sub_237EF6960();
    v38 = OUTLINED_FUNCTION_10_37();
    v24(v38);
    v57 = v25;
    v39 = OUTLINED_FUNCTION_5_47();
    v31(v39);
    v40 = v62;
    v41 = v68;
    type metadata accessor for SpatialTemporalGraphConvolution(0);
    v66 = v15;
    v42 = v5;
    OUTLINED_FUNCTION_2_56();
    sub_237D80838(v43, v44, &unk_237F11FA4);
    sub_237EF8950();
    v45 = OUTLINED_FUNCTION_10_37();
    v46 = v58;
    v58(v45);
    (v31)(v8, v42, v1);
    v47 = v41 + *(v40 + 28);
    v48 = v47[48];
    v49 = *(v47 + 1);
    v72 = *v47;
    v73 = v49;
    v74 = *(v47 + 2);
    v75 = v48;
    sub_237EF6850();
    v50 = OUTLINED_FUNCTION_10_37();
    v51 = v1;
    v46(v50);
    v52 = v1;
    v53 = v65;
    (v65)(v8, v42, v52);
    sub_237EF6940();
    sub_237EF6850();
    (v46)(v8, v51);
    v53(v8, v42, v51);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_237F04760;
    v55 = v41[4];
    v56 = v66;
    *(v54 + 32) = v67;
    *(v54 + 40) = v55;
    sub_237EF6460();
    sub_237EF6AC0();
    v70(v56, v69);
    return (v46)(v8, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D7EF24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000237EFEB30 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74756C6F766E6F63 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696C6F6F70 && a2 == 0xE700000000000000;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E63677473 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_237D7F0D4(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x74756C6F766E6F63;
      break;
    case 3:
      result = 0x676E696C6F6F70;
      break;
    case 4:
      result = 0x6E63677473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D7F184()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2568, &qword_237F11B20);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  OUTLINED_FUNCTION_16_32();
  v8 = sub_237D80548();
  OUTLINED_FUNCTION_15_31(&type metadata for SpatialTemporalGraphConvolutionModel.CodingKeys, v9, v8);
  v10 = *(v0 + 4);
  v11 = v0[1];
  v38 = *v0;
  v39 = v11;
  *&v40 = v10;
  v42 = 0;
  v12 = sub_237D80704();
  OUTLINED_FUNCTION_12_33(v12, v13, v14, &type metadata for SpatialTemporalGraphConvolutionModel.Configuration, v12);
  if (!v1)
  {
    v15 = type metadata accessor for SpatialTemporalGraphConvolutionModel(0);
    v16 = v15[5];
    LOBYTE(v38) = 1;
    sub_237EF6C30();
    OUTLINED_FUNCTION_1_60();
    v19 = sub_237D80838(v17, v18, MEMORY[0x277D2CEF8]);
    OUTLINED_FUNCTION_9_33(v0 + v16, &v38, v20, v21, v19);
    v22 = v15[6];
    LOBYTE(v38) = 2;
    sub_237EF6940();
    OUTLINED_FUNCTION_3_57();
    v25 = sub_237D80838(v23, v24, MEMORY[0x277D2CE88]);
    OUTLINED_FUNCTION_9_33(v0 + v22, &v38, v26, v27, v25);
    v28 = (v0 + v15[7]);
    v29 = *(v28 + 48);
    v30 = v28[1];
    v38 = *v28;
    v39 = v30;
    v40 = v28[2];
    v41 = v29;
    v42 = 3;
    v31 = sub_237D80758();
    OUTLINED_FUNCTION_12_33(v31, v32, v33, MEMORY[0x277D2CD18], v31);
    *&v38 = *(v0 + v15[8]);
    v42 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2550, &qword_237F11B18);
    v34 = sub_237D807AC(&qword_27DEB2588, &qword_27DEB2590, &unk_237F11F54, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_9_33(&v38, &v42, v35, v36, v34);
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_237D7F418@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v27 = v5;
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v30 = sub_237EF6C30();
  OUTLINED_FUNCTION_1();
  v29 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2528, &qword_237F11B10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v31 = type metadata accessor for SpatialTemporalGraphConvolutionModel(0);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_16_32();
  sub_237D80548();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_237D8059C();
  sub_237EF9970();
  *v17 = v32;
  *(v17 + 16) = v33;
  *(v17 + 32) = v34;
  OUTLINED_FUNCTION_1_60();
  sub_237D80838(v18, v19, MEMORY[0x277D2CF00]);
  sub_237EF9970();
  (*(v29 + 32))(v17 + v31[5], v13, v30);
  LOBYTE(v32) = 2;
  OUTLINED_FUNCTION_3_57();
  sub_237D80838(v20, v21, MEMORY[0x277D2CE90]);
  OUTLINED_FUNCTION_11_35();
  (*(v27 + 32))(v17 + v31[6], v8, v28);
  sub_237D805F0();
  sub_237EF9970();
  v22 = v17 + v31[7];
  *v22 = v32;
  *(v22 + 16) = v33;
  *(v22 + 32) = v34;
  *(v22 + 48) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2550, &qword_237F11B18);
  sub_237D807AC(&qword_27DEB2558, &qword_27DEB2560, &unk_237F11F7C, MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_11_35();
  v23 = OUTLINED_FUNCTION_4_49();
  v24(v23);
  *(v17 + v31[8]) = v32;
  sub_237D80644(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237D806A8(v17);
}

uint64_t sub_237D7F97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D7EF24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D7F9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D35F20();
  *a1 = result;
  return result;
}

uint64_t sub_237D7F9CC(uint64_t a1)
{
  v2 = sub_237D80548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D7FA08(uint64_t a1)
{
  v2 = sub_237D80548();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D7FA78(uint64_t a1, uint64_t a2)
{
  sub_237D80838(&qword_27DEB2598, type metadata accessor for SpatialTemporalGraphConvolutionModel, &unk_237F11AA4);

  return sub_237EF6890();
}

uint64_t sub_237D7FAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_237D80838(&qword_27DEB2598, type metadata accessor for SpatialTemporalGraphConvolutionModel, &unk_237F11AA4);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237D7FB78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237EFCF60 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E696F7079656BLL && a2 == 0xED0000746E756F43;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6953776F646E6977 && a2 == 0xEA0000000000657ALL;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x756F436C6562616CLL && a2 == 0xEA0000000000746ELL)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_237D7FD3C(char a1)
{
  result = 0x746E696F7079656BLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6953776F646E6977;
      break;
    case 3:
      result = 0x7A69536863746162;
      break;
    case 4:
      result = 0x756F436C6562616CLL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_237D7FDF8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25B0, &qword_237F11B30);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  OUTLINED_FUNCTION_16_32();
  v8 = sub_237D80880();
  OUTLINED_FUNCTION_15_31(&type metadata for SpatialTemporalGraphConvolutionModel.Configuration.CodingKeys, v9, v8);
  v10 = *v0;
  v21 = 0;
  OUTLINED_FUNCTION_7_40(v10, &v21);
  if (!v1)
  {
    v11 = v0[1];
    v20 = 1;
    OUTLINED_FUNCTION_7_40(v11, &v20);
    v12 = v0[2];
    v19 = 2;
    OUTLINED_FUNCTION_7_40(v12, &v19);
    v13 = v0[3];
    v18 = 3;
    OUTLINED_FUNCTION_7_40(v13, &v18);
    v14 = v0[4];
    v17 = 4;
    OUTLINED_FUNCTION_7_40(v14, &v17);
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_237D7FF6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25A0, &qword_237F11B28);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D80880();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = OUTLINED_FUNCTION_8_45(&v22);
  v21 = 1;
  v12 = OUTLINED_FUNCTION_8_45(&v21);
  v20 = 2;
  v17 = OUTLINED_FUNCTION_8_45(&v20);
  v19 = 3;
  v16 = OUTLINED_FUNCTION_8_45(&v19);
  v18 = 4;
  v13 = OUTLINED_FUNCTION_8_45(&v18);
  (*(v7 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v12;
  v15 = v16;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

uint64_t sub_237D80158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D7FB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D80180(uint64_t a1)
{
  v2 = sub_237D80880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D801BC(uint64_t a1)
{
  v2 = sub_237D80880();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D801F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_237D7FF6C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t type metadata accessor for SpatialTemporalGraphConvolutionModel(uint64_t a1)
{
  result = qword_27DEB24F0;
  if (!qword_27DEB24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237D80300(uint64_t a1)
{
  sub_237EF6C30();
  if (v1 <= 0x3F)
  {
    sub_237EF6940();
    if (v2 <= 0x3F)
    {
      sub_237D803B4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237D803B4(uint64_t a1)
{
  if (!qword_27DEB2500)
  {
    type metadata accessor for SpatialTemporalGraphConvolution(255);
    v1 = sub_237EF8A60();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEB2500);
    }
  }
}

uint64_t sub_237D8040C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D8042C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_237D80548()
{
  result = qword_27DEB2530;
  if (!qword_27DEB2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2530);
  }

  return result;
}

unint64_t sub_237D8059C()
{
  result = qword_27DEB2538;
  if (!qword_27DEB2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2538);
  }

  return result;
}

unint64_t sub_237D805F0()
{
  result = qword_27DEB2548;
  if (!qword_27DEB2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2548);
  }

  return result;
}

uint64_t sub_237D80644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTemporalGraphConvolutionModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D806A8(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTemporalGraphConvolutionModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237D80704()
{
  result = qword_27DEB2570;
  if (!qword_27DEB2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2570);
  }

  return result;
}

unint64_t sub_237D80758()
{
  result = qword_27DEB2580;
  if (!qword_27DEB2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2580);
  }

  return result;
}

uint64_t sub_237D807AC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2550, &qword_237F11B18);
    OUTLINED_FUNCTION_2_56();
    sub_237D80838(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237D80838(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_237D80880()
{
  result = qword_27DEB25A8;
  if (!qword_27DEB25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25A8);
  }

  return result;
}

_BYTE *sub_237D808E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D809C4()
{
  result = qword_27DEB25B8;
  if (!qword_27DEB25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25B8);
  }

  return result;
}

unint64_t sub_237D80A1C()
{
  result = qword_27DEB25C0;
  if (!qword_27DEB25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25C0);
  }

  return result;
}

unint64_t sub_237D80A74()
{
  result = qword_27DEB25C8;
  if (!qword_27DEB25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25C8);
  }

  return result;
}

unint64_t sub_237D80ACC()
{
  result = qword_27DEB25D0;
  if (!qword_27DEB25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25D0);
  }

  return result;
}

unint64_t sub_237D80B24()
{
  result = qword_27DEB25D8;
  if (!qword_27DEB25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25D8);
  }

  return result;
}

unint64_t sub_237D80B7C()
{
  result = qword_27DEB25E0;
  if (!qword_27DEB25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_40(uint64_t a1, uint64_t a2)
{

  return sub_237EF9A50();
}

uint64_t OUTLINED_FUNCTION_8_45(uint64_t a1)
{

  return sub_237EF9950();
}

uint64_t OUTLINED_FUNCTION_9_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_237EF9A70();
}

void *OUTLINED_FUNCTION_11_35()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_12_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_237EF9A70();
}

uint64_t OUTLINED_FUNCTION_15_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EFA1B0();
}

uint64_t sub_237D80D2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_237D80D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_237D80DD0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if ((a3 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v24[0] = *a1;
  v24[1] = v7;
  v25 = v8;
  v26 = v9;
  sub_237E6F56C(v24);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = v10;
    if (v7)
    {
      v12 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v9, v13, v14, v15);
          v9 = v16;
        }

        v17 = v7;
        if (v8)
        {
          if ((v12 * v6) >> 64 != (v12 * v6) >> 63)
          {
            goto LABEL_22;
          }

          v17 = 1;
        }

        if (v12 >= *(v11 + 16))
        {
          break;
        }

        if (v6 > 0x7FFFFFFF)
        {
          goto LABEL_19;
        }

        if (v6 < 0xFFFFFFFF80000000)
        {
          goto LABEL_20;
        }

        if (v17 > 0x7FFFFFFF)
        {
          goto LABEL_21;
        }

        cblas_dscal_NEWLAPACK();
        if (v7 == ++v12)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_17:
    v18 = sub_237EF89B0();
    *(v18 + 16) = 2;
    __asm { FMOV            V0.2D, #1.0 }

    *(v18 + 32) = _Q0;
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = a2;
    *(a4 + 40) = 2;
    *(a4 + 48) = v18;
    *(a4 + 56) = v11;
    *(a4 + 64) = 0x403E000000000000;
    return;
  }

LABEL_23:
  __break(1u);
}

double sub_237D80F3C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_237D80F9C(*(a1 + 16), 1, __dst, &v4);
  return v4;
}

void sub_237D80F9C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v4 = *a3;
  if ((*a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = *(a3 + 8);
    v25 = *(a3 + 16);
    v10 = a2 < 0xFFFFFFFF80000000 || v8 < 0xFFFFFFFF80000000;
    v11 = 0.0;
    while (1)
    {
      if (v4 == v7)
      {
        *a4 = v11;
        return;
      }

      v12 = v4;
      if ((v25 & 1) == 0)
      {
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          goto LABEL_34;
        }

        v12 = 1;
      }

      v13 = *(a3 + 32);
      if (v7 >= *(v13 + 16))
      {
        break;
      }

      if (v8 != a1)
      {
        goto LABEL_36;
      }

      if (v8 > 0x7FFFFFFF)
      {
        goto LABEL_28;
      }

      if (v12 > 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      if (v10)
      {
        goto LABEL_30;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_31;
      }

      v14 = *(v13 + 8 * v7 + 32);
      v15 = *(a3 + 64);
      cblas_ddot_NEWLAPACK();
      v17 = ((v14 + v14 + -1.0) * v16 + -1.0) * -v15;
      v18 = 0.0;
      if (v17 >= -100.0)
      {
        if (v17 <= 50.0)
        {
          v19 = exp(v17);
          v18 = log1p(v19);
        }

        else
        {
          v18 = v17;
        }
      }

      if (v14 < 0)
      {
        goto LABEL_32;
      }

      v20 = *(a3 + 48);
      if (v14 >= *(v20 + 16))
      {
        goto LABEL_33;
      }

      v11 = v11 + v18 * *(v20 + 8 * v14 + 32) / v15;
      ++v7;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000050, 0x8000000237EFEBF0);
  v21 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v21);

  MEMORY[0x2383E0710](0x20646E6120, 0xE500000000000000);
  v22 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v22);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 198);
  __break(1u);
}

void *sub_237D81278(uint64_t a1)
{
  v2 = v1;
  memcpy(__dst, v2, sizeof(__dst));
  v8 = __dst;
  v6[2] = a1;
  v6[3] = sub_237D81F94;
  v6[4] = &v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237D81FBC, v6, v4, MEMORY[0x277D84F78] + 8);
}

void sub_237D81320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8, uint64_t *a9)
{
  *a8 = 0.0;
  sub_237ECE91C(a4, a5, a6, 0.0);
  v16 = a9[1];
  if (v16)
  {
    v23 = a1;
    v25 = a2;
    v17 = *a9;
    v18 = 0x100000 / v16;
    if (0x100000 / v16 <= 0)
    {
      if (v17 <= 1)
      {
LABEL_10:
        memcpy(__dst, a9, sizeof(__dst));
        sub_237D814D4(v23, v25, a3, a8, a4, a5, a6);
        return;
      }

      v18 = 1;
    }

    else if (v18 >= v17)
    {
      goto LABEL_10;
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v20 = v17 + v18;
    if (!__OFADD__(v17, v18))
    {
      v21 = v20 - 1;
      if (!__OFSUB__(v20, 1))
      {
        v22 = v19;
        sub_237D81EA8();
        MEMORY[0x28223BE20](v21 / v18);
        sub_237EF8FB0();

        return;
      }

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_237D814D4(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  if (*v7 < 0)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    v9 = v7;
    v11 = 0;
    v12 = v9[1];
    v31 = *(v9 + 16);
    v13 = *(v9 + 8);
    v14 = v9[4];
    v27 = v9[3] + 32;
    v15 = v9[6];
    while (v8 != v11)
    {
      v16 = v11;
      v17 = v8;
      if ((v31 & 1) == 0)
      {
        v16 = v11 * v12;
        if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
        {
          goto LABEL_19;
        }

        v17 = 1;
      }

      if (v11 >= *(v14 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v18 = v27 + 8 * v16;
      v19 = *(v14 + 32 + 8 * v11);
      dot(_:_:)(v18, v12, v17, a1, a2, a3);
      v21 = (v20 * (v19 + v19 + -1.0) + -1.0) * -v13;
      exp(-v21);
      v22 = 0.0;
      if (v21 >= -100.0)
      {
        if (v21 <= 50.0)
        {
          v23 = exp(v21);
          v22 = log1p(v23);
        }

        else
        {
          v22 = v21;
        }
      }

      if (v19 < 0)
      {
        goto LABEL_17;
      }

      if (v19 >= *(v15 + 16))
      {
        goto LABEL_18;
      }

      *a4 = *a4 + v22 * *(v15 + 32 + 8 * v19) / v13;
      UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v18, v12, v17, a5, a6, a7);
      ++v11;
    }
  }
}

void sub_237D816BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, double *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a6;
  v49 = a5;
  v48 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 8);
  if (v11 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  if (v11 >> 60)
  {
    goto LABEL_42;
  }

  v47 = a8;
  v46 = a9;
  v52 = *a2;
  v51 = *(a2 + 16);
  v18 = 8 * v11;
  v19 = *(a2 + 24);
  v20 = v53;
  v21 = a2;
  if (8 * v11 >= 1025)
  {
    goto LABEL_35;
  }

  sub_237D81F2C(a2, v53);
  isStackAllocationSafe = a7;
  while (1)
  {
    v45 = a10;
    v44 = &v41;
    v24 = MEMORY[0x28223BE20](isStackAllocationSafe);
    v25 = &v41 - v23;
    if (v11)
    {
      bzero(&v41 - v23, v18);
    }

    a10 = a1 * a3;
    if ((a1 * a3) >> 64 != (a1 * a3) >> 63)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_38;
    }

    if ((v26 * a3) >> 64 != (v26 * a3) >> 63)
    {
      goto LABEL_39;
    }

    v43 = a11;
    if (v26 * a3 >= v52)
    {
      a11 = v52;
    }

    else
    {
      a11 = v26 * a3;
    }

    if (a11 < a10)
    {
      goto LABEL_40;
    }

    v42 = a7;
    a1 = v19 + 32;
    v27 = 0.0;
    v19 = a10;
LABEL_15:
    if (a11 == v19)
    {
      break;
    }

    v28 = v19;
    a3 = v52;
    if ((v51 & 1) == 0)
    {
      v28 = v19 * v11;
      if ((v19 * v11) >> 64 != (v19 * v11) >> 63)
      {
        goto LABEL_34;
      }

      a3 = 1;
    }

    if ((a10 & 0x8000000000000000) == 0)
    {
      v29 = *(a2 + 32);
      if (v19 >= *(v29 + 16))
      {
        goto LABEL_31;
      }

      v18 = a1 + 8 * v28;
      a7 = *(v29 + 8 * v19 + 32);
      v30 = *(a2 + 64);
      dot(_:_:)(v18, v11, a3, v48, v49, v50);
      v32 = v31 * (a7 + a7 + -1.0) + -1.0;
      v33 = -(v30 * v32);
      exp(-(v32 * -v30));
      v34 = 0.0;
      if (v33 >= -100.0)
      {
        if (v33 <= 50.0)
        {
          v35 = exp(v33);
          v34 = log1p(v35);
        }

        else
        {
          v34 = v33;
        }
      }

      if ((a7 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v36 = *(a2 + 48);
      if (a7 >= *(v36 + 16))
      {
        goto LABEL_33;
      }

      v27 = v27 + v34 * *(v36 + 8 * a7 + 32) / v30;
      v21 = UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v18, v11, a3, v25, v11, 1);
      ++v19;
      goto LABEL_15;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_237D81F2C(v21, v20);
    v37 = a7;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v38 = a10;
      v39 = swift_slowAlloc();
      sub_237D81F2C(a2, v53);
      v40 = v37;
      sub_237D81B8C(v39, v11, a1, a3, a2, v48, v49, v50, v40, v47, v46, v38, a11);
      MEMORY[0x2383E2DF0](v39, -1, -1);
      goto LABEL_29;
    }
  }

  a7 = v42;
  [v42 lock];
  *v47 = v27 + *v47;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v25, v11, 1, v46, v45, v43);
  [a7 unlock];
LABEL_29:
  sub_237D81F64(a2);
}

void sub_237D81B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, double *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a1)
  {
    goto LABEL_36;
  }

  if (a2 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v17 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    goto LABEL_32;
  }

  v18 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = v18 * a4;
  if ((v18 * a4) >> 64 == (v18 * a4) >> 63)
  {
    if (v19 >= *a5)
    {
      v19 = *a5;
    }

    v40 = *a5;
    v41 = v19;
    if (v19 < v17)
    {
      goto LABEL_35;
    }

    v20 = *(a5 + 8);
    v39 = *(a5 + 16);
    v21 = *(a5 + 24) + 32;
    v22 = 0.0;
    for (i = v17; ; ++i)
    {
      if (v41 == i)
      {
        [a9 lock];
        *a10 = v22 + *a10;
        UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, 1, a11, a12, a13);
        [a9 unlock];
        sub_237D81F64(a5);

        return;
      }

      v24 = i;
      v25 = v40;
      if ((v39 & 1) == 0)
      {
        v24 = i * v20;
        if ((i * v20) >> 64 != (i * v20) >> 63)
        {
          goto LABEL_30;
        }

        v25 = 1;
      }

      if (v17 < 0)
      {
        break;
      }

      v26 = *(a5 + 32);
      if (i >= *(v26 + 16))
      {
        goto LABEL_27;
      }

      v27 = v21 + 8 * v24;
      v28 = *(v26 + 8 * i + 32);
      v29 = *(a5 + 64);
      dot(_:_:)(v27, v20, v25, a6, a7, a8);
      v31 = v30 * (v28 + v28 + -1.0) + -1.0;
      v32 = -(v29 * v31);
      exp(-(v31 * -v29));
      v33 = 0.0;
      if (v32 >= -100.0)
      {
        if (v32 <= 50.0)
        {
          v34 = exp(v32);
          v33 = log1p(v34);
        }

        else
        {
          v33 = v32;
        }
      }

      if (v28 < 0)
      {
        goto LABEL_28;
      }

      v35 = *(a5 + 48);
      if (v28 >= *(v35 + 16))
      {
        goto LABEL_29;
      }

      v22 = v22 + v33 * *(v35 + 8 * v28 + 32) / v29;
      UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v27, v20, v25, a1, a2, 1);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

unint64_t sub_237D81EA8()
{
  result = qword_27DEB3040;
  if (!qword_27DEB3040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB3040);
  }

  return result;
}

uint64_t (*sub_237D81FDC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_237D82734(v6, a2, a3);
  return sub_237D82050;
}

uint64_t (*sub_237D82054(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_237D827D0(v4, a2);
  return sub_237D834D4;
}

uint64_t (*sub_237D820B8(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_237D82860(v6, a2, a3);
  return sub_237D834D4;
}

void sub_237D8212C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t JointsSelector.ignoredJoints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t JointsSelector.selectedJoints.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t JointsSelector.init(ignoredJoints:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t JointsSelector.init(selectedJoints:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  return result;
}