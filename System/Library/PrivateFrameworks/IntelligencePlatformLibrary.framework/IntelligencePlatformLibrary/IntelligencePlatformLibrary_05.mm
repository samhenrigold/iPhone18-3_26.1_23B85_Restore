void sub_1934A5EB8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x119uLL);
  OUTLINED_FUNCTION_38();
  v4 = v1 == 0xD00000000000001CLL && v3 == v0;
  if (v4 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = LOBYTE(__dst[0]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v7 = v1 == 0xD00000000000001ELL && v6 == v0;
  if (v7 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = BYTE1(__dst[0]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79_5(0x4C7475706E69);
  v8 = v4 && v0 == 0xEB00000000687467;
  if (v8 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[2])
    {
      goto LABEL_8;
    }

    v9 = __dst[1];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v11 = v1 == 0xD000000000000010 && v10 == v0;
  if (v11 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[4])
    {
      goto LABEL_8;
    }

    v9 = __dst[3];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v13 = v1 == 0xD00000000000001DLL && v12 == v0;
  if (v13 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[6])
    {
      goto LABEL_8;
    }

    v9 = __dst[5];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v15 = v1 == 0xD000000000000018 && v14 == v0;
  if (v15 || (OUTLINED_FUNCTION_0_14(), v63 = v16, (sub_19393CA30() & 1) != 0))
  {
    v5 = BYTE1(__dst[6]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v18 = v1 == 0xD000000000000010 && v17 == v0;
  if (v18 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!__dst[8])
    {
      goto LABEL_8;
    }

    v60 = __dst[7];
    v61 = __dst[8];
LABEL_10:
    sub_1934948FC();
    goto LABEL_11;
  }

  v19 = v1 == 0x65736E6F70736572 && v0 == 0xEF79636E65677255;
  if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[10])
    {
      goto LABEL_8;
    }

    v9 = __dst[9];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v21 = v1 == 0xD00000000000001DLL && v20 == v0;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[11])
    {
      goto LABEL_8;
    }

    LODWORD(v60) = HIDWORD(__dst[10]);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_17();
  v23 = v4 && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[13])
    {
      goto LABEL_8;
    }

    v9 = __dst[12];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v25 = v1 == 0xD000000000000010 && v24 == v0;
  if (v25 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[15] & 0x100) != 0)
    {
      goto LABEL_8;
    }

    v60 = __dst[14];
    LOBYTE(v61) = __dst[15] & 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v27 = v1 == 0xD00000000000001ALL && v26 == v0;
  if (v27 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[17])
    {
      goto LABEL_8;
    }

    v28 = __dst[16];
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_38();
  v30 = v1 == 0xD000000000000015 && v29 == v0;
  if (v30 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[19])
    {
      goto LABEL_8;
    }

    v28 = __dst[18];
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_38();
  v32 = v1 == 0xD000000000000014 && v31 == v0;
  if (v32 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[21])
    {
      goto LABEL_8;
    }

    v28 = __dst[20];
LABEL_102:
    v60 = v28;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v34 = v1 == v63 && v33 == v0;
  if (v34 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = BYTE1(__dst[21]);
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v36 = v1 == 0xD000000000000012 && v35 == v0;
    if (v36 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      v5 = BYTE2(__dst[21]);
    }

    else
    {
      OUTLINED_FUNCTION_103_3();
      v38 = v1 == 0x7361487475706E69 && v0 == v37;
      if (v38 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v5 = BYTE3(__dst[21]);
      }

      else
      {
        v39 = v1 == 0x7361487475706E69 && v0 == 0xEB000000004C5255;
        if (v39 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          v5 = BYTE4(__dst[21]);
        }

        else
        {
          OUTLINED_FUNCTION_101_3();
          if (v1 != 0x7361487475706E69 || v0 != v40)
          {
            OUTLINED_FUNCTION_0_14();
            if ((sub_19393CA30() & 1) == 0)
            {
              OUTLINED_FUNCTION_80_4();
              v43 = v4 && v0 == v42;
              if (v43 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
              {
                if (__dst[23])
                {
                  goto LABEL_8;
                }

                v9 = __dst[22];
              }

              else
              {
                OUTLINED_FUNCTION_79_5(0x4C656C746974);
                v44 = v4 && v0 == 0xEB00000000687467;
                if (v44 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                {
                  if (__dst[25])
                  {
                    goto LABEL_8;
                  }

                  v9 = __dst[24];
                }

                else
                {
                  OUTLINED_FUNCTION_86_3();
                  v46 = v4 && v0 == v45;
                  if (v46 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[27])
                    {
                      goto LABEL_8;
                    }

                    v9 = __dst[26];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_32_9();
                    v48 = v4 && v0 == v47;
                    if (v48 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      if (__dst[29])
                      {
                        goto LABEL_8;
                      }

                      v9 = __dst[28];
                    }

                    else
                    {
                      OUTLINED_FUNCTION_74_2();
                      OUTLINED_FUNCTION_78_4();
                      v50 = v4 && v0 == v49;
                      if (v50 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[31])
                        {
                          goto LABEL_8;
                        }

                        v9 = __dst[30];
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v52 = v1 == 0xD000000000000010 && v51 == v0;
                        if (v52 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                        {
                          if (__dst[33])
                          {
                            goto LABEL_8;
                          }

                          v9 = __dst[32];
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          if (v1 != 0xD000000000000011 || v53 != v0)
                          {
                            OUTLINED_FUNCTION_0_14();
                            if ((sub_19393CA30() & 1) == 0)
                            {
                              sub_19349AB64();
                              OUTLINED_FUNCTION_11();
                              v55 = swift_allocError();
                              OUTLINED_FUNCTION_9_3(v55, v56);
                              *(v57 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.ClassificationEvent;
                              v58 = swift_allocObject();
                              v59 = OUTLINED_FUNCTION_28_3(v58);
                              memcpy(v59, __dst, 0x119uLL);
                              OUTLINED_FUNCTION_26_0();

                              sub_1934A868C(__dst, &v60);
                              goto LABEL_11;
                            }
                          }

                          if (__dst[35])
                          {
                            goto LABEL_8;
                          }

                          v9 = __dst[34];
                        }
                      }
                    }
                  }
                }
              }

LABEL_25:
              v60 = v9;
              goto LABEL_10;
            }
          }

          v5 = BYTE5(__dst[21]);
        }
      }
    }
  }

LABEL_7:
  if (v5 != 2)
  {
    LOBYTE(v60) = v5 & 1;
    goto LABEL_10;
  }

LABEL_8:
  OUTLINED_FUNCTION_36_4();
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_1934A657C()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_85_2();
  v5 = v0 == v3 && v4 == 0xE600000000000000;
  if (v5 || (v6 = v4, (OUTLINED_FUNCTION_55_4(v3, 0xE600000000000000) & 1) != 0))
  {
    if (v2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v7 = swift_allocError();
    *v8 = v0;
    *(v8 + 8) = v6;
    *(v8 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus;
    *(v8 + 16) = v1;
    *(v8 + 24) = v2;
    OUTLINED_FUNCTION_23_2(v7, v8);
  }
}

void sub_1934A6670()
{
  OUTLINED_FUNCTION_62_3();
  v4 = v3;
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_85_2();
  if (v4 != v7 || v5 != v6)
  {
    v9 = v5;
    OUTLINED_FUNCTION_107_1();
    v17 = *(v0 + 32);
    v10 = *(v0 + 40);
    if ((OUTLINED_FUNCTION_91_2(v11, 0xEA00000000007375) & 1) == 0)
    {
      v12 = v4 == 0x7375746174536F74 && v9 == 0xE800000000000000;
      if (v12 || (OUTLINED_FUNCTION_91_2(0x7375746174536F74, 0xE800000000000000) & 1) != 0)
      {
        if (v2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = v4 == 0x6E6F697461727564 && v9 == 0xE800000000000000;
        if (!v13 && (OUTLINED_FUNCTION_91_2(0x6E6F697461727564, 0xE800000000000000) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          OUTLINED_FUNCTION_106_0();
          *v14 = v4;
          v14[1] = v9;
          v14[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition;
          v15 = swift_allocObject();
          v16 = OUTLINED_FUNCTION_14_14(v15);
          *(v16 + 48) = v17;
          *(v16 + 56) = v10;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }

        if (v10)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1934A680C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x42uLL);
  OUTLINED_FUNCTION_38();
  v11 = v1 == 0xD000000000000011 && v4 == v0;
  if (v11 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v24[0] = __dst[0];
    v12 = MEMORY[0x1E69E7360];
    goto LABEL_9;
  }

  v3 = 0x6550736E656B6F74;
  v13 = v1 == 0x6550736E656B6F74 && v0 == 0xEF646E6F63655372;
  if (v13 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      goto LABEL_7;
    }

    v24[0] = __dst[2];
    v12 = MEMORY[0x1E69E63B0];
    goto LABEL_9;
  }

  v3 = 0x64656E6769537369;
  v14 = v1 == 0x64656E6769537369 && v0 == 0xEA00000000006E49;
  if (v14 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = BYTE1(__dst[3]);
LABEL_23:
    if (v15 == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v24[0]) = v15 & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_9;
  }

  v3 = 0x6573556C65646F6DLL;
  v16 = v1 == 0x6573556C65646F6DLL && v0 == 0xE900000000000064;
  if (v16 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (!__dst[5])
    {
      goto LABEL_7;
    }

    v24[0] = __dst[4];
    v24[1] = __dst[5];
    v12 = MEMORY[0x1E69E6158];
    goto LABEL_9;
  }

  v3 = 0x6372616553626577;
  v17 = v1 == 0x6372616553626577 && v0 == 0xED00006465735568;
  if (v17 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = LOBYTE(__dst[6]);
    goto LABEL_23;
  }

  v18 = v1 == 0x54746E756F636361 && v0 == 0xEB00000000657079;
  if (v18 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[8] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType;
LABEL_9:
    OUTLINED_FUNCTION_52_2(v3, v12, v5, v6, v7, v8, v9, v10, v24[0]);
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v19 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v19, v20);
  *(v21 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest;
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_28_3(v22);
  memcpy(v23, __dst, 0x42uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A86E8(__dst, v24);
}

id sub_1934A6AC4()
{
  OUTLINED_FUNCTION_7_12();
  v3 = OUTLINED_FUNCTION_114_1();
  v10 = *v0;
  v11 = v2 == v3 && v1 == v4;
  if (v11 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (!(v10 >> 61))
    {
      v33 = *(v10 + 16);
      v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenericError;
      v13 = &off_1F07BE248;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v3, v12, v13, v5, v6, v7, v8, v9, v33);
      return sub_193494798(v14, v15, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v19 = v2 == 0xD000000000000018 && v18 == v1;
    if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v10 >> 61 == 1)
      {
        OUTLINED_FUNCTION_38_6();
        v12 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError;
        v13 = &off_1F07BE258;
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v21 = v2 == 0xD00000000000001ALL && v20 == v1;
      if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v10 >> 61 == 2)
        {
          OUTLINED_FUNCTION_4_6();
          v12 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError;
          v13 = &off_1F07BE2A8;
          goto LABEL_8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v23 = v2 == 0xD000000000000017 && v22 == v1;
        if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (v10 >> 61 == 3)
          {
            OUTLINED_FUNCTION_38_6();
            v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError;
            v13 = &off_1F07BE2B8;
            goto LABEL_8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v25 = v2 == 0xD000000000000014 && v24 == v1;
          if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (v10 >> 61 == 4)
            {
              OUTLINED_FUNCTION_4_6();
              v12 = &type metadata for GenerativeFunctionsInstrumentationError.TokenGenerationError;
              v13 = &off_1F07BE2F8;
              goto LABEL_8;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_17();
            if (!v11 || v26 != v1)
            {
              OUTLINED_FUNCTION_0_14();
              if ((sub_19393CA30() & 1) == 0)
              {
                OUTLINED_FUNCTION_38();
                if (v2 == 0xD000000000000013 && v28 == v1)
                {
                  if (v10 >> 61 != 6)
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_0_14();
                  if ((sub_19393CA30() & 1) == 0 || (v10 & 0xE000000000000000) != 0xC000000000000000)
                  {
                    goto LABEL_52;
                  }
                }

                OUTLINED_FUNCTION_38_6();
                v12 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError;
                v13 = &off_1F07BE398;
                goto LABEL_8;
              }
            }

            if (v10 >> 61 == 5)
            {
              OUTLINED_FUNCTION_38_6();
              v12 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError;
              v13 = &off_1F07BE308;
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

LABEL_52:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v30 = swift_allocError();
  OUTLINED_FUNCTION_64(v30, v31);
  OUTLINED_FUNCTION_19_1(v32, &type metadata for GenerativeFunctionsInstrumentationError);
}

id sub_1934A6F28()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *v0;
  v4 = v2 == 0x7245656C706D6973 && v1 == 0xEB00000000726F72;
  if (v4 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v3 >> 61))
    {
      OUTLINED_FUNCTION_67_5();
      v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError;
      v12 = &off_1F07BE268;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v5, v11, v12, v6, v7, v8, v9, v10, v27);
      return sub_193494798(v13, v14, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v18 = v2 == 0xD000000000000022 && v17 == v1;
    if (v18 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v3 >> 61 == 1)
      {
        OUTLINED_FUNCTION_37_4();
        v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError;
        v12 = &off_1F07BE278;
        goto LABEL_8;
      }
    }

    else
    {
      v19 = v2 == 0x636E657265666E69 && v1 == 0xEE00726F72724565;
      if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v3 >> 61 == 2)
        {
          OUTLINED_FUNCTION_4_6();
          v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError;
          v12 = &off_1F07BE2A8;
          goto LABEL_8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v2 != 0xD000000000000017 || v20 != v1)
        {
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0)
          {
            OUTLINED_FUNCTION_8_17();
            if (v4 && v22 == v1)
            {
              if (v3 >> 61 != 4)
              {
                goto LABEL_38;
              }
            }

            else
            {
              OUTLINED_FUNCTION_0_14();
              if ((sub_19393CA30() & 1) == 0 || (v3 & 0xE000000000000000) != 0x8000000000000000)
              {
                goto LABEL_38;
              }
            }

            OUTLINED_FUNCTION_37_4();
            v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UseCaseDisabledError;
            v12 = &off_1F07BE298;
            goto LABEL_8;
          }
        }

        if (v3 >> 61 == 3)
        {
          OUTLINED_FUNCTION_37_4();
          v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError;
          v12 = &off_1F07BE288;
          goto LABEL_8;
        }
      }
    }
  }

LABEL_38:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v24 = swift_allocError();
  OUTLINED_FUNCTION_64(v24, v25);
  OUTLINED_FUNCTION_19_1(v26, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError);
}

void sub_1934A7198(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_22_4();
  v14 = v14 && v7 == a2;
  if (v14 || (v15 = v6, OUTLINED_FUNCTION_20_5(27), v6 = sub_19393CA30(), (v6 & 1) != 0))
  {
    if (v4)
    {
      OUTLINED_FUNCTION_53_2(v6, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, v5);
      sub_1934948FC();
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v16 = swift_allocError();
    *v17 = v15;
    v17[1] = a2;
    v17[5] = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError;
    v17[2] = v5;
    v17[3] = v4;
    OUTLINED_FUNCTION_23_2(v16, v17);
  }
}

void sub_1934A72A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0x6D656C7469746E65;
  v13 = *v8;
  v12 = v8[1];
  v14 = a1 == 0x6D656C7469746E65 && a2 == 0xEB00000000746E65;
  if (v14 || (v11 = OUTLINED_FUNCTION_31_9(0x6D656C7469746E65, 0xEB00000000746E65), (v11 & 1) != 0))
  {
    if (v12)
    {
      OUTLINED_FUNCTION_53_2(v11, MEMORY[0x1E69E6158], a3, a4, a5, a6, a7, a8, v13);
      sub_1934948FC();
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v15 = swift_allocError();
    *v16 = a1;
    v16[1] = a2;
    v16[5] = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError;
    v16[2] = v13;
    v16[3] = v12;
    OUTLINED_FUNCTION_23_2(v15, v16);
  }
}

void sub_1934A73AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_22_4();
  v14 = v14 && v7 == a2;
  if (v14 || (v15 = v6, OUTLINED_FUNCTION_20_5(17), v6 = sub_19393CA30(), (v6 & 1) != 0))
  {
    if (v4)
    {
      OUTLINED_FUNCTION_53_2(v6, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, v5);
      sub_1934948FC();
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v16 = swift_allocError();
    *v17 = v15;
    v17[1] = a2;
    v17[5] = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UseCaseDisabledError;
    v17[2] = v5;
    v17[3] = v4;
    OUTLINED_FUNCTION_23_2(v16, v17);
  }
}

id sub_1934A74E0()
{
  OUTLINED_FUNCTION_11_5();
  v4 = *v0;
  v5 = v2 == 0x7272456C65646F6DLL && v3 == 0xEA0000000000726FLL;
  if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v4 >> 62))
    {
      OUTLINED_FUNCTION_67_5();
      v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError;
      v13 = &off_1F07BE2C8;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v6, v12, v13, v7, v8, v9, v10, v11, v23);
      return sub_193494798(v14, v15, v16);
    }
  }

  else
  {
    if (v2 != 0x657A6974696E6173 || v1 != 0xEE00726F72724572)
    {
      OUTLINED_FUNCTION_0_14();
      if ((sub_19393CA30() & 1) == 0)
      {
        if (v2 == 0xD000000000000017 && 0x8000000193A15300 == v1)
        {
          if (v4 >> 62 != 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0 || (v4 & 0xC000000000000000) != 0x8000000000000000)
          {
            goto LABEL_24;
          }
        }

        OUTLINED_FUNCTION_4_6();
        v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError;
        v13 = &off_1F07BE2E8;
        goto LABEL_8;
      }
    }

    if (v4 >> 62 == 1)
    {
      OUTLINED_FUNCTION_4_6();
      v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError;
      v13 = &off_1F07BE2D8;
      goto LABEL_8;
    }
  }

LABEL_24:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v20 = swift_allocError();
  OUTLINED_FUNCTION_64(v20, v21);
  OUTLINED_FUNCTION_19_1(v22, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError);
}

void sub_1934A7718(uint64_t a1@<X0>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_117_3();
  v6 = OUTLINED_FUNCTION_97();
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 9);
  v12 = a1 == (v6 | 0x7361437200000000) && v7 == v8;
  if (v12 || (v13 = v7, OUTLINED_FUNCTION_59_1(), (sub_19393CA30() & 1) != 0))
  {
    if (v11)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v14 = swift_allocError();
    *v15 = a1;
    *(v15 + 8) = v13;
    *(v15 + 40) = a2;
    *(v15 + 16) = v9;
    *(v15 + 24) = v10;
    *(v15 + 25) = v11;
    OUTLINED_FUNCTION_23_2(v14, v15);
  }

  OUTLINED_FUNCTION_54_0();
}

id sub_1934A7844()
{
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_68_1();
  v5 = v5 && v1 == v4;
  if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v0 >> 61))
    {
      v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UnknownError;
      v7 = &off_1F07BE318;
      return sub_193494798(v6, v7, v3);
    }
  }

  else
  {
    v8 = v2 == 0x6F6F547475706E69 && v1 == 0xED000074726F6853;
    if (v8 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v0 >> 61 == 1)
      {
        OUTLINED_FUNCTION_51_3();
        v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort;
        v7 = &off_1F07BE328;
        return sub_193494798(v6, v7, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_17();
      v11 = v5 && v10 == v1;
      if (v11 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v0 >> 61 == 2)
        {
          OUTLINED_FUNCTION_4_6();
          v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData;
          v7 = &off_1F07BE338;
          return sub_193494798(v6, v7, v3);
        }
      }

      else
      {
        OUTLINED_FUNCTION_45_7();
        v13 = v5 && v1 == v12;
        if (v13 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (v0 >> 61 == 3)
          {
            v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UseCaseDisabled;
            v7 = &off_1F07BE348;
            return sub_193494798(v6, v7, v3);
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_17();
          v15 = v5 && v14 == v1;
          if (v15 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (v0 >> 61 == 4)
            {
              v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingResponseData;
              v7 = &off_1F07BE358;
              return sub_193494798(v6, v7, v3);
            }
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v17 = v2 == 0xD000000000000019 && v16 == v1;
            if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              if (v0 >> 61 == 5)
              {
                v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UnknownSummarizationStyle;
                v7 = &off_1F07BE368;
                return sub_193494798(v6, v7, v3);
              }
            }

            else
            {
              OUTLINED_FUNCTION_38();
              if (v2 != 0xD00000000000001ALL || v18 != v1)
              {
                OUTLINED_FUNCTION_0_14();
                if ((sub_19393CA30() & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  if (v2 == 0xD00000000000001CLL && v20 == v1)
                  {
                    if (v0 >> 61 != 7)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_14();
                    if ((sub_19393CA30() & 1) == 0 || v0 >> 61 != 7)
                    {
                      goto LABEL_59;
                    }
                  }

                  OUTLINED_FUNCTION_37_4();
                  v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier;
                  v7 = &off_1F07BE388;
                  return sub_193494798(v6, v7, v3);
                }
              }

              if (v0 >> 61 == 6)
              {
                v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UnknownVisualPromptUseCase;
                v7 = &off_1F07BE378;
                return sub_193494798(v6, v7, v3);
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v22 = swift_allocError();
  OUTLINED_FUNCTION_64(v22, v23);
  OUTLINED_FUNCTION_19_1(v24, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError);
}

void sub_1934A7C90()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_41_6();
  v4 = v0 == v2 && v3 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_55_4(v2, 0xE800000000000000) & 1) != 0)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v5, v6);
    OUTLINED_FUNCTION_16_8(v7, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData);
  }

  OUTLINED_FUNCTION_93_1();
}

id sub_1934A7E08()
{
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_68_1();
  v5 = v5 && v1 == v4;
  if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v0 >> 62))
    {
      v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.UnknownError;
      v7 = &off_1F07BE3A8;
      return sub_193494798(v6, v7, v3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    v10 = v5 && v1 == v9;
    if (v10 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v0 >> 62 == 1)
      {
        v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.UseCaseDisabled;
        v7 = &off_1F07BE3B8;
        return sub_193494798(v6, v7, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      if (v2 != 0xD00000000000001CLL || v11 != v1)
      {
        OUTLINED_FUNCTION_0_14();
        if ((sub_19393CA30() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_17();
          if (v5 && v13 == v1)
          {
            if (v0 >> 62 != 3)
            {
              goto LABEL_31;
            }
          }

          else
          {
            OUTLINED_FUNCTION_0_14();
            if ((sub_19393CA30() & 1) == 0 || v0 >> 62 != 3)
            {
              goto LABEL_31;
            }
          }

          OUTLINED_FUNCTION_51_3();
          v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.InvalidEmbeddingDimension;
          v7 = &off_1F07BE3D8;
          return sub_193494798(v6, v7, v3);
        }
      }

      if (v0 >> 62 == 2)
      {
        v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.InvalidModelBundleIdentifier;
        v7 = &off_1F07BE3C8;
        return sub_193494798(v6, v7, v3);
      }
    }
  }

LABEL_31:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v15 = swift_allocError();
  OUTLINED_FUNCTION_64(v15, v16);
  OUTLINED_FUNCTION_19_1(v17, &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError);
}

uint64_t sub_1934A7FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v6 = swift_allocError();
  *v7 = a1;
  v7[1] = a2;
  v7[5] = a3;
  OUTLINED_FUNCTION_23_2(v6, v7);
}

void sub_1934A8068()
{
  OUTLINED_FUNCTION_94_2();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = v0[1];
  OUTLINED_FUNCTION_22_4();
  v10 = v10 && v8 == v2;
  if (v10 || (v11 = v9, v12 = v7, (OUTLINED_FUNCTION_92_1(0xD000000000000015, v8) & 1) != 0))
  {
    if (v5)
    {
      sub_1934948FC();
    }

    else
    {
      *v4 = 0u;
      v4[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v13 = swift_allocError();
    *v14 = v12;
    v14[1] = v2;
    v14[5] = v11;
    v14[2] = v6;
    v14[3] = v5;
    OUTLINED_FUNCTION_23_2(v13, v14);
  }

  OUTLINED_FUNCTION_93_1();
}

uint64_t sub_1934A83C4(uint64_t a1)
{
  if (*(a1 + 185))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934A83E0(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1934A8518(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t objectdestroyTm()
{

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39_9(uint64_t result)
{
  *(result + 30) = *(v1 + 14);
  *(result + 26) = *(v1 + 10);
  return result;
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_1934948FC();
}

uint64_t static GenerativeFunctionsInstrumentationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_68_2();
  v7 = sub_1934B0EDC(v5, v6, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Identifiers);
  if ((OUTLINED_FUNCTION_163(v7) & 1) == 0)
  {
    goto LABEL_33;
  }

  v8 = v4[8];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_33;
  }

  v13 = v4[9];
  v14 = a1 + v13;
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 9);
  if (v15)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18 = *v16;
    v19 = *(v16 + 8);
    v20 = *(v14 + 8);
    v58[0] = *v14;
    LOWORD(v58[1]) = v20;
    if (v17)
    {
      goto LABEL_33;
    }

    LOBYTE(v57[0]) = v18;
    LOBYTE(v57[1]) = v19 & 1;
    v21 = sub_1934B0E34();
    if ((OUTLINED_FUNCTION_129(v21, v22, &type metadata for GenerativeFunctionsInstrumentationEvent.Subtype, v21, v23, v24, v25, v26, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9], v53[10], v53[11], v53[12], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v57[0]) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v27 = v4[10];
  v28 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_67_6();
  v31 = sub_1934B0EDC(v29, v30, &protocol conformance descriptor for MonotonicTimestamp);
  if ((OUTLINED_FUNCTION_163(v31) & 1) == 0 || *(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]))
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_144_0();
  if (v12)
  {
    v33 = v32 & ~v28;
    sub_19344BF2C(v27);
    sub_19344BF2C(v28);
    if (v33)
    {
LABEL_21:
      sub_193444048(v27);
      sub_193444048(v28);
LABEL_33:
      v51 = 0;
      return v51 & 1;
    }

    sub_193444048(v27);
  }

  else
  {
    v58[0] = v27;
    if ((v32 & ~v28) == 0)
    {
      sub_19344BF2C(v27);
      sub_19344BF2C(v28);
      sub_19344BF2C(v27);

      goto LABEL_21;
    }

    sub_19344BF2C(v27);
    sub_19344BF2C(v28);
    sub_19344BF2C(v27);
    v34 = sub_1934B0DE0();
    v28 = OUTLINED_FUNCTION_129(v34, v35, &type metadata for GenerativeFunctionsInstrumentationMetadata, v34, v36, v37, v38, v39, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9], v53[10], v53[11], v53[12], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v28);

    sub_193444048(v27);
    if ((v28 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_144_0();
  if (v12)
  {
    v41 = v40 & ~v28;
    sub_193437C90(v27);
    sub_193437C90(v28);
    if (v41)
    {
LABEL_29:
      sub_193444060(v27);
      sub_193444060(v28);
      goto LABEL_33;
    }

    sub_193444060(v27);
  }

  else
  {
    v58[0] = v27;
    if ((v40 & ~v28) == 0)
    {
      sub_193437C90(v27);
      sub_193437C90(v28);
      sub_193437C90(v27);

      goto LABEL_29;
    }

    sub_193437C90(v27);
    sub_193437C90(v28);
    sub_193437C90(v27);
    v42 = sub_1934B0D8C();
    v48 = OUTLINED_FUNCTION_129(v42, v43, &type metadata for GenerativeFunctionsInstrumentationError, v42, v44, v45, v46, v47, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9], v53[10], v53[11], v53[12], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v28);

    sub_193444060(v27);
    if ((v48 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((sub_1934B0C44(*(a1 + v4[15]), *(a2 + v4[15])) & 1) == 0)
  {
    goto LABEL_33;
  }

  v49 = v4[16];
  memcpy(__dst, (a1 + v49), sizeof(__dst));
  memcpy(__src, (a1 + v49), sizeof(__src));
  v50 = v4[16];
  memcpy(v56, (a2 + v50), sizeof(v56));
  memcpy(v53, (a2 + v50), sizeof(v53));
  sub_19344FABC(__dst, v58);
  sub_19344FABC(v56, v58);
  sub_19344EEF4();
  v51 = sub_19393C550();
  memcpy(v57, v53, sizeof(v57));
  sub_1934500D8(v57);
  memcpy(v58, __src, sizeof(v58));
  sub_1934500D8(v58);
  return v51 & 1;
}

uint64_t GenerativeFunctionsInstrumentationEvent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_68_2();
  v6 = sub_1934B0EDC(v4, v5, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Identifiers);
  OUTLINED_FUNCTION_162(v6);
  sub_19393C640();
  v7 = v1 + v3[9];
  if (*(v7 + 9) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v8 = *(v7 + 8);
    __dst[0] = *v7;
    LOBYTE(__dst[1]) = v8 & 1;
    sub_19393CAD0();
    sub_1934B0E88();
    OUTLINED_FUNCTION_161();
    sub_19393C540();
  }

  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_67_6();
  v11 = sub_1934B0EDC(v9, v10, &protocol conformance descriptor for MonotonicTimestamp);
  OUTLINED_FUNCTION_162(v11);
  MEMORY[0x193B18060](*(v1 + v3[11]));
  v12 = *(v1 + v3[12]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x193B18060](*&v12);
  if ((~*(v1 + v3[13]) & 0xF000000000000007) != 0)
  {
    __dst[0] = *(v1 + v3[13]);
    sub_19393CAD0();
    sub_1934B0F24();

    OUTLINED_FUNCTION_161();
    sub_19393C540();
  }

  else
  {
    sub_19393CAD0();
  }

  if ((~*(v1 + v3[14]) & 0xF000000000000007) != 0)
  {
    __dst[0] = *(v1 + v3[14]);
    sub_19393CAD0();
    sub_1934B0F78();

    OUTLINED_FUNCTION_161();
    sub_19393C540();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_1934B10C0(a1, *(v1 + v3[15]));
  memcpy(__dst, (v1 + v3[16]), sizeof(__dst));
  sub_1934B1190();
  OUTLINED_FUNCTION_161();
  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Subtype.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t GenerativeFunctionsInstrumentationEvent.Subtype.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7472617453;
  switch(*v0)
  {
    case 1:
      result = 6581829;
      break;
    case 2:
      result = 1818845510;
      break;
    case 3:
      result = 1868983881;
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationEvent.Subtype.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7472617453 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x7472617453, 0xE500000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 6581829 && v0 == 0xE300000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(6581829, 0xE300000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 1818845510 && v0 == 0xE400000000000000;
        if (v8 || (OUTLINED_FUNCTION_0_9(1818845510, 0xE400000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 1868983881 && v0 == 0xE400000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_0_9(1868983881, 0xE400000000000000);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_102_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 60)
  {
    case 1uLL:
      if (v3 >> 60 != 1)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v29, v30, 0x59uLL);
      v31 = OUTLINED_FUNCTION_82_3();
      memcpy(v31, v32, 0x59uLL);

      v33 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.== infix(_:_:)(v33, v34);
      goto LABEL_30;
    case 2uLL:
      if (v3 >> 60 != 2)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v13, v14, 0x299uLL);
      v15 = OUTLINED_FUNCTION_82_3();
      memcpy(v15, v16, 0x299uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.== infix(_:_:)();
      goto LABEL_30;
    case 3uLL:
      if (v3 >> 60 != 3)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v17, v18, 0x4AuLL);
      v19 = OUTLINED_FUNCTION_82_3();
      memcpy(v19, v20, 0x4AuLL);

      v21 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.== infix(_:_:)(v21, v22);
      goto LABEL_30;
    case 4uLL:
      if (v3 >> 60 != 4)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_150_0();

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AssetRelease.== infix(_:_:)();
      goto LABEL_30;
    case 5uLL:
      if (v3 >> 60 != 5)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v35, v36, 0x142uLL);
      v37 = OUTLINED_FUNCTION_82_3();
      memcpy(v37, v38, 0x142uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.== infix(_:_:)();
      goto LABEL_30;
    case 6uLL:
      if (v3 >> 60 != 6)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_150_0();

      v45 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.== infix(_:_:)(v45, v46);
      goto LABEL_30;
    case 7uLL:
      if (v3 >> 60 != 7)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v23, v24, 0x6AuLL);
      v25 = OUTLINED_FUNCTION_82_3();
      memcpy(v25, v26, 0x6AuLL);

      v27 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.== infix(_:_:)(v27, v28);
      goto LABEL_30;
    case 8uLL:
      if (v3 >> 60 != 8)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v53, v54, 0x189uLL);
      v55 = OUTLINED_FUNCTION_82_3();
      memcpy(v55, v56, 0x189uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.== infix(_:_:)();
      goto LABEL_30;
    case 9uLL:
      if (v3 >> 60 != 9)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v9, v10, 0x119uLL);
      v11 = OUTLINED_FUNCTION_82_3();
      memcpy(v11, v12, 0x119uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.== infix(_:_:)();
      goto LABEL_30;
    case 0xAuLL:
      if (v3 >> 60 != 10)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v47, v48, 0x72uLL);
      v49 = OUTLINED_FUNCTION_82_3();
      memcpy(v49, v50, 0x72uLL);

      v51 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AssetTransition.== infix(_:_:)(v51, v52);
      goto LABEL_30;
    case 0xBuLL:
      if (v3 >> 60 != 11)
      {
        goto LABEL_32;
      }

      v5 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.== infix(_:_:)(v5, v6);
      goto LABEL_30;
    case 0xCuLL:
      if (v3 >> 60 != 12)
      {
        goto LABEL_32;
      }

      v7 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.== infix(_:_:)(v7, v8);
      goto LABEL_30;
    case 0xDuLL:
      if (v3 >> 60 != 13)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v39, v40, 0x42uLL);
      v41 = OUTLINED_FUNCTION_82_3();
      memcpy(v41, v42, 0x42uLL);

      v43 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.== infix(_:_:)(v43, v44);
LABEL_30:
      OUTLINED_FUNCTION_121();
      goto LABEL_31;
    default:
      if (v3 >> 60)
      {
LABEL_32:
        v2 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_101_4();
        OUTLINED_FUNCTION_151_0();

        v4 = OUTLINED_FUNCTION_64_3();
        static GenerativeFunctionsInstrumentationMetadata.GenericError.== infix(_:_:)(v4);
        OUTLINED_FUNCTION_121();
LABEL_31:
      }

      return v2 & 1;
  }
}

uint64_t GenerativeFunctionsInstrumentationMetadata.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(*v7 >> 60)
  {
    case 1:
      v56 = OUTLINED_FUNCTION_30_1();
      v58 = memcpy(v56, v57, 0x59uLL);
      v66 = OUTLINED_FUNCTION_44_5(v58, v59, v60, v61, v62, v63, v64, v65, v117);
      memcpy(v66, v67, 0x59uLL);
      sub_1934B15D4();
      break;
    case 2:
      v20 = OUTLINED_FUNCTION_30_1();
      v22 = memcpy(v20, v21, 0x299uLL);
      v30 = OUTLINED_FUNCTION_44_5(v22, v23, v24, v25, v26, v27, v28, v29, v117);
      memcpy(v30, v31, 0x299uLL);
      sub_1934B1580();
      break;
    case 3:
      v32 = OUTLINED_FUNCTION_30_1();
      v34 = memcpy(v32, v33, 0x4AuLL);
      v42 = OUTLINED_FUNCTION_44_5(v34, v35, v36, v37, v38, v39, v40, v41, v117);
      memcpy(v42, v43, 0x4AuLL);
      sub_1934B152C();
      break;
    case 4:
      sub_1934B14D8();
      break;
    case 5:
      v68 = OUTLINED_FUNCTION_30_1();
      v70 = memcpy(v68, v69, 0x142uLL);
      v78 = OUTLINED_FUNCTION_44_5(v70, v71, v72, v73, v74, v75, v76, v77, v117);
      memcpy(v78, v79, 0x142uLL);
      sub_1934B1484();
      break;
    case 6:
      sub_1934B1430();
      break;
    case 7:
      v44 = OUTLINED_FUNCTION_30_1();
      v46 = memcpy(v44, v45, 0x6AuLL);
      v54 = OUTLINED_FUNCTION_44_5(v46, v47, v48, v49, v50, v51, v52, v53, v117);
      memcpy(v54, v55, 0x6AuLL);
      sub_1934B13DC();
      break;
    case 8:
      v104 = OUTLINED_FUNCTION_30_1();
      v106 = memcpy(v104, v105, 0x189uLL);
      v114 = OUTLINED_FUNCTION_44_5(v106, v107, v108, v109, v110, v111, v112, v113, v117);
      memcpy(v114, v115, 0x189uLL);
      sub_1934B1388();
      break;
    case 9:
      v8 = OUTLINED_FUNCTION_30_1();
      v10 = memcpy(v8, v9, 0x119uLL);
      v18 = OUTLINED_FUNCTION_44_5(v10, v11, v12, v13, v14, v15, v16, v17, v117);
      memcpy(v18, v19, 0x119uLL);
      sub_1934B1334();
      break;
    case 0xALL:
      v92 = OUTLINED_FUNCTION_30_1();
      v94 = memcpy(v92, v93, 0x72uLL);
      v102 = OUTLINED_FUNCTION_44_5(v94, v95, v96, v97, v98, v99, v100, v101, v117);
      memcpy(v102, v103, 0x72uLL);
      sub_1934B12E0();
      break;
    case 0xBLL:
      sub_1934B128C();
      break;
    case 0xCLL:
      sub_1934B1238();
      break;
    case 0xDLL:
      v80 = OUTLINED_FUNCTION_30_1();
      v82 = memcpy(v80, v81, 0x42uLL);
      v90 = OUTLINED_FUNCTION_44_5(v82, v83, v84, v85, v86, v87, v88, v89, v117);
      memcpy(v90, v91, 0x42uLL);
      sub_1934B11E4();
      break;
    default:
      sub_1934B1628();
      break;
  }

  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x6E696D6165727453;
  }

  return 0x746F6853656E4FLL;
}

uint64_t sub_1934A9928()
{
  OUTLINED_FUNCTION_91_0();
  v1 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_105_1();
  if (!(!v11 & v10))
  {
    OUTLINED_FUNCTION_33_5((v9 > 1), v6, v7, v8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_95_2(v5, v6, v7, v8);
  if (v17 != v18)
  {
    OUTLINED_FUNCTION_39_2((v16 > 1), v13, v14, v15);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_92_2(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v19 = OUTLINED_FUNCTION_33_5((v23 > 1), v20, v21, v22);
    v22 = v19;
  }

  OUTLINED_FUNCTION_160_1(v19, v20, v21, v22);
  *(v24 + 32) = v0;
  *(v24 + 40) = v0;
  return v25;
}

void _s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO16MMExecuteRequestV0I4TypeOyAGSgSScfC_0()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x746F6853656E4FLL && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x746F6853656E4FLL) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x6E696D6165727453 && v0 == 0xE900000000000067)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x6E696D6165727453, 0xE900000000000067);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v172 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v172, v173, v174, v175, &qword_1EAE3B0D8, &qword_193952638);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v176 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v176, v177, v178, v179, &qword_1EAE3B0D8, &qword_193952638);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v180, v181, v182, v183, v184, v185);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v186 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v186, v187, v188, v189, &qword_1EAE3B0D8, &qword_193952638);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v190 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v190, v191, v192, v193, &qword_1EAE3B0D8, &qword_193952638);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v194 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v194, v195, v196, v197, &qword_1EAE3B0D8, &qword_193952638);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v198 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v198, v199, v200, v201, &qword_1EAE3B0D8, &qword_193952638);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v202 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v202, v203, v204, v205, &qword_1EAE3B0D8, &qword_193952638);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v206 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v206, v207, v208, v209, &qword_1EAE3B0D8, &qword_193952638);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v210 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v210, v211, v212, v213, &qword_1EAE3B0D8, &qword_193952638);
    v59 = v56;
  }

  OUTLINED_FUNCTION_50(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v214 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_85(v214, v215, v216, v217, &qword_1EAE3B0D8, &qword_193952638);
    v65 = v62;
  }

  OUTLINED_FUNCTION_47_5(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  OUTLINED_FUNCTION_149_1();
  if (!(v19 ^ v20 | v13))
  {
    v218 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_84_2(v218, v219, v220, v221, &qword_1EAE3B0D8, &qword_193952638);
    v71 = v68;
  }

  OUTLINED_FUNCTION_50(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  OUTLINED_FUNCTION_148_0();
  if (!(v19 ^ v20 | v13))
  {
    v222 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_85(v222, v223, v224, v225, &qword_1EAE3B0D8, &qword_193952638);
    v77 = v74;
  }

  OUTLINED_FUNCTION_47_5(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79);
  OUTLINED_FUNCTION_147_1();
  if (!(v19 ^ v20 | v13))
  {
    v226 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_84_2(v226, v227, v228, v229, &qword_1EAE3B0D8, &qword_193952638);
    v83 = v80;
  }

  OUTLINED_FUNCTION_50(v80, v81, v82, v83);
  OUTLINED_FUNCTION_4(v85);
  OUTLINED_FUNCTION_146_1();
  if (!(v19 ^ v20 | v13))
  {
    v230 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_85(v230, v231, v232, v233, &qword_1EAE3B0D8, &qword_193952638);
    v89 = v86;
  }

  OUTLINED_FUNCTION_47_5(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91);
  OUTLINED_FUNCTION_145();
  if (!(v19 ^ v20 | v13))
  {
    v234 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_84_2(v234, v235, v236, v237, &qword_1EAE3B0D8, &qword_193952638);
    v95 = v92;
  }

  OUTLINED_FUNCTION_50(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97);
  if (v0 + 17 > (v102 >> 1))
  {
    v238 = OUTLINED_FUNCTION_39(v102);
    v98 = OUTLINED_FUNCTION_85(v238, v239, v240, v241, &qword_1EAE3B0D8, &qword_193952638);
    v101 = v98;
  }

  OUTLINED_FUNCTION_47_5(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103);
  if (v0 + 18 > (v108 >> 1))
  {
    v242 = OUTLINED_FUNCTION_39(v108);
    v104 = OUTLINED_FUNCTION_84_2(v242, v243, v244, v245, &qword_1EAE3B0D8, &qword_193952638);
    v107 = v104;
  }

  OUTLINED_FUNCTION_50(v104, v105, v106, v107);
  OUTLINED_FUNCTION_4(v109);
  if (v0 + 19 > (v114 >> 1))
  {
    v246 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v246, v247, v248, v249, &qword_1EAE3B0D8, &qword_193952638);
    v113 = v110;
  }

  OUTLINED_FUNCTION_47_5(v110, v111, v112, v113);
  OUTLINED_FUNCTION_4(v115);
  if (v0 + 20 > (v120 >> 1))
  {
    v250 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v250, v251, v252, v253, &qword_1EAE3B0D8, &qword_193952638);
    v119 = v116;
  }

  OUTLINED_FUNCTION_50(v116, v117, v118, v119);
  OUTLINED_FUNCTION_4(v121);
  if (v0 + 21 > (v126 >> 1))
  {
    v254 = OUTLINED_FUNCTION_39(v126);
    v122 = OUTLINED_FUNCTION_85(v254, v255, v256, v257, &qword_1EAE3B0D8, &qword_193952638);
    v125 = v122;
  }

  OUTLINED_FUNCTION_47_5(v122, v123, v124, v125);
  OUTLINED_FUNCTION_4(v127);
  if (v0 + 22 > (v132 >> 1))
  {
    v258 = OUTLINED_FUNCTION_39(v132);
    v128 = OUTLINED_FUNCTION_84_2(v258, v259, v260, v261, &qword_1EAE3B0D8, &qword_193952638);
    v131 = v128;
  }

  OUTLINED_FUNCTION_50(v128, v129, v130, v131);
  OUTLINED_FUNCTION_4(v133);
  if (v0 + 23 > (v138 >> 1))
  {
    v262 = OUTLINED_FUNCTION_39(v138);
    v134 = OUTLINED_FUNCTION_85(v262, v263, v264, v265, &qword_1EAE3B0D8, &qword_193952638);
    v137 = v134;
  }

  OUTLINED_FUNCTION_47_5(v134, v135, v136, v137);
  OUTLINED_FUNCTION_4(v139);
  if (v0 + 24 > (v144 >> 1))
  {
    v266 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_84_2(v266, v267, v268, v269, &qword_1EAE3B0D8, &qword_193952638);
    v143 = v140;
  }

  OUTLINED_FUNCTION_50(v140, v141, v142, v143);
  OUTLINED_FUNCTION_4(v145);
  if (v0 + 25 > (v150 >> 1))
  {
    v270 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_85(v270, v271, v272, v273, &qword_1EAE3B0D8, &qword_193952638);
    v149 = v146;
  }

  OUTLINED_FUNCTION_47_5(v146, v147, v148, v149);
  OUTLINED_FUNCTION_4(v151);
  if (v0 + 26 > (v156 >> 1))
  {
    v274 = OUTLINED_FUNCTION_39(v156);
    v152 = OUTLINED_FUNCTION_84_2(v274, v275, v276, v277, &qword_1EAE3B0D8, &qword_193952638);
    v155 = v152;
  }

  OUTLINED_FUNCTION_50(v152, v153, v154, v155);
  OUTLINED_FUNCTION_4(v157);
  if (v0 + 27 > (v162 >> 1))
  {
    v278 = OUTLINED_FUNCTION_39(v162);
    v158 = OUTLINED_FUNCTION_85(v278, v279, v280, v281, &qword_1EAE3B0D8, &qword_193952638);
    v161 = v158;
  }

  OUTLINED_FUNCTION_47_5(v158, v159, v160, v161);
  OUTLINED_FUNCTION_4(v163);
  if (v0 + 28 > (v168 >> 1))
  {
    v282 = OUTLINED_FUNCTION_39(v168);
    v164 = OUTLINED_FUNCTION_84_2(v282, v283, v284, v285, &qword_1EAE3B0D8, &qword_193952638);
    v167 = v164;
  }

  OUTLINED_FUNCTION_50(v164, v165, v166, v167);
  return OUTLINED_FUNCTION_38_1(v169, v170);
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 0x17:
      case 0x19:
        OUTLINED_FUNCTION_38();
        break;
      case 2:
      case 5:
        OUTLINED_FUNCTION_122_1(29);
        break;
      case 3:
      case 0x13:
      case 0x14:
        OUTLINED_FUNCTION_77_6(29);
        break;
      case 4:
      case 0x16:
        OUTLINED_FUNCTION_75_7(29);
        break;
      case 6:
        OUTLINED_FUNCTION_124_1(29);
        break;
      case 8:
      case 0xALL:
      case 0xBLL:
      case 0xDLL:
      case 0xELL:
      case 0xFLL:
      case 0x11:
      case 0x12:
      case 0x1ALL:
        return;
      case 9:
        OUTLINED_FUNCTION_127_0(29);
        break;
      case 0xCLL:
      case 0x10:
        OUTLINED_FUNCTION_74_3(29);
        break;
      case 0x15:
      case 0x18:
        OUTLINED_FUNCTION_126_0(29);
        break;
      default:
        OUTLINED_FUNCTION_123_0(29);
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0xD000000000000015 && 0x8000000193A157C0 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A157C0) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_43_6();
      v8 = v4 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(29, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0xD00000000000001BLL && 0x8000000193A15780 == v0;
        if (v9 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, 0x8000000193A15780) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 0xD000000000000020 && 0x8000000193A15750 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, 0x8000000193A15750) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == 0xD00000000000001FLL && 0x8000000193A15730 == v0;
            if (v11 || (OUTLINED_FUNCTION_0_9(0xD00000000000001FLL, 0x8000000193A15730) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_96_2();
              v13 = v4 && v12 == v0;
              if (v13 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v12) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v14 = OUTLINED_FUNCTION_141_2();
                v16 = v4 && v15 == v0;
                if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_79_0();
                  v18 = v4 && v17 == v0;
                  if (v18 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v17) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v19 = v1 == 0x61436D6165727453 && v0 == 0xEE0064656C65636ELL;
                    if (v19 || (OUTLINED_FUNCTION_0_9(0x61436D6165727453, 0xEE0064656C65636ELL) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v20 = OUTLINED_FUNCTION_139_1();
                      v22 = v4 && v21 == v0;
                      if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v23 = v1 == 0xD00000000000001CLL && 0x8000000193A15690 == v0;
                        if (v23 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, 0x8000000193A15690) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v24 = v1 == 0x6F6C617461436F4ELL && v0 == 0xE900000000000067;
                          if (v24 || (OUTLINED_FUNCTION_0_9(0x6F6C617461436F4ELL, 0xE900000000000067) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v25 = v1 == 0xD000000000000019 && 0x8000000193A15670 == v0;
                            if (v25 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, 0x8000000193A15670) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v26 = v1 == 0xD00000000000001ELL && 0x8000000193A15650 == v0;
                              if (v26 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, 0x8000000193A15650) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v27 = v1 == 0xD000000000000011 && 0x8000000193A15630 == v0;
                                if (v27 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A15630) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_96_2();
                                  v29 = v4 && v28 == v0;
                                  if (v29 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, v28) & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_79_0();
                                    v31 = v4 && v30 == v0;
                                    if (v31 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v30) & 1) != 0)
                                    {

                                      v5 = 16;
                                    }

                                    else
                                    {
                                      v32 = v1 == 0xD000000000000026 && 0x8000000193A155C0 == v0;
                                      if (v32 || (OUTLINED_FUNCTION_0_9(0xD000000000000026, 0x8000000193A155C0) & 1) != 0)
                                      {

                                        v5 = 17;
                                      }

                                      else
                                      {
                                        v33 = v1 == 0xD000000000000025 && 0x8000000193A15590 == v0;
                                        if (v33 || (OUTLINED_FUNCTION_0_9(0xD000000000000025, 0x8000000193A15590) & 1) != 0)
                                        {

                                          v5 = 18;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_60();
                                          v35 = v4 && v34 == v0;
                                          if (v35 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, v34) & 1) != 0)
                                          {

                                            v5 = 19;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_60();
                                            v37 = v4 && v36 == v0;
                                            if (v37 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, v36) & 1) != 0)
                                            {

                                              v5 = 20;
                                            }

                                            else
                                            {
                                              v38 = v1 == 0xD000000000000023 && 0x8000000193A15500 == v0;
                                              if (v38 || (OUTLINED_FUNCTION_0_9(0xD000000000000023, 0x8000000193A15500) & 1) != 0)
                                              {

                                                v5 = 21;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_26_4();
                                                v40 = v4 && v39 == v0;
                                                if (v40 || (OUTLINED_FUNCTION_0_9(0xD00000000000001FLL, v39) & 1) != 0)
                                                {

                                                  v5 = 22;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_43_6();
                                                  v42 = v4 && v41 == v0;
                                                  if (v42 || (OUTLINED_FUNCTION_25_7(29, v41) & 1) != 0)
                                                  {

                                                    v5 = 23;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_60();
                                                    v44 = v4 && v43 == v0;
                                                    if (v44 || (OUTLINED_FUNCTION_0_9(0xD000000000000023, v43) & 1) != 0)
                                                    {

                                                      v5 = 24;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_43_6();
                                                      v46 = v4 && v45 == v0;
                                                      if (v46 || (OUTLINED_FUNCTION_25_7(29, v45) & 1) != 0)
                                                      {

                                                        v5 = 25;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_79_0();
                                                        if (v4 && v47 == v0)
                                                        {

                                                          v5 = 26;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_0_9(0xD000000000000025, v47);
                                                          OUTLINED_FUNCTION_89();
                                                          v5 = 26;
                                                          if ((v1 & 1) == 0)
                                                          {
                                                            v5 = 0;
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
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x4C79646165726C41;
  if (*v0 != 1)
  {
    v1 = 0x6C69614664616F4CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646564616F4CLL;
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_159_1();
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(v6, 0xE600000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_58_4();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_106_4();
        if (v4 && v0 == v12)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_9(v11, v12);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t sub_1934AAC04()
{
  OUTLINED_FUNCTION_91_0();
  v3 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_105_1();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_33_5((v11 > 1), v8, v9, v10);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_95_2(v7, v8, v9, v10);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39_2((v18 > 1), v15, v16, v17);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_92_2(v14, v15, v16, v17);
  if (v19 != v20)
  {
    v21 = OUTLINED_FUNCTION_33_5((v25 > 1), v22, v23, v24);
    v24 = v21;
  }

  OUTLINED_FUNCTION_160_1(v21, v22, v23, v24);
  *(v29 + 32) = v2;
  *(v29 + 40) = v2;
  v30 = *(v28 + 3);
  if (v1 + 4 > (v30 >> 1))
  {
    v28 = OUTLINED_FUNCTION_39_2((v30 > 1), v26, v27, v28);
  }

  *(v28 + 2) = v1 + 4;
  return OUTLINED_FUNCTION_38_1(v28, &v28[16 * v0]);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x68437963696C6F50;
  if (*v0 != 1)
  {
    v1 = 0x6D726177657250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696E4972657355;
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_31_10();
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_34_4();
      v11 = v1 == v9 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_61_2();
        if (v4 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_22_7(v12);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_1934AAE44()
{
  OUTLINED_FUNCTION_91_0();
  v1 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_63_2();
  if (!(!v11 & v10))
  {
    OUTLINED_FUNCTION_33_5((v9 > 1), v6, v7, v8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_53_3(v5, v6, v7, v8);
  if (v17 != v18)
  {
    OUTLINED_FUNCTION_39_2((v16 > 1), v13, v14, v15);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_46_2(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v19 = OUTLINED_FUNCTION_51((v23 > 1), v0, v21, v22);
    v22 = v19;
  }

  OUTLINED_FUNCTION_45_0(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v24 = OUTLINED_FUNCTION_33_5((v28 > 1), v25, v26, v27);
    v27 = v24;
  }

  OUTLINED_FUNCTION_32(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v29 = OUTLINED_FUNCTION_39_2((v33 > 1), v30, v31, v32);
    v32 = v29;
  }

  OUTLINED_FUNCTION_62_8(v29, v30, v31, v32);
  return v34;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x646564616F6C6E55;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_113_1();
      break;
    case 2:
      result = 2037609794;
      break;
    case 3:
      result = OUTLINED_FUNCTION_111_4();
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_93_2(0x64616F6C6E55);
    v7 = v4 && v0 == 0xE800000000000000;
    if (v7 || (OUTLINED_FUNCTION_29_2(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_113_1();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = v1 == 2037609794 && v0 == 0xE400000000000000;
        if (v11 || (OUTLINED_FUNCTION_0_9(2037609794, 0xE400000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_111_4();
          if (v1 == v12 && v0 == v13)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v12, v13);
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_102_0();
            if (v4)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v63 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v63, v64, v65, v66, &qword_1EAE3B0B8, &qword_193952618);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v67 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v67, v68, v69, v70, &qword_1EAE3B0B8, &qword_193952618);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v71, v72, v73, v74, v75, v76);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v77 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v77, v78, v79, v80, &qword_1EAE3B0B8, &qword_193952618);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v81 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v81, v82, v83, v84, &qword_1EAE3B0B8, &qword_193952618);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v85 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v85, v86, v87, v88, &qword_1EAE3B0B8, &qword_193952618);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v89 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v89, v90, v91, v92, &qword_1EAE3B0B8, &qword_193952618);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v93 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v93, v94, v95, v96, &qword_1EAE3B0B8, &qword_193952618);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v97 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v97, v98, v99, v100, &qword_1EAE3B0B8, &qword_193952618);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v101 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v101, v102, v103, v104, &qword_1EAE3B0B8, &qword_193952618);
    v58 = v55;
  }

  OUTLINED_FUNCTION_50(v55, v56, v57, v58);
  return OUTLINED_FUNCTION_38_1(v60, v61);
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_34_4();
        break;
      case 2:
        OUTLINED_FUNCTION_76_3(16);
        break;
      case 3:
        OUTLINED_FUNCTION_38();
        break;
      case 4:
        OUTLINED_FUNCTION_80_5();
        break;
      case 5:
        OUTLINED_FUNCTION_75_7(16);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_31_10();
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_34_4();
      v11 = v1 == v9 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_52_5();
        v13 = v1 == 20 && v12 == v0;
        if (v13 || (OUTLINED_FUNCTION_0_9(20, v12) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v15 = v4 && v14 == v0;
          if (v15 || (OUTLINED_FUNCTION_25_7(16, v14) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v16 = OUTLINED_FUNCTION_78_5();
            v18 = v4 && v17 == v0;
            if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v19 = OUTLINED_FUNCTION_138();
              v21 = v4 && v20 == v0;
              if (v21 || (OUTLINED_FUNCTION_0_9(v19, v20) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v22 = OUTLINED_FUNCTION_142_0();
                v24 = v4 && v23 == v0;
                if (v24 || (OUTLINED_FUNCTION_0_9(v22, v23) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v25 = OUTLINED_FUNCTION_140();
                  v27 = v4 && v26 == v0;
                  if (v27 || (OUTLINED_FUNCTION_0_9(v25, v26) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v28 = OUTLINED_FUNCTION_54_3();
                    if (v4 && v29 == v0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9(v28, v29);
                      OUTLINED_FUNCTION_89();
                      v5 = 8;
                      if ((v1 & 1) == 0)
                      {
                        v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v69 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v69, v70, v71, v72, &qword_1EAE3B0B0, &qword_193952610);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v73 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v73, v74, v75, v76, &qword_1EAE3B0B0, &qword_193952610);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v77, v78, v79, v80, v81, v82);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v83 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v83, v84, v85, v86, &qword_1EAE3B0B0, &qword_193952610);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v87 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v87, v88, v89, v90, &qword_1EAE3B0B0, &qword_193952610);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v91 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v91, v92, v93, v94, &qword_1EAE3B0B0, &qword_193952610);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v95 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v95, v96, v97, v98, &qword_1EAE3B0B0, &qword_193952610);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v99 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v99, v100, v101, v102, &qword_1EAE3B0B0, &qword_193952610);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v103 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v103, v104, v105, v106, &qword_1EAE3B0B0, &qword_193952610);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v107 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v107, v108, v109, v110, &qword_1EAE3B0B0, &qword_193952610);
    v58 = v55;
  }

  OUTLINED_FUNCTION_50(v55, v56, v57, v58);
  OUTLINED_FUNCTION_4(v60);
  OUTLINED_FUNCTION_99_3();
  if (!(v18 ^ v19 | v12))
  {
    v111 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v111, v112, v113, v114, &qword_1EAE3B0B0, &qword_193952610);
    v64 = v61;
  }

  OUTLINED_FUNCTION_47_5(v61, v62, v63, v64);
  OUTLINED_FUNCTION_42_12(v66);
  return v67;
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_34_4();
        break;
      case 2:
        OUTLINED_FUNCTION_76_3(16);
        break;
      case 3:
        OUTLINED_FUNCTION_38();
        break;
      case 5:
        OUTLINED_FUNCTION_80_5();
        break;
      case 6:
        OUTLINED_FUNCTION_75_7(16);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_31_10();
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_34_4();
      v11 = v1 == v9 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_52_5();
        v13 = v1 == 20 && v12 == v0;
        if (v13 || (OUTLINED_FUNCTION_0_9(20, v12) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v15 = v4 && v14 == v0;
          if (v15 || (OUTLINED_FUNCTION_25_7(16, v14) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v16 = OUTLINED_FUNCTION_61_2();
            v17 = v4 && v0 == 0xE700000000000000;
            if (v17 || (OUTLINED_FUNCTION_22_7(v16) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v18 = OUTLINED_FUNCTION_78_5();
              v20 = v4 && v19 == v0;
              if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v21 = OUTLINED_FUNCTION_138();
                v23 = v4 && v22 == v0;
                if (v23 || (OUTLINED_FUNCTION_0_9(v21, v22) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v24 = OUTLINED_FUNCTION_140();
                  v26 = v4 && v25 == v0;
                  if (v26 || (OUTLINED_FUNCTION_0_9(v24, v25) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v27 = OUTLINED_FUNCTION_54_3();
                    v29 = v4 && v28 == v0;
                    if (v29 || (OUTLINED_FUNCTION_0_9(v27, v28) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v30 = OUTLINED_FUNCTION_142_0();
                      if (v4 && v31 == v0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_0_9(v30, v31);
                        OUTLINED_FUNCTION_89();
                        v5 = 9;
                        if ((v1 & 1) == 0)
                        {
                          v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return 0x6572756C696146;
  }

  return 0x73736563637553;
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_98_3();
    v7 = v4 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_22_7(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x6572756C696146 && v0 == 0xE700000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7(0x6572756C696146);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x4D63696D616E7944;
  if (*v0 != 1)
  {
    v1 = 0x646564616F4CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646564616F6C6E55;
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_93_2(0x64616F6C6E55);
    v7 = v4 && v0 == 0xE800000000000000;
    if (v7 || (OUTLINED_FUNCTION_29_2(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0x4D63696D616E7944 && v0 == 0xEB0000000065646FLL;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x4D63696D616E7944, 0xEB0000000065646FLL) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_159_1();
        if (v4 && v0 == 0xE600000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_9(v9, 0xE600000000000000);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_133_2();
        break;
      case 4:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7473694C796E6544 && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_29_2(0x7473694C796E6544) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 5461583 && v0 == 0xE300000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(5461583, 0xE300000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_133_2();
        v10 = v1 == v8 && v0 == v9;
        if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_52_5();
          v12 = v1 == 29 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_0_9(29, v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_26_4();
            v14 = v4 && v13 == v0;
            if (v14 || (OUTLINED_FUNCTION_25_7(18, v13) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v15 = OUTLINED_FUNCTION_54_3();
              if (v4 && v16 == v0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_0_9(v15, v16);
                OUTLINED_FUNCTION_89();
                v5 = 5;
                if ((v1 & 1) == 0)
                {
                  v5 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x696C707041746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x64657463656A6552;
      break;
    case 2:
      result = 0x6465766F6D6552;
      break;
    case 3:
      result = 0x646563616C706552;
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x696C707041746F4ELL && v0 == 0xEA00000000006465;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x696C707041746F4ELL, 0xEA00000000006465) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_93_2(0x7463656A6552);
      v8 = v4 && v0 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_29_2(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x6465766F6D6552 && v0 == 0xE700000000000000;
        if (v9 || (OUTLINED_FUNCTION_22_7(0x6465766F6D6552) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = OUTLINED_FUNCTION_93_2(0x63616C706552);
          if (v4 && v0 == 0xE800000000000000)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_29_2(v10);
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_102_0();
            if (v4)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v130 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v130, v131, v132, v133, &qword_1EAE3B088, &qword_1939525E8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v134 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v134, v135, v136, v137, &qword_1EAE3B088, &qword_1939525E8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v138, v139, v140, v141, v142, v143);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v144 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v144, v145, v146, v147, &qword_1EAE3B088, &qword_1939525E8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v148 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v148, v149, v150, v151, &qword_1EAE3B088, &qword_1939525E8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v152 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v152, v153, v154, v155, &qword_1EAE3B088, &qword_1939525E8);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v156 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v156, v157, v158, v159, &qword_1EAE3B088, &qword_1939525E8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v160 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v160, v161, v162, v163, &qword_1EAE3B088, &qword_1939525E8);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v164 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v164, v165, v166, v167, &qword_1EAE3B088, &qword_1939525E8);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v168 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v168, v169, v170, v171, &qword_1EAE3B088, &qword_1939525E8);
    v59 = v56;
  }

  OUTLINED_FUNCTION_50(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v172 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_85(v172, v173, v174, v175, &qword_1EAE3B088, &qword_1939525E8);
    v65 = v62;
  }

  OUTLINED_FUNCTION_47_5(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  OUTLINED_FUNCTION_149_1();
  if (!(v19 ^ v20 | v13))
  {
    v176 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_84_2(v176, v177, v178, v179, &qword_1EAE3B088, &qword_1939525E8);
    v71 = v68;
  }

  OUTLINED_FUNCTION_50(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  OUTLINED_FUNCTION_148_0();
  if (!(v19 ^ v20 | v13))
  {
    v180 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_85(v180, v181, v182, v183, &qword_1EAE3B088, &qword_1939525E8);
    v77 = v74;
  }

  OUTLINED_FUNCTION_47_5(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79);
  OUTLINED_FUNCTION_147_1();
  if (!(v19 ^ v20 | v13))
  {
    v184 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_84_2(v184, v185, v186, v187, &qword_1EAE3B088, &qword_1939525E8);
    v83 = v80;
  }

  OUTLINED_FUNCTION_50(v80, v81, v82, v83);
  OUTLINED_FUNCTION_4(v85);
  OUTLINED_FUNCTION_146_1();
  if (!(v19 ^ v20 | v13))
  {
    v188 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_85(v188, v189, v190, v191, &qword_1EAE3B088, &qword_1939525E8);
    v89 = v86;
  }

  OUTLINED_FUNCTION_47_5(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91);
  OUTLINED_FUNCTION_145();
  if (!(v19 ^ v20 | v13))
  {
    v192 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_84_2(v192, v193, v194, v195, &qword_1EAE3B088, &qword_1939525E8);
    v95 = v92;
  }

  OUTLINED_FUNCTION_50(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97);
  if (v0 + 17 > (v102 >> 1))
  {
    v196 = OUTLINED_FUNCTION_39(v102);
    v98 = OUTLINED_FUNCTION_85(v196, v197, v198, v199, &qword_1EAE3B088, &qword_1939525E8);
    v101 = v98;
  }

  OUTLINED_FUNCTION_47_5(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103);
  if (v0 + 18 > (v108 >> 1))
  {
    v200 = OUTLINED_FUNCTION_39(v108);
    v104 = OUTLINED_FUNCTION_84_2(v200, v201, v202, v203, &qword_1EAE3B088, &qword_1939525E8);
    v107 = v104;
  }

  OUTLINED_FUNCTION_50(v104, v105, v106, v107);
  OUTLINED_FUNCTION_4(v109);
  if (v0 + 19 > (v114 >> 1))
  {
    v204 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v204, v205, v206, v207, &qword_1EAE3B088, &qword_1939525E8);
    v113 = v110;
  }

  OUTLINED_FUNCTION_47_5(v110, v111, v112, v113);
  OUTLINED_FUNCTION_4(v115);
  if (v0 + 20 > (v120 >> 1))
  {
    v208 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v208, v209, v210, v211, &qword_1EAE3B088, &qword_1939525E8);
    v119 = v116;
  }

  OUTLINED_FUNCTION_50(v116, v117, v118, v119);
  OUTLINED_FUNCTION_4(v121);
  if (v0 + 21 > (v126 >> 1))
  {
    v212 = OUTLINED_FUNCTION_39(v126);
    v122 = OUTLINED_FUNCTION_85(v212, v213, v214, v215, &qword_1EAE3B088, &qword_1939525E8);
    v125 = v122;
  }

  OUTLINED_FUNCTION_47_5(v122, v123, v124, v125);
  OUTLINED_FUNCTION_42_12(v127);
  return v128;
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 4:
        OUTLINED_FUNCTION_132_0();
        break;
      case 6:
        OUTLINED_FUNCTION_118_1();
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      case 9:
        OUTLINED_FUNCTION_131_2();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_117_4();
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_108_7();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_120_0();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_109_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6669636570736E55 && v0 == 0xEB00000000646569;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6669636570736E55, 0xEB00000000646569) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 1701208403 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(1701208403, 0xE400000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x7367757244 && v0 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_0_9(0x7367757244, 0xE500000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 1702125896 && v0 == 0xE400000000000000;
          if (v9 || (OUTLINED_FUNCTION_0_9(1702125896, 0xE400000000000000) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = OUTLINED_FUNCTION_132_0();
            v12 = v1 == v10 && v0 == v11;
            if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v13 = v1 == 0x65636E656C6F6956 && v0 == 0xE800000000000000;
              if (v13 || (OUTLINED_FUNCTION_29_2(0x65636E656C6F6956) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v14 = OUTLINED_FUNCTION_118_1();
                v16 = v1 == v14 && v0 == v15;
                if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_26_4();
                  v18 = v4 && v17 == v0;
                  if (v18 || (OUTLINED_FUNCTION_25_7(20, v17) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v19 = v1 == 1701998407 && v0 == 0xE400000000000000;
                    if (v19 || (OUTLINED_FUNCTION_0_9(1701998407, 0xE400000000000000) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v20 = OUTLINED_FUNCTION_131_2();
                      v22 = v1 == v20 && v0 == v21;
                      if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v23 = OUTLINED_FUNCTION_117_4();
                        v25 = v1 == v23 && v0 == v24;
                        if (v25 || (OUTLINED_FUNCTION_0_9(v23, v24) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v26 = OUTLINED_FUNCTION_108_7();
                          v28 = v1 == v26 && v0 == v27;
                          if (v28 || (OUTLINED_FUNCTION_0_9(v26, v27) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v29 = v1 == 0x736E6F70616557 && v0 == 0xE700000000000000;
                            if (v29 || (OUTLINED_FUNCTION_22_7(0x736E6F70616557) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v30 = OUTLINED_FUNCTION_120_0();
                              v32 = v1 == v30 && v0 == v31;
                              if (v32 || (OUTLINED_FUNCTION_0_9(v30, v31) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v33 = OUTLINED_FUNCTION_109_2();
                                v35 = v1 == v33 && v0 == v34;
                                if (v35 || (OUTLINED_FUNCTION_0_9(v33, v34) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v36 = v1 == 0xD000000000000026 && 0x8000000193A15920 == v0;
                                  if (v36 || (OUTLINED_FUNCTION_0_9(0xD000000000000026, 0x8000000193A15920) & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    v37 = v1 == 0x6D726148666C6553 && v0 == 0xE800000000000000;
                                    if (v37 || (OUTLINED_FUNCTION_29_2(0x6D726148666C6553) & 1) != 0)
                                    {

                                      v5 = 16;
                                    }

                                    else
                                    {
                                      v38 = v1 == 0x6369786F54 && v0 == 0xE500000000000000;
                                      if (v38 || (OUTLINED_FUNCTION_0_9(0x6369786F54, 0xE500000000000000) & 1) != 0)
                                      {

                                        v5 = 17;
                                      }

                                      else
                                      {
                                        v39 = v1 == 0x656D737361726148 && v0 == 0xEA0000000000746ELL;
                                        if (v39 || (OUTLINED_FUNCTION_0_9(0x656D737361726148, 0xEA0000000000746ELL) & 1) != 0)
                                        {

                                          v5 = 18;
                                        }

                                        else if (v1 == 0x6974736567677553 && v0 == 0xEA00000000006576)
                                        {

                                          v5 = 19;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_0_9(0x6974736567677553, 0xEA00000000006576);
                                          OUTLINED_FUNCTION_89();
                                          v5 = 19;
                                          if ((v1 & 1) == 0)
                                          {
                                            v5 = 0;
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
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x65766F6D6552;
  if (*v0 != 1)
  {
    v1 = 0x6D726177657250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579265;
  }
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 6579265 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(6579265, 0xE300000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x65766F6D6552 && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x65766F6D6552, 0xE600000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_61_2();
        if (v4 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_22_7(v8);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.init(_:)()
{
  v1 = OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7(v1) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_98_3();
    v6 = v3 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(v5) & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(26, v7) & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v10 = v3 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_25_7(26, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_137();
          if (v3 && v12 == v0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v11, v12);
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_102_0();
            if (v3)
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6369706F54;
  switch(*v0)
  {
    case 1:
      result = 0x656E694C706F54;
      break;
    case 2:
      result = 0x736973706F6E7953;
      break;
    case 3:
      result = OUTLINED_FUNCTION_107_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_115_2();
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6369706F54 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6369706F54, 0xE500000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x656E694C706F54 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x656E694C706F54) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x736973706F6E7953 && v0 == 0xE800000000000000;
        if (v8 || (OUTLINED_FUNCTION_29_2(0x736973706F6E7953) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = OUTLINED_FUNCTION_107_2();
          v11 = v1 == v9 && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = OUTLINED_FUNCTION_115_2();
            if (v1 == v12 && v0 == v13)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(v12, v13);
              OUTLINED_FUNCTION_89();
              v5 = 4;
              if ((v1 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7961646F54;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_114_2();
      break;
    case 2:
      result = OUTLINED_FUNCTION_135_0();
      break;
    case 3:
      result = OUTLINED_FUNCTION_134_1();
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7961646F54 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x7961646F54, 0xE500000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_114_2();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_135_0();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = OUTLINED_FUNCTION_134_1();
          if (v1 == v13 && v0 == v14)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v13, v14);
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_102_0();
            if (v4)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x6D75696D657250;
  }

  return 1701147206;
}

void GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1701147206 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1701147206, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x6D75696D657250 && v0 == 0xE700000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7(0x6D75696D657250);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t static GenerativeFunctionsInstrumentationError.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v53 = OUTLINED_FUNCTION_66_2(v45, v46, v47, v48, v49, v50, v51, v52, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.== infix(_:_:)(v53, v54);
      goto LABEL_16;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_36_8();
      v83 = v24;
      OUTLINED_FUNCTION_35_7();

      v33 = OUTLINED_FUNCTION_66_2(v25, v26, v27, v28, v29, v30, v31, v32, v76, v77, v78, v79, v83);
      static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.== infix(_:_:)(v33, v34);
      goto LABEL_16;
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v43 = OUTLINED_FUNCTION_66_2(v35, v36, v37, v38, v39, v40, v41, v42, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.== infix(_:_:)(v43, v44);
      goto LABEL_16;
    case 4uLL:
      if (v3 >> 61 != 4)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_36_8();
      v82 = v13;
      OUTLINED_FUNCTION_35_7();

      v22 = OUTLINED_FUNCTION_66_2(v14, v15, v16, v17, v18, v19, v20, v21, v76, v77, v78, v79, v82);
      static GenerativeFunctionsInstrumentationError.TokenGenerationError.== infix(_:_:)(v22, v23);
      goto LABEL_16;
    case 5uLL:
      if (v3 >> 61 != 5)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v63 = OUTLINED_FUNCTION_66_2(v55, v56, v57, v58, v59, v60, v61, v62, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.SummarizationError.== infix(_:_:)(v63, v64);
      goto LABEL_16;
    case 6uLL:
      if (v3 >> 61 != 6)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v73 = OUTLINED_FUNCTION_66_2(v65, v66, v67, v68, v69, v70, v71, v72, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.ClassificationError.== infix(_:_:)(v73, v74);
LABEL_16:
      OUTLINED_FUNCTION_121();
      goto LABEL_17;
    default:
      if (v3 >> 61)
      {
LABEL_18:
        v2 = 0;
      }

      else
      {
        v81 = OUTLINED_FUNCTION_101_4().n128_u8[0];
        OUTLINED_FUNCTION_151_0();

        v12 = OUTLINED_FUNCTION_66_2(v4, v5, v6, v7, v8, v9, v10, v11, v76, v77, v78, v79, v81);
        static GenerativeFunctionsInstrumentationError.GenericError.== infix(_:_:)(v12);
        OUTLINED_FUNCTION_121();
LABEL_17:
      }

      return v2 & 1;
  }
}

uint64_t static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_65_5();

      v50 = OUTLINED_FUNCTION_87_2(v42, v43, v44, v45, v46, v47, v48, v49, v52, v53, v54);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError.== infix(_:_:)(v50);
      goto LABEL_12;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_36_8();
      OUTLINED_FUNCTION_20_6();

      v31 = OUTLINED_FUNCTION_87_2(v23, v24, v25, v26, v27, v28, v29, v30, v52, v53, v54);
      static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.== infix(_:_:)(v31, v32);
      goto LABEL_12;
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_65_5();

      v41 = OUTLINED_FUNCTION_87_2(v33, v34, v35, v36, v37, v38, v39, v40, v52, v53, v54);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError.== infix(_:_:)(v41);
      goto LABEL_12;
    case 4uLL:
      if (v3 >> 61 != 4)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_65_5();

      v22 = OUTLINED_FUNCTION_87_2(v14, v15, v16, v17, v18, v19, v20, v21, v52, v53, v54);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UseCaseDisabledError.== infix(_:_:)(v22);
LABEL_12:
      OUTLINED_FUNCTION_121();
      goto LABEL_13;
    default:
      if (v3 >> 61)
      {
LABEL_14:
        v2 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_44_6();
        OUTLINED_FUNCTION_20_6();

        v12 = OUTLINED_FUNCTION_87_2(v4, v5, v6, v7, v8, v9, v10, v11, v52, v53, v54);
        static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.== infix(_:_:)(v12, v13);
        OUTLINED_FUNCTION_121();
LABEL_13:
      }

      return v2 & 1;
  }
}

uint64_t static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        OUTLINED_FUNCTION_44_6();
        OUTLINED_FUNCTION_20_6();

        v13 = OUTLINED_FUNCTION_87_2(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38);
        static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.== infix(_:_:)(v13, v14);
LABEL_9:
        OUTLINED_FUNCTION_143();

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      OUTLINED_FUNCTION_44_6();
      OUTLINED_FUNCTION_20_6();

      v33 = OUTLINED_FUNCTION_87_2(v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, v38);
      static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.== infix(_:_:)(v33, v34);
      goto LABEL_9;
    }

LABEL_11:
    v2 = 0;
    return v2 & 1;
  }

  if (v3 >> 62)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_20_6();

  v23 = OUTLINED_FUNCTION_87_2(v15, v16, v17, v18, v19, v20, v21, v22, v36, v37, v38);
  static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.== infix(_:_:)(v23, v24);
  OUTLINED_FUNCTION_143();

LABEL_10:

  return v2 & 1;
}

uint64_t static GenerativeFunctionsInstrumentationError.SummarizationError.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_70_3();

      v33 = OUTLINED_FUNCTION_66_2(v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, v38, v39, v40);
      v15 = static GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort.== infix(_:_:)(v33);
      goto LABEL_14;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        goto LABEL_21;
      }

      v41 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_35_7();

      v13 = OUTLINED_FUNCTION_66_2(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v41);
      v15 = static GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.== infix(_:_:)(v13, v14);
      goto LABEL_14;
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        goto LABEL_21;
      }

      v4 = static GenerativeFunctionsInstrumentationError.SummarizationError.UseCaseDisabled.== infix(_:_:)();
      goto LABEL_19;
    case 4uLL:
      if (v3 >> 61 != 4)
      {
        goto LABEL_21;
      }

      v4 = static GenerativeFunctionsInstrumentationError.SummarizationError.MissingResponseData.== infix(_:_:)();
      goto LABEL_19;
    case 5uLL:
      if (v3 >> 61 != 5)
      {
        goto LABEL_21;
      }

      v4 = static GenerativeFunctionsInstrumentationError.SummarizationError.UnknownSummarizationStyle.== infix(_:_:)();
      goto LABEL_19;
    case 6uLL:
      if (v3 >> 61 != 6)
      {
        goto LABEL_21;
      }

      v4 = static GenerativeFunctionsInstrumentationError.SummarizationError.UnknownVisualPromptUseCase.== infix(_:_:)();
LABEL_19:
      v2 = v4;
      goto LABEL_20;
    case 7uLL:
      if (v3 >> 61 != 7)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_130_0();

      v24 = OUTLINED_FUNCTION_66_2(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v38, v39, v40);
      v15 = static GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier.== infix(_:_:)(v24);
LABEL_14:
      v34 = v15;

      return v34 & 1;
    default:
      if (v3 >> 61)
      {
LABEL_21:
        v34 = 0;
        return v34 & 1;
      }

      else
      {

        static GenerativeFunctionsInstrumentationError.SummarizationError.UnknownError.== infix(_:_:)();
        OUTLINED_FUNCTION_143();
LABEL_20:

        return v2 & 1;
      }
  }
}

uint64_t static GenerativeFunctionsInstrumentationError.ClassificationError.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 62)
  {
    case 1uLL:
      if (v3 >> 62 != 1)
      {
        goto LABEL_12;
      }

      v2 = static GenerativeFunctionsInstrumentationError.ClassificationError.UseCaseDisabled.== infix(_:_:)();
      goto LABEL_11;
    case 2uLL:
      if (v3 >> 62 != 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_130_0();

      v12 = OUTLINED_FUNCTION_66_2(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
      v13 = static GenerativeFunctionsInstrumentationError.ClassificationError.InvalidModelBundleIdentifier.== infix(_:_:)(v12);
      goto LABEL_8;
    case 3uLL:
      if (v3 >> 62 != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_70_3();

      v22 = OUTLINED_FUNCTION_66_2(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26, v27, v28, v29);
      v13 = static GenerativeFunctionsInstrumentationError.ClassificationError.InvalidEmbeddingDimension.== infix(_:_:)(v22);
LABEL_8:
      v23 = v13;

      return v23 & 1;
    default:
      if (v3 >> 62)
      {
LABEL_12:
        v23 = 0;
        return v23 & 1;
      }

      else
      {

        static GenerativeFunctionsInstrumentationError.ClassificationError.UnknownError.== infix(_:_:)();
        OUTLINED_FUNCTION_143();
LABEL_11:

        return v2 & 1;
      }
  }
}

uint64_t GenerativeFunctionsInstrumentationError.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(*v4 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_71_4();
      sub_1934B1820();
      break;
    case 2:
      OUTLINED_FUNCTION_4_6();
      sub_1934B17CC();
      break;
    case 3:
      OUTLINED_FUNCTION_71_4();
      sub_1934B1778();
      break;
    case 4:
      OUTLINED_FUNCTION_4_6();
      sub_1934B1724();
      break;
    case 5:
      OUTLINED_FUNCTION_71_4();
      sub_1934B16D0();
      break;
    case 6:
      OUTLINED_FUNCTION_71_4();
      sub_1934B167C();
      break;
    default:
      sub_1934B1874();
      break;
  }

  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationError.ModelManagerSessionError.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_72_3(v2);
      sub_1934B1970();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_4_6();
      sub_1934B17CC();
      break;
    case 3uLL:
      OUTLINED_FUNCTION_72_3(v2);
      sub_1934B191C();
      break;
    case 4uLL:
      OUTLINED_FUNCTION_72_3(v2);
      sub_1934B18C8();
      break;
    default:
      OUTLINED_FUNCTION_4_6();
      sub_1934B19C4();
      break;
  }

  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v190 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v190, v191, v192, v193, &qword_1EAE3B058, &qword_1939525B8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v194 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v194, v195, v196, v197, &qword_1EAE3B058, &qword_1939525B8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v198, v199, v200, v201, v202, v203);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v204 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v204, v205, v206, v207, &qword_1EAE3B058, &qword_1939525B8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v208 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v208, v209, v210, v211, &qword_1EAE3B058, &qword_1939525B8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v212 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v212, v213, v214, v215, &qword_1EAE3B058, &qword_1939525B8);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v216 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v216, v217, v218, v219, &qword_1EAE3B058, &qword_1939525B8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v220 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v220, v221, v222, v223, &qword_1EAE3B058, &qword_1939525B8);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v224 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v224, v225, v226, v227, &qword_1EAE3B058, &qword_1939525B8);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v228 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v228, v229, v230, v231, &qword_1EAE3B058, &qword_1939525B8);
    v59 = v56;
  }

  OUTLINED_FUNCTION_50(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v232 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_85(v232, v233, v234, v235, &qword_1EAE3B058, &qword_1939525B8);
    v65 = v62;
  }

  OUTLINED_FUNCTION_47_5(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  OUTLINED_FUNCTION_149_1();
  if (!(v19 ^ v20 | v13))
  {
    v236 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_84_2(v236, v237, v238, v239, &qword_1EAE3B058, &qword_1939525B8);
    v71 = v68;
  }

  OUTLINED_FUNCTION_50(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  OUTLINED_FUNCTION_148_0();
  if (!(v19 ^ v20 | v13))
  {
    v240 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_85(v240, v241, v242, v243, &qword_1EAE3B058, &qword_1939525B8);
    v77 = v74;
  }

  OUTLINED_FUNCTION_47_5(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79);
  OUTLINED_FUNCTION_147_1();
  if (!(v19 ^ v20 | v13))
  {
    v244 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_84_2(v244, v245, v246, v247, &qword_1EAE3B058, &qword_1939525B8);
    v83 = v80;
  }

  OUTLINED_FUNCTION_50(v80, v81, v82, v83);
  OUTLINED_FUNCTION_4(v85);
  OUTLINED_FUNCTION_146_1();
  if (!(v19 ^ v20 | v13))
  {
    v248 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_85(v248, v249, v250, v251, &qword_1EAE3B058, &qword_1939525B8);
    v89 = v86;
  }

  OUTLINED_FUNCTION_47_5(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91);
  OUTLINED_FUNCTION_145();
  if (!(v19 ^ v20 | v13))
  {
    v252 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_84_2(v252, v253, v254, v255, &qword_1EAE3B058, &qword_1939525B8);
    v95 = v92;
  }

  OUTLINED_FUNCTION_50(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97);
  if (v0 + 17 > (v102 >> 1))
  {
    v256 = OUTLINED_FUNCTION_39(v102);
    v98 = OUTLINED_FUNCTION_85(v256, v257, v258, v259, &qword_1EAE3B058, &qword_1939525B8);
    v101 = v98;
  }

  OUTLINED_FUNCTION_47_5(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103);
  if (v0 + 18 > (v108 >> 1))
  {
    v260 = OUTLINED_FUNCTION_39(v108);
    v104 = OUTLINED_FUNCTION_84_2(v260, v261, v262, v263, &qword_1EAE3B058, &qword_1939525B8);
    v107 = v104;
  }

  OUTLINED_FUNCTION_50(v104, v105, v106, v107);
  OUTLINED_FUNCTION_4(v109);
  if (v0 + 19 > (v114 >> 1))
  {
    v264 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v264, v265, v266, v267, &qword_1EAE3B058, &qword_1939525B8);
    v113 = v110;
  }

  OUTLINED_FUNCTION_47_5(v110, v111, v112, v113);
  OUTLINED_FUNCTION_4(v115);
  if (v0 + 20 > (v120 >> 1))
  {
    v268 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v268, v269, v270, v271, &qword_1EAE3B058, &qword_1939525B8);
    v119 = v116;
  }

  OUTLINED_FUNCTION_50(v116, v117, v118, v119);
  OUTLINED_FUNCTION_4(v121);
  if (v0 + 21 > (v126 >> 1))
  {
    v272 = OUTLINED_FUNCTION_39(v126);
    v122 = OUTLINED_FUNCTION_85(v272, v273, v274, v275, &qword_1EAE3B058, &qword_1939525B8);
    v125 = v122;
  }

  OUTLINED_FUNCTION_47_5(v122, v123, v124, v125);
  OUTLINED_FUNCTION_4(v127);
  if (v0 + 22 > (v132 >> 1))
  {
    v276 = OUTLINED_FUNCTION_39(v132);
    v128 = OUTLINED_FUNCTION_84_2(v276, v277, v278, v279, &qword_1EAE3B058, &qword_1939525B8);
    v131 = v128;
  }

  OUTLINED_FUNCTION_50(v128, v129, v130, v131);
  OUTLINED_FUNCTION_4(v133);
  if (v0 + 23 > (v138 >> 1))
  {
    v280 = OUTLINED_FUNCTION_39(v138);
    v134 = OUTLINED_FUNCTION_85(v280, v281, v282, v283, &qword_1EAE3B058, &qword_1939525B8);
    v137 = v134;
  }

  OUTLINED_FUNCTION_47_5(v134, v135, v136, v137);
  OUTLINED_FUNCTION_4(v139);
  if (v0 + 24 > (v144 >> 1))
  {
    v284 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_84_2(v284, v285, v286, v287, &qword_1EAE3B058, &qword_1939525B8);
    v143 = v140;
  }

  OUTLINED_FUNCTION_50(v140, v141, v142, v143);
  OUTLINED_FUNCTION_4(v145);
  if (v0 + 25 > (v150 >> 1))
  {
    v288 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_85(v288, v289, v290, v291, &qword_1EAE3B058, &qword_1939525B8);
    v149 = v146;
  }

  OUTLINED_FUNCTION_47_5(v146, v147, v148, v149);
  OUTLINED_FUNCTION_4(v151);
  if (v0 + 26 > (v156 >> 1))
  {
    v292 = OUTLINED_FUNCTION_39(v156);
    v152 = OUTLINED_FUNCTION_84_2(v292, v293, v294, v295, &qword_1EAE3B058, &qword_1939525B8);
    v155 = v152;
  }

  OUTLINED_FUNCTION_50(v152, v153, v154, v155);
  OUTLINED_FUNCTION_4(v157);
  if (v0 + 27 > (v162 >> 1))
  {
    v296 = OUTLINED_FUNCTION_39(v162);
    v158 = OUTLINED_FUNCTION_85(v296, v297, v298, v299, &qword_1EAE3B058, &qword_1939525B8);
    v161 = v158;
  }

  OUTLINED_FUNCTION_47_5(v158, v159, v160, v161);
  OUTLINED_FUNCTION_4(v163);
  if (v0 + 28 > (v168 >> 1))
  {
    v300 = OUTLINED_FUNCTION_39(v168);
    v164 = OUTLINED_FUNCTION_84_2(v300, v301, v302, v303, &qword_1EAE3B058, &qword_1939525B8);
    v167 = v164;
  }

  OUTLINED_FUNCTION_50(v164, v165, v166, v167);
  OUTLINED_FUNCTION_4(v169);
  if (v0 + 29 > (v174 >> 1))
  {
    v304 = OUTLINED_FUNCTION_39(v174);
    v170 = OUTLINED_FUNCTION_85(v304, v305, v306, v307, &qword_1EAE3B058, &qword_1939525B8);
    v173 = v170;
  }

  OUTLINED_FUNCTION_47_5(v170, v171, v172, v173);
  OUTLINED_FUNCTION_4(v175);
  if (v0 + 30 > (v180 >> 1))
  {
    v308 = OUTLINED_FUNCTION_39(v180);
    v176 = OUTLINED_FUNCTION_84_2(v308, v309, v310, v311, &qword_1EAE3B058, &qword_1939525B8);
    v179 = v176;
  }

  OUTLINED_FUNCTION_50(v176, v177, v178, v179);
  OUTLINED_FUNCTION_4(v181);
  if (v0 + 31 > (v186 >> 1))
  {
    v312 = OUTLINED_FUNCTION_39(v186);
    v182 = OUTLINED_FUNCTION_85(v312, v313, v314, v315, &qword_1EAE3B058, &qword_1939525B8);
    v185 = v182;
  }

  OUTLINED_FUNCTION_47_5(v182, v183, v184, v185);
  OUTLINED_FUNCTION_42_12(v187);
  return v188;
}

void GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
      case 0x1ALL:
        OUTLINED_FUNCTION_76_3(27);
        break;
      case 3:
        OUTLINED_FUNCTION_122_1(27);
        break;
      case 4:
        OUTLINED_FUNCTION_49_4();
        break;
      case 5:
      case 7:
      case 8:
      case 0xALL:
      case 0x13:
        OUTLINED_FUNCTION_38();
        break;
      case 9:
        OUTLINED_FUNCTION_128(27);
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_127_0(27);
        break;
      case 0xELL:
        OUTLINED_FUNCTION_123_0(27);
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_116_2();
        break;
      case 0x10:
        OUTLINED_FUNCTION_125_0(27);
        break;
      case 0x14:
      case 0x15:
        OUTLINED_FUNCTION_77_6(27);
        break;
      case 0x17:
        OUTLINED_FUNCTION_74_3(27);
        break;
      case 0x19:
        OUTLINED_FUNCTION_124_1(27);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0xD000000000000012 && 0x8000000193A15CB0 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A15CB0) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6F4E6E6F6D656144 && v0 == 0xEE00646E756F4674;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x6F4E6E6F6D656144, 0xEE00646E756F4674) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0xD00000000000001FLL && 0x8000000193A15C90 == v0;
        if (v8 || (OUTLINED_FUNCTION_0_9(0xD00000000000001FLL, 0x8000000193A15C90) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0xD000000000000019 && 0x8000000193A15C70 == v0;
          if (v9 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, 0x8000000193A15C70) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = OUTLINED_FUNCTION_49_4();
            v12 = v1 == v10 && v0 == v11;
            if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_96_2();
              v14 = v4 && v13 == v0;
              if (v14 || (OUTLINED_FUNCTION_25_7(27, v13) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v15 = OUTLINED_FUNCTION_104_4();
                v16 = v4 && v0 == 0xE800000000000000;
                if (v16 || (OUTLINED_FUNCTION_29_2(v15) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_43_6();
                  v18 = v4 && v17 == v0;
                  if (v18 || (OUTLINED_FUNCTION_25_7(27, v17) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_43_6();
                    v20 = v4 && v19 == v0;
                    if (v20 || (OUTLINED_FUNCTION_25_7(27, v19) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v21 = v1 == 0xD000000000000016 && 0x8000000193A15BF0 == v0;
                      if (v21 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, 0x8000000193A15BF0) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_43_6();
                        v23 = v4 && v22 == v0;
                        if (v23 || (OUTLINED_FUNCTION_25_7(27, v22) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v24 = OUTLINED_FUNCTION_139_1();
                          v26 = v4 && v25 == v0;
                          if (v26 || (OUTLINED_FUNCTION_0_9(v24, v25) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v27 = v1 == 0xD000000000000015 && 0x8000000193A15B90 == v0;
                            if (v27 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A15B90) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_60();
                              v29 = v4 && v28 == v0;
                              if (v29 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v28) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v30 = v1 == 0xD000000000000013 && 0x8000000193A15B50 == v0;
                                if (v30 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A15B50) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v31 = OUTLINED_FUNCTION_116_2();
                                  v33 = v1 == v31 && v0 == v32;
                                  if (v33 || (OUTLINED_FUNCTION_0_9(v31, v32) & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    v34 = v1 == 0xD000000000000020 && 0x8000000193A15B20 == v0;
                                    if (v34 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, 0x8000000193A15B20) & 1) != 0)
                                    {

                                      v5 = 16;
                                    }

                                    else
                                    {
                                      v35 = v1 == 0xD000000000000022 && 0x8000000193A15AF0 == v0;
                                      if (v35 || (OUTLINED_FUNCTION_0_9(0xD000000000000022, 0x8000000193A15AF0) & 1) != 0)
                                      {

                                        v5 = 17;
                                      }

                                      else
                                      {
                                        v36 = v1 == 0x4E6E6F6973736553 && v0 == 0xEF646E756F46746FLL;
                                        if (v36 || (OUTLINED_FUNCTION_0_9(0x4E6E6F6973736553, 0xEF646E756F46746FLL) & 1) != 0)
                                        {

                                          v5 = 18;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_43_6();
                                          v38 = v4 && v37 == v0;
                                          if (v38 || (OUTLINED_FUNCTION_25_7(27, v37) & 1) != 0)
                                          {

                                            v5 = 19;
                                          }

                                          else
                                          {
                                            v39 = v1 == 0xD00000000000001ELL && 0x8000000193A15AB0 == v0;
                                            if (v39 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, 0x8000000193A15AB0) & 1) != 0)
                                            {

                                              v5 = 20;
                                            }

                                            else
                                            {
                                              v40 = v1 == 0xD00000000000001ELL && 0x8000000193A15A90 == v0;
                                              if (v40 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, 0x8000000193A15A90) & 1) != 0)
                                              {

                                                v5 = 21;
                                              }

                                              else
                                              {
                                                v41 = v1 == 0xD000000000000011 && 0x8000000193A15A70 == v0;
                                                if (v41 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A15A70) & 1) != 0)
                                                {

                                                  v5 = 22;
                                                }

                                                else
                                                {
                                                  v42 = v1 == 0xD000000000000017 && 0x8000000193A15A50 == v0;
                                                  if (v42 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, 0x8000000193A15A50) & 1) != 0)
                                                  {

                                                    v5 = 23;
                                                  }

                                                  else
                                                  {
                                                    v43 = v1 == 0x4E74736575716552 && v0 == 0xEF646E756F46746FLL;
                                                    if (v43 || (OUTLINED_FUNCTION_0_9(0x4E74736575716552, 0xEF646E756F46746FLL) & 1) != 0)
                                                    {

                                                      v5 = 24;
                                                    }

                                                    else
                                                    {
                                                      v44 = OUTLINED_FUNCTION_141_2();
                                                      v46 = v4 && v45 == v0;
                                                      if (v46 || (OUTLINED_FUNCTION_0_9(v44, v45) & 1) != 0)
                                                      {

                                                        v5 = 25;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_79_0();
                                                        v48 = v4 && v47 == v0;
                                                        if (v48 || (OUTLINED_FUNCTION_0_9(0xD00000000000001FLL, v47) & 1) != 0)
                                                        {

                                                          v5 = 26;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_60();
                                                          v50 = v4 && v49 == v0;
                                                          if (v50 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v49) & 1) != 0)
                                                          {

                                                            v5 = 27;
                                                          }

                                                          else
                                                          {
                                                            v51 = v1 == 0xD000000000000011 && 0x8000000193A159D0 == v0;
                                                            if (v51 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A159D0) & 1) != 0)
                                                            {

                                                              v5 = 28;
                                                            }

                                                            else if (v1 == 0x6F4E7963696C6F50 && v0 == 0xEE00646E756F4674)
                                                            {

                                                              v5 = 29;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_0_9(0x6F4E7963696C6F50, 0xEE00646E756F4674);
                                                              OUTLINED_FUNCTION_89();
                                                              v5 = 29;
                                                              if ((v1 & 1) == 0)
                                                              {
                                                                v5 = 0;
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
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v99 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v99, v100, v101, v102, &qword_1EAE3B050, &qword_1939525B0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v103 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v103, v104, v105, v106, &qword_1EAE3B050, &qword_1939525B0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v107, v108, v109, v110, v111, v112);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v113 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v113, v114, v115, v116, &qword_1EAE3B050, &qword_1939525B0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v117 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v117, v118, v119, v120, &qword_1EAE3B050, &qword_1939525B0);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v121 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v121, v122, v123, v124, &qword_1EAE3B050, &qword_1939525B0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v125 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v125, v126, v127, v128, &qword_1EAE3B050, &qword_1939525B0);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v129 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v129, v130, v131, v132, &qword_1EAE3B050, &qword_1939525B0);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v133 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v133, v134, v135, v136, &qword_1EAE3B050, &qword_1939525B0);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v137 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v137, v138, v139, v140, &qword_1EAE3B050, &qword_1939525B0);
    v58 = v55;
  }

  OUTLINED_FUNCTION_50(v55, v56, v57, v58);
  OUTLINED_FUNCTION_4(v60);
  OUTLINED_FUNCTION_99_3();
  if (!(v18 ^ v19 | v12))
  {
    v141 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v141, v142, v143, v144, &qword_1EAE3B050, &qword_1939525B0);
    v64 = v61;
  }

  OUTLINED_FUNCTION_47_5(v61, v62, v63, v64);
  OUTLINED_FUNCTION_4(v66);
  OUTLINED_FUNCTION_149_1();
  if (!(v18 ^ v19 | v12))
  {
    v145 = OUTLINED_FUNCTION_39(v71);
    v67 = OUTLINED_FUNCTION_84_2(v145, v146, v147, v148, &qword_1EAE3B050, &qword_1939525B0);
    v70 = v67;
  }

  OUTLINED_FUNCTION_50(v67, v68, v69, v70);
  OUTLINED_FUNCTION_4(v72);
  OUTLINED_FUNCTION_148_0();
  if (!(v18 ^ v19 | v12))
  {
    v149 = OUTLINED_FUNCTION_39(v77);
    v73 = OUTLINED_FUNCTION_85(v149, v150, v151, v152, &qword_1EAE3B050, &qword_1939525B0);
    v76 = v73;
  }

  OUTLINED_FUNCTION_47_5(v73, v74, v75, v76);
  OUTLINED_FUNCTION_4(v78);
  OUTLINED_FUNCTION_147_1();
  if (!(v18 ^ v19 | v12))
  {
    v153 = OUTLINED_FUNCTION_39(v83);
    v79 = OUTLINED_FUNCTION_84_2(v153, v154, v155, v156, &qword_1EAE3B050, &qword_1939525B0);
    v82 = v79;
  }

  OUTLINED_FUNCTION_50(v79, v80, v81, v82);
  OUTLINED_FUNCTION_4(v84);
  OUTLINED_FUNCTION_146_1();
  if (!(v18 ^ v19 | v12))
  {
    v157 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_85(v157, v158, v159, v160, &qword_1EAE3B050, &qword_1939525B0);
    v88 = v85;
  }

  OUTLINED_FUNCTION_47_5(v85, v86, v87, v88);
  OUTLINED_FUNCTION_4(v90);
  OUTLINED_FUNCTION_145();
  if (!(v18 ^ v19 | v12))
  {
    v161 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_84_2(v161, v162, v163, v164, &qword_1EAE3B050, &qword_1939525B0);
    v94 = v91;
  }

  OUTLINED_FUNCTION_50(v91, v92, v93, v94);
  return OUTLINED_FUNCTION_38_1(v96, v97);
}

void GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_128(22);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_38();
        break;
      case 4:
        OUTLINED_FUNCTION_58_4();
        break;
      case 7:
        OUTLINED_FUNCTION_112_3();
        break;
      case 9:
        OUTLINED_FUNCTION_119_2();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_125_0(22);
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_74_3(22);
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_49_4();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_27_3();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x656C706D49746F4ELL && v0 == 0xEE006465746E656DLL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x656C706D49746F4ELL, 0xEE006465746E656DLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_52_5();
      v8 = v1 == 17 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9(17, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v10 = v4 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_25_7(22, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v12 = v4 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_25_7(22, v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = OUTLINED_FUNCTION_58_4();
            v15 = v1 == v13 && v0 == v14;
            if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v16 = v1 == 0x6564616F4C746F4ELL && v0 == 0xE900000000000064;
              if (v16 || (OUTLINED_FUNCTION_0_9(0x6564616F4C746F4ELL, 0xE900000000000064) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v17 = OUTLINED_FUNCTION_106_4();
                v19 = v4 && v0 == v18;
                if (v19 || (OUTLINED_FUNCTION_0_9(v17, 0xEA00000000006465) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v20 = OUTLINED_FUNCTION_112_3();
                  v22 = v1 == v20 && v0 == v21;
                  if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v23 = v1 == 19 && 0x8000000193A15CD0 == v0;
                    if (v23 || (OUTLINED_FUNCTION_0_9(19, 0x8000000193A15CD0) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v24 = OUTLINED_FUNCTION_119_2();
                      v26 = v1 == v24 && v0 == v25;
                      if (v26 || (OUTLINED_FUNCTION_0_9(v24, v25) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v27 = OUTLINED_FUNCTION_54_3();
                        v29 = v4 && v28 == v0;
                        if (v29 || (OUTLINED_FUNCTION_0_9(v27, v28) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v30 = OUTLINED_FUNCTION_137();
                          v32 = v4 && v31 == v0;
                          if (v32 || (OUTLINED_FUNCTION_0_9(v30, v31) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v33 = OUTLINED_FUNCTION_49_4();
                            v35 = v1 == v33 && v0 == v34;
                            if (v35 || (OUTLINED_FUNCTION_0_9(v33, v34) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v36 = OUTLINED_FUNCTION_27_3();
                              v38 = v1 == v36 && v0 == v37;
                              if (v38 || (OUTLINED_FUNCTION_0_9(v36, v37) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v39 = OUTLINED_FUNCTION_104_4();
                                if (v4 && v0 == 0xE800000000000000)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_29_2(v39);
                                  OUTLINED_FUNCTION_89();
                                  v5 = 14;
                                  if ((v1 & 1) == 0)
                                  {
                                    v5 = 0;
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
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.hash(into:)(uint64_t a1)
{
  v2 = *v1 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_4_6();
      sub_1934B1A6C();
    }

    else
    {
      OUTLINED_FUNCTION_4_6();
      sub_1934B1A18();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_6();
    sub_1934B1AC0();
  }

  return sub_19393C540();
}

uint64_t sub_1934AFAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t sub_1934AFB68()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_63_2();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_53_3(v6, v7, v8, v9);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_46_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_51((v24 > 1), v0, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_45_0(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v25 = OUTLINED_FUNCTION_33_5((v29 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_32(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v30 = OUTLINED_FUNCTION_39_2((v34 > 1), v31, v32, v33);
    v33 = v30;
  }

  OUTLINED_FUNCTION_62_8(v30, v31, v32, v33);
  v39 = *(v38 + 24);
  if (v1 + 6 > (v39 >> 1))
  {
    v35 = OUTLINED_FUNCTION_33_5((v39 > 1), v36, v37, v38);
    v38 = v35;
  }

  OUTLINED_FUNCTION_160_1(v35, v36, v37, v38);
  return OUTLINED_FUNCTION_38_1(v40, v41);
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x74756F656D6954;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_27_3();
      break;
    case 3:
      result = OUTLINED_FUNCTION_81_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_48_5();
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0xD000000000000014 && 0x8000000193A15D50 == v0;
    if (v6 || (OUTLINED_FUNCTION_25_7(20, 0x8000000193A15D50) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_97_2();
      v8 = v4 && v0 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_22_7(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_27_3();
        v11 = v1 == v9 && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_93_2(0x6C65636E6143);
          v13 = v4 && v0 == 0xE800000000000000;
          if (v13 || (OUTLINED_FUNCTION_29_2(v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_48_5();
            if (v1 == v14 && v0 == v15)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(v14, v15);
              OUTLINED_FUNCTION_89();
              v5 = 4;
              if ((v1 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0xD000000000000011;
  }

  return 0xD00000000000001ALL;
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    v7 = v1 == 26 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(26, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      if (v4 && v8 == v0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_25_7(17, v8);
        OUTLINED_FUNCTION_89();
        v5 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v9 = v6;
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  v12 = v10 >> 1;
  if (v10 >> 1 <= v11)
  {
    v17 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v17, v18, v19, v20, &qword_1EAE3B038, &qword_193952598);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 16) = v11 + 1;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  if (v12 < (v11 + 2))
  {
    v21 = OUTLINED_FUNCTION_39(v10);
    v6 = OUTLINED_FUNCTION_85(v21, v22, v23, v24, &qword_1EAE3B038, &qword_193952598);
    v9 = v6;
  }

  OUTLINED_FUNCTION_47_5(v6, v7, v8, v9);
  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  return v15;
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x4465736143657355;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2 == 0x4465736143657355 && v1 == 0xEF64656C62617369)
  {

    LOBYTE(v2) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_9(0x4465736143657355, 0xEF64656C62617369);
    result = OUTLINED_FUNCTION_89();
  }

  *v0 = 0;
  *(v0 + 8) = v2 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v58 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v58, v59, v60, v61, &qword_1EAE3B030, &qword_193952590);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v62 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v62, v63, v64, v65, &qword_1EAE3B030, &qword_193952590);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v66, v67, v68, v69, v70, v71);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v72 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v72, v73, v74, v75, &qword_1EAE3B030, &qword_193952590);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v76 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v76, v77, v78, v79, &qword_1EAE3B030, &qword_193952590);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v80 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v80, v81, v82, v83, &qword_1EAE3B030, &qword_193952590);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v84 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v84, v85, v86, v87, &qword_1EAE3B030, &qword_193952590);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v88 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v88, v89, v90, v91, &qword_1EAE3B030, &qword_193952590);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v92 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v92, v93, v94, v95, &qword_1EAE3B030, &qword_193952590);
    v53 = v50;
  }

  OUTLINED_FUNCTION_47_5(v50, v51, v52, v53);
  OUTLINED_FUNCTION_42_12(v55);
  return v56;
}

void GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_27_3();
        break;
      case 2:
        OUTLINED_FUNCTION_48_5();
        break;
      case 3:
        OUTLINED_FUNCTION_81_2();
        break;
      case 4:
        OUTLINED_FUNCTION_126_0(19);
        break;
      case 5:
        OUTLINED_FUNCTION_77_6(19);
        break;
      case 6:
        OUTLINED_FUNCTION_38();
        break;
      case 7:
        OUTLINED_FUNCTION_110_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97_2();
    v7 = v4 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_22_7(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_27_3();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_48_5();
        v13 = v1 == v11 && v0 == v12;
        if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v14 = OUTLINED_FUNCTION_93_2(0x6C65636E6143);
          v15 = v4 && v0 == 0xE800000000000000;
          if (v15 || (OUTLINED_FUNCTION_29_2(v14) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_52_5();
            v17 = v1 == 25 && v16 == v0;
            if (v17 || (OUTLINED_FUNCTION_0_9(25, v16) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v18 = OUTLINED_FUNCTION_78_5();
              v20 = v4 && v19 == v0;
              if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_26_4();
                v22 = v4 && v21 == v0;
                if (v22 || (OUTLINED_FUNCTION_25_7(19, v21) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v23 = OUTLINED_FUNCTION_110_2();
                  if (v1 == v23 && v0 == v24)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_9(v23, v24);
                    OUTLINED_FUNCTION_89();
                    v5 = 7;
                    if ((v1 & 1) == 0)
                    {
                      v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationError.SummarizationError.hash(into:)(uint64_t a1)
{
  switch(*v1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_51_3();
      sub_1934B1D0C();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_4_6();
      sub_1934B1CB8();
      break;
    case 3uLL:
      sub_1934B1C64();
      break;
    case 4uLL:
      sub_1934B1C10();
      break;
    case 5uLL:
      sub_1934B1BBC();
      break;
    case 6uLL:
      sub_1934B1B68();
      break;
    case 7uLL:
      OUTLINED_FUNCTION_72_3(*v1);
      sub_1934B1B14();
      break;
    default:
      sub_1934B1D60();
      break;
  }

  return sub_19393C540();
}

uint64_t sub_1934B0750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

char *sub_1934B07C8()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_63_2();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_53_3(v6, v7, v8, v9);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_46_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_51((v24 > 1), v0, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_45_0(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v25 = OUTLINED_FUNCTION_33_5((v29 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_32(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v30 = OUTLINED_FUNCTION_39_2((v34 > 1), v31, v32, v33);
    v33 = v30;
  }

  OUTLINED_FUNCTION_62_8(v30, v31, v32, v33);
  v39 = *(v38 + 24);
  if (v1 + 6 > (v39 >> 1))
  {
    v35 = OUTLINED_FUNCTION_33_5((v39 > 1), v36, v37, v38);
    v38 = v35;
  }

  OUTLINED_FUNCTION_160_1(v35, v36, v37, v38);
  *(v43 + 32) = 4;
  *(v43 + 40) = v0;
  v44 = *(v42 + 3);
  if (v1 + 7 > (v44 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39_2((v44 > 1), v40, v41, v42);
  }

  *(v42 + 2) = v1 + 7;
  v45 = &v42[16 * v1 + 96];
  *(v45 + 4) = 5;
  v45[40] = v0;
  return v42;
}

uint64_t GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 2036625218;
  switch(*v0)
  {
    case 1:
      result = 0x73746E656D656C45;
      break;
    case 2:
      result = 0x6E65697069636552;
      break;
    case 3:
      result = 0x7265646E6553;
      break;
    case 4:
      result = 0x7463656A627553;
      break;
    case 5:
      result = 0x656C746954;
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 2036625218 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(2036625218, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x73746E656D656C45 && v0 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_29_2(0x73746E656D656C45) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x6E65697069636552 && v0 == 0xEA00000000007374;
        if (v8 || (OUTLINED_FUNCTION_0_9(0x6E65697069636552, 0xEA00000000007374) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x7265646E6553 && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_0_9(0x7265646E6553, 0xE600000000000000) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x7463656A627553 && v0 == 0xE700000000000000;
            if (v10 || (OUTLINED_FUNCTION_22_7(0x7463656A627553) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else if (v1 == 0x656C746954 && v0 == 0xE500000000000000)
            {

              OUTLINED_FUNCTION_83();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(0x656C746954, 0xE500000000000000);
              OUTLINED_FUNCTION_89();
              v5 = 5;
              if ((v1 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GenerativeFunctionsInstrumentationError.ClassificationError.hash(into:)(uint64_t a1, uint64_t a2)
{
  switch(*v2 >> 62)
  {
    case 1:
      sub_1934B1E5C();
      break;
    case 2:
      sub_1934B1E08();
      break;
    case 3:
      OUTLINED_FUNCTION_51_3();
      sub_1934B1DB4();
      break;
    default:
      sub_1934B1EB0();
      break;
  }

  return sub_19393C540();
}

uint64_t sub_1934B0C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = (a2 + 32); ; i = (i + 56))
    {
      v5 = *(v3 + 16);
      v20[0] = *v3;
      v20[1] = v5;
      v21 = *(v3 + 32);
      v22 = *(v3 + 48);
      v16 = v20[0];
      v17 = v5;
      v18 = v21;
      v19 = v22;
      v6 = *i;
      v7 = i[1];
      v8 = i[2];
      v24 = *(i + 6);
      v23[1] = v7;
      v23[2] = v8;
      v23[0] = v6;
      v12 = v6;
      v13 = v7;
      v14 = v8;
      v15 = v24;
      sub_1934A82B0(v20, v11);
      sub_1934A82B0(v23, v11);
      sub_1934B289C();
      v9 = sub_19393C550();
      v25[0] = v12;
      v25[1] = v13;
      v25[2] = v14;
      v26 = v15;
      sub_1934B2848(v25);
      v27[0] = v16;
      v27[1] = v17;
      v27[2] = v18;
      v28 = v19;
      sub_1934B2848(v27);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1934B0D8C()
{
  result = qword_1EAE3ADD8;
  if (!qword_1EAE3ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ADD8);
  }

  return result;
}

unint64_t sub_1934B0DE0()
{
  result = qword_1EAE3ADE0;
  if (!qword_1EAE3ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ADE0);
  }

  return result;
}

unint64_t sub_1934B0E34()
{
  result = qword_1EAE3A718;
  if (!qword_1EAE3A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A718);
  }

  return result;
}

unint64_t sub_1934B0E88()
{
  result = qword_1EAE3ADF0;
  if (!qword_1EAE3ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ADF0);
  }

  return result;
}

uint64_t sub_1934B0EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1934B0F24()
{
  result = qword_1EAE3AE00;
  if (!qword_1EAE3AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE00);
  }

  return result;
}

unint64_t sub_1934B0F78()
{
  result = qword_1EAE3AE08;
  if (!qword_1EAE3AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE08);
  }

  return result;
}

char *sub_1934B0FCC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 16);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || &v15[v16] <= v14)
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

uint64_t sub_1934B10C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 16);
      v7[0] = *v5;
      v7[1] = v6;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v12 = v7[0];
      v13 = v6;
      v14 = v8;
      v15 = v9;
      sub_1934A82B0(v7, v10);
      sub_1934B27F4();
      sub_19393C540();
      v10[0] = v12;
      v10[1] = v13;
      v10[2] = v14;
      v11 = v15;
      result = sub_1934B2848(v10);
      v5 += 56;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1934B1190()
{
  result = qword_1EAE3AE10;
  if (!qword_1EAE3AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE10);
  }

  return result;
}

unint64_t sub_1934B11E4()
{
  result = qword_1EAE3AE18;
  if (!qword_1EAE3AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE18);
  }

  return result;
}

unint64_t sub_1934B1238()
{
  result = qword_1EAE3AE20;
  if (!qword_1EAE3AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE20);
  }

  return result;
}

unint64_t sub_1934B128C()
{
  result = qword_1EAE3AE28;
  if (!qword_1EAE3AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE28);
  }

  return result;
}

unint64_t sub_1934B12E0()
{
  result = qword_1EAE3AE30;
  if (!qword_1EAE3AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE30);
  }

  return result;
}

unint64_t sub_1934B1334()
{
  result = qword_1EAE3AE38;
  if (!qword_1EAE3AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE38);
  }

  return result;
}

unint64_t sub_1934B1388()
{
  result = qword_1EAE3AE40;
  if (!qword_1EAE3AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE40);
  }

  return result;
}

unint64_t sub_1934B13DC()
{
  result = qword_1EAE3AE48;
  if (!qword_1EAE3AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE48);
  }

  return result;
}

unint64_t sub_1934B1430()
{
  result = qword_1EAE3AE50;
  if (!qword_1EAE3AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE50);
  }

  return result;
}

unint64_t sub_1934B1484()
{
  result = qword_1EAE3AE58;
  if (!qword_1EAE3AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE58);
  }

  return result;
}

unint64_t sub_1934B14D8()
{
  result = qword_1EAE3AE60;
  if (!qword_1EAE3AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE60);
  }

  return result;
}

unint64_t sub_1934B152C()
{
  result = qword_1EAE3AE68;
  if (!qword_1EAE3AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE68);
  }

  return result;
}

unint64_t sub_1934B1580()
{
  result = qword_1EAE3AE70;
  if (!qword_1EAE3AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE70);
  }

  return result;
}

unint64_t sub_1934B15D4()
{
  result = qword_1EAE3AE78;
  if (!qword_1EAE3AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE78);
  }

  return result;
}

unint64_t sub_1934B1628()
{
  result = qword_1EAE3AE80;
  if (!qword_1EAE3AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE80);
  }

  return result;
}

unint64_t sub_1934B167C()
{
  result = qword_1EAE3AE88;
  if (!qword_1EAE3AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE88);
  }

  return result;
}

unint64_t sub_1934B16D0()
{
  result = qword_1EAE3AE90;
  if (!qword_1EAE3AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE90);
  }

  return result;
}

unint64_t sub_1934B1724()
{
  result = qword_1EAE3AE98;
  if (!qword_1EAE3AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE98);
  }

  return result;
}

unint64_t sub_1934B1778()
{
  result = qword_1EAE3AEA0;
  if (!qword_1EAE3AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEA0);
  }

  return result;
}

unint64_t sub_1934B17CC()
{
  result = qword_1EAE3AEA8;
  if (!qword_1EAE3AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEA8);
  }

  return result;
}

unint64_t sub_1934B1820()
{
  result = qword_1EAE3AEB0;
  if (!qword_1EAE3AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEB0);
  }

  return result;
}

unint64_t sub_1934B1874()
{
  result = qword_1EAE3AEB8;
  if (!qword_1EAE3AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEB8);
  }

  return result;
}

unint64_t sub_1934B18C8()
{
  result = qword_1EAE3AEC0;
  if (!qword_1EAE3AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEC0);
  }

  return result;
}

unint64_t sub_1934B191C()
{
  result = qword_1EAE3AEC8;
  if (!qword_1EAE3AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEC8);
  }

  return result;
}

unint64_t sub_1934B1970()
{
  result = qword_1EAE3AED0;
  if (!qword_1EAE3AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AED0);
  }

  return result;
}

unint64_t sub_1934B19C4()
{
  result = qword_1EAE3AED8;
  if (!qword_1EAE3AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AED8);
  }

  return result;
}

unint64_t sub_1934B1A18()
{
  result = qword_1EAE3AEE0;
  if (!qword_1EAE3AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEE0);
  }

  return result;
}

unint64_t sub_1934B1A6C()
{
  result = qword_1EAE3AEE8;
  if (!qword_1EAE3AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEE8);
  }

  return result;
}

unint64_t sub_1934B1AC0()
{
  result = qword_1EAE3AEF0;
  if (!qword_1EAE3AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEF0);
  }

  return result;
}

unint64_t sub_1934B1B14()
{
  result = qword_1EAE3AEF8;
  if (!qword_1EAE3AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEF8);
  }

  return result;
}

unint64_t sub_1934B1B68()
{
  result = qword_1EAE3AF00;
  if (!qword_1EAE3AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF00);
  }

  return result;
}

unint64_t sub_1934B1BBC()
{
  result = qword_1EAE3AF08;
  if (!qword_1EAE3AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF08);
  }

  return result;
}

unint64_t sub_1934B1C10()
{
  result = qword_1EAE3AF10;
  if (!qword_1EAE3AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF10);
  }

  return result;
}

unint64_t sub_1934B1C64()
{
  result = qword_1EAE3AF18;
  if (!qword_1EAE3AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF18);
  }

  return result;
}

unint64_t sub_1934B1CB8()
{
  result = qword_1EAE3AF20;
  if (!qword_1EAE3AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF20);
  }

  return result;
}

unint64_t sub_1934B1D0C()
{
  result = qword_1EAE3AF28;
  if (!qword_1EAE3AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF28);
  }

  return result;
}

unint64_t sub_1934B1D60()
{
  result = qword_1EAE3AF30;
  if (!qword_1EAE3AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF30);
  }

  return result;
}

unint64_t sub_1934B1DB4()
{
  result = qword_1EAE3AF38;
  if (!qword_1EAE3AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF38);
  }

  return result;
}

unint64_t sub_1934B1E08()
{
  result = qword_1EAE3AF40;
  if (!qword_1EAE3AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF40);
  }

  return result;
}

unint64_t sub_1934B1E5C()
{
  result = qword_1EAE3AF48;
  if (!qword_1EAE3AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF48);
  }

  return result;
}

unint64_t sub_1934B1EB0()
{
  result = qword_1EAE3AF50;
  if (!qword_1EAE3AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF50);
  }

  return result;
}

unint64_t sub_1934B1F08()
{
  result = qword_1EAE3AF58;
  if (!qword_1EAE3AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF58);
  }

  return result;
}

unint64_t sub_1934B1F60()
{
  result = qword_1EAE3AF60;
  if (!qword_1EAE3AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF60);
  }

  return result;
}

unint64_t sub_1934B1FB8()
{
  result = qword_1EAE3AF68;
  if (!qword_1EAE3AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF68);
  }

  return result;
}

unint64_t sub_1934B2010()
{
  result = qword_1EAE3AF70;
  if (!qword_1EAE3AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF70);
  }

  return result;
}

unint64_t sub_1934B2068()
{
  result = qword_1EAE3AF78;
  if (!qword_1EAE3AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF78);
  }

  return result;
}

unint64_t sub_1934B20C0()
{
  result = qword_1EAE3AF80;
  if (!qword_1EAE3AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF80);
  }

  return result;
}

unint64_t sub_1934B2118()
{
  result = qword_1EAE3AF88;
  if (!qword_1EAE3AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF88);
  }

  return result;
}

unint64_t sub_1934B2170()
{
  result = qword_1EAE3AF90;
  if (!qword_1EAE3AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF90);
  }

  return result;
}

unint64_t sub_1934B21C8()
{
  result = qword_1EAE3AF98;
  if (!qword_1EAE3AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF98);
  }

  return result;
}

unint64_t sub_1934B2220()
{
  result = qword_1EAE3AFA0;
  if (!qword_1EAE3AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFA0);
  }

  return result;
}

unint64_t sub_1934B2278()
{
  result = qword_1EAE3AFA8;
  if (!qword_1EAE3AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFA8);
  }

  return result;
}

unint64_t sub_1934B22D0()
{
  result = qword_1EAE3AFB0;
  if (!qword_1EAE3AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFB0);
  }

  return result;
}

unint64_t sub_1934B2328()
{
  result = qword_1EAE3AFB8;
  if (!qword_1EAE3AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFB8);
  }

  return result;
}

unint64_t sub_1934B2380()
{
  result = qword_1EAE3AFC0;
  if (!qword_1EAE3AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFC0);
  }

  return result;
}

unint64_t sub_1934B23D8()
{
  result = qword_1EAE3AFC8;
  if (!qword_1EAE3AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFC8);
  }

  return result;
}

unint64_t sub_1934B2430()
{
  result = qword_1EAE3AFD0;
  if (!qword_1EAE3AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFD0);
  }

  return result;
}

unint64_t sub_1934B2488()
{
  result = qword_1EAE3AFD8;
  if (!qword_1EAE3AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFD8);
  }

  return result;
}

unint64_t sub_1934B24E0()
{
  result = qword_1EAE3AFE0;
  if (!qword_1EAE3AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFE0);
  }

  return result;
}

unint64_t sub_1934B2538()
{
  result = qword_1EAE3AFE8;
  if (!qword_1EAE3AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFE8);
  }

  return result;
}

unint64_t sub_1934B2590()
{
  result = qword_1EAE3AFF0;
  if (!qword_1EAE3AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFF0);
  }

  return result;
}

unint64_t sub_1934B25E8()
{
  result = qword_1EAE3AFF8;
  if (!qword_1EAE3AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFF8);
  }

  return result;
}

unint64_t sub_1934B2640()
{
  result = qword_1EAE3B000;
  if (!qword_1EAE3B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B000);
  }

  return result;
}

unint64_t sub_1934B2698()
{
  result = qword_1EAE3B008;
  if (!qword_1EAE3B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B008);
  }

  return result;
}

unint64_t sub_1934B26F0()
{
  result = qword_1EAE3B010;
  if (!qword_1EAE3B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B010);
  }

  return result;
}

unint64_t sub_1934B2748()
{
  result = qword_1EAE3B018;
  if (!qword_1EAE3B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B018);
  }

  return result;
}

unint64_t sub_1934B27A0()
{
  result = qword_1EAE3B020;
  if (!qword_1EAE3B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B020);
  }

  return result;
}

unint64_t sub_1934B27F4()
{
  result = qword_1EAE3B0F8;
  if (!qword_1EAE3B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B0F8);
  }

  return result;
}

unint64_t sub_1934B289C()
{
  result = qword_1EAE3B100;
  if (!qword_1EAE3B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B100);
  }

  return result;
}

void OUTLINED_FUNCTION_62_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 3;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_65_5()
{
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_130_0()
{
}

void sub_1934B2D64()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEA8798);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v33 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v33, xmmword_193952660);
  *v1 = 10;
  *v0 = "identifiers";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  v8(v0, v5, v6);
  v9 = OUTLINED_FUNCTION_9_4((v1 + v4));
  *v9 = "eventType";
  *(v9 + 1) = 9;
  v10 = OUTLINED_FUNCTION_91_4(v9);
  (v8)(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = 9;
  *v11 = "subtype";
  v11[1] = 7;
  v13 = OUTLINED_FUNCTION_91_4(v11);
  (v8)(v13);
  v14 = OUTLINED_FUNCTION_26_5();
  *v15 = 6;
  *v14 = "timestamp";
  v14[1] = 9;
  v16 = OUTLINED_FUNCTION_91_4(v14);
  (v8)(v16);
  v17 = OUTLINED_FUNCTION_66_6();
  *v18 = 7;
  *v17 = "threadQualityOfService";
  v17[1] = 22;
  v19 = OUTLINED_FUNCTION_91_4(v17);
  (v8)(v19);
  v20 = OUTLINED_FUNCTION_38_2();
  *v21 = 8;
  *v20 = "unixEpochTime";
  v20[1] = 13;
  v22 = OUTLINED_FUNCTION_91_4(v20);
  (v8)(v22);
  v23 = OUTLINED_FUNCTION_13((v1 + 6 * v4));
  *v23 = "metadata";
  *(v23 + 1) = 8;
  v24 = OUTLINED_FUNCTION_91_4(v23);
  (v8)(v24);
  v25 = OUTLINED_FUNCTION_33_0(8 * v4);
  *v26 = 11;
  *v25 = "error";
  v25[1] = 5;
  v27 = OUTLINED_FUNCTION_91_4(v25);
  (v8)(v27);
  OUTLINED_FUNCTION_3_1(&v1[v4]);
  OUTLINED_FUNCTION_187_0(v28);
  *v29 = "trialExperimentInfos";
  v29[1] = 20;
  v30 = OUTLINED_FUNCTION_91_4(v29);
  (v8)(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v4);
  *v32 = 5;
  *v31 = "_identifierSet";
  *(v31 + 8) = 14;
  *(v31 + 16) = 2;
  *(v31 + 24) = "IdentifierSet";
  *(v31 + 32) = 13;
  *(v31 + 40) = 2;
  (v8)();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55[30] = a2;
  v53 = a1;
  v50 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_289();
  v46 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v48 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v45 - v11;
  v47 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v45[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4A0, &qword_193952760);
  v16 = OUTLINED_FUNCTION_47(v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v45 - v20;
  v49 = v12;
  v51 = v45 - v20;
  while (1)
  {
    OUTLINED_FUNCTION_159_2();
    v22 = sub_19393C0E0();
    if (v3 || (v23 & 1) != 0)
    {
      break;
    }

    switch(v22)
    {
      case 3:
        *&v55[13] = 0uLL;
        OUTLINED_FUNCTION_117_5();
        sub_19393C200();
        if (v55[14])
        {
          v24 = v55[13];
        }

        else
        {
          v24 = 0;
        }

        v45[0] = a3;
        v25 = v19;
        if (v55[14])
        {
          v26 = v55[14];
        }

        else
        {
          v26 = 0xE000000000000000;
        }

        v27 = (v52 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 32));

        *v27 = v24;
        v27[1] = v26;
        v21 = v51;
        v19 = v25;
        v12 = v49;
        a3 = v45[0];
        break;
      case 4:
        v39 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_288(*(v39 + 52));
        OUTLINED_FUNCTION_284();
        goto LABEL_32;
      case 5:
        memset(&v55[13], 0, 104);
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        v33 = v12;
        if (v55[13])
        {
          memcpy(&v54[1], &v55[14], 0x60uLL);
          v54[0] = v55[13];
        }

        else
        {
          GenerativeFunctionsInstrumentationEvent.IdentifierSet.init()(v54);
        }

        v43 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 64);
        v44 = v52;
        memcpy(v55, (v52 + v43), 0x68uLL);
        sub_1934500D8(v55);
        memcpy((v44 + v43), v54, 0x68uLL);
        v12 = v33;
        break;
      case 6:
        __swift_storeEnumTagSinglePayload(v12, 1, 1, v50);
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        v34 = v19;
        v35 = v48;
        sub_19344F184();
        if (__swift_getEnumTagSinglePayload(v35, 1, v50) == 1)
        {
          MonotonicTimestamp.init()(v46);
          sub_19344E6DC(v12, &qword_1EAE3B498, &unk_193959120);
          if (__swift_getEnumTagSinglePayload(v35, 1, v50) != 1)
          {
            sub_19344E6DC(v48, &qword_1EAE3B498, &unk_193959120);
          }
        }

        else
        {
          sub_19344E6DC(v12, &qword_1EAE3B498, &unk_193959120);
          OUTLINED_FUNCTION_128_0();
          sub_1934B3808();
        }

        type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_128_0();
        sub_1934B37B0();
        v12 = v49;
        v19 = v34;
        v21 = v51;
        break;
      case 7:
        v55[13] = 0;
        LOBYTE(v55[14]) = 1;
        OUTLINED_FUNCTION_117_5();
        sub_19393C190();
        v28 = v12;
        if (LOBYTE(v55[14]))
        {
          v29 = 0;
        }

        else
        {
          v29 = v55[13];
        }

        *(v52 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 44)) = v29;
        v12 = v28;
        break;
      case 8:
        v55[13] = 0;
        LOBYTE(v55[14]) = 1;
        OUTLINED_FUNCTION_117_5();
        sub_19393C1E0();
        if (LOBYTE(v55[14]))
        {
          v40 = 0.0;
        }

        else
        {
          v40 = *&v55[13];
        }

        *(v52 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 48)) = v40;
        break;
      case 9:
        v41 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_288(*(v41 + 36));
        sub_1934982A8();
        break;
      case 10:
        v36 = v12;
        v37 = v47;
        __swift_storeEnumTagSinglePayload(v21, 1, 1, v47);
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        sub_19344F184();
        if (__swift_getEnumTagSinglePayload(v19, 1, v37) == 1)
        {
          GenerativeFunctionsInstrumentationEvent.Identifiers.init()();
          sub_19344E6DC(v21, &qword_1EAE3B4A0, &qword_193952760);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v37);
          v12 = v36;
          if (EnumTagSinglePayload != 1)
          {
            sub_19344E6DC(v19, &qword_1EAE3B4A0, &qword_193952760);
          }
        }

        else
        {
          sub_19344E6DC(v21, &qword_1EAE3B4A0, &qword_193952760);
          OUTLINED_FUNCTION_127_1();
          sub_1934B3808();
          v12 = v36;
        }

        type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_127_1();
        sub_1934B37B0();
        v21 = v51;
        break;
      case 11:
        v42 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_288(*(v42 + 56));
LABEL_32:
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        break;
      case 12:
        v30 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        v31 = OUTLINED_FUNCTION_288(*(v30 + 60));
        sub_193498238(v31, v32, &type metadata for GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo, a3, &off_1F07BE860);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1934B37B0()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

uint64_t sub_1934B3808()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

void sub_1934B38AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA87B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_20(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("SubtypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "Start");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_16_6(v10, "End");
  v6(v11);
  v12 = OUTLINED_FUNCTION_22_3();
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_16_6(v12, "Fail");
  v6(v14);
  v15 = OUTLINED_FUNCTION_60_1((v0 + 4 * v3));
  *v15 = "Info";
  *(v15 + 1) = 4;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  v6(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B3A70()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA87C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "version");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B3BA0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();

      v1[2] = 0;
      v1[3] = 0xE000000000000000;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();

      *v1 = 0;
      v1[1] = 0xE000000000000000;
    }
  }

  return result;
}

void sub_1934B3CCC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA87E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v40 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v40, xmmword_193952670);
  *v0 = "clientSessionIdentifier";
  v0[1] = 23;
  OUTLINED_FUNCTION_107_3();
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_18_1(v8, "clientRequestIdentifier");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v11 = OUTLINED_FUNCTION_0_0(v10, "clientApplicationIdentifier");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v1 + 3 * v4));
  v13 = OUTLINED_FUNCTION_0_0(v12, "clientBundleIdentifier");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v1 + 4 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "intelligenceFlowGroupIdentifier");
  v6(v15);
  v16 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v17 = 6;
  v18 = OUTLINED_FUNCTION_0_0(v16, "intelligenceFlowSessionIdentifier");
  v6(v18);
  v19 = OUTLINED_FUNCTION_30_0((v1 + 6 * v4));
  v20 = OUTLINED_FUNCTION_0_0(v19, "intelligenceFlowSpanIdentifier");
  v6(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_39_3((v1 + v21));
  v23 = OUTLINED_FUNCTION_0_0(v22, "useCaseIdentifier");
  v6(v23);
  v24 = OUTLINED_FUNCTION_55_2((v1 + 8 * v4));
  v25 = OUTLINED_FUNCTION_0_0(v24, "generativeFunctionIdentifier");
  v6(v25);
  v26 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v27 = 14;
  v28 = OUTLINED_FUNCTION_0_0(v26, "generativeFunctionInvocationIdentifier");
  v6(v28);
  v29 = OUTLINED_FUNCTION_14_4(10);
  v30 = OUTLINED_FUNCTION_0_0(v29, "catalogResourceIdentifier");
  v6(v30);
  v31 = OUTLINED_FUNCTION_14_4(11);
  v32 = OUTLINED_FUNCTION_18_1(v31, "modelManagerRequestIdentifier");
  v6(v32);
  v33 = OUTLINED_FUNCTION_14_4(12);
  v34 = OUTLINED_FUNCTION_18_1(v33, "modelManagerSessionIdentifier");
  v6(v34);
  OUTLINED_FUNCTION_3_1(v1 + 13 * v4);
  OUTLINED_FUNCTION_180_0(v35);
  v37 = OUTLINED_FUNCTION_0_0(v36, "modelManagerAssetTransitionIdentifier");
  v6(v37);
  v38 = OUTLINED_FUNCTION_67_1((v1 + 14 * v4));
  *v38 = "inferenceProviderIdentifier";
  *(v38 + 1) = 27;
  v39 = OUTLINED_FUNCTION_1_3(v38);
  v6(v39);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B4000()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        goto LABEL_14;
      case 6:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 36);
        goto LABEL_12;
      case 7:
        type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
        OUTLINED_FUNCTION_113();
        sub_19393C230();
        continue;
      case 8:
      case 9:
      case 13:
        type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
LABEL_14:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        continue;
      case 10:
        type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
        sub_193498018();
        continue;
      case 11:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 60);
        goto LABEL_12;
      case 12:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 64);
        goto LABEL_12;
      case 14:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 52);
        goto LABEL_12;
      case 15:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 68);
LABEL_12:
        sub_193497890(v1 + v4);
        break;
      default:
        continue;
    }
  }
}

void sub_1934B41E4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA87F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("namespaceName");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_16_6(v8, "deploymentId");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_16_6(v10, "experimentId");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "treatmentId");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B4360()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C170();
        break;
      default:
        continue;
    }
  }
}

