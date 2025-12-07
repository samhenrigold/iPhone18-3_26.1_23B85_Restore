void ToolDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v29);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_86();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FE0, &qword_1C90921F0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_72();
  v104 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v105 = v34 - v33;
  v35 = v28[3];
  v36 = v28[4];
  v37 = OUTLINED_FUNCTION_276();
  v39 = OUTLINED_FUNCTION_217(v37, v38);
  sub_1C8E95664(v39, v40, v41);
  OUTLINED_FUNCTION_200();
  sub_1C9064DEC();
  if (v24)
  {
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_6_31();
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (v36)
    {

      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (!v35)
    {
LABEL_18:
      if (v28)
      {
        memcpy(v111, (v105 + 80), 0x70uLL);
        sub_1C8D16D78(v111, &qword_1EC317F98, &qword_1C9092190);
        if ((v96 & 1) == 0)
        {
LABEL_20:
          v42 = v104;
          if (v97)
          {
LABEL_21:
            memcpy(v111, (v105 + 296), 0x61uLL);
            sub_1C8D16D78(v111, &qword_1EC312EF8, &unk_1C90839D0);
            if ((v98 & 1) == 0)
            {
LABEL_22:
              if (v99)
              {
LABEL_23:
                memcpy(v111, (v105 + 408), 0x50uLL);
                sub_1C8E87298(v111);
                if ((v100 & 1) == 0)
                {
LABEL_24:
                  if (v101)
                  {
LABEL_25:

                    if ((v102 & 1) == 0)
                    {
LABEL_26:
                      if (v25)
                      {
LABEL_27:
                        sub_1C8D16E14(*(v105 + v42[19]), *(v105 + v42[19] + 8));
                        if ((v103 & 1) == 0)
                        {
                          goto LABEL_28;
                        }

                        goto LABEL_15;
                      }

LABEL_14:
                      if (!v103)
                      {
                        goto LABEL_28;
                      }

LABEL_15:

                      goto LABEL_28;
                    }

LABEL_13:

                    if (v25)
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_14;
                  }

LABEL_12:
                  if (!v102)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_13;
                }

LABEL_11:
                sub_1C8D16D78(v105 + v42[16], &qword_1EC3144B8, &qword_1C90839E0);
                if (v101)
                {
                  goto LABEL_25;
                }

                goto LABEL_12;
              }

LABEL_10:
              if (!v100)
              {
                goto LABEL_24;
              }

              goto LABEL_11;
            }

LABEL_9:

            if (v99)
            {
              goto LABEL_23;
            }

            goto LABEL_10;
          }

LABEL_8:
          if (!v98)
          {
            goto LABEL_22;
          }

          goto LABEL_9;
        }
      }

      else if (!v96)
      {
        goto LABEL_20;
      }

      memcpy(v111, (v105 + 192), 0x61uLL);
      sub_1C8CC15FC(v111);
      v42 = v104;
      if (v97)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    goto LABEL_18;
  }

  *v105 = sub_1C9064A0C();
  *(v105 + 8) = v43;
  LOBYTE(v111[0]) = 1;
  v44 = sub_1C9064A0C();
  *(v105 + 16) = v44;
  *(v105 + 24) = v45;
  sub_1C8D21EE0(v44, v45, v46);
  OUTLINED_FUNCTION_82_4();
  sub_1C9064A6C();
  *(v105 + 32) = v111[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
  sub_1C8E95C74();
  OUTLINED_FUNCTION_189_5();
  sub_1C9064A6C();
  *(v105 + 40) = v111[0];
  OUTLINED_FUNCTION_189_5();
  v47 = sub_1C9064A6C();
  *(v105 + 48) = v111[0];
  v110[0] = 5;
  sub_1C8CAC450(v47, v48, v49);
  OUTLINED_FUNCTION_82_4();
  sub_1C9064A6C();
  *(v105 + 56) = v111[0];
  LOBYTE(v111[0]) = 6;
  *(v105 + 64) = sub_1C90649AC();
  *(v105 + 72) = v50;
  OUTLINED_FUNCTION_269();
  sub_1C8E95CF8(v51, v52, v53);
  OUTLINED_FUNCTION_82_4();
  sub_1C90649EC();
  OUTLINED_FUNCTION_226_4();
  v57 = memcpy(v54, v55, v56);
  sub_1C8E95D4C(v57, v58, v59);
  OUTLINED_FUNCTION_82_4();
  sub_1C9064A6C();
  memcpy((v105 + 192), v110, 0x61uLL);
  OUTLINED_FUNCTION_82_4();
  sub_1C90649EC();
  memcpy((v105 + 296), v109, 0x61uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EF0, &qword_1C906A028);
  sub_1C8E95DA0();
  v60 = sub_1C9064A6C();
  *(v105 + 400) = v108[0];
  sub_1C8E95E24(v60, v61, v62);
  sub_1C9064A6C();
  memcpy((v105 + 408), v108, 0x50uLL);
  type metadata accessor for ToolIcon(0);
  LOBYTE(v106) = 12;
  OUTLINED_FUNCTION_113_3();
  sub_1C8E95E78(v63, v64, &protocol conformance descriptor for ToolIcon);
  sub_1C90649EC();
  sub_1C8D80354(v26, v105 + v104[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FC8, &qword_1C90921D0);
  sub_1C8E95EC0();
  OUTLINED_FUNCTION_21_18();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v67 + *(v65 + 68)) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_22_1(&unk_1EDA6B520, MEMORY[0x1E69E6190]);
  OUTLINED_FUNCTION_172_1();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v70 + *(v68 + 72)) = v69;
  sub_1C8E95F98(v71, v72, v73);
  OUTLINED_FUNCTION_38_15();
  sub_1C90649EC();
  v74 = (v105 + v104[19]);
  *v74 = v106;
  v74[1] = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
  sub_1C8E95FEC();
  OUTLINED_FUNCTION_21_18();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v77 + *(v75 + 80)) = v76;
  sub_1C8D21F34(v78, v79, v80);
  OUTLINED_FUNCTION_38_15();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v83 + *(v81 + 84)) = v82;
  sub_1C8D22084(v84, v85, v86);
  OUTLINED_FUNCTION_38_15();
  sub_1C9064A6C();
  *(v105 + v104[22]) = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD8, &unk_1C90921E0);
  sub_1C8E96070();
  OUTLINED_FUNCTION_21_18();
  sub_1C9064A6C();
  *(v105 + v104[23]) = v106;
  LOBYTE(v106) = 20;
  v87 = sub_1C90649AC();
  v88 = (v105 + v104[24]);
  *v88 = v87;
  v88[1] = v89;
  sub_1C8D21F88(v87, v89, v90);
  OUTLINED_FUNCTION_38_15();
  sub_1C9064A6C();
  *(v105 + v104[25]) = v106;
  OUTLINED_FUNCTION_172_1();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v93 + *(v91 + 104)) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
  sub_1C8E960F4();
  OUTLINED_FUNCTION_21_18();
  sub_1C90649EC();
  v94 = OUTLINED_FUNCTION_103_3();
  v95(v94);
  *(v105 + v104[27]) = v106;
  sub_1C8E96178();
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_1C8E961D0(v105, type metadata accessor for ToolDefinition);
LABEL_28:
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E86D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = ToolDefinition.id.getter(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

uint64_t static ToolCategory.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 8);
  v5 = v2[1];
  if (v1 == *v2 && v4 == v5)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_281_1(v1, v4, *v2, v5);
  }
}

uint64_t sub_1C8E86DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96228(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E86DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96228(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolCategory.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FE8, &qword_1C90921F8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_73();
  v7 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8E96228(v7, v8, v9);
  OUTLINED_FUNCTION_115_0();
  sub_1C9064E1C();
  sub_1C9064B2C();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolCategory.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void ToolCategory.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FF0, &qword_1C9092200);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v10 = OUTLINED_FUNCTION_56_0();
  sub_1C8E96228(v10, v11, v12);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (!v0)
  {
    v13 = sub_1C9064A0C();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDeprecationDefinition.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = v5[3];
  if (v7)
  {
    v8 = v5[2];
    sub_1C906478C();

    MEMORY[0x1CCA81A90](0x63616C7065722820, 0xEE00207962206465);
    MEMORY[0x1CCA81A90](v8, v7);
    OUTLINED_FUNCTION_340();
  }

  else
  {
  }

  return v6;
}

uint64_t static ToolDeprecationDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v10 & 1) != 0))
  {
    if (v5)
    {
      if (v6)
      {
        if (v4 == v7 && v5 == v6)
        {
          return 1;
        }

        v12 = OUTLINED_FUNCTION_95_0();
        if (OUTLINED_FUNCTION_335_0(v12, v13, v7))
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C8E872C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E8735C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C90CC060 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C90CC080 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

unint64_t sub_1C8E87434(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C8E87474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8735C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8749C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9627C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E874D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9627C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolDeprecationDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FF8, &qword_1C9092208);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_72();
  v3 = OUTLINED_FUNCTION_219();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8E9627C(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_67_8();
  sub_1C9064B2C();
  if (!v0)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064ADC();
  }

  v8 = OUTLINED_FUNCTION_30();
  v9(v8, v1);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDeprecationDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1C9063FBC();
  if (!v2)
  {
    return sub_1C9064D9C();
  }

  sub_1C9064D9C();
  OUTLINED_FUNCTION_93();

  return sub_1C9063FBC();
}

uint64_t ToolDeprecationDefinition.hashValue.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  if (v1)
  {
    v2 = sub_1C9064D9C();
    OUTLINED_FUNCTION_158_5(v2);
  }

  else
  {
    sub_1C9064D9C();
  }

  return sub_1C9064DBC();
}

void ToolDeprecationDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318008, &qword_1C9092210);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  v6 = OUTLINED_FUNCTION_56_0();
  v9 = sub_1C8E9627C(v6, v7, v8);
  OUTLINED_FUNCTION_208(&type metadata for ToolDeprecationDefinition.CodingKeys, v10, v9);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_3_3();
    v11 = sub_1C90649AC();
    v13 = v12;
    v16 = v11;
    v14 = OUTLINED_FUNCTION_203();
    v15(v14);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v16;
    v2[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E878AC(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v2)
  {
    sub_1C9063FBC();
  }

  return sub_1C9064DBC();
}

uint64_t static ToolSymbolIconStyle.== infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if ((v3 & 0x80000000) != 0 || (sub_1C8E5AC04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = BYTE1(v2);
  v3 = BYTE1(v3);
LABEL_7:

  return sub_1C8E5AC04(v2, v3);
}

uint64_t sub_1C8E879E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xED00007465737341;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C616E7265747865 && a2 == 0xED00007465737341)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E87AFC(char a1)
{
  if (!a1)
  {
    return 0x776F6C666B726F77;
  }

  if (a1 == 1)
  {
    return 0x6C6F626D7973;
  }

  return 0x6C616E7265747865;
}

