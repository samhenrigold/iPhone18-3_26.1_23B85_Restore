void IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
      case 3:
      case 9:
      case 0xALL:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_69_10();
        break;
      case 7:
        OUTLINED_FUNCTION_76_9();
        break;
      case 8:
        OUTLINED_FUNCTION_68_9();
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

void IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6C6F437475706E49 && v0 == 0xEF6E6F697463656CLL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6C6F437475706E49, 0xEF6E6F697463656CLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x727465526E617053 && v0 == 0xED00006C61766569;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x727465526E617053, 0xED00006C61766569) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v9 = v1 == 0xD000000000000010 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v8) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_60();
          v11 = v4 && v10 == v0;
          if (v11 || (OUTLINED_FUNCTION_25_7(20, v10) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = v1 == 0x727465526C6F6F54 && v0 == 0xED00006C61766569;
            if (v12 || (OUTLINED_FUNCTION_0_9(0x727465526C6F6F54, 0xED00006C61766569) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v13 = v1 == 0x676E696B6E6152 && v0 == 0xE700000000000000;
              if (v13 || (OUTLINED_FUNCTION_22_7(0x676E696B6E6152) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v14 = OUTLINED_FUNCTION_69_10();
                v16 = v1 == v14 && v0 == v15;
                if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  v17 = OUTLINED_FUNCTION_76_9();
                  v19 = v1 == v17 && v0 == v18;
                  if (v19 || (OUTLINED_FUNCTION_0_9(v17, v18) & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    v20 = OUTLINED_FUNCTION_68_9();
                    v22 = v1 == v20 && v0 == v21;
                    if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_60();
                      v24 = v4 && v23 == v0;
                      if (v24 || (OUTLINED_FUNCTION_25_7(20, v23) & 1) != 0)
                      {

                        v5 = 9;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        if (v1 == 0xD00000000000001FLL && v25 == v0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0_9(0xD00000000000001FLL, v25);
                          OUTLINED_FUNCTION_89();
                          v5 = 10;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v9 = v6;
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v19, v20, v21, v22, &qword_1EAE3DC38, &qword_193966FC0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 16) = v13;
  v14 = v9 + 16 * v11;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  if (v12 < (v11 + 2))
  {
    v23 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_85(v23, v24, v25, v26, &qword_1EAE3DC38, &qword_193966FC0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 16) = v11 + 2;
  v15 = v9 + 16 * v13;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  if (v12 < (v11 + 3))
  {
    v27 = OUTLINED_FUNCTION_39(v10);
    v6 = OUTLINED_FUNCTION_84_2(v27, v28, v29, v30, &qword_1EAE3DC38, &qword_193966FC0);
    v9 = v6;
  }

  OUTLINED_FUNCTION_50(v6, v7, v8, v9);
  *(v16 + 32) = 1;
  *(v16 + 40) = 1;
  return v17;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    v10 = v5 && v9 == v1;
    if (v10 || (OUTLINED_FUNCTION_25_7(17, v9) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      if (v2 != 0xD000000000000013 || v11 != v1)
      {
        v8 = OUTLINED_FUNCTION_0_9(0xD000000000000013, v11);

        v7 = v8 & 1;
        goto LABEL_14;
      }

      v7 = 1;
    }

    v8 = 1;
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v57 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v57, v58, v59, v60, &qword_1EAE3DC30, &qword_193966FB8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v61 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v61, v62, v63, v64, &qword_1EAE3DC30, &qword_193966FB8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v65, v66, v67, v68, v69, v70);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v71 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v71, v72, v73, v74, &qword_1EAE3DC30, &qword_193966FB8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v75 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v75, v76, v77, v78, &qword_1EAE3DC30, &qword_193966FB8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_47_5(v31, v32, v33, v34);
  OUTLINED_FUNCTION_4(v36);
  OUTLINED_FUNCTION_80_10();
  if (!(v19 ^ v20 | v13))
  {
    v79 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v79, v80, v81, v82, &qword_1EAE3DC30, &qword_193966FB8);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42);
  OUTLINED_FUNCTION_79_12();
  if (!(v19 ^ v20 | v13))
  {
    v83 = OUTLINED_FUNCTION_39(v47);
    v43 = OUTLINED_FUNCTION_85(v83, v84, v85, v86, &qword_1EAE3DC30, &qword_193966FB8);
    v46 = v43;
  }

  OUTLINED_FUNCTION_47_5(v43, v44, v45, v46);
  OUTLINED_FUNCTION_4(v48);
  if (v0 + 8 > (v53 >> 1))
  {
    v87 = OUTLINED_FUNCTION_39(v53);
    v49 = OUTLINED_FUNCTION_84_2(v87, v88, v89, v90, &qword_1EAE3DC30, &qword_193966FB8);
    v52 = v49;
  }

  OUTLINED_FUNCTION_50(v49, v50, v51, v52);
  return OUTLINED_FUNCTION_38_1(v54, v55);
}

void IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_65_10();
        break;
      case 3:
        OUTLINED_FUNCTION_64_8();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_62_13();
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

void IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x69746E45656D6F48 && v0 == 0xEA00000000007974;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x69746E45656D6F48, 0xEA00000000007974) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6D796E6F6E7953 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x6D796E6F6E7953) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_65_10();
        v10 = v1 == v8 && v0 == v9;
        if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_64_8();
          v13 = v1 == v11 && v0 == v12;
          if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v15 = v1 == 0xD000000000000013 && v14 == v0;
            if (v15 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, v14) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v17 = v4 && v16 == v0;
              if (v17 || (OUTLINED_FUNCTION_25_7(17, v16) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v18 = OUTLINED_FUNCTION_62_13();
                if (v1 == v18 && v0 == v19)
                {

                  v5 = 6;
                }

                else
                {
                  OUTLINED_FUNCTION_0_9(v18, v19);
                  OUTLINED_FUNCTION_89();
                  v5 = 6;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v51 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v51, v52, v53, v54, &qword_1EAE3DC28, &qword_193966FB0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v55 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v55, v56, v57, v58, &qword_1EAE3DC28, &qword_193966FB0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v59, v60, v61, v62, v63, v64);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v65 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE3DC28, &qword_193966FB0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v69 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v69, v70, v71, v72, &qword_1EAE3DC28, &qword_193966FB0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_47_5(v31, v32, v33, v34);
  OUTLINED_FUNCTION_4(v36);
  OUTLINED_FUNCTION_80_10();
  if (!(v19 ^ v20 | v13))
  {
    v73 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE3DC28, &qword_193966FB0);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42);
  OUTLINED_FUNCTION_79_12();
  if (!(v19 ^ v20 | v13))
  {
    v77 = OUTLINED_FUNCTION_39(v47);
    v43 = OUTLINED_FUNCTION_85(v77, v78, v79, v80, &qword_1EAE3DC28, &qword_193966FB0);
    v46 = v43;
  }

  OUTLINED_FUNCTION_47_5(v43, v44, v45, v46);
  *(v48 + 32) = 5;
  *(v48 + 40) = v0;
  return v49;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 65;
  switch(*v0)
  {
    case 1:
      result = 66;
      break;
    case 2:
      result = 67;
      break;
    case 3:
      result = 68;
      break;
    case 4:
      result = 69;
      break;
    case 5:
      result = 70;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 65 && v0 == 0xE100000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(65, 0xE100000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 66 && v0 == 0xE100000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(66, 0xE100000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 67 && v0 == 0xE100000000000000;
        if (v8 || (OUTLINED_FUNCTION_0_9(67, 0xE100000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 68 && v0 == 0xE100000000000000;
          if (v9 || (OUTLINED_FUNCTION_0_9(68, 0xE100000000000000) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 69 && v0 == 0xE100000000000000;
            if (v10 || (OUTLINED_FUNCTION_0_9(69, 0xE100000000000000) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else if (v1 == 70 && v0 == 0xE100000000000000)
            {

              OUTLINED_FUNCTION_83();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(70, 0xE100000000000000);
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

uint64_t _s27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV13QDToolSubTypeO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1935949DC(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_95_0();
  v9 = sub_1934B0FCC(v4, v5, v6, v7, a1, a2);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    OUTLINED_FUNCTION_51((v10 > 1), v11 + 1, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 2) = v13;
  v14 = &v9[16 * v11];
  *(v14 + 4) = 0;
  v14[40] = 0;
  v15 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    OUTLINED_FUNCTION_51((v10 > 1), v11 + 2, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 2) = v15;
  v16 = &v9[16 * v13];
  *(v16 + 4) = 0;
  v16[40] = 1;
  v17 = v11 + 3;
  if (v12 < (v11 + 3))
  {
    v9 = OUTLINED_FUNCTION_51((v10 > 1), v11 + 3, v8, v9);
  }

  *(v9 + 2) = v17;
  v18 = &v9[16 * v15];
  *(v18 + 4) = 1;
  v18[40] = 1;
  v19 = *(v9 + 3);
  v20 = v11 + 4;
  if ((v11 + 4) > (v19 >> 1))
  {
    v9 = OUTLINED_FUNCTION_51((v19 > 1), v11 + 4, v8, v9);
  }

  *(v9 + 2) = v20;
  v21 = &v9[16 * v17];
  *(v21 + 4) = 2;
  v21[40] = 1;
  v22 = *(v9 + 3);
  v23 = v11 + 5;
  if ((v11 + 5) > (v22 >> 1))
  {
    v9 = OUTLINED_FUNCTION_51((v22 > 1), v11 + 5, v8, v9);
  }

  *(v9 + 2) = v23;
  v24 = &v9[16 * v20];
  *(v24 + 4) = 3;
  v24[40] = 1;
  v25 = *(v9 + 3);
  if ((v11 + 6) > (v25 >> 1))
  {
    v9 = OUTLINED_FUNCTION_51((v25 > 1), v11 + 6, v8, v9);
  }

  *(v9 + 2) = v11 + 6;
  return OUTLINED_FUNCTION_38_1(v9, &v9[16 * v23]);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x656E4F6567617453;
  switch(*v0)
  {
    case 1:
      result = 0x6F77546567617453;
      break;
    case 2:
      result = OUTLINED_FUNCTION_67_9();
      break;
    case 3:
      result = OUTLINED_FUNCTION_66_12();
      break;
    case 4:
      OUTLINED_FUNCTION_38();
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x656E4F6567617453 && v0 == 0xEC0000004E706F54;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x656E4F6567617453, 0xEC0000004E706F54) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6F77546567617453 && v0 == 0xEC0000004E706F54;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x6F77546567617453, 0xEC0000004E706F54) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_67_9();
        v10 = v1 == v8 && v0 == v9;
        if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_66_12();
          v13 = v1 == v11 && v0 == v12;
          if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == 0xD000000000000013 && 0x8000000193A202D0 == v0)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_25_7(19, 0x8000000193A202D0);
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v23) = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v20) = v5;

        v6 = static IntelligenceFlowQueryDecorationTelemetry.QDCollectionCompleted.== infix(_:_:)(&v23, &v20);
LABEL_9:
        v12 = v6;

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      v13 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = *(v13 + 36);
      v15 = *(v13 + 32);
      v16 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 32);
      v18 = *(v16 + 36);
      v23 = *(v13 + 16);
      v24 = v15;
      v25 = v14;
      v20 = *(v16 + 16);
      v21 = v17;
      v22 = v18;

      v6 = static IntelligenceFlowQueryDecorationTelemetry.QDCollectionFailed.== infix(_:_:)(&v23, &v20);
      goto LABEL_9;
    }

LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  if (v3 >> 62)
  {
    goto LABEL_11;
  }

  v7 = *(v2 + 24);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  LOBYTE(v23) = *(v2 + 16);
  *(&v23 + 1) = v7;
  LOBYTE(v20) = v8;
  *(&v20 + 1) = v9;

  v12 = static IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.== infix(_:_:)(&v23, &v20, v10, v11);

LABEL_10:

  return v12 & 1;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      sub_193595020();
    }

    else
    {
      sub_193594FCC();
    }
  }

  else
  {
    sub_193595074();
  }

  return sub_19393C540();
}

unint64_t sub_193594FCC()
{
  result = qword_1EAE3DBC8;
  if (!qword_1EAE3DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBC8);
  }

  return result;
}

unint64_t sub_193595020()
{
  result = qword_1EAE3DBD0;
  if (!qword_1EAE3DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBD0);
  }

  return result;
}

unint64_t sub_193595074()
{
  result = qword_1EAE3DBD8;
  if (!qword_1EAE3DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBD8);
  }

  return result;
}

unint64_t sub_1935950CC()
{
  result = qword_1EAE3DBE0;
  if (!qword_1EAE3DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBE0);
  }

  return result;
}

unint64_t sub_193595124()
{
  result = qword_1EAE3DBE8;
  if (!qword_1EAE3DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBE8);
  }

  return result;
}

unint64_t sub_19359517C()
{
  result = qword_1EAE3DBF0;
  if (!qword_1EAE3DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBF0);
  }

  return result;
}

unint64_t sub_1935951D4()
{
  result = qword_1EAE3DBF8;
  if (!qword_1EAE3DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBF8);
  }

  return result;
}

unint64_t sub_19359522C()
{
  result = qword_1EAE3DC00;
  if (!qword_1EAE3DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DC00);
  }

  return result;
}

unint64_t sub_193595284()
{
  result = qword_1EAE3DC08;
  if (!qword_1EAE3DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DC08);
  }

  return result;
}

unint64_t sub_1935952DC()
{
  result = qword_1EAE3DC10;
  if (!qword_1EAE3DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DC10);
  }

  return result;
}

