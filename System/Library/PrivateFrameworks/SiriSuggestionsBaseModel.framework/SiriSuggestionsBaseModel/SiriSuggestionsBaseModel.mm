uint64_t sub_2313BAED0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2313BAF7C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2313BB044()
{
  sub_2313DACBC();
  OUTLINED_FUNCTION_27_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2313BB0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2313DAC6C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2313BB170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2313DAC6C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2313BB234()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2313BBD50()
{

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2313BBD84()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2313BBE2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2313BBE84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2313BBEC4(uint64_t a1, void *a2)
{
  v3 = sub_2313DACFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC28, &qword_2313DB8E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - v11);
  v13 = sub_2313DABEC();
  v15 = sub_2313CCF74(v13, v14);
  if (v15 == 163)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D60E90], v3);
    v16 = sub_2313DACEC();
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    *v12 = v16;
    v12[1] = v18;
    v19 = *MEMORY[0x277D61238];
    v20 = sub_2313DAF5C();
    OUTLINED_FUNCTION_4();
    (*(v21 + 104))(v12, v19, v20);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
  }

  else
  {
    v22 = v15;
    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    v23 = sub_2313DAD0C();
    sub_2313CD3F4(v23, v22, v12);

    v20 = sub_2313DAF5C();
  }

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  return sub_2313DAF8C();
}

uint64_t sub_2313BC158()
{
  sub_2313DADBC();
  sub_2313DADAC();
  v0 = sub_2313DAD9C();

  byte_27DD4BF28 = v0 & 1;
  return result;
}

uint64_t static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_2313DB10C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313BC288, 0, 0);
}

uint64_t sub_2313BC288()
{
  if (qword_27DD4BBF0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = qword_27DD4C208;
  v0[5] = sub_2313DAC0C();
  v0[6] = sub_2313BE9C0(&qword_27DD4BC08, 255, MEMORY[0x277D60A60], MEMORY[0x277D60A58]);
  v0[2] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_2313BC40C;

  return v5(v0 + 2);
}

uint64_t sub_2313BC40C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 248) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_2313BC514, 0, 0);
}

uint64_t sub_2313BC514()
{
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC10, &qword_2313DB7E8);
  v2 = sub_2313DAF3C();
  if (v2)
  {
    sub_2313BCCB8(v2, v1 + 96);

    if (*(v1 + 120))
    {
      v3 = *(v1 + 200);
      sub_2313BAED0((v1 + 96), v1 + 56);
      v4 = (v3 + 8);
      v5 = 0x20u;
      v49 = (v3 + 8);
      while (1)
      {
        v6 = byte_284605508[v5];
        switch(byte_284605508[v5])
        {
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0xCu:
          case 0xEu:
          case 0xFu:
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
          case 0x14u:
          case 0x15u:
          case 0x17u:
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
          case 0x32u:
          case 0x33u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x3Bu:
          case 0x3Cu:
          case 0x40u:
          case 0x44u:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
          case 0x4Bu:
          case 0x4Cu:
          case 0x4Du:
          case 0x4Eu:
          case 0x4Fu:
          case 0x50u:
          case 0x51u:
          case 0x52u:
          case 0x53u:
          case 0x54u:
          case 0x55u:
          case 0x57u:
          case 0x58u:
          case 0x59u:
          case 0x5Au:
          case 0x5Bu:
          case 0x5Cu:
          case 0x5Du:
          case 0x5Eu:
          case 0x5Fu:
          case 0x60u:
          case 0x61u:
          case 0x62u:
          case 0x63u:
          case 0x64u:
          case 0x65u:
          case 0x6Au:
          case 0x6Bu:
          case 0x6Cu:
          case 0x6Du:
          case 0x6Eu:
          case 0x6Fu:
          case 0x70u:
          case 0x72u:
          case 0x73u:
          case 0x74u:
          case 0x75u:
          case 0x76u:
          case 0x7Au:
          case 0x7Bu:
          case 0x7Cu:
          case 0x7Du:
          case 0x7Eu:
          case 0x7Fu:
          case 0x80u:
          case 0x81u:
          case 0x94u:
          case 0xA0u:
            if (qword_27DD4BA90 != -1)
            {
              swift_once();
            }

            if (byte_27DD4BF28)
            {
              goto LABEL_8;
            }

            sub_2313DAFAC();
            v8 = sub_2313DB0FC();
            v9 = sub_2313DB2EC();
            v10 = OUTLINED_FUNCTION_2(v9);
            v11 = *(v1 + 232);
            v12 = *(v1 + 192);
            if (v10)
            {
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v50 = v14;
              *v13 = 136315138;
              v15 = sub_2313CDA6C(v6);
              v17 = sub_2313BE1B0(v15, v16, &v50);

              *(v13 + 4) = v17;
              _os_log_impl(&dword_2313B9000, v8, v0, "BaseSuggestionsOwnerDefinitionFactory:: AppIntent suggestion '%s' not added due to feature flag 'handCraftedAppIntentSuggestions' is off", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v14);
              v4 = v49;
              OUTLINED_FUNCTION_1();
              OUTLINED_FUNCTION_1();
            }

            goto LABEL_34;
          default:
LABEL_8:
            v0 = *(v1 + 80);
            __swift_project_boxed_opaque_existential_1Tm((v1 + 56), v0);
            sub_2313CE638(v6);
            v7 = sub_2313DB05C();

            if (v7)
            {
              switch(v6)
              {
                case 0x4Du:
                case 0x4Fu:
                case 0x56u:
                case 0x64u:
                case 0x66u:
                case 0x67u:
                case 0x68u:
                case 0x69u:
                case 0x77u:
                case 0x78u:
                case 0x79u:
                case 0x80u:
                case 0x82u:
                case 0x83u:
                case 0x87u:
                case 0x88u:
                case 0x89u:
                case 0x8Au:
                case 0x8Bu:
                case 0x8Eu:
                case 0x8Fu:
                case 0x90u:
                case 0x91u:
                case 0x92u:
                case 0x93u:
                case 0x96u:
                case 0x97u:
                case 0x98u:
                case 0x99u:
                case 0x9Au:
                case 0x9Bu:
                case 0x9Du:
                case 0x9Eu:
                case 0x9Fu:
                case 0xA2u:
                  goto LABEL_17;
                case 0x4Eu:
                case 0x50u:
                case 0x51u:
                case 0x52u:
                case 0x53u:
                case 0x54u:
                case 0x55u:
                case 0x57u:
                case 0x58u:
                case 0x59u:
                case 0x5Au:
                case 0x5Bu:
                case 0x5Cu:
                case 0x5Du:
                case 0x5Eu:
                case 0x5Fu:
                case 0x60u:
                case 0x61u:
                case 0x62u:
                case 0x63u:
                case 0x65u:
                case 0x6Au:
                case 0x6Bu:
                case 0x6Cu:
                case 0x6Du:
                case 0x6Eu:
                case 0x6Fu:
                case 0x70u:
                case 0x71u:
                case 0x72u:
                case 0x73u:
                case 0x74u:
                case 0x75u:
                case 0x76u:
                case 0x7Au:
                case 0x7Bu:
                case 0x7Cu:
                case 0x7Du:
                case 0x7Eu:
                case 0x7Fu:
                case 0x81u:
                case 0x84u:
                case 0x85u:
                case 0x86u:
                case 0x8Cu:
                case 0x8Du:
                case 0x94u:
                case 0x95u:
                case 0x9Cu:
                case 0xA0u:
                case 0xA1u:
                  goto LABEL_32;
                default:
                  if (v6 <= 0x3F && ((1 << v6) & 0xC612000000000305) != 0 || v6 == 65 || v6 == 69)
                  {
LABEL_17:
                    sub_2313CDA6C(v6);
                    if (!(!v28 & v27))
                    {
                      v0 = 0x80000002313DDA00;
                      switch(v6)
                      {
                        case 'H':
                        case 'M':
                          goto LABEL_26;
                        case 'I':
                        case 'J':
                        case 'K':
                          goto LABEL_28;
                        case 'L':
                          goto LABEL_29;
                        case 'N':
                          goto LABEL_27;
                        default:
                          JUMPOUT(0);
                      }
                    }

                    if (v6 - 119 >= 2)
                    {
                      if (v6 == 63 || v6 == 128)
                      {
LABEL_26:
                        OUTLINED_FUNCTION_3();
                        v0 = 0x80000002313DDA30;
                      }

                      else if (v6 == 129)
                      {
LABEL_27:
                        OUTLINED_FUNCTION_3();
                        v0 = 0x80000002313DD9D0;
                      }

                      else
                      {
LABEL_28:
                        v50 = 0;
                        v51 = 0xE000000000000000;
                        sub_2313DB34C();

                        OUTLINED_FUNCTION_3();
                        v50 = v29;
                        v51 = 0x80000002313DD980;
                        v30 = sub_2313CDA6C(v6);
                        MEMORY[0x23192C330](v30);

                        LOBYTE(v0) = v51;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_3();
                      v0 = 0x80000002313DD9A0;
                    }

LABEL_29:
                    *(swift_task_alloc() + 16) = v6;
                    sub_2313DAF0C();

                    goto LABEL_35;
                  }

LABEL_32:
                  sub_2313DAFAC();
                  v8 = sub_2313DB0FC();
                  v31 = sub_2313DB2EC();
                  v32 = OUTLINED_FUNCTION_2(v31);
                  v11 = *(v1 + 216);
                  v12 = *(v1 + 192);
                  if (!v32)
                  {
                    goto LABEL_34;
                  }

                  v48 = *(v1 + 216);
                  v33 = swift_slowAlloc();
                  v34 = swift_slowAlloc();
                  v50 = v34;
                  *v33 = 136315138;
                  v35 = sub_2313CDA6C(v6);
                  v37 = sub_2313BE1B0(v35, v36, &v50);

                  *(v33 + 4) = v37;
                  v4 = v49;
                  _os_log_impl(&dword_2313B9000, v8, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to 'addToSuggestionPool' is false", v33, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v34);
                  OUTLINED_FUNCTION_1();
                  break;
              }

              goto LABEL_14;
            }

            sub_2313DAFAC();
            v8 = sub_2313DB0FC();
            v18 = sub_2313DB2EC();
            v19 = OUTLINED_FUNCTION_2(v18);
            v11 = *(v1 + 224);
            v12 = *(v1 + 192);
            if (v19)
            {
              v20 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              *v20 = 136315394;
              v21 = sub_2313CDA6C(v6);
              v48 = v11;
              v23 = sub_2313BE1B0(v21, v22, &v50);

              *(v20 + 4) = v23;
              *(v20 + 12) = 2080;
              v24 = sub_2313CE638(v6);
              v26 = sub_2313BE1B0(v24, v25, &v50);

              *(v20 + 14) = v26;
              _os_log_impl(&dword_2313B9000, v8, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to related app '%s' is not installed", v20, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_1();
              v4 = v49;
LABEL_14:
              OUTLINED_FUNCTION_1();

              (*v4)(v48, v12);
              goto LABEL_35;
            }

LABEL_34:

            (*v4)(v11, v12);
LABEL_35:
            if (++v5 == 195)
            {
              sub_2313DAF2C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC20, &unk_2313DB7F8);
              v38 = swift_allocObject();
              *(v38 + 16) = xmmword_2313DB7C0;
              sub_2313BAED0((v1 + 136), v38 + 32);

              __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
              goto LABEL_41;
            }

            break;
        }
      }
    }
  }

  else
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  sub_2313BEA08(v1 + 96, &qword_27DD4BC18, &qword_2313DB7F0);
  sub_2313DAF9C();
  v39 = sub_2313DB0FC();
  v40 = sub_2313DB30C();
  v41 = os_log_type_enabled(v39, v40);
  v43 = *(v1 + 200);
  v42 = *(v1 + 208);
  v44 = *(v1 + 192);
  if (v41)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2313B9000, v39, v40, "BaseSuggestionsOwnerDefinitionFactory: No appUtils instance in the lifecycle container.\nSo we cannot check if an app is installed before showing BaseSuggestions. Not building any BaseSuggestions", v45, 2u);
    OUTLINED_FUNCTION_1();
  }

  (*(v43 + 8))(v42, v44);

  v38 = MEMORY[0x277D84F90];
LABEL_41:

  v46 = *(v1 + 8);

  return v46(v38);
}