uint64_t sub_1C8E87B58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E87C28(char a1)
{
  if (a1)
  {
    return 0x5255656C646E7562;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C8E87C5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E87D20(char a1)
{
  if (a1)
  {
    return 0x656C797473;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C8E87D4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E87DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E879E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E87DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E962D0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E87E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E962D0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E87E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E87B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E87E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96324(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E87ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96324(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E87F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E87C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E87F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96378(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E87F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96378(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E87FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96420(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E87FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96420(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolIcon.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318010, &qword_1C9092218);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_42_10(v27, v69);
  v73 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v72 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v71 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318018, &qword_1C9092220);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_73();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318020, &qword_1C9092228);
  OUTLINED_FUNCTION_11();
  v70 = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_233();
  type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  v39 = (v38 - v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318028, &qword_1C9092230);
  OUTLINED_FUNCTION_11();
  v74 = v40;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_72();
  v42 = OUTLINED_FUNCTION_276();
  v44 = OUTLINED_FUNCTION_217(v42, v43);
  sub_1C8E962D0(v44, v45, v46);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_7_31();
  sub_1C8E96178();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = *v39;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C8E96378(EnumCaseMultiPayload, v48, v49);
      sub_1C9064ACC();
      OUTLINED_FUNCTION_177_5();
      sub_1C9064B2C();
      OUTLINED_FUNCTION_276_1();

      if (!v50)
      {
        sub_1C8E963CC(v51, v52, v53);
        OUTLINED_FUNCTION_59_10();
        sub_1C9064B8C();
      }

      v54 = OUTLINED_FUNCTION_41_12();
      v55(v54);
      OUTLINED_FUNCTION_59_8();
      v57 = v24;
      v58 = v74;
    }

    else
    {
      v59 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
      (*(v72 + 32))(v71, v59, v73);
      OUTLINED_FUNCTION_119_1();
      sub_1C8E96324(v60, v61, v62);
      OUTLINED_FUNCTION_82_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_177_5();
      sub_1C9064B2C();
      OUTLINED_FUNCTION_276_1();

      if (v23)
      {
        v63 = OUTLINED_FUNCTION_146_4();
        v64(v63);
        (*(v72 + 8))(v71, v73);
        OUTLINED_FUNCTION_59_8();
        v57 = v24;
        v58 = v74;
      }

      else
      {
        OUTLINED_FUNCTION_26_14();
        sub_1C8E95E78(v65, v66, MEMORY[0x1E6968FB8]);
        sub_1C9064B8C();
        v67 = OUTLINED_FUNCTION_146_4();
        v68(v67);
        (*(v72 + 8))(v71, v73);
        v57 = OUTLINED_FUNCTION_30();
      }
    }
  }

  else
  {
    sub_1C8E96420(EnumCaseMultiPayload, v48, v49);
    sub_1C9064ACC();
    OUTLINED_FUNCTION_177_5();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_276_1();

    (*(v70 + 8))(v25, v33);
    OUTLINED_FUNCTION_59_8();
    v57 = OUTLINED_FUNCTION_93();
  }

  v56(v57, v58);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolIcon.hash(into:)(uint64_t a1)
{
  v1 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_7_31();
  sub_1C8E96178();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
      (*(v3 + 32))(v7, v11 + *(v16 + 48), v1);
      MEMORY[0x1CCA82810](2);
      OUTLINED_FUNCTION_248_2();

      OUTLINED_FUNCTION_26_14();
      sub_1C8E95E78(v17, v18, MEMORY[0x1E6968FC0]);
      sub_1C9063E7C();
      return (*(v3 + 8))(v7, v1);
    }

    v13 = *(v11 + 16);
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_248_2();

    if (v13 < 0)
    {
      MEMORY[0x1CCA82810](1);
    }

    else
    {
      MEMORY[0x1CCA82810](0);
      v14 = ToolSymbolIconColor.rawValue.getter();
      OUTLINED_FUNCTION_62_5(v14, v15);
    }

    v20 = ToolSymbolIconColor.rawValue.getter();
    OUTLINED_FUNCTION_62_5(v20, v21);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_248_2();
  }
}

uint64_t sub_1C8E887F8(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

void ToolIcon.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_196();
  v150 = v27;
  v30 = v29;
  v145 = v31;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318038, &qword_1C9092238);
  OUTLINED_FUNCTION_11();
  v146 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  v144 = v34;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318040, &qword_1C9092240);
  OUTLINED_FUNCTION_11();
  v137 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_42_10(v37, v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318048, &qword_1C9092248);
  OUTLINED_FUNCTION_11();
  v138 = v39;
  v139 = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v142 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318050, &unk_1C9092250);
  OUTLINED_FUNCTION_11();
  v147 = v43;
  v148 = v42;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_142();
  v45 = type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25();
  v49 = (v47 - v48);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v131 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v131 - v55;
  v149 = v30;
  v57 = OUTLINED_FUNCTION_181_1();
  v59 = OUTLINED_FUNCTION_217(v57, v58);
  sub_1C8E962D0(v59, v60, v61);
  OUTLINED_FUNCTION_266_2();
  v62 = v150;
  sub_1C9064DEC();
  if (!v62)
  {
    v132 = v28;
    v133 = v53;
    v134 = v49;
    v135 = v56;
    v150 = v45;
    v63 = v148;
    v64 = v26;
    v65 = sub_1C9064A9C();
    sub_1C8CB8914(v65, 0);
    OUTLINED_FUNCTION_228_3();
    if (!v66)
    {
      OUTLINED_FUNCTION_119_0();
      v136 = v26;
      OUTLINED_FUNCTION_282_1();
      if (v73 == v74)
      {
        __break(1u);
        return;
      }

      v75 = *(v72 + v71);
      v76 = OUTLINED_FUNCTION_93_3(v67, v68, v69, v70, v71);
      sub_1C8CB891C(v76, v77, v78, v79, v80, v81);
      v83 = v82;
      v85 = v84;
      v86 = swift_unknownObjectRelease();
      if (v83 == v85 >> 1)
      {
        if (v75)
        {
          if (v75 == 1)
          {
            sub_1C8E96378(v86, v87, v88);
            OUTLINED_FUNCTION_82_4();
            sub_1C906498C();
            v101 = sub_1C9064A0C();
            v103 = v102;
            sub_1C8E96474(v101, v102, v104);
            OUTLINED_FUNCTION_162_5();
            sub_1C9064A6C();
            swift_unknownObjectRelease();
            v119 = OUTLINED_FUNCTION_263_2();
            v120(v119);
            v121 = OUTLINED_FUNCTION_72_3();
            v122(v121);
            v123 = v132;
            *v132 = v101;
            *(v123 + 8) = v103;
            *(v123 + 16) = a10;
            OUTLINED_FUNCTION_95_0();
            swift_storeEnumTagMultiPayload();
            sub_1C8E872C8(v123, v135);
            v124 = v149;
LABEL_16:
            v129 = OUTLINED_FUNCTION_181();
            sub_1C8E872C8(v129, v130);
            v95 = v124;
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_119_1();
          sub_1C8E96324(v98, v99, v100);
          OUTLINED_FUNCTION_82_4();
          sub_1C906498C();
          v112 = sub_1C9064A0C();
          v114 = v113;
          v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
          v142 = v114;
          v143 = v115;
          v116 = v134;
          *v134 = v112;
          v116[1] = v114;
          sub_1C9061EBC();
          OUTLINED_FUNCTION_26_14();
          sub_1C8E95E78(v117, v118, MEMORY[0x1E6968FD0]);
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v125 = OUTLINED_FUNCTION_206_3();
          v126(v125);
          v127 = OUTLINED_FUNCTION_72_3();
          v128(v127);
          OUTLINED_FUNCTION_117();
          swift_storeEnumTagMultiPayload();
          v111 = v116;
        }

        else
        {
          v151 = 0;
          sub_1C8E96420(v86, v87, v88);
          OUTLINED_FUNCTION_82_4();
          sub_1C906498C();
          v96 = sub_1C9064A0C();
          v97 = v147;
          v105 = v96;
          v107 = v106;
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_146_0();
          v109(v108);
          (*(v97 + 8))(v136, v63);
          v110 = v133;
          *v133 = v105;
          v110[1] = v107;
          swift_storeEnumTagMultiPayload();
          v111 = v110;
        }

        sub_1C8E872C8(v111, v135);
        v124 = v149;
        goto LABEL_16;
      }

      v64 = v136;
    }

    v89 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v89, MEMORY[0x1E69E6B28]);
    v91 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v91 = v150;
    v92 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v92);
    OUTLINED_FUNCTION_10_0();
    (*(v93 + 104))(v91);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_107_5();
    v94(v64, v63);
  }

  v95 = v149;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v95);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E89020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746E6974 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E890EC(char a1)
{
  if (a1)
  {
    return 0x6465746E6974;
  }

  else
  {
    return 0x6C6F6369746C756DLL;
  }
}

uint64_t sub_1C8E89124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E891FC(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x756F726765726F66;
  }
}

uint64_t sub_1C8E89230(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E892EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E8936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E89020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E89394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E964C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E893D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E964C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E89414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E89124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E965C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E89478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E965C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E894B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E89230(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E894E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9651C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E89520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9651C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolSymbolIconStyle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318058, &qword_1C9092260);
  OUTLINED_FUNCTION_11();
  v59 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318060, &qword_1C9092268);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_233();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318068, &qword_1C9092270);
  OUTLINED_FUNCTION_11();
  v33 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_38();
  v35 = *v25;
  v36 = OUTLINED_FUNCTION_292();
  v38 = OUTLINED_FUNCTION_217(v36, v37);
  sub_1C8E964C8(v38, v39, v40);
  OUTLINED_FUNCTION_132_0();
  v41 = sub_1C9064E1C();
  if (v35 < 0)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8E9651C(v49, v50, v51);
    v52 = sub_1C9064ACC();
    sub_1C8E96570(v52, v53, v54);
    sub_1C9064B8C();
    OUTLINED_FUNCTION_107_5();
    v55(v28, v59);
    v56 = OUTLINED_FUNCTION_177_5();
    v58(v56, v57);
  }

  else
  {
    sub_1C8E965C4(v41, v42, v43);
    v44 = sub_1C9064ACC();
    sub_1C8E96570(v44, v45, v46);
    sub_1C9064B8C();
    if (!v26)
    {
      sub_1C9064B8C();
    }

    OUTLINED_FUNCTION_119_6();
    v47 = OUTLINED_FUNCTION_77_3();
    v48(v47);
    (*(v33 + 8))(v27, v60);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolSymbolIconStyle.hash(into:)()
{
  if (*v0 < 0)
  {
    MEMORY[0x1CCA82810](1);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    v1 = ToolSymbolIconColor.rawValue.getter();
    OUTLINED_FUNCTION_62_5(v1, v2);
  }

  v3 = ToolSymbolIconColor.rawValue.getter();
  OUTLINED_FUNCTION_62_5(v3, v4);
}

uint64_t ToolSymbolIconStyle.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  if (v1 < 0)
  {
    MEMORY[0x1CCA82810](1);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    v2 = ToolSymbolIconColor.rawValue.getter();
    OUTLINED_FUNCTION_233_3(v2, v3, v4);
  }

  v5 = ToolSymbolIconColor.rawValue.getter();
  OUTLINED_FUNCTION_233_3(v5, v6, v7);

  return sub_1C9064DBC();
}

void ToolSymbolIconStyle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, unsigned __int8 a12, char a13, unsigned __int8 a14, char a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_196();
  v30 = v29;
  v92 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318070, &qword_1C9092278);
  OUTLINED_FUNCTION_11();
  v91 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_142();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318078, &qword_1C9092280);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318080, &qword_1C9092288);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_73();
  v37 = OUTLINED_FUNCTION_181();
  v39 = OUTLINED_FUNCTION_217(v37, v38);
  sub_1C8E964C8(v39, v40, v41);
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v27)
  {
    v42 = sub_1C9064A9C();
    sub_1C8CB8914(v42, 0);
    OUTLINED_FUNCTION_228_3();
    if (v43)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_282_1();
    if (v50 == v51)
    {
      __break(1u);
      return;
    }

    v90 = *(v49 + v48);
    v52 = OUTLINED_FUNCTION_93_3(v44, v45, v46, v47, v48);
    sub_1C8CB891C(v52, v53, v54, v55, v56, v57);
    v59 = v58;
    v61 = v60;
    v62 = swift_unknownObjectRelease();
    if (v59 != v61 >> 1)
    {
LABEL_8:
      v70 = sub_1C90647DC();
      OUTLINED_FUNCTION_6_3(v70, MEMORY[0x1E69E6B28]);
      v72 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
      v73 = OUTLINED_FUNCTION_241_3(&type metadata for ToolSymbolIconStyle);
      OUTLINED_FUNCTION_411(v73);
      OUTLINED_FUNCTION_10_0();
      (*(v74 + 104))(v72);
      swift_willThrow();
      swift_unknownObjectRelease();
      v75 = OUTLINED_FUNCTION_41_12();
      v76(v75);
    }

    else
    {
      if (v90)
      {
        OUTLINED_FUNCTION_275();
        sub_1C8E9651C(v65, v66, v67);
        v68 = v26;
        OUTLINED_FUNCTION_44_11();
        v69 = sub_1C906498C();
        v78 = v92;
        sub_1C8E96618(v69, v79, v80);
        sub_1C9064A6C();
        OUTLINED_FUNCTION_276_1();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_107_5();
        v83(v68, v91);
        v84 = OUTLINED_FUNCTION_62_7();
        v85(v84);
        v86 = a16 | 0x8000;
      }

      else
      {
        sub_1C8E965C4(v62, v63, v64);
        OUTLINED_FUNCTION_44_11();
        v77 = sub_1C906498C();
        sub_1C8E96618(v77, v81, v82);
        OUTLINED_FUNCTION_82_4();
        sub_1C9064A6C();
        sub_1C9064A6C();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_119_6();
        v87(v28, v34);
        v88 = OUTLINED_FUNCTION_41_12();
        v89(v88);
        v86 = a14 | (a12 << 8);
        v78 = v92;
      }

      *v78 = v86;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E89ED0(uint64_t a1)
{
  v2 = *v1;
  sub_1C9064D7C();
  if (v2 < 0)
  {
    MEMORY[0x1CCA82810](1);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    ToolSymbolIconColor.rawValue.getter();
    sub_1C9063FBC();
  }

  ToolSymbolIconColor.rawValue.getter();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

ToolKit::ToolSymbolIconColor_optional __swiftcall ToolSymbolIconColor.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  v2 = sub_1C9064C6C();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C8E8A038@<X0>(unint64_t *a1@<X8>)
{
  result = ToolSymbolIconColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ParameterDefinition.ParameterFlags.all.setter(void *a1)
{
  swift_beginAccess();
  off_1EDA60998 = a1;
}

uint64_t (*static ParameterDefinition.ParameterFlags.all.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_95_0();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_1C8E8A218@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EDA60998;
}

uint64_t sub_1C8E8A268(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EDA60998 = v1;
}

uint64_t ParameterDefinition.ParameterFlags.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  if ((*v4 & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_173_5(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_260_0();
  if (v7)
  {
    OUTLINED_FUNCTION_9_1(v6);
    sub_1C8D00CA4();
    v3 = v20;
  }

  OUTLINED_FUNCTION_223_2();
  *(v8 + 32) = 0x6E6564646968;
  *(v8 + 40) = 0xE600000000000000;
  if ((v5 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v3 = v21;
    }

    OUTLINED_FUNCTION_207_3();
    if (v7)
    {
      OUTLINED_FUNCTION_9_1(v9);
      sub_1C8D00CA4();
      v3 = v22;
    }

    OUTLINED_FUNCTION_223_2();
    *(v10 + 32) = 0x69736568746E7973;
    *(v10 + 40) = 0xEB0000000064657ALL;
  }

LABEL_12:
  if ((v5 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v3 = v23;
    }

    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    if (v12 >= v11 >> 1)
    {
      OUTLINED_FUNCTION_9_1(v11);
      sub_1C8D00CA4();
      v3 = v24;
    }

    OUTLINED_FUNCTION_97_5();
    *(v3 + 16) = v12 + 1;
    v13 = v3 + 16 * v12;
    *(v13 + 32) = 0xD000000000000012;
    *(v13 + 40) = v14;
  }

  OUTLINED_FUNCTION_289_1();
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v15, v16, &qword_1C9066990, v17);
  OUTLINED_FUNCTION_70_3();
  sub_1C9063E9C();
  OUTLINED_FUNCTION_29_12();
  v18 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v18);

  OUTLINED_FUNCTION_340();
  return 40;
}

ToolKit::ParameterDefinition::ToolMetadata __swiftcall ParameterDefinition.ToolMetadata.init(sourceContainerId:backingLinkActionIdentifiers:)(Swift::String sourceContainerId, Swift::OpaquePointer backingLinkActionIdentifiers)
{
  *v2 = sourceContainerId;
  *(v2 + 16) = backingLinkActionIdentifiers;
  result.sourceContainerId = sourceContainerId;
  result.backingLinkActionIdentifiers = backingLinkActionIdentifiers;
  return result;
}

void static ParameterDefinition.ToolMetadata.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {
    v5 = OUTLINED_FUNCTION_94();

    sub_1C8CEB10C(v5, v6);
  }
}

uint64_t sub_1C8E8A5C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C90C98E0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C90CC020 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

unint64_t sub_1C8E8A698(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C8E8A6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8A5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9666C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8A73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9666C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ParameterDefinition.ToolMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318088, &qword_1C9092290);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  v5 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8E9666C(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_205();
  sub_1C9064B2C();
  if (!v0)
  {
    OUTLINED_FUNCTION_223_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_21_2(&qword_1EDA6B530, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v8 = OUTLINED_FUNCTION_30();
  v9(v8, v3);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterDefinition.ToolMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_94();

  return sub_1C8CC1590();
}

uint64_t ParameterDefinition.ToolMetadata.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_158_5(v0);
  sub_1C8CC1590();
  return sub_1C9064DBC();
}

void ParameterDefinition.ToolMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318090, &qword_1C9092298);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15_0();
  v28 = OUTLINED_FUNCTION_56_0();
  v31 = sub_1C8E9666C(v28, v29, v30);
  OUTLINED_FUNCTION_208(&type metadata for ParameterDefinition.ToolMetadata.CodingKeys, v32, v31);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_22_1(&unk_1EDA6B520, MEMORY[0x1E69E6190]);
    sub_1C9064A6C();
    v33 = OUTLINED_FUNCTION_10_2();
    v34(v33);
    *v24 = v26;
    v24[1] = v25;
    v24[2] = v35;

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t static ParameterDefinition.BooleanMetadata.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v10 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_94();

      return sub_1C9064C2C();
    }
  }

  return result;
}

uint64_t sub_1C8E8AC20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972745365757274 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72745365736C6166 && a2 == 0xEB00000000676E69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E8ACF4(char a1)
{
  if (a1)
  {
    return 0x72745365736C6166;
  }

  else
  {
    return 0x6972745365757274;
  }
}