unint64_t sub_193595334()
{
  result = qword_1EAE3DC18;
  if (!qword_1EAE3DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DC18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_39_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_19393C550();
}

void sub_193595504()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA598);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_11_3(v5, xmmword_1939526C0);
  OUTLINED_FUNCTION_63("eventMetadata");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_29_1();
  v10 = OUTLINED_FUNCTION_0_0(v9, "monotonicTimestamp");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v12 = 50;
  v13 = OUTLINED_FUNCTION_0_0(v11, "invocation");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_22_3();
  *v15 = 51;
  v16 = OUTLINED_FUNCTION_16_6(v14, "jointResolverCall");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v18 = 100;
  v19 = OUTLINED_FUNCTION_16_6(v17, "collectionContext");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v21 = 101;
  v22 = OUTLINED_FUNCTION_16_6(v20, "entitiesCollected");
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v24 = 102;
  v25 = OUTLINED_FUNCTION_0_0(v23, "tuplesGenerated");
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_45_2(7 * v4);
  *v27 = 103;
  v28 = OUTLINED_FUNCTION_0_0(v26, "entitiesRanked");
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  *v30 = 104;
  v31 = OUTLINED_FUNCTION_16_6(v29, "subComponentContext");
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v33 = 105;
  v34 = OUTLINED_FUNCTION_0_0(v32, "contextStatementIdsReported");
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v36 = 106;
  v37 = OUTLINED_FUNCTION_0_0(v35, "appPreLaunchTriggered");
  (v7)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v0 + 11 * v4);
  *v39 = 107;
  *v38 = "toolboxSizeReported";
  *(v38 + 8) = 19;
  *(v38 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935957FC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 'd':
        DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_160(*(DecorationTelemetry + 44));
        goto LABEL_21;
      case 'e':
        v7 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_160(*(v7 + 48));
        goto LABEL_21;
      case 'f':
        v4 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_160(*(v4 + 52));
        goto LABEL_21;
      case 'g':
        v5 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_160(*(v5 + 56));
        goto LABEL_21;
      case 'h':
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
        OUTLINED_FUNCTION_36_3();
        goto LABEL_21;
      case 'i':
        v8 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_160(*(v8 + 64));
        goto LABEL_21;
      case 'j':
        v9 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_160(*(v9 + 68));
        OUTLINED_FUNCTION_66_13();
        goto LABEL_21;
      case 'k':
        v6 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_160(*(v6 + 72));
        OUTLINED_FUNCTION_85_12();
        goto LABEL_21;
      default:
        switch(v1)
        {
          case 51:
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
            OUTLINED_FUNCTION_36_3();
            break;
          case 2:
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
            type metadata accessor for MonotonicTimestamp(0);
            OUTLINED_FUNCTION_36_3();
            break;
          case 50:
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
            OUTLINED_FUNCTION_36_3();
            break;
          case 1:
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
            OUTLINED_FUNCTION_36_3();
            break;
          default:
            continue;
        }

LABEL_21:
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193595A64()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193595D08();
  if (!v1)
  {
    OUTLINED_FUNCTION_11_1();
    sub_193595E14();
    OUTLINED_FUNCTION_11_1();
    sub_193595F20();
    OUTLINED_FUNCTION_11_1();
    sub_19359602C();
    DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
    if ((~*(v0 + DecorationTelemetry[11]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_91_9();
    if (v4)
    {
      OUTLINED_FUNCTION_130_4(v3);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if (((*(v0 + DecorationTelemetry[13] + 8) | (*(v0 + DecorationTelemetry[13] + 12) << 32)) & 0xFF0000000000) != 0x30000000000)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_91_9();
    if (v5)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_193596138();
    OUTLINED_FUNCTION_91_9();
    if (v6)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if (*(v0 + DecorationTelemetry[17]) != 3)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((*(v0 + DecorationTelemetry[18] + 5) & 1) == 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_193595D08()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(DecorationTelemetry + 28));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3DAA0, &qword_193966A88);
  }

  else
  {
    sub_19359BF34(v0, v1, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata);
    OUTLINED_FUNCTION_12_12(v1, 1);
    OUTLINED_FUNCTION_64_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193595E14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(DecorationTelemetry + 32));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_19359BF34(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12(v1, 2);
    OUTLINED_FUNCTION_64_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193595F20()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(DecorationTelemetry + 36));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3DAA8, &qword_193966A90);
  }

  else
  {
    sub_19359BF34(v0, v1, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
    OUTLINED_FUNCTION_12_12(v1, 50);
    OUTLINED_FUNCTION_64_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19359602C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(DecorationTelemetry + 40));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3DAB0, &unk_193967240);
  }

  else
  {
    sub_19359BF34(v0, v1, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_12_12(v1, 51);
    OUTLINED_FUNCTION_64_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193596138()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(DecorationTelemetry + 60));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3DAB8, &qword_193966A98);
  }

  else
  {
    sub_19359BF34(v0, v1, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
    OUTLINED_FUNCTION_12_12(v1, 104);
    OUTLINED_FUNCTION_64_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935962A8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA5B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_83_0("QDCallerUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v10 = OUTLINED_FUNCTION_5_4(v9, "QDCallerPrePlanner");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_5_4(v11, "QDCallerFullPlanner");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_5_4(v14, "QDCallerCrossDeviceOrchestration");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  *v16 = "QDCallerPreWarm";
  *(v16 + 1) = 15;
  v16[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193596490()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA5C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_43_2(v5, xmmword_1939526E0);
  *v0 = "QDToolSubTypeUnknown";
  *(v0 + 8) = 20;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v9 = "QDToolSubTypeImplementation";
  *(v9 + 1) = 27;
  v10 = OUTLINED_FUNCTION_56_0(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "QDToolSubTypeAssistantSchema";
  v11[1] = 28;
  v13 = OUTLINED_FUNCTION_56_0(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "QDToolSubTypeEntitySetter";
  *(v14 + 1) = 25;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  *v16 = "QDToolSubTypeClientAction";
  *(v16 + 1) = 25;
  v17 = OUTLINED_FUNCTION_56_0(v16);
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  *v18 = "QDToolSubTypeUIControl";
  *(v18 + 1) = 22;
  v18[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935966B0()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA5E0);
  __swift_project_value_buffer(v2, qword_1EAEAA5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v82 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v82, xmmword_193966FF0);
  OUTLINED_FUNCTION_83_0("QDEntityContextTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v9 = OUTLINED_FUNCTION_5_4(v8, "QDEntityContextTypeAppInFocusBundleId");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_5_4(v10, "QDEntityContextTypeBluetoothDeviceType");
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  *v13 = "QDEntityContextTypeCalendarEvents";
  *(v13 + 1) = 33;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  *v15 = "QDEntityContextTypeCurrentLocation";
  *(v15 + 1) = 34;
  v16 = OUTLINED_FUNCTION_41(v15);
  (v6)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v18 = OUTLINED_FUNCTION_5_4(v17, "QDEntityContextTypeMotionState");
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_9_0(6);
  v20 = OUTLINED_FUNCTION_5_4(v19, "QDEntityContextTypeNowPlayingPlaybackState");
  (v6)(v20);
  OUTLINED_FUNCTION_44(7 * v4);
  OUTLINED_FUNCTION_181_0(v21);
  *v22 = "QDEntityContextTypePointOfInterest";
  v22[1] = 34;
  v23 = OUTLINED_FUNCTION_41(v22);
  (v6)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  *v25 = 8;
  *v24 = "QDEntityContextTypeRecentTranscript";
  v24[1] = 35;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v6)(v26);
  v27 = OUTLINED_FUNCTION_44(9 * v4);
  *v28 = 9;
  *v27 = "QDEntityContextTypeSemanticLocation";
  v27[1] = 35;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_9_0(10);
  v31 = OUTLINED_FUNCTION_5_4(v30, "QDEntityContextTypeOnScreenContentEmailAddress");
  (v6)(v31);
  v32 = OUTLINED_FUNCTION_9_0(11);
  v33 = OUTLINED_FUNCTION_5_4(v32, "QDEntityContextTypeOnScreenContentPhoneNumber");
  (v6)(v33);
  v34 = OUTLINED_FUNCTION_9_0(12);
  v35 = OUTLINED_FUNCTION_5_4(v34, "QDEntityContextTypeOnScreenContentPostalAddress");
  (v6)(v35);
  v36 = OUTLINED_FUNCTION_9_0(13);
  *v36 = "QDEntityContextTypeOnScreenContentUriLink";
  *(v36 + 1) = 41;
  v37 = OUTLINED_FUNCTION_41(v36);
  (v6)(v37);
  v38 = OUTLINED_FUNCTION_9_0(14);
  v39 = OUTLINED_FUNCTION_5_4(v38, "QDEntityContextTypeOnScreenContentAppEntity");
  (v6)(v39);
  v40 = OUTLINED_FUNCTION_44(15 * v4);
  *v41 = 15;
  *v40 = "QDEntityContextTypeOnScreenPerson";
  v40[1] = 33;
  v42 = OUTLINED_FUNCTION_41(v40);
  (v6)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v0 + 16 * v4);
  *v44 = 16;
  v45 = OUTLINED_FUNCTION_5_4(v43, "QDEntityContextTypeOnScreenHome");
  (v6)(v45);
  v46 = OUTLINED_FUNCTION_44(17 * v4);
  *v47 = 17;
  *v46 = "QDEntityContextTypeOnScreenNotification";
  v46[1] = 39;
  v48 = OUTLINED_FUNCTION_41(v46);
  (v6)(v48);
  v49 = OUTLINED_FUNCTION_9_0(18);
  *v49 = "QDEntityContextTypeOnScreenDateTime";
  *(v49 + 1) = 35;
  v50 = OUTLINED_FUNCTION_41(v49);
  (v6)(v50);
  v51 = OUTLINED_FUNCTION_9_0(19);
  *v51 = "QDEntityContextTypeConversationalReminder";
  *(v51 + 1) = 41;
  v52 = OUTLINED_FUNCTION_41(v51);
  (v6)(v52);
  v53 = OUTLINED_FUNCTION_9_0(20);
  *v53 = "QDEntityContextTypeConversationalCalendarevent";
  *(v53 + 1) = 46;
  v54 = OUTLINED_FUNCTION_41(v53);
  (v6)(v54);
  v55 = OUTLINED_FUNCTION_9_0(21);
  *v55 = "QDEntityContextTypeConversationalPeople";
  *(v55 + 1) = 39;
  v56 = OUTLINED_FUNCTION_41(v55);
  (v6)(v56);
  v57 = OUTLINED_FUNCTION_9_0(22);
  *v57 = "QDEntityContextTypeConversationalPlaces";
  *(v57 + 1) = 39;
  v58 = OUTLINED_FUNCTION_41(v57);
  (v6)(v58);
  v59 = OUTLINED_FUNCTION_9_0(23);
  *v59 = "QDEntityContextTypeConversationalAlarm";
  *(v59 + 1) = 38;
  v60 = OUTLINED_FUNCTION_41(v59);
  (v6)(v60);
  v61 = OUTLINED_FUNCTION_9_0(24);
  *v61 = "QDEntityContextTypeConversationalTimer";
  *(v61 + 1) = 38;
  v62 = OUTLINED_FUNCTION_41(v61);
  (v6)(v62);
  v63 = OUTLINED_FUNCTION_9_0(25);
  *v63 = "QDEntityContextTypeNowPlayingMediaItem";
  *(v63 + 1) = 38;
  v64 = OUTLINED_FUNCTION_41(v63);
  (v6)(v64);
  v65 = OUTLINED_FUNCTION_3_1(v0 + 26 * v4);
  *v66 = v67;
  *v65 = "QDEntityContextTypeSiriRequestContext";
  v65[1] = 37;
  v68 = OUTLINED_FUNCTION_41(v65);
  (v6)(v68);
  v69 = OUTLINED_FUNCTION_9_0(27);
  *v69 = "QDEntityContextTypeIntelligenceCommand";
  *(v69 + 1) = 38;
  v70 = OUTLINED_FUNCTION_41(v69);
  (v6)(v70);
  v71 = OUTLINED_FUNCTION_9_0(28);
  *v71 = "QDEntityContextTypeHasFocusedOnScreenDocument";
  *(v71 + 1) = 45;
  v72 = OUTLINED_FUNCTION_41(v71);
  (v6)(v72);
  v73 = OUTLINED_FUNCTION_9_0(29);
  *v73 = "QDEntityContextTypeHasFocusedOnScreenImage";
  *(v73 + 1) = 42;
  v74 = OUTLINED_FUNCTION_41(v73);
  (v6)(v74);
  v75 = OUTLINED_FUNCTION_3_1(v0 + 30 * v4);
  *v76 = v77;
  *v75 = "QDEntityContextTypeOnScreenUIText";
  v75[1] = 33;
  v78 = OUTLINED_FUNCTION_41(v75);
  (v6)(v78);
  v79 = OUTLINED_FUNCTION_44(31 * v4);
  *v80 = 31;
  *v79 = "QDEntityContextTypeOnScreenApp";
  *(v79 + 8) = 30;
  *(v79 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v6();
  return sub_19393C410();
}

void sub_193596D20()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA5F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v5, xmmword_1939526C0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("QDSubComponentUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_52();
  *v10 = 1;
  v11 = OUTLINED_FUNCTION_0_0(v9, "QDSubComponentInputCollection");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  v13 = OUTLINED_FUNCTION_16_6(v12, "QDSubComponentSpanRetrieval");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "QDSubComponentContextRetrieval");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_0_0(v16, "QDSubComponentToolRetrievalContext");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v19 = OUTLINED_FUNCTION_16_6(v18, "QDSubComponentToolRetrieval");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_54_1(6);
  *v20 = "QDSubComponentRanking";
  *(v20 + 1) = 21;
  v20[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_45_2(7 * v4);
  OUTLINED_FUNCTION_181_0(v21);
  v23 = OUTLINED_FUNCTION_16_6(v22, "QDSubComponentTupleBuilding");
  (v7)(v23);
  v24 = OUTLINED_FUNCTION_3_1(&v0[v4]);
  *v25 = 8;
  v26 = OUTLINED_FUNCTION_0_0(v24, "QDSubComponentTupleRanking");
  (v7)(v26);
  v27 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v28 = 9;
  v29 = OUTLINED_FUNCTION_0_0(v27, "QDSubComponentOutputBuilding");
  (v7)(v29);
  v30 = OUTLINED_FUNCTION_54_1(10);
  *v30 = "QDSubComponentToolContextRetrieval";
  *(v30 + 1) = 34;
  v30[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  v31 = OUTLINED_FUNCTION_54_1(11);
  v32 = OUTLINED_FUNCTION_0_0(v31, "QDSubComponentFetchDynamicEnumerationEntities");
  (v7)(v32);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19359702C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA610);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  *(v4 + 16) = xmmword_19394FBB0;
  *(v4 + v0) = 0;
  OUTLINED_FUNCTION_69_0("QDSpanMatcherTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_52();
  *v9 = 1;
  v10 = OUTLINED_FUNCTION_48(v8, "QDSpanMatcherTypeSiriEntityMatcher");
  v6(v10);
  v11 = OUTLINED_FUNCTION_59_2((v4 + v0 + 2 * v3));
  v12 = OUTLINED_FUNCTION_48(v11, "QDSpanMatcherTypeGlobalEntityMatcher");
  v6(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935971C4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA628);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("QDMatchingTransformUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v10 = OUTLINED_FUNCTION_5_4(v9, "QDMatchingTransformHomeEntity");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v12 = v1;
  *v11 = "QDMatchingTransformSynonym";
  v11[1] = 26;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_5_4(v14, "QDMatchingTransformTransliteration");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  *v16 = "QDMatchingTransformExpandedEmoji";
  *(v16 + 1) = 32;
  v17 = OUTLINED_FUNCTION_41(v16);
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v19 = OUTLINED_FUNCTION_5_4(v18, "QDMatchingTransformContactRelationship");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_9_0(6);
  v21 = OUTLINED_FUNCTION_5_4(v20, "QDMatchingTransformContactHypocorism");
  (v7)(v21);
  OUTLINED_FUNCTION_44(7 * v4);
  OUTLINED_FUNCTION_181_0(v22);
  *v23 = "QDMatchingTransformContactHandle";
  *(v23 + 8) = 32;
  *(v23 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19359742C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAA640);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193952700);
  *v0 = 0;
  OUTLINED_FUNCTION_63("QDDataProtectionClassUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_52();
  *v10 = 1;
  v11 = OUTLINED_FUNCTION_16_6(v9, "QDDataProtectionClassA");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  v13 = OUTLINED_FUNCTION_16_6(v12, "QDDataProtectionClassB");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_16_6(v14, "QDDataProtectionClassC");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_16_6(v16, "QDDataProtectionClassD");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v19 = OUTLINED_FUNCTION_16_6(v18, "QDDataProtectionClassE");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_54_1(6);
  *v20 = "QDDataProtectionClassF";
  *(v20 + 1) = 22;
  v20[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193597654()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA658);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_43_2(v5, xmmword_1939526E0);
  *v0 = "QDToolSelectionCriteriaUnknown";
  *(v0 + 8) = 30;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v9 = "QDToolSelectionCriteriaStageOneTopN";
  *(v9 + 1) = 35;
  v10 = OUTLINED_FUNCTION_56_0(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "QDToolSelectionCriteriaStageTwoTopN";
  v11[1] = 35;
  v13 = OUTLINED_FUNCTION_56_0(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "QDToolSelectionCriteriaStageThreeTopN";
  *(v14 + 1) = 37;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  *v16 = "QDToolSelectionCriteriaStageFourTopN";
  *(v16 + 1) = 36;
  v17 = OUTLINED_FUNCTION_56_0(v16);
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  *v18 = "QDToolSelectionCriteriaRankedToolTupleTopN";
  *(v18 + 1) = 42;
  v18[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193597874()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA670);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  *v0 = "qdId";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = 50;
  v8 = OUTLINED_FUNCTION_48(v6, "rowId");
  v4(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935979B4()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 50)
    {
      Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
      v4 = OUTLINED_FUNCTION_160(*(Decoration + 20));
      sub_193497890(v4);
    }

    else if (v1 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_86();
      sub_193498018();
    }
  }
}

void sub_193597A98()
{
  OUTLINED_FUNCTION_26();
  v12[1] = v1;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  v8 = sub_19393BE60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = OUTLINED_FUNCTION_37();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(v10);
  sub_1934486F8(v3 + *(Decoration + 20), v7, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_19344E6DC(v7, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    (*(v9 + 32))(v0, v7, v8);
    sub_19344652C();
    (*(v9 + 8))(v0, v8);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193597C98()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA688);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("exists");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "callers");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193597DC8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_1934984D4(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_193597E48()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 8);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C2E0();
  }

  if (!v1)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193498B44(v3, v4, v5, v6, v7, v8);
    }
  }
}

void sub_193597F78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA6B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("errorDomain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "errorCode");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935980F4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA6D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v4, xmmword_193952700);
  OUTLINED_FUNCTION_63("sessionScopedUniqueId");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_16_6(v8, "toolId");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "subType");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "similarityScore");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "selectionCriteria");
  v6(v15);
  v16 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v17 = 6;
  v18 = OUTLINED_FUNCTION_0_0(v16, "toolSource");
  v6(v18);
  OUTLINED_FUNCTION_3_1(v0 + 6 * v3);
  OUTLINED_FUNCTION_181_0(v19);
  v21 = OUTLINED_FUNCTION_0_0(v20, "toolDefinition");
  v6(v21);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935982F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_86();
        goto LABEL_13;
      case 2:
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        continue;
      case 3:
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
        OUTLINED_FUNCTION_160(*(Decoration + 24));
        goto LABEL_8;
      case 4:
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
        OUTLINED_FUNCTION_113();
        sub_19393C160();
        continue;
      case 5:
        v3 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
        OUTLINED_FUNCTION_160(*(v3 + 32));
LABEL_8:
        sub_1934982A8();
        continue;
      case 6:
        v5 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
        OUTLINED_FUNCTION_160(*(v5 + 36));
        OUTLINED_FUNCTION_85_12();
        goto LABEL_13;
      case 7:
        v6 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
        OUTLINED_FUNCTION_160(*(v6 + 40));
        OUTLINED_FUNCTION_66_13();
LABEL_13:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193598468()
{
  OUTLINED_FUNCTION_22_0();
  v3 = OUTLINED_FUNCTION_11_1();
  sub_19359860C(v3, v4, v5, v6, v7, v8, v9, v10, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  if (!v1)
  {
    type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
    OUTLINED_FUNCTION_83_12();
    if (*(v11 + 8))
    {
      sub_19393C3C0();
    }

    if ((*(v0 + v2[6] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_237_0();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v12, v13, v14, v15, v16, v17);
    }

    if ((*(v0 + v2[7] + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }

    if ((*(v0 + v2[8] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_237_0();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v18, v19, v20, v21, v22, v23);
    }

    OUTLINED_FUNCTION_91_9();
    if (v24)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_91_9();
    if (v26)
    {
      OUTLINED_FUNCTION_130_4(v25);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_19359860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_5_8(v24, v25);
  v26 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v28);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1934486F8(v21, v20, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_25_0();
  if (v32)
  {
    sub_19344E6DC(v20, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19359BF34(v20, v31, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12(v31, 1);
    OUTLINED_FUNCTION_64_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193598794()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA6E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("parameters");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "output");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "description");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935988E8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        sub_193498238(v3, v4, v5, v6, v7);
        break;
    }
  }
}

void sub_19359899C()
{
  OUTLINED_FUNCTION_70_9();
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[5];
  v11 = v1[6];
  if (*(*v1 + 16))
  {
    OUTLINED_FUNCTION_106();
    v7 = sub_193451CFC(v12, v13, v14, v15, v16, v17);
  }

  if (!v0)
  {
    if (v9 != 2)
    {
      OUTLINED_FUNCTION_182_0(v7, v2, v3, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition, v4, &off_1F07CF068, v5, v6, v8);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v11)
    {
      OUTLINED_FUNCTION_181(v10, v11, 3);
    }
  }
}

void sub_193598ABC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA700);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("key");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_16_6(v8, "name");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "entityType");
  v6(v11);
  v12 = OUTLINED_FUNCTION_22_3();
  *v13 = 4;
  v14 = OUTLINED_FUNCTION_0_0(v12, "description");
  v6(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193598C3C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_193598CE8()
{
  OUTLINED_FUNCTION_70_9();
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[9];
  v7 = v1[8];
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v1, v2, 1);
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_181(v3, v4, 2);
    }

    if (v5 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181(v7, v6, 4);
    }
  }
}

void sub_193598E40()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_193598EA4()
{
  if (v0[1] != 1)
  {
    OUTLINED_FUNCTION_89_0();
    OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType, v4, &off_1F07CF158, v5, v6, *v0);
    sub_193447600();
  }
}

void sub_193598F68()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA730);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("spanMatches");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "contexualMatches");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193599098()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_57_7();
LABEL_8:
      sub_193498238(v3, v4, v5, v6, v7);
    }

    else if (v1 == 1)
    {
      type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
      v3 = OUTLINED_FUNCTION_86();
      v7 = &off_1F07CF0F8;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_193599134()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_82_9();
  if (v4)
  {
    Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
    OUTLINED_FUNCTION_80_11(v3, 1, v6, Decoration, v7, &off_1F07CF0F8);
    v0 = v1;
  }

  if (!v0 && *(v2 + 16))
  {
    v8 = type metadata accessor for AIML.UUID(0);
    OUTLINED_FUNCTION_80_11(v2, 2, v9, v8, v10, &off_1F07C4010);
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_193599224()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA748);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("sessionScopedUniqueId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "contextType");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "valueType");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193599378()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
        OUTLINED_FUNCTION_160(*(Decoration + 24));
LABEL_10:
        sub_193498018();
        break;
      case 2:
        v3 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
        OUTLINED_FUNCTION_160(*(v3 + 20));
        OUTLINED_FUNCTION_66_13();
        sub_1934982A8();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_86();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19359945C()
{
  OUTLINED_FUNCTION_22_0();
  v3 = OUTLINED_FUNCTION_11_1();
  sub_19359860C(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
  if (!v1)
  {
    type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
    OUTLINED_FUNCTION_83_12();
    if ((*(v11 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_182_0(v12, v13, v14, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType, v15, &off_1F07CEE28, v16, v17, v26);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v18, v19, v20, v21, v22, v23);
    }

    v24 = (v0 + *(v2 + 24));
    if (v24->n128_u64[1] != 1)
    {
      OUTLINED_FUNCTION_128_6(v24);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_19359958C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA760);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("sessionScopedUniqueId");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "valueType");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "matches");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "dataProtectionClass");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193599710()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_86();
        goto LABEL_9;
      case 2:
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
        OUTLINED_FUNCTION_160(*(Decoration + 20));
LABEL_9:
        sub_193498018();
        break;
      case 3:
        v3 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
        OUTLINED_FUNCTION_160(*(v3 + 24));
        OUTLINED_FUNCTION_66_13();
        sub_193498238(v4, v5, v6, v7, v8);
        break;
      case 4:
        v9 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
        OUTLINED_FUNCTION_160(*(v9 + 28));
        OUTLINED_FUNCTION_85_12();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193599830()
{
  OUTLINED_FUNCTION_22_0();
  v3 = OUTLINED_FUNCTION_11_1();
  sub_19359860C(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
  if (!v1)
  {
    type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
    OUTLINED_FUNCTION_83_12();
    if (v11->n128_u64[1] != 1)
    {
      OUTLINED_FUNCTION_128_6(v11);
      OUTLINED_FUNCTION_182_0(v12, v13, v14, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType, v15, &off_1F07CF158, v16, v17, v31);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if (*(*(v0 + *(v2 + 24)) + 16))
    {
      OUTLINED_FUNCTION_78_1();
      sub_193451CFC(v18, v19, v20, v21, v22, v23);
    }

    if ((*(v0 + *(v2 + 28) + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v24, v25, v26, v27, v28, v29);
    }
  }
}

void sub_193599994()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA778);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_108_2();
  *(v4 + 16) = xmmword_1939526E0;
  *(v4 + v1) = 1;
  OUTLINED_FUNCTION_83_0("startIndex");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_3_1(v4 + v1 + v3);
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_5_4(v8, "endIndex");
  (v6)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v4 + v1 + 2 * v3));
  v12 = OUTLINED_FUNCTION_5_4(v11, "matchingTransforms");
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_13((v4 + v1 + 3 * v3));
  v14 = OUTLINED_FUNCTION_5_4(v13, "matcher");
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_19_2((v4 + v1 + 4 * v3));
  *v15 = "matchScore";
  *(v15 + 1) = 10;
  v16 = OUTLINED_FUNCTION_41(v15);
  (v6)(v16);
  v17 = OUTLINED_FUNCTION_44(5 * v3);
  *v18 = 6;
  *v17 = "originAppBundleId";
  *(v17 + 8) = 17;
  *(v17 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193599B90()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        sub_1934984D4(v3, v4, v5, v6, v7);
        break;
      case 4:
        OUTLINED_FUNCTION_89_2();
        sub_1934982A8();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193599C88()
{
  OUTLINED_FUNCTION_70_9();
  v2 = *(v1 + 12);
  v3 = *(v1 + 16);
  v4 = *(v1 + 33);
  v5 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = *(v1 + 56);
  if ((*(v1 + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C3D0();
  }

  if (!v0)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193498B44(v6, v7, v8, v9, v10, v11);
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447324(v12, v13, v14, v15, v16, v17);
    }

    if ((v5 & 1) == 0)
    {
      sub_19393C340();
    }

    if (v19)
    {
      OUTLINED_FUNCTION_181(v18, v19, 6);
    }
  }
}

void sub_193599E28()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA790);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("bundleId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "nameOfTypedValue");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193599F8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = *&IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.init()();
  *a1 = v2;
  return result;
}

void sub_193599FD0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEAA7A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "ended");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "failed");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19359A124()
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
      case 3:
        v19 = xmmword_1939526A0;
        v21 = 0;
        v20 = 0;
        sub_193498018();

        v8 = *(&v19 + 1);
        if (*(&v19 + 1) == 1)
        {
          v9 = &v15;
          IntelligenceFlowQueryDecorationTelemetry.QDCollectionFailed.init()(&v15);
          v8 = v16;
          v10 = v17;
          v11 = v18;
        }

        else
        {
          v10 = v20;
          v11 = v21 & 1;
          v9 = &v19;
        }

        v12 = *v9;
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v8;
        *(v13 + 32) = v10;
        *(v13 + 36) = v11;
        *v1 = v13 | 0x8000000000000000;
        break;
      case 2:
        LOBYTE(v19) = 3;
        sub_193498018();

        v6 = v19;
        if (v19 == 3)
        {
          IntelligenceFlowQueryDecorationTelemetry.QDCollectionCompleted.init()();
          v6 = v15;
        }

        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *v1 = v7 | 0x4000000000000000;
        break;
      case 1:
        v19 = 0uLL;
        sub_193498018();

        v4 = *(&v19 + 1);
        if (*(&v19 + 1))
        {
          v5 = v19;
        }

        else
        {
          IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.init()();
          v5 = v15;
          v4 = v16;
        }

        v14 = swift_allocObject();
        *(v14 + 16) = v5;
        *(v14 + 24) = v4;
        *v1 = v14;
        break;
    }
  }
}