double sub_2313BCCB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2313BEB84(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2313BCD20@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

uint64_t sub_2313BCDC8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC30, &qword_2313DB8E8);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = (v76 - v5);
  v95 = sub_2313DAE4C();
  v6 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v79 = (v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC38, &qword_2313DB8F0);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = v76 - v9;
  v96 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  MEMORY[0x28223BE20](v96);
  v94 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[5];
  v99 = *(a1 + 3);
  __swift_project_boxed_opaque_existential_1Tm(a1, v99);
  sub_2313CE730(a2);
  v105 = v99;
  v106 = v11;
  __swift_allocate_boxed_opaque_existential_2Tm(v104);
  sub_2313DAE9C();

  v12 = v105;
  v13 = __swift_project_boxed_opaque_existential_1Tm(v104, v105);
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313CF4B4(a2);
  sub_2313DAE8C();

  (*(v14 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  sub_2313CF704(a2, &v101);
  if (v102)
  {
    sub_2313BAED0(&v101, v104);
    v17 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_1Tm(a1, v17);
    v19 = *(v17 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2313DAE5C();
    (*(v19 + 8))(v21, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
  }

  else
  {
    sub_2313BEA08(&v101, &qword_27DD4BC40, &qword_2313DB8F8);
  }

  v22 = sub_2313CFCBC(a2);
  v23 = *(v22 + 16);
  if (v23)
  {
    v77 = a2;
    v76[1] = v22;
    v24 = v22 + 32;
    v92 = (v6 + 104);
    v78 = (v6 + 8);
    v91 = *MEMORY[0x277D60B78];
    v90 = *MEMORY[0x277D60B98];
    v89 = *MEMORY[0x277D61060];
    v88 = xmmword_2313DB7C0;
    v87 = xmmword_2313DB7D0;
    v93 = a1;
    v25 = v97;
    v26 = v96;
    do
    {
      *&v99 = v23;
      sub_2313BEB84(v24, v104);
      sub_2313BEB84(v104, &v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC48, &qword_2313DB900);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
        v27 = v94;
        sub_2313BE850(v25, v94);
        v28 = a1[3];
        v83 = v28;
        v85 = a1[4];
        v84 = __swift_project_boxed_opaque_existential_1Tm(a1, v28);
        v98 = v76;
        v86 = *(v28 - 8);
        MEMORY[0x28223BE20](v84);
        v82 = v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC50, &qword_2313DB908);
        v30 = sub_2313DAC6C();
        v31 = *(v30 - 8);
        v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = v88;
        v34 = v27;
        (*(v31 + 16))(v33 + v32, v27, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
        v35 = sub_2313DAC4C();
        v36 = *(v35 - 8);
        v37 = *(v36 + 72);
        v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v87;
        v40 = *(v36 + 104);
        v40(v39 + v38, v91, v35);
        v40(v39 + v38 + v37, v90, v35);
        v41 = v80;
        *v80 = v39;
        v42 = v95;
        (*v92)(v41, v89, v95);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
        v81 = *(v34 + *(v26 + 20));
        *&v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC70, &qword_2313DB920);
        *(&v102 + 1) = sub_2313BE8B4();
        __swift_allocate_boxed_opaque_existential_2Tm(&v101);
        sub_2313DACBC();
        v43 = MEMORY[0x277D60CF0];
        sub_2313BE9C0(&qword_27DD4BC80, 255, MEMORY[0x277D60CF0], MEMORY[0x277D60D10]);
        sub_2313BE9C0(&qword_27DD4BC88, 255, v43, MEMORY[0x277D60D08]);
        sub_2313BE9C0(&qword_27DD4BC90, 255, v43, MEMORY[0x277D60CF8]);
        sub_2313BE9C0(&qword_27DD4BC98, 255, v43, MEMORY[0x277D60D00]);

        sub_2313DAC1C();
        v44 = v82;
        v45 = v83;
        sub_2313DAB0C();

        sub_2313BEA08(v41, &qword_27DD4BC30, &qword_2313DB8E8);
        (*(v86 + 8))(v44, v45);
        sub_2313BEA64(v94);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
        sub_2313BEA08(v25, &qword_27DD4BC38, &qword_2313DB8F0);
        v46 = a1[3];
        v85 = a1[4];
        v84 = __swift_project_boxed_opaque_existential_1Tm(a1, v46);
        v98 = v76;
        v86 = *(v46 - 8);
        MEMORY[0x28223BE20](v84);
        v48 = v76 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC50, &qword_2313DB908);
        sub_2313DAC6C();
        *(swift_allocObject() + 16) = v88;
        v49 = v105;
        __swift_project_boxed_opaque_existential_1Tm(v104, v105);
        (*(*(&v49 + 1) + 8))(v49, *(&v49 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
        v50 = sub_2313DAC4C();
        v51 = *(v50 - 8);
        v52 = *(v51 + 72);
        v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v54 = swift_allocObject();
        *(v54 + 16) = v87;
        v55 = v54 + v53;
        v56 = *(v51 + 104);
        v56(v55, v91, v50);
        v56(v55 + v52, v90, v50);
        v57 = v79;
        *v79 = v54;
        v58 = v95;
        (*v92)(v57, v89, v95);
        sub_2313DAB1C();

        (*v78)(v57, v58);
        (*(v86 + 8))(v48, v46);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      v24 += 40;
      v23 = v99 - 1;
      a1 = v93;
      v25 = v97;
      v26 = v96;
    }

    while (v99 != 1);

    a2 = v77;
  }

  else
  {
  }

  v59 = a1[5];
  v99 = *(a1 + 3);
  __swift_project_boxed_opaque_existential_1Tm(a1, v99);
  v105 = v99;
  v106 = v59;
  __swift_allocate_boxed_opaque_existential_2Tm(v104);
  sub_2313DAE6C();
  v60 = v106;
  v99 = v105;
  __swift_project_boxed_opaque_existential_1Tm(v104, v105);
  sub_2313D18D4(a2);
  v102 = v99;
  v103 = v60;
  __swift_allocate_boxed_opaque_existential_2Tm(&v101);
  sub_2313DAEBC();

  v61 = v102;
  v62 = __swift_project_boxed_opaque_existential_1Tm(&v101, v102);
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = v76 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for BaseSuggestionsAssetProvider();
  v67 = swift_allocObject();
  v100[3] = v66;
  v100[4] = sub_2313BE9C0(&qword_27DD4BC60, v68, type metadata accessor for BaseSuggestionsAssetProvider, &unk_2313DB8B8);
  v100[0] = v67;
  sub_2313DAE7C();
  (*(v63 + 8))(v65, v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(&v101);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  sub_2313D1B9C(a2);
  sub_2313BDD88(v69, a1);

  sub_2313D382C(a2, &v101);
  if (!v102)
  {
    return sub_2313BEA08(&v101, &qword_27DD4BC68, &qword_2313DB918);
  }

  sub_2313BAED0(&v101, v104);
  v70 = a1[3];
  v71 = __swift_project_boxed_opaque_existential_1Tm(a1, v70);
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = v76 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313DAECC();
  (*(v72 + 8))(v74, v70);
  return __swift_destroy_boxed_opaque_existential_1Tm(v104);
}

uint64_t sub_2313BDD88(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_2313BEAC0(a2, v10);
    v5 = v11;
    v6 = __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2313DAEDC();
    (*(v7 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
    i += 64;
  }

  return result;
}

uint64_t sub_2313BDED8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2313BDF74;

  return static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t sub_2313BDF74(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_2313BE0B8()
{
  OUTLINED_FUNCTION_0();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_2313BE0E0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2313BE154(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2313BE1B0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2313BE1B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2313BE274(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2313BEB24(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2313BE274(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2313BE374(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2313DB36C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2313BE374(uint64_t a1, unint64_t a2)
{
  v3 = sub_2313BE3C0(a1, a2);
  sub_2313BE4D8(&unk_2846055D0);
  return v3;
}

uint64_t sub_2313BE3C0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2313DB27C())
  {
    result = sub_2313BE5BC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2313DB33C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2313DB36C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2313BE4D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2313BE62C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2313BE5BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BCA0, &qword_2313DB928);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2313BE62C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BCA0, &qword_2313DB928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2313BE720(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2313BE850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2313BE8B4()
{
  result = qword_27DD4BC78;
  if (!qword_27DD4BC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4BC70, &qword_2313DB920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4BC78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2313BE9C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2313BEA08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2313BEA64(uint64_t a1)
{
  v2 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313BEAC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313BEB24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313BEB84(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  (*v3)(a2);
  return a2;
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x23192C7B0);
}

BOOL OUTLINED_FUNCTION_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_2313BEC44(char a1)
{
  result = 0x73756F6976657270;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      return result;
    case 4:
    case 18:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7469546C69616D65;
      break;
    case 6:
      result = 0x6E65536C69616D65;
      break;
    case 7:
      result = 0x74616E6974736564;
      break;
    case 8:
      result = 0x5372656874616577;
      break;
    case 9:
      result = 0x61737265766E6F63;
      break;
    case 10:
      result = 0x6D614E6563616C70;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6C746954776F6873;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6D79536B636F7473;
      break;
    case 15:
      result = 0x656C746954626174;
      break;
    case 16:
      result = 0x6B72616D6B6F6F62;
      break;
    case 19:
      result = 0x614E7265646C6F66;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x4E676E6974746573;
      break;
    case 22:
      result = 0x41676E6974746573;
      break;
    case 23:
      result = 0x7079546569766F6DLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_2313BEF14()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313DA99C();
  v0[3] = v1;
  OUTLINED_FUNCTION_0_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_13();
  v3 = sub_2313DA9DC();
  v0[6] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_13();
  v5 = sub_2313DA9FC();
  v0[9] = v5;
  OUTLINED_FUNCTION_0_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_13();
  v7 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2313BF04C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_2313DA9CC();
  (*(v2 + 104))(v1, *MEMORY[0x277CC9988], v3);
  sub_2313DA98C();
  v7 = sub_2313DA9EC();
  (*(v6 + 8))(v4, v5);
  v8 = OUTLINED_FUNCTION_5();
  result = v9(v8);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    OUTLINED_FUNCTION_6();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2313DB7C0;
    v0[2] = v7 - 1;
    v12 = sub_2313DB38C();
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    v14 = OUTLINED_FUNCTION_5();
    v15(v14);

    v16 = v0[1];

    return v16(v11);
  }

  return result;
}

uint64_t sub_2313BF204()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313BEF14();
}

uint64_t sub_2313BF290()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v2);
  v0[7] = OUTLINED_FUNCTION_13();
  v3 = sub_2313DB1EC();
  v0[8] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  OUTLINED_FUNCTION_7(v5);
  v0[11] = OUTLINED_FUNCTION_19();
  v0[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD40, &qword_2313DC010);
  OUTLINED_FUNCTION_7(v6);
  v0[13] = OUTLINED_FUNCTION_13();
  v7 = sub_2313DB08C();
  v0[14] = v7;
  OUTLINED_FUNCTION_0_0(v7);
  v0[15] = v8;
  v0[16] = OUTLINED_FUNCTION_19();
  v0[17] = swift_task_alloc();
  v9 = sub_2313DB0EC();
  v0[18] = v9;
  OUTLINED_FUNCTION_0_0(v9);
  v0[19] = v10;
  v0[20] = OUTLINED_FUNCTION_19();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2313BF4B0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 48), *(*(v0 + 48) + 24));
  OUTLINED_FUNCTION_5();
  sub_2313DAD3C();
  v3 = sub_2313DB2CC();

  v5 = 0;
  v110 = *(v3 + 16);
  v105 = *MEMORY[0x277D1EB18];
  v104 = (v2 + 8);
  v113 = v1;
  v101 = (v1 + 32);
  v102 = MEMORY[0x277D84F90];
  v103 = v3;
  while (1)
  {
    if (v110 == v5)
    {

      v34 = 0;
      result = v102;
      v35 = *(v102 + 16);
      v36 = MEMORY[0x277D84F90];
      while (v35 != v34)
      {
        if (v34 >= *(result + 16))
        {
          goto LABEL_59;
        }

        v37 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v38 = *(v113 + 72);
        v39 = OUTLINED_FUNCTION_21();
        v40(v39);
        v41 = sub_2313BFE90();
        v42 = *(v0 + 192);
        if (v41)
        {
          v111 = *v101;
          (*v101)(*(v0 + 184), *(v0 + 192), *(v0 + 144));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14(*(v36 + 16));
          }

          v45 = *(v36 + 16);
          v44 = *(v36 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_2313C45B8((v44 > 1), v45 + 1, 1);
          }

          ++v34;
          v46 = *(v0 + 184);
          v47 = *(v0 + 144);
          *(v36 + 16) = v45 + 1;
          v111(v36 + v37 + v45 * v38, v46, v47);
          result = v102;
        }

        else
        {
          OUTLINED_FUNCTION_16();
          v43(v42);
          ++v34;
          result = v102;
        }
      }

      v48 = 0;
      v49 = *(v36 + 16);
      v106 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v49 == v48)
        {

          v66 = *(v106 + 16);
          if (!v66)
          {

            v72 = MEMORY[0x277D84F90];
LABEL_52:
            sub_2313BCCF0(v72, *(v0 + 96));

            if (OUTLINED_FUNCTION_26() == 1)
            {
              sub_2313BEA08(*(v0 + 96), &qword_27DD4BD38, &qword_2313DC008);
            }

            else
            {
              v93 = sub_2313DB1CC();
              v95 = v94;
              v96 = OUTLINED_FUNCTION_11();
              v97(v96);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
              OUTLINED_FUNCTION_6();
              v98 = swift_allocObject();
              *(v98 + 16) = xmmword_2313DB7C0;
              *(v98 + 56) = MEMORY[0x277D837D0];
              *(v98 + 32) = v93;
              *(v98 + 40) = v95;
            }

            v99 = OUTLINED_FUNCTION_3_0();

            return v100(v99);
          }

          OUTLINED_FUNCTION_4_0();
          v69 = v67 + v68;
          v109 = (v71 + 32);
          v112 = *(v70 + 72);
          v72 = MEMORY[0x277D84F90];
          v114 = *(v70 + 16);
          while (2)
          {
            v114(*(v0 + 168), v69, *(v0 + 144));
            sub_2313DB0BC();
            v73 = sub_2313DB1AC();
            v74 = OUTLINED_FUNCTION_29();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, v75, v73);
            v77 = *(v0 + 168);
            v78 = *(v0 + 144);
            v79 = *(v0 + 56);
            v80 = *(v0 + 64);
            if (EnumTagSinglePayload == 1)
            {
              OUTLINED_FUNCTION_16();
              v81(v77, v78);
              sub_2313BEA08(v79, &qword_27DD4BD30, &qword_2313DC000);
              v82 = OUTLINED_FUNCTION_29();
              __swift_storeEnumTagSinglePayload(v82, v83, 1, v80);
              goto LABEL_43;
            }

            sub_2313DB18C();
            OUTLINED_FUNCTION_16();
            v84(v77, v78);
            OUTLINED_FUNCTION_4();
            (*(v85 + 8))(v79, v73);
            v86 = OUTLINED_FUNCTION_29();
            if (__swift_getEnumTagSinglePayload(v86, v87, v80) == 1)
            {
LABEL_43:
              sub_2313BEA08(*(v0 + 88), &qword_27DD4BD38, &qword_2313DC008);
            }

            else
            {
              v88 = *v109;
              (*v109)(*(v0 + 80), *(v0 + 88), *(v0 + 64));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_2313C4280(0, *(v72 + 2) + 1, 1, v72);
              }

              v90 = *(v72 + 2);
              v89 = *(v72 + 3);
              if (v90 >= v89 >> 1)
              {
                v72 = sub_2313C4280((v89 > 1), v90 + 1, 1, v72);
              }

              *(v72 + 2) = v90 + 1;
              OUTLINED_FUNCTION_4_0();
              v88(&v72[v91 + *(v92 + 72) * v90]);
            }

            v69 += v112;
            if (!--v66)
            {

              goto LABEL_52;
            }

            continue;
          }
        }

        if (v48 >= *(v36 + 16))
        {
          goto LABEL_60;
        }

        v50 = *(v0 + 104);
        v51 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v52 = *(v113 + 72);
        v53 = OUTLINED_FUNCTION_21();
        v54(v53);
        sub_2313DB0DC();
        v55 = sub_2313DB0AC();
        if (__swift_getEnumTagSinglePayload(v50, 1, v55) == 1)
        {
          break;
        }

        v56 = sub_2313DB09C();
        OUTLINED_FUNCTION_4();
        v57 = OUTLINED_FUNCTION_11();
        v58(v57);
        if (v56)
        {
          v60 = *v101;
          (*v101)(*(v0 + 160), *(v0 + 176), *(v0 + 144));
          v61 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14(*(v106 + 16));
            v61 = v106;
          }

          v63 = *(v61 + 16);
          v62 = *(v61 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_2313C45B8((v62 > 1), v63 + 1, 1);
            v61 = v106;
          }

          ++v48;
          v64 = *(v0 + 160);
          v65 = *(v0 + 144);
          *(v61 + 16) = v63 + 1;
          v106 = v61;
          result = (v60)(v61 + v51 + v63 * v52, v64, v65);
        }

        else
        {
LABEL_32:
          OUTLINED_FUNCTION_16();
          result = v59();
          ++v48;
        }
      }

      sub_2313BEA08(*(v0 + 104), &qword_27DD4BD40, &qword_2313DC010);
      goto LABEL_32;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    OUTLINED_FUNCTION_4_0();
    v108 = v8;
    v107 = *(v9 + 72);
    v10 = OUTLINED_FUNCTION_21();
    v11(v10);
    sub_2313DB0CC();
    (*(v2 + 104))(v6, v105, v7);
    OUTLINED_FUNCTION_1_0();
    v13 = sub_2313C4638(&qword_27DD4BD48, 255, v12, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_9(v13);
    OUTLINED_FUNCTION_15();
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    v18 = *(v0 + 136);
    if (v15 == v16 && *(v0 + 24) == v17)
    {
      v25 = *v104;
      v26 = OUTLINED_FUNCTION_17();
      v25(v26);
      v27 = OUTLINED_FUNCTION_18();
      v25(v27);

LABEL_11:
      v28 = *v101;
      (*v101)(*(v0 + 200), *(v0 + 208), *(v0 + 144));
      v29 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14(*(v102 + 16));
        v29 = v102;
      }

      v3 = v103;
      OUTLINED_FUNCTION_20();
      if (v31)
      {
        sub_2313C45B8((v30 > 1), v17, 1);
        v29 = v102;
      }

      ++v5;
      v32 = *(v0 + 200);
      v33 = *(v0 + 144);
      *(v29 + 16) = v17;
      v102 = v29;
      result = (v28)(v29 + v108 + v18 * v107, v32, v33);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_25(v15, v14, v16);
      v21 = *v104;
      v22 = OUTLINED_FUNCTION_17();
      v21(v22);
      v23 = OUTLINED_FUNCTION_18();
      v21(v23);

      if (v20)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_16();
      result = v24();
      ++v5;
      v3 = v103;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_2313BFE90()
{
  v0 = sub_2313DB1BC();
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD58, &unk_2313DC020);
  MEMORY[0x28223BE20](v35);
  v37 = &v32 - v2;
  v3 = sub_2313DACFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD60, &qword_2313DC380);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_2313DB0BC();
  v18 = sub_2313DB1AC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
  {
    sub_2313BEA08(v9, &qword_27DD4BD30, &qword_2313DC000);
    v19 = 1;
  }

  else
  {
    sub_2313DB17C();
    (*(*(v18 - 8) + 8))(v9, v18);
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v0);
  v20 = swift_allocObject();
  (*(v4 + 104))(v6, *MEMORY[0x277D60F30], v3);
  v21 = sub_2313DACEC();
  v23 = v22;
  (*(v4 + 8))(v6, v3);
  v20[2] = v21;
  v20[3] = v23;
  v20[4] = 0xD000000000000012;
  v20[5] = 0x80000002313DDE00;
  *v15 = v20;
  v24 = v36;
  (*(v36 + 104))(v15, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v0);
  v25 = *(v35 + 48);
  v26 = v37;
  sub_2313C49BC(v17, v37, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313C49BC(v15, v26 + v25, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v26, 1, v0) != 1)
  {
    v28 = v34;
    sub_2313C49BC(v26, v34, &qword_27DD4BD60, &qword_2313DC380);
    if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
    {
      v29 = v33;
      (*(v24 + 32))(v33, v26 + v25, v0);
      sub_2313C4638(&qword_27DD4BD68, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
      v27 = sub_2313DB20C();
      v30 = *(v24 + 8);
      v30(v29, v0);
      sub_2313BEA08(v15, &qword_27DD4BD60, &qword_2313DC380);
      sub_2313BEA08(v17, &qword_27DD4BD60, &qword_2313DC380);
      v30(v34, v0);
      sub_2313BEA08(v26, &qword_27DD4BD60, &qword_2313DC380);
      return v27 & 1;
    }

    sub_2313BEA08(v15, &qword_27DD4BD60, &qword_2313DC380);
    sub_2313BEA08(v17, &qword_27DD4BD60, &qword_2313DC380);
    (*(v24 + 8))(v28, v0);
    goto LABEL_9;
  }

  sub_2313BEA08(v15, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313BEA08(v17, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
  {
LABEL_9:
    sub_2313BEA08(v26, &qword_27DD4BD58, &unk_2313DC020);
    v27 = 0;
    return v27 & 1;
  }

  sub_2313BEA08(v26, &qword_27DD4BD60, &qword_2313DC380);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_2313C04C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313BF290();
}

void *sub_2313C055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_2313C0570()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  OUTLINED_FUNCTION_7(v3);
  v1[4] = OUTLINED_FUNCTION_13();
  v4 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2313C05F4()
{
  v1 = *(v0 + 32);
  v2 = sub_2313C0730(*(v0 + 16), *(*(v0 + 24) + 32), *(*(v0 + 24) + 40), *(*(v0 + 24) + 48), *(*(v0 + 24) + 56));
  sub_2313BCCF0(v2, v1);

  sub_2313DB1EC();
  if (OUTLINED_FUNCTION_26() == 1)
  {
    sub_2313BEA08(*(v0 + 32), &qword_27DD4BD38, &qword_2313DC008);
  }

  else
  {
    v3 = sub_2313DB1CC();
    v5 = v4;
    OUTLINED_FUNCTION_4();
    v6 = OUTLINED_FUNCTION_11();
    v7(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    OUTLINED_FUNCTION_6();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2313DB7C0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
  }

  v9 = OUTLINED_FUNCTION_3_0();

  return v10(v9);
}

char *sub_2313C0730(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v78 = a4;
  v88 = a3;
  v87 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v77 - v9;
  v86 = sub_2313DB1EC();
  v81 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2313DB08C();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = &v77 - v15;
  v16 = sub_2313DB0EC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v85 = &v77 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v98 = &v77 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v80 = &v77 - v25;
  MEMORY[0x28223BE20](v24);
  v99 = &v77 - v26;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2313DAD3C();
  v27 = sub_2313DB2CC();

  v28 = 0;
  v93 = *(v27 + 16);
  v103 = v17 + 16;
  v92 = *MEMORY[0x277D1EB18];
  v90 = (v12 + 8);
  v91 = (v12 + 104);
  v102 = (v17 + 8);
  v100 = v17;
  v82 = (v17 + 32);
  v96 = MEMORY[0x277D84F90];
  v97 = v16;
  v89 = v27;
LABEL_2:
  v29 = v101;
  while (1)
  {
    v30 = v94;
    v31 = v95;
    if (v93 == v28)
    {

      v49 = 0;
      v11 = 0;
      v50 = v96;
      v51 = *(v96 + 16);
      v95 = MEMORY[0x277D84F90];
      v52 = v83;
      v53 = v79;
      v54 = v78;
      while (v51 != v49)
      {
        if (v49 >= *(v50 + 16))
        {
          goto LABEL_44;
        }

        v55 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v56 = *(v100 + 72);
        v57 = v98;
        (*(v100 + 16))(v98, v50 + v55 + v56 * v49, v16);
        if (sub_2313C3D00(v57, v87, v88, v54, v53))
        {
          v58 = *v82;
          (*v82)(v77, v98, v16);
          v59 = v95;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v59;
          if (isUniquelyReferenced_nonNull_native)
          {
            v61 = v59;
          }

          else
          {
            sub_2313C45B8(0, *(v59 + 2) + 1, 1);
            v61 = v106;
          }

          v63 = *(v61 + 2);
          v62 = *(v61 + 3);
          if (v63 >= v62 >> 1)
          {
            sub_2313C45B8((v62 > 1), v63 + 1, 1);
            v61 = v106;
          }

          ++v49;
          *(v61 + 2) = v63 + 1;
          v95 = v61;
          v16 = v97;
          v58(&v61[v55 + v63 * v56], v77, v97);
          v52 = v83;
          v29 = v101;
          v53 = v79;
          v54 = v78;
          v50 = v96;
        }

        else
        {
          (*v102)(v98, v16);
          ++v49;
          v29 = v101;
          v50 = v96;
        }
      }

      v64 = *(v95 + 2);
      if (!v64)
      {

        return MEMORY[0x277D84F90];
      }

      v65 = &v95[(*(v100 + 80) + 32) & ~*(v100 + 80)];
      v66 = *(v100 + 72);
      v99 = (v81 + 32);
      v67 = MEMORY[0x277D84F90];
      v68 = *(v100 + 16);
      v69 = v85;
      while (1)
      {
        v70 = v97;
        v68(v69, v65, v97);
        sub_2313DB0BC();
        v71 = v52;
        v72 = sub_2313DB1AC();
        if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
        {
          (*v102)(v69, v70);
          sub_2313BEA08(v71, &qword_27DD4BD30, &qword_2313DC000);
          __swift_storeEnumTagSinglePayload(v29, 1, 1, v86);
          v52 = v71;
        }

        else
        {
          sub_2313DB18C();
          (*v102)(v69, v70);
          (*(*(v72 - 8) + 8))(v71, v72);
          v52 = v71;
          if (__swift_getEnumTagSinglePayload(v29, 1, v86) != 1)
          {
            v73 = *v99;
            (*v99)(v84, v29, v86);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_2313C4280(0, *(v67 + 2) + 1, 1, v67);
            }

            v75 = *(v67 + 2);
            v74 = *(v67 + 3);
            if (v75 >= v74 >> 1)
            {
              v67 = sub_2313C4280((v74 > 1), v75 + 1, 1, v67);
            }

            *(v67 + 2) = v75 + 1;
            v73(&v67[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v75], v84, v86);
            v52 = v83;
            v29 = v101;
            goto LABEL_39;
          }
        }

        sub_2313BEA08(v29, &qword_27DD4BD38, &qword_2313DC008);
LABEL_39:
        v65 += v66;
        --v64;
        v69 = v85;
        if (!v64)
        {

          return v67;
        }
      }
    }

    if (v28 >= *(v27 + 16))
    {
      break;
    }

    v32 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v33 = v27 + v32;
    v34 = *(v100 + 72);
    (*(v100 + 16))(v99, v33 + v34 * v28, v16);
    sub_2313DB0CC();
    (*v91)(v31, v92, v11);
    sub_2313C4638(&qword_27DD4BD48, 255, MEMORY[0x277D1EB58], MEMORY[0x277D1EB78]);
    sub_2313DB2AC();
    sub_2313DB2AC();
    if (v106 == v104 && v107 == v105)
    {
      v42 = *v90;
      (*v90)(v31, v11);
      v43 = v30;
      v41 = v11;
      v42(v43, v11);

LABEL_12:
      v44 = *v82;
      v16 = v97;
      (*v82)(v80, v99, v97);
      v45 = v96;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v45;
      if ((v46 & 1) == 0)
      {
        sub_2313C45B8(0, *(v45 + 16) + 1, 1);
        v45 = v108;
      }

      v11 = v41;
      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2313C45B8((v47 > 1), v48 + 1, 1);
        v45 = v108;
      }

      ++v28;
      *(v45 + 16) = v48 + 1;
      v96 = v45;
      v44((v45 + v32 + v48 * v34), v80, v16);
      v27 = v89;
      goto LABEL_2;
    }

    v36 = sub_2313DB39C();
    v37 = v31;
    v38 = v36;
    v39 = *v90;
    (*v90)(v37, v11);
    v40 = v30;
    v41 = v11;
    v39(v40, v11);

    if (v38)
    {
      goto LABEL_12;
    }

    v16 = v97;
    (*v102)(v99, v97);
    ++v28;
    v29 = v101;
    v27 = v89;
  }

  __break(1u);
LABEL_44:
  __break(1u);

  (*v102)(v98, v16);

  __break(1u);
  return result;
}

void *sub_2313C1240()
{

  return v0;
}

uint64_t sub_2313C1270()
{
  sub_2313C1240();
  OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2313C12C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C0570();
}

uint64_t sub_2313C135C()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  OUTLINED_FUNCTION_7(v2);
  v0[3] = OUTLINED_FUNCTION_13();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD78, &qword_2313DC048);
  OUTLINED_FUNCTION_7(v3);
  v0[4] = OUTLINED_FUNCTION_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD80, &qword_2313DC050);
  v0[5] = v4;
  OUTLINED_FUNCTION_0_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_13();
  v6 = sub_2313DACFC();
  v0[8] = v6;
  OUTLINED_FUNCTION_0_0(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_13();
  v8 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2313C14B0()
{
  v2 = v0[2];
  v1 = v0[3];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D60F38], v0[8]);
  v3 = sub_2313DACEC();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_11();
  v7(v6);
  v8 = sub_2313C0730(v2, v3, v5, 0x69746E45776F6853, 0xEA00000000007974);

  sub_2313BCCF0(v8, v1);

  v9 = sub_2313DB1EC();
  v10 = OUTLINED_FUNCTION_27();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);
  v13 = v0[5];
  v14 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    sub_2313BEA08(v0[3], &qword_27DD4BD38, &qword_2313DC008);
    v15 = OUTLINED_FUNCTION_27();
    __swift_storeEnumTagSinglePayload(v15, v16, 1, v13);
LABEL_4:
    sub_2313BEA08(v0[4], &qword_27DD4BD78, &qword_2313DC048);
    goto LABEL_6;
  }

  sub_2313DB1DC();
  OUTLINED_FUNCTION_4();
  (*(v17 + 8))(v14, v9);
  v18 = OUTLINED_FUNCTION_27();
  if (__swift_getEnumTagSinglePayload(v18, v19, v13) == 1)
  {
    goto LABEL_4;
  }

  v20 = v0[7];
  v21 = v0[5];
  v22 = *(v0[6] + 32);
  v22(v20, v0[4], v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
  OUTLINED_FUNCTION_6();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2313DB7C0;
  *(v23 + 56) = v21;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm((v23 + 32));
  v22(boxed_opaque_existential_2Tm, v20, v21);
LABEL_6:

  v25 = OUTLINED_FUNCTION_3_0();

  return v26(v25);
}

uint64_t sub_2313C1730()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C135C();
}

uint64_t sub_2313C17C4()
{
  OUTLINED_FUNCTION_8();
  v0[12] = v1;
  v2 = sub_2313DB1EC();
  v0[13] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v0[14] = v3;
  v0[15] = OUTLINED_FUNCTION_13();
  v4 = sub_2313DACFC();
  v0[16] = v4;
  OUTLINED_FUNCTION_0_0(v4);
  v0[17] = v5;
  v0[18] = OUTLINED_FUNCTION_13();
  v6 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2313C18B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(uint64_t, uint64_t), char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_33();
  v26 = v24[17];
  v25 = v24[18];
  v27 = v24[16];
  v28 = v24[12];
  v29 = *MEMORY[0x277D60EC0];
  v89 = *(v26 + 104);
  v89(v25, v29, v27);
  v30 = sub_2313DACEC();
  v32 = v31;
  v33 = *(v26 + 8);
  v33(v25, v27);
  v34 = sub_2313C0730(v28, v30, v32, 0x6E457265646C6F46, 0xEC00000079746974);

  v89(v25, v29, v27);
  v35 = sub_2313DACEC();
  v37 = v36;
  v33(v25, v27);
  v38 = sub_2313C0730(v28, v35, v37, 0x7469746E45676154, 0xE900000000000079);

  v39 = *(v34 + 2);
  if (v39)
  {
    OUTLINED_FUNCTION_22();
    v40 = a21;
    v42 = *(v27 + 16);
    v41 = v27 + 16;
    a18 = v34;
    v43 = &v34[(*(v41 + 64) + 32) & ~*(v41 + 64)];
    a19 = *(v41 + 56);
    v89 = v42;
    v44 = (v41 - 8);
    do
    {
      v45 = v40;
      v46 = v24[15];
      v47 = v24[13];
      v89(v46, v43, v47);
      v48 = sub_2313DB1CC();
      v50 = v49;
      v51 = v46;
      v40 = v45;
      (*v44)(v51, v47);
      a21 = v45;
      v27 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v27 >= v52 >> 1)
      {
        v54 = OUTLINED_FUNCTION_10(v52);
        sub_2313C4598(v54, v27 + 1, 1);
        v40 = v45;
      }

      *(v40 + 16) = v27 + 1;
      v53 = v40 + 16 * v27;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v43 += a19;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v55 = *(v38 + 2);
  if (v55)
  {
    a15 = v40;
    OUTLINED_FUNCTION_22();
    v57 = *(v27 + 16);
    v56 = v27 + 16;
    v58 = a21;
    v59 = &v38[(*(v56 + 64) + 32) & ~*(v56 + 64)];
    a18 = *(v56 + 56);
    a19 = v57;
    v89 = v56;
    a17 = (v56 - 8);
    do
    {
      v60 = v24[15];
      v61 = v24[13];
      (a19)(v60, v59, v61);
      v24[2] = sub_2313DB1CC();
      v24[3] = v62;
      v24[4] = 35;
      v24[5] = 0xE100000000000000;
      v24[6] = 0;
      v24[7] = 0xE000000000000000;
      a11 = sub_2313C4968();
      a12 = a11;
      a10 = a11;
      a9 = MEMORY[0x277D837D0];
      v63 = sub_2313DB31C();
      v65 = v64;

      (*a17)(v60, v61);
      a21 = v58;
      v67 = *(v58 + 16);
      v66 = *(v58 + 24);
      if (v67 >= v66 >> 1)
      {
        v69 = OUTLINED_FUNCTION_10(v66);
        sub_2313C4598(v69, v67 + 1, 1);
      }

      *(v58 + 16) = v67 + 1;
      v68 = v58 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v59 = &a18[v59];
      --v55;
    }

    while (v55);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v88 = *(v58 + 16);
  if (v88)
  {
    v71 = 0;
    a18 = *(v40 + 16);
    v72 = v58 + 32;
    v73 = (v40 + 40);
    a14 = v40 + 40;
    a15 = v58 + 32;
    while (2)
    {
      if (v71 >= *(v58 + 16))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v74 = (v72 + 16 * v71);
      a19 = *v74;
      v89 = v74[1];
      a17 = (v71 + 1);

      for (i = 0; a18 != i; ++i)
      {
        if (i >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v77 = *(v73 - 1);
        v76 = *v73;
        v24[8] = v77;
        v24[9] = v76;
        v24[10] = a19;
        v24[11] = v89;
        sub_2313C4968();

        if (!sub_2313DB32C())
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
          OUTLINED_FUNCTION_6();
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_2313DB7C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD90, &qword_2313DC060);
          OUTLINED_FUNCTION_6();
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_2313DB7D0;
          *(v79 + 32) = a19;
          *(v79 + 40) = v89;
          *(v79 + 48) = v77;
          *(v79 + 56) = v76;
          *(v78 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD98, &qword_2313DC068);
          *(v78 + 32) = v79;
          goto LABEL_26;
        }

        v73 += 2;
      }

      v71 = a17;
      v73 = (v40 + 40);
      v72 = v58 + 32;
      if (a17 != v88)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_34();

  return v82(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, v88, a17, a18, a19, v89, a21, a22, a23, a24);
}

uint64_t sub_2313C1E4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C17C4();
}

uint64_t sub_2313C1EE0()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_2313DB1AC();
  v0[7] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v0[8] = v3;
  v0[9] = OUTLINED_FUNCTION_19();
  v0[10] = swift_task_alloc();
  v4 = sub_2313DB08C();
  v0[11] = v4;
  OUTLINED_FUNCTION_0_0(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_19();
  v0[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v6);
  v0[15] = OUTLINED_FUNCTION_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v7);
  v0[16] = OUTLINED_FUNCTION_19();
  v0[17] = swift_task_alloc();
  v8 = sub_2313DB0EC();
  v0[18] = v8;
  OUTLINED_FUNCTION_0_0(v8);
  v0[19] = v9;
  v0[20] = OUTLINED_FUNCTION_19();
  v0[21] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_2313C20A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_33();
  v25 = *(v24 + 152);
  v26 = *(v24 + 96);
  __swift_project_boxed_opaque_existential_1Tm(*(v24 + 48), *(*(v24 + 48) + 24));
  OUTLINED_FUNCTION_5();
  sub_2313DAD3C();
  v27 = sub_2313DB2CC();

  v28 = 0;
  v86 = *(v27 + 16);
  v85 = v25 + 16;
  HIDWORD(a15) = *MEMORY[0x277D1EAB0];
  v83 = (v26 + 8);
  v84 = (v26 + 104);
  OUTLINED_FUNCTION_23();
  v81 = MEMORY[0x277D84F90];
  v82 = v27;
  while (v86 != v28)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    v29 = *(v24 + 104);
    v30 = *(v24 + 88);
    OUTLINED_FUNCTION_4_0();
    a19 = v31;
    v32 = OUTLINED_FUNCTION_32();
    v33(v32);
    sub_2313DB0CC();
    (*v84)(v29, HIDWORD(a15), v30);
    OUTLINED_FUNCTION_1_0();
    v35 = sub_2313C4638(&qword_27DD4BD48, 255, v34, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_9(v35);
    OUTLINED_FUNCTION_15();
    v37 = *(v24 + 16);
    v38 = *(v24 + 32);
    v39 = *(v24 + 40);
    v40 = *(v24 + 112);
    if (v37 == v38 && *(v24 + 24) == v39)
    {
      v47 = *v83;
      v48 = OUTLINED_FUNCTION_17();
      v47(v48);
      v49 = OUTLINED_FUNCTION_18();
      v47(v49);

LABEL_11:
      v50 = *a9;
      (*a9)(*(v24 + 160), *(v24 + 168), *(v24 + 144));
      v51 = v81;
      a21 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24();
        v51 = v81;
      }

      v27 = v82;
      OUTLINED_FUNCTION_20();
      if (v53)
      {
        v56 = OUTLINED_FUNCTION_10(v52);
        sub_2313C45B8(v56, v39, 1);
        v51 = v81;
      }

      ++v28;
      v54 = *(v24 + 160);
      v55 = *(v24 + 144);
      *(v51 + 16) = v39;
      v81 = v51;
      v50(v51 + a19 + v40 * a18, v54, v55);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_25(v37, v36, v38);
      v43 = *v83;
      v44 = OUTLINED_FUNCTION_17();
      v43(v44);
      v45 = OUTLINED_FUNCTION_18();
      v43(v45);

      if (v42)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31();
      v46();
      ++v28;
      v27 = v82;
    }
  }

  v57 = *(v24 + 144);
  v58 = *(v24 + 120);

  sub_2313BCD08(v81, v58);

  if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
  {
    v59 = *(v24 + 136);
    v60 = *(v24 + 56);
    sub_2313BEA08(*(v24 + 120), &qword_27DD4BDA0, &qword_2313DC078);
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
  }

  else
  {
    sub_2313DB0BC();
    OUTLINED_FUNCTION_31();
    v61 = OUTLINED_FUNCTION_11();
    v62(v61);
  }

  sub_2313C49BC(*(v24 + 136), *(v24 + 128), &qword_27DD4BD30, &qword_2313DC000);
  if (OUTLINED_FUNCTION_26() == 1)
  {
    sub_2313BEA08(*(v24 + 128), &qword_27DD4BD30, &qword_2313DC000);
    goto LABEL_21;
  }

  v63 = *(v24 + 64);
  (*(v63 + 32))(*(v24 + 80), *(v24 + 128), *(v24 + 56));
  sub_2313DB16C();
  OUTLINED_FUNCTION_11();
  v64 = sub_2313DB19C();
  v65 = *(v63 + 8);
  v66 = OUTLINED_FUNCTION_5();
  v65(v66);
  if (v64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    OUTLINED_FUNCTION_6();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_2313DB7C0;
    *(v67 + 56) = MEMORY[0x277D837D0];
    *(v67 + 32) = 1802661719;
    *(v67 + 40) = 0xE400000000000000;
    goto LABEL_26;
  }

  v68 = *(v24 + 72);
  v69 = *(v24 + 56);
  sub_2313DB16C();
  OUTLINED_FUNCTION_30();
  v70 = sub_2313DB19C();
  (v65)(v68, v69);
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    OUTLINED_FUNCTION_6();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_2313DB7C0;
    *(v67 + 56) = MEMORY[0x277D837D0];
    *(v67 + 32) = 1701670728;
    *(v67 + 40) = 0xE400000000000000;
LABEL_26:
    v87 = v67;
    v71 = OUTLINED_FUNCTION_5();
    v65(v71);
  }

  else
  {
    v80 = OUTLINED_FUNCTION_5();
    v65(v80);
LABEL_21:
    v87 = MEMORY[0x277D84F90];
  }

  sub_2313BEA08(*(v24 + 136), &qword_27DD4BD30, &qword_2313DC000);

  OUTLINED_FUNCTION_34();

  v74(v72, v73, v74, v75, v76, v77, v78, v79, a9, v81, a11, v82, v83, v84, a15, v85, a17, a18, a19, v87, a21, a22, a23, a24);
}