uint64_t sub_1C8E8AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8AC20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8AD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E966C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8ADA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E966C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ParameterDefinition.BooleanMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318098, &qword_1C90922A0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_72();
  v3 = OUTLINED_FUNCTION_219();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8E966C0(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_67_8();
  sub_1C9064B2C();
  if (!v0)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
  }

  v8 = OUTLINED_FUNCTION_30();
  v9(v8, v1);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterDefinition.BooleanMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t ParameterDefinition.BooleanMetadata.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_158_5(v0);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void ParameterDefinition.BooleanMetadata.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180A8, &qword_1C90922A8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  v6 = OUTLINED_FUNCTION_56_0();
  v9 = sub_1C8E966C0(v6, v7, v8);
  OUTLINED_FUNCTION_208(&type metadata for ParameterDefinition.BooleanMetadata.CodingKeys, v10, v9);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_3_3();
    v11 = sub_1C9064A0C();
    v13 = v12;
    v16 = v11;
    v14 = OUTLINED_FUNCTION_203();
    v15(v14);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v16;
    v2[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8B124(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void ParameterDefinition.BOOLeanMetadata.getter(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  sub_1C8D16DD0(v3, v4, v5, v6, a1);
}

void ParameterDefinition.fetchSampleInvocations(cacheResults:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  if (v0[16])
  {

LABEL_16:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
    return;
  }

  if (!v0[14])
  {
    sub_1C906371C();
    v28 = sub_1C9063D1C();
    v29 = sub_1C906444C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C8C9B000, v28, v29, "Not fetching sample invocations due to missing tool metadata", v30, 2u);
      MEMORY[0x1CCA833A0](v30, -1, -1);
    }

    (*(v6 + 8))(v10, v4);
    goto LABEL_16;
  }

  v34[1] = v1;
  v14 = v0[15];
  v15 = *(v14 + 16);
  if (!v15)
  {
    sub_1C906371C();
    v31 = sub_1C9063D1C();
    v32 = sub_1C906443C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C8C9B000, v31, v32, "Skipping fetching sample invocations since this is not an app intent", v33, 2u);
      MEMORY[0x1CCA833A0](v33, -1, -1);
    }

    (*(v6 + 8))(v13, v4);
    goto LABEL_16;
  }

  v16 = *v0;
  v17 = v0[1];
  v18 = [objc_opt_self() sharedProvider];
  OUTLINED_FUNCTION_181_1();
  v19 = sub_1C9063EBC();
  v20 = [v18 examplePhrasesForBundleIdentifier:v19 useCache:v3 & 1];

  sub_1C8D72FC8();
  v21 = sub_1C906419C();

  v22 = 0;
  for (i = (v14 + 40); ; i += 2)
  {
    if (v15 == v22)
    {

      goto LABEL_16;
    }

    if (v22 >= *(v14 + 16))
    {
      break;
    }

    ++v22;
    v25 = *(i - 1);
    v24 = *i;

    static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v21, v25, v24, v16, v17);
    v27 = v26;

    sub_1C8CAEAFC(v27);
  }

  __break(1u);
}

void ParameterDefinition.parentToolMetadata.getter(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  sub_1C8DFBCB0(v4, v5, v6, a1, a2);
}

double ParameterDefinition.init(key:name:description:flags:valueType:relationships:parentToolMetadata:overriddenSampleInvocations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *a7;
  v13 = *a8;
  v14 = *(a11 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v12;
  *(a9 + 56) = v13;
  *(a9 + 64) = a10;
  *(a9 + 104) = *a11;
  *(a9 + 120) = v14;
  *(a9 + 128) = a12;
  result = 0.0;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  return result;
}

double ParameterDefinition.init(key:name:description:flags:valueType:relationships:sampleInvocations:)@<D0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t *a8@<X6>, uint64_t *a9@<X7>, uint64_t a10)
{
  v10 = *a8;
  v11 = *a9;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = v10;
  a1[7] = v11;
  a1[8] = a10;
  return OUTLINED_FUNCTION_129_4(a1);
}

double ParameterDefinition.init(key:name:description:valueType:relationships:sampleInvocations:)@<D0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t *a8@<X6>, uint64_t a9@<X7>)
{
  v9 = *a8;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = 0;
  a1[7] = v9;
  a1[8] = a9;
  return OUTLINED_FUNCTION_129_4(a1);
}