void sub_19359A370()
{
  OUTLINED_FUNCTION_89_0();
  if (*v0 >> 62 == 1)
  {
    LOBYTE(v7) = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionCompleted, v4, &off_1F07CEF78, v5, v6, v7);
  }

  sub_193447600();
}

void sub_19359A498()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA7C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("retrievedTools");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "spanMatchedEntities");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "utteranceContext");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "requiredContext");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "context");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19359A644()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
      case 2:
      case 3:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_57_7();
        goto LABEL_9;
      case 4:
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
        v7 = v1 + 24;
        goto LABEL_7;
      case 5:
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
        v7 = v1 + 32;
LABEL_7:
        v8 = v3;
        v9 = v2;
        v10 = &off_1F07CF0C8;
LABEL_9:
        sub_193498238(v7, v8, Decoration, v9, v10);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_19359A744()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_22_0();
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  if (*(*v2 + 16))
  {
    type metadata accessor for AIML.UUID(0);
    OUTLINED_FUNCTION_78_1();
    sub_193451CFC(v7, v8, v9, v10, v11, v12);
    v1 = v0;
  }

  if (!v1)
  {
    if (!*(v3 + 16) || (type metadata accessor for AIML.UUID(0), OUTLINED_FUNCTION_78_1(), sub_193451CFC(v13, v14, v15, v16, v17, v18), !v0))
    {
      if (!*(v5 + 16) || (type metadata accessor for AIML.UUID(0), OUTLINED_FUNCTION_78_1(), sub_193451CFC(v19, v20, v21, v22, v23, v24), !v0))
      {
        if (!*(v4 + 16) || (type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0), OUTLINED_FUNCTION_78_1(), sub_193451CFC(v25, v26, v27, v28, v29, v30), !v0))
        {
          if (*(v6 + 16))
          {
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
            OUTLINED_FUNCTION_78_1();
            sub_193451CFC(v31, v32, v33, v34, v35, v36);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19359A8F4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA7D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("numberOfTuples");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "maximumTupleWidth");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "wasToolTupleLimitReached");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19359AA48()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C220();
    }
  }

  return result;
}

void sub_19359AAC0()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_110();
  v2 = v0[12];
  v3 = v0[13];
  if ((v0[4] & 1) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C3D0();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C3D0();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C2E0();
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_19359ABB4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA7F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("retrievedTools");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "spanMatchedEntities");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "utteranceContext");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19359AD08()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
        OUTLINED_FUNCTION_57_7();
LABEL_10:
        sub_193498238(v6, v7, Decoration, v9, v10);
        break;
      case 2:
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
        v6 = v1 + 8;
        v7 = v3;
        v9 = v2;
        v10 = &off_1F07CF0F8;
        goto LABEL_10;
      case 1:
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
        v6 = OUTLINED_FUNCTION_86();
        v10 = &off_1F07CEFD8;
        goto LABEL_10;
    }
  }
}

void sub_19359ADDC()
{
  OUTLINED_FUNCTION_134_7();
  v1 = v0;
  OUTLINED_FUNCTION_22_0();
  v3 = v2[1];
  v4 = v2[2];
  if (*(*v2 + 16))
  {
    type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
    OUTLINED_FUNCTION_78_1();
    sub_193451CFC(v5, v6, v7, v8, v9, v10);
    v1 = v0;
  }

  if (!v1)
  {
    if (!*(v3 + 16) || (type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0), OUTLINED_FUNCTION_78_1(), sub_193451CFC(v11, v12, v13, v14, v15, v16), !v0))
    {
      if (*(v4 + 16))
      {
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
        OUTLINED_FUNCTION_78_1();
        sub_193451CFC(v17, v18, v19, v20, v21, v22);
      }
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_19359AF3C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_1934982A8();
    }
  }
}

uint64_t sub_19359AFA0()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_89_0();
    v1 = *(v0 + 8);
    v5 = *v0;
    v6 = v1 & 1;
    return sub_193447324(&v5, 1, v2, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponent, v3, &off_1F07CEE50);
  }

  return result;
}