void sub_1934B43F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_75_3();
  v2 = *(v1 + 8);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v1, v2, 1);
  }

  if (!v0)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C350();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_181(v4, v5, 3);
    }

    if (v7)
    {
      OUTLINED_FUNCTION_181(v6, v7, 4);
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B44F8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8810);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v35 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_11_3(v35, xmmword_193952680);
  *v0 = "clientSessionIdentifiers";
  v0[1] = 24;
  OUTLINED_FUNCTION_107_3();
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_18_1(v8, "clientRequestIdentifiers");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v11 = OUTLINED_FUNCTION_16_6(v10, "clientApplicationIdentifiers");
  v6(v11);
  v12 = OUTLINED_FUNCTION_22_3();
  *v13 = 13;
  v14 = OUTLINED_FUNCTION_0_0(v12, "clientBundleIdentifiers");
  v6(v14);
  v15 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "intelligenceFlowGroupIdentifiers");
  v6(v16);
  v17 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "intelligenceFlowSessionIdentifiers");
  v6(v18);
  v19 = OUTLINED_FUNCTION_14_4(6);
  v20 = OUTLINED_FUNCTION_0_0(v19, "intelligenceFlowSpanIdentifiers");
  v6(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_30_0((v1 + v21));
  v23 = OUTLINED_FUNCTION_0_0(v22, "useCaseIdentifiers");
  v6(v23);
  v24 = OUTLINED_FUNCTION_39_3((v1 + 8 * v4));
  v25 = OUTLINED_FUNCTION_0_0(v24, "generativeFunctionIdentifiers");
  v6(v25);
  OUTLINED_FUNCTION_45_2(9 * v4);
  OUTLINED_FUNCTION_131_3(v26);
  v28 = OUTLINED_FUNCTION_0_0(v27, "catalogResourceIdentifiers");
  v6(v28);
  v29 = OUTLINED_FUNCTION_14_4(10);
  v30 = OUTLINED_FUNCTION_18_1(v29, "modelManagerRequestIdentifiers");
  v6(v30);
  v31 = OUTLINED_FUNCTION_14_4(11);
  v32 = OUTLINED_FUNCTION_18_1(v31, "modelManagerSessionIdentifiers");
  v6(v32);
  v33 = OUTLINED_FUNCTION_14_4(12);
  *v33 = "inferenceProviderIdentifiers";
  *(v33 + 1) = 28;
  v34 = OUTLINED_FUNCTION_1_3(v33);
  v6(v34);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B47CC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 7:
      case 8:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_193497D68(v3);
        break;
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1D0();
        break;
      case 9:
        OUTLINED_FUNCTION_62();
        sub_193498238(v4, v5, v6, v7, v8);
        break;
      default:
        continue;
    }
  }
}