uint64_t static ParameterDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v178 = v3[7];
  v179 = v3[6];
  v172 = v3[9];
  v171 = v3[10];
  v173 = v3[11];
  v174 = v3[12];
  v167 = v3[13];
  v163 = v3[16];
  v164 = v3[15];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v170 = v2[9];
  v176 = v3[14];
  v177 = v2[10];
  v169 = v2[11];
  v14 = v1 == *v2 && v3[1] == v2[1];
  v168 = v2[12];
  v175 = v2[14];
  v165 = v2[13];
  v166 = v2[15];
  v162 = v2[16];
  if (!v14 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8 || v5 != v9)
  {
    OUTLINED_FUNCTION_192_5();
    if ((sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  if (!v7)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    return 0;
  }

  if (v6 != v10 || v7 != v11)
  {
    OUTLINED_FUNCTION_206_0();
    sub_1C9064C2C();
    result = OUTLINED_FUNCTION_274();
    if ((v18 & 1) == 0)
    {
      return result;
    }

LABEL_20:
    if (v179 != v13)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v179 != v13)
  {
    return 0;
  }

LABEL_23:
  v181 = v12;
  v182 = v178;

  static TypeInstance.== infix(_:_:)(&v182, &v181);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB188();
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  if (!v171)
  {
    sub_1C8D16DD0(v172, 0, v173, v174, v21);
    v45 = v166;
    v44 = v167;
    v24 = v175;
    v23 = v176;
    v46 = v165;
    if (!v177)
    {
      sub_1C8D16DD0(v170, 0, v169, v168, v47);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_192_5();
    sub_1C8D16DD0(v48, v49, v50, v51, v52);
    goto LABEL_41;
  }

  v24 = v175;
  v23 = v176;
  if (!v177)
  {
    sub_1C8D16DD0(v172, v171, v173, v174, v21);
    OUTLINED_FUNCTION_192_5();
    sub_1C8D16DD0(v53, v54, v55, v56, v57);
    v58 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16DD0(v58, v59, v60, v61, v62);

LABEL_41:
    v63 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16E14(v63, v64);
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_192_5();
LABEL_42:
    sub_1C8D16E14(v65, v66);
    return 0;
  }

  if (v172 != v170 || v171 != v177)
  {
    OUTLINED_FUNCTION_325();
    if ((sub_1C9064C2C() & 1) == 0)
    {
      v113 = OUTLINED_FUNCTION_13_21();
      sub_1C8D16DD0(v113, v114, v115, v116, v117);
      v118 = OUTLINED_FUNCTION_117();
      sub_1C8D16DD0(v118, v119, v169, v168, v120);
      v121 = OUTLINED_FUNCTION_13_21();
      sub_1C8D16DD0(v121, v122, v123, v124, v125);
      v126 = OUTLINED_FUNCTION_117();
      sub_1C8D16E14(v126, v127);

      v65 = OUTLINED_FUNCTION_13_21();
      goto LABEL_42;
    }
  }

  if (v173 == v169 && v174 == v168)
  {
    v67 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16DD0(v67, v68, v69, v70, v71);
    sub_1C8D16DD0(v170, v177, v173, v174, v72);
    v73 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16DD0(v73, v74, v75, v76, v77);
    v78 = OUTLINED_FUNCTION_117();
    sub_1C8D16E14(v78, v79);

    v45 = v166;
    v44 = v167;
    v46 = v165;
LABEL_45:
    v80 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16E14(v80, v81);
    goto LABEL_46;
  }

  v180 = OUTLINED_FUNCTION_335_0(v173, v174, v169);
  v27 = OUTLINED_FUNCTION_13_21();
  sub_1C8D16DD0(v27, v28, v29, v30, v31);
  sub_1C8D16DD0(v170, v177, v169, v168, v32);
  v33 = OUTLINED_FUNCTION_13_21();
  sub_1C8D16DD0(v33, v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_117();
  sub_1C8D16E14(v38, v39);

  v40 = OUTLINED_FUNCTION_13_21();
  sub_1C8D16E14(v40, v41);
  v45 = v166;
  v44 = v167;
  v46 = v165;
  if ((v180 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  if (v23)
  {
    if (v24)
    {
      v82 = v44 == v46 && v23 == v24;
      if (v82 || (OUTLINED_FUNCTION_249(), (sub_1C9064C2C() & 1) != 0))
      {
        v83 = OUTLINED_FUNCTION_276();
        sub_1C8CEB10C(v83, v84);
        v86 = v85;
        v87 = OUTLINED_FUNCTION_36_13();
        sub_1C8DFBCB0(v87, v88, v89, v90, v91);
        v92 = OUTLINED_FUNCTION_46_9();
        sub_1C8DFBCB0(v92, v93, v94, v95, v96);
        v97 = OUTLINED_FUNCTION_36_13();
        sub_1C8DFBCB0(v97, v98, v99, v100, v101);
        v102 = OUTLINED_FUNCTION_46_9();
        sub_1C8E56464(v102, v103);

        v104 = OUTLINED_FUNCTION_36_13();
        sub_1C8E56464(v104, v105);
        if ((v86 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_64;
      }

      v145 = OUTLINED_FUNCTION_36_13();
      sub_1C8DFBCB0(v145, v146, v147, v148, v149);
      v150 = OUTLINED_FUNCTION_46_9();
      sub_1C8DFBCB0(v150, v151, v152, v153, v154);
      v155 = OUTLINED_FUNCTION_36_13();
      sub_1C8DFBCB0(v155, v156, v157, v158, v159);
      v160 = OUTLINED_FUNCTION_46_9();
      sub_1C8E56464(v160, v161);

      v142 = OUTLINED_FUNCTION_36_13();
LABEL_60:
      sub_1C8E56464(v142, v143);
      return 0;
    }

    v128 = OUTLINED_FUNCTION_36_13();
    sub_1C8DFBCB0(v128, v129, v130, v131, v132);
    sub_1C8DFBCB0(v46, 0, v45, v133, v134);
    v135 = OUTLINED_FUNCTION_36_13();
    sub_1C8DFBCB0(v135, v136, v137, v138, v139);

LABEL_59:
    v140 = OUTLINED_FUNCTION_36_13();
    sub_1C8E56464(v140, v141);
    v142 = OUTLINED_FUNCTION_46_9();
    goto LABEL_60;
  }

  sub_1C8DFBCB0(v44, 0, v164, v42, v43);
  if (v24)
  {
    v108 = OUTLINED_FUNCTION_46_9();
    sub_1C8DFBCB0(v108, v109, v110, v111, v112);
    goto LABEL_59;
  }

  sub_1C8DFBCB0(v46, 0, v45, v106, v107);
  sub_1C8E56464(v44, 0);
LABEL_64:
  if (v163)
  {
    if (!v162)
    {
      return 0;
    }

    sub_1C8CEB4A0(v163, v162);
    return (v144 & 1) != 0;
  }

  return !v162;
}

uint64_t sub_1C8E8BBC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4D6E61656C6F6F62 && a2 == 0xEF61746164617465;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C90CC0A0 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001BLL && 0x80000001C90CC040 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C8E8BEA4(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x7367616C66;
      break;
    case 4:
      result = 0x70795465756C6176;
      break;
    case 5:
      result = 0x6E6F6974616C6572;
      break;
    case 6:
      result = 0x4D6E61656C6F6F62;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E8BFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8BBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8BFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96714(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96714(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ParameterDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180B0, &qword_1C90922B0);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38();
  v36 = v0[9];
  v37 = v0[10];
  v34 = v0[13];
  v35 = v0[14];
  v7 = OUTLINED_FUNCTION_206_0();
  v9 = OUTLINED_FUNCTION_217(v7, v8);
  sub_1C8E96714(v9, v10, v11);
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_107();
  sub_1C9064B2C();
  if (!v1)
  {
    sub_1C9064B2C();
    v12 = sub_1C9064ADC();
    sub_1C8D26A34(v12, v13, v14);
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_231_2();
    sub_1C8CA6D90(v15, v16, v17);

    OUTLINED_FUNCTION_65_8();
    sub_1C9064B8C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8E96768();
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_270();
    sub_1C8D16DD0(v18, v19, v20, v21, v22);
    sub_1C8E967EC(v23, v24, v25);
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B0C();
    sub_1C8D16E14(v36, v37);
    OUTLINED_FUNCTION_269();
    sub_1C8DFBCB0(v26, v27, v28, v29, v30);
    sub_1C8E96840(v31, v32, v33);
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B0C();
    sub_1C8E56464(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
    sub_1C8E95AF0();
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B0C();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[10];
  v6 = v0[14];
  v4 = v0[16];
  sub_1C9063FBC();
  sub_1C9063FBC();
  if (v1)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  MEMORY[0x1CCA82810](v2);
  TypeInstance.hash(into:)();
  sub_1C8D03608();
  if (v3)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  if (!v6)
  {
    OUTLINED_FUNCTION_283();
    if (v4)
    {
      goto LABEL_9;
    }

    return OUTLINED_FUNCTION_283();
  }

  OUTLINED_FUNCTION_284();
  sub_1C9063FBC();
  sub_1C8CC1590();
  if (!v4)
  {
    return OUTLINED_FUNCTION_283();
  }

LABEL_9:
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_145();

  return sub_1C8D03494();
}

uint64_t ParameterDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  ParameterDefinition.hash(into:)();
  return sub_1C9064DBC();
}

void ParameterDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180C8, &qword_1C90922C0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_110();
  v16 = OUTLINED_FUNCTION_203();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  sub_1C8E96714(v18, v19, v20);
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    OUTLINED_FUNCTION_104_4();
    v40 = sub_1C9064A0C();
    v51 = v21;
    OUTLINED_FUNCTION_104_4();
    v22 = sub_1C9064A0C();
    v50 = v23;
    LOBYTE(v53) = 2;
    OUTLINED_FUNCTION_104_4();
    v39 = sub_1C90649AC();
    v49 = v24;
    sub_1C8D26910(v39, v24, v25);
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    v26 = sub_1C9064A6C();
    v38 = v53;
    sub_1C8CAC450(v26, v27, v28);
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    sub_1C9064A6C();
    v37 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8E96894();
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    v29 = sub_1C9064A6C();
    v48 = v53;
    sub_1C8E96918(v29, v30, v31);
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    v32 = sub_1C90649EC();
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    LOBYTE(v52[0]) = 7;
    sub_1C8E9696C(v32, v33, v34);
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    sub_1C90649EC();
    v42 = v54;
    v43 = v53;
    v41 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
    v70 = 8;
    sub_1C8E960F4();
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_104_4();
    sub_1C90649EC();
    v35 = OUTLINED_FUNCTION_94_5();
    v36(v35);
    v52[0] = v40;
    v52[1] = v51;
    v52[2] = v22;
    v52[3] = v50;
    v52[4] = v39;
    v52[5] = v49;
    v52[6] = v38;
    v52[7] = v37;
    v52[8] = v48;
    v52[9] = v44;
    v52[10] = v45;
    v52[11] = v46;
    v52[12] = v47;
    v52[13] = v43;
    v52[14] = v42;
    v52[15] = v41;
    v52[16] = a10;
    memcpy(v14, v52, 0x88uLL);
    sub_1C8D07294(v52, &v53);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v53 = v40;
    v54 = v51;
    v55 = v22;
    v56 = v50;
    v57 = v39;
    v58 = v49;
    v59 = v38;
    v60 = v37;
    v61 = v48;
    v62 = v44;
    v63 = v45;
    v64 = v46;
    v65 = v47;
    v66 = v43;
    v67 = v42;
    v68 = v41;
    v69 = a10;
    sub_1C8D072F0(&v53);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8CAF8(uint64_t a1)
{
  sub_1C9064D7C();
  ParameterDefinition.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t ParameterRelationshipDefinition.relation.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = *(v5 + 16);
  *a5 = v6;
  v7 = *(v5 + 24);
  *(a5 + 8) = v7;
  return sub_1C8D07154(v6, v7, a1, a2, a3, a4);
}

uint64_t sub_1C8E8CD58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6F537369 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F4E7369 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736C61757165 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61757145746F6ELL && a2 == 0xE900000000000073;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736E6961746E6F63 && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x43746F4E73656F64 && a2 == 0xEE006E6961746E6FLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E8CFDC(char a1)
{
  result = 0x656D6F537369;
  switch(a1)
  {
    case 1:
      result = 0x656E6F4E7369;
      break;
    case 2:
      result = 0x736C61757165;
      break;
    case 3:
      result = 0x6C61757145746F6ELL;
      break;
    case 4:
      result = 0x5472657461657267;
      break;
    case 5:
      result = 0x6E6168547373656CLL;
      break;
    case 6:
      result = 0x736E6961746E6F63;
      break;
    case 7:
      result = 0x43746F4E73656F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E8D0C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 0x6C61757145726FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E8D178(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E8D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8CD58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8D210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E969C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E969C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96AEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96AEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96A14(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96A14(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96C3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96C3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96B94(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96B94(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96C90(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96C90(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96CE4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96CE4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96B40(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96B40(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96BE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96BE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ParameterRelationshipDefinition.Relation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v1;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180D8, &qword_1C90922C8);
  OUTLINED_FUNCTION_11();
  v76 = v8;
  v77 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_10(v10, v61);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180E0, &qword_1C90922D0);
  OUTLINED_FUNCTION_11();
  v72 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v70 = v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180E8, &qword_1C90922D8);
  OUTLINED_FUNCTION_11();
  v71 = v14;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  v69 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180F0, &qword_1C90922E0);
  OUTLINED_FUNCTION_11();
  v67 = v18;
  v68 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  v66 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180F8, &qword_1C90922E8);
  OUTLINED_FUNCTION_11();
  v64 = v22;
  v65 = v21;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  v63 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318100, &qword_1C90922F0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_73();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318108, &qword_1C90922F8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318110, &qword_1C9092300);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_86();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318118, &unk_1C9092308);
  OUTLINED_FUNCTION_11();
  v79 = v28;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_142();
  v78 = *v4;
  v30 = *(v4 + 8);
  v31 = *(v6 + 24);
  v32 = OUTLINED_FUNCTION_181();
  v34 = OUTLINED_FUNCTION_217(v32, v33);
  sub_1C8E969C0(v34, v35, v36);
  OUTLINED_FUNCTION_266_2();
  v37 = sub_1C9064E1C();
  switch(v30 >> 5)
  {
    case 1u:
      sub_1C8E96BE8(v37, v38, v39);
      v43 = v63;
      OUTLINED_FUNCTION_75_3(&type metadata for ParameterRelationshipDefinition.Relation.NotEqualsCodingKeys);
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      v51 = OUTLINED_FUNCTION_190_7();
      v45 = v65;
      OUTLINED_FUNCTION_169_4(v51);
      v46 = v64;
      goto LABEL_13;
    case 2u:
      sub_1C8E96B94(v37, v38, v39);
      v47 = v66;
      OUTLINED_FUNCTION_75_3(&type metadata for ParameterRelationshipDefinition.Relation.GreaterThanCodingKeys);
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      v48 = OUTLINED_FUNCTION_190_7();
      v45 = v68;
      OUTLINED_FUNCTION_280_1(v48);
      if (!v2)
      {
        OUTLINED_FUNCTION_194_4();
      }

      v49 = v67;
      goto LABEL_10;
    case 3u:
      sub_1C8E96B40(v37, v38, v39);
      v47 = v69;
      OUTLINED_FUNCTION_75_3(&type metadata for ParameterRelationshipDefinition.Relation.LessThanCodingKeys);
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      v50 = OUTLINED_FUNCTION_190_7();
      v45 = v73;
      OUTLINED_FUNCTION_280_1(v50);
      if (!v2)
      {
        OUTLINED_FUNCTION_194_4();
      }

      v49 = v71;
LABEL_10:
      v42 = *(v49 + 8);
      v40 = v47;
      goto LABEL_14;
    case 4u:
      sub_1C8E96AEC(v37, v38, v39);
      v43 = v70;
      OUTLINED_FUNCTION_75_3(&type metadata for ParameterRelationshipDefinition.Relation.ContainsCodingKeys);
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      v44 = OUTLINED_FUNCTION_190_7();
      v45 = v74;
      OUTLINED_FUNCTION_169_4(v44);
      v46 = v72;
      goto LABEL_13;
    case 5u:
      sub_1C8E96A14(v37, v38, v39);
      v43 = v75;
      OUTLINED_FUNCTION_75_3(&type metadata for ParameterRelationshipDefinition.Relation.DoesNotContainCodingKeys);
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      v52 = OUTLINED_FUNCTION_190_7();
      v45 = v77;
      OUTLINED_FUNCTION_169_4(v52);
      v46 = v76;
LABEL_13:
      v42 = *(v46 + 8);
      v40 = v43;
LABEL_14:
      v41 = v45;
      goto LABEL_15;
    case 6u:
      if (v78 | v30 ^ 0xC0)
      {
        sub_1C8E96C90(v37, v38, v39);
        sub_1C9064ACC();
        v59 = OUTLINED_FUNCTION_47_3();
        v60(v59, v62);
        v58 = *(v79 + 8);
        v56 = v0;
        v57 = v80;
      }

      else
      {
        sub_1C8E96CE4(v37, v38, v39);
        sub_1C9064ACC();
        v54 = OUTLINED_FUNCTION_107();
        v55(v54);
        v56 = OUTLINED_FUNCTION_95_0();
      }

      v58(v56, v57);
      goto LABEL_16;
    default:
      sub_1C8E96C3C(v37, v38, v39);
      OUTLINED_FUNCTION_75_3(&type metadata for ParameterRelationshipDefinition.Relation.EqualsCodingKeys);
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      OUTLINED_FUNCTION_190_7();
      sub_1C9064B8C();
      v40 = OUTLINED_FUNCTION_127();
LABEL_15:
      v42(v40, v41);
      OUTLINED_FUNCTION_107_5();
      v53(v3, v31);
LABEL_16:
      OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t ParameterRelationshipDefinition.Relation.hash(into:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  switch(v3 >> 5)
  {
    case 1u:
      v5 = 3;
      goto LABEL_9;
    case 2u:
      v6 = 4;
      goto LABEL_6;
    case 3u:
      v6 = 5;
LABEL_6:
      MEMORY[0x1CCA82810](v6);
      sub_1C8D3977C(a1, v2);
      return sub_1C9064D9C();
    case 4u:
      v5 = 6;
      goto LABEL_9;
    case 5u:
      v5 = 7;
      goto LABEL_9;
    case 6u:
      return MEMORY[0x1CCA82810]((v2 | v3 ^ 0xC0) != 0);
    default:
      v5 = 2;
LABEL_9:
      MEMORY[0x1CCA82810](v5);

      return sub_1C8D3977C(a1, v2);
  }
}

uint64_t ParameterRelationshipDefinition.Relation.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  OUTLINED_FUNCTION_298();
  ParameterRelationshipDefinition.Relation.hash(into:)(v3);
  return sub_1C9064DBC();
}

void ParameterRelationshipDefinition.Relation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v127 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318140, &qword_1C9092318);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318148, &qword_1C9092320);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_42_10(v28, v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318150, &qword_1C9092328);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318158, &qword_1C9092330);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v128 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318160, &qword_1C9092338);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_39_0(v33, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318168, &qword_1C9092340);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318170, &qword_1C9092348);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318178, &qword_1C9092350);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318180, &qword_1C9092358);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_142();
  v129 = v24;
  v39 = OUTLINED_FUNCTION_217(v24, v24[3]);
  sub_1C8E969C0(v39, v40, v41);
  OUTLINED_FUNCTION_266_2();
  sub_1C9064DEC();
  if (!v20)
  {
    v126 = v36;
    v42 = v128;
    v43 = sub_1C9064A9C();
    v44 = sub_1C8CB8914(v43, 0);
    if (v46 != v45 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v51 == v52)
      {
        __break(1u);
        return;
      }

      v53 = *(v50 + v48);
      sub_1C8CB891C(v48 + 1, v47, v44, v50, v48, v49);
      v55 = v54;
      v57 = v56;
      v58 = swift_unknownObjectRelease();
      if (v55 == v57 >> 1)
      {
        switch(v53)
        {
          case 1:
            LOBYTE(a10) = 1;
            sub_1C8E96C90(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.IsNoneCodingKeys, &a10);
            swift_unknownObjectRelease();
            v89 = OUTLINED_FUNCTION_30();
            v90(v89);
            OUTLINED_FUNCTION_59_8();
            v91 = OUTLINED_FUNCTION_181_1();
            v92(v91);
            v65 = -64;
            v42 = 1;
            break;
          case 2:
            LOBYTE(a10) = 2;
            sub_1C8E96C3C(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.EqualsCodingKeys, &a10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2(v77, v78, v79, v80);
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v104 = OUTLINED_FUNCTION_125_1();
            v105(v104);
            v106 = OUTLINED_FUNCTION_14_29();
            v107(v106);
            v65 = 0;
            v42 = a10;
            break;
          case 3:
            LOBYTE(a10) = 3;
            sub_1C8E96BE8(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.NotEqualsCodingKeys, &a10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2(v81, v82, v83, v84);
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v108 = OUTLINED_FUNCTION_125_1();
            v109(v108);
            v110 = OUTLINED_FUNCTION_14_29();
            v111(v110);
            v42 = a10;
            v65 = 32;
            break;
          case 4:
            LOBYTE(a10) = 4;
            sub_1C8E96B94(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.GreaterThanCodingKeys, &a10);
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            v75 = OUTLINED_FUNCTION_73_4();
            OUTLINED_FUNCTION_278_2(v75, v76);
            OUTLINED_FUNCTION_175_4();
            OUTLINED_FUNCTION_45_2();
            swift_unknownObjectRelease();
            v99 = OUTLINED_FUNCTION_246();
            v100(v99);
            v101 = OUTLINED_FUNCTION_14_29();
            v102(v101);
            v103 = 64;
            goto LABEL_18;
          case 5:
            LOBYTE(a10) = 5;
            sub_1C8E96B40(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.LessThanCodingKeys, &a10);
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            v93 = OUTLINED_FUNCTION_73_4();
            OUTLINED_FUNCTION_278_2(v93, v94);
            OUTLINED_FUNCTION_175_4();
            OUTLINED_FUNCTION_45_2();
            swift_unknownObjectRelease();
            v120 = OUTLINED_FUNCTION_246();
            v121(v120);
            v122 = OUTLINED_FUNCTION_14_29();
            v123(v122);
            v103 = 96;
LABEL_18:
            v65 = v103 & 0xFE | v74 & 1;
            break;
          case 6:
            LOBYTE(a10) = 6;
            sub_1C8E96AEC(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.ContainsCodingKeys, &a10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2(v95, v96, v97, v98);
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v116 = OUTLINED_FUNCTION_125_1();
            v117(v116);
            v118 = OUTLINED_FUNCTION_14_29();
            v119(v118);
            v42 = a10;
            v65 = 0x80;
            break;
          case 7:
            LOBYTE(a10) = 7;
            sub_1C8E96A14(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.DoesNotContainCodingKeys, &a10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2(v85, v86, v87, v88);
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v112 = OUTLINED_FUNCTION_125_1();
            v113(v112);
            v114 = OUTLINED_FUNCTION_14_29();
            v115(v114);
            v42 = a10;
            v65 = -96;
            break;
          default:
            LOBYTE(a10) = 0;
            sub_1C8E96CE4(v58, v59, v60);
            OUTLINED_FUNCTION_27_14(&type metadata for ParameterRelationshipDefinition.Relation.IsSomeCodingKeys, &a10);
            swift_unknownObjectRelease();
            v61 = OUTLINED_FUNCTION_30();
            v62(v61, v126);
            OUTLINED_FUNCTION_59_8();
            v63 = OUTLINED_FUNCTION_181_1();
            v64(v63);
            v42 = 0;
            v65 = -64;
            break;
        }

        v73 = v129;
        *v127 = v42;
        *(v127 + 8) = v65;
        goto LABEL_10;
      }
    }

    v66 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v66, MEMORY[0x1E69E6B28]);
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v68 = &type metadata for ParameterRelationshipDefinition.Relation;
    v69 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v69);
    OUTLINED_FUNCTION_10_0();
    (*(v70 + 104))(v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = OUTLINED_FUNCTION_40_14();
    v72(v71);
  }

  v73 = v129;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v73);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8EAF0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_1C9064D7C();
  ParameterRelationshipDefinition.Relation.hash(into:)(v4);
  return sub_1C9064DBC();
}

uint64_t ParameterRelationshipDefinition.init(key:relation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

uint64_t static ParameterRelationshipDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = v1 == *v7 && *(v4 + 8) == v9;
  if (v12 || (v13 = 0, (sub_1C9064C2C() & 1) != 0))
  {
    v21 = v5;
    v22 = v6;
    v19 = v10;
    v20 = v11;
    sub_1C8D07154(v5, v6, v8, v9, v2, v3);
    sub_1C8D07154(v10, v11, v14, v15, v16, v17);
    v13 = static ParameterRelationshipDefinition.Relation.== infix(_:_:)(&v21, &v19);
    sub_1C8D07168(v10, v11);
    sub_1C8D07168(v5, v6);
  }

  return v13 & 1;
}

uint64_t sub_1C8E8EC48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E8ED10(char a1)
{
  if (a1)
  {
    return 0x6E6F6974616C6572;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1C8E8ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8EC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8ED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96DBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96DBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ParameterRelationshipDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318188, &qword_1C9092360);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  v5 = OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E96DBC(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_67_8();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    v14 = sub_1C8D07154(v8, v9, v10, v11, v12, v13);
    sub_1C8E96E10(v14, v15, v16);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    sub_1C8D07168(v19, v20);
  }

  v17 = OUTLINED_FUNCTION_93();
  v18(v17);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterRelationshipDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  sub_1C9063FBC();
  return ParameterRelationshipDefinition.Relation.hash(into:)(v0);
}

uint64_t ParameterRelationshipDefinition.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  ParameterRelationshipDefinition.Relation.hash(into:)(v1);
  return sub_1C9064DBC();
}

void ParameterRelationshipDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318190, &qword_1C9092368);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  v6 = OUTLINED_FUNCTION_56_0();
  v9 = sub_1C8E96DBC(v6, v7, v8);
  OUTLINED_FUNCTION_208(&type metadata for ParameterRelationshipDefinition.CodingKeys, v10, v9);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    OUTLINED_FUNCTION_223_0();
    sub_1C8E96E64(v11, v12, v13);
    OUTLINED_FUNCTION_98_4();
    sub_1C9064A6C();
    v14 = OUTLINED_FUNCTION_10_2();
    v15(v14);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v20;
    *(v2 + 24) = v21;

    sub_1C8D07154(v20, v21, v16, v17, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v0);

    sub_1C8D07168(v20, v21);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8F1B0(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  ParameterRelationshipDefinition.Relation.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E8F268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96EB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8F2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96EB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8F2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96F60(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8F31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96F60(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8F358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96F0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8F394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96F0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8F3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96FB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E96FB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void AppDefinition.Origin.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318198, &qword_1C9092370);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181A0, &qword_1C9092378);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_39_0(v3, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181A8, &qword_1C9092380);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181B0, &qword_1C9092388);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  v6 = *v0;
  v7 = OUTLINED_FUNCTION_146_4();
  v9 = OUTLINED_FUNCTION_217(v7, v8);
  sub_1C8E96EB8(v9, v10, v11);
  OUTLINED_FUNCTION_103_0();
  v12 = sub_1C9064E1C();
  if (v6)
  {
    if (v6 == 1)
    {
      OUTLINED_FUNCTION_223_0();
      sub_1C8E96F60(v15, v16, v17);
    }

    else
    {
      OUTLINED_FUNCTION_119_1();
      sub_1C8E96F0C(v18, v19, v20);
    }

    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  else
  {
    sub_1C8E96FB4(v12, v13, v14);
    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  v21 = OUTLINED_FUNCTION_30();
  v22(v21);
  v23 = OUTLINED_FUNCTION_146_0();
  v24(v23);
  OUTLINED_FUNCTION_198();
}

void AppDefinition.Origin.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v27;
  a23 = v28;
  v30 = v29;
  v87 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181C0, &qword_1C9092390);
  OUTLINED_FUNCTION_11();
  v88 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181C8, &qword_1C9092398);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_38();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181D0, &qword_1C90923A0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_86();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181D8, &qword_1C90923A8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_73();
  v39 = v30[4];
  v40 = OUTLINED_FUNCTION_77_3();
  v42 = OUTLINED_FUNCTION_217(v40, v41);
  sub_1C8E96EB8(v42, v43, v44);
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v24)
  {
    v45 = OUTLINED_FUNCTION_139_2();
    sub_1C8CB8914(v45, 0);
    OUTLINED_FUNCTION_228_3();
    if (!v46)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      v55 = *(v52 + v51);
      v56 = OUTLINED_FUNCTION_93_3(v47, v48, v49, v50, v51);
      sub_1C8CB891C(v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_272_0();
      v63 = v62;
      v64 = swift_unknownObjectRelease();
      if (v39 == v63 >> 1)
      {
        if (v55)
        {
          if (v55 == 1)
          {
            OUTLINED_FUNCTION_223_0();
            sub_1C8E96F60(v67, v68, v69);
            OUTLINED_FUNCTION_74(&type metadata for AppDefinition.Origin.FirstPartyCodingKeys, &a13);
            OUTLINED_FUNCTION_253_2();
            swift_unknownObjectRelease();
            v79 = OUTLINED_FUNCTION_47_3();
            v80(v79);
            v81 = OUTLINED_FUNCTION_87_5();
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            sub_1C8E96F0C(v76, v77, v78);
            OUTLINED_FUNCTION_44_11();
            sub_1C906498C();
            OUTLINED_FUNCTION_252_2();
            swift_unknownObjectRelease();
            (*(v88 + 8))(v35, v25);
            v81 = OUTLINED_FUNCTION_86_4();
          }

          v82(v81);
        }

        else
        {
          a12 = 0;
          sub_1C8E96FB4(v64, v65, v66);
          OUTLINED_FUNCTION_74(&type metadata for AppDefinition.Origin.UnknownCodingKeys, &a12);
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_30();
          v84(v83);
          v85 = OUTLINED_FUNCTION_41();
          v86(v85);
          v23 = v87;
        }

        *v23 = v55;
        __swift_destroy_boxed_opaque_existential_1(0);
        goto LABEL_12;
      }
    }

    v70 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v70, MEMORY[0x1E69E6B28]);
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v72 = &type metadata for AppDefinition.Origin;
    v73 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v73);
    OUTLINED_FUNCTION_10_0();
    (*(v74 + 104))(v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_119_6();
    v75(v26, v37);
    v30 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8FC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97008(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8FC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97008(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E970B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8FD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E970B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E8FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9705C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8FD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9705C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void AppDefinition.Device.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181E0, &qword_1C90923B0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181E8, &qword_1C90923B8);
  OUTLINED_FUNCTION_11();
  v28 = v3;
  v29 = v2;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_0(v5, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181F0, &qword_1C90923C0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_0();
  v7 = *(v0 + 8);
  v8 = OUTLINED_FUNCTION_292();
  v10 = OUTLINED_FUNCTION_217(v8, v9);
  sub_1C8E97008(v10, v11, v12);
  OUTLINED_FUNCTION_103_0();
  v13 = sub_1C9064E1C();
  if (v7)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8E9705C(v16, v17, v18);
    OUTLINED_FUNCTION_34();
    v19 = sub_1C9064ACC();
    OUTLINED_FUNCTION_243_2(v19, v20, v21);
    OUTLINED_FUNCTION_59_8();
    v22 = OUTLINED_FUNCTION_278();
    v23(v22);
  }

  else
  {
    sub_1C8E970B0(v13, v14, v15);
    OUTLINED_FUNCTION_34();
    sub_1C9064ACC();
    (*(v28 + 8))(v27, v29);
  }

  v24 = OUTLINED_FUNCTION_146_0();
  v25(v24);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void AppDefinition.Device.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_251_2();
  v60 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318200, &qword_1C90923C8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318208, &qword_1C90923D0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318210, &qword_1C90923D8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38();
  v15 = v10[4];
  v16 = OUTLINED_FUNCTION_107();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  sub_1C8E97008(v18, v19, v20);
  OUTLINED_FUNCTION_132_0();
  sub_1C9064DEC();
  if (!v61)
  {
    v21 = OUTLINED_FUNCTION_216_2();
    sub_1C8CB8914(v21, 0);
    if (v23 != v22 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v26 == v27)
      {
        __break(1u);
        return;
      }

      v28 = OUTLINED_FUNCTION_187_6(v24, v25);
      sub_1C8CB891C(v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_272_0();
      v35 = v34;
      v36 = swift_unknownObjectRelease();
      if (v15 == v35 >> 1)
      {
        if (a10)
        {
          OUTLINED_FUNCTION_275();
          sub_1C8E9705C(v39, v40, v41);
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          OUTLINED_FUNCTION_205();
          v53 = sub_1C9064A0C();
          v55 = v54;
          swift_unknownObjectRelease();
          v56 = OUTLINED_FUNCTION_93();
          v57(v56);
          v58 = OUTLINED_FUNCTION_66_8();
          v59(v58);
        }

        else
        {
          sub_1C8E970B0(v36, v37, v38);
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_107_5();
          v50();
          v51 = OUTLINED_FUNCTION_62_7();
          v52(v51);
          v53 = 0;
          v55 = 0;
        }

        v49 = v10;
        *v60 = v53;
        v60[1] = v55;
        goto LABEL_10;
      }
    }

    v42 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v42, MEMORY[0x1E69E6B28]);
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    v45 = OUTLINED_FUNCTION_241_3(&type metadata for AppDefinition.Device);
    OUTLINED_FUNCTION_411(v45);
    OUTLINED_FUNCTION_10_0();
    (*(v46 + 104))(v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_41_12();
    v48(v47);
  }

  v49 = v10;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.name.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AppDefinition.bundleId.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AppDefinition.bundleVersion.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AppDefinition.teamId.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t AppDefinition.device.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t AppDefinition.synonyms.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

__n128 AppDefinition.init(id:name:bundleId:bundleVersion:teamId:device:origin:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 *a12, unsigned __int8 *a13)
{
  v12 = *a13;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  result = *a12;
  a9[5] = *a12;
  a9[6].n128_u8[0] = v12;
  a9[6].n128_u64[1] = MEMORY[0x1E69E7CC0];
  return result;
}

void static AppDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v3 + 40);
  v32 = *(v3 + 56);
  v33 = *(v3 + 48);
  v30 = *(v3 + 72);
  v31 = *(v3 + 64);
  v27 = *(v3 + 88);
  v21 = *(v3 + 104);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v10 = *(v2 + 40);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  v29 = *(v2 + 64);
  v28 = *(v2 + 72);
  v24 = *(v2 + 80);
  v25 = *(v3 + 80);
  v26 = *(v2 + 88);
  v22 = *(v2 + 96);
  v23 = *(v3 + 96);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v20 = *(v2 + 104);
  if (v14 || (sub_1C9064C2C() & 1) != 0)
  {
    v15 = v4 == v8 && v6 == v9;
    if (v15 || (OUTLINED_FUNCTION_124(), OUTLINED_FUNCTION_366(), (sub_1C9064C2C() & 1) != 0))
    {
      v16 = v5 == v11 && v7 == v10;
      if (v16 || (OUTLINED_FUNCTION_276(), (sub_1C9064C2C() & 1) != 0))
      {
        v17 = v33 == v12 && v32 == v13;
        if (v17 || (OUTLINED_FUNCTION_335_0(v33, v32, v12) & 1) != 0)
        {
          v18 = v31 == v29 && v30 == v28;
          if (v18 || (sub_1C9064C2C() & 1) != 0)
          {
            v35[0] = v25;
            v35[1] = v27;
            v34[0] = v24;
            v34[1] = v26;

            v19 = static AppDefinition.Device.== infix(_:_:)(v35, v34);

            if ((v19 & 1) != 0 && v23 == v22)
            {

              sub_1C8CEB10C(v21, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E909A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64496D616574 && a2 == 0xE600000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E90C10(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x6556656C646E7562;
      break;
    case 4:
      result = 0x64496D616574;
      break;
    case 5:
      result = 0x656369766564;
      break;
    case 6:
      result = 0x6E696769726FLL;
      break;
    case 7:
      result = 0x736D796E6F6E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E90CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E909A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E90D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97104(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E90D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97104(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void AppDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318218, &qword_1C90923E0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_250_1();
  v24 = v0[7];
  v25 = v0[6];
  v22 = v0[9];
  v23 = v0[8];
  v3 = OUTLINED_FUNCTION_206_0();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8E97104(v5, v6, v7);
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_278();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_163_5(1);
    OUTLINED_FUNCTION_282_2(v27, v26, v8);
    OUTLINED_FUNCTION_163_5(2);
    v9 = OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_282_2(v9, v10, v11);
    OUTLINED_FUNCTION_163_5(3);
    OUTLINED_FUNCTION_282_2(v25, v24, v12);
    OUTLINED_FUNCTION_163_5(4);
    v14 = OUTLINED_FUNCTION_282_2(v23, v22, v13);
    sub_1C8E97158(v14, v15, v16);

    OUTLINED_FUNCTION_213_3();
    sub_1C9064B8C();

    OUTLINED_FUNCTION_270();
    sub_1C8E971AC(v17, v18, v19);
    OUTLINED_FUNCTION_213_3();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_269();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_21_2(&qword_1EDA6B530, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_213_3();
    sub_1C9064B8C();
  }

  v20 = OUTLINED_FUNCTION_210_3();
  v21(v20);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_127();
  sub_1C9063FBC();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_278();
  sub_1C9063FBC();
  sub_1C9063FBC();
  if (v2)
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  MEMORY[0x1CCA82810](v4);

  return sub_1C8CC1590();
}

uint64_t AppDefinition.hashValue.getter()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_1C9064D7C();
  OUTLINED_FUNCTION_120_4();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9063FBC();
  if (v1)
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  MEMORY[0x1CCA82810](v3);
  sub_1C8CC1590();
  return sub_1C9064DBC();
}

void AppDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318220, &qword_1C90923E8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_86();
  v16 = OUTLINED_FUNCTION_287();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  sub_1C8E97104(v18, v19, v20);
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_141_6();
    v21 = sub_1C9064A0C();
    v23 = v22;
    v41 = OUTLINED_FUNCTION_84_3(1);
    v44 = v24;
    v40 = OUTLINED_FUNCTION_84_3(2);
    v43 = v25;
    v38 = OUTLINED_FUNCTION_84_3(3);
    v42 = v26;
    v27 = OUTLINED_FUNCTION_84_3(4);
    v39 = v28;
    v37 = v27;
    sub_1C8E97200(v27, v28, v29);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_141_6();
    v30 = sub_1C9064A6C();
    v35 = v46;
    v36 = v47;
    sub_1C8E97254(v30, v31, v32);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_141_6();
    sub_1C9064A6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    v60 = 7;
    OUTLINED_FUNCTION_22_1(&unk_1EDA6B520, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_141_6();
    sub_1C9064A6C();
    v33 = OUTLINED_FUNCTION_47_11();
    v34(v33);
    v45[0] = v21;
    v45[1] = v23;
    v45[2] = v41;
    v45[3] = v44;
    v45[4] = v40;
    v45[5] = v43;
    v45[6] = v38;
    v45[7] = v42;
    v45[8] = v37;
    v45[9] = v39;
    v45[10] = v46;
    v45[11] = v47;
    LOBYTE(v45[12]) = 0;
    v45[13] = a10;
    memcpy(v14, v45, 0x70uLL);
    sub_1C8E9562C(v45, &v46);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v46 = v21;
    v47 = v23;
    v48 = v41;
    v49 = v44;
    v50 = v40;
    v51 = v43;
    v52 = v38;
    v53 = v42;
    v54 = v37;
    v55 = v39;
    v56 = v35;
    v57 = v36;
    v58 = 0;
    v59 = a10;
    sub_1C8E8732C(&v46);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E9173C(uint64_t a1)
{
  sub_1C9064D7C();
  AppDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t ContainerDefinition.Origin.description.getter()
{
  v1 = 0x7261507473726966;
  if (*v0 != 1)
  {
    v1 = 0x7261506472696874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1C8E91810()
{
  OUTLINED_FUNCTION_223();
  v3 = v1 == OUTLINED_FUNCTION_42() && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x7261507473726966 && v0 == 0xEA00000000007974;
    if (v5 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x7261506472696874 && v0 == 0xEA00000000007974)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_110_4();
      sub_1C9064C2C();
      OUTLINED_FUNCTION_45_2();

      if (v1)
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

uint64_t sub_1C8E91910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E972A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E9194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E972A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E91988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97350(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E919C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97350(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E91A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E972FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E91A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E972FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E91A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E973A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E91AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E973A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ContainerDefinition.Origin.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318228, &qword_1C90923F0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318230, &qword_1C90923F8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_39_0(v3, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318238, &qword_1C9092400);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318240, &qword_1C9092408);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  v6 = *v0;
  v7 = OUTLINED_FUNCTION_146_4();
  v9 = OUTLINED_FUNCTION_217(v7, v8);
  sub_1C8E972A8(v9, v10, v11);
  OUTLINED_FUNCTION_103_0();
  v12 = sub_1C9064E1C();
  if (v6)
  {
    if (v6 == 1)
    {
      OUTLINED_FUNCTION_223_0();
      sub_1C8E97350(v15, v16, v17);
    }

    else
    {
      OUTLINED_FUNCTION_119_1();
      sub_1C8E972FC(v18, v19, v20);
    }

    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  else
  {
    sub_1C8E973A4(v12, v13, v14);
    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  v21 = OUTLINED_FUNCTION_30();
  v22(v21);
  v23 = OUTLINED_FUNCTION_146_0();
  v24(v23);
  OUTLINED_FUNCTION_198();
}

void ContainerDefinition.Origin.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v27;
  a23 = v28;
  v30 = v29;
  v87 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318250, &qword_1C9092410);
  OUTLINED_FUNCTION_11();
  v88 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318258, &qword_1C9092418);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_38();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318260, &qword_1C9092420);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_86();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318268, &qword_1C9092428);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_73();
  v39 = v30[4];
  v40 = OUTLINED_FUNCTION_77_3();
  v42 = OUTLINED_FUNCTION_217(v40, v41);
  sub_1C8E972A8(v42, v43, v44);
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v24)
  {
    v45 = OUTLINED_FUNCTION_139_2();
    sub_1C8CB8914(v45, 0);
    OUTLINED_FUNCTION_228_3();
    if (!v46)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      v55 = *(v52 + v51);
      v56 = OUTLINED_FUNCTION_93_3(v47, v48, v49, v50, v51);
      sub_1C8CB891C(v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_272_0();
      v63 = v62;
      v64 = swift_unknownObjectRelease();
      if (v39 == v63 >> 1)
      {
        if (v55)
        {
          if (v55 == 1)
          {
            OUTLINED_FUNCTION_223_0();
            sub_1C8E97350(v67, v68, v69);
            OUTLINED_FUNCTION_74(&type metadata for ContainerDefinition.Origin.FirstPartyCodingKeys, &a13);
            OUTLINED_FUNCTION_253_2();
            swift_unknownObjectRelease();
            v79 = OUTLINED_FUNCTION_47_3();
            v80(v79);
            v81 = OUTLINED_FUNCTION_87_5();
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            sub_1C8E972FC(v76, v77, v78);
            OUTLINED_FUNCTION_44_11();
            sub_1C906498C();
            OUTLINED_FUNCTION_252_2();
            swift_unknownObjectRelease();
            (*(v88 + 8))(v35, v25);
            v81 = OUTLINED_FUNCTION_86_4();
          }

          v82(v81);
        }

        else
        {
          a12 = 0;
          sub_1C8E973A4(v64, v65, v66);
          OUTLINED_FUNCTION_74(&type metadata for ContainerDefinition.Origin.UnknownCodingKeys, &a12);
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_30();
          v84(v83);
          v85 = OUTLINED_FUNCTION_41();
          v86(v85);
          v23 = v87;
        }

        *v23 = v55;
        __swift_destroy_boxed_opaque_existential_1(0);
        goto LABEL_12;
      }
    }

    v70 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v70, MEMORY[0x1E69E6B28]);
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v72 = &type metadata for ContainerDefinition.Origin;
    v73 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v73);
    OUTLINED_FUNCTION_10_0();
    (*(v74 + 104))(v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_119_6();
    v75(v26, v37);
    v30 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.Device.idsIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(v5 + 8))
  {
    v6 = IDSCopyLocalDeviceUniqueID();
    if (!v6)
    {
      v11 = sub_1C8E973F8(0, v7, v8);
      OUTLINED_FUNCTION_6_3(&type metadata for ContainerDefinition.Device.Error, v11);
      swift_willThrow();
      return OUTLINED_FUNCTION_181();
    }

    v9 = v6;
    sub_1C9063EEC();
  }

  return OUTLINED_FUNCTION_181();
}

uint64_t _s7ToolKit13AppDefinitionV6DeviceO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  if (v5 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_281_1(v5, v3, *a2, v4);
  }
}

uint64_t sub_1C8E923B4()
{
  OUTLINED_FUNCTION_223();
  v3 = v1 == OUTLINED_FUNCTION_209_1() && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x65746F6D6572 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E9245C(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E924C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9744C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E92500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9744C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E9253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E974F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E92578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E974F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E925B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E974A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E925F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E974A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ContainerDefinition.Device.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318278, &qword_1C9092430);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318280, &qword_1C9092438);
  OUTLINED_FUNCTION_11();
  v28 = v3;
  v29 = v2;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_0(v5, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318288, &qword_1C9092440);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_0();
  v7 = *(v0 + 8);
  v8 = OUTLINED_FUNCTION_292();
  v10 = OUTLINED_FUNCTION_217(v8, v9);
  sub_1C8E9744C(v10, v11, v12);
  OUTLINED_FUNCTION_103_0();
  v13 = sub_1C9064E1C();
  if (v7)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8E974A0(v16, v17, v18);
    OUTLINED_FUNCTION_34();
    v19 = sub_1C9064ACC();
    OUTLINED_FUNCTION_243_2(v19, v20, v21);
    OUTLINED_FUNCTION_59_8();
    v22 = OUTLINED_FUNCTION_278();
    v23(v22);
  }

  else
  {
    sub_1C8E974F4(v13, v14, v15);
    OUTLINED_FUNCTION_34();
    sub_1C9064ACC();
    (*(v28 + 8))(v27, v29);
  }

  v24 = OUTLINED_FUNCTION_146_0();
  v25(v24);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t _s7ToolKit13AppDefinitionV6DeviceO4hash4intoys6HasherVz_tF_0()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x1CCA82810](0);
  }

  MEMORY[0x1CCA82810](1);
  OUTLINED_FUNCTION_249();

  return sub_1C9063FBC();
}

uint64_t _s7ToolKit13AppDefinitionV6DeviceO9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_298();
  if (v1)
  {
    v2 = MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_158_5(v2);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  return sub_1C9064DBC();
}

void ContainerDefinition.Device.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_251_2();
  v60 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318298, &qword_1C9092448);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182A0, &qword_1C9092450);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182A8, &qword_1C9092458);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38();
  v15 = v10[4];
  v16 = OUTLINED_FUNCTION_107();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  sub_1C8E9744C(v18, v19, v20);
  OUTLINED_FUNCTION_132_0();
  sub_1C9064DEC();
  if (!v61)
  {
    v21 = OUTLINED_FUNCTION_216_2();
    sub_1C8CB8914(v21, 0);
    if (v23 != v22 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v26 == v27)
      {
        __break(1u);
        return;
      }

      v28 = OUTLINED_FUNCTION_187_6(v24, v25);
      sub_1C8CB891C(v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_272_0();
      v35 = v34;
      v36 = swift_unknownObjectRelease();
      if (v15 == v35 >> 1)
      {
        if (a10)
        {
          OUTLINED_FUNCTION_275();
          sub_1C8E974A0(v39, v40, v41);
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          OUTLINED_FUNCTION_205();
          v53 = sub_1C9064A0C();
          v55 = v54;
          swift_unknownObjectRelease();
          v56 = OUTLINED_FUNCTION_93();
          v57(v56);
          v58 = OUTLINED_FUNCTION_66_8();
          v59(v58);
        }

        else
        {
          sub_1C8E974F4(v36, v37, v38);
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_107_5();
          v50();
          v51 = OUTLINED_FUNCTION_62_7();
          v52(v51);
          v53 = 0;
          v55 = 0;
        }

        v49 = v10;
        *v60 = v53;
        v60[1] = v55;
        goto LABEL_10;
      }
    }

    v42 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v42, MEMORY[0x1E69E6B28]);
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    v45 = OUTLINED_FUNCTION_241_3(&type metadata for ContainerDefinition.Device);
    OUTLINED_FUNCTION_411(v45);
    OUTLINED_FUNCTION_10_0();
    (*(v46 + 104))(v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_41_12();
    v48(v47);
  }

  v49 = v10;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E92DA8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C9064D7C();
  if (v2)
  {
    v3 = MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_158_5(v3);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  return sub_1C9064DBC();
}

uint64_t ContainerDefinition.ContainerType.description.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x6F69736E65747865;
      break;
    case 4:
      result = 0x726F77656D617266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E92ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7368801 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6D656164 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69736E65747865 && a2 == 0xE90000000000006ELL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x726F77656D617266 && a2 == 0xE90000000000006BLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

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

uint64_t sub_1C8E9307C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x6F69736E65747865;
      break;
    case 4:
      result = 0x726F77656D617266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E93118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97698(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E93154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97698(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E93198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E92ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E931C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97548(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E931FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97548(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E93238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97644(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E93274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97644(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E932B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E975F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E932EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E975F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E93328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9759C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E93364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E9759C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E933A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E976EC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E933DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E976EC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ContainerDefinition.ContainerType.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_251_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182B0, &qword_1C9092460);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182B8, &qword_1C9092468);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_0(v6, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182C0, &qword_1C9092470);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_42_10(v8, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182C8, &qword_1C9092478);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182D0, &qword_1C9092480);
  OUTLINED_FUNCTION_11();
  v32 = v11;
  v33 = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_110();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182D8, &qword_1C9092488);
  OUTLINED_FUNCTION_11();
  v15 = v14;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_233();
  v17 = *v0;
  v18 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8E97548(v18, v19, v20);
  v21 = sub_1C9064E1C();
  switch(v17)
  {
    case 1:
      sub_1C8E97698(v21, v22, v23);
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
      goto LABEL_7;
    case 2:
      sub_1C8E97644(v21, v22, v23);
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
      goto LABEL_7;
    case 3:
      sub_1C8E975F0(v21, v22, v23);
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_231_2();
      sub_1C8E9759C(v24, v25, v26);
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
LABEL_7:
      v27 = OUTLINED_FUNCTION_30();
      v29(v27, v28);
      break;
    default:
      sub_1C8E976EC(v21, v22, v23);
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      (*(v32 + 8))(v3, v33);
      break;
  }

  (*(v15 + 8))(v1, v13);
  OUTLINED_FUNCTION_198();
}

uint64_t _s7ToolKit13AppDefinitionV6OriginO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void ContainerDefinition.ContainerType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_196();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_219_0();
  v87 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182F8, &qword_1C9092490);
  OUTLINED_FUNCTION_11();
  v85 = v31;
  v86 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  v89 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318300, &qword_1C9092498);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318308, &qword_1C90924A0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318310, &qword_1C90924A8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_233();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318318, &qword_1C90924B0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_72();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318320, &qword_1C90924B8);
  OUTLINED_FUNCTION_11();
  v88 = v41;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_142();
  v43 = OUTLINED_FUNCTION_217(v27, v27[3]);
  sub_1C8E97548(v43, v44, v45);
  OUTLINED_FUNCTION_266_2();
  sub_1C9064DEC();
  if (!v90)
  {
    v46 = v26;
    v47 = sub_1C9064A9C();
    sub_1C8CB8914(v47, 0);
    OUTLINED_FUNCTION_228_3();
    if (v48)
    {
      v49 = v88;
    }

    else
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v50 == v51)
      {
        __break(1u);
        return;
      }

      v84 = *(v57 + v56);
      v58 = OUTLINED_FUNCTION_93_3(v52, v53, v54, v55, v56);
      sub_1C8CB891C(v58, v59, v60, v61, v62, v63);
      v65 = v64;
      v67 = v66;
      v68 = swift_unknownObjectRelease();
      if (v65 == v67 >> 1)
      {
        switch(v84)
        {
          case 1:
            a13 = 1;
            sub_1C8E97698(v68, v69, v70);
            OUTLINED_FUNCTION_7_28(&type metadata for ContainerDefinition.ContainerType.AppCodingKeys, &a13);
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 2:
            a14 = 2;
            sub_1C8E97644(v68, v69, v70);
            OUTLINED_FUNCTION_7_28(&type metadata for ContainerDefinition.ContainerType.DaemonCodingKeys, &a14);
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            a15 = 3;
            sub_1C8E975F0(v68, v69, v70);
            OUTLINED_FUNCTION_7_28(&type metadata for ContainerDefinition.ContainerType.ExtensionCodingKeys, &a15);
            swift_unknownObjectRelease();
LABEL_18:
            v71 = OUTLINED_FUNCTION_47_3();
            goto LABEL_19;
          case 4:
            OUTLINED_FUNCTION_231_2();
            sub_1C8E9759C(v79, v80, v81);
            sub_1C906498C();
            swift_unknownObjectRelease();
            (*(v86 + 8))(v89, v85);
            goto LABEL_20;
          default:
            a12 = 0;
            sub_1C8E976EC(v68, v69, v70);
            OUTLINED_FUNCTION_7_28(&type metadata for ContainerDefinition.ContainerType.UnknownCodingKeys, &a12);
            swift_unknownObjectRelease();
            v71 = OUTLINED_FUNCTION_47_3();
            v73 = v38;
LABEL_19:
            v72(v71, v73);
LABEL_20:
            v82 = OUTLINED_FUNCTION_210_3();
            v83(v82);
            *v87 = v84;
            __swift_destroy_boxed_opaque_existential_1(v27);
            break;
        }

        goto LABEL_13;
      }

      v49 = v88;
      v46 = v26;
    }

    v74 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v74, MEMORY[0x1E69E6B28]);
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v76 = &type metadata for ContainerDefinition.ContainerType;
    v77 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v77);
    OUTLINED_FUNCTION_10_0();
    (*(v78 + 104))(v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v46, v40);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_13:
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.name.setter()
{
  OUTLINED_FUNCTION_127_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContainerDefinition.synonyms.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContainerDefinition.containerId.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ContainerDefinition.bundleVersion.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ContainerDefinition.teamId.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ContainerDefinition.device.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

__n128 ContainerDefinition.init(name:containerId:bundleVersion:containerType:teamId:device:origin:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 *a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, __n128 *a11, unsigned __int8 *a12)
{
  v12 = *a7;
  v13 = *a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[2].n128_u64[0] = a4;
  a9[2].n128_u64[1] = a5;
  a9[3].n128_u64[0] = a6;
  a9[3].n128_u8[8] = v12;
  a9[4].n128_u64[0] = a8;
  a9[4].n128_u64[1] = a10;
  result = *a11;
  a9[5] = *a11;
  a9[6].n128_u8[0] = v13;
  a9[1].n128_u64[0] = MEMORY[0x1E69E7CC0];
  a9[1].n128_u64[1] = a3;
  return result;
}

uint64_t ContainerDefinition.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[6];
  v5 = *(v0 + 56);
  v90 = v0[9];
  v88 = v0[8];
  v89 = v0[10];
  v91 = v0[11];
  v93 = v0[2];
  v6 = *(v0 + 96);
  strcpy(v97, "name: ");
  v97[1] = 0xE700000000000000;
  MEMORY[0x1CCA81A90](v1, v2);
  OUTLINED_FUNCTION_152_4();
  v7 = v97[0];
  OUTLINED_FUNCTION_173_5(v8, v9, v10, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v11;
  if (v13 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_9_1(v12);
    sub_1C8D00CA4();
    v14 = v80;
  }

  *(v14 + 16) = v13 + 1;
  v15 = v14 + 16 * v13;
  *(v15 + 32) = v7;
  *(v15 + 40) = 0xE700000000000000;
  v16 = v14;
  OUTLINED_FUNCTION_197_4();
  sub_1C906478C();

  strcpy(v97, "containerId: ");
  HIBYTE(v97[1]) = -18;
  v17 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v17);
  OUTLINED_FUNCTION_152_4();
  v18 = v97[0];
  v19 = v97[1];
  OUTLINED_FUNCTION_199_5();
  if (v21)
  {
    OUTLINED_FUNCTION_9_1(v20);
    sub_1C8D00CA4();
    v16 = v81;
  }

  *(v16 + 16) = v97;
  v22 = v16 + 16 * v3;
  *(v22 + 32) = v18;
  *(v22 + 40) = v19;
  if (v4)
  {
    OUTLINED_FUNCTION_197_4();
    sub_1C906478C();

    OUTLINED_FUNCTION_97_5();
    v97[0] = 0xD000000000000010;
    v97[1] = v23;
    v24 = OUTLINED_FUNCTION_325();
    MEMORY[0x1CCA81A90](v24);
    OUTLINED_FUNCTION_152_4();
    v25 = v97[0];
    v26 = v97[1];
    OUTLINED_FUNCTION_198_3();
    if (v21)
    {
      OUTLINED_FUNCTION_55_7();
      v16 = v27;
    }
  }

  else
  {
    v3 += 2;
    if (v3 > *(v16 + 24) >> 1)
    {
      OUTLINED_FUNCTION_55_7();
      v16 = v86;
    }

    v26 = 0x80000001C90CBF30;
    v25 = 0xD000000000000012;
  }

  v28 = 0x6E776F6E6B6E75;
  *(v16 + 16) = v3;
  v29 = v16 + 16 * v97;
  *(v29 + 32) = v25;
  *(v29 + 40) = v26;
  OUTLINED_FUNCTION_197_4();
  sub_1C906478C();

  OUTLINED_FUNCTION_97_5();
  v97[0] = 0xD000000000000010;
  v97[1] = v30;
  v31 = 0xE700000000000000;
  v32 = 0x6E776F6E6B6E75;
  switch(v5)
  {
    case 1:
      v31 = 0xE300000000000000;
      v32 = 7368801;
      break;
    case 2:
      v31 = 0xE600000000000000;
      v32 = 0x6E6F6D656164;
      break;
    case 3:
      v31 = 0xE90000000000006ELL;
      v32 = 0x6F69736E65747865;
      break;
    case 4:
      v31 = 0xE90000000000006BLL;
      v32 = 0x726F77656D617266;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA81A90](v32, v31);

  v33 = v97[0];
  v34 = v97[1];
  v36 = *(v16 + 16);
  v35 = *(v16 + 24);
  if (v36 >= v35 >> 1)
  {
    OUTLINED_FUNCTION_9_1(v35);
    sub_1C8D00CA4();
    v16 = v82;
  }

  *(v16 + 16) = v36 + 1;
  v37 = v16 + 16 * v36;
  *(v37 + 32) = v33;
  *(v37 + 40) = v34;
  strcpy(v97, "origin: .");
  WORD1(v97[1]) = 0;
  HIDWORD(v97[1]) = -385875968;
  if (v6)
  {
    if (v6 == 1)
    {
      v38 = 0x507473726966;
    }

    else
    {
      v38 = 0x506472696874;
    }

    v28 = v38 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    v39 = 0xEA00000000007974;
  }

  else
  {
    v39 = 0xE700000000000000;
  }

  MEMORY[0x1CCA81A90](v28, v39);

  v40 = v97[0];
  v41 = v97[1];
  OUTLINED_FUNCTION_199_5();
  if (v21)
  {
    OUTLINED_FUNCTION_9_1(v42);
    sub_1C8D00CA4();
    v16 = v83;
  }

  *(v16 + 16) = v97;
  v43 = v16 + 16 * v39;
  *(v43 + 32) = v40;
  *(v43 + 40) = v41;
  if (v90)
  {
    strcpy(v97, "teamId: ");
    WORD1(v97[1]) = 0;
    HIDWORD(v97[1]) = -385875968;
    MEMORY[0x1CCA81A90](v88);
    OUTLINED_FUNCTION_152_4();
    v44 = v97[0];
    v45 = v97[1];
    OUTLINED_FUNCTION_198_3();
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v39 += 2;
    v45 = 0xEB000000006C696ELL;
    v44 = 0x203A64496D616574;
    if (v39 <= *(v16 + 24) >> 1)
    {
      goto LABEL_29;
    }
  }

  OUTLINED_FUNCTION_55_7();
  v16 = v51;
LABEL_29:
  *(v16 + 16) = v39;
  v46 = v16 + 16 * v97;
  *(v46 + 32) = v44;
  *(v46 + 40) = v45;
  strcpy(v97, "device: ");
  BYTE1(v97[1]) = 0;
  WORD1(v97[1]) = 0;
  HIDWORD(v97[1]) = -402653184;
  if (v91)
  {
    OUTLINED_FUNCTION_164_4();
    v94 = v47;
    v96 = v48;
    MEMORY[0x1CCA81A90](v89);
    OUTLINED_FUNCTION_340();
    v49 = v94;
    v50 = v96;
  }

  else
  {
    v50 = 0xE500000000000000;
    v49 = OUTLINED_FUNCTION_209_1();
  }

  MEMORY[0x1CCA81A90](v49, v50);

  v52 = v97[0];
  v53 = v97[1];
  OUTLINED_FUNCTION_199_5();
  if (v21)
  {
    OUTLINED_FUNCTION_9_1(v54);
    sub_1C8D00CA4();
    v16 = v84;
  }

  *(v16 + 16) = v97;
  v55 = v16 + 16 * v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = v53;
  v56 = *(v93 + 16);
  if (v56)
  {
    v92 = v16;
    v95 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v57 = v95;
    v58 = (v93 + 40);
    do
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      v97[0] = 34;
      v97[1] = 0xE100000000000000;

      MEMORY[0x1CCA81A90](v59, v60);
      OUTLINED_FUNCTION_152_4();

      v61 = v97[0];
      v62 = v97[1];
      v63 = *(v95 + 16);
      if (v63 >= *(v95 + 24) >> 1)
      {
        sub_1C8CA6480();
      }

      *(v95 + 16) = v63 + 1;
      v64 = v95 + 16 * v63;
      *(v64 + 32) = v61;
      *(v64 + 40) = v62;
      v58 += 2;
      --v56;
    }

    while (v56);
    v97[0] = v95;
    v65 = OUTLINED_FUNCTION_181();
    __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
    OUTLINED_FUNCTION_156();
    sub_1C8D28184(v67, v68, &qword_1C9066990, v69);
    sub_1C9063E9C();

    strcpy(v97, "synonyms: [");
    HIDWORD(v97[1]) = -352321536;
    v70 = OUTLINED_FUNCTION_288();
    MEMORY[0x1CCA81A90](v70);

    MEMORY[0x1CCA81A90](93, 0xE100000000000000);
    v72 = v97[0];
    v71 = v97[1];
    v16 = v92;
    OUTLINED_FUNCTION_198_3();
    if (v21)
    {
      OUTLINED_FUNCTION_55_7();
      v16 = v85;
    }
  }

  else
  {
    v71 = 0xEC0000005D5B203ALL;
    v57 = v50 + 2;
    if (v57 > *(v16 + 24) >> 1)
    {
      OUTLINED_FUNCTION_55_7();
      v16 = v87;
    }

    v72 = 0x736D796E6F6E7973;
  }

  *(v16 + 16) = v57;
  v73 = v16 + 16 * v97;
  *(v73 + 32) = v72;
  *(v73 + 40) = v71;
  OUTLINED_FUNCTION_97_5();
  v97[0] = 0xD000000000000014;
  v97[1] = v74;
  OUTLINED_FUNCTION_289_1();
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v75, v76, &qword_1C9066990, v77);
  sub_1C9063E9C();

  v78 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v78);

  OUTLINED_FUNCTION_340();
  return v97[0];
}