void sub_19359B0B0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA838);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("errorDomain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "errorCode");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19359B1E0()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 8);
  v3 = *(v0 + 20);
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C350();
  }
}

void sub_19359B288()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA850);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "ended");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "failed");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "traceId");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19359B40C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
        goto LABEL_6;
      case 4:
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_36_3();
LABEL_6:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19359B518()
{
  OUTLINED_FUNCTION_110();
  if ((*(v0 + 10) & 1) == 0)
  {
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }

  if (!v1)
  {
    if (*(v0 + 11) != 3)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (*(v0 + 24) != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    OUTLINED_FUNCTION_95_3();
    sub_19359B624();
  }
}

void sub_19359B624()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(v8);
  OUTLINED_FUNCTION_39_1(*(Decoration + 28));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19359BF34(v0, v1, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12(v1, 4);
    OUTLINED_FUNCTION_64_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19359B794()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA868);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  *v0 = "isPredictionCorrect";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = 2;
  *v6 = "isPreLaunchExecuted";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19359B8DC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_19359B938()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[1];
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }

  if (!v1 && v2 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }
}

void sub_19359BA14()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA880);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("contextStatementIds");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "contextualEntityStatementIds");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19359BB44()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C1C0();
    }

    else if (result == 1)
    {
      type metadata accessor for AIML.UUID(0);
      v3 = OUTLINED_FUNCTION_86();
      sub_193498238(v3, v4, v5, v6, &off_1F07C4010);
    }
  }

  return result;
}

void sub_19359BBD0()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_82_9();
  if (v4)
  {
    v5 = type metadata accessor for AIML.UUID(0);
    OUTLINED_FUNCTION_80_11(v3, 1, v6, v5, v7, &off_1F07C4010);
    v0 = v1;
  }

  if (!v0 && *(v2 + 16))
  {
    sub_19393C390();
  }

  OUTLINED_FUNCTION_135_4();
}

uint64_t sub_19359BCD8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C220();
    }
  }

  return result;
}

uint64_t sub_19359BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 4) & 1) == 0)
  {
    return sub_19393C3D0();
  }

  return result;
}

void sub_19359BE34()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_86();
      sub_193498018();
    }
  }
}

uint64_t sub_19359BF34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19359BF94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(DecorationTelemetry + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(DecorationTelemetry + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19359C1D8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(DecorationTelemetry + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19359C2F4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.invocation.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(DecorationTelemetry + 36), &qword_1EAE3DAA8, &qword_193966A90);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.invocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19359C3A8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.jointResolverCall.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(DecorationTelemetry + 40), &qword_1EAE3DAB0, &unk_193967240);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.jointResolverCall.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(DecorationTelemetry + 40), &qword_1EAE3DAB0, &unk_193967240);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.jointResolverCall.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.collectionContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v2) + 44));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.collectionContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 44);
  result = sub_1934354B4(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.collectionContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.entitiesCollected.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v1);
  v3 = OUTLINED_FUNCTION_75_12(*(DecorationTelemetry + 48));
  v7 = OUTLINED_FUNCTION_133_7(v3, v4, v5, v6);
  *(v0 + 32) = v8;

  return sub_193590F00(v7);
}

void IntelligenceFlowQueryDecorationTelemetry.entitiesCollected.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v4 = OUTLINED_FUNCTION_73_10(*(DecorationTelemetry + 48));
  sub_19345576C(v4, v5, v6, v7, *(v1 + 32));
  OUTLINED_FUNCTION_148();
  *(v1 + 32) = v2;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.entitiesCollected.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_19359C62C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 768;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.tuplesGenerated.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v2);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  v6 = *(v4 + 2);
  LOWORD(v4) = *(v4 + 6);
  *v0 = v5;
  *(v0 + 12) = v4;
  *(v0 + 8) = v6;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.tuplesGenerated.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 6);
  result = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v6 = v1 + *(result + 52);
  *v6 = v2;
  *(v6 + 12) = v4;
  *(v6 + 8) = v3;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.tuplesGenerated.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.entitiesRanked.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v2) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;

  return sub_193590F6C(v4);
}

__n128 IntelligenceFlowQueryDecorationTelemetry.entitiesRanked.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 56));
  sub_193456D68(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.entitiesRanked.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19359C7F4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.subComponentContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(DecorationTelemetry + 60), &qword_1EAE3DAB8, &qword_193966A98);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.subComponentContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.contextStatementIdsReported.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v2) + 64));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;
  return sub_193590FB8(v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.contextStatementIdsReported.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 64));
  result = sub_19345741C(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.contextStatementIdsReported.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.appPreLaunchTriggered.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v2);
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.appPreLaunchTriggered.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.appPreLaunchTriggered.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.toolboxSizeReported.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v2);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  v6 = *(v4 + 4);
  LOBYTE(v4) = *(v4 + 5);
  *(v0 + 4) = v6;
  *v0 = v5;
  *(v0 + 5) = v4;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.toolboxSizeReported.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  result = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v6 = v1 + *(result + 72);
  *(v6 + 4) = v3;
  *v6 = v2;
  *(v6 + 5) = v4;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.toolboxSizeReported.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19359CAE8@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDCaller.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359CB10@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDCaller.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359CB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19359CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19359CD80@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359CDA8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359CE98@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359CEC0@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359CFB0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359CFD8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D0C8@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D0F0@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D1E0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D208@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D2F8@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D320@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D410@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D438@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19359D598()
{
  v0 = OUTLINED_FUNCTION_222();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata.rowId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

void static IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v55 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v52 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v50 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_150();
  v14 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = OUTLINED_FUNCTION_32_4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_47(v21);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_42_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v49 - v26;
  v28 = *(v25 + 56);
  v54 = v5;
  sub_193448804(v5, &v49 - v26, &qword_1EAE3BCA0, &unk_19395C320);
  v56 = v3;
  sub_193448804(v3, &v27[v28], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v27);
  if (!v29)
  {
    sub_193448804(v27, v0, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v27[v28]);
    if (!v29)
    {
      sub_19355A5F8(&v27[v28], v18);
      OUTLINED_FUNCTION_0_44();
      sub_19359DAF8(v33, v34, &protocol conformance descriptor for AIML.UUID);
      sub_19393C550();
      OUTLINED_FUNCTION_3_37();
      sub_1935A73D8();
      sub_1935A73D8();
      sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
LABEL_9:
    v30 = &qword_1EAE3BD08;
    v31 = &qword_1939595A0;
    v32 = v27;
LABEL_20:
    sub_19344E6DC(v32, v30, v31);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_31(&v27[v28]);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_11:
  v35 = *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0) + 20);
  v36 = *(v53 + 48);
  OUTLINED_FUNCTION_22();
  sub_193448804(v37, v38, v39, &qword_19394F9C0);
  sub_193448804(v56 + v35, v1 + v36, &qword_1EAE3AA88, &qword_19394F9C0);
  v40 = v55;
  OUTLINED_FUNCTION_6_3(v1, 1, v55);
  if (!v29)
  {
    v41 = v51;
    sub_193448804(v1, v51, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v1 + v36, 1, v40);
    if (!v42)
    {
      v43 = v52;
      v44 = v1 + v36;
      v45 = v50;
      (*(v52 + 32))(v50, v44, v40);
      OUTLINED_FUNCTION_61_10();
      sub_19359DAF8(v46, v47, MEMORY[0x1E69695C8]);
      sub_19393C550();
      v48 = *(v43 + 8);
      v48(v45, v40);
      v48(v41, v40);
      sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_21;
    }

    (*(v52 + 8))(v41, v40);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_3(v1 + v36, 1, v40);
  if (!v29)
  {
LABEL_19:
    v30 = &qword_1EAE3B4E8;
    v31 = &unk_193952CF0;
    v32 = v1;
    goto LABEL_20;
  }

  sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19359DAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v0;
  OUTLINED_FUNCTION_3_4();
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v30 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  v9 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = OUTLINED_FUNCTION_215();
  sub_193448804(v18, v19, &qword_1EAE3BCA0, &unk_19395C320);
  v20 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v20, v21, v9);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v17, v13);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_44();
    sub_19359DAF8(v23, v24, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
  }

  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  sub_193448804(v3 + *(Decoration + 20), v2, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v2, 1, v4);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v26 = v30;
    (*(v30 + 32))(v1, v2, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_61_10();
    sub_19359DAF8(v27, v28, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    (*(v26 + 8))(v1, v4);
  }

  OUTLINED_FUNCTION_116();
}

IntelligencePlatformLibrary::IntelligenceFlowQueryDecorationTelemetry::QDCollectionStarted __swiftcall IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.init()()
{
  *v0 = 2;
  *(v0 + 8) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v4 == 2)
  {
    if (v6 != 2)
    {
      v8 = 0;
      return v8 & 1;
    }

LABEL_6:
    v8 = sub_19359E274(v5, v7, IntelligenceFlowQueryDecorationTelemetry.QDCaller.rawValue.getter, a4);
    return v8 & 1;
  }

  v8 = 0;
  if (v6 != 2 && ((v6 ^ v4) & 1) == 0)
  {
    goto LABEL_6;
  }

  return v8 & 1;
}

uint64_t sub_19359DED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 4)
    {
      v5 = v3[1];
      v23[0] = *v3;
      v23[1] = v5;
      v6 = v3[3];
      v24 = v3[2];
      v25 = v6;
      v19 = v23[0];
      v20 = v5;
      v21 = v24;
      v22 = v6;
      v7 = *i;
      v8 = i[1];
      v9 = i[3];
      v27 = i[2];
      v28 = v9;
      v26[0] = v7;
      v26[1] = v8;
      v15 = v7;
      v16 = v8;
      v17 = v27;
      v18 = v9;
      sub_19358E5B4(v23, v14);
      sub_19358E5B4(v26, v14);
      v12 = static IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.== infix(_:_:)(&v19, &v15, v10, v11);
      v29[0] = v15;
      v29[1] = v16;
      v29[2] = v17;
      v29[3] = v18;
      sub_1935A742C(v29);
      v30[0] = v19;
      v30[1] = v20;
      v30[2] = v21;
      v30[3] = v22;
      sub_1935A742C(v30);
      if (!v12)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_19359DFD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 80)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_19358DB00(__dst, v7);
      sub_19358DB00(v11, v7);
      v5 = static IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_1935A745C(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_1935A745C(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 80;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_19359E0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0) - 8;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v37 = &a9 - v36;
  v38 = *(v29 + 16);
  if (v38 == *(v27 + 16) && v38 && v29 != v27)
  {
    v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v40 = v29 + v39;
    v41 = v27 + v39;
    v42 = *(v35 + 72);
    do
    {
      sub_1935A737C(v40, v37, v25);
      sub_1935A737C(v41, v34, v25);
      v43 = v23(v37, v34);
      sub_1935A73D8();
      sub_1935A73D8();
      if ((v43 & 1) == 0)
      {
        break;
      }

      v41 += v42;
      v40 += v42;
      --v38;
    }

    while (v38);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_19359E274(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(void), uint64_t), uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v6 = result + 40;
  v7 = a2 + 40;
  while (v4)
  {
    v7 += 16;
    v8 = a3(result, a2, a3, a4);
    v9 = v8 == (a3)();
    result = v9;
    v9 = !v9 || v4-- == 1;
    v6 += 16;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (*v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_62_14();
  return sub_1935A47E8(a1, v3, v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_62_14();
  v10 = OUTLINED_FUNCTION_99(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15);
  sub_1935A47E8(v10, v11, v12);
  return sub_19393CB00();
}

uint64_t sub_19359E418(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4[72] = *v1;
  v5 = v2;
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCollectionFailed.errorDomain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCollectionFailed.errorCode.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDCollectionFailed.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolId.getter()
{
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 20));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.subType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  OUTLINED_FUNCTION_37_0(*(Decoration + 24));
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.subType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  OUTLINED_FUNCTION_84_6(*(Decoration + 24));
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.subType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.similarityScore.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v2);
  v4 = v1 + *(result + 28);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.similarityScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.selectionCriteria.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  OUTLINED_FUNCTION_37_0(*(Decoration + 32));
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.selectionCriteria.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  OUTLINED_FUNCTION_84_6(*(Decoration + 32));
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.selectionCriteria.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolSource.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v2) + 36));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;
  return sub_193590FB8(v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolSource.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 36));
  result = sub_19345741C(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolSource.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolDefinition.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v1);
  v3 = OUTLINED_FUNCTION_75_12(*(Decoration + 40));
  v7 = OUTLINED_FUNCTION_133_7(v3, v4, v5, v6);
  v0[4] = v11;
  v0[5] = v12;
  v0[6] = v13;

  return sub_1935A488C(v7, v8, v9, v10, v11);
}

__n128 IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolDefinition.setter(__n128 *a1)
{
  v9 = a1[2];
  v2 = a1[3].n128_u64[0];
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
  v4 = OUTLINED_FUNCTION_73_10(*(Decoration + 40));
  sub_1935A4900(v4, v5, v6, v7, *(v1 + 32));
  OUTLINED_FUNCTION_148();
  result = v9;
  *(v1 + 32) = v9;
  *(v1 + 48) = v2;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.toolDefinition.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
  v7 = (v0 + Decoration[5]);
  v8 = v0 + Decoration[6];
  *v8 = 0;
  *(v8 + 8) = 256;
  v9 = v0 + Decoration[7];
  v10 = v0 + Decoration[8];
  *v10 = 0;
  *(v10 + 8) = 256;
  v11 = (v0 + Decoration[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + Decoration[10]);
  OUTLINED_FUNCTION_127_5();
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v13 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 4) = 1;
  *v10 = 0;
  *(v10 + 8) = 256;
  sub_19345741C(*v11, v11[1]);
  *v11 = 0;
  v11[1] = 0;
  sub_1935A4900(*v12, v12[1], v12[2], v12[3], v12[4]);
  OUTLINED_FUNCTION_127_5();
  OUTLINED_FUNCTION_116();
}