uint64_t sub_2313C2670(char a1)
{
  if (a1)
  {
    return 0x7465736E7553;
  }

  else
  {
    return 0x657369726E7553;
  }
}

uint64_t sub_2313C26A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C1EE0();
}

uint64_t sub_2313C2738()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313DA9DC();
  v0[2] = v1;
  OUTLINED_FUNCTION_0_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_13();
  v3 = sub_2313DA9FC();
  v0[5] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_13();
  v5 = sub_2313DA99C();
  v0[8] = v5;
  OUTLINED_FUNCTION_0_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_13();
  v7 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2313C2870(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[7];
  v18 = v1[8];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  v9 = v1[2];
  sub_2313DA98C();
  sub_2313DA9CC();
  (*(v8 + 104))(v7, *MEMORY[0x277CC9980], v9);
  OUTLINED_FUNCTION_5();
  v10 = sub_2313DA9EC();
  (*(v8 + 8))(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
  OUTLINED_FUNCTION_6();
  v11 = swift_allocObject();
  v12 = v11;
  v13 = 0x657369726E7553;
  if (v10 > 8)
  {
    v13 = 0x7465736E7553;
  }

  v14 = 0xE700000000000000;
  if (v10 > 8)
  {
    v14 = 0xE600000000000000;
  }

  v15 = MEMORY[0x277D837D0];
  *(v11 + 16) = xmmword_2313DB7C0;
  *(v11 + 56) = v15;
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v18);

  v16 = v1[1];

  return v16(v12);
}

uint64_t sub_2313C2A20()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

double sub_2313C2A7C()
{
  *(v0 + 16) = 0x5372656874616577;
  *(v0 + 24) = 0xEF65676174536E75;
  *&result = 9;
  *(v0 + 32) = xmmword_2313DB940;
  return result;
}

uint64_t sub_2313C2AB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C2B40;

  return sub_2313C2738();
}

uint64_t sub_2313C2B40()
{
  OUTLINED_FUNCTION_8();

  v0 = OUTLINED_FUNCTION_3_0();

  return v1(v0);
}

uint64_t sub_2313C2C30()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_2313DB15C();
  v0[7] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v0[8] = v3;
  v0[9] = OUTLINED_FUNCTION_13();
  v4 = sub_2313DB14C();
  v0[10] = v4;
  OUTLINED_FUNCTION_0_0(v4);
  v0[11] = v5;
  v0[12] = OUTLINED_FUNCTION_13();
  v6 = sub_2313DB08C();
  v0[13] = v6;
  OUTLINED_FUNCTION_0_0(v6);
  v0[14] = v7;
  v0[15] = OUTLINED_FUNCTION_19();
  v0[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v8);
  v0[17] = OUTLINED_FUNCTION_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v9);
  v0[18] = OUTLINED_FUNCTION_13();
  v10 = sub_2313DB1AC();
  v0[19] = v10;
  OUTLINED_FUNCTION_0_0(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_19();
  v0[22] = swift_task_alloc();
  v12 = sub_2313DB0EC();
  v0[23] = v12;
  OUTLINED_FUNCTION_0_0(v12);
  v0[24] = v13;
  v0[25] = OUTLINED_FUNCTION_19();
  v0[26] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_2313C2E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_33();
  v25 = *(v24 + 192);
  v26 = *(v24 + 112);
  __swift_project_boxed_opaque_existential_1Tm(*(v24 + 48), *(*(v24 + 48) + 24));
  sub_2313DAD3C();
  v27 = sub_2313DB2CC();

  v28 = 0;
  v113 = *(v27 + 16);
  v111 = v25 + 16;
  HIDWORD(a14) = *MEMORY[0x277D1EA90];
  v109 = (v26 + 8);
  v110 = (v26 + 104);
  OUTLINED_FUNCTION_23();
  v108 = MEMORY[0x277D84F90];
  v112 = v27;
  while (v113 != v28)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    v29 = *(v24 + 120);
    v30 = *(v24 + 104);
    OUTLINED_FUNCTION_4_0();
    a19 = v31;
    v32 = OUTLINED_FUNCTION_32();
    v33(v32);
    sub_2313DB0CC();
    (*v110)(v29, HIDWORD(a14), v30);
    OUTLINED_FUNCTION_1_0();
    v35 = sub_2313C4638(&qword_27DD4BD48, 255, v34, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_9(v35);
    OUTLINED_FUNCTION_15();
    v37 = *(v24 + 16);
    v38 = *(v24 + 32);
    v39 = *(v24 + 40);
    v40 = *(v24 + 128);
    if (v37 == v38 && *(v24 + 24) == v39)
    {
      v47 = *v109;
      v48 = OUTLINED_FUNCTION_17();
      v47(v48);
      v49 = OUTLINED_FUNCTION_18();
      v47(v49);

LABEL_11:
      v50 = *a9;
      (*a9)(*(v24 + 200), *(v24 + 208), *(v24 + 184));
      v51 = v108;
      a21 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24();
        v51 = v108;
      }

      OUTLINED_FUNCTION_20();
      if (v53)
      {
        v56 = OUTLINED_FUNCTION_10(v52);
        sub_2313C45B8(v56, v39, 1);
        v51 = v108;
      }

      ++v28;
      v54 = *(v24 + 200);
      v55 = *(v24 + 184);
      *(v51 + 16) = v39;
      v108 = v51;
      v50(v51 + a19 + v40 * a18, v54, v55);
      v27 = v112;
    }

    else
    {
      v42 = OUTLINED_FUNCTION_25(v37, v36, v38);
      v43 = *v109;
      v44 = OUTLINED_FUNCTION_17();
      v43(v44);
      v45 = OUTLINED_FUNCTION_18();
      v43(v45);

      if (v42)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31();
      v46();
      ++v28;
      v27 = v112;
    }
  }

  v57 = *(v24 + 184);
  v58 = *(v24 + 136);

  sub_2313BCD08(v108, v58);

  v59 = OUTLINED_FUNCTION_27();
  if (__swift_getEnumTagSinglePayload(v59, v60, v57) == 1)
  {
    v61 = *(v24 + 152);
    sub_2313BEA08(*(v24 + 136), &qword_27DD4BDA0, &qword_2313DC078);
    v62 = OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v62, v63, 1, v61);
    goto LABEL_19;
  }

  v65 = *(v24 + 144);
  v64 = *(v24 + 152);
  sub_2313DB0BC();
  OUTLINED_FUNCTION_31();
  v66 = OUTLINED_FUNCTION_11();
  v67(v66);
  if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
  {
LABEL_19:
    sub_2313BEA08(*(v24 + 144), &qword_27DD4BD30, &qword_2313DC000);
    goto LABEL_20;
  }

  (*(*(v24 + 160) + 32))(*(v24 + 176), *(v24 + 144), *(v24 + 152));
  v76 = OUTLINED_FUNCTION_30();
  v77(v76);
  v78 = OUTLINED_FUNCTION_5();
  if (v79(v78) == *MEMORY[0x277D72A58])
  {
    v81 = *(v24 + 64);
    v80 = *(v24 + 72);
    v82 = *(v24 + 56);
    (*(*(v24 + 160) + 96))(*(v24 + 168), *(v24 + 152));
    v83 = swift_projectBox();
    (*(v81 + 16))(v80, v83, v82);
    v84 = OUTLINED_FUNCTION_5();
    if (v85(v84) == *MEMORY[0x277D729D0])
    {
      v87 = *(v24 + 88);
      v86 = *(v24 + 96);
      v89 = *(v24 + 72);
      v88 = *(v24 + 80);
      (*(*(v24 + 64) + 96))(v89, *(v24 + 56));
      (*(v87 + 32))(v86, v89, v88);

      v90 = sub_2313DB13C();
      v91 = sub_2313C4B28(v90);
      v94 = *(v24 + 88);
      v93 = *(v24 + 96);
      v95 = *(v24 + 80);
      if (v92)
      {
        v96 = v91;
        v97 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
        OUTLINED_FUNCTION_6();
        v98 = swift_allocObject();
        v99 = MEMORY[0x277D837D0];
        *(v98 + 16) = xmmword_2313DB7C0;
        *(v98 + 56) = v99;
        *(v98 + 32) = v96;
        *(v98 + 40) = v97;
        v114 = v98;
        (*(v94 + 8))(v93, v95);
        v100 = OUTLINED_FUNCTION_5();
        v101(v100);
        goto LABEL_21;
      }

      (*(v94 + 8))(*(v24 + 96), *(v24 + 80));
      v106 = OUTLINED_FUNCTION_5();
      v107(v106);
    }

    else
    {
      (*(*(v24 + 160) + 8))(*(v24 + 176), *(v24 + 152));
      v104 = OUTLINED_FUNCTION_5();
      v105(v104);
    }
  }

  else
  {
    v102 = *(*(v24 + 160) + 8);
    (v102)(*(v24 + 176), *(v24 + 152));
    v103 = OUTLINED_FUNCTION_11();
    v102(v103);
  }

LABEL_20:
  v114 = MEMORY[0x277D84F90];
LABEL_21:

  OUTLINED_FUNCTION_34();

  v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, v108, a11, v109, v110, a14, v111, v112, a17, a18, a19, v114, a21, a22, a23, a24);
}

uint64_t sub_2313C34F4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2313C3550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C2C30();
}

uint64_t sub_2313C3624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C35E4();
}

void sub_2313C3BC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2313BEB24(a1, v20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA8, &qword_2313DC098);
  if ((OUTLINED_FUNCTION_35(v3, v4, v5, v3, v6) & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v19[2];
  if (!v7)
  {
LABEL_9:

LABEL_10:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v8 = 0;
  v9 = (v19 + 4);
  while (v8 < v19[2])
  {
    sub_2313BEB24(v9, v20);
    v10 = sub_2313C4B98();
    if (OUTLINED_FUNCTION_35(v10, v11, v12, v10, v13))
    {
      sub_2313C4BDC(v19);
      if (v14)
      {

        v15 = [v19 displayName];
        v16 = sub_2313DB21C();
        v18 = v17;

        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v16;
        *(a2 + 8) = v18;
        return;
      }
    }

    ++v8;
    v9 += 32;
    if (v7 == v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2313C3D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v36 = a2;
  v7 = sub_2313DB1BC();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD58, &unk_2313DC020);
  MEMORY[0x28223BE20](v35);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD60, &qword_2313DC380);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v33 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  sub_2313DB0BC();
  v22 = sub_2313DB1AC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v22) == 1)
  {
    sub_2313BEA08(v13, &qword_27DD4BD30, &qword_2313DC000);
    v23 = 1;
  }

  else
  {
    sub_2313DB17C();
    (*(*(v22 - 8) + 8))(v13, v22);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v23, 1, v7);
  v24 = swift_allocObject();
  v24[2] = v36;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = v37;
  *v19 = v24;
  (*(v38 + 104))(v19, *MEMORY[0x277D72D28], v7);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v7);
  v25 = *(v35 + 48);
  sub_2313C49BC(v21, v10, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313C49BC(v19, &v10[v25], &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v10, 1, v7) != 1)
  {
    v27 = v34;
    sub_2313C49BC(v10, v34, &qword_27DD4BD60, &qword_2313DC380);
    if (__swift_getEnumTagSinglePayload(&v10[v25], 1, v7) != 1)
    {
      v28 = v38;
      v29 = &v10[v25];
      v30 = v33;
      (*(v38 + 32))(v33, v29, v7);
      sub_2313C4638(&qword_27DD4BD68, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);

      v26 = sub_2313DB20C();
      v31 = *(v28 + 8);
      v31(v30, v7);
      sub_2313BEA08(v19, &qword_27DD4BD60, &qword_2313DC380);
      sub_2313BEA08(v21, &qword_27DD4BD60, &qword_2313DC380);
      v31(v27, v7);
      sub_2313BEA08(v10, &qword_27DD4BD60, &qword_2313DC380);
      return v26 & 1;
    }

    sub_2313BEA08(v19, &qword_27DD4BD60, &qword_2313DC380);
    sub_2313BEA08(v21, &qword_27DD4BD60, &qword_2313DC380);
    (*(v38 + 8))(v27, v7);
    goto LABEL_9;
  }

  sub_2313BEA08(v19, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313BEA08(v21, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(&v10[v25], 1, v7) != 1)
  {
LABEL_9:
    sub_2313BEA08(v10, &qword_27DD4BD58, &unk_2313DC020);
    v26 = 0;
    return v26 & 1;
  }

  sub_2313BEA08(v10, &qword_27DD4BD60, &qword_2313DC380);
  v26 = 1;
  return v26 & 1;
}