uint64_t sub_1C8E948B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656E6961746E6F63 && a2 == 0xED00006570795472;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64496D616574 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E94B34(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x736D796E6F6E7973;
      break;
    case 2:
    case 4:
      result = 0x656E6961746E6F63;
      break;
    case 3:
      result = 0x6556656C646E7562;
      break;
    case 5:
      result = 0x64496D616574;
      break;
    case 6:
      result = 0x656369766564;
      break;
    case 7:
      result = 0x6E696769726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E94C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E948B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E94C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97740(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E94C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E97740(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ContainerDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318328, &qword_1C90924C0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_250_1();
  v2 = OUTLINED_FUNCTION_219();
  v4 = OUTLINED_FUNCTION_217(v2, v3);
  sub_1C8E97740(v4, v5, v6);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_325();
  sub_1C9064B2C();
  if (!v0)
  {
    OUTLINED_FUNCTION_275();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_21_2(&qword_1EDA6B530, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_163_5(2);
    OUTLINED_FUNCTION_49_10();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_163_5(3);
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_231_2();
    sub_1C8E97794(v7, v8, v9);
    OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_163_5(5);
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_270();
    v13 = sub_1C8DC823C(v10, v11, v12);

    OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();

    if (!v13)
    {
      OUTLINED_FUNCTION_269();
      sub_1C8E977E8(v14, v15, v16);
      OUTLINED_FUNCTION_117_3();
      OUTLINED_FUNCTION_205();
      sub_1C9064B8C();
    }
  }

  v17 = OUTLINED_FUNCTION_287();
  v18(v17);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  ContainerDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

void ContainerDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_196();
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318330, &qword_1C90924C8);
  OUTLINED_FUNCTION_11();
  v20 = v19;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_0();
  v22 = OUTLINED_FUNCTION_278();
  v24 = OUTLINED_FUNCTION_217(v22, v23);
  sub_1C8E97740(v24, v25, v26);
  OUTLINED_FUNCTION_103_0();
  sub_1C9064DEC();
  if (v13)
  {
    OUTLINED_FUNCTION_178_2();
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v14)
    {

      if (v20)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  LOBYTE(v54) = 0;
  OUTLINED_FUNCTION_69_6();
  v27 = sub_1C9064A0C();
  v52 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_22_1(&unk_1EDA6B520, MEMORY[0x1E69E6190]);
  sub_1C9064A6C();
  v50 = v54;
  OUTLINED_FUNCTION_69_6();
  v49 = sub_1C9064A0C();
  v51 = v29;
  OUTLINED_FUNCTION_69_6();
  v30 = sub_1C90649AC();
  v32 = v31;
  v48 = v30;
  sub_1C8E9783C(v30, v31, v33);
  OUTLINED_FUNCTION_98_4();
  sub_1C9064A6C();
  v47 = v18;
  LOBYTE(v54) = 5;
  OUTLINED_FUNCTION_69_6();
  v34 = sub_1C90649AC();
  v36 = v35;
  v46 = v34;
  sub_1C8DC8080(v34, v35, v37);
  OUTLINED_FUNCTION_98_4();
  v38 = sub_1C9064A6C();
  v44 = v27;
  v39 = v55;
  v45 = v54;
  sub_1C8E97890(v38, v40, v41);
  OUTLINED_FUNCTION_98_4();
  sub_1C9064A6C();
  v42 = OUTLINED_FUNCTION_43_13();
  v43(v42);
  v53[0] = v44;
  v53[1] = v52;
  v53[2] = v50;
  v53[3] = v49;
  v53[4] = v51;
  v53[5] = v48;
  v53[6] = v32;
  LOBYTE(v53[7]) = 3;
  v53[8] = v46;
  v53[9] = v36;
  v53[10] = v54;
  v53[11] = v55;
  LOBYTE(v53[12]) = a13;
  memcpy(v47, v53, 0x61uLL);
  sub_1C8CC1340(v53, &v54);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v54 = v44;
  v55 = v52;
  v56 = v50;
  v57 = v49;
  v58 = v51;
  v59 = v48;
  v60 = v32;
  v61 = 3;
  v62 = v46;
  v63 = v36;
  v64 = v45;
  v65 = v39;
  v66 = a13;
  sub_1C8CC15FC(&v54);
LABEL_9:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E954EC(uint64_t a1)
{
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

unint64_t sub_1C8E95560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B360;
  if (!qword_1EDA6B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B360);
  }

  return result;
}

unint64_t sub_1C8E95664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B378;
  if (!qword_1EDA6B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B378);
  }

  return result;
}

unint64_t sub_1C8E956B8()
{
  result = qword_1EDA62DB8;
  if (!qword_1EDA62DB8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E283A8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DB8);
  }

  return result;
}