void sub_1934B48D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v5 = v4[1];
  v7 = v4[2];
  v6 = v4[3];
  v9 = v4[4];
  v8 = v4[5];
  v10 = v4[6];
  v22 = v4[7];
  v20 = v4[9];
  v21 = v4[8];
  v18 = v4[11];
  v19 = v4[10];
  v17 = v4[12];
  if (*(*v4 + 16))
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C380();
  }

  if (!v3)
  {
    if (*(v5 + 16))
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C380();
    }

    if (*(v7 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v6 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v9 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v8 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_193498848();
    }

    if (*(v10 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3A0();
    }

    if (*(v22 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v21 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v20 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v11, v12, v13, v14, v15, v16);
    }

    if (*(v19 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v18 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v17 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1934B4B10(void *a1@<X8>)
{
  OUTLINED_FUNCTION_184();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  GenerativeFunctionsInstrumentationMetadata.GenericError.init()(v3);
  *a1 = v1;
}

void sub_1934B4B4C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8828);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v42 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v42, xmmword_193952690);
  OUTLINED_FUNCTION_290("genericError");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_9_4((v1 + v4));
  v9 = OUTLINED_FUNCTION_5_4(v8, "mmExecuteRequest");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13((v1 + 2 * v4));
  v11 = OUTLINED_FUNCTION_5_4(v10, "tgiExecuteRequest");
  v6(v11);
  v12 = OUTLINED_FUNCTION_19_2((v1 + 3 * v4));
  v13 = OUTLINED_FUNCTION_36_0(v12, "assetAcquire");
  v6(v13);
  OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_140_0(v14);
  v16 = OUTLINED_FUNCTION_36_0(v15, "assetRelease");
  v6(v16);
  v17 = OUTLINED_FUNCTION_30_0((v1 + 5 * v4));
  v18 = OUTLINED_FUNCTION_5_4(v17, "privateCloudMetrics");
  v6(v18);
  v19 = OUTLINED_FUNCTION_39_3((v1 + v4 * v0));
  v20 = OUTLINED_FUNCTION_5_4(v19, "validatorApplication");
  v6(v20);
  OUTLINED_FUNCTION_33_0(8 * v4);
  OUTLINED_FUNCTION_131_3(v21);
  v23 = OUTLINED_FUNCTION_5_4(v22, "modelManagerSessionEvent");
  v6(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v25 = 10;
  v26 = OUTLINED_FUNCTION_5_4(v24, "summarizationEvent");
  v6(v26);
  v27 = OUTLINED_FUNCTION_44(9 * v4);
  *v28 = 11;
  v29 = OUTLINED_FUNCTION_15(v27, 19);
  v6(v29);
  v30 = OUTLINED_FUNCTION_72();
  *v31 = 12;
  v32 = OUTLINED_FUNCTION_5_4(v30, "assetTransition");
  v6(v32);
  v33 = OUTLINED_FUNCTION_52_0();
  *v34 = 13;
  v35 = OUTLINED_FUNCTION_15(v33, 18);
  v6(v35);
  v36 = OUTLINED_FUNCTION_72();
  *v37 = 14;
  v38 = OUTLINED_FUNCTION_5_4(v36, "availabilityStatusTransition");
  v6(v38);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_180_0(v39);
  v41 = OUTLINED_FUNCTION_15(v40, 19);
  v6(v41);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}