void *sub_2313C4280(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_2313C4380(v8, v7);
  v10 = *(sub_2313DB1EC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2313C447C(a4 + v11, v8, v9 + v11, MEMORY[0x277D73220]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_2313C4380(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD50, &qword_2313DC018);
  v4 = *(sub_2313DB1EC() - 8);
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

void sub_2313C447C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_4(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_28();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_28();

    MEMORY[0x2821FE820](v9);
  }
}

void *sub_2313C4540(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2313C47A8(a1, a2, a3, *v3, &qword_27DD4BDB8, &unk_2313DC0A0, MEMORY[0x277CC9788], MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_2313C4598(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2313C46A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2313C45B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2313C47A8(a1, a2, a3, *v3, &qword_27DD4BD70, &qword_2313DC030, MEMORY[0x277D1EE00], MEMORY[0x277D1EE00]);
  *v3 = result;
  return result;
}

uint64_t sub_2313C4638(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_2313C4680(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2313C4A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2313C46A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD90, &qword_2313DC060);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2313C47A8(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_0_0(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_2313C447C(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

unint64_t sub_2313C4968()
{
  result = qword_27DD4BD88;
  if (!qword_27DD4BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4BD88);
  }

  return result;
}

uint64_t sub_2313C49BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_30();
  v6(v5);
  return a2;
}

char *sub_2313C4A1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2313C4B28(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2313DB21C();

  return v3;
}

unint64_t sub_2313C4B98()
{
  result = qword_27DD4BDB0;
  if (!qword_27DD4BDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD4BDB0);
  }

  return result;
}

uint64_t sub_2313C4BDC(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2313DB21C();

  return v3;
}

void *OUTLINED_FUNCTION_9(uint64_t a1)
{

  return sub_2313DB2AC();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_14@<X0>(uint64_t a1@<X8>)
{

  return sub_2313C45B8(0, a1 + 1, 1);
}

void *OUTLINED_FUNCTION_15()
{

  return sub_2313DB2AC();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

char *OUTLINED_FUNCTION_22()
{
  *(v2 - 80) = v1;

  return sub_2313C4598(0, v0, 0);
}

void *OUTLINED_FUNCTION_24()
{
  v2 = *(v0 + 16) + 1;

  return sub_2313C45B8(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2313DB39C();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_2313C4F18(char a1)
{
  result = 0x457070416B6F6F42;
  switch(a1)
  {
    case 1:
    case 8:
    case 21:
      return 0xD000000000000012;
    case 2:
      v4 = 0x6C6946434F44;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0xD000000000000011;
    case 5:
      return 0x6472616F424C5243;
    case 6:
      return 0xD000000000000011;
    case 7:
      v5 = 0x456563616C50;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 9:
      v4 = 0x67617373654DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 10:
      return 0xD000000000000016;
    case 11:
      return 0x69726953676E6F53;
    case 12:
      v4 = 0x6C6369747241;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 13:
      v6 = 1702129486;
      goto LABEL_29;
    case 14:
      v3 = 0x7265646C6F46;
      goto LABEL_9;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x7469746E45676154;
    case 17:
      v5 = 0x457465737341;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 18:
      v5 = 0x456D75626C41;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 19:
      v6 = 2003789907;
      goto LABEL_29;
    case 20:
      v6 = 1953720652;
LABEL_29:
      result = v6 | 0x69746E4500000000;
      break;
    case 22:
      result = 0x7469746E45626154;
      break;
    case 23:
      result = 0x6B72616D6B6F6F42;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      v3 = 0x6C6F626D7953;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 26:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2313C51B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2313DAB9C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2313DAF7C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313C52D8, 0, 0);
}

uint64_t sub_2313C52D8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D60928])
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[2];
    (*(v0[7] + 96))(v7, v0[6]);
    (*(v5 + 32))(v4, v7, v6);
    v11 = sub_2313DAF6C();
    v12 = sub_2313D3D28(v9, v8, v11);
    v14 = v13;

    v10[3] = MEMORY[0x277D837D0];
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (v14)
    {
      v16 = v14;
    }

    *v10 = v15;
    v10[1] = v16;
    (*(v5 + 8))(v4, v6);
    v17 = *MEMORY[0x277D60C38];
    sub_2313DAC5C();
    OUTLINED_FUNCTION_27_0();
    (*(v18 + 104))(v10, v17);
  }

  else
  {
    v19 = v0[2];
    (*(v0[7] + 8))(v0[8], v0[6]);
    v20 = *MEMORY[0x277D60C40];
    sub_2313DAC5C();
    OUTLINED_FUNCTION_27_0();
    (*(v21 + 104))(v19, v20);
  }

  v22 = v0[1];

  return v22();
}

void sub_2313C552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_2313DACBC();
  OUTLINED_FUNCTION_3_1();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2313DAD7C();
  OUTLINED_FUNCTION_3_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_0();
  v39 = v38 - v37;
  sub_2313DAC8C();
  (*(v28 + 16))(v32, v23, v26);
  v40 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v41 = swift_allocObject();
  (*(v28 + 32))(v41 + v40, v32, v26);
  sub_2313DB02C();
  sub_2313DAFCC();
  (*(v28 + 8))(v23, v26);
  (*(v35 + 8))(v39, v33);
  v42 = (v25 + *(type metadata accessor for BaseModelSignals.SignalWithFilter(0) + 20));
  *v42 = sub_2313C7AC0;
  v42[1] = v41;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C5710@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2313DAC6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2313C5778()
{
  sub_2313DB02C();
  result = sub_2313DAFDC();
  qword_27DD4BF30 = result;
  return result;
}

uint64_t sub_2313C57AC()
{
  sub_2313DB02C();
  result = sub_2313DB00C();
  qword_27DD4BF38 = result;
  return result;
}

void sub_2313C57F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4BF48);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C5970(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4BF60);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_2313C5B1C()
{
  result = qword_2814B1870;
  if (!qword_2814B1870)
  {
    sub_2313DAC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1870);
  }

  return result;
}

void sub_2313C5B88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4BF90);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C5CF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4BFA8);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C5EC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4BFE8);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6238(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C040);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C660C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C0D0);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6B74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C130);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6CEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C148);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6E70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C168);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6FE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C180);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C7168(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C198);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C7300(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C1B8);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C7474(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_0();
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_2313DAD7C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v4, qword_27DD4C1D0);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  sub_2313DACEC();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v9 = OUTLINED_FUNCTION_13_0();
  v10(v9);
  OUTLINED_FUNCTION_17_0();
  *v11 = sub_2313C5968;
  v11[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C7618(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  sub_2313DACFC();
  OUTLINED_FUNCTION_2_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_0();
  sub_2313DB02C();
  v10 = sub_2313DAC3C();
  v13[3] = v10;
  v13[4] = sub_2313C5B1C();
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v13);
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_2Tm, *MEMORY[0x277D60B50], v10);
  (*(v8 + 104))(v4, *a2, v3);
  sub_2313DACEC();
  (*(v8 + 8))(v4, v3);
  result = sub_2313DAFEC();
  *a3 = result;
  return result;
}

unint64_t sub_2313C7924(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t type metadata accessor for BaseModelSignals.SignalWithFilter(uint64_t a1)
{
  result = qword_27DD4BDC0;
  if (!qword_27DD4BDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2313C7AC0(uint64_t a1)
{
  v3 = sub_2313DACBC();
  OUTLINED_FUNCTION_7(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return MEMORY[0x2821C6BF0](a1, v5);
}

uint64_t sub_2313C7B64(uint64_t a1)
{
  result = sub_2313DAC6C();
  if (v2 <= 0x3F)
  {
    result = sub_2313C7BE8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2313C7BE8()
{
  result = qword_27DD4BDD0;
  if (!qword_27DD4BDD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DD4BDD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return type metadata accessor for BaseModelSignals.SignalWithFilter(0);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_2313DAFCC();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return sub_2313DACFC();
}

void OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_2313C552C(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2313C7EA0()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313DA99C();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2313C7F44()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_20_1(v0);
  OUTLINED_FUNCTION_34_0();
  sub_2313C7FC0();
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);

  v3 = OUTLINED_FUNCTION_14_1();

  return v4(v3);
}

void sub_2313C7FC0()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v42 = sub_2313DB1AC();
  OUTLINED_FUNCTION_3_1();
  v39 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v36 = v5;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_1();
  v38 = v7;
  OUTLINED_FUNCTION_11_1();
  v8 = sub_2313DA9DC();
  OUTLINED_FUNCTION_3_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_0();
  v14 = v13 - v12;
  v41 = sub_2313DA9FC();
  OUTLINED_FUNCTION_3_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_2();
  v40 = v23;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_1();
  sub_2313C83BC(v2, v0);
  sub_2313DA9CC();
  v25 = *(v10 + 104);
  v25(v14, *MEMORY[0x277CC9980], v8);
  v37 = sub_2313DA9EC();
  v26 = *(v10 + 8);
  v27 = OUTLINED_FUNCTION_30_0();
  v26(v27);
  v28 = *(v16 + 8);
  v28(v20, v41);
  sub_2313DA9CC();
  v25(v14, *MEMORY[0x277CC99B8], v8);
  v29 = sub_2313DA9EC();
  v30 = OUTLINED_FUNCTION_30_0();
  v26(v30);
  v31 = v40;
  v28(v20, v41);
  sub_2313CC354(v0, v40, &qword_27DD4BD30, &qword_2313DC000);
  v32 = OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_1(v32, v33, v42);
  if (v34)
  {
    sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
  }

  else
  {
    (*(v39 + 32))(v38, v40, v42);
    if ((v37 - 5) <= 4 && (v29 - 7) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      sub_2313DB16C();
      sub_2313DB19C();
      v35 = *(v39 + 8);
      v35(v36, v42);
      v35(v38, v42);
      sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
      goto LABEL_8;
    }

    (*(v39 + 8))(v38, v42);
    v31 = v0;
  }

  sub_2313CC3B4(v31, &qword_27DD4BD30, &qword_2313DC000);
LABEL_8:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C83BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_2313DB08C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v42 - v11;
  v12 = sub_2313DB0EC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = a1[3];
  v19 = a1;
  v20 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v19, v18);
  sub_2313DAD3C();
  v21 = sub_2313DB2CC();

  v23 = 0;
  v58 = *(v21 + 16);
  v53 = v13 + 16;
  v52 = *MEMORY[0x277D1EAB0];
  v50 = (v4 + 8);
  v51 = (v4 + 104);
  v49 = (v13 + 8);
  v55 = v13;
  v46 = (v13 + 32);
  v48 = MEMORY[0x277D84F90];
  v54 = v21;
  while (v58 != v23)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v24 = *(v55 + 72);
    v59 = v23;
    v56 = v24;
    (*(v55 + 16))(v17, v21 + v57 + v24 * v23, v12);
    sub_2313DB0CC();
    (*v51)(v7, v52, v3);
    sub_2313CCD50(&qword_27DD4BD48, MEMORY[0x277D1EB58], MEMORY[0x277D1EB78]);
    sub_2313DB2AC();
    sub_2313DB2AC();
    if (v62 == v60 && v63 == v61)
    {
      v30 = *v50;
      (*v50)(v7, v3);
      v30(v20, v3);

LABEL_11:
      v31 = *v46;
      (*v46)(v47, v17, v12);
      v32 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v32;
      v64 = v32;
      v45 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2313C45B8(0, *(v32 + 16) + 1, 1);
        v34 = v64;
      }

      v35 = v59;
      v37 = v56;
      v36 = v57;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2313C45B8((v38 > 1), v39 + 1, 1);
        v35 = v59;
        v34 = v64;
      }

      v23 = v35 + 1;
      *(v34 + 16) = v39 + 1;
      v48 = v34;
      result = (v45)(v34 + v36 + v39 * v37, v47, v12);
      v21 = v54;
    }

    else
    {
      v26 = sub_2313DB39C();
      v27 = v12;
      v28 = v7;
      v29 = *v50;
      (*v50)(v28, v3);
      v29(v20, v3);
      v7 = v28;
      v12 = v27;

      if (v26)
      {
        goto LABEL_11;
      }

      result = (*v49)(v17, v27);
      v23 = v59 + 1;
      v21 = v54;
    }
  }

  v40 = v43;
  sub_2313BCD08(v48, v43);

  if (__swift_getEnumTagSinglePayload(v40, 1, v12) == 1)
  {
    sub_2313CC3B4(v40, &qword_27DD4BDA0, &qword_2313DC078);
    v41 = sub_2313DB1AC();
    return __swift_storeEnumTagSinglePayload(v44, 1, 1, v41);
  }

  else
  {
    sub_2313DB0BC();
    return (*v49)(v40, v12);
  }
}

uint64_t sub_2313C8974()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313CCD9C;

  return sub_2313C7EA0();
}

uint64_t sub_2313C8A0C()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313DA99C();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2313C8AB0()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_20_1(v0);
  OUTLINED_FUNCTION_34_0();
  sub_2313C8B2C();
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);

  v3 = OUTLINED_FUNCTION_14_1();

  return v4(v3);
}

void sub_2313C8B2C()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v44 = sub_2313DB1AC();
  OUTLINED_FUNCTION_3_1();
  v42 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_1();
  v41 = v6;
  OUTLINED_FUNCTION_11_1();
  v7 = sub_2313DA9DC();
  OUTLINED_FUNCTION_3_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_0();
  v13 = v12 - v11;
  v14 = sub_2313DA9FC();
  OUTLINED_FUNCTION_3_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_2();
  v43 = v23;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_1();
  sub_2313C83BC(v2, v0);
  sub_2313DA9CC();
  v25 = *(v9 + 104);
  v25(v13, *MEMORY[0x277CC9980], v7);
  v40 = sub_2313DA9EC();
  v26 = *(v9 + 8);
  v27 = OUTLINED_FUNCTION_18();
  v26(v27);
  v28 = *(v16 + 8);
  v28(v20, v14);
  sub_2313DA9CC();
  v25(v13, *MEMORY[0x277CC99B8], v7);
  v29 = sub_2313DA9EC();
  v30 = OUTLINED_FUNCTION_18();
  v26(v30);
  v28(v20, v14);
  v31 = v43;
  sub_2313CC354(v0, v43, &qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_13_1(v43);
  if (v32)
  {
    sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
    v0 = v43;
LABEL_14:
    sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
    goto LABEL_15;
  }

  (*(v42 + 32))(v41, v43, v44);
  if ((v29 - 7) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v33 = OUTLINED_FUNCTION_32_0();
    v34(v33);
    goto LABEL_14;
  }

  if ((v40 - 5) > 6)
  {
    if ((v40 - 15) < 4)
    {
      sub_2313DB16C();
      OUTLINED_FUNCTION_31_0();
      sub_2313DB19C();
      v37 = OUTLINED_FUNCTION_33_0();
      v43(v37);
      v38 = OUTLINED_FUNCTION_32_0();
      v43(v38);
      sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
      goto LABEL_15;
    }

    v31 = *(v42 + 8);
    goto LABEL_13;
  }

  sub_2313DB16C();
  OUTLINED_FUNCTION_31_0();
  sub_2313DB19C();
  v35 = OUTLINED_FUNCTION_33_0();
  v43(v35);
  if ((v20 & 1) == 0)
  {
LABEL_13:
    v39 = OUTLINED_FUNCTION_32_0();
    v31(v39);
    goto LABEL_14;
  }

  v36 = OUTLINED_FUNCTION_32_0();
  v43(v36);
  sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
LABEL_15:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C8FAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313CCD9C;

  return sub_2313C8A0C();
}

uint64_t sub_2313C9044()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313DA99C();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2313C90E8()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_20_1(v0);
  OUTLINED_FUNCTION_34_0();
  sub_2313C9164();
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);

  v3 = OUTLINED_FUNCTION_14_1();

  return v4(v3);
}

void sub_2313C9164()
{
  OUTLINED_FUNCTION_20_0();
  v34 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - v3;
  v5 = sub_2313DB1AC();
  OUTLINED_FUNCTION_3_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_2();
  v32 = v8;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = sub_2313DA9DC();
  OUTLINED_FUNCTION_3_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_0();
  v18 = v17 - v16;
  v19 = sub_2313DA9FC();
  OUTLINED_FUNCTION_3_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_0();
  v25 = v24 - v23;
  sub_2313DA9CC();
  (*(v14 + 104))(v18, *MEMORY[0x277CC9980], v12);
  v26 = sub_2313DA9EC();
  (*(v14 + 8))(v18, v12);
  (*(v21 + 8))(v25, v19);
  if ((v26 - 12) <= 7)
  {
    sub_2313C83BC(v34, v4);
    OUTLINED_FUNCTION_19_1(v4, 1, v5);
    if (v27)
    {
      sub_2313CC3B4(v4, &qword_27DD4BD30, &qword_2313DC000);
    }

    else
    {
      v28 = v33;
      (*(v33 + 32))(v11, v4, v5);
      v29 = v32;
      sub_2313DB16C();
      sub_2313DB19C();
      v30 = *(v28 + 8);
      v30(v29, v5);
      v30(v11, v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C949C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313CCD9C;

  return sub_2313C9044();
}

uint64_t sub_2313C9534(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_10_1();
}

uint64_t sub_2313C9548()
{
  OUTLINED_FUNCTION_8();
  sub_2313C95AC();
  v1 = *(v0 + 8);
  v3 = v2 & 1;

  return v1(v3);
}

void sub_2313C95AC()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v69 = v3;
  v68 = v4;
  v71 = sub_2313DB12C();
  OUTLINED_FUNCTION_3_1();
  v70 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v12);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_2(v14);
  v77 = sub_2313DB1AC();
  OUTLINED_FUNCTION_3_1();
  v74 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_4_2(v18);
  v83 = sub_2313DB08C();
  OUTLINED_FUNCTION_3_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_2();
  v87 = v22;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_1();
  v86 = v24;
  OUTLINED_FUNCTION_11_1();
  v25 = sub_2313DB0EC();
  OUTLINED_FUNCTION_3_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_35_0();
  v90 = v30;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_1();
  v91 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_2313DAD3C();
  v34 = sub_2313DB2CC();

  v35 = 0;
  v85 = *(v34 + 16);
  v82 = *MEMORY[0x277D1EB18];
  v80 = (v20 + 8);
  v81 = (v20 + 104);
  v89 = (v27 + 8);
  v88 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v85 == v35)
    {

      v48 = 0;
      v0 = 0;
      v49 = v88;
      v50 = *(v88 + 16);
      v51 = MEMORY[0x277D84F90];
      while (v50 != v48)
      {
        if (v48 >= *(v49 + 16))
        {
          goto LABEL_42;
        }

        (*(v27 + 16))(v90, v49 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v48, v25);
        if (sub_2313C9FC4())
        {
          OUTLINED_FUNCTION_29_0();
          v53 = *v52;
          (*v52)(v78, v90, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2313C45B8(0, *(v51 + 16) + 1, 1);
          }

          v55 = *(v51 + 16);
          v54 = *(v51 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_2313C45B8((v54 > 1), v55 + 1, 1);
          }

          ++v48;
          *(v51 + 16) = v55 + 1;
          OUTLINED_FUNCTION_29_0();
          v53();
          v49 = v88;
        }

        else
        {
          (*v89)(v90, v25);
          ++v48;
          v49 = v88;
        }
      }

      sub_2313BCD08(v51, v75);

      OUTLINED_FUNCTION_19_1(v75, 1, v25);
      if (v39)
      {
        sub_2313CC3B4(v75, &qword_27DD4BDA0, &qword_2313DC078);
        v58 = v76;
        v56 = OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v56, v57, 1, v77);
      }

      else
      {
        v58 = v76;
        sub_2313DB0BC();
        (*v89)(v75, v25);
        v59 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_19_1(v59, v60, v77);
        if (!v61)
        {
          (*(v74 + 32))(v73, v76, v77);
          (*(v74 + 16))(v72, v73, v77);
          v62 = (*(v74 + 88))(v72, v77);
          if (v62 == *MEMORY[0x277D729F8])
          {
            (*(v74 + 96))(v72, v77);
            v63 = swift_projectBox();
            (*(v70 + 16))(v67, v63, v71);

            if (sub_2313DB11C() != v68 || v64 != v69)
            {
              sub_2313DB39C();
            }

            (*(v70 + 8))(v67, v71);
            (*(v74 + 8))(v73, v77);
          }

          else
          {
            v66 = *(v74 + 8);
            v66(v73, v77);
            v66(v72, v77);
          }

          goto LABEL_32;
        }
      }

      sub_2313CC3B4(v58, &qword_27DD4BD30, &qword_2313DC000);
LABEL_32:
      OUTLINED_FUNCTION_21_0();
      return;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    v0 = v34;
    v84 = *(v27 + 72);
    v36 = v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v84 * v35;
    v37 = v25;
    (*(v27 + 16))(v91, v36, v25);
    sub_2313DB0CC();
    (*v81)(v87, v82, v83);
    OUTLINED_FUNCTION_8_1();
    sub_2313CCD50(&qword_27DD4BD48, v38, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_31_0();
    sub_2313DB2AC();
    OUTLINED_FUNCTION_31_0();
    sub_2313DB2AC();
    v39 = v94 == v92 && v95 == v93;
    if (v39)
    {
      v42 = *v80;
      (*v80)(v87, v83);
      v42(v86, v83);

LABEL_11:
      OUTLINED_FUNCTION_29_0();
      v44 = *v43;
      v25 = v37;
      (*v43)(v79, v91, v37);
      v45 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2313C45B8(0, *(v88 + 16) + 1, 1);
        v45 = v88;
      }

      v34 = v0;
      v0 = v84;
      v47 = *(v45 + 16);
      v46 = *(v45 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2313C45B8((v46 > 1), v47 + 1, 1);
        v45 = v88;
      }

      ++v35;
      *(v45 + 16) = v47 + 1;
      v88 = v45;
      OUTLINED_FUNCTION_29_0();
      v44();
    }

    else
    {
      v40 = sub_2313DB39C();
      v41 = *v80;
      (*v80)(v87, v83);
      v41(v86, v83);

      if (v40)
      {
        goto LABEL_11;
      }

      v25 = v37;
      (*v89)(v91, v37);
      ++v35;
      v34 = v0;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);

  (*v89)(v90, v25);

  __break(1u);
}

uint64_t sub_2313C9FC4()
{
  v0 = sub_2313DB1BC();
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD58, &unk_2313DC020);
  MEMORY[0x28223BE20](v35);
  v37 = &v32 - v2;
  v3 = sub_2313DACFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD60, &qword_2313DC380);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_2313DB0BC();
  v18 = sub_2313DB1AC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
  {
    sub_2313CC3B4(v9, &qword_27DD4BD30, &qword_2313DC000);
    v19 = 1;
  }

  else
  {
    sub_2313DB17C();
    (*(*(v18 - 8) + 8))(v9, v18);
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v0);
  v20 = swift_allocObject();
  (*(v4 + 104))(v6, *MEMORY[0x277D60F08], v3);
  v21 = sub_2313DACEC();
  v23 = v22;
  (*(v4 + 8))(v6, v3);
  v20[2] = v21;
  v20[3] = v23;
  v20[4] = 0xD000000000000017;
  v20[5] = 0x80000002313DDF40;
  *v15 = v20;
  v24 = v36;
  (*(v36 + 104))(v15, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v0);
  v25 = *(v35 + 48);
  v26 = v37;
  sub_2313CC354(v17, v37, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313CC354(v15, v26 + v25, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v26, 1, v0) != 1)
  {
    v28 = v34;
    sub_2313CC354(v26, v34, &qword_27DD4BD60, &qword_2313DC380);
    if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
    {
      v29 = v33;
      (*(v24 + 32))(v33, v26 + v25, v0);
      sub_2313CCD50(&qword_27DD4BD68, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
      v27 = sub_2313DB20C();
      v30 = *(v24 + 8);
      v30(v29, v0);
      sub_2313CC3B4(v15, &qword_27DD4BD60, &qword_2313DC380);
      sub_2313CC3B4(v17, &qword_27DD4BD60, &qword_2313DC380);
      v30(v34, v0);
      sub_2313CC3B4(v26, &qword_27DD4BD60, &qword_2313DC380);
      return v27 & 1;
    }

    sub_2313CC3B4(v15, &qword_27DD4BD60, &qword_2313DC380);
    sub_2313CC3B4(v17, &qword_27DD4BD60, &qword_2313DC380);
    (*(v24 + 8))(v28, v0);
    goto LABEL_9;
  }

  sub_2313CC3B4(v15, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313CC3B4(v17, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
  {
LABEL_9:
    sub_2313CC3B4(v26, &qword_27DD4BD58, &unk_2313DC020);
    v27 = 0;
    return v27 & 1;
  }

  sub_2313CC3B4(v26, &qword_27DD4BD60, &qword_2313DC380);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_2313CA5F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2313CCD9C;

  return sub_2313C9534(v4, a2);
}

uint64_t sub_2313CA690(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = v1;
    v32 = MEMORY[0x277D84F90];
    sub_2313C4598(0, v4, 0);
    v5 = 32;
    v6 = v32;
    v7 = "GEOPOICategoryStore";
    v8 = "GEOPOICategoryPark";
    v9 = 0xD000000000000013;
    v10 = "GEOPOICategoryFitnessCenter";
    v11 = 0xD000000000000012;
    v12 = "GEOPOICategoryAirport";
    v13 = "GEOPOICategoryNightlife";
    v14 = 0xD000000000000015;
    v15 = "AudiobookAppEntity";
    do
    {
      v16 = "GEOPOICategoryFoodMarket";
      v17 = 0xD000000000000018;
      switch(*(a1 + v5))
      {
        case 1:
          v16 = v7;
          break;
        case 2:
          v17 = v9;
          v16 = v8;
          break;
        case 3:
          v17 = v11;
          v16 = v10;
          break;
        case 4:
          v17 = 0xD00000000000001BLL;
          v16 = v12;
          break;
        case 5:
          v17 = v14;
          v16 = v13;
          break;
        case 6:
          v17 = 0xD000000000000017;
          v16 = v15;
          break;
        default:
          break;
      }

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        v24 = v13;
        v25 = v12;
        v22 = v15;
        v23 = v14;
        v29 = v8;
        v30 = v7;
        v27 = v10;
        v28 = v9;
        v26 = v11;
        sub_2313C4598((v18 > 1), v19 + 1, 1);
        v15 = v22;
        v14 = v23;
        v13 = v24;
        v12 = v25;
        v11 = v26;
        v10 = v27;
        v9 = v28;
        v8 = v29;
        v7 = v30;
      }

      *(v32 + 16) = v19 + 1;
      v20 = v32 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16 | 0x8000000000000000;
      ++v5;
      --v4;
    }

    while (v4);

    v2 = v31;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_2313CA898(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_10_1();
}

uint64_t sub_2313CA8B0()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0[17];
  v2 = v1[3];
  v0[20] = v2;
  v0[21] = v1[4];
  v0[22] = __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v3 = sub_2313DAD1C();
  v5 = v4;
  v0[23] = v3;
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_2313CA998;

  return MEMORY[0x2821C7770](v0 + 2, ObjectType, v5);
}

uint64_t sub_2313CA998()
{
  OUTLINED_FUNCTION_8();

  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2313CAAA4()
{
  v0[25] = sub_2313DAD1C();
  v0[26] = v1;
  v0[27] = swift_getObjectType();
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v0[10] = v2;
  v0[11] = *(v3 + 8);
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v0 + 7);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_2Tm, v4, v2);
  v7 = sub_2313DB2DC();

  return MEMORY[0x2822009F8](sub_2313CABA8, v7, v6);
}