unint64_t sub_1C8E9573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63858;
  if (!qword_1EDA63858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63858);
  }

  return result;
}

unint64_t sub_1C8E95790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63340;
  if (!qword_1EDA63340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63340);
  }

  return result;
}

unint64_t sub_1C8E957E4()
{
  result = qword_1EDA62DC8;
  if (!qword_1EDA62DC8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312EF0, &qword_1C906A028);
    sub_1C8E95790(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DC8);
  }

  return result;
}

unint64_t sub_1C8E95868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA664A8;
  if (!qword_1EDA664A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664A8);
  }

  return result;
}

unint64_t sub_1C8E958BC()
{
  result = qword_1EDA62E58;
  if (!qword_1EDA62E58)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FC8, &qword_1C90921D0);
    sub_1C8E95940(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E58);
  }

  return result;
}

unint64_t sub_1C8E95940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA661E8;
  if (!qword_1EDA661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661E8);
  }

  return result;
}

unint64_t sub_1C8E95994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66258;
  if (!qword_1EDA66258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66258);
  }

  return result;
}

unint64_t sub_1C8E959E8()
{
  result = qword_1EDA66790;
  if (!qword_1EDA66790)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C8D22030(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66790);
  }

  return result;
}

unint64_t sub_1C8E95A6C()
{
  result = qword_1EDA667D8;
  if (!qword_1EDA667D8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD8, &unk_1C90921E0);
    sub_1C8D544D4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA667D8);
  }

  return result;
}