void static IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v5 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_1(v13, v141);
  OUTLINED_FUNCTION_88_10();
  OUTLINED_FUNCTION_31(v3);
  if (v18)
  {
    OUTLINED_FUNCTION_31(v3 + v4);
    if (v18)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  v14 = OUTLINED_FUNCTION_32_4();
  sub_193448804(v14, v15, v16, v17);
  OUTLINED_FUNCTION_31(v3 + v4);
  if (v18)
  {
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
    goto LABEL_9;
  }

  sub_19355A5F8(v3 + v4, v2);
  OUTLINED_FUNCTION_0_44();
  sub_19359DAF8(v19, v20, &protocol conformance descriptor for AIML.UUID);
  OUTLINED_FUNCTION_22();
  sub_19393C550();
  OUTLINED_FUNCTION_3_37();
  sub_1935A73D8();
  OUTLINED_FUNCTION_25_2();
  sub_1935A73D8();
  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
  v22 = Decoration[5];
  v23 = (v1 + v22);
  v24 = *(v1 + v22 + 8);
  v25 = (v0 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    v27 = *v23 == *v25 && v24 == v26;
    if (!v27 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v26)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_106_9();
  if (v29)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v28)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_82_10(v30);
    v31 = IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.rawValue.getter();
    if (v31 != IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.rawValue.getter())
    {
      goto LABEL_10;
    }
  }

  v32 = Decoration[7];
  v33 = (v1 + v32);
  v34 = *(v1 + v32 + 4);
  v35 = (v0 + v32);
  v36 = *(v0 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_106_9();
  if (v38)
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v37)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_82_10(v39);
    v40 = IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.rawValue.getter();
    if (v40 != IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.rawValue.getter())
    {
      goto LABEL_10;
    }
  }

  v41 = Decoration[9];
  v43 = *(v1 + v41);
  v42 = *(v1 + v41 + 8);
  v44 = (v0 + v41);
  v46 = *v44;
  v45 = v44[1];
  if (!v43)
  {
    sub_193590FB8(0);
    if (!v46)
    {
      sub_193590FB8(0);
      sub_19345741C(0, v42);
      goto LABEL_49;
    }

    v64 = OUTLINED_FUNCTION_234();
    sub_193590FB8(v64);
    goto LABEL_45;
  }

  v47 = OUTLINED_FUNCTION_215();
  if (!v46)
  {
    sub_193590FB8(v47);
    sub_193590FB8(0);
    v65 = OUTLINED_FUNCTION_215();
    sub_193590FB8(v65);

LABEL_45:
    v66 = OUTLINED_FUNCTION_215();
    sub_19345741C(v66, v67);
    v68 = OUTLINED_FUNCTION_234();
LABEL_47:
    sub_19345741C(v68, v69);
    goto LABEL_10;
  }

  sub_193590FB8(v47);
  v48 = OUTLINED_FUNCTION_234();
  sub_193590FB8(v48);
  v49 = OUTLINED_FUNCTION_215();
  sub_193590FB8(v49);
  OUTLINED_FUNCTION_18_23();
  v50 = OUTLINED_FUNCTION_129_5();
  sub_19359E0E4(v50, v51, v52, v53, v54, v55, v56, v57, v142, v143, v144, v146, v148, v150, v151, v152, v154, v156, v158, v160[0]);
  if ((v58 & 1) == 0)
  {
    v70 = OUTLINED_FUNCTION_234();
    sub_19345741C(v70, v71);

    v68 = OUTLINED_FUNCTION_215();
    goto LABEL_47;
  }

  v59 = sub_19355B350(v42, v45);
  v60 = OUTLINED_FUNCTION_234();
  sub_19345741C(v60, v61);

  v62 = OUTLINED_FUNCTION_215();
  sub_19345741C(v62, v63);
  if (v59)
  {
LABEL_49:
    v72 = Decoration[10];
    v73 = v1 + v72;
    v75 = *(v1 + v72);
    v74 = *(v1 + v72 + 8);
    v77 = *(v1 + v72 + 16);
    v76 = *(v1 + v72 + 24);
    v79 = *(v1 + v72 + 32);
    v78 = *(v1 + v72 + 40);
    v159 = *(v73 + 48);
    v80 = (v0 + v72);
    v82 = *v80;
    v81 = v80[1];
    v84 = v80[2];
    v83 = v80[3];
    v85 = v80[4];
    v86 = v80[5];
    v87 = v80[6];
    v155 = v83;
    v157 = v85;
    v153 = v84;
    if (v75)
    {
      v161[0] = v75;
      v161[1] = v74;
      v161[2] = v77;
      v161[3] = v76;
      v161[4] = v79;
      v161[5] = v78;
      v161[6] = v159;
      if (v82)
      {
        v160[0] = v82;
        v160[1] = v81;
        v160[2] = v84;
        v160[3] = v83;
        v160[4] = v85;
        v160[5] = v86;
        v160[6] = v87;
        v88 = v77;
        v145 = v77;
        v89 = v84;
        v90 = v76;
        v147 = v76;
        v91 = v83;
        v92 = v79;
        v149 = v79;
        v93 = v85;
        sub_1935A488C(v75, v74, v88, v90, v92);
        sub_1935A488C(v82, v81, v89, v91, v93);
        sub_1935A488C(v75, v74, v145, v147, v149);
        static IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.== infix(_:_:)(v161, v160);

        sub_1935A4974(v81, v153, v155, v157);

        v94 = OUTLINED_FUNCTION_234();
        sub_1935A4974(v94, v95, v147, v149);

        OUTLINED_FUNCTION_15_29();
        sub_1935A4900(v96, v97, v98, v99, v100);
        goto LABEL_10;
      }

      v111 = v81;
      v112 = v84;
      v113 = v83;
      sub_1935A488C(v75, v74, v77, v76, v79);
      sub_1935A488C(0, v111, v112, v113, v157);
      OUTLINED_FUNCTION_15_29();
      sub_1935A488C(v114, v115, v116, v117, v118);

      v119 = OUTLINED_FUNCTION_234();
      sub_1935A4974(v119, v120, v76, v79);
    }

    else
    {
      OUTLINED_FUNCTION_15_29();
      sub_1935A488C(v101, v102, v103, v104, v105);
      if (!v82)
      {
        OUTLINED_FUNCTION_54_10();
        sub_1935A488C(v131, v132, v133, v134, v135);
        OUTLINED_FUNCTION_15_29();
        sub_1935A4900(v136, v137, v138, v139, v140);
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_54_10();
      sub_1935A488C(v106, v107, v108, v109, v110);
    }

    OUTLINED_FUNCTION_15_29();
    sub_1935A4900(v121, v122, v123, v124, v125);
    OUTLINED_FUNCTION_54_10();
    sub_1935A4900(v126, v127, v128, v129, v130);
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_70_7(v9, v28);
  v10 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v10, v11, v3);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v13, v14);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_44();
    sub_19359DAF8(v15, v16, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
  }

  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
  if (*(v1 + Decoration[5] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_100();
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_131_6();
    v18 = IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.rawValue.getter();
    MEMORY[0x193B18030](v18);
  }

  if (*(v1 + Decoration[7] + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_100();
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_131_6();
    v19 = IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.rawValue.getter();
    MEMORY[0x193B18030](v19);
  }

  v20 = (v1 + Decoration[9]);
  v21 = *v20;
  if (*v20)
  {
    v22 = v20[1];
    OUTLINED_FUNCTION_103_0();
    sub_1935A4BAC(v0, v21);
    sub_19356408C(v0, v22);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v23 = (v1 + Decoration[10]);
  if (*v23)
  {
    v30 = v23[3];
    v29 = v23[4];
    OUTLINED_FUNCTION_103_0();

    v24 = OUTLINED_FUNCTION_234();
    sub_19358D8E8(v24, v25, v30, v29);

    IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.hash(into:)();

    v26 = OUTLINED_FUNCTION_234();
    sub_1935A4974(v26, v27, v30, v29);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_19359F47C(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19359F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.parameters.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.output.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_19358D8E8(v2, v3, v4, v5);
}

__n128 IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.output.setter(uint64_t a1)
{
  sub_1935A4974(v1[1], v1[2], v1[3], v1[4]);
  result = *a1;
  *(v1 + 3) = *(a1 + 16);
  *(v1 + 1) = result;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.description.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

double IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  sub_1935A4974(0, 2, 0, 0);
  *(a1 + 8) = xmmword_19395BB80;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v73 = a2[5];
  v74 = a1[5];
  v11 = a2[6];
  v12 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19359DFD4(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v4 != 2)
  {
    v76[0] = v2;
    v76[1] = v4;
    v76[2] = v3;
    v76[3] = v5;
    if (v9 != 2)
    {
      v75[0] = v7;
      v75[1] = v9;
      v75[2] = v8;
      v75[3] = v10;
      v47 = OUTLINED_FUNCTION_8_6();
      sub_19358D8E8(v47, v48, v49, v50);
      v51 = OUTLINED_FUNCTION_34_20();
      sub_19358D8E8(v51, v52, v53, v54);
      v55 = OUTLINED_FUNCTION_8_6();
      sub_19358D8E8(v55, v56, v57, v58);
      v72 = static IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition.== infix(_:_:)(v76, v75);
      v59 = OUTLINED_FUNCTION_34_20();
      sub_1934D16DC(v59, v60, v61, v62);
      v63 = OUTLINED_FUNCTION_8_6();
      sub_1934D16DC(v63, v64, v65, v66);
      v67 = OUTLINED_FUNCTION_8_6();
      sub_1935A4974(v67, v68, v69, v70);
      if (!v72)
      {
        return 0;
      }

      goto LABEL_12;
    }

    v22 = OUTLINED_FUNCTION_8_6();
    sub_19358D8E8(v22, v23, v24, v25);
    sub_19358D8E8(v7, 2, v8, v10);
    v26 = OUTLINED_FUNCTION_8_6();
    sub_19358D8E8(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_8_6();
    sub_1934D16DC(v30, v31, v32, v33);
LABEL_8:
    v38 = OUTLINED_FUNCTION_8_6();
    sub_1935A4974(v38, v39, v40, v41);
    v42 = OUTLINED_FUNCTION_34_20();
    sub_1935A4974(v42, v43, v44, v45);
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  sub_19358D8E8(v14, v15, v16, v17);
  if (v9 != 2)
  {
    v34 = OUTLINED_FUNCTION_34_20();
    sub_19358D8E8(v34, v35, v36, v37);
    goto LABEL_8;
  }

  sub_19358D8E8(v7, 2, v8, v10);
  OUTLINED_FUNCTION_69_1();
  sub_1935A4974(v18, v19, v20, v21);
LABEL_12:
  if (v6)
  {
    if (v11)
    {
      v71 = v74 == v73 && v6 == v11;
      if (v71 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

void IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[6];
  sub_1935A4984(v6, *v0);
  if (v3 != 2)
  {
    sub_19393CAD0();
    if (v3 == 1)
    {
      sub_19393CAD0();
      v8 = v1;
      v9 = 1;
LABEL_11:
      v12 = v2;
      v13 = v4;
      goto LABEL_12;
    }

    sub_19393CAD0();
    if (v3)
    {
      sub_19393CAD0();
      v10 = OUTLINED_FUNCTION_129_5();
      sub_1934D1694(v10, v11, v2, v4);
      OUTLINED_FUNCTION_112();
      sub_19393C640();
      if (v4)
      {
LABEL_10:
        sub_19393CAD0();
        sub_19393C640();
        v8 = OUTLINED_FUNCTION_129_5();
        goto LABEL_11;
      }
    }

    else
    {
      sub_19393CAD0();
      sub_1934D1694(v1, 0, v2, v4);
      if (v4)
      {
        goto LABEL_10;
      }
    }

    sub_19393CAD0();
    v8 = OUTLINED_FUNCTION_129_5();
    v12 = v2;
    v13 = 0;
LABEL_12:
    sub_1935A4974(v8, v9, v12, v13);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
    return;
  }

  sub_19393CAD0();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_236();

  sub_19393C640();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_76_10();
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19359F9EC()
{
  OUTLINED_FUNCTION_76_10();
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.key.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

__n128 IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.entityType.setter(uint64_t a1)
{
  sub_1934D16DC(v1[4], v1[5], v1[6], v1[7]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v4;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.description.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

double IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.init()@<D0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_1934D16DC(0, 1, 0, 0);
  result = 0.0;
  a1[2] = xmmword_1939526A0;
  a1[3] = 0u;
  a1[4] = 0u;
  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v17 = a2[7];
  v16 = a2[8];
  v18 = a2[9];
  if (a1[1])
  {
    if (!v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v21 = v21 && v19 == v20;
    if (!v21)
    {
      v96 = v17;
      v99 = v5;
      v93 = v9;
      v94 = v7;
      v91 = v3;
      v92 = v8;
      v22 = v6;
      v23 = v18;
      v24 = v16;
      v25 = v14;
      v26 = v15;
      v27 = v12;
      v28 = v2;
      v29 = sub_19393CA30();
      v2 = v28;
      v12 = v27;
      v15 = v26;
      v14 = v25;
      v16 = v24;
      v18 = v23;
      v6 = v22;
      v3 = v91;
      v8 = v92;
      v9 = v93;
      v7 = v94;
      v17 = v96;
      v5 = v99;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4)
  {
    if (!v13)
    {
      return 0;
    }

    if (v2 != v11 || v4 != v13)
    {
      v97 = v6;
      v100 = v15;
      v31 = v18;
      v32 = v16;
      v33 = v14;
      v34 = v12;
      v35 = sub_19393CA30();
      v12 = v34;
      v14 = v33;
      v16 = v32;
      v18 = v31;
      v6 = v97;
      v15 = v100;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5 != 1)
  {
    v103[0] = v3;
    v103[1] = v5;
    v103[2] = v6;
    v103[3] = v7;
    if (v14 != 1)
    {
      v98 = v16;
      v101 = v18;
      v102[0] = v12;
      v102[1] = v14;
      v102[2] = v15;
      v102[3] = v17;
      v95 = static IntelligenceFlowQueryDecorationTelemetry.QDEntityType.== infix(_:_:)(v103, v102);
      v74 = OUTLINED_FUNCTION_24_18();
      sub_1934D1694(v74, v75, v76, v77);
      OUTLINED_FUNCTION_105_10();
      sub_1934D1694(v78, v79, v80, v81);
      v82 = OUTLINED_FUNCTION_24_18();
      sub_1934D1694(v82, v83, v84, v85);

      v86 = OUTLINED_FUNCTION_24_18();
      sub_1934D16DC(v86, v87, v88, v89);
      if ((v95 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    v49 = OUTLINED_FUNCTION_24_18();
    sub_1934D1694(v49, v50, v51, v52);
    OUTLINED_FUNCTION_105_10();
    sub_1934D1694(v53, v54, v55, v56);
    v57 = OUTLINED_FUNCTION_24_18();
    sub_1934D1694(v57, v58, v59, v60);

LABEL_25:
    v65 = OUTLINED_FUNCTION_8_6();
    sub_1934D16DC(v65, v66, v67, v68);
    OUTLINED_FUNCTION_105_10();
    sub_1934D16DC(v69, v70, v71, v72);
    return 0;
  }

  v98 = v16;
  v101 = v18;
  v36 = OUTLINED_FUNCTION_144_3();
  v37 = v6;
  v39 = v38;
  sub_1934D1694(v36, v40, v37, v7);
  if (v39 != 1)
  {
    OUTLINED_FUNCTION_105_10();
    sub_1934D1694(v61, v62, v63, v64);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_105_10();
  sub_1934D1694(v41, v42, v43, v44);
  OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_69_1();
  sub_1934D16DC(v45, v46, v47, v48);
LABEL_29:
  if (v9)
  {
    if (v101)
    {
      v90 = v8 == v98 && v9 == v101;
      if (v90 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v101)
  {
    return 1;
  }

  return 0;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  if (v0[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v2 == 1)
  {
    goto LABEL_12;
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_19393CAD0();
    if (!v4)
    {
      return sub_19393CAD0();
    }

    goto LABEL_13;
  }

  sub_19393CAD0();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_19393CAD0();
  sub_19393C640();
  if (!v4)
  {
    return sub_19393CAD0();
  }

LABEL_13:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935A00C8(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition.hash(into:)();
  return sub_19393CB00();
}

double IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition.entityType.setter()
{
  sub_1934D16DC(*v0, v0[1], v0[2], v0[3]);
  *&result = OUTLINED_FUNCTION_148().n128_u64[0];
  return result;
}

void __swiftcall IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition.init()(IntelligencePlatformLibrary::IntelligenceFlowQueryDecorationTelemetry::QDToolOutputDefinition *__return_ptr retstr)
{
  v2 = OUTLINED_FUNCTION_8_4();
  sub_1934D16DC(v2, 1, 0, 0);
  *v1 = xmmword_1939526A0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

BOOL static IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  if (v2 != 1)
  {
    v60[0] = *a1;
    v60[1] = v2;
    v60[2] = v4;
    v60[3] = v3;
    if (v5 != 1)
    {
      v59[0] = v6;
      v59[1] = v5;
      v59[2] = v8;
      v59[3] = v7;
      v43 = static IntelligenceFlowQueryDecorationTelemetry.QDEntityType.== infix(_:_:)(v60, v59);
      v44 = OUTLINED_FUNCTION_8_6();
      sub_1934D1694(v44, v45, v46, v47);
      v48 = OUTLINED_FUNCTION_31_22();
      sub_1934D1694(v48, v49, v50, v7);
      v51 = OUTLINED_FUNCTION_8_6();
      sub_1934D1694(v51, v52, v53, v54);

      v55 = OUTLINED_FUNCTION_8_6();
      sub_1934D16DC(v55, v56, v57, v58);
      return (v43 & 1) != 0;
    }

    v21 = OUTLINED_FUNCTION_8_6();
    sub_1934D1694(v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_71_14();
    sub_1934D1694(v25, v26, v27, v7);
    v28 = OUTLINED_FUNCTION_8_6();
    sub_1934D1694(v28, v29, v30, v31);

LABEL_7:
    v35 = OUTLINED_FUNCTION_8_6();
    sub_1934D16DC(v35, v36, v37, v38);
    v39 = OUTLINED_FUNCTION_31_22();
    sub_1934D16DC(v39, v40, v41, v7);
    return 0;
  }

  OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_69_1();
  sub_1934D1694(v9, v10, v11, v12);
  if (v5 != 1)
  {
    v32 = OUTLINED_FUNCTION_31_22();
    sub_1934D1694(v32, v33, v34, v7);
    goto LABEL_7;
  }

  v13 = 1;
  v14 = OUTLINED_FUNCTION_71_14();
  sub_1934D1694(v14, v15, v16, v7);
  OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_69_1();
  sub_1934D16DC(v17, v18, v19, v20);
  return v13;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v2 = *(v0 + 24);
  sub_19393CAD0();
  if (!v1)
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_112();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  if (v1 == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_123();
  if (!v1)
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_19393CAD0();
    return sub_19393CB00();
  }

  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v3 = OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_99(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_1935A0464(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolSource.spanMatches.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolSource.contexualMatches.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

IntelligencePlatformLibrary::IntelligenceFlowQueryDecorationTelemetry::QDToolSource __swiftcall IntelligenceFlowQueryDecorationTelemetry.QDToolSource.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolSource.hash(into:)(uint64_t a1)
{
  sub_1935A4BAC(a1, *v1);
  v2 = OUTLINED_FUNCTION_13_0();

  return sub_19356408C(v2, v3);
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.contextType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v0);
  OUTLINED_FUNCTION_37_0(*(Decoration + 20));
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.contextType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v0);
  OUTLINED_FUNCTION_84_6(*(Decoration + 20));
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.contextType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.valueType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v0);
  v2 = OUTLINED_FUNCTION_75_12(*(Decoration + 24));
  v6 = OUTLINED_FUNCTION_133_7(v2, v3, v4, v5);

  sub_1934D1694(v6, v7, v8, v9);
}

double IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.valueType.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v0);
  v2 = OUTLINED_FUNCTION_73_10(*(Decoration + 24));
  sub_1934D16DC(v2, v3, v4, v5);
  *&result = OUTLINED_FUNCTION_148().n128_u64[0];
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.valueType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v0);
  return OUTLINED_FUNCTION_1_4();
}

__n128 IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
  v7 = v0 + *(Decoration + 20);
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = (v0 + *(Decoration + 24));
  *v8 = xmmword_1939526A0;
  v8[2] = 0;
  v8[3] = 0;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *v7 = 0;
  *(v7 + 8) = 256;
  sub_1934D16DC(*v8, v8[1], v8[2], v8[3]);
  result = xmmword_1939526A0;
  *v8 = xmmword_1939526A0;
  v8[2] = 0;
  v8[3] = 0;
  return result;
}

void static IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v5 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_1(v13, v84[0]);
  OUTLINED_FUNCTION_88_10();
  OUTLINED_FUNCTION_31(v3);
  if (!v18)
  {
    v14 = OUTLINED_FUNCTION_32_4();
    sub_193448804(v14, v15, v16, v17);
    OUTLINED_FUNCTION_31(v3 + v4);
    if (!v18)
    {
      sub_19355A5F8(v3 + v4, v2);
      OUTLINED_FUNCTION_0_44();
      sub_19359DAF8(v19, v20, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_22();
      sub_19393C550();
      OUTLINED_FUNCTION_3_37();
      sub_1935A73D8();
      OUTLINED_FUNCTION_25_2();
      sub_1935A73D8();
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
LABEL_9:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v3 + v4);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
  OUTLINED_FUNCTION_106_9();
  if (v23)
  {
    if (v22)
    {
      goto LABEL_17;
    }
  }

  else if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_83_13(v24);
    v25 = IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.rawValue.getter();
    if (v25 == IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.rawValue.getter())
    {
LABEL_17:
      v26 = *(Decoration + 24);
      v27 = v1 + v26;
      v28 = *(v1 + v26);
      v29 = *(v1 + v26 + 8);
      v31 = *(v1 + v26 + 16);
      v30 = *(v27 + 24);
      v32 = (v0 + v26);
      v34 = *v32;
      v33 = v32[1];
      v36 = v32[2];
      v35 = v32[3];
      if (v29 == 1)
      {
        v37 = OUTLINED_FUNCTION_132_5();
        sub_1934D1694(v37, v38, v39, v40);
        if (v33 == 1)
        {
          v41 = OUTLINED_FUNCTION_71_14();
          sub_1934D1694(v41, v42, v43, v35);
          v44 = OUTLINED_FUNCTION_132_5();
          sub_1934D16DC(v44, v45, v46, v47);
          goto LABEL_10;
        }

        v59 = OUTLINED_FUNCTION_31_22();
        sub_1934D1694(v59, v60, v61, v35);
      }

      else
      {
        v85[0] = v28;
        v85[1] = v29;
        v85[2] = v31;
        v85[3] = v30;
        if (v33 != 1)
        {
          v84[0] = v34;
          v84[1] = v33;
          v84[2] = v36;
          v84[3] = v35;
          static IntelligenceFlowQueryDecorationTelemetry.QDEntityType.== infix(_:_:)(v85, v84);
          v69 = OUTLINED_FUNCTION_17_1();
          sub_1934D1694(v69, v70, v71, v72);
          v73 = OUTLINED_FUNCTION_31_22();
          sub_1934D1694(v73, v74, v75, v35);
          v76 = OUTLINED_FUNCTION_17_1();
          sub_1934D1694(v76, v77, v78, v79);

          v80 = OUTLINED_FUNCTION_17_1();
          sub_1934D16DC(v80, v81, v82, v83);
          goto LABEL_10;
        }

        v48 = OUTLINED_FUNCTION_17_1();
        sub_1934D1694(v48, v49, v50, v51);
        v52 = OUTLINED_FUNCTION_71_14();
        sub_1934D1694(v52, v53, v54, v35);
        v55 = OUTLINED_FUNCTION_17_1();
        sub_1934D1694(v55, v56, v57, v58);
      }

      v62 = OUTLINED_FUNCTION_17_1();
      sub_1934D16DC(v62, v63, v64, v65);
      v66 = OUTLINED_FUNCTION_31_22();
      sub_1934D16DC(v66, v67, v68, v35);
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v4 = OUTLINED_FUNCTION_25_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_70_7(v8, v21);
  v9 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v9, v10, v2);
  if (v11)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v12, v13);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_44();
    sub_19359DAF8(v14, v15, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
  }

  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
  OUTLINED_FUNCTION_100();
  if (v11)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v17 = IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.rawValue.getter();
    MEMORY[0x193B18030](v17);
  }

  v18 = v0 + *(Decoration + 24);
  v19 = *(v18 + 8);
  if (v19 == 1)
  {
    goto LABEL_12;
  }

  v20 = *(v18 + 24);
  OUTLINED_FUNCTION_103_0();
  if (!v19)
  {
    OUTLINED_FUNCTION_104_0();
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_187();
  sub_19393C640();
LABEL_13:
  OUTLINED_FUNCTION_236();
}

void IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.valueType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v0);
  v2 = OUTLINED_FUNCTION_75_12(*(Decoration + 20));
  v6 = OUTLINED_FUNCTION_133_7(v2, v3, v4, v5);

  sub_1934D1694(v6, v7, v8, v9);
}

double IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.valueType.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v0);
  v2 = OUTLINED_FUNCTION_73_10(*(Decoration + 20));
  sub_1934D16DC(v2, v3, v4, v5);
  *&result = OUTLINED_FUNCTION_148().n128_u64[0];
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.valueType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.matches.getter()
{
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.matches.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.matches.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.dataProtectionClass.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v0);
  OUTLINED_FUNCTION_37_0(*(Decoration + 28));
}

void IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.dataProtectionClass.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v0);
  OUTLINED_FUNCTION_84_6(*(Decoration + 28));
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.dataProtectionClass.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v0);
  return OUTLINED_FUNCTION_1_4();
}

__n128 IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
  v7 = (v0 + Decoration[5]);
  *v7 = xmmword_1939526A0;
  v7[2] = 0;
  v7[3] = 0;
  v8 = v0 + Decoration[7];
  *v8 = 0;
  *(v8 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_1934D16DC(*v7, v7[1], v7[2], v7[3]);
  result = xmmword_1939526A0;
  *v7 = xmmword_1939526A0;
  v7[2] = 0;
  v7[3] = 0;
  *(v0 + Decoration[6]) = MEMORY[0x1E69E7CC0];
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

void static IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v5 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_1(v13, v78);
  OUTLINED_FUNCTION_88_10();
  OUTLINED_FUNCTION_31(v3);
  if (v18)
  {
    OUTLINED_FUNCTION_31(v3 + v4);
    if (v18)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_11;
    }

LABEL_9:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_23;
  }

  v14 = OUTLINED_FUNCTION_32_4();
  sub_193448804(v14, v15, v16, v17);
  OUTLINED_FUNCTION_31(v3 + v4);
  if (v18)
  {
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
    goto LABEL_9;
  }

  sub_19355A5F8(v3 + v4, v2);
  OUTLINED_FUNCTION_0_44();
  sub_19359DAF8(v19, v20, &protocol conformance descriptor for AIML.UUID);
  OUTLINED_FUNCTION_22();
  sub_19393C550();
  OUTLINED_FUNCTION_3_37();
  sub_1935A73D8();
  OUTLINED_FUNCTION_25_2();
  sub_1935A73D8();
  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v5 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
  v21 = *(Decoration + 20);
  v22 = *(v1 + v21);
  v23 = *(v1 + v21 + 8);
  v25 = *(v1 + v21 + 16);
  v24 = *(v1 + v21 + 24);
  v26 = (v0 + v21);
  v27 = *v26;
  v28 = v26[1];
  v30 = v26[2];
  v29 = v26[3];
  if (v23 != 1)
  {
    v82[0] = v22;
    v82[1] = v23;
    v82[2] = v25;
    v82[3] = v24;
    if (v28 != 1)
    {
      v81[0] = v27;
      v81[1] = v28;
      v81[2] = v30;
      v81[3] = v29;
      v79 = static IntelligenceFlowQueryDecorationTelemetry.QDEntityType.== infix(_:_:)(v82, v81);
      v59 = OUTLINED_FUNCTION_19_26();
      sub_1934D1694(v59, v60, v61, v62);
      v63 = OUTLINED_FUNCTION_68_10();
      sub_1934D1694(v63, v64, v65, v66);
      v67 = OUTLINED_FUNCTION_19_26();
      sub_1934D1694(v67, v68, v69, v70);

      v71 = OUTLINED_FUNCTION_19_26();
      sub_1934D16DC(v71, v72, v73, v74);
      if ((v79 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    v39 = OUTLINED_FUNCTION_19_26();
    sub_1934D1694(v39, v40, v41, v42);
    OUTLINED_FUNCTION_138_4();
    v43 = OUTLINED_FUNCTION_19_26();
    sub_1934D1694(v43, v44, v45, v46);

LABEL_17:
    v51 = OUTLINED_FUNCTION_19_26();
    sub_1934D16DC(v51, v52, v53, v54);
    v55 = OUTLINED_FUNCTION_68_10();
    sub_1934D16DC(v55, v56, v57, v58);
    goto LABEL_23;
  }

  v31 = OUTLINED_FUNCTION_130_5();
  sub_1934D1694(v31, v32, v33, v34);
  if (v28 != 1)
  {
    v47 = OUTLINED_FUNCTION_68_10();
    sub_1934D1694(v47, v48, v49, v50);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_138_4();
  v35 = OUTLINED_FUNCTION_130_5();
  sub_1934D16DC(v35, v36, v37, v38);
LABEL_19:
  if (sub_19359DED4(*(v1 + *(Decoration + 24)), *(v0 + *(Decoration + 24))))
  {
    OUTLINED_FUNCTION_106_9();
    if ((v76 & 1) == 0 && (v75 & 1) == 0)
    {
      OUTLINED_FUNCTION_57_1();
      OUTLINED_FUNCTION_83_13(v77);
      IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.rawValue.getter();
      IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.rawValue.getter();
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_70_7(v9, v22);
  v10 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v10, v11, v3);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v13, v14);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_44();
    sub_19359DAF8(v15, v16, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
  }

  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
  v18 = v1 + Decoration[5];
  v19 = *(v18 + 8);
  if (v19 != 1)
  {
    v20 = *(v18 + 24);
    OUTLINED_FUNCTION_103_0();
    if (v19)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if (v20)
      {
LABEL_7:
        OUTLINED_FUNCTION_103_0();
        sub_19393C640();
        goto LABEL_10;
      }
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
      if (v20)
      {
        goto LABEL_7;
      }
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_10:
  sub_1935A420C(v0, *(v1 + Decoration[6]));
  if (*(v1 + Decoration[7] + 9))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v21 = IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.rawValue.getter();
    MEMORY[0x193B18030](v21);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.matchingTransforms.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.matcher.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.matchScore.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.originAppBundleId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
  *(a1 + 36) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

BOOL static IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 33);
  v11 = *(a1 + 36);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a2 + 4);
  v16 = *(a2 + 8);
  v17 = *(a2 + 12);
  v18 = *(a2 + 16);
  v19 = *(a2 + 33);
  v20 = *(a2 + 36);
  v21 = *(a2 + 40);
  v23 = *(a2 + 48);
  v22 = *(a2 + 56);
  if (v6)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v24 = v15;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v16)
    {
      v25 = v17;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v33 = v13;
  v34 = v14;
  if (sub_19359E274(v9, v18, IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.rawValue.getter, a4))
  {
    v26 = v34;
    if (v10)
    {
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        return 0;
      }

      Decoration = IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.rawValue.getter();
      v28 = IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.rawValue.getter();
      v26 = v34;
      if (Decoration != v28)
      {
        return 0;
      }
    }

    if (v12)
    {
      v29 = v33;
      if (!v21)
      {
        return 0;
      }
    }

    else
    {
      if (v11 == v20)
      {
        v30 = v21;
      }

      else
      {
        v30 = 1;
      }

      v29 = v33;
      if (v30)
      {
        return 0;
      }
    }

    if (v26)
    {
      if (!v22)
      {
        return 0;
      }

      v31 = v29 == v23 && v26 == v22;
      return v31 || (sub_19393CA30() & 1) != 0;
    }

    if (!v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 12);
  v11 = *(v1 + 16);
  v4 = *(v1 + 33);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  if (*(v1 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *(v1 + 33);
    v7 = *(v1 + 56);
    OUTLINED_FUNCTION_103_0();
    v6 = v7;
    v4 = v10;
    sub_19393CAE0();
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  sub_1935A47E8(a1, v11, IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.rawValue.getter);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_13:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_9;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  Decoration = IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.rawValue.getter();
  MEMORY[0x193B18030](Decoration);
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_8:
  OUTLINED_FUNCTION_103_0();
  sub_19393CAE0();
  if (!v6)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();

  return sub_19393C640();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935A1BA4(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityType.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityType.nameOfTypedValue.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDEntityType.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      if (v2 == v5 && v3 == v6)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
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

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityType.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_4();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityType.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  if (v1)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_108_3(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v2)
  {
    v11 = sub_19393CAD0();
    OUTLINED_FUNCTION_99(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_1935A1ED0(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDEntityType.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext.hashValue.getter()
{
  v4[9] = *v0;
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext.hash(into:)(v4, v1, v2);
  return sub_19393CB00();
}

uint64_t sub_1935A1F70(uint64_t a1)
{
  v5[9] = *v1;
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext.hash(into:)(v5, v2, v3);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.retrievedTools.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.spanMatchedEntities.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.utteranceContext.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.requiredContext.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.context.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.init()(IntelligencePlatformLibrary::IntelligenceFlowQueryDecorationTelemetry::QDEntitiesCollected *__return_ptr retstr)
{
  v1 = MEMORY[0x1E69E7CC0];
  retstr->retrievedTools._rawValue = MEMORY[0x1E69E7CC0];
  retstr->spanMatchedEntities._rawValue = v1;
  retstr->utteranceContext._rawValue = v1;
  retstr->requiredContext._rawValue = v1;
  retstr->context._rawValue = v1;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_19356408C(a1, *v1);
  v5 = OUTLINED_FUNCTION_187();
  sub_19356408C(v5, v6);
  sub_19356408C(a1, v3);
  sub_1935A443C(a1, v4);
  v7 = OUTLINED_FUNCTION_13_0();

  return sub_1935A443C(v7, v8);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_99(v2, v3, v4, v5, v6, v7, v8, v9, v43, v47[0]);
  v12 = sub_19356408C(v10, v11);
  v20 = OUTLINED_FUNCTION_98_9(v12, v13, v14, v15, v16, v17, v18, v19, v44, v47[0]);
  v22 = sub_19356408C(v20, v21);
  v30 = OUTLINED_FUNCTION_108_3(v22, v23, v24, v25, v26, v27, v28, v29, v45, v47[0]);
  sub_19356408C(v30, v31);
  v32 = sub_1935A443C(v47, v1);
  v40 = OUTLINED_FUNCTION_62_0(v32, v33, v34, v35, v36, v37, v38, v39, v46, v47[0]);
  sub_1935A443C(v40, v41);
  return sub_19393CB00();
}

uint64_t sub_1935A2340(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_19393CAB0();
  v11 = OUTLINED_FUNCTION_99(v3, v4, v5, v6, v7, v8, v9, v10, v44, v48[0]);
  v13 = sub_19356408C(v11, v12);
  v21 = OUTLINED_FUNCTION_98_9(v13, v14, v15, v16, v17, v18, v19, v20, v45, v48[0]);
  v23 = sub_19356408C(v21, v22);
  v31 = OUTLINED_FUNCTION_108_3(v23, v24, v25, v26, v27, v28, v29, v30, v46, v48[0]);
  sub_19356408C(v31, v32);
  v33 = sub_1935A443C(v48, v2);
  v41 = OUTLINED_FUNCTION_62_0(v33, v34, v35, v36, v37, v38, v39, v40, v47, v48[0]);
  sub_1935A443C(v41, v42);
  return sub_19393CB00();
}

void IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 513;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 13);
  v3 = *(a2 + 4);
  v4 = *(a2 + 13);
  if ((*(a1 + 4) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

LABEL_7:
    if (*(a1 + 12))
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) == *(a2 + 8))
      {
        v5 = *(a2 + 12);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    if (v2 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 4))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[12];
  v2 = v0[13];
  if (v0[4] == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated.hashValue.getter()
{
  OUTLINED_FUNCTION_60_10();
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935A25EC()
{
  OUTLINED_FUNCTION_60_10();
  sub_19393CAB0();
  IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked.retrievedTools.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked.spanMatchedEntities.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked.utteranceContext.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

IntelligencePlatformLibrary::IntelligenceFlowQueryDecorationTelemetry::QDEntitiesRanked __swiftcall IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  v0[2] = v1;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked.hash(into:)(uint64_t a1)
{
  sub_1935A4FA8(a1, *v1);
  v2 = OUTLINED_FUNCTION_187();
  sub_1935A4BAC(v2, v3);
  v4 = OUTLINED_FUNCTION_13_0();

  return sub_1935A443C(v4, v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_119();
  v8 = OUTLINED_FUNCTION_99(v0, v1, v2, v3, v4, v5, v6, v7, v31, v34);
  v10 = sub_1935A4FA8(v8, v9);
  v18 = OUTLINED_FUNCTION_98_9(v10, v11, v12, v13, v14, v15, v16, v17, v32, v35);
  v20 = sub_1935A4BAC(v18, v19);
  v28 = OUTLINED_FUNCTION_62_0(v20, v21, v22, v23, v24, v25, v26, v27, v33, v36);
  sub_1935A443C(v28, v29);
  return sub_19393CB00();
}

uint64_t sub_1935A28FC(uint64_t a1)
{
  v1 = sub_19393CAB0();
  v9 = OUTLINED_FUNCTION_99(v1, v2, v3, v4, v5, v6, v7, v8, v32, v35);
  v11 = sub_1935A4FA8(v9, v10);
  v19 = OUTLINED_FUNCTION_98_9(v11, v12, v13, v14, v15, v16, v17, v18, v33, v36);
  v21 = sub_1935A4BAC(v19, v20);
  v29 = OUTLINED_FUNCTION_62_0(v21, v22, v23, v24, v25, v26, v27, v28, v34, v37);
  sub_1935A443C(v29, v30);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted.subComponent.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

BOOL static IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    Decoration = IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.rawValue.getter();
    return Decoration == IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.rawValue.getter();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  Decoration = IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.rawValue.getter();
  return MEMORY[0x193B18030](Decoration);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    Decoration = IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.rawValue.getter();
    MEMORY[0x193B18030](Decoration);
  }

  return sub_19393CB00();
}

uint64_t sub_1935A2B28()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    Decoration = IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.rawValue.getter();
    MEMORY[0x193B18030](Decoration);
  }

  return sub_19393CB00();
}

BOOL static IntelligenceFlowQueryDecorationTelemetry.QDSubComponentEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t _s27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV18QDCollectionFailedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV18QDCollectionFailedV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 20);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t _s27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV18QDCollectionFailedV9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 20);
  OUTLINED_FUNCTION_119();
  if (v1)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_98_9(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v2)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_1935A2E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v6 = *(v4 + 4);
  v7 = *(v4 + 20);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  sub_19393CAB0();
  a4(v9);
  return sub_19393CB00();
}

void IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.startedOrChanged.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.startedOrChanged.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.failed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 36);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 20) = v4;
  *(a1 + 16) = v5;
  return sub_19350CB08(v2, v3);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.failed.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = v1 + 32;
  result = sub_193456418(*(v6 - 16), *(v6 - 8));
  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

uint64_t sub_1935A2FC4()
{
  v0 = OUTLINED_FUNCTION_222();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

void static IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_150();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_0();
  v13 = *(v2 + 10);
  if (*(v4 + 10))
  {
    if ((*(v2 + 10) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v14 = *v2;
    v15 = *(v2 + 4);
    v16 = *(v4 + 4);
    v63 = *v4;
    v64 = v16;
    v65 = 0;
    if (v13)
    {
      goto LABEL_45;
    }

    v61 = v14;
    v62 = v15 & 0x1FF;
    if (!static IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted.== infix(_:_:)(&v63, &v61))
    {
      goto LABEL_45;
    }
  }

  v17 = *(v4 + 11);
  v18 = *(v2 + 11);
  if (v17 == 3)
  {
    if (v18 != 3)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v18 == 3)
    {
      goto LABEL_45;
    }

    if (v17 == 2)
    {
      if (v18 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v18 == 2 || ((v18 ^ v17) & 1) != 0)
    {
      goto LABEL_45;
    }
  }

  v19 = v4[2];
  v20 = v4[3];
  v22 = v2[2];
  v21 = v2[3];
  v60 = *(v2 + 8) | (*(v2 + 36) << 32);
  if (v20 != 1)
  {
    if (v21 == 1)
    {
      sub_19350CB08(v19, v20);
      sub_19350CB08(v22, 1);
      v25 = OUTLINED_FUNCTION_187();
      sub_19350CB08(v25, v26);

LABEL_26:
      v29 = OUTLINED_FUNCTION_187();
      sub_193456418(v29, v30);
      v31 = OUTLINED_FUNCTION_19_3();
LABEL_44:
      sub_193456418(v31, v32);
      goto LABEL_45;
    }

    v58 = v4[3];
    v59 = v4[2];
    v57 = *(v4 + 8) | (*(v4 + 36) << 32);
    if (v20)
    {
      if (v21)
      {
        if (v19 != v22 || v20 != v21)
        {
          v56 = sub_19393CA30();
          sub_19350CB08(v59, v20);
          v34 = OUTLINED_FUNCTION_19_3();
          sub_19350CB08(v34, v35);
          sub_19350CB08(v59, v20);
          v36 = OUTLINED_FUNCTION_19_3();
          v37 = v57;
          sub_193456418(v36, v38);
          if ((v56 & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        v55 = v4[2];
        sub_19350CB08(v19, v20);
        sub_19350CB08(v55, v20);
        sub_19350CB08(v55, v20);
        v46 = v55;
        v37 = v57;
        v47 = v20;
LABEL_47:
        sub_193456418(v46, v47);
LABEL_48:
        if ((v37 & 0x100000000) == 0)
        {
          if ((v60 & 0x100000000) != 0 || v37 != v60)
          {
            goto LABEL_43;
          }

LABEL_53:
          v21 = v58;

          goto LABEL_11;
        }

        if ((v60 & 0x100000000) != 0)
        {
          goto LABEL_53;
        }

LABEL_43:

        v31 = v59;
        v32 = v58;
        goto LABEL_44;
      }

      v51 = v4[2];
      sub_19350CB08(v19, v20);
      v45 = v20;
      v44 = v51;
    }

    else
    {
      v44 = v4[2];
      sub_19350CB08(v19, 0);
      v45 = 0;
      if (!v21)
      {
        sub_19350CB08(v22, 0);
        sub_19350CB08(v44, 0);
        v46 = v22;
        v47 = 0;
        v37 = v57;
        goto LABEL_47;
      }
    }

    v52 = v45;
    sub_19350CB08(v22, v21);
    sub_19350CB08(v44, v52);
    v53 = OUTLINED_FUNCTION_19_3();
    sub_193456418(v53, v54);
    goto LABEL_43;
  }

  v59 = v4[2];
  sub_19350CB08(v19, 1);
  if (v21 != 1)
  {
    v27 = OUTLINED_FUNCTION_19_3();
    sub_19350CB08(v27, v28);
    goto LABEL_26;
  }

  sub_19350CB08(v22, 1);
LABEL_11:
  sub_193456418(v59, v21);
  v23 = *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0) + 28);
  v24 = *(v11 + 48);
  OUTLINED_FUNCTION_191_1(v4 + v23, v0);
  OUTLINED_FUNCTION_191_1(v2 + v23, v0 + v24);
  OUTLINED_FUNCTION_31(v0);
  if (!v43)
  {
    v39 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v39, v40, v41, v42);
    OUTLINED_FUNCTION_31(v0 + v24);
    if (!v43)
    {
      sub_19355A5F8(v0 + v24, v8);
      OUTLINED_FUNCTION_0_44();
      v50 = sub_19359DAF8(v48, v49, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_139(v50);
      OUTLINED_FUNCTION_3_37();
      sub_1935A73D8();
      sub_1935A73D8();
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
LABEL_38:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_31(v0 + v24);
  if (!v43)
  {
    goto LABEL_38;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_45:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_3_4();
  v4 = type metadata accessor for AIML.UUID(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76_0();
  if (*(v0 + 10) == 1 || (v8 = *(v0 + 8), OUTLINED_FUNCTION_103_0(), (v8 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    Decoration = IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.rawValue.getter();
    MEMORY[0x193B18030](Decoration);
  }

  v10 = *(v0 + 11);
  if (v10 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v10 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v11 = *(v0 + 24);
  if (v11 != 1)
  {
    v12 = *(v0 + 32) | (*(v0 + 36) << 32);
    OUTLINED_FUNCTION_103_0();
    if (v11)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if ((v12 & 0x100000000) == 0)
      {
LABEL_12:
        OUTLINED_FUNCTION_103_0();
        sub_19393CAE0();
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
      if ((v12 & 0x100000000) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_15:
  v13 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  sub_193448804(v0 + *(v13 + 28), v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v2, 1, v4);
  if (v14)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v2, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_44();
    sub_19359DAF8(v15, v16, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[1];
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_1935A39BC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_19393CAB0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported.== infix(_:_:)(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19355B350(v1, v2) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_13_0();

  return sub_19355B2F4(v3, v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported.hash(into:)(uint64_t a1)
{
  sub_19356408C(a1, *v1);
  v2 = OUTLINED_FUNCTION_13_0();

  return sub_193563E6C(v2, v3);
}

uint64_t sub_1935A3B38()
{
  OUTLINED_FUNCTION_50_0();
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_108_3(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  v11 = v1(v10);
  v19 = OUTLINED_FUNCTION_62_0(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);
  v0(v19);
  return sub_19393CB00();
}

uint64_t sub_1935A3BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t (*a5)(char *))
{
  v7 = sub_19393CAB0();
  v15 = OUTLINED_FUNCTION_108_3(v7, v8, v9, v10, v11, v12, v13, v14, v26, v28);
  v16 = a4(v15);
  v24 = OUTLINED_FUNCTION_62_0(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29);
  a5(v24);
  return sub_19393CB00();
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  if (*(v0 + 4) == 1)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported.hashValue.getter()
{
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_119();
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_1935A3D54(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_19393CAB0();
  if (v2 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

void sub_1935A3E34()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_165_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_150();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_0();
  v16 = *(v15 + 56);
  OUTLINED_FUNCTION_191_1(v4, v0);
  OUTLINED_FUNCTION_191_1(v2, v0 + v16);
  OUTLINED_FUNCTION_31(v0);
  if (!v21)
  {
    v17 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v17, v18, v19, v20);
    OUTLINED_FUNCTION_31(v0 + v16);
    if (!v21)
    {
      sub_19355A5F8(v0 + v16, v8);
      OUTLINED_FUNCTION_0_44();
      v24 = sub_19359DAF8(v22, v23, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_139(v24);
      OUTLINED_FUNCTION_3_37();
      sub_1935A73D8();
      sub_1935A73D8();
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1935A73D8();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v16);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void sub_1935A4050()
{
  OUTLINED_FUNCTION_237();
  v2 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_25_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_150();
  sub_193448804(v0, v1, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v1, 1, v2);
  if (v11)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19355A5F8(v1, v6);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_44();
    sub_19359DAF8(v12, v13, &protocol conformance descriptor for AIML.UUID);
    sub_19393C540();
    OUTLINED_FUNCTION_1_41();
    sub_1935A73D8();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_1935A420C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v17 = v3;
  if (v3)
  {
    v5 = 0;
    v16 = a2 + 32;
    do
    {
      v6 = v16 + (v5 << 6);
      v7 = *(v6 + 12);
      v8 = *(v6 + 16);
      v9 = *(v6 + 33);
      v10 = *(v6 + 40);
      v11 = *(v6 + 56);
      if (*(v6 + 4) == 1)
      {
        sub_19393CAD0();
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
        if (!v7)
        {
LABEL_5:
          sub_19393CAD0();
          sub_19393CAE0();
          goto LABEL_8;
        }
      }

      sub_19393CAD0();
LABEL_8:
      MEMORY[0x193B18030](*(v8 + 16));
      v12 = *(v8 + 16);
      if (v12)
      {

        v13 = v8 + 40;
        do
        {
          v13 += 16;
          Decoration = IntelligenceFlowQueryDecorationTelemetry.QDMatchingTransform.rawValue.getter();
          MEMORY[0x193B18030](Decoration);
          --v12;
        }

        while (v12);
        if (v9)
        {
LABEL_12:
          sub_19393CAD0();
          if (!v10)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_12;
        }
      }

      sub_19393CAD0();
      v15 = IntelligenceFlowQueryDecorationTelemetry.QDSpanMatcherType.rawValue.getter();
      MEMORY[0x193B18030](v15);
      if (!v10)
      {
LABEL_13:
        sub_19393CAD0();
        sub_19393CAE0();
        if (!v11)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

LABEL_17:
      sub_19393CAD0();
      if (!v11)
      {
LABEL_18:
        sub_19393CAD0();
        goto LABEL_19;
      }

LABEL_14:
      sub_19393CAD0();
      sub_19393C640();
LABEL_19:

      ++v5;
    }

    while (v5 != v17);
  }

  return result;
}

uint64_t sub_1935A443C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
  v9 = *(Decoration - 8);
  MEMORY[0x1EEE9AC00](Decoration);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x193B18030](v12);
  if (v12)
  {
    v14 = *(Decoration + 24);
    v15 = &v11[*(Decoration + 20)];
    v16 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);
    v18 = &v11[v14];
    v30 = v7;
    v31 = v3;
    v27 = v17;
    do
    {
      sub_1935A737C(v16, v11, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement);
      sub_193448804(v11, v7, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v7, v28);
        sub_19393CAD0();
        sub_19359DAF8(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_1935A73D8();
      }

      if (v15[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v19 = v15[8];
        v20 = *v15;
        sub_19393CAD0();
        v32 = v20;
        v3 = v31;
        v33 = v19 & 1;
        v21 = IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.rawValue.getter();
        MEMORY[0x193B18030](v21);
      }

      v22 = *(v18 + 1);
      if (v22 == 1)
      {
        sub_19393CAD0();
        v7 = v30;
      }

      else
      {
        v23 = v11;
        v24 = v15;
        v25 = *(v18 + 3);
        v29 = *(v18 + 2);
        sub_19393CAD0();
        sub_19393CAD0();
        if (v22)
        {
          sub_19393C640();
        }

        v7 = v30;
        v3 = v31;
        sub_19393CAD0();
        if (v25)
        {
          sub_19393C640();
        }

        v15 = v24;
        v11 = v23;
        v17 = v27;
      }

      result = sub_1935A73D8();
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1935A47E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x193B18030](v5);
  if (v5)
  {
    v7 = a2 + 40;
    do
    {
      v7 += 16;
      v8 = a3(result);
      result = MEMORY[0x193B18030](v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1935A488C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    sub_19358D8E8(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1935A4900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    sub_1935A4974(a2, a3, a4, a5);
  }

  return result;
}

void sub_1935A4974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 2)
  {
    sub_1934D16DC(a1, a2, a3, a4);
  }
}

uint64_t sub_1935A4984(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v18 = v3;
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v16 = v8;
      v17 = v6;
      if (*(v5 - 2))
      {
        sub_19393CAD0();

        v12 = v8;
        v13 = v9;
        sub_1934D1694(v6, v12, v9, v10);
        v14 = v11;

        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();

        v15 = v8;
        v13 = v9;
        sub_1934D1694(v6, v15, v9, v10);
        v14 = v11;
      }

      sub_19393CAD0();
      if (v7)
      {
        sub_19393C640();
      }

      if (v16 != 1)
      {
        sub_19393CAD0();
        if (v16)
        {
          sub_19393CAD0();
          sub_19393C640();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_19393CAD0();
          if (v10)
          {
LABEL_11:
            sub_19393CAD0();
            sub_19393C640();
            if (v14)
            {
              goto LABEL_15;
            }

            goto LABEL_12;
          }
        }
      }

      sub_19393CAD0();
      if (v14)
      {
LABEL_15:
        sub_19393CAD0();
        sub_19393C640();

        sub_1934D16DC(v17, v16, v13, v10);
        goto LABEL_16;
      }

LABEL_12:
      sub_19393CAD0();

      sub_1934D16DC(v17, v16, v13, v10);
LABEL_16:

      v5 += 10;
      --v3;
    }

    while (v18 != 1);
  }

  return result;
}

uint64_t sub_1935A4BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
  v10 = *(Decoration - 1);
  MEMORY[0x1EEE9AC00](Decoration);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x193B18030](v13);
  if (v13)
  {
    v15 = Decoration[5];
    v29 = Decoration[6];
    v30 = v8;
    v16 = &v12[Decoration[7]];
    v17 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);
    v19 = &v12[v15];
    v31 = v4;
    v26 = v18;
    do
    {
      sub_1935A737C(v17, v12, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity);
      sub_193448804(v12, v8, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v8, v27);
        sub_19393CAD0();
        sub_19359DAF8(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_1935A73D8();
      }

      v20 = *(v19 + 1);
      if (v20 == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v21 = v16;
        v22 = *(v19 + 3);
        v28 = *(v19 + 2);
        sub_19393CAD0();
        sub_19393CAD0();
        if (v20)
        {
          sub_19393C640();
        }

        v4 = v31;
        sub_19393CAD0();
        if (v22)
        {
          sub_19393C640();
        }

        v16 = v21;
        v18 = v26;
      }

      sub_1935A420C(a1, *&v12[v29]);
      if (v16[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v23 = v16[8];
        v24 = *v16;
        sub_19393CAD0();
        v32 = v24;
        v4 = v31;
        v33 = v23 & 1;
        v25 = IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass.rawValue.getter();
        MEMORY[0x193B18030](v25);
      }

      v8 = v30;
      result = sub_1935A73D8();
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1935A4FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  v50 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
  v13 = *(Decoration - 1);
  MEMORY[0x1EEE9AC00](Decoration);
  v67 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x193B18030](v15);
  v61 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = Decoration[6];
    v60 = v67 + Decoration[5];
    v59 = (v67 + v18);
    v19 = Decoration[8];
    v58 = v67 + Decoration[7];
    v57 = (v67 + v19);
    v20 = Decoration[10];
    v21 = (v67 + Decoration[9]);
    v55 = (v67 + v20);
    v56 = v21;
    v54 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v22 = *(v13 + 72);
    v52 = v11;
    v53 = v22;
    while (1)
    {
      v23 = v67;
      sub_1935A737C(v54 + v53 * v17, v67, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool);
      sub_193448804(v23, v11, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v11, v51);
        sub_19393CAD0();
        sub_19359DAF8(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_1935A73D8();
      }

      if (*(v60 + 8))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (*(v59 + 9) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v24 = *(v59 + 8);
        v25 = *v59;
        sub_19393CAD0();
        v68 = v25;
        v69 = v24 & 1;
        v26 = IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.rawValue.getter();
        MEMORY[0x193B18030](v26);
      }

      if (*(v58 + 4) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      if (*(v57 + 9) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v27 = *(v57 + 8);
        v28 = *v57;
        sub_19393CAD0();
        v68 = v28;
        v69 = v27 & 1;
        v29 = IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria.rawValue.getter();
        MEMORY[0x193B18030](v29);
      }

      v30 = *v21;
      if (*v21)
      {
        v31 = v21[1];
        sub_19393CAD0();
        sub_1935A4BAC(a1, v30);
        MEMORY[0x193B18030](*(v31 + 16));
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = v31 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v34 = *(v50 + 72);
          do
          {
            sub_1935A737C(v33, v7, type metadata accessor for AIML.UUID);
            sub_19359DAF8(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
            sub_19393C540();
            sub_1935A73D8();
            v33 += v34;
            --v32;
          }

          while (v32);
        }
      }

      else
      {
        sub_19393CAD0();
      }

      v35 = *v55;
      if (*v55)
      {
        break;
      }

      sub_19393CAD0();
      result = sub_1935A73D8();
LABEL_40:
      ++v17;
      v21 = v56;
      if (v17 == v61)
      {
        return result;
      }
    }

    v62 = v17;
    v37 = v55[1];
    v36 = v55[2];
    v39 = v55[3];
    v38 = v55[4];
    v40 = v55[6];
    v63 = v55[5];
    sub_19393CAD0();

    v66 = v37;
    v64 = v39;
    sub_19358D8E8(v37, v36, v39, v38);

    sub_1935A4984(a1, v35);
    v65 = v38;
    if (v36 == 2)
    {
      sub_19393CAD0();
      v41 = v64;
      goto LABEL_30;
    }

    sub_19393CAD0();
    if (v36 == 1)
    {
      sub_19393CAD0();
      v41 = v64;
      sub_1935A4974(v66, 1, v64, v38);
LABEL_30:
      v17 = v62;
      if (v40)
      {
LABEL_31:
        sub_19393CAD0();
        sub_19393C640();
LABEL_39:
        sub_1935A73D8();
        result = sub_1935A4900(v35, v66, v36, v41, v65);
        v11 = v52;
        goto LABEL_40;
      }

LABEL_38:
      sub_19393CAD0();
      goto LABEL_39;
    }

    sub_19393CAD0();
    v17 = v62;
    if (v36)
    {
      sub_19393CAD0();
      v42 = v65;
      v41 = v64;
      sub_1934D1694(v66, v36, v64, v65);
      sub_19393C640();
      if (v42)
      {
LABEL_34:
        sub_19393CAD0();
        v43 = v65;
        sub_19393C640();
        v44 = v66;
        v45 = v36;
        v46 = v41;
        v47 = v43;
        goto LABEL_37;
      }
    }

    else
    {
      sub_19393CAD0();
      v48 = v65;
      v41 = v64;
      sub_1934D1694(v66, 0, v64, v65);
      if (v48)
      {
        goto LABEL_34;
      }
    }

    sub_19393CAD0();
    v44 = v66;
    v45 = v36;
    v46 = v41;
    v47 = 0;
LABEL_37:
    sub_1935A4974(v44, v45, v46, v47);
    if (v40)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  return result;
}

unint64_t sub_1935A5748()
{
  result = qword_1EAE3DE18;
  if (!qword_1EAE3DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DE18);
  }

  return result;
}

unint64_t sub_1935A57D0()
{
  result = qword_1EAE3DE30;
  if (!qword_1EAE3DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DE30);
  }

  return result;
}

unint64_t sub_1935A5858()
{
  result = qword_1EAE3DE48;
  if (!qword_1EAE3DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DE48);
  }

  return result;
}

unint64_t sub_1935A58E0()
{
  result = qword_1EAE3DE60;
  if (!qword_1EAE3DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DE60);
  }

  return result;
}

unint64_t sub_1935A5968()
{
  result = qword_1EAE3DE78;
  if (!qword_1EAE3DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DE78);
  }

  return result;
}

unint64_t sub_1935A59F0()
{
  result = qword_1EAE3DE88;
  if (!qword_1EAE3DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DE88);
  }

  return result;
}

unint64_t sub_1935A5A78()
{
  result = qword_1EAE3DEA0;
  if (!qword_1EAE3DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEA0);
  }

  return result;
}

unint64_t sub_1935A5B00()
{
  result = qword_1EAE3DEB8;
  if (!qword_1EAE3DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEB8);
  }

  return result;
}

unint64_t sub_1935A5BA0()
{
  result = qword_1EAE3DEC0;
  if (!qword_1EAE3DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEC0);
  }

  return result;
}

unint64_t sub_1935A5BF8()
{
  result = qword_1EAE3DEC8;
  if (!qword_1EAE3DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEC8);
  }

  return result;
}

unint64_t sub_1935A5C50()
{
  result = qword_1EAE3DED0;
  if (!qword_1EAE3DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DED0);
  }

  return result;
}

unint64_t sub_1935A5CF0()
{
  result = qword_1EAE3DEE0;
  if (!qword_1EAE3DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEE0);
  }

  return result;
}

unint64_t sub_1935A5D48()
{
  result = qword_1EAE3DEE8;
  if (!qword_1EAE3DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEE8);
  }

  return result;
}

unint64_t sub_1935A5DA0()
{
  result = qword_1EAE3DEF0;
  if (!qword_1EAE3DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEF0);
  }

  return result;
}

unint64_t sub_1935A5DF8()
{
  result = qword_1EAE3DEF8;
  if (!qword_1EAE3DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DEF8);
  }

  return result;
}

unint64_t sub_1935A5EE0()
{
  result = qword_1EAE3DF10;
  if (!qword_1EAE3DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF10);
  }

  return result;
}

unint64_t sub_1935A5F38()
{
  result = qword_1EAE3DF18;
  if (!qword_1EAE3DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF18);
  }

  return result;
}

unint64_t sub_1935A5FA0()
{
  result = qword_1EAE3DF20;
  if (!qword_1EAE3DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF20);
  }

  return result;
}

unint64_t sub_1935A5FF8()
{
  result = qword_1EAE3DF28;
  if (!qword_1EAE3DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF28);
  }

  return result;
}

unint64_t sub_1935A6050()
{
  result = qword_1EAE3DF30;
  if (!qword_1EAE3DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF30);
  }

  return result;
}

void sub_1935A61F8(uint64_t a1)
{
  OUTLINED_FUNCTION_91_10(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_91_10(v2, &qword_1ED507C50);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_91_10(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_91_10(v6, qword_1ED507BF0);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_91_10(v8, &qword_1ED507488);
            if (v11 <= 0x3F)
            {
              OUTLINED_FUNCTION_2_39(v10, &qword_1ED506990, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext);
              if (v13 <= 0x3F)
              {
                OUTLINED_FUNCTION_2_39(v12, &qword_1ED506988, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected);
                if (v15 <= 0x3F)
                {
                  OUTLINED_FUNCTION_2_39(v14, &qword_1ED504F90, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated);
                  if (v17 <= 0x3F)
                  {
                    OUTLINED_FUNCTION_2_39(v16, qword_1ED504F98, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked);
                    if (v19 <= 0x3F)
                    {
                      OUTLINED_FUNCTION_91_10(v18, &qword_1ED507BE8);
                      if (v21 <= 0x3F)
                      {
                        OUTLINED_FUNCTION_2_39(v20, &qword_1ED506948, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported);
                        if (v23 <= 0x3F)
                        {
                          OUTLINED_FUNCTION_2_39(v22, qword_1ED502FB8, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered);
                          if (v25 <= 0x3F)
                          {
                            OUTLINED_FUNCTION_2_39(v24, qword_1ED502E08, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported);
                            if (v26 <= 0x3F)
                            {
                              OUTLINED_FUNCTION_15_2();
                              swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1935A6470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1935A6544(uint64_t a1)
{
  OUTLINED_FUNCTION_4_32(a1, qword_1ED507908);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_91_10(v1, &qword_1ED508298);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1935A65D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1935A6614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_118_7(result);
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1935A66A4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_32(a1, qword_1ED507908);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_39(v1, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_39(v3, &qword_1EAE3A808, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolSubType);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_39(v5, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
        if (v8 <= 0x3F)
        {
          OUTLINED_FUNCTION_2_39(v7, &qword_1EAE3A7E8, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolSelectionCriteria);
          if (v10 <= 0x3F)
          {
            OUTLINED_FUNCTION_2_39(v9, &qword_1EAE3A810, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolSource);
            if (v12 <= 0x3F)
            {
              OUTLINED_FUNCTION_2_39(v11, &qword_1EAE3A800, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition);
              if (v13 <= 0x3F)
              {
                OUTLINED_FUNCTION_15_2();
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV12QDEntityTypeVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV22QDToolOutputDefinitionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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