uint64_t sub_2313CABA8()
{
  OUTLINED_FUNCTION_8();
  sub_2313DB04C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2313CAC3C()
{
  OUTLINED_FUNCTION_8();
  if (v0[15])
  {
    sub_2313DB02C();
    swift_dynamicCast();
  }

  else
  {
    sub_2313CC3B4((v0 + 12), &qword_27DD4BDD8, &qword_2313DC390);
  }

  sub_2313CAD10();
  v2 = v1;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[1];

  return v3(v2 & 1);
}

void sub_2313CAD10()
{
  OUTLINED_FUNCTION_20_0();
  v180 = v2;
  v4 = v3;
  v5 = sub_2313DB15C();
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_4_2(v10 - v9);
  v163 = sub_2313DB14C();
  OUTLINED_FUNCTION_3_1();
  v162 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_4_2(v14 - v13);
  v188 = sub_2313DB08C();
  OUTLINED_FUNCTION_3_1();
  v179 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_2();
  v187 = v17;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_1();
  v183 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v20);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_0(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v23);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_2(v25);
  v173 = sub_2313DB1AC();
  OUTLINED_FUNCTION_3_1();
  v169 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_4_2(v29);
  v30 = sub_2313DB0EC();
  OUTLINED_FUNCTION_3_1();
  v189 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_1();
  v190 = v34;
  OUTLINED_FUNCTION_11_1();
  v35 = sub_2313DAC3C();
  OUTLINED_FUNCTION_3_1();
  v186 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v39 - v38);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDE0, &qword_2313DC398);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_2();
  v184 = v41;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_23_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDE8, &qword_2313DC3A0);
  v44 = OUTLINED_FUNCTION_7(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_35_0();
  v182 = v46;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_35_0();
  v49 = v48;
  OUTLINED_FUNCTION_6_1();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v159 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v159 - v54;
  v160 = v0;
  v166 = v5;
  v165 = v7;
  v174 = v30;
  if (v4)
  {
    sub_2313DAFFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDF8, &qword_2313DC3A8);
    v56 = swift_dynamicCast() ^ 1;
    v57 = v55;
  }

  else
  {
    v57 = &v159 - v54;
    v56 = 1;
  }

  __swift_storeEnumTagSinglePayload(v57, v56, 1, v35);
  v58 = *MEMORY[0x277D60B30];
  v181 = *(v186 + 104);
  v181(v53, v58, v35);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v35);
  v59 = v185;
  v60 = *(v185 + 48);
  OUTLINED_FUNCTION_37();
  sub_2313CC354(v61, v62, v63, v64);
  OUTLINED_FUNCTION_37();
  v65 = v35;
  sub_2313CC354(v66, v67, v68, v69);
  OUTLINED_FUNCTION_13_1(v1);
  if (v71)
  {
    sub_2313CC3B4(v53, &qword_27DD4BDE8, &qword_2313DC3A0);
    OUTLINED_FUNCTION_19_1(v1 + v60, 1, v35);
    if (v71)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v70 = v49;
  sub_2313CC354(v1, v49, &qword_27DD4BDE8, &qword_2313DC3A0);
  OUTLINED_FUNCTION_19_1(v1 + v60, 1, v35);
  if (v71)
  {
    sub_2313CC3B4(v53, &qword_27DD4BDE8, &qword_2313DC3A0);
    (*(v186 + 8))(v49, v35);
LABEL_12:
    sub_2313CC3B4(v1, &qword_27DD4BDE0, &qword_2313DC398);
LABEL_13:
    v72 = v182;
    v181(v182, *MEMORY[0x277D60B40], v65);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v65);
    v73 = *(v59 + 48);
    v74 = v184;
    OUTLINED_FUNCTION_37();
    sub_2313CC354(v75, v76, v77, v78);
    OUTLINED_FUNCTION_37();
    sub_2313CC354(v79, v80, v81, v82);
    OUTLINED_FUNCTION_13_1(v74);
    if (!v71)
    {
      sub_2313CC354(v74, v177, &qword_27DD4BDE8, &qword_2313DC3A0);
      OUTLINED_FUNCTION_13_1(v74 + v73);
      if (!v83)
      {
        v93 = v186;
        v94 = v178;
        (*(v186 + 32))(v178, v74 + v73, v35);
        OUTLINED_FUNCTION_9_1();
        sub_2313CCD50(v95, v96, MEMORY[0x277D60B70]);
        v97 = sub_2313DB20C();
        v98 = *(v93 + 8);
        (v98)(v94, v35);
        sub_2313CC3B4(v72, &qword_27DD4BDE8, &qword_2313DC3A0);
        v99 = OUTLINED_FUNCTION_30_0();
        v98(v99);
        sub_2313CC3B4(v74, &qword_27DD4BDE8, &qword_2313DC3A0);
        if (v97)
        {
          goto LABEL_27;
        }

LABEL_49:
        sub_2313CC3B4(v55, &qword_27DD4BDE8, &qword_2313DC3A0);
        OUTLINED_FUNCTION_21_0();
        return;
      }

      sub_2313CC3B4(v72, &qword_27DD4BDE8, &qword_2313DC3A0);
      v84 = OUTLINED_FUNCTION_30_0();
      v85(v84);
LABEL_22:
      sub_2313CC3B4(v74, &qword_27DD4BDE0, &qword_2313DC398);
      goto LABEL_49;
    }

    sub_2313CC3B4(v72, &qword_27DD4BDE8, &qword_2313DC3A0);
    OUTLINED_FUNCTION_13_1(v74 + v73);
    if (!v71)
    {
      goto LABEL_22;
    }

    v1 = v74;
LABEL_18:
    sub_2313CC3B4(v1, &qword_27DD4BDE8, &qword_2313DC3A0);
    goto LABEL_27;
  }

  v86 = v186;
  v87 = v178;
  (*(v186 + 32))(v178, v1 + v60, v35);
  OUTLINED_FUNCTION_9_1();
  sub_2313CCD50(v88, v89, MEMORY[0x277D60B70]);
  v175 = v70;
  v90 = sub_2313DB20C();
  v91 = *(v86 + 8);
  v92 = v87;
  v59 = v185;
  v91(v92, v35);
  sub_2313CC3B4(v53, &qword_27DD4BDE8, &qword_2313DC3A0);
  v91(v175, v35);
  v65 = v35;
  sub_2313CC3B4(v1, &qword_27DD4BDE8, &qword_2313DC3A0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_27:
  v170 = v55;
  __swift_project_boxed_opaque_existential_1Tm(v180, v180[3]);
  sub_2313DAD3C();
  v100 = sub_2313DB2CC();

  v101 = 0;
  v186 = *(v100 + 16);
  v182 = v189 + 16;
  LODWORD(v181) = *MEMORY[0x277D1EA90];
  v102 = v179++;
  v180 = v102 + 13;
  v178 = (v189 + 8);
  v175 = (v189 + 32);
  v177 = MEMORY[0x277D84F90];
  v103 = v187;
  v104 = v174;
LABEL_28:
  v105 = v188;
  while (1)
  {
    if (v186 == v101)
    {

      v124 = v171;
      sub_2313BCD08(v177, v171);

      OUTLINED_FUNCTION_19_1(v124, 1, v104);
      if (v71)
      {
        sub_2313CC3B4(v124, &qword_27DD4BDA0, &qword_2313DC078);
        v127 = v172;
        v125 = OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v125, v126, 1, v173);
        v55 = v170;
      }

      else
      {
        v127 = v172;
        sub_2313DB0BC();
        (*v178)(v124, v104);
        v128 = OUTLINED_FUNCTION_29();
        v129 = v173;
        OUTLINED_FUNCTION_19_1(v128, v130, v173);
        v55 = v170;
        if (!v131)
        {
          v132 = v169;
          v133 = v168;
          (*(v169 + 32))(v168, v127, v129);
          v134 = v167;
          (*(v132 + 16))(v167, v133, v129);
          v135 = (*(v132 + 88))(v134, v129);
          if (v135 == *MEMORY[0x277D72A58])
          {
            (*(v132 + 96))(v134, v129);
            v136 = swift_projectBox();
            v137 = v164;
            (*(v165 + 16))(v164, v136, v166);
            v138 = OUTLINED_FUNCTION_39();
            if (v139(v138) == *MEMORY[0x277D729D0])
            {
              v140 = OUTLINED_FUNCTION_39();
              v141(v140);
              v142 = v162;
              v143 = v161;
              v144 = v163;
              (*(v162 + 32))(v161, v137, v163);

              v145 = sub_2313DB13C();
              v146 = sub_2313CC4D8(v145);
              if (v147)
              {
                v194 = v146;
                v195 = v147;
                MEMORY[0x28223BE20](v146);
                *(&v159 - 2) = &v194;
                sub_2313CC130(sub_2313CC574, (&v159 - 4), v148);
                (*(v142 + 8))(v143, v144);
                v149 = OUTLINED_FUNCTION_21_1();
                v150(v149);
              }

              else
              {
                (*(v142 + 8))(v143, v144);
                v157 = OUTLINED_FUNCTION_21_1();
                v158(v157);
              }

              v55 = v170;
            }

            else
            {
              v153 = OUTLINED_FUNCTION_21_1();
              v154(v153);
              v155 = OUTLINED_FUNCTION_39();
              v156(v155);
            }
          }

          else
          {
            v151 = *(v132 + 8);
            v152 = OUTLINED_FUNCTION_21_1();
            v151(v152);
            (v151)(v134, v129);
          }

          goto LABEL_49;
        }
      }

      sub_2313CC3B4(v127, &qword_27DD4BD30, &qword_2313DC000);
      goto LABEL_49;
    }

    if (v101 >= *(v100 + 16))
    {
      break;
    }

    v106 = v100;
    v185 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v184 = *(v189 + 72);
    v107 = v100 + v185 + v184 * v101;
    v108 = v104;
    (*(v189 + 16))(v190, v107, v104);
    sub_2313DB0CC();
    (*v180)(v103, v181, v105);
    OUTLINED_FUNCTION_8_1();
    sub_2313CCD50(&qword_27DD4BD48, v109, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_18();
    sub_2313DB2AC();
    OUTLINED_FUNCTION_18();
    sub_2313DB2AC();
    if (v194 == v191 && v195 == v192)
    {
      v116 = *v179;
      (*v179)(v103, v105);
      v117 = OUTLINED_FUNCTION_21_1();
      (v116)(v117);

LABEL_38:
      v118 = *v175;
      v104 = v108;
      (*v175)(v176, v190, v108);
      v119 = v177;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193 = v119;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2313C45B8(0, *(v119 + 16) + 1, 1);
        v119 = v193;
      }

      v103 = v187;
      v100 = v106;
      v121 = v185;
      v123 = *(v119 + 16);
      v122 = *(v119 + 24);
      if (v123 >= v122 >> 1)
      {
        sub_2313C45B8((v122 > 1), v123 + 1, 1);
        v119 = v193;
      }

      ++v101;
      *(v119 + 16) = v123 + 1;
      v177 = v119;
      v118(v119 + v121 + v123 * v184, v176, v104);
      goto LABEL_28;
    }

    v111 = sub_2313DB39C();
    v112 = v103;
    v113 = v111;
    v114 = *v179;
    (*v179)(v112, v105);
    v115 = OUTLINED_FUNCTION_21_1();
    (v114)(v115);

    if (v113)
    {
      goto LABEL_38;
    }

    v104 = v108;
    (*v178)(v190, v108);
    ++v101;
    v103 = v187;
    v105 = v188;
    v100 = v106;
  }

  __break(1u);
}

uint64_t sub_2313CBD54()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2313CBDB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2313CBE58;

  return sub_2313CA898(a1, a2);
}

uint64_t sub_2313CBE58()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_2313CBF50()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = sub_2313DAACC();
  v1[3] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_13();
  v4 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2313CBFF4()
{
  OUTLINED_FUNCTION_26_1();
  sub_2313DAABC();
  v0 = OUTLINED_FUNCTION_34_0();
  sub_2313CC594(v0);
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);

  v3 = OUTLINED_FUNCTION_14_1();

  return v4(v3);
}

uint64_t sub_2313CC0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313CCD9C;

  return sub_2313CBF50();
}

BOOL sub_2313CC130(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_2313CC1E0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = (a4)(0, a2);
    OUTLINED_FUNCTION_0_0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_2313CC2D4(uint64_t (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v1, 32, 7);
}

uint64_t sub_2313CC354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_27_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2313CC3B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_27_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2313CC40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2313DB39C() & 1;
  }
}

uint64_t sub_2313CC450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3(0);
  v7 = OUTLINED_FUNCTION_39();
  sub_2313CCD50(v7, v8, a6);
  return sub_2313DB20C() & 1;
}

uint64_t sub_2313CC4D8(void *a1)
{
  v2 = [a1 category];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2313DB21C();

  return v3;
}

uint64_t sub_2313CC594(uint64_t a1)
{
  v45 = a1;
  v1 = sub_2313DB10C();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v44 = &v40 - v4;
  v5 = sub_2313DAADC();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2313DAAFC();
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2313DAAAC();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2313DAACC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v45, v15);
  sub_2313DAAEC();
  (*(v16 + 8))(v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE00, &qword_2313DC3B8);
  v19 = *(v8 + 72);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2313DB7D0;
  v22 = v21 + v20;
  v23 = *(v9 + 104);
  v23(v22, *MEMORY[0x277D55780], v7);
  v23(v22 + v19, *MEMORY[0x277D55778], v7);
  sub_2313DAA9C();
  v51 = v11;
  LOBYTE(v15) = sub_2313CC1E0(sub_2313CCC88, v50, v21, MEMORY[0x277D55788]);
  swift_setDeallocating();
  sub_2313CC2D4(MEMORY[0x277D55788]);
  (*(v9 + 8))(v11, v7);
  if ((v15 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE08, &unk_2313DC3C0);
    v24 = v43;
    v25 = *(v43 + 72);
    v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2313DC140;
    v28 = v27 + v26;
    v29 = *(v24 + 104);
    v29(v28, *MEMORY[0x277D556F8], v5);
    v29(v28 + v25, *MEMORY[0x277D55708], v5);
    v29(v28 + 2 * v25, *MEMORY[0x277D556F0], v5);
    v29(v28 + 3 * v25, *MEMORY[0x277D55700], v5);
    v30 = v42;
    v31 = sub_2313DAA8C();
    MEMORY[0x28223BE20](v31);
    *(&v40 - 2) = v30;
    v32 = sub_2313CC1E0(sub_2313CCCEC, (&v40 - 4), v27, MEMORY[0x277D55710]);
    swift_setDeallocating();
    sub_2313CC2D4(MEMORY[0x277D55710]);
    (*(v24 + 8))(v30, v5);
    if (!v32)
    {
      v33 = v41;
      sub_2313DAF9C();
      v34 = sub_2313DB0FC();
      v38 = sub_2313DB2EC();
      if (!os_log_type_enabled(v34, v38))
      {
        v37 = 1;
        goto LABEL_9;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2313B9000, v34, v38, "MusicSubscriptionFilter:: user has music subscription - returns true", v36, 2u);
      v37 = 1;
      goto LABEL_8;
    }
  }

  v33 = v44;
  sub_2313DAF9C();
  v34 = sub_2313DB0FC();
  v35 = sub_2313DB2EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2313B9000, v34, v35, "MusicSubscriptionFilter:: no valid music subscription - returns false", v36, 2u);
    v37 = 0;
LABEL_8:
    MEMORY[0x23192C7B0](v36, -1, -1);
    goto LABEL_9;
  }

  v37 = 0;
LABEL_9:

  (*(v48 + 8))(v33, v49);
  (*(v46 + 8))(v14, v47);
  return v37;
}

uint64_t sub_2313CCD50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return sub_2313DA98C();
}