unint64_t sub_1C8E95AF0()
{
  result = qword_1EDA66750;
  if (!qword_1EDA66750)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A70, &qword_1C9087680);
    sub_1C8E28464(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66750);
  }

  return result;
}

uint64_t sub_1C8E95BBC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C906492C();
LABEL_9:
  result = sub_1C90647BC();
  *v2 = result;
  return result;
}

unint64_t sub_1C8E95C74()
{
  result = qword_1EDA62DB0;
  if (!qword_1EDA62DB0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E28CDC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DB0);
  }

  return result;
}

unint64_t sub_1C8E95CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63850;
  if (!qword_1EDA63850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63850);
  }

  return result;
}

unint64_t sub_1C8E95D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63338;
  if (!qword_1EDA63338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63338);
  }

  return result;
}

unint64_t sub_1C8E95DA0()
{
  result = qword_1EDA62DC0;
  if (!qword_1EDA62DC0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312EF0, &qword_1C906A028);
    sub_1C8E95D4C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DC0);
  }

  return result;
}

unint64_t sub_1C8E95E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA664A0;
  if (!qword_1EDA664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664A0);
  }

  return result;
}

uint64_t sub_1C8E95E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8E95EC0()
{
  result = qword_1EDA62E50;
  if (!qword_1EDA62E50)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FC8, &qword_1C90921D0);
    sub_1C8E95F44(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E50);
  }

  return result;
}