uint64_t sub_2313CCF74(uint64_t a1, uint64_t a2)
{
  v2 = sub_2313DB3AC();

  v3 = 0;
  result = 70;
  switch(v2)
  {
    case 0:
      goto LABEL_125;
    case 1:
      v3 = 1;
      goto LABEL_125;
    case 2:
      v3 = 2;
      goto LABEL_125;
    case 3:
      v3 = 3;
      goto LABEL_125;
    case 4:
      v3 = 4;
      goto LABEL_125;
    case 5:
      v3 = 5;
      goto LABEL_125;
    case 6:
      v3 = 6;
      goto LABEL_125;
    case 7:
      v3 = 7;
      goto LABEL_125;
    case 8:
      v3 = 8;
      goto LABEL_125;
    case 9:
      v3 = 9;
      goto LABEL_125;
    case 10:
      v3 = 10;
      goto LABEL_125;
    case 11:
      v3 = 11;
      goto LABEL_125;
    case 12:
      v3 = 12;
      goto LABEL_125;
    case 13:
      v3 = 13;
      goto LABEL_125;
    case 14:
      v3 = 14;
      goto LABEL_125;
    case 15:
      v3 = 15;
      goto LABEL_125;
    case 16:
      v3 = 16;
      goto LABEL_125;
    case 17:
      v3 = 17;
      goto LABEL_125;
    case 18:
      v3 = 18;
      goto LABEL_125;
    case 19:
      v3 = 19;
      goto LABEL_125;
    case 20:
      v3 = 20;
      goto LABEL_125;
    case 21:
      v3 = 21;
      goto LABEL_125;
    case 22:
      v3 = 22;
      goto LABEL_125;
    case 23:
      v3 = 23;
      goto LABEL_125;
    case 24:
      v3 = 24;
      goto LABEL_125;
    case 25:
      v3 = 25;
      goto LABEL_125;
    case 26:
      v3 = 26;
      goto LABEL_125;
    case 27:
      v3 = 27;
      goto LABEL_125;
    case 28:
      v3 = 28;
      goto LABEL_125;
    case 29:
      v3 = 29;
      goto LABEL_125;
    case 30:
      v3 = 30;
      goto LABEL_125;
    case 31:
      v3 = 31;
      goto LABEL_125;
    case 32:
      v3 = 32;
      goto LABEL_125;
    case 33:
      v3 = 33;
      goto LABEL_125;
    case 34:
      v3 = 34;
      goto LABEL_125;
    case 35:
      v3 = 35;
      goto LABEL_125;
    case 36:
      v3 = 36;
      goto LABEL_125;
    case 37:
      v3 = 37;
      goto LABEL_125;
    case 38:
      v3 = 38;
      goto LABEL_125;
    case 39:
      v3 = 39;
      goto LABEL_125;
    case 40:
      v3 = 40;
      goto LABEL_125;
    case 41:
      v3 = 41;
      goto LABEL_125;
    case 42:
      v3 = 42;
      goto LABEL_125;
    case 43:
      v3 = 43;
      goto LABEL_125;
    case 44:
      v3 = 44;
      goto LABEL_125;
    case 45:
      v3 = 45;
      goto LABEL_125;
    case 46:
      v3 = 46;
      goto LABEL_125;
    case 47:
      v3 = 47;
      goto LABEL_125;
    case 48:
      v3 = 48;
      goto LABEL_125;
    case 49:
      v3 = 49;
      goto LABEL_125;
    case 50:
      v3 = 50;
      goto LABEL_125;
    case 51:
      v3 = 51;
      goto LABEL_125;
    case 52:
      v3 = 52;
      goto LABEL_125;
    case 53:
      v3 = 53;
      goto LABEL_125;
    case 54:
      v3 = 54;
      goto LABEL_125;
    case 55:
      v3 = 55;
      goto LABEL_125;
    case 56:
      v3 = 56;
      goto LABEL_125;
    case 57:
      v3 = 57;
      goto LABEL_125;
    case 58:
      v3 = 58;
      goto LABEL_125;
    case 59:
      v3 = 59;
      goto LABEL_125;
    case 60:
      v3 = 60;
      goto LABEL_125;
    case 61:
      v3 = 61;
      goto LABEL_125;
    case 62:
      v3 = 62;
      goto LABEL_125;
    case 63:
      v3 = 63;
      goto LABEL_125;
    case 64:
      v3 = 64;
      goto LABEL_125;
    case 65:
      v3 = 65;
      goto LABEL_125;
    case 66:
      v3 = 66;
      goto LABEL_125;
    case 67:
      v3 = 67;
      goto LABEL_125;
    case 68:
      v3 = 68;
      goto LABEL_125;
    case 69:
      v3 = 69;
LABEL_125:
      result = v3;
      break;
    case 70:
      return result;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v2 - 128) >= 0x23)
      {
        result = 4294967203;
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

void sub_2313CD3F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v6 = sub_2313DACFC();
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_0();
  v12 = v11 - v10;
  if ((v3 - 119) <= 1u)
  {
    sub_2313D3CC4(a1, &v57, 0x4E676E6974746573, 0xEB00000000656D61);
    if (v58)
    {
      if (swift_dynamicCast())
      {
        v14 = v55;
        v13 = v56;
        v15 = v56 == 0xE800000000000000;
        if (v55 == 0x656E616C70726961 && v56 == 0xE800000000000000)
        {
          goto LABEL_16;
        }

LABEL_15:
        if (OUTLINED_FUNCTION_14_2(0x656E616C70726961))
        {
LABEL_16:

          OUTLINED_FUNCTION_26_2();
          v27 = 0xD000000000000024;
          goto LABEL_20;
        }

        if (v14 == 0x7265776F50776F6CLL && v15 || (OUTLINED_FUNCTION_14_2(0x7265776F50776F6CLL) & 1) != 0)
        {
          goto LABEL_19;
        }

        v36 = v14 == 0x746F6F7465756C62 && v13 == 0xE900000000000068;
        if (v36 || (OUTLINED_FUNCTION_14_2(0x746F6F7465756C62) & 1) != 0)
        {

          OUTLINED_FUNCTION_26_2();
          v27 = 0xD000000000000020;
          goto LABEL_20;
        }

        v37 = v14 == 0x72616C756C6C6563 && v13 == 0xEC00000061746144;
        if (v37 || (OUTLINED_FUNCTION_14_2(0x72616C756C6C6563) & 1) != 0)
        {

          OUTLINED_FUNCTION_26_2();
          v27 = 0xD00000000000001FLL;
          goto LABEL_20;
        }

        v38 = v14 == 0x6E61726165707061 && v13 == 0xEA00000000006563;
        if (v38 || (OUTLINED_FUNCTION_14_2(0x6E61726165707061) & 1) != 0 || (v14 == 0x696853746867696ELL ? (v39 = v13 == 0xEA00000000007466) : (v39 = 0), v39 || (OUTLINED_FUNCTION_14_2(0x696853746867696ELL) & 1) != 0 || (v14 == 0x656E746867697262 ? (v40 = v13 == 0xEA00000000007373) : (v40 = 0), v40 || (OUTLINED_FUNCTION_14_2(0x656E746867697262) & 1) != 0)))
        {
LABEL_19:

          OUTLINED_FUNCTION_26_2();
          v27 = 0xD00000000000001ELL;
          goto LABEL_20;
        }

        v41 = v14 == 6581860 && v13 == 0xE300000000000000;
        if (!v41 && (OUTLINED_FUNCTION_14_2(6581860) & 1) == 0)
        {
          v42 = v14 == 0xD000000000000014 && 0x80000002313DE300 == v13;
          if (v42 || (OUTLINED_FUNCTION_14_2(0xD000000000000014) & 1) != 0)
          {
            goto LABEL_16;
          }

          v43 = v14 == 0x746F7073746F68 && v13 == 0xE700000000000000;
          if (v43 || (OUTLINED_FUNCTION_14_2(0x746F7073746F68) & 1) != 0)
          {

            OUTLINED_FUNCTION_26_2();
            v27 = 0xD000000000000027;
            goto LABEL_20;
          }

          v44 = v14 == 0x656D756C6F76 && v13 == 0xE600000000000000;
          if (!v44 && (OUTLINED_FUNCTION_14_2(0x656D756C6F76) & 1) == 0)
          {
            v45 = v14 == 1768319351 && v13 == 0xE400000000000000;
            if (!v45 && (OUTLINED_FUNCTION_14_2(1768319351) & 1) == 0)
            {
              v46 = v14 == 0x67696C6873616C66 && v13 == 0xEA00000000007468;
              if (v46 || (OUTLINED_FUNCTION_14_2(0x67696C6873616C66) & 1) != 0)
              {

                v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE20, &qword_2313DC408) + 48);
                OUTLINED_FUNCTION_26_2();
                *a3 = 0xD000000000000012;
                a3[1] = v48;
                v49 = sub_2313DAF4C();
                __swift_storeEnumTagSinglePayload(a3 + v47, 1, 1, v49);
                v28 = MEMORY[0x277D61230];
              }

              else
              {
                if (v14 == 0x63696F5669726973 && v13 == 0xE900000000000065)
                {
                }

                else
                {
                  v51 = OUTLINED_FUNCTION_14_2(0x63696F5669726973);

                  if ((v51 & 1) == 0)
                  {
                    v35 = sub_2313DAF5C();
                    v32 = a3;
                    v33 = 1;
                    v34 = 1;
                    goto LABEL_22;
                  }
                }

                (*(v8 + 104))(v12, *MEMORY[0x277D60E90], v6);
                v52 = sub_2313DACEC();
                v54 = v53;
                (*(v8 + 8))(v12, v6);
                *a3 = v52;
                a3[1] = v54;
                v28 = MEMORY[0x277D61238];
              }

LABEL_21:
              v29 = *v28;
              v30 = sub_2313DAF5C();
              OUTLINED_FUNCTION_27_0();
              (*(v31 + 104))(a3, v29, v30);
              v32 = OUTLINED_FUNCTION_71();
LABEL_22:
              __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
              OUTLINED_FUNCTION_21_0();
              return;
            }

            OUTLINED_FUNCTION_26_2();
            v27 = 0xD00000000000001BLL;
LABEL_20:
            *a3 = v27;
            a3[1] = v26;
            v28 = MEMORY[0x277D61220];
            goto LABEL_21;
          }
        }

        OUTLINED_FUNCTION_26_2();
        v27 = 0xD00000000000001CLL;
        goto LABEL_20;
      }
    }

    else
    {
      sub_2313CC3B4(&v57, &qword_27DD4BDD8, &qword_2313DC390);
    }

    v15 = 0;
    v14 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_15;
  }

  *a3 = sub_2313CE638(v3);
  a3[1] = v17;
  v18 = *MEMORY[0x277D61238];
  v19 = sub_2313DAF5C();
  OUTLINED_FUNCTION_27_0();
  (*(v20 + 104))(a3, v18, v19);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_21_0();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t sub_2313CDA6C(char a1)
{
  result = 0x704F5F736B6F6F42;
  switch(a1)
  {
    case 1:
      result = 0x6C505F736B6F6F42;
      break;
    case 2:
    case 29:
    case 40:
    case 48:
    case 50:
    case 57:
    case 69:
    case 73:
    case 76:
    case 97:
    case 118:
    case -99:
      OUTLINED_FUNCTION_70();
      result = v16 - 3;
      break;
    case 3:
    case 14:
    case 30:
    case 64:
    case 65:
    case 78:
    case 80:
    case 83:
    case 109:
      OUTLINED_FUNCTION_70();
      result = v15 + 2;
      break;
    case 4:
    case 20:
    case 45:
    case 54:
    case 62:
    case 88:
    case 101:
    case -123:
    case -118:
    case -115:
    case -109:
    case -101:
    case -98:
      OUTLINED_FUNCTION_70();
      result = v18 - 2;
      break;
    case 5:
    case 6:
    case 17:
    case 27:
    case 43:
    case 44:
    case 49:
    case 60:
    case 71:
    case 81:
    case 96:
    case 110:
    case -125:
    case -120:
    case -116:
    case -113:
    case -110:
    case -103:
      OUTLINED_FUNCTION_70();
      result = v8 + 1;
      break;
    case 7:
    case 23:
    case 42:
    case -105:
      OUTLINED_FUNCTION_70();
      result = v4 + 10;
      break;
    case 8:
    case 10:
    case 19:
    case 21:
    case 31:
    case 114:
    case 125:
    case -119:
      OUTLINED_FUNCTION_70();
      result = v13 + 3;
      break;
    case 9:
    case 11:
    case 13:
    case 16:
    case 61:
    case 108:
    case 115:
    case -127:
    case -126:
    case -124:
    case -122:
    case -112:
    case -108:
    case -102:
      OUTLINED_FUNCTION_70();
      result = v14 | 4;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 15:
    case 18:
    case 63:
    case 77:
    case 85:
    case 103:
    case 120:
    case -111:
    case -97:
      OUTLINED_FUNCTION_70();
      result = v17 + 6;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x72475F73656C6946;
      break;
    case 25:
    case 26:
      result = 0x65535F73656C6946;
      break;
    case 28:
      result = 0x69485F73656C6946;
      break;
    case 32:
    case 107:
    case 116:
    case 119:
    case -114:
      OUTLINED_FUNCTION_70();
      result = v9 + 5;
      break;
    case 33:
      result = 0xD000000000000013;
      break;
    case 34:
    case 35:
    case 37:
      result = 0x5F7373656E746946;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 38:
    case 51:
    case 94:
    case 100:
    case 126:
    case -128:
      OUTLINED_FUNCTION_70();
      result = v11 | 8;
      break;
    case 39:
      result = 0x4C5F68746C616548;
      break;
    case 41:
      result = 0x545F68746C616548;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000013;
      break;
    case 52:
      result = 0x6165525F6C69614DLL;
      break;
    case 53:
      result = 0x616C465F6C69614DLL;
      break;
    case 55:
      result = 0x7465475F6C69614DLL;
      break;
    case 56:
      result = 0xD000000000000013;
      break;
    case 58:
      result = 0x726E555F6C69614DLL;
      break;
    case 59:
      result = 0xD000000000000013;
      break;
    case 66:
      result = 0xD000000000000013;
      break;
    case 67:
      result = 0xD000000000000013;
      break;
    case 68:
    case 70:
    case 82:
    case 87:
    case 92:
    case 93:
    case 95:
    case 102:
    case 123:
    case 127:
      OUTLINED_FUNCTION_70();
      result = v7 - 1;
      break;
    case 72:
    case 112:
    case 117:
    case -117:
      OUTLINED_FUNCTION_70();
      result = v12 + 7;
      break;
    case 74:
      v3 = 0x545F7377654ELL;
      goto LABEL_24;
    case 75:
      result = 0x6565465F7377654ELL;
      break;
    case 79:
      result = 0x6165525F7377654ELL;
      break;
    case 84:
    case 104:
    case -104:
      OUTLINED_FUNCTION_70();
      result = v10 + 11;
      break;
    case 86:
      result = 0xD000000000000013;
      break;
    case 89:
    case 91:
      result = 0x435F736F746F6850;
      break;
    case 90:
      result = 0xD000000000000013;
      break;
    case 98:
      result = 0xD000000000000013;
      break;
    case 99:
    case -107:
      OUTLINED_FUNCTION_70();
      result = v6 + 9;
      break;
    case 105:
      result = 0xD000000000000013;
      break;
    case 106:
      result = 0x4E5F697261666153;
      break;
    case 111:
      result = 0xD000000000000013;
      break;
    case 113:
      result = 0xD000000000000013;
      break;
    case 121:
    case 124:
      result = 0x4D5F736B636F7453;
      break;
    case 122:
      result = 0x465F736B636F7453;
      break;
    case -121:
      result = 0xD000000000000013;
      break;
    case -106:
      OUTLINED_FUNCTION_70();
      result = v5 + 14;
      break;
    case -100:
      result = 0xD000000000000013;
      break;
    case -96:
      result = 0x74726F70535F5654;
      break;
    case -95:
      v3 = 0x6168535F5654;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case -94:
      result = 0x47776F68535F5654;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2313CE638(unsigned __int8 a1)
{
  v2 = sub_2313DACFC();
  OUTLINED_FUNCTION_3_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_0();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, **(&unk_278908E80 + (a1 ^ 0x80u)), v2);
  v9 = sub_2313DACEC();
  (*(v4 + 8))(v8, v2);
  return v9;
}

void sub_2313CE730(char *a1)
{
  v2 = sub_2313DA9BC();
  OUTLINED_FUNCTION_3_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v128 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v120 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v120 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v120 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v120 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v120 - v24;
  MEMORY[0x28223BE20](v23);
  v32 = &v120 - v31;
  switch(a1)
  {
    case 119:
    case 120:
    case -126:
    case -113:
    case -110:
    case -109:
    case -106:
    case -105:
    case -101:
    case -98:
    case -97:
      goto LABEL_18;
    case 121:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      *(swift_allocObject() + 16) = xmmword_2313DC3E0;
      sub_2313DA9AC();
      OUTLINED_FUNCTION_63();
      sub_2313DA9AC();
      OUTLINED_FUNCTION_38();
LABEL_22:
      sub_2313DA9AC();
      goto LABEL_81;
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -104:
    case -103:
    case -102:
    case -100:
    case -96:
    case -95:
      goto LABEL_14;
    case -114:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v69 = *(v4 + 72);
      v70 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_2313DC3D0;
      v120 = v71;
      v72 = (v71 + v70);
      sub_2313DA9AC();
      sub_2313DA9AC();
      sub_2313DA9AC();
      v73 = OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_83(v73);
      sub_2313DA9AC();
      OUTLINED_FUNCTION_83(0x53452D7365);
      OUTLINED_FUNCTION_82();
      OUTLINED_FUNCTION_83(0x4C432D7365);
      OUTLINED_FUNCTION_63();
      sub_2313DA9AC();
      OUTLINED_FUNCTION_83(0x52462D7266);
      sub_2313DA9AC();
      sub_2313DA9AC();
      v124 = v72;
      sub_2313DA9AC();
      v74 = sub_2313DAEEC();
      v75 = 0;
      v126 = *(v74 + 16);
      v127 = v74;
      v122 = v70;
      v123 = (v74 + v70);
      OUTLINED_FUNCTION_79();
      v76 = MEMORY[0x277D84F90];
LABEL_47:
      while (2)
      {
        if (v75 == v126)
        {
          goto LABEL_80;
        }

        if (v75 < *(v127 + 16))
        {
          (*(v4 + 16))(v10, &v123[v75 * v69], v2);
          ++v75;
          OUTLINED_FUNCTION_4_3();
          sub_2313D64E0(&qword_27DD4BEF8, v77, MEMORY[0x277CC97A0]);
          v78 = 14;
          v79 = v124;
          while (--v78)
          {
            v80 = &v79[v69];
            OUTLINED_FUNCTION_64();
            v81 = sub_2313DB20C();
            v79 = v80;
            if (v81)
            {
              (*v121)(v10, v2);
              goto LABEL_47;
            }
          }

          v82 = *v125;
          (*v125)(v128, v10, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_68();
            v76 = v129;
          }

          v85 = *(v76 + 16);
          v84 = *(v76 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_2313C4540((v84 > 1), v85 + 1, 1);
            v76 = v129;
          }

          *(v76 + 16) = v85 + 1;
          v82(&v122[v76 + v85 * v69], v128, v2);
          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_83;
    case -99:
      v125 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v35 = *(v4 + 72);
      OUTLINED_FUNCTION_39_0();
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      v36 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_69(v36);
      v37 = sub_2313DAEEC();
      v38 = 0;
      v39 = (v4 + 8);
      v40 = a1;
      v41 = &a1[OUTLINED_FUNCTION_65(v37)];
      v42 = MEMORY[0x277D84F90];
      v123 = v41;
      while (2)
      {
        v43 = v35;
        v44 = &v41[v35 * v38];
LABEL_25:
        if (v127 == v38)
        {
          goto LABEL_80;
        }

        if (v38 < *(v128 + 2))
        {
          (*v32)(v18, v44, v2);
          OUTLINED_FUNCTION_4_3();
          sub_2313D64E0(&qword_27DD4BEF8, v45, MEMORY[0x277CC97A0]);
          OUTLINED_FUNCTION_64();
          if ((sub_2313DB20C() & 1) == 0)
          {
            v46 = *v124;
            (*v124)(v125, v18, v2);
            v47 = swift_isUniquelyReferenced_nonNull_native();
            v129 = v42;
            if ((v47 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_1();
              v46 = v42;
              v42 = v129;
            }

            v49 = *(v42 + 16);
            v48 = *(v42 + 24);
            v50 = v49 + 1;
            if (v49 >= v48 >> 1)
            {
              OUTLINED_FUNCTION_16_1(v48);
              OUTLINED_FUNCTION_60();
            }

            ++v38;
            *(v42 + 16) = v50;
            v51 = &v40[v42 + v49 * v43];
            v35 = v43;
            v46(v51, v125, v2);
            v41 = v123;
            continue;
          }

          (*v39)(v18, v2);
          v44 += v43;
          ++v38;
          goto LABEL_25;
        }

        break;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    case -94:
      v125 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v52 = *(v4 + 72);
      OUTLINED_FUNCTION_39_0();
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      v53 = OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_69(v53);
      v54 = sub_2313DAEEC();
      v55 = 0;
      v56 = (v4 + 8);
      v57 = a1;
      v58 = &a1[OUTLINED_FUNCTION_65(v54)];
      v59 = MEMORY[0x277D84F90];
      v123 = v58;
      while (2)
      {
        v60 = v52;
        v61 = &v58[v52 * v55];
LABEL_36:
        if (v127 == v55)
        {
          goto LABEL_80;
        }

        if (v55 < *(v128 + 2))
        {
          (*v32)(v14, v61, v2);
          OUTLINED_FUNCTION_4_3();
          sub_2313D64E0(&qword_27DD4BEF8, v62, MEMORY[0x277CC97A0]);
          OUTLINED_FUNCTION_64();
          if ((sub_2313DB20C() & 1) == 0)
          {
            v63 = *v124;
            (*v124)(v125, v14, v2);
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v129 = v59;
            if ((v64 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_1();
              v63 = v59;
              v59 = v129;
            }

            v66 = *(v59 + 16);
            v65 = *(v59 + 24);
            v67 = v66 + 1;
            if (v66 >= v65 >> 1)
            {
              OUTLINED_FUNCTION_16_1(v65);
              OUTLINED_FUNCTION_60();
            }

            ++v55;
            *(v59 + 16) = v67;
            v68 = &v57[v59 + v66 * v60];
            v52 = v60;
            v63(v68, v125, v2);
            v58 = v123;
            continue;
          }

          (*v56)(v14, v2);
          v61 += v60;
          ++v55;
          goto LABEL_36;
        }

        break;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    default:
      if (!(!v27 & v26))
      {
        switch(a1)
        {
          case '0':
          case '1':
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
            *(swift_allocObject() + 16) = xmmword_2313DB7C0;
            goto LABEL_22;
          case '2':
          case '3':
          case '5':
          case '6':
          case '7':
          case '8':
            goto LABEL_14;
          case '4':
          case '9':
          case ':':
            goto LABEL_18;
          default:
            goto LABEL_87;
        }
      }

      if (a1 - 8 < 2)
      {
        goto LABEL_18;
      }

      if (a1 == 66)
      {
        goto LABEL_14;
      }

      if (a1 != 67)
      {
        if (a1 != 86 && a1 != 102)
        {
          if (a1 == 105)
          {
            v126 = v28;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
            v86 = *(v4 + 72);
            OUTLINED_FUNCTION_39_0();
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_2313DC140;
            v120 = v87;
            v88 = &a1[v87];
            sub_2313DA9AC();
            sub_2313DA9AC();
            OUTLINED_FUNCTION_82();
            v124 = v88;
            sub_2313DA9AC();
            v89 = sub_2313DAEEC();
            v90 = 0;
            v91 = *(v89 + 16);
            v127 = v89;
            v128 = v91;
            v122 = a1;
            v123 = &a1[v89];
            OUTLINED_FUNCTION_79();
            v92 = MEMORY[0x277D84F90];
LABEL_58:
            while (v90 != v128)
            {
              if (v90 >= *(v127 + 16))
              {
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                JUMPOUT(0);
              }

              (*(v4 + 16))(v22, &v123[v90++ * v86], v2);
              OUTLINED_FUNCTION_4_3();
              sub_2313D64E0(&qword_27DD4BEF8, v93, MEMORY[0x277CC97A0]);
              v94 = 5;
              v95 = v124;
              while (--v94)
              {
                v96 = &v95[v86];
                OUTLINED_FUNCTION_64();
                v97 = sub_2313DB20C();
                v95 = v96;
                if (v97)
                {
                  (*v121)(v22, v2);
                  goto LABEL_58;
                }
              }

              v98 = *v125;
              (*v125)(v126, v22, v2);
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v129 = v92;
              if ((v99 & 1) == 0)
              {
                OUTLINED_FUNCTION_68();
                v92 = v129;
              }

              v101 = *(v92 + 16);
              v100 = *(v92 + 24);
              if (v101 >= v100 >> 1)
              {
                sub_2313C4540((v100 > 1), v101 + 1, 1);
                v92 = v129;
              }

              *(v92 + 16) = v101 + 1;
              v98(&v122[v92 + v101 * v86], v126, v2);
            }

            goto LABEL_80;
          }

          if (a1 != 104)
          {
LABEL_14:
            OUTLINED_FUNCTION_21_0();

            sub_2313DAEFC();
            return;
          }
        }

LABEL_18:
        OUTLINED_FUNCTION_21_0();

        sub_2313DAEEC();
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v102 = *(v4 + 72);
      OUTLINED_FUNCTION_39_0();
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      v103 = OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_69(v103);
      v104 = sub_2313DAEEC();
      v105 = 0;
      v106 = *(v104 + 16);
      v127 = v104;
      v128 = v106;
      v107 = (v4 + 16);
      v124 = (v4 + 32);
      v125 = a1;
      v108 = (v4 + 8);
      v109 = &a1[v104];
      v110 = MEMORY[0x277D84F90];
      v123 = v109;
LABEL_70:
      v111 = v102;
      v112 = &v109[v102 * v105];
      while (v128 != v105)
      {
        if (v105 >= *(v127 + 16))
        {
          goto LABEL_86;
        }

        (*v107)(v32, v112, v2);
        OUTLINED_FUNCTION_4_3();
        sub_2313D64E0(&qword_27DD4BEF8, v113, MEMORY[0x277CC97A0]);
        OUTLINED_FUNCTION_64();
        if ((sub_2313DB20C() & 1) == 0)
        {
          v114 = *v124;
          (*v124)(v25, v32, v2);
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v129 = v110;
          if ((v115 & 1) == 0)
          {
            OUTLINED_FUNCTION_22_1();
            v114 = v110;
            v110 = v129;
          }

          v117 = *(v110 + 16);
          v116 = *(v110 + 24);
          v118 = v117 + 1;
          if (v117 >= v116 >> 1)
          {
            OUTLINED_FUNCTION_16_1(v116);
            OUTLINED_FUNCTION_60();
          }

          ++v105;
          *(v110 + 16) = v118;
          v119 = &v125[v110 + v117 * v111];
          v102 = v111;
          v114(v119, v25, v2);
          v109 = v123;
          goto LABEL_70;
        }

        (*v108)(v32, v2);
        v112 += v111;
        ++v105;
      }

LABEL_80:
      swift_setDeallocating();
      sub_2313CC2BC();

LABEL_81:
      OUTLINED_FUNCTION_21_0();
      return;
  }
}

__n128 *sub_2313CF4B4(unsigned __int8 a1)
{
  if (a1 - 131 <= 0x1F && (((1 << (a1 + 125)) & 0x61F1) != 0 || ((1 << (a1 + 125)) & 0x18000) != 0 || ((1 << (a1 + 125)) & 0x80001000) != 0) || (v3 = a1 - 65, a1 - 65 <= 0x3F) && (((1 << v3) & 0x8000010000001091) != 0 || ((1 << v3) & 0x40000000200000) != 0) || a1 <= 0x3Fu && ((1 << a1) & 0x8003000000400005) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    OUTLINED_FUNCTION_66();
    v4 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1();
    v12 = *(v11 + 72);
    OUTLINED_FUNCTION_34_1();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_78(v7, xmmword_2313DB7D0);
    v13 = OUTLINED_FUNCTION_33_1();
    v2(v13);
    v10 = *MEMORY[0x277D60998];
    v9 = v1 + v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    OUTLINED_FUNCTION_66();
    v4 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1();
    v6 = *(v5 + 72);
    OUTLINED_FUNCTION_34_1();
    v7 = OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_78(v7, xmmword_2313DC3E0);
    v8 = OUTLINED_FUNCTION_33_1();
    v2(v8);
    (v2)(v1 + v6, *MEMORY[0x277D60998], v4);
    v9 = v1 + 2 * v6;
    v10 = *MEMORY[0x277D60988];
  }

  (v2)(v9, v10, v4);
  return v7;
}

void sub_2313CF704(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2313DAB4C();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_0();
  switch(a1)
  {
    case 102:
    case 105:
    case -119:
      sub_2313D643C(0, &qword_27DD4BED8, 0x277CD4058);
      sub_2313DAB3C();
      v18 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v18, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 103:
    case 104:
LABEL_27:
      sub_2313D643C(0, &qword_27DD4BEC8, 0x277CD3A18);
      sub_2313DAB3C();
      v17 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v17, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -124:
    case -123:
    case -122:
    case -118:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -100:
      goto LABEL_24;
    case 119:
    case 120:
    case -126:
    case -125:
    case -120:
    case -114:
    case -110:
    case -109:
    case -101:
    case -99:
    case -98:
      goto LABEL_18;
    case -121:
    case -105:
      sub_2313DB07C();
      sub_2313DAB3C();
      v16 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v16, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -117:
      sub_2313D643C(0, &qword_27DD4BED0, 0x277CD3EC0);
      sub_2313DAB3C();
      v15 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v15, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -113:
      goto LABEL_11;
    case -106:
    case -104:
    case -103:
    case -102:
      v9 = MEMORY[0x277D60888];
      *(a2 + 24) = v4;
      *(a2 + 32) = v9;
      v28 = v8;
      goto LABEL_19;
    default:
      if (!(!v7 & v6))
      {
        switch(a1)
        {
          case '9':
          case ':':
          case 'A':
          case 'C':
            goto LABEL_18;
          case ';':
          case '<':
          case '=':
          case '>':
          case '?':
          case '@':
            goto LABEL_24;
          case 'B':
            goto LABEL_27;
          default:
            JUMPOUT(0);
        }
      }

      if (!a1)
      {
        goto LABEL_18;
      }

      v28 = v8;
      if (a1 == 8)
      {
        v19 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v19;
        __swift_allocate_boxed_opaque_existential_2Tm(a2);
        OUTLINED_FUNCTION_26_2();
        v22 = 0xD000000000000028;
LABEL_29:
        *v20 = v22;
        v20[1] = v21;
        v13 = *MEMORY[0x277D60868];
        v14 = *(v28 + 104);
        goto LABEL_21;
      }

      if (a1 == 87)
      {
        v23 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v23;
        boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(a2);
        v29 = sub_2313CE638(0x57u);
        v30 = v25;

        MEMORY[0x23192C330](0xD000000000000012, 0x80000002313DE4C0);

        *boxed_opaque_existential_2Tm = v29;
        boxed_opaque_existential_2Tm[1] = v30;
        v26 = MEMORY[0x277D60878];
        goto LABEL_20;
      }

      if (a1 != 13)
      {
        if (a1 != 49 && a1 != 52 && a1 != 86)
        {
          if (a1 != 9)
          {
LABEL_24:
            *(a2 + 32) = 0;
            *a2 = 0u;
            *(a2 + 16) = 0u;
            return;
          }

          v10 = MEMORY[0x277D60888];
          *(a2 + 24) = v4;
          *(a2 + 32) = v10;
          __swift_allocate_boxed_opaque_existential_2Tm(a2);
          OUTLINED_FUNCTION_26_2();
          v22 = 0xD000000000000029;
          goto LABEL_29;
        }

LABEL_18:
        v28 = v8;
        v11 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v11;
LABEL_19:
        boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(a2);
        *boxed_opaque_existential_2Tm = sub_2313CDA6C(a1);
        boxed_opaque_existential_2Tm[1] = v12;
        v26 = MEMORY[0x277D60880];
LABEL_20:
        v13 = *v26;
        v14 = *(v28 + 104);
        v20 = boxed_opaque_existential_2Tm;
LABEL_21:

        v14(v20, v13, v4);
        return;
      }

LABEL_11:
      sub_2313D643C(0, &qword_27DD4BEC0, 0x277CD4078);
      sub_2313DAB3C();
      v27 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v27, MEMORY[0x277D608B0]);
LABEL_30:
      sub_2313DAB5C();
      return;
  }
}

uint64_t sub_2313CFCBC(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
    case 17:
    case 25:
    case 30:
    case 46:
    case 57:
    case 124:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -114:
    case -113:
    case -112:
    case -111:
    case -108:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2313DB7D0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v2 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v2);
      v3 = qword_27DD4BAA0;

      if (v3 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      goto LABEL_193;
    case 2:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v66);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAB8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4BF60;
      goto LABEL_213;
    case 3:
    case 4:
    case 5:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v20);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAB0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4BF48;
      goto LABEL_213;
    case 6:
    case 7:
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v38);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAA8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4BF40;
      goto LABEL_192;
    case 9:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v68);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BAC0 != -1)
      {
        OUTLINED_FUNCTION_10_2(&qword_27DD4BAC0);
      }

      goto LABEL_158;
    case 10:
    case 11:
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v35);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAC0 != -1)
      {
        OUTLINED_FUNCTION_10_2(&qword_27DD4BAC0);
      }

      v9 = qword_27DD4BF78;
      goto LABEL_192;
    case 12:
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v75);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAC8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4BF80;
      goto LABEL_192;
    case 13:
    case 14:
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v42);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1860 != -1)
      {
        swift_once();
      }

      v9 = qword_2814B1CA0;
      goto LABEL_192;
    case 15:
    case 16:
    case 19:
    case 20:
    case 21:
    case 23:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v11);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAF8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4BFD0;
      goto LABEL_213;
    case 18:
    case 22:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v46);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB00 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4BFE8;
      goto LABEL_213;
    case 24:
    case 26:
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v34);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAD0 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4BF88;
      goto LABEL_192;
    case 27:
    case 29:
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v33);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAD8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4BF90;
      goto LABEL_213;
    case 28:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v77);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAE0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4BFA8;
      goto LABEL_213;
    case 31:
    case 33:
    case 35:
    case 36:
    case 37:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v13);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1868 != -1)
      {
        OUTLINED_FUNCTION_46(&qword_2814B1868);
      }

      v9 = qword_2814B1CA8;
      goto LABEL_192;
    case 32:
    case 34:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v36);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_2814B1868 != -1)
      {
        OUTLINED_FUNCTION_46(&qword_2814B1868);
      }

      goto LABEL_158;
    case 38:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v10);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAE8 != -1)
      {
        OUTLINED_FUNCTION_47(&qword_27DD4BAE8);
      }

      v9 = qword_27DD4BFC0;
      goto LABEL_192;
    case 39:
    case 41:
    case 48:
    case 49:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v14);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BAE8 != -1)
      {
        OUTLINED_FUNCTION_47(&qword_27DD4BAE8);
      }

      goto LABEL_158;
    case 47:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v74);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAF0 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4BFC8;
      goto LABEL_192;
    case 50:
    case 51:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v44);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB08 != -1)
      {
        OUTLINED_FUNCTION_42(&qword_27DD4BB08);
      }

      v9 = qword_27DD4C000;
      goto LABEL_192;
    case 52:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v78);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v79 = qword_27DD4BAA0;

      if (v79 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v80 = qword_27DD4BB08;

      if (v80 != -1)
      {
        OUTLINED_FUNCTION_42(&qword_27DD4BB08);
      }

      v25 = qword_27DD4C000;
      goto LABEL_162;
    case 53:
    case 54:
    case 55:
    case 56:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v15);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB10 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4C008;
      goto LABEL_213;
    case 59:
    case 61:
    case 63:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v26);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB20 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4C028;
      goto LABEL_213;
    case 60:
    case 62:
    case 65:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v21);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v23 = qword_27DD4BAA0;

      if (v23 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v24 = qword_27DD4BB18;

      if (v24 != -1)
      {
        OUTLINED_FUNCTION_45(&qword_27DD4BB18);
      }

      v25 = qword_27DD4C020;
      goto LABEL_162;
    case 64:
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v67);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB18 != -1)
      {
        OUTLINED_FUNCTION_45(&qword_27DD4BB18);
      }

      v9 = qword_27DD4C020;
      goto LABEL_192;
    case 66:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v76);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB28 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4C040;
      goto LABEL_213;
    case 67:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v60);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BB30 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v62 = __swift_project_value_buffer(v61, &unk_27DD4C058);
      *(v1 + 56) = v61;
      *(v1 + 64) = &off_284605830;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm((v1 + 32));
      sub_2313D62F8(v62, boxed_opaque_existential_2Tm);
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v64 = qword_27DD4BF30;
      v22 = sub_2313DB02C();
      *(v1 + 96) = v22;
      *(v1 + 104) = &off_2846057D8;
      *(v1 + 72) = v64;
      v65 = qword_27DD4BAA0;

      if (v65 != -1)
      {
        goto LABEL_149;
      }

      goto LABEL_161;
    case 68:
    case 71:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v48);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v49 = qword_27DD4BAA0;

      if (v49 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v50 = qword_27DD4BB38;

      if (v50 != -1)
      {
        OUTLINED_FUNCTION_43(&qword_27DD4BB38);
      }

      v25 = qword_27DD4C070;
      goto LABEL_162;
    case 69:
    case 70:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v43);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB38 != -1)
      {
        OUTLINED_FUNCTION_43(&qword_27DD4BB38);
      }

      v9 = qword_27DD4C070;
      goto LABEL_192;
    case 72:
    case 73:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v52);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB40 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4C078;
      goto LABEL_213;
    case 74:
    case 79:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v39);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v40 = qword_27DD4BAA0;

      if (v40 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v41 = qword_27DD4BB48;

      if (v41 != -1)
      {
        OUTLINED_FUNCTION_44(&qword_27DD4BB48);
      }

      v25 = qword_27DD4C090;
      goto LABEL_162;
    case 75:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v56);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB48 != -1)
      {
        OUTLINED_FUNCTION_44(&qword_27DD4BB48);
      }

      v9 = qword_27DD4C090;
      goto LABEL_192;
    case 76:
    case 77:
    case 78:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v19);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB50 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4C098;
      goto LABEL_213;
    case 80:
    case 82:
    case 85:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v18);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB60 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4C0B8;
      goto LABEL_213;
    case 81:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v55);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB68 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4C0D0;
      goto LABEL_213;
    case 83:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v53);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB70 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4C0E8;
      goto LABEL_213;
    case 84:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v81);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB58 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4C0B0;
      goto LABEL_192;
    case 87:
    case 88:
    case 89:
    case 91:
    case 92:
    case 93:
    case 95:
    case 96:
    case 97:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v4);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB80 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4C108;
      goto LABEL_213;
    case 90:
    case 94:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v30);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v31 = qword_27DD4BAA0;

      if (v31 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v32 = qword_27DD4BB78;

      if (v32 != -1)
      {
        swift_once();
      }

      v25 = qword_27DD4C100;
      goto LABEL_162;
    case 98:
    case 101:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v45);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB88 != -1)
      {
        OUTLINED_FUNCTION_41(&qword_27DD4BB88);
      }

      v9 = qword_27DD4C120;
      goto LABEL_192;
    case 99:
    case 100:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v51);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BB88 != -1)
      {
        OUTLINED_FUNCTION_41(&qword_27DD4BB88);
      }