unint64_t sub_1C8E95F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA661E0;
  if (!qword_1EDA661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661E0);
  }

  return result;
}

unint64_t sub_1C8E95F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66250;
  if (!qword_1EDA66250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66250);
  }

  return result;
}

unint64_t sub_1C8E95FEC()
{
  result = qword_1EDA66788;
  if (!qword_1EDA66788)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C8D21FDC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66788);
  }

  return result;
}

unint64_t sub_1C8E96070()
{
  result = qword_1EDA667D0;
  if (!qword_1EDA667D0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD8, &unk_1C90921E0);
    sub_1C8D54480(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA667D0);
  }

  return result;
}

unint64_t sub_1C8E960F4()
{
  result = qword_1EDA66748;
  if (!qword_1EDA66748)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A70, &qword_1C9087680);
    sub_1C8E28D30(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66748);
  }

  return result;
}

uint64_t sub_1C8E96178()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8E961D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8E96228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA68D60;
  if (!qword_1EDA68D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D60);
  }

  return result;
}

unint64_t sub_1C8E9627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318000;
  if (!qword_1EC318000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318000);
  }

  return result;
}

unint64_t sub_1C8E962D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66230;
  if (!qword_1EDA66230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66230);
  }

  return result;
}

unint64_t sub_1C8E96324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318030;
  if (!qword_1EC318030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318030);
  }

  return result;
}

unint64_t sub_1C8E96378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66218;
  if (!qword_1EDA66218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66218);
  }

  return result;
}

unint64_t sub_1C8E963CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62660;
  if (!qword_1EDA62660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62660);
  }

  return result;
}

unint64_t sub_1C8E96420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66200;
  if (!qword_1EDA66200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66200);
  }

  return result;
}

unint64_t sub_1C8E96474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62658;
  if (!qword_1EDA62658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62658);
  }

  return result;
}

unint64_t sub_1C8E964C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66340;
  if (!qword_1EDA66340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66340);
  }

  return result;
}

unint64_t sub_1C8E9651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66328;
  if (!qword_1EDA66328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66328);
  }

  return result;
}

unint64_t sub_1C8E96570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62670;
  if (!qword_1EDA62670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62670);
  }

  return result;
}

unint64_t sub_1C8E965C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66310;
  if (!qword_1EDA66310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66310);
  }

  return result;
}

unint64_t sub_1C8E96618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62668;
  if (!qword_1EDA62668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62668);
  }

  return result;
}

unint64_t sub_1C8E9666C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA697B0;
  if (!qword_1EDA697B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697B0);
  }

  return result;
}

unint64_t sub_1C8E966C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3180A0;
  if (!qword_1EC3180A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3180A0);
  }

  return result;
}

unint64_t sub_1C8E96714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69798;
  if (!qword_1EDA69798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69798);
  }

  return result;
}

unint64_t sub_1C8E96768()
{
  result = qword_1EDA69468;
  if (!qword_1EDA69468)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8D268BC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69468);
  }

  return result;
}

unint64_t sub_1C8E967EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3180C0;
  if (!qword_1EC3180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3180C0);
  }

  return result;
}

unint64_t sub_1C8E96840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63330;
  if (!qword_1EDA63330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63330);
  }

  return result;
}

unint64_t sub_1C8E96894()
{
  result = qword_1EDA69460;
  if (!qword_1EDA69460)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8D26868(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69460);
  }

  return result;
}

unint64_t sub_1C8E96918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3180D0;
  if (!qword_1EC3180D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3180D0);
  }

  return result;
}

unint64_t sub_1C8E9696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63328;
  if (!qword_1EDA63328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63328);
  }

  return result;
}

unint64_t sub_1C8E969C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B5D0;
  if (!qword_1EDA6B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5D0);
  }

  return result;
}

unint64_t sub_1C8E96A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318120;
  if (!qword_1EC318120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318120);
  }

  return result;
}

unint64_t sub_1C8E96A68()
{
  result = qword_1EDA66728;
  if (!qword_1EDA66728)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312A10, &qword_1C9068DF0);
    sub_1C8D381AC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66728);
  }

  return result;
}

unint64_t sub_1C8E96AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694F0;
  if (!qword_1EDA694F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694F0);
  }

  return result;
}

unint64_t sub_1C8E96B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318128;
  if (!qword_1EC318128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318128);
  }

  return result;
}

unint64_t sub_1C8E96B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318130;
  if (!qword_1EC318130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318130);
  }

  return result;
}

unint64_t sub_1C8E96BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694E8;
  if (!qword_1EDA694E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694E8);
  }

  return result;
}

unint64_t sub_1C8E96C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B5B8;
  if (!qword_1EDA6B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5B8);
  }

  return result;
}

unint64_t sub_1C8E96C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318138;
  if (!qword_1EC318138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318138);
  }

  return result;
}

unint64_t sub_1C8E96CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694F8;
  if (!qword_1EDA694F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694F8);
  }

  return result;
}

unint64_t sub_1C8E96D38()
{
  result = qword_1EDA66720;
  if (!qword_1EDA66720)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312A10, &qword_1C9068DF0);
    sub_1C8D39E40(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66720);
  }

  return result;
}

unint64_t sub_1C8E96DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B5E8;
  if (!qword_1EDA6B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5E8);
  }

  return result;
}

unint64_t sub_1C8E96E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66820;
  if (!qword_1EDA66820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66820);
  }

  return result;
}

unint64_t sub_1C8E96E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66818;
  if (!qword_1EDA66818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66818);
  }

  return result;
}

unint64_t sub_1C8E96EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69FB8;
  if (!qword_1EDA69FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FB8);
  }

  return result;
}

unint64_t sub_1C8E96F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3181B8;
  if (!qword_1EC3181B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3181B8);
  }

  return result;
}

unint64_t sub_1C8E96F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63870;
  if (!qword_1EDA63870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63870);
  }

  return result;
}

unint64_t sub_1C8E96FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69FA0;
  if (!qword_1EDA69FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FA0);
  }

  return result;
}

unint64_t sub_1C8E97008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69FF8;
  if (!qword_1EDA69FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FF8);
  }

  return result;
}

unint64_t sub_1C8E9705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3181F8;
  if (!qword_1EC3181F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3181F8);
  }

  return result;
}

unint64_t sub_1C8E970B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69FE0;
  if (!qword_1EDA69FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FE0);
  }

  return result;
}

unint64_t sub_1C8E97104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6A010;
  if (!qword_1EDA6A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A010);
  }

  return result;
}

unint64_t sub_1C8E97158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63880;
  if (!qword_1EDA63880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63880);
  }

  return result;
}

unint64_t sub_1C8E971AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63868;
  if (!qword_1EDA63868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63868);
  }

  return result;
}

unint64_t sub_1C8E97200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63878;
  if (!qword_1EDA63878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63878);
  }

  return result;
}

unint64_t sub_1C8E97254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63860;
  if (!qword_1EDA63860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63860);
  }

  return result;
}

unint64_t sub_1C8E972A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69800;
  if (!qword_1EDA69800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69800);
  }

  return result;
}

unint64_t sub_1C8E972FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318248;
  if (!qword_1EC318248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318248);
  }

  return result;
}

unint64_t sub_1C8E97350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63358;
  if (!qword_1EDA63358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63358);
  }

  return result;
}

unint64_t sub_1C8E973A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA697E8;
  if (!qword_1EDA697E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697E8);
  }

  return result;
}

unint64_t sub_1C8E973F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318270;
  if (!qword_1EC318270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318270);
  }

  return result;
}

unint64_t sub_1C8E9744C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69840;
  if (!qword_1EDA69840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69840);
  }

  return result;
}

unint64_t sub_1C8E974A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318290;
  if (!qword_1EC318290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318290);
  }

  return result;
}

unint64_t sub_1C8E974F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69828;
  if (!qword_1EDA69828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69828);
  }

  return result;
}

unint64_t sub_1C8E97548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA698C0;
  if (!qword_1EDA698C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA698C0);
  }

  return result;
}

unint64_t sub_1C8E9759C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3182E0;
  if (!qword_1EC3182E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3182E0);
  }

  return result;
}

unint64_t sub_1C8E975F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66978;
  if (!qword_1EDA66978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66978);
  }

  return result;
}

unint64_t sub_1C8E97644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3182E8;
  if (!qword_1EC3182E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3182E8);
  }

  return result;
}

unint64_t sub_1C8E97698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63380;
  if (!qword_1EDA63380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63380);
  }

  return result;
}

unint64_t sub_1C8E976EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3182F0;
  if (!qword_1EC3182F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3182F0);
  }

  return result;
}

unint64_t sub_1C8E97740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69858;
  if (!qword_1EDA69858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69858);
  }

  return result;
}

unint64_t sub_1C8E97794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63378;
  if (!qword_1EDA63378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63378);
  }

  return result;
}

unint64_t sub_1C8E977E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63350;
  if (!qword_1EDA63350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63350);
  }

  return result;
}

unint64_t sub_1C8E9783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63370;
  if (!qword_1EDA63370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63370);
  }

  return result;
}

unint64_t sub_1C8E97890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63348;
  if (!qword_1EDA63348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63348);
  }

  return result;
}

unint64_t sub_1C8E978E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318338;
  if (!qword_1EC318338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318338);
  }

  return result;
}

unint64_t sub_1C8E97940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318340;
  if (!qword_1EC318340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318340);
  }

  return result;
}

unint64_t sub_1C8E97998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D028;
  if (!qword_1EDA6D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D028);
  }

  return result;
}

unint64_t sub_1C8E979F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62450;
  if (!qword_1EDA62450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62450);
  }

  return result;
}

unint64_t sub_1C8E97A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B280;
  if (!qword_1EDA6B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B280);
  }

  return result;
}

unint64_t sub_1C8E97A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B270;
  if (!qword_1EDA6B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B270);
  }

  return result;
}

unint64_t sub_1C8E97AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B338;
  if (!qword_1EDA6B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B338);
  }

  return result;
}

unint64_t sub_1C8E97B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318348;
  if (!qword_1EC318348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318348);
  }

  return result;
}

unint64_t sub_1C8E97BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA627E0;
  if (!qword_1EDA627E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA627E0);
  }

  return result;
}

unint64_t sub_1C8E97C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA627D8;
  if (!qword_1EDA627D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA627D8);
  }

  return result;
}

unint64_t sub_1C8E97C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318360;
  if (!qword_1EC318360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318360);
  }

  return result;
}

unint64_t sub_1C8E97D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318368;
  if (!qword_1EC318368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318368);
  }

  return result;
}

unint64_t sub_1C8E97D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318370;
  if (!qword_1EC318370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318370);
  }

  return result;
}

unint64_t sub_1C8E97E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318380;
  if (!qword_1EC318380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318380);
  }

  return result;
}

unint64_t sub_1C8E97E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318388;
  if (!qword_1EC318388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318388);
  }

  return result;
}

unint64_t sub_1C8E97EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7A0;
  if (!qword_1EDA6B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7A0);
  }

  return result;
}

unint64_t sub_1C8E97F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60990;
  if (!qword_1EDA60990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60990);
  }

  return result;
}

unint64_t sub_1C8E97F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63320;
  if (!qword_1EDA63320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63320);
  }

  return result;
}

unint64_t sub_1C8E97FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63318;
  if (!qword_1EDA63318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63318);
  }

  return result;
}

unint64_t sub_1C8E98038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318390;
  if (!qword_1EC318390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318390);
  }

  return result;
}

unint64_t sub_1C8E98090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318398;
  if (!qword_1EC318398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318398);
  }

  return result;
}

unint64_t sub_1C8E980E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183A0;
  if (!qword_1EC3183A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183A0);
  }

  return result;
}

unint64_t sub_1C8E98140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183A8;
  if (!qword_1EC3183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183A8);
  }

  return result;
}

unint64_t sub_1C8E98198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183B0;
  if (!qword_1EC3183B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183B0);
  }

  return result;
}

unint64_t sub_1C8E981F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183B8;
  if (!qword_1EC3183B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183B8);
  }

  return result;
}

unint64_t sub_1C8E98248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183C0;
  if (!qword_1EC3183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183C0);
  }

  return result;
}

unint64_t sub_1C8E982A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183C8;
  if (!qword_1EC3183C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183C8);
  }

  return result;
}

unint64_t sub_1C8E982F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183D0;
  if (!qword_1EC3183D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183D0);
  }

  return result;
}

unint64_t sub_1C8E98350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609A8;
  if (!qword_1EDA609A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609A8);
  }

  return result;
}

unint64_t sub_1C8E983A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183D8;
  if (!qword_1EC3183D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183D8);
  }

  return result;
}

unint64_t sub_1C8E98400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183E0;
  if (!qword_1EC3183E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolAuthenticationPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8E98560(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E985B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolSymbolIconStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3F)
  {
    if (a2 + 65473 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65473 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65474;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 15) | (2 * ((*a1 >> 10) & 0x18 | (*a1 >> 5)))) ^ 0x3F;
  if (v5 >= 0x3E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for ToolSymbolIconStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65473 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65473 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3E)
  {
    v6 = ((a2 - 63) >> 16) + 1;
    *result = a2 - 63;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = (((-a2 & 0x30) << 9) - (a2 << 15)) & 0xFF1F | (32 * ((-a2 >> 1) & 7));
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolSymbolIconColor(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8E988F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1C8E98938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8E989B8(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_242_2(result, (a2 - 1));
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_242_2(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit31ParameterRelationshipDefinitionV8RelationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1C8E98A30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 9))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_1C8E98A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 8) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1C8E98AE0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 6;
    v2 = -64;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1C8E98B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      return OUTLINED_FUNCTION_242_2(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1C8E98D58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParameterDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E98FD0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E990CC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E99198(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E99320(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8E993F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183E8;
  if (!qword_1EC3183E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183E8);
  }

  return result;
}

unint64_t sub_1C8E99448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183F0;
  if (!qword_1EC3183F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183F0);
  }

  return result;
}

unint64_t sub_1C8E994A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3183F8;
  if (!qword_1EC3183F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183F8);
  }

  return result;
}

unint64_t sub_1C8E994F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318400;
  if (!qword_1EC318400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318400);
  }

  return result;
}

unint64_t sub_1C8E99550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318408;
  if (!qword_1EC318408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318408);
  }

  return result;
}

unint64_t sub_1C8E995A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318410;
  if (!qword_1EC318410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318410);
  }

  return result;
}

unint64_t sub_1C8E99600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318418;
  if (!qword_1EC318418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318418);
  }

  return result;
}

unint64_t sub_1C8E99658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318420;
  if (!qword_1EC318420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318420);
  }

  return result;
}

unint64_t sub_1C8E996B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318428;
  if (!qword_1EC318428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318428);
  }

  return result;
}

unint64_t sub_1C8E99708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318430;
  if (!qword_1EC318430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318430);
  }

  return result;
}

unint64_t sub_1C8E99760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318438;
  if (!qword_1EC318438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318438);
  }

  return result;
}

unint64_t sub_1C8E997B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318440;
  if (!qword_1EC318440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318440);
  }

  return result;
}

unint64_t sub_1C8E99810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC318448;
  if (!qword_1EC318448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318448);
  }

  return result;
}