LABEL_158:
      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v69 = qword_27DD4BA98;

      if (v69 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF30);
      v70 = qword_27DD4BAA0;

      if (v70 != -1)
      {
LABEL_149:
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

LABEL_161:
      v25 = qword_27DD4BF38;
      goto LABEL_162;
    case 102:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2313DC3F0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v82 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v82);
      v83 = qword_27DD4BAA0;

      if (v83 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v84 = qword_27DD4BAC0;

      if (v84 != -1)
      {
        OUTLINED_FUNCTION_10_2(&qword_27DD4BAC0);
      }

      v85 = qword_27DD4BF78;
      *(v1 + 136) = v82;
      *(v1 + 144) = &off_2846057D8;
      *(v1 + 112) = v85;
      v86 = qword_27DD4BB98;

      if (v86 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v88 = __swift_project_value_buffer(v87, qword_27DD4C130);
      *(v1 + 176) = v87;
      *(v1 + 184) = &off_284605830;
      v89 = __swift_allocate_boxed_opaque_existential_2Tm((v1 + 152));
      sub_2313D62F8(v88, v89);
      if (qword_27DD4BBA0 != -1)
      {
        swift_once();
      }

      v90 = __swift_project_value_buffer(v87, qword_27DD4C148);
      *(v1 + 216) = v87;
      *(v1 + 224) = &off_284605830;
      v91 = (v1 + 192);
      goto LABEL_214;
    case 103:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v57);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v58 = qword_27DD4BAA0;

      if (v58 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v59 = qword_27DD4BB90;

      if (v59 != -1)
      {
        OUTLINED_FUNCTION_40(&qword_27DD4BB90);
      }

      v25 = qword_27DD4C128;
      goto LABEL_162;
    case 104:
    case 105:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v47);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB90 != -1)
      {
        OUTLINED_FUNCTION_40(&qword_27DD4BB90);
      }

      v9 = qword_27DD4C128;
      goto LABEL_192;
    case 106:
    case 108:
    case 110:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v16);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBA8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4C160;
      goto LABEL_192;
    case 107:
    case 109:
    case 113:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v17);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBB0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4C168;
      goto LABEL_213;
    case 111:
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v95);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBB8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4C180;
      goto LABEL_213;
    case 112:
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v54);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBC0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4C198;
      goto LABEL_213;
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v12);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1858 != -1)
      {
        swift_once();
      }

      v9 = qword_2814B1C98;
      goto LABEL_192;
    case 121:
    case 123:
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v37);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBC8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4C1B0;
      goto LABEL_192;
    case 122:
    case 125:
    case 126:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v28);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBD8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4C1D0;
      goto LABEL_213;
    case 127:
    case -128:
    case -127:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v29);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBD0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4C1B8;
LABEL_213:
      v90 = __swift_project_value_buffer(v5, v7);
      *(v1 + 56) = v6;
      *(v1 + 64) = &off_284605830;
      v91 = (v1 + 32);
      goto LABEL_214;
    case -107:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2313DB7D0;
      if (qword_27DD4BBE0 != -1)
      {
        OUTLINED_FUNCTION_11_2(&qword_27DD4BBE0);
      }

      v92 = qword_27DD4C1E8;
      *(v1 + 56) = sub_2313DB02C();
      *(v1 + 64) = &off_2846057D8;
      *(v1 + 32) = v92;
      v93 = qword_27DD4BBE8;

      if (v93 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v90 = __swift_project_value_buffer(v94, &unk_27DD4C1F0);
      *(v1 + 96) = v94;
      *(v1 + 104) = &off_284605830;
      v91 = (v1 + 72);
LABEL_214:
      v96 = __swift_allocate_boxed_opaque_existential_2Tm(v91);
      sub_2313D62F8(v90, v96);
      return v1;
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v8);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBE0 != -1)
      {
        OUTLINED_FUNCTION_11_2(&qword_27DD4BBE0);
      }

      v9 = qword_27DD4C1E8;
      goto LABEL_192;
    case -99:
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56(v71);
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3(&qword_27DD4BA98);
      }

      v22 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v22);
      v72 = qword_27DD4BAA0;

      if (v72 != -1)
      {
        OUTLINED_FUNCTION_2_2(&qword_27DD4BAA0);
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v73 = qword_27DD4BBE0;

      if (v73 != -1)
      {
        OUTLINED_FUNCTION_11_2(&qword_27DD4BBE0);
      }

      v25 = qword_27DD4C1E8;
LABEL_162:
      *(v1 + 136) = v22;
      *(v1 + 144) = &off_2846057D8;
      *(v1 + 112) = v25;
      goto LABEL_193;
    case -96:
    case -95:
    case -94:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50(v27);
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1850 != -1)
      {
        swift_once();
      }

      v9 = qword_2814B1C90;
LABEL_192:
      *(v1 + 56) = sub_2313DB02C();
      *(v1 + 64) = &off_2846057D8;
      *(v1 + 32) = v9;
LABEL_193:

      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_2313D18D4(unsigned __int8 a1)
{
  if (a1 - 130 > 0x20)
  {
LABEL_4:
    if (a1 - 58 <= 0x3E && ((1 << (a1 - 58)) & 0x6000000010000001) != 0)
    {
      goto LABEL_6;
    }

    if (a1 - 8 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
      OUTLINED_FUNCTION_66();
      v8 = sub_2313DAC4C();
      OUTLINED_FUNCTION_3_1();
      v16 = *(v15 + 72);
      OUTLINED_FUNCTION_34_1();
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_78(v7, xmmword_2313DB7D0);
      v17 = OUTLINED_FUNCTION_33_1();
      v2(v17);
      v13 = *MEMORY[0x277D60B98];
      v12 = v1 + v16;
      goto LABEL_9;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
    OUTLINED_FUNCTION_66();
    v8 = sub_2313DAC4C();
    OUTLINED_FUNCTION_3_1();
    v10 = *(v9 + 72);
    OUTLINED_FUNCTION_34_1();
    v7 = OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_78(v7, xmmword_2313DC3E0);
    v11 = OUTLINED_FUNCTION_33_1();
    v2(v11);
    (v2)(v1 + v10, *MEMORY[0x277D60B78], v8);
    v12 = v1 + 2 * v10;
    v13 = *MEMORY[0x277D60B98];
LABEL_9:
    (v2)(v12, v13, v8);
    return v7;
  }

  if (((1 << (a1 + 126)) & 0x30030001) == 0)
  {
    if (((1 << (a1 + 126)) & 0x100003000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
  OUTLINED_FUNCTION_66();
  v3 = sub_2313DAC4C();
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2313DB7C0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277D60B80], v3);
  return v7;
}

void sub_2313D1B9C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2313DACFC();
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE60, &qword_2313DC418);
  OUTLINED_FUNCTION_3_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v324 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v324 - v17;
  switch(v2)
  {
    case 107:
    case 109:
    case 113:
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v88 = OUTLINED_FUNCTION_55(v87);
      OUTLINED_FUNCTION_15_1(v88, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v89 = OUTLINED_FUNCTION_3_3();
      v90(v89);
      OUTLINED_FUNCTION_54();
      v91 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v91);
      v92 = OUTLINED_FUNCTION_76();
      v93 = OUTLINED_FUNCTION_53(v92);
      v94 = OUTLINED_FUNCTION_7_1();
      v95(v94);
      sub_2313DACEC();
      v96 = OUTLINED_FUNCTION_35_1();
      (*(v5 + 8))(v96, v3);
      v97 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2(v97);
      OUTLINED_FUNCTION_80();
      v99 = v98;
      sub_2313C055C(v100, v101, v102, v103, v104, v105);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v108 = sub_2313D64E0(v106, v107, &unk_2313DBEA0);
      v88[2].n128_u64[0] = 0x656C746954626174;
      v88[2].n128_u64[1] = 0xE800000000000000;
      v88[3].n128_u64[0] = v99;
      v88[5].n128_u64[0] = v108;
      v88[5].n128_u64[1] = v93;
      OUTLINED_FUNCTION_23_2();
      v45 = v9;
      goto LABEL_39;
    case 108:
    case 110:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 123:
    case 124:
    case -126:
    case -121:
    case -119:
    case -118:
    case -117:
    case -114:
    case -113:
    case -111:
    case -110:
    case -109:
    case -108:
    case -107:
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
    case -97:
    case -96:
    case -95:
      goto LABEL_41;
    case 111:
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v49 = OUTLINED_FUNCTION_55(v187);
      OUTLINED_FUNCTION_15_1(v49, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v188 = OUTLINED_FUNCTION_3_3();
      v189(v188);
      OUTLINED_FUNCTION_54();
      v190 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v190);
      v191 = OUTLINED_FUNCTION_76();
      v53 = OUTLINED_FUNCTION_53(v191);
      v192 = OUTLINED_FUNCTION_7_1();
      v193(v192);
      sub_2313DACEC();
      OUTLINED_FUNCTION_35_1();
      v56 = v10;
      OUTLINED_FUNCTION_61();
      v194();
      v195 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2(v195);
      OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_57(0x6B72616D6B6F6F62, 0xED0000656C746954, v196, v197, v198, v199);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v65 = sub_2313D64E0(v200, v201, &unk_2313DBEA0);
      v49[2].n128_u16[7] = -4864;
      v49[3].n128_u64[0] = v9;
      strcpy(&v49[2], "bookmarkTitle");
LABEL_25:
      v49[5].n128_u64[0] = v65;
      v49[5].n128_u64[1] = v53;
      OUTLINED_FUNCTION_23_2();
      v45 = v9;
      v46 = v56;
      goto LABEL_40;
    case 112:
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v215 = OUTLINED_FUNCTION_55(v214);
      OUTLINED_FUNCTION_15_1(v215, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v216 = OUTLINED_FUNCTION_3_3();
      v217(v216);
      OUTLINED_FUNCTION_54();
      v218 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v218);
      OUTLINED_FUNCTION_19_2();
      v334 = v18;
      v220 = v219 + 3;
      v221 = OUTLINED_FUNCTION_30_0();
      v332 = OUTLINED_FUNCTION_53(v221);
      v222 = OUTLINED_FUNCTION_7_1();
      v223(v222);
      v224 = sub_2313DACEC();
      v225 = OUTLINED_FUNCTION_32_1();
      v226(v225);
      v227 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2(v227);
      v228 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_57(v228, v229, v230, v231, v232, v233);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v236 = sub_2313D64E0(v234, v235, &unk_2313DBEA0);
      v215[2].n128_u64[1] = 0x80000002313DDE60;
      v215[3].n128_u64[0] = v224;
      v215[2].n128_u64[0] = v220;
      v237 = v332;
      v215[5].n128_u64[0] = v236;
      v215[5].n128_u64[1] = v237;
      OUTLINED_FUNCTION_23_2();
      v45 = v334;
      v46 = v10;
      goto LABEL_40;
    case 119:
    case 120:
      sub_2313DAE3C();
      OUTLINED_FUNCTION_17_1();
      v118 = swift_allocObject();
      *(v118 + 16) = 0x4E676E6974746573;
      *(v118 + 24) = 0xEB00000000656D61;
      v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
      v343 = v331;
      v330 = sub_2313D6048();
      v344 = v330;
      __swift_allocate_boxed_opaque_existential_2Tm(&v342);
      v328 = sub_2313DAB9C();
      v119 = sub_2313DAC5C();
      v333 = v10;
      v327 = v119;
      sub_2313DAB8C();
      v329 = *(v12 + 16);
      v329(v16, v18, v10);
      sub_2313D60AC(&v342, v336);
      v120 = sub_2313DAD5C();
      v121 = OUTLINED_FUNCTION_52(v120);
      OUTLINED_FUNCTION_53(0x4E676E6974746573);
      OUTLINED_FUNCTION_27_1();
      v122 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_17_1();
      v123 = swift_allocObject();
      *(v123 + 16) = 0x4E676E6974746573;
      *(v123 + 24) = 0xEB00000000656D61;
      v339 = v122;
      OUTLINED_FUNCTION_6_2();
      v332 = sub_2313D64E0(v124, v125, &unk_2313DBB40);
      v340 = v332;
      v336[2] = v123;
      v126 = *(v12 + 8);
      v127 = v333;
      v126(v18, v333);
      v336[0] = 0x4E676E6974746573;
      v336[1] = 0xEB00000000656D61;
      v341 = v121;
      __swift_destroy_boxed_opaque_existential_1Tm(&v342);
      OUTLINED_FUNCTION_17_1();
      v128 = swift_allocObject();
      strcpy((v128 + 16), "settingAction");
      *(v128 + 30) = -4864;
      v343 = v331;
      v344 = v330;
      __swift_allocate_boxed_opaque_existential_2Tm(&v342);
      sub_2313DAB8C();
      sub_2313DAE2C();
      v329(v16, v18, v127);
      sub_2313D60AC(&v342, v335);
      swift_allocObject();
      v129 = OUTLINED_FUNCTION_53(0x41676E6974746573);
      OUTLINED_FUNCTION_17_1();
      v130 = swift_allocObject();
      strcpy((v130 + 16), "settingAction");
      *(v130 + 30) = -4864;
      v126(v18, v127);
      __swift_destroy_boxed_opaque_existential_1Tm(&v342);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_2313DB7D0;
      sub_2313D6290(v336, v131 + 32);
      strcpy((v131 + 96), "settingAction");
      *(v131 + 110) = -4864;
      *(v131 + 112) = v130;
      *(v131 + 120) = v342;
      v132 = v332;
      *(v131 + 136) = v122;
      *(v131 + 144) = v132;
      *(v131 + 152) = v129;
      sub_2313D62C8(v336);
      goto LABEL_41;
    case 122:
    case 125:
    case 126:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v67 = OUTLINED_FUNCTION_55(v66);
      OUTLINED_FUNCTION_15_1(v67, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v68 = OUTLINED_FUNCTION_3_3();
      v69(v68);
      OUTLINED_FUNCTION_54();
      v70 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v70);
      v71 = OUTLINED_FUNCTION_73();
      v334 = v18;
      v72 = OUTLINED_FUNCTION_53(v71);
      v73 = OUTLINED_FUNCTION_7_1();
      v74(v73);
      v75 = sub_2313DACEC();
      v76 = OUTLINED_FUNCTION_32_1();
      v77(v76);
      v78 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2(v78);
      v79 = OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_57(v79, 0xEB000000006C6F62, v80, v81, v82, v83);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v86 = sub_2313D64E0(v84, v85, &unk_2313DBEA0);
      v67[2].n128_u64[0] = 0x69546C6F626D7973;
      v67[2].n128_u64[1] = 0xEB00000000656C74;
      v67[3].n128_u64[0] = v75;
      v67[5].n128_u64[0] = v86;
      v67[5].n128_u64[1] = v72;
      OUTLINED_FUNCTION_23_2();
      v45 = v334;
      v46 = v10;
      goto LABEL_40;
    case 127:
    case -127:
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v134 = OUTLINED_FUNCTION_55(v133);
      OUTLINED_FUNCTION_15_1(v134, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v334 = v18;
      v135 = OUTLINED_FUNCTION_8_2();
      v136(v135);
      OUTLINED_FUNCTION_54();
      v137 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v137);
      v333 = v10;
      v138 = OUTLINED_FUNCTION_53(0xD000000000000012);
      v139 = OUTLINED_FUNCTION_7_1();
      v140(v139);
      v141 = sub_2313DACEC();
      v143 = v142;
      v144 = OUTLINED_FUNCTION_32_1();
      v145(v144);
      v146 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2(v146);
      OUTLINED_FUNCTION_18_2();
      v147 = v141;
      v149 = v148;
      sub_2313C055C(0xD000000000000012, 0x80000002313DDE80, v147, v143, v150, v151);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v154 = sub_2313D64E0(v152, v153, &unk_2313DBEA0);
      strcpy(&v134[2], "articleTitle");
      v134[2].n128_u8[13] = 0;
      v134[2].n128_u16[7] = -5120;
      v134[3].n128_u64[0] = v149;
      v134[5].n128_u64[0] = v154;
      v134[5].n128_u64[1] = v138;
      __swift_destroy_boxed_opaque_existential_1Tm(v336);
      (*(v12 + 8))(v334, v333);
      goto LABEL_41;
    case -128:
LABEL_5:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v33 = OUTLINED_FUNCTION_55(v32);
      OUTLINED_FUNCTION_15_1(v33, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v34 = OUTLINED_FUNCTION_3_3();
      v35(v34);
      OUTLINED_FUNCTION_54();
      v36 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v36);
      OUTLINED_FUNCTION_19_2();
      v334 = v18;
      v38 = v37 | 6;
      v39 = OUTLINED_FUNCTION_30_0();
      v40 = OUTLINED_FUNCTION_53(v39);
      v41 = OUTLINED_FUNCTION_7_1();
      v42(v41);
      sub_2313DACEC();
      OUTLINED_FUNCTION_61();
      v43();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_30_0();
      sub_2313DACDC();

      v33[2].n128_u64[0] = v38;
      v33[2].n128_u64[1] = 0x80000002313DDF20;
      v33[5].n128_u64[1] = v40;
      OUTLINED_FUNCTION_23_2();
      v45 = v334;
      v46 = v10;
      goto LABEL_40;
    case -125:
    case -124:
    case -123:
    case -122:
    case -120:
    case -116:
    case -115:
    case -112:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v20 = OUTLINED_FUNCTION_55(v19);
      OUTLINED_FUNCTION_15_1(v20, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v21 = OUTLINED_FUNCTION_3_3();
      v22(v21);
      OUTLINED_FUNCTION_54();
      v23 = sub_2313DAD5C();
      v24 = OUTLINED_FUNCTION_52(v23);
      v25 = 0x6D614E6563616C70;
      v26 = OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_53(v26);
      OUTLINED_FUNCTION_27_1();
      type metadata accessor for PlaceNameResolver();
      OUTLINED_FUNCTION_17_1();
      v27 = swift_allocObject();
      OUTLINED_FUNCTION_62(v27);
      v28 = &unk_27DD4BE80;
      v29 = type metadata accessor for PlaceNameResolver;
      v30 = &unk_2313DBBD0;
LABEL_3:
      v31 = sub_2313D64E0(v28, v29, v30);
      v20[2].n128_u64[1] = 0xE900000000000065;
      v20[3].n128_u64[0] = v5;
LABEL_36:
      v20[2].n128_u64[0] = v25;
LABEL_37:
      v20[5].n128_u64[0] = v31;
      v20[5].n128_u64[1] = v24;
      goto LABEL_38;
    case -99:
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v178 = OUTLINED_FUNCTION_55(v177);
      OUTLINED_FUNCTION_15_1(v178, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v179 = OUTLINED_FUNCTION_3_3();
      v180(v179);
      OUTLINED_FUNCTION_54();
      v181 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v181);
      v182 = OUTLINED_FUNCTION_12_1();
      v183 = type metadata accessor for SunStageResolver();
      swift_allocObject();
      sub_2313C2A7C();
      v185 = v184;
      v178[4].n128_u64[1] = v183;
      v186 = sub_2313D64E0(&qword_27DD4BE88, type metadata accessor for SunStageResolver, &unk_2313DBC60);
      v178[2].n128_u64[1] = 0xEF65676174536E75;
      v178[3].n128_u64[0] = v185;
      v178[2].n128_u64[0] = 0x5372656874616577;
      v178[5].n128_u64[0] = v186;
      v178[5].n128_u64[1] = v182;
LABEL_38:
      OUTLINED_FUNCTION_23_2();
      v45 = v18;
LABEL_39:
      v46 = v10;
LABEL_40:
      v44(v45, v46);
      goto LABEL_41;
    case -98:
      v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v239 = OUTLINED_FUNCTION_55(v238);
      OUTLINED_FUNCTION_15_1(v239, xmmword_2313DB7C0);
      sub_2313DAE3C();
      OUTLINED_FUNCTION_17_1();
      swift_allocObject();
      OUTLINED_FUNCTION_19_2();
      v241 = v240 - 1;
      *(v242 + 16) = v240 - 1;
      *(v242 + 24) = 0x80000002313DDE20;
      v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
      v338 = sub_2313D6048();
      __swift_allocate_boxed_opaque_existential_2Tm(v336);
      sub_2313DAB9C();
      sub_2313DAC5C();
      sub_2313DAB8C();
      v243 = OUTLINED_FUNCTION_8_2();
      v244(v243, v18, v10);
      OUTLINED_FUNCTION_54();
      v245 = sub_2313DAD5C();
      v246 = OUTLINED_FUNCTION_52(v245);
      OUTLINED_FUNCTION_53(v241);
      OUTLINED_FUNCTION_27_1();
      v247 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_17_1();
      v248 = swift_allocObject();
      *(v248 + 16) = v241;
      *(v248 + 24) = 0x80000002313DDE20;
      v239[4].n128_u64[1] = v247;
      OUTLINED_FUNCTION_6_2();
      v251 = sub_2313D64E0(v249, v250, &unk_2313DBB40);
      v239[2].n128_u64[1] = 0x80000002313DDE20;
      v239[3].n128_u64[0] = v248;
      v239[2].n128_u64[0] = v241;
      v239[5].n128_u64[0] = v251;
      v239[5].n128_u64[1] = v246;
      (*(v12 + 8))(v18, v10);
      goto LABEL_29;
    case -94:
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v203 = OUTLINED_FUNCTION_55(v202);
      OUTLINED_FUNCTION_15_1(v203, xmmword_2313DB7C0);
      sub_2313DAE2C();
      OUTLINED_FUNCTION_17_1();
      v204 = swift_allocObject();
      *(v204 + 16) = 0x7079546569766F6DLL;
      *(v204 + 24) = 0xE900000000000065;
      v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
      v338 = sub_2313D6048();
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v336);
      sub_2313DAB9C();
      sub_2313DAC5C();
      sub_2313DAB8C();
      v206 = OUTLINED_FUNCTION_3_3();
      v207(v206);
      OUTLINED_FUNCTION_54();
      v208 = sub_2313DAD5C();
      v209 = OUTLINED_FUNCTION_52(v208);
      OUTLINED_FUNCTION_36_0();
      sub_2313DAD4C();
      OUTLINED_FUNCTION_27_1();
      type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_17_1();
      v210 = swift_allocObject();
      OUTLINED_FUNCTION_62(v210);
      OUTLINED_FUNCTION_6_2();
      v213 = sub_2313D64E0(v211, v212, &unk_2313DBB40);
      v203[2].n128_u64[1] = 0xE900000000000065;
      v203[3].n128_u64[0] = boxed_opaque_existential_2Tm;
      v203[2].n128_u64[0] = 0x7079546569766F6DLL;
      v203[5].n128_u64[0] = v213;
      v203[5].n128_u64[1] = v209;
      (*(v12 + 8))(v18, v10);
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1Tm(v336);
LABEL_41:
      OUTLINED_FUNCTION_21_0();
      return;
    default:
      switch(v2)
      {
        case '5':
        case '7':
        case '8':
          v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v20 = OUTLINED_FUNCTION_55(v109);
          OUTLINED_FUNCTION_15_1(v20, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v110 = OUTLINED_FUNCTION_3_3();
          v111(v110);
          OUTLINED_FUNCTION_54();
          v112 = sub_2313DAD5C();
          v24 = OUTLINED_FUNCTION_52(v112);
          v25 = 0x6E65536C69616D65;
          v113 = 0xEB00000000726564;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for DoNotResolveResolver();
          OUTLINED_FUNCTION_17_1();
          v114 = swift_allocObject();
          OUTLINED_FUNCTION_48(v114);
          OUTLINED_FUNCTION_6_2();
          v117 = &unk_2313DBB40;
          goto LABEL_35;
        case '6':
          v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v263 = OUTLINED_FUNCTION_55(v262);
          OUTLINED_FUNCTION_15_1(v263, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v264 = OUTLINED_FUNCTION_3_3();
          v265(v264);
          OUTLINED_FUNCTION_54();
          v266 = sub_2313DAD5C();
          OUTLINED_FUNCTION_52(v266);
          v333 = v10;
          v267 = OUTLINED_FUNCTION_76();
          v268 = OUTLINED_FUNCTION_53(v267);
          v269 = OUTLINED_FUNCTION_7_1();
          v270(v269);
          sub_2313DACEC();
          v271 = OUTLINED_FUNCTION_32_1();
          v272(v271);
          v273 = type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_2(v273);
          OUTLINED_FUNCTION_80();
          v275 = v274;
          sub_2313C055C(v276, v277, v278, v279, 0xD000000000000011, v280);
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_0_2();
          v283 = sub_2313D64E0(v281, v282, &unk_2313DBEA0);
          v263[2].n128_u64[0] = 0x7469546C69616D65;
          v263[2].n128_u64[1] = 0xEA0000000000656CLL;
          v263[3].n128_u64[0] = v275;
          v263[5].n128_u64[0] = v283;
          v263[5].n128_u64[1] = v268;
          OUTLINED_FUNCTION_23_2();
          v45 = v18;
          goto LABEL_33;
        case '9':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '@':
        case 'C':
        case 'D':
        case 'F':
        case 'G':
        case 'I':
        case 'J':
        case 'K':
        case 'O':
          goto LABEL_41;
        case '?':
        case 'H':
        case 'M':
        case 'P':
          goto LABEL_5;
        case 'A':
          v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v20 = OUTLINED_FUNCTION_55(v257);
          OUTLINED_FUNCTION_15_1(v20, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v258 = OUTLINED_FUNCTION_3_3();
          v259(v258);
          OUTLINED_FUNCTION_54();
          v260 = sub_2313DAD5C();
          v24 = OUTLINED_FUNCTION_52(v260);
          v25 = 0x74616E6974736564;
          v113 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for DestinationResolver();
          OUTLINED_FUNCTION_17_1();
          v261 = swift_allocObject();
          OUTLINED_FUNCTION_48(v261);
          v115 = &unk_27DD4BEB0;
          v116 = type metadata accessor for DestinationResolver;
          v117 = &unk_2313DBCF0;
          goto LABEL_35;
        case 'B':
          v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v20 = OUTLINED_FUNCTION_55(v284);
          OUTLINED_FUNCTION_15_1(v20, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v285 = OUTLINED_FUNCTION_3_3();
          v286(v285);
          OUTLINED_FUNCTION_54();
          v287 = sub_2313DAD5C();
          v24 = OUTLINED_FUNCTION_52(v287);
          v25 = 0x61737265766E6F63;
          v113 = 0xEC0000006E6F6974;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for MessagesConversationEntityResolver();
          OUTLINED_FUNCTION_17_1();
          v288 = swift_allocObject();
          OUTLINED_FUNCTION_48(v288);
          v115 = &unk_27DD4BEA8;
          v116 = type metadata accessor for MessagesConversationEntityResolver;
          v117 = &unk_2313DBF30;
          goto LABEL_35;
        case 'E':
          v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v20 = OUTLINED_FUNCTION_55(v252);
          OUTLINED_FUNCTION_15_1(v20, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v253 = OUTLINED_FUNCTION_3_3();
          v254(v253);
          OUTLINED_FUNCTION_54();
          v255 = sub_2313DAD5C();
          v24 = OUTLINED_FUNCTION_52(v255);
          v25 = 0x73756F6976657270;
          v113 = 0xEC00000072616559;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for PreviousYearResolver();
          OUTLINED_FUNCTION_17_1();
          v256 = swift_allocObject();
          OUTLINED_FUNCTION_48(v256);
          v115 = &unk_27DD4BEA0;
          v116 = type metadata accessor for PreviousYearResolver;
          v117 = &unk_2313DBFC0;
LABEL_35:
          v31 = sub_2313D64E0(v115, v116, v117);
          v20[2].n128_u64[1] = v113;
          v20[3].n128_u64[0] = v1;
          goto LABEL_36;
        case 'L':
        case 'N':
          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v156 = OUTLINED_FUNCTION_55(v155);
          OUTLINED_FUNCTION_15_1(v156, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v333 = v10;
          v157 = OUTLINED_FUNCTION_8_2();
          v158(v157, v18);
          OUTLINED_FUNCTION_54();
          v159 = sub_2313DAD5C();
          OUTLINED_FUNCTION_52(v159);
          OUTLINED_FUNCTION_19_2();
          v160 = OUTLINED_FUNCTION_76();
          v161 = OUTLINED_FUNCTION_53(v160);
          v162 = OUTLINED_FUNCTION_7_1();
          v163(v162);
          sub_2313DACEC();
          v164 = OUTLINED_FUNCTION_35_1();
          (*(v5 + 8))(v164, v3);
          v165 = type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_2(v165);
          OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_80();
          v167 = v166;
          sub_2313C055C(v168, v169, v170, v171, v172, v173);
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_0_2();
          v176 = sub_2313D64E0(v174, v175, &unk_2313DBEA0);
          strcpy(&v156[2], "articleTitle");
          v156[2].n128_u8[13] = 0;
          v156[2].n128_u16[7] = -5120;
          v156[3].n128_u64[0] = v167;
          v156[5].n128_u64[0] = v176;
          v156[5].n128_u64[1] = v161;
          OUTLINED_FUNCTION_23_2();
          v45 = v9;
LABEL_33:
          v46 = v333;
          goto LABEL_40;
        case 'Q':
          v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v20 = OUTLINED_FUNCTION_55(v289);
          OUTLINED_FUNCTION_15_1(v20, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v290 = OUTLINED_FUNCTION_3_3();
          v291(v290);
          OUTLINED_FUNCTION_54();
          v292 = sub_2313DAD5C();
          v24 = OUTLINED_FUNCTION_52(v292);
          OUTLINED_FUNCTION_53(0xD000000000000011);
          OUTLINED_FUNCTION_27_1();
          v293 = type metadata accessor for NotesTagAndFolderResolver();
          OUTLINED_FUNCTION_17_1();
          v294 = swift_allocObject();
          *(v294 + 16) = 0xD000000000000011;
          *(v294 + 24) = 0x80000002313DDEC0;
          v20[4].n128_u64[1] = v293;
          v31 = sub_2313D64E0(&qword_27DD4BE98, type metadata accessor for NotesTagAndFolderResolver, &unk_2313DBD80);
          v20[2].n128_u64[1] = 0x80000002313DDEC0;
          v20[3].n128_u64[0] = v294;
          v20[2].n128_u64[0] = 0xD000000000000011;
          goto LABEL_37;
        default:
          switch(v2)
          {
            case 10:
              goto LABEL_5;
            case 98:
              v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
              v20 = OUTLINED_FUNCTION_55(v295);
              OUTLINED_FUNCTION_15_1(v20, xmmword_2313DB7C0);
              sub_2313DAE2C();
              sub_2313DAE1C();
              v296 = OUTLINED_FUNCTION_3_3();
              v297(v296);
              OUTLINED_FUNCTION_54();
              v298 = sub_2313DAD5C();
              v24 = OUTLINED_FUNCTION_52(v298);
              v25 = 0x6C746954776F6873;
              v299 = OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_53(v299);
              OUTLINED_FUNCTION_27_1();
              type metadata accessor for PodcastsShowResolver();
              OUTLINED_FUNCTION_17_1();
              v300 = swift_allocObject();
              OUTLINED_FUNCTION_62(v300);
              v28 = &unk_27DD4BE90;
              v29 = type metadata accessor for PodcastsShowResolver;
              v30 = &unk_2313DBE10;
              goto LABEL_3;
            case 23:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
              v301 = swift_allocObject();
              OUTLINED_FUNCTION_15_1(v301, xmmword_2313DB7D0);
              sub_2313DAE2C();
              sub_2313DAE1C();
              OUTLINED_FUNCTION_26_2();
              v325 = v302;
              v303 = *(v12 + 16);
              v330 = v12 + 16;
              v331 = v303;
              v303(v16, v18, v10);
              OUTLINED_FUNCTION_54();
              v304 = sub_2313DAD5C();
              OUTLINED_FUNCTION_52(v304);
              OUTLINED_FUNCTION_19_2();
              v332 = v12;
              v333 = v10;
              v306 = v305 | 6;
              v307 = v325;
              v326 = OUTLINED_FUNCTION_53(v305 | 6);
              v308 = *MEMORY[0x277D60F30];
              v309 = *(v5 + 104);
              v328 = v5 + 104;
              v329 = v309;
              v309(v9, v308, v3);
              sub_2313DACEC();
              v334 = v18;
              v327 = *(v5 + 8);
              v327(v9, v3);
              OUTLINED_FUNCTION_13_2();
              OUTLINED_FUNCTION_80();
              sub_2313DACDC();

              v301[2].n128_u64[0] = v306;
              v301[2].n128_u64[1] = v307;
              v301[5].n128_u64[1] = v326;
              __swift_destroy_boxed_opaque_existential_1Tm(v336);
              v310 = v333;
              v311 = *(v332 + 8);
              v332 += 8;
              v312 = v334;
              v311(v334, v333);
              sub_2313DAE2C();
              sub_2313DAE1C();
              v331(v16, v312, v310);
              OUTLINED_FUNCTION_54();
              swift_allocObject();
              v313 = OUTLINED_FUNCTION_53(0xD000000000000011);
              v329(v9, *MEMORY[0x277D60F28], v3);
              v314 = sub_2313DACEC();
              v316 = v315;
              v327(v9, v3);
              v317 = type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_2(v317);
              OUTLINED_FUNCTION_74();
              v320 = sub_2313C055C(0xD000000000000011, 0x80000002313DDE40, v314, v316, v318, v319);
              v301[8].n128_u64[1] = v3;
              OUTLINED_FUNCTION_0_2();
              v323 = sub_2313D64E0(v321, v322, &unk_2313DBEA0);
              v301[6].n128_u64[1] = 0x80000002313DDE40;
              v301[7].n128_u64[0] = v320;
              v301[6].n128_u64[0] = 0xD000000000000011;
              v301[9].n128_u64[0] = v323;
              v301[9].n128_u64[1] = v313;
              __swift_destroy_boxed_opaque_existential_1Tm(v336);
              v311(v312, v333);
              goto LABEL_41;
            case 27:
            case 29:
              v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
              v49 = OUTLINED_FUNCTION_55(v48);
              OUTLINED_FUNCTION_15_1(v49, xmmword_2313DB7C0);
              sub_2313DAE2C();
              sub_2313DAE1C();
              v50 = OUTLINED_FUNCTION_3_3();
              v51(v50);
              OUTLINED_FUNCTION_54();
              v52 = sub_2313DAD5C();
              OUTLINED_FUNCTION_52(v52);
              v53 = OUTLINED_FUNCTION_53(0x614E7265646C6F66);
              v54 = OUTLINED_FUNCTION_7_1();
              v55(v54);
              sub_2313DACEC();
              OUTLINED_FUNCTION_35_1();
              v56 = v10;
              OUTLINED_FUNCTION_61();
              v57();
              v58 = type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_2(v58);
              OUTLINED_FUNCTION_18_2();
              OUTLINED_FUNCTION_57(0x614E7265646C6F66, 0xEA0000000000656DLL, v59, v60, v61, v62);
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_0_2();
              v65 = sub_2313D64E0(v63, v64, &unk_2313DBEA0);
              v49[2].n128_u64[1] = 0xEA0000000000656DLL;
              v49[3].n128_u64[0] = v9;
              v49[2].n128_u64[0] = 0x614E7265646C6F66;
              goto LABEL_25;
          }

          if (v2 != 13)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
      }
  }
}