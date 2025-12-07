uint64_t _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE11RequestTypeO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1819242324;
  switch(*v0)
  {
    case 1:
      result = 0x6B6361626C6C6146;
      break;
    case 2:
      result = 0x656469727265764FLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_165_2();
      break;
    case 4:
      result = 0x6C65646F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1819242324 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(1819242324) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6B6361626C6C6146 && v0 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_29_2(0x6B6361626C6C6146) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x656469727265764FLL && v0 == 0xE800000000000000;
        if (v8 || (OUTLINED_FUNCTION_29_2(0x656469727265764FLL) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = OUTLINED_FUNCTION_165_2();
          v11 = v1 == v9 && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = OUTLINED_FUNCTION_121_5(1701080909);
            if (v4 && v0 == 0xE500000000000000)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_15_14(v12);
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

void IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.rawValue.getter()
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

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v7 >> 1 <= v8)
  {
    OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_17_2();
  }

  *(v6 + 2) = v8 + 1;
  OUTLINED_FUNCTION_92_4();
  if (v14 < (v8 + 2))
  {
    v24 = OUTLINED_FUNCTION_39(v13);
    v9 = OUTLINED_FUNCTION_85(v24, v25, v26, v27, &qword_1EAE3E218, &qword_193969D98);
    v12 = v9;
  }

  OUTLINED_FUNCTION_47_5(v9, v10, v11, v12);
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  return v16;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x6867696C46726941;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2 == 0x6867696C46726941 && v1 == 0xE900000000000074)
  {

    LOBYTE(v2) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_9(0x6867696C46726941, 0xE900000000000074);
    result = OUTLINED_FUNCTION_89();
  }

  *v0 = 0;
  *(v0 + 8) = v2 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_16_0();
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v112, v113, v114, v115, v116, v117);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v118 = OUTLINED_FUNCTION_39(v19);
    OUTLINED_FUNCTION_85(v118, v119, v120, v121, &qword_1EAE3E210, &qword_193969D90);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    v122 = OUTLINED_FUNCTION_39(v26);
    v22 = sub_1934B0FCC(v122, v0, 1, v123, &qword_1EAE3E210, &qword_193969D90);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v31);
    OUTLINED_FUNCTION_31_17();
    v27 = sub_1934B0FCC(v124, v125, v126, v127, v128, v129);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v130 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v130, v131, v132, v133, &qword_1EAE3E210, &qword_193969D90);
    v35 = v32;
  }

  OUTLINED_FUNCTION_47_5(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37);
  if (v1 + 6 > (v42 >> 1))
  {
    OUTLINED_FUNCTION_39(v42);
    OUTLINED_FUNCTION_31_17();
    v38 = sub_1934B0FCC(v134, v135, v136, v137, v138, v139);
    v41 = v38;
  }

  OUTLINED_FUNCTION_50(v38, v39, v40, v41);
  OUTLINED_FUNCTION_4(v43);
  if (v1 + 7 > (v48 >> 1))
  {
    v140 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v140, v141, v142, v143, &qword_1EAE3E210, &qword_193969D90);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49);
  if (v1 + 8 > (v54 >> 1))
  {
    OUTLINED_FUNCTION_39(v54);
    OUTLINED_FUNCTION_31_17();
    v50 = sub_1934B0FCC(v144, v145, v146, v147, v148, v149);
    v53 = v50;
  }

  OUTLINED_FUNCTION_50(v50, v51, v52, v53);
  OUTLINED_FUNCTION_4(v55);
  if (v1 + 9 > (v60 >> 1))
  {
    v150 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v150, v151, v152, v153, &qword_1EAE3E210, &qword_193969D90);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  if (v1 + 10 > (v66 >> 1))
  {
    OUTLINED_FUNCTION_39(v66);
    OUTLINED_FUNCTION_31_17();
    v62 = sub_1934B0FCC(v154, v155, v156, v157, v158, v159);
    v65 = v62;
  }

  OUTLINED_FUNCTION_50(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  if (v1 + 11 > (v72 >> 1))
  {
    v160 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_85(v160, v161, v162, v163, &qword_1EAE3E210, &qword_193969D90);
    v71 = v68;
  }

  OUTLINED_FUNCTION_47_5(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  if (v1 + 12 > (v78 >> 1))
  {
    OUTLINED_FUNCTION_39(v78);
    OUTLINED_FUNCTION_31_17();
    v74 = sub_1934B0FCC(v164, v165, v166, v167, v168, v169);
    v77 = v74;
  }

  OUTLINED_FUNCTION_50(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79);
  if (v1 + 13 > (v84 >> 1))
  {
    v170 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v170, v171, v172, v173, &qword_1EAE3E210, &qword_193969D90);
    v83 = v80;
  }

  OUTLINED_FUNCTION_47_5(v80, v81, v82, v83);
  OUTLINED_FUNCTION_4(v85);
  if (v1 + 14 > (v90 >> 1))
  {
    OUTLINED_FUNCTION_39(v90);
    OUTLINED_FUNCTION_31_17();
    v86 = sub_1934B0FCC(v174, v175, v176, v177, v178, v179);
    v89 = v86;
  }

  OUTLINED_FUNCTION_50(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91);
  if (v1 + 15 > (v96 >> 1))
  {
    v180 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v180, v181, v182, v183, &qword_1EAE3E210, &qword_193969D90);
    v95 = v92;
  }

  OUTLINED_FUNCTION_47_5(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97);
  if (v1 + 16 > (v102 >> 1))
  {
    OUTLINED_FUNCTION_39(v102);
    OUTLINED_FUNCTION_31_17();
    v98 = sub_1934B0FCC(v184, v185, v186, v187, v188, v189);
    v101 = v98;
  }

  OUTLINED_FUNCTION_50(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103);
  if (v1 + 17 > (v108 >> 1))
  {
    v190 = OUTLINED_FUNCTION_39(v108);
    v104 = OUTLINED_FUNCTION_85(v190, v191, v192, v193, &qword_1EAE3E210, &qword_193969D90);
    v107 = v104;
  }

  OUTLINED_FUNCTION_47_5(v104, v105, v106, v107);
  *(v109 + 32) = 15;
  *(v109 + 40) = v0;
  return v110;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_88_12();
        break;
      case 3:
        OUTLINED_FUNCTION_106_11();
        break;
      case 4:
        OUTLINED_FUNCTION_64_10();
        break;
      case 6:
      case 0xCLL:
        OUTLINED_FUNCTION_38();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_111_8();
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

void IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_121_5(1767992645);
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_15_14(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_122_6();
      v9 = v4 && v0 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_15_14(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0x6D53656C69626F4DLL && v0 == 0xE900000000000073;
        if (v10 || (OUTLINED_FUNCTION_0_9(0x6D53656C69626F4DLL, 0xE900000000000073) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = v1 == 1702129486 && v0 == 0xE400000000000000;
          if (v11 || (OUTLINED_FUNCTION_19_8(1702129486) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = OUTLINED_FUNCTION_100_12();
            v13 = v4 && v0 == 0xE700000000000000;
            if (v13 || (OUTLINED_FUNCTION_22_7(v12) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v14 = v1 == 1701603654 && v0 == 0xE400000000000000;
              if (v14 || (OUTLINED_FUNCTION_19_8(1701603654) & 1) != 0)
              {

                v5 = 5;
              }

              else
              {
                OUTLINED_FUNCTION_26_4();
                v16 = v4 && v15 == v0;
                if (v16 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v15) & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  v17 = v1 == 0xD000000000000010 && 0x8000000193A223A0 == v0;
                  if (v17 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A223A0) & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    v18 = v1 == 0xD000000000000011 && 0x8000000193A22380 == v0;
                    if (v18 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A22380) & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else
                    {
                      v19 = v1 == 0xD000000000000015 && 0x8000000193A22360 == v0;
                      if (v19 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A22360) & 1) != 0)
                      {

                        v5 = 9;
                      }

                      else
                      {
                        v20 = v1 == 1885958740 && v0 == 0xE400000000000000;
                        if (v20 || (OUTLINED_FUNCTION_19_8(1885958740) & 1) != 0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          v21 = v1 == 0x685374656B636954 && v0 == 0xEA0000000000776FLL;
                          if (v21 || (OUTLINED_FUNCTION_0_9(0x685374656B636954, 0xEA0000000000776FLL) & 1) != 0)
                          {

                            v5 = 11;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_26_4();
                            v23 = v4 && v22 == v0;
                            if (v23 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v22) & 1) != 0)
                            {

                              v5 = 12;
                            }

                            else
                            {
                              v24 = OUTLINED_FUNCTION_111_8();
                              v26 = v1 == v24 && v0 == v25;
                              if (v26 || (OUTLINED_FUNCTION_0_9(v24, v25) & 1) != 0)
                              {

                                v5 = 13;
                              }

                              else
                              {
                                v27 = v1 == 0x7974726150 && v0 == 0xE500000000000000;
                                if (v27 || (OUTLINED_FUNCTION_15_14(0x7974726150) & 1) != 0)
                                {

                                  v5 = 14;
                                }

                                else
                                {
                                  v28 = OUTLINED_FUNCTION_103_8();
                                  if (v4 && v0 == 0xE800000000000000)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_29_2(v28);
                                    OUTLINED_FUNCTION_89();
                                    v5 = 15;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext.== infix(_:_:)(char a1, unint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_91_11();
  if (!v7)
  {
    if (!(a2 >> 62))
    {

      v9 = OUTLINED_FUNCTION_125_5();
      static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted.== infix(_:_:)(v9, v10);
      OUTLINED_FUNCTION_127_6();
      goto LABEL_7;
    }

LABEL_11:
    a1 = 0;
    return a1 & 1;
  }

  if (v7 != 1)
  {
    if (a2 >> 62 == 2)
    {
      OUTLINED_FUNCTION_31_24();

      v11 = OUTLINED_FUNCTION_125_5();
      static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailed.== infix(_:_:)(v11, v12);
      OUTLINED_FUNCTION_127_6();

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_11;
  }

  swift_projectBox();
  swift_projectBox();
  sub_1935B8750();
  OUTLINED_FUNCTION_215();
  sub_1935B8750();

  static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.== infix(_:_:)();
  a1 = v8;
  sub_1935B87AC();
  sub_1935B87AC();
LABEL_7:

LABEL_10:

  return a1 & 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_123_8();
  if (v3)
  {
    if (v3 == 1)
    {
      swift_projectBox();
      sub_1935B8750();
      sub_1935B8854(&qword_1EAE3E0F0, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      return sub_1935B87AC();
    }

    v5 = OUTLINED_FUNCTION_4_35((v2 & 0x3FFFFFFFFFFFFFFFLL));
    OUTLINED_FUNCTION_87_12(v5);
    sub_1935B86A8();
  }

  else
  {
    sub_1935B86FC();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext.== infix(_:_:)(char a1, unint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_91_11();
  if (!v7)
  {
    if (!(a2 >> 62))
    {

      v9 = OUTLINED_FUNCTION_125_5();
      static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted.== infix(_:_:)(v9, v10);
      OUTLINED_FUNCTION_127_6();
      goto LABEL_7;
    }

LABEL_11:
    a1 = 0;
    return a1 & 1;
  }

  if (v7 != 1)
  {
    if (a2 >> 62 == 2)
    {
      OUTLINED_FUNCTION_31_24();

      v11 = OUTLINED_FUNCTION_125_5();
      static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestFailed.== infix(_:_:)(v11, v12);
      OUTLINED_FUNCTION_127_6();

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_11;
  }

  swift_projectBox();
  swift_projectBox();
  sub_1935B8750();
  OUTLINED_FUNCTION_215();
  sub_1935B8750();

  static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.== infix(_:_:)();
  a1 = v8;
  sub_1935B87AC();
  sub_1935B87AC();
LABEL_7:

LABEL_10:

  return a1 & 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_123_8();
  if (v3)
  {
    if (v3 == 1)
    {
      swift_projectBox();
      sub_1935B8750();
      sub_1935B8854(&qword_1EAE3E108, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      return sub_1935B87AC();
    }

    v5 = OUTLINED_FUNCTION_4_35((v2 & 0x3FFFFFFFFFFFFFFFLL));
    OUTLINED_FUNCTION_87_12(v5);
    sub_1935B8800();
  }

  else
  {
    sub_1935B889C();
  }

  return sub_19393C540();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v0)
  {
    OUTLINED_FUNCTION_92_5();
    if (v2)
    {
      v3 = sub_1935B8944();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded;
    }

    else
    {
      OUTLINED_FUNCTION_3_39(v1);
      v3 = sub_1935B88F0();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_7();
    v3 = sub_1935B8998();
    v4 = v3;
    v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted;
  }

  return OUTLINED_FUNCTION_133_1(v3, v5, v4);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v0)
  {
    OUTLINED_FUNCTION_92_5();
    if (v2)
    {
      v3 = sub_1935B8A40();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestEnded;
    }

    else
    {
      OUTLINED_FUNCTION_3_39(v1);
      v3 = sub_1935B89EC();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_7();
    v3 = sub_1935B8A94();
    v4 = v3;
    v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted;
  }

  return OUTLINED_FUNCTION_133_1(v3, v5, v4);
}

uint64_t sub_1935B8164(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(char *), uint64_t (*a4)(char *), uint64_t (*a5)(char *))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a1 >> 62;
  if (!v7)
  {
    if (!(v6 >> 62))
    {
      v53 = *(v5 + 16);
      LOBYTE(v42) = *(v6 + 16);

      v28 = OUTLINED_FUNCTION_90_0(v20, v21, v22, v23, v24, v25, v26, v27, v42, v45, v46, v48, v49, v51, v53);
      v18 = a3(v28);

      goto LABEL_9;
    }

LABEL_10:
    v18 = 0;
    return v18 & 1;
  }

  if (v7 != 1)
  {
    if (v6 >> 62 == 2)
    {
      OUTLINED_FUNCTION_102_11();
      v30 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v54 = v31;
      v44 = *(v30 + 16);
      LOWORD(v45) = *(v30 + 24);
      v47 = *(v30 + 32);
      v50 = *(v30 + 48);
      LOBYTE(v51) = *(v30 + 56);

      v40 = OUTLINED_FUNCTION_90_0(v32, v33, v34, v35, v36, v37, v38, v39, v44, v45, v47, *(&v47 + 1), v50, v51, v54);
      v18 = a5(v40);

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v6 >> 62 != 1)
  {
    goto LABEL_10;
  }

  v52 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v43 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

  v17 = OUTLINED_FUNCTION_90_0(v9, v10, v11, v12, v13, v14, v15, v16, v43, v45, v46, v48, v49, v51, v52);
  v18 = a4(v17);

LABEL_9:

  return v18 & 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v0)
  {
    OUTLINED_FUNCTION_92_5();
    if (v2)
    {
      v3 = sub_1935B8B3C();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestEnded;
    }

    else
    {
      OUTLINED_FUNCTION_3_39(v1);
      v3 = sub_1935B8AE8();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_7();
    v3 = sub_1935B8B90();
    v4 = v3;
    v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted;
  }

  return OUTLINED_FUNCTION_133_1(v3, v5, v4);
}

BOOL static IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationContext.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
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
        v5 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        v54 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOWORD(v45) = *(v5 + 16);
        BYTE2(v45) = *(v5 + 18);
        HIDWORD(v45) = *(v5 + 20);
        LOWORD(v47) = *(v5 + 24);

        v14 = OUTLINED_FUNCTION_90_0(v6, v7, v8, v9, v10, v11, v12, v13, v45, v47, v48, v50, v51, v53, v54);
        v16 = static IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.== infix(_:_:)(v14, v15);
LABEL_9:
        v27 = v16;

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      OUTLINED_FUNCTION_102_11();
      OUTLINED_FUNCTION_31_24();
      v56 = v28;
      v46 = v29;
      LOBYTE(v47) = v30;
      BYTE1(v47) = v31;
      v49 = *(v3 + 32);
      v52 = v32;
      LOBYTE(v53) = v33;

      v42 = OUTLINED_FUNCTION_90_0(v34, v35, v36, v37, v38, v39, v40, v41, v46, v47, v49, *(&v49 + 1), v52, v53, v56);
      static IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationFailed.== infix(_:_:)(v42, v43);
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 >> 62)
  {
    return 0;
  }

  v55 = *(v2 + 16);
  LOBYTE(v45) = *(v3 + 16);

  v25 = OUTLINED_FUNCTION_90_0(v17, v18, v19, v20, v21, v22, v23, v24, v45, v47, v48, v50, v51, v53, v55);
  v27 = static IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationStarted.== infix(_:_:)(v25, v26);

LABEL_10:

  return v27;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v0)
  {
    OUTLINED_FUNCTION_92_5();
    if (v2)
    {
      v3 = sub_1935B8C38();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded;
    }

    else
    {
      OUTLINED_FUNCTION_3_39(v1);
      v3 = sub_1935B8BE4();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_7();
    v3 = sub_1935B8C8C();
    v4 = v3;
    v5 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationStarted;
  }

  return OUTLINED_FUNCTION_133_1(v3, v5, v4);
}

char *sub_1935B85A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E238, &qword_193969DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

unint64_t sub_1935B86A8()
{
  result = qword_1EAE3E0E8;
  if (!qword_1EAE3E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0E8);
  }

  return result;
}

unint64_t sub_1935B86FC()
{
  result = qword_1EAE3E0F8;
  if (!qword_1EAE3E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0F8);
  }

  return result;
}

uint64_t sub_1935B8750()
{
  OUTLINED_FUNCTION_91_0();
  v2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1935B87AC()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1935B8800()
{
  result = qword_1EAE3E100;
  if (!qword_1EAE3E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E100);
  }

  return result;
}

uint64_t sub_1935B8854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1935B889C()
{
  result = qword_1EAE3E110;
  if (!qword_1EAE3E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E110);
  }

  return result;
}

unint64_t sub_1935B88F0()
{
  result = qword_1EAE3E118;
  if (!qword_1EAE3E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E118);
  }

  return result;
}

unint64_t sub_1935B8944()
{
  result = qword_1EAE3E120;
  if (!qword_1EAE3E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E120);
  }

  return result;
}

unint64_t sub_1935B8998()
{
  result = qword_1EAE3E128;
  if (!qword_1EAE3E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E128);
  }

  return result;
}

unint64_t sub_1935B89EC()
{
  result = qword_1EAE3E130;
  if (!qword_1EAE3E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E130);
  }

  return result;
}

unint64_t sub_1935B8A40()
{
  result = qword_1EAE3E138;
  if (!qword_1EAE3E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E138);
  }

  return result;
}

unint64_t sub_1935B8A94()
{
  result = qword_1EAE3E140;
  if (!qword_1EAE3E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E140);
  }

  return result;
}

unint64_t sub_1935B8AE8()
{
  result = qword_1EAE3E148;
  if (!qword_1EAE3E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E148);
  }

  return result;
}

unint64_t sub_1935B8B3C()
{
  result = qword_1EAE3E150;
  if (!qword_1EAE3E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E150);
  }

  return result;
}

unint64_t sub_1935B8B90()
{
  result = qword_1EAE3E158;
  if (!qword_1EAE3E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E158);
  }

  return result;
}

unint64_t sub_1935B8BE4()
{
  result = qword_1EAE3E160;
  if (!qword_1EAE3E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E160);
  }

  return result;
}

unint64_t sub_1935B8C38()
{
  result = qword_1EAE3E168;
  if (!qword_1EAE3E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E168);
  }

  return result;
}

unint64_t sub_1935B8C8C()
{
  result = qword_1EAE3E170;
  if (!qword_1EAE3E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E170);
  }

  return result;
}

unint64_t sub_1935B8CE4()
{
  result = qword_1EAE3E178;
  if (!qword_1EAE3E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E178);
  }

  return result;
}

unint64_t sub_1935B8D3C()
{
  result = qword_1EAE3E180;
  if (!qword_1EAE3E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E180);
  }

  return result;
}

unint64_t sub_1935B8D94()
{
  result = qword_1EAE3E188;
  if (!qword_1EAE3E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E188);
  }

  return result;
}

unint64_t sub_1935B8DEC()
{
  result = qword_1EAE3E190;
  if (!qword_1EAE3E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E190);
  }

  return result;
}

unint64_t sub_1935B8E44()
{
  result = qword_1EAE3E198;
  if (!qword_1EAE3E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E198);
  }

  return result;
}

unint64_t sub_1935B8E9C()
{
  result = qword_1EAE3E1A0;
  if (!qword_1EAE3E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1A0);
  }

  return result;
}

unint64_t sub_1935B8EF4()
{
  result = qword_1EAE3E1A8;
  if (!qword_1EAE3E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1A8);
  }

  return result;
}

unint64_t sub_1935B8F4C()
{
  result = qword_1EAE3E1B0;
  if (!qword_1EAE3E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1B0);
  }

  return result;
}

unint64_t sub_1935B8FA4()
{
  result = qword_1EAE3E1B8;
  if (!qword_1EAE3E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1B8);
  }

  return result;
}

unint64_t sub_1935B8FFC()
{
  result = qword_1EAE3E1C0;
  if (!qword_1EAE3E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1C0);
  }

  return result;
}

unint64_t sub_1935B9054()
{
  result = qword_1EAE3E1C8;
  if (!qword_1EAE3E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1C8);
  }

  return result;
}

unint64_t sub_1935B90AC()
{
  result = qword_1EAE3E1D0;
  if (!qword_1EAE3E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1D0);
  }

  return result;
}

unint64_t sub_1935B9104()
{
  result = qword_1EAE3E1D8;
  if (!qword_1EAE3E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1D8);
  }

  return result;
}

unint64_t sub_1935B915C()
{
  result = qword_1EAE3E1E0;
  if (!qword_1EAE3E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1E0);
  }

  return result;
}

unint64_t sub_1935B91B4()
{
  result = qword_1EAE3E1E8;
  if (!qword_1EAE3E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1E8);
  }

  return result;
}

unint64_t sub_1935B920C()
{
  result = qword_1EAE3E1F0;
  if (!qword_1EAE3E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1F0);
  }

  return result;
}

unint64_t sub_1935B9264()
{
  result = qword_1EAE3E1F8;
  if (!qword_1EAE3E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E1F8);
  }

  return result;
}

unint64_t sub_1935B92BC()
{
  result = qword_1EAE3E200;
  if (!qword_1EAE3E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E200);
  }

  return result;
}

unint64_t sub_1935B9314()
{
  result = qword_1EAE3E208;
  if (!qword_1EAE3E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E208);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_15()
{

  return sub_1935B87AC();
}

void sub_1935B9568()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA910);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_11_3(v4, xmmword_1939526C0);
  OUTLINED_FUNCTION_63("eventMetadata");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "monotonicTimestamp");
  v6(v9);
  v10 = OUTLINED_FUNCTION_46_10();
  *v11 = 50;
  v12 = OUTLINED_FUNCTION_16_6(v10, "invocation");
  v6(v12);
  v13 = OUTLINED_FUNCTION_45_2(3 * v3);
  *v14 = 101;
  v15 = OUTLINED_FUNCTION_0_0(v13, "searchToolGeneralSearchContext");
  v6(v15);
  v16 = OUTLINED_FUNCTION_3_1(v0 + 4 * v3);
  *v17 = 102;
  v18 = OUTLINED_FUNCTION_0_0(v16, "searchToolLLMQueryUnderstandingContext");
  v6(v18);
  v19 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v20 = 103;
  v21 = OUTLINED_FUNCTION_0_0(v19, "searchToolSpotlightContext");
  v6(v21);
  v22 = OUTLINED_FUNCTION_3_1(v0 + 6 * v3);
  *v23 = 104;
  v24 = OUTLINED_FUNCTION_0_0(v22, "searchToolAnswerSynthesisContext");
  v6(v24);
  OUTLINED_FUNCTION_120();
  v26 = OUTLINED_FUNCTION_45_2(v25);
  *v27 = 105;
  v28 = OUTLINED_FUNCTION_0_0(v26, "searchToolGlobalSearchContext");
  v6(v28);
  v29 = OUTLINED_FUNCTION_3_1(v0 + 8 * v3);
  *v30 = 106;
  v31 = OUTLINED_FUNCTION_0_0(v29, "searchToolLLMQUQueryArgumentsTier1");
  v6(v31);
  v32 = OUTLINED_FUNCTION_45_2(9 * v3);
  *v33 = 107;
  v34 = OUTLINED_FUNCTION_0_0(v32, "searchToolDisambiguationContext");
  v6(v34);
  v35 = OUTLINED_FUNCTION_3_1(v0 + 10 * v3);
  *v36 = 108;
  v37 = OUTLINED_FUNCTION_0_0(v35, "requestEndedTier1");
  v6(v37);
  v38 = OUTLINED_FUNCTION_3_1(v0 + 11 * v3);
  *v39 = 109;
  v40 = OUTLINED_FUNCTION_0_0(v38, "searchToolHallucinationDetectionContext");
  v6(v40);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935B985C()
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
      case 'e':
        v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        OUTLINED_FUNCTION_160(*(v3 + 40));
        goto LABEL_20;
      case 'f':
        v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        OUTLINED_FUNCTION_160(*(v7 + 44));
        goto LABEL_20;
      case 'g':
        v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        OUTLINED_FUNCTION_160(*(v5 + 48));
        goto LABEL_20;
      case 'h':
        v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        OUTLINED_FUNCTION_160(*(v6 + 52));
        goto LABEL_20;
      case 'i':
        v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        OUTLINED_FUNCTION_160(*(v4 + 56));
        goto LABEL_20;
      case 'j':
        type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_20;
      case 'k':
        v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        OUTLINED_FUNCTION_160(*(v8 + 64));
        goto LABEL_20;
      case 'l':
        type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_20;
      case 'm':
        type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_20;
      default:
        switch(v1)
        {
          case 50:
            type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
            type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(0);
            OUTLINED_FUNCTION_111();
            break;
          case 2:
            type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
            type metadata accessor for MonotonicTimestamp(0);
            OUTLINED_FUNCTION_111();
            break;
          case 1:
            type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
            type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(0);
            OUTLINED_FUNCTION_111();
            break;
          default:
            continue;
        }

LABEL_20:
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935B9AC4()
{
  OUTLINED_FUNCTION_47_6();
  sub_1935B9CF0();
  if (!v0)
  {
    OUTLINED_FUNCTION_11_1();
    sub_1935B9DFC();
    OUTLINED_FUNCTION_11_1();
    sub_1935B9F08();
    v2 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    if ((~*(v1 + v2[10]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v1 + v2[11]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v1 + v2[12]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v1 + v2[13]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v1 + v2[14]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_1935BA014();
    if ((~*(v1 + v2[16]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_1935BA120();
    OUTLINED_FUNCTION_11_1();
    sub_1935BA22C();
  }
}

void sub_1935B9CF0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3DFA8, &qword_193969360);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 1);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935B9DFC()
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
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 2);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935B9F08()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3DFB0, &qword_193969368);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 50);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BA014()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3DFB8, &unk_19396A2A0);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 106);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BA120()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3DFC0, &qword_193969370);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 108);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BA22C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3DFC8, &unk_19396A2B0);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 109);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BA39C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA928);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("SearchToolGeneralSearchFailureReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "SearchToolGeneralSearchFailureReasonLLMQU");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25(v11, "SearchToolGeneralSearchFailureReasonSpotlight");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "SearchToolGeneralSearchFailureReasonAnswerSynthesis";
  *(v14 + 1) = 51;
  v14[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BA554()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA940);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_83_0("SearchToolLLMQUFailureReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v10 = OUTLINED_FUNCTION_5_4(v9, "SearchToolLLMQUFailureReasonNetworkUnavailable");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_75_14((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "SearchToolLLMQUFailureReasonJsonDecoding");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  *v13 = "SearchToolLLMQUFailureReasonTimeout";
  *(v13 + 1) = 35;
  v13[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BA70C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA958);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_141_1("SearchToolAnswerSynthesisFailureReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_65();
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  *v7 = "SearchToolAnswerSynthesisFailureReasonNetwork";
  *(v7 + 8) = 45;
  *(v7 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v5();
  v8 = OUTLINED_FUNCTION_46_10();
  *v9 = v1;
  OUTLINED_FUNCTION_33_8(v8, "SearchToolAnswerSynthesisFailureReasonJsonDecoding");
  OUTLINED_FUNCTION_10_0();
  v5();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BA89C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA970);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_141_1("SearchToolDisambiguationFailureReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_65();
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  *v7 = "SearchToolDisambiguationFailureReasonNetwork";
  *(v7 + 8) = 44;
  *(v7 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v5();
  v8 = OUTLINED_FUNCTION_46_10();
  *v9 = v1;
  OUTLINED_FUNCTION_33_8(v8, "SearchToolDisambiguationFailureReasonJsonDecoding");
  OUTLINED_FUNCTION_10_0();
  v5();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BAA2C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA988);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_141_1("SearchToolSpotlightFailureReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_65();
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  *v7 = "SearchToolSpotlightFailureReasonTimeout";
  *(v7 + 8) = 39;
  *(v7 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v5();
  v8 = OUTLINED_FUNCTION_46_10();
  *v9 = v1;
  OUTLINED_FUNCTION_33_8(v8, "SearchToolSpotlightFailureReasonSearchdUnavailable");
  OUTLINED_FUNCTION_10_0();
  v5();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BABBC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA9A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_9_8(v4, xmmword_19394FBD0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SearchToolGeneralSearchResultTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "SearchToolGeneralSearchResultTypeSpotlight");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "SearchToolGeneralSearchResultTypeSpotlightInstantAnswer");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_16_6(v12, "SearchToolGeneralSearchResultTypeAnswer");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  *v14 = "SearchToolGeneralSearchResultTypeGlobal";
  *(v14 + 1) = 39;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BAD90()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA9B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v4, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SearchToolSpotlightSearchRetrievalTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_48(v8, "SearchToolSpotlightSearchRetrievalTypeMeta");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "SearchToolSpotlightSearchRetrievalTypeSemantic");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BAF14()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA9D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_9_8(v4, xmmword_19394FBD0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SearchToolLLMQUModelEventTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_16_6(v8, "SearchToolLLMQUModelEventTypeHotel");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "SearchToolLLMQUModelEventTypeRestaurant");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "SearchToolLLMQUModelEventTypeFlight");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  *v14 = "SearchToolLLMQUModelEventTypeEvent";
  *(v14 + 1) = 34;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BB0E8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA9E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("SearchToolLLMQUModelSortOrderUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v9 = "SearchToolLLMQUModelSortOrderLast";
  *(v9 + 1) = 33;
  v10 = OUTLINED_FUNCTION_56_0(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  *v11 = "SearchToolLLMQUModelSortOrderNext";
  v11[1] = 33;
  v13 = OUTLINED_FUNCTION_56_0(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "SearchToolLLMQUModelSortOrderFirst";
  *(v14 + 1) = 34;
  v14[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BB2A4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAAA00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v48 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v48, xmmword_193969E30);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SearchToolLLMQUModelAppEntityTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  v8 = OUTLINED_FUNCTION_16_6(v7, "SearchToolLLMQUModelAppEntityTypeMail");
  v5(v8);
  v9 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v10 = OUTLINED_FUNCTION_0_0(v9, "SearchToolLLMQUModelAppEntityTypeCalendarEvent");
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v12 = OUTLINED_FUNCTION_0_0(v11, "SearchToolLLMQUModelAppEntityTypePhoto");
  v5(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v14 = OUTLINED_FUNCTION_18_1(v13, "SearchToolLLMQUModelAppEntityTypePhotoAlbum");
  v5(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v16 = OUTLINED_FUNCTION_0_0(v15, "SearchToolLLMQUModelAppEntityTypeMemory");
  v5(v16);
  v17 = OUTLINED_FUNCTION_14_4(6);
  v18 = OUTLINED_FUNCTION_16_6(v17, "SearchToolLLMQUModelAppEntityTypeNote");
  v5(v18);
  OUTLINED_FUNCTION_120();
  v20 = OUTLINED_FUNCTION_45_2(v19);
  *v21 = 7;
  v22 = OUTLINED_FUNCTION_18_1(v20, "SearchToolLLMQUModelAppEntityTypeNoteFolder");
  v5(v22);
  v23 = OUTLINED_FUNCTION_39_3(&v0[v3]);
  v24 = OUTLINED_FUNCTION_225_0(v23);
  v25 = OUTLINED_FUNCTION_1_3(v24);
  v5(v25);
  v26 = OUTLINED_FUNCTION_45_2(9 * v3);
  *v27 = 9;
  v28 = OUTLINED_FUNCTION_18_1(v26, "SearchToolLLMQUModelAppEntityTypeConversation");
  v5(v28);
  v29 = OUTLINED_FUNCTION_14_4(10);
  v30 = OUTLINED_FUNCTION_0_0(v29, "SearchToolLLMQUModelAppEntityTypeReminder");
  v5(v30);
  v31 = OUTLINED_FUNCTION_14_4(11);
  v32 = OUTLINED_FUNCTION_18_1(v31, "SearchToolLLMQUModelAppEntityTypeReminderList");
  v5(v32);
  v33 = OUTLINED_FUNCTION_14_4(12);
  *v33 = "SearchToolLLMQUModelAppEntityTypeDocumentsFile";
  *(v33 + 1) = 46;
  v34 = OUTLINED_FUNCTION_1_3(v33);
  v5(v34);
  v35 = OUTLINED_FUNCTION_14_4(13);
  v36 = OUTLINED_FUNCTION_18_1(v35, "SearchToolLLMQUModelAppEntityTypeKeynote");
  v5(v36);
  v37 = OUTLINED_FUNCTION_14_4(14);
  v38 = OUTLINED_FUNCTION_0_0(v37, "SearchToolLLMQUModelAppEntityTypePagesFile");
  v5(v38);
  OUTLINED_FUNCTION_45_2(15 * v3);
  OUTLINED_FUNCTION_180_0(v39);
  v41 = OUTLINED_FUNCTION_0_0(v40, "SearchToolLLMQUModelAppEntityTypeNumbersFile");
  v5(v41);
  v42 = OUTLINED_FUNCTION_3_1(&v0[2 * v3]);
  *v43 = 16;
  v44 = OUTLINED_FUNCTION_18_1(v42, "SearchToolLLMQUModelAppEntityTypeContact");
  v5(v44);
  v45 = OUTLINED_FUNCTION_45_2(17 * v3);
  *v46 = 17;
  *v45 = "SearchToolLLMQUModelAppEntityTypeVideo";
  v45[1] = 38;
  v47 = OUTLINED_FUNCTION_1_3(v45);
  v5(v47);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1935BB678()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAA18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v66 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v66, xmmword_193952730);
  *v1 = 0;
  *v0 = "SearchToolLLMQUModelAppEntityStatusUnknown";
  *(v0 + 8) = 42;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "SearchToolLLMQUModelAppEntityStatusArchived");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v1 + 2 * v4));
  v11 = OUTLINED_FUNCTION_0_0(v10, "SearchToolLLMQUModelAppEntityStatusBookmarked");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v13 = OUTLINED_FUNCTION_18_1(v12, "SearchToolLLMQUModelAppEntityStatusCreated");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "SearchToolLLMQUModelAppEntityStatusDraft");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v17 = OUTLINED_FUNCTION_0_0(v16, "SearchToolLLMQUModelAppEntityStatusEdited");
  v6(v17);
  v18 = OUTLINED_FUNCTION_14_4(6);
  *v18 = "SearchToolLLMQUModelAppEntityStatusFavorited";
  *(v18 + 1) = 44;
  v19 = OUTLINED_FUNCTION_1_3(v18);
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_45_2(v20);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_18_1(v21, "SearchToolLLMQUModelAppEntityStatusFlagged");
  v6(v23);
  v24 = OUTLINED_FUNCTION_39_3(&v1[v4]);
  v25 = OUTLINED_FUNCTION_16_6(v24, "SearchToolLLMQUModelAppEntityStatusForwarded");
  v6(v25);
  v26 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v27 = 9;
  v28 = OUTLINED_FUNCTION_16_6(v26, "SearchToolLLMQUModelAppEntityStatusJunk");
  v6(v28);
  v29 = OUTLINED_FUNCTION_14_4(10);
  v30 = OUTLINED_FUNCTION_18_1(v29, "SearchToolLLMQUModelAppEntityStatusPrinted");
  v6(v30);
  v31 = OUTLINED_FUNCTION_14_4(11);
  v32 = OUTLINED_FUNCTION_16_6(v31, "SearchToolLLMQUModelAppEntityStatusRead");
  v6(v32);
  v33 = OUTLINED_FUNCTION_14_4(12);
  *v33 = "SearchToolLLMQUModelAppEntityStatusReceived";
  *(v33 + 1) = 43;
  v34 = OUTLINED_FUNCTION_1_3(v33);
  v6(v34);
  v35 = OUTLINED_FUNCTION_14_4(13);
  v36 = OUTLINED_FUNCTION_18_1(v35, "SearchToolLLMQUModelAppEntityStatusReplied");
  v6(v36);
  v37 = OUTLINED_FUNCTION_14_4(14);
  v38 = OUTLINED_FUNCTION_225_0(v37);
  v39 = OUTLINED_FUNCTION_1_3(v38);
  v6(v39);
  OUTLINED_FUNCTION_45_2(15 * v4);
  OUTLINED_FUNCTION_180_0(v40);
  v42 = OUTLINED_FUNCTION_16_6(v41, "SearchToolLLMQUModelAppEntityStatusSent");
  v6(v42);
  v43 = OUTLINED_FUNCTION_3_1(&v1[2 * v4]);
  *v44 = 16;
  v45 = OUTLINED_FUNCTION_16_6(v43, "SearchToolLLMQUModelAppEntityStatusShared");
  v6(v45);
  v46 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v47 = 17;
  *v46 = "SearchToolLLMQUModelAppEntityStatusTagged";
  v46[1] = 41;
  v48 = OUTLINED_FUNCTION_1_3(v46);
  v6(v48);
  v49 = OUTLINED_FUNCTION_14_4(18);
  v50 = OUTLINED_FUNCTION_18_1(v49, "SearchToolLLMQUModelAppEntityStatusDeleted");
  v6(v50);
  v51 = OUTLINED_FUNCTION_14_4(19);
  v52 = OUTLINED_FUNCTION_16_6(v51, "SearchToolLLMQUModelAppEntityStatusUnread");
  v6(v52);
  v53 = OUTLINED_FUNCTION_14_4(20);
  v54 = OUTLINED_FUNCTION_18_1(v53, "SearchToolLLMQUModelAppEntityStatusAccepted");
  v6(v54);
  v55 = OUTLINED_FUNCTION_14_4(21);
  v56 = OUTLINED_FUNCTION_225_0(v55);
  v57 = OUTLINED_FUNCTION_1_3(v56);
  v6(v57);
  v58 = OUTLINED_FUNCTION_14_4(22);
  v59 = OUTLINED_FUNCTION_18_1(v58, "SearchToolLLMQUModelAppEntityStatusDeclined");
  v6(v59);
  v60 = OUTLINED_FUNCTION_14_4(23);
  v61 = OUTLINED_FUNCTION_16_6(v60, "SearchToolLLMQUModelAppEntityStatusHidden");
  v6(v61);
  v62 = OUTLINED_FUNCTION_14_4(24);
  v63 = OUTLINED_FUNCTION_0_0(v62, "SearchToolLLMQUModelAppEntityStatusDue");
  v6(v63);
  v64 = OUTLINED_FUNCTION_14_4(25);
  *v64 = "SearchToolLLMQUModelAppEntityStatusCompleted";
  *(v64 + 1) = 44;
  v65 = OUTLINED_FUNCTION_1_3(v64);
  v6(v65);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1935BBB64()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAAA30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_9_8(v4, xmmword_19394FBC0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SearchToolGlobalSearchFailureReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_16_6(v8, "SearchToolGlobalSearchFailureBanyanError");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "SearchToolGlobalSearchFailureRootError");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  *v12 = "SearchToolGlobalSearchFailureKfedTimeOut";
  *(v12 + 1) = 40;
  v13 = OUTLINED_FUNCTION_1_3(v12);
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BBD14()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAA48);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_43_2(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("SearchToolGlobalSearchRequestTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v10 = OUTLINED_FUNCTION_5_4(v9, "SearchToolGlobalSearchRequestTypeFlightResolution");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_75_14((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "SearchToolGlobalSearchRequestTypeMedia");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  *v13 = "SearchToolGlobalSearchRequestTypeMediaURL";
  *(v13 + 1) = 41;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  *v15 = "SearchToolGlobalSearchRequestTypeLocation";
  *(v15 + 1) = 41;
  v16 = OUTLINED_FUNCTION_41(v15);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  *(OUTLINED_FUNCTION_225_0(v17) + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BBF64()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAAA78);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v4, xmmword_1939526E0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SearchToolGeneralSearchResponseFallbackReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "SearchToolGeneralSearchResponseFallbackReasonGuardRailDetectedHallucination");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "SearchToolGeneralSearchResponseFallbackReasonModelDetectedHallucination");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_16_6(v12, "SearchToolGeneralSearchResponseFallbackReason_ModelServerTimeout");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "SearchToolGeneralSearchResponseFallbackReasonModelServerError");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  *v16 = "SearchToolGeneralSearchResponseFallbackReasonDetectedSafetyIssue";
  *(v16 + 1) = 64;
  v17 = OUTLINED_FUNCTION_1_3(v16);
  v6(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BC164()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAAA90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v4, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SearchToolHallucinationDetectionSourceUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_48(v8, "SearchToolHallucinationDetectionSourceRuleBased");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "SearchToolHallucinationDetectionSourceModel");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BC2E8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAAA8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_43_2(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_102("SearchToolGeneralSearchResponseSourceUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "SearchToolGeneralSearchResponseSourceTool");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  *v11 = "SearchToolGeneralSearchResponseSourceFallback";
  v11[1] = 45;
  v13 = OUTLINED_FUNCTION_56_0(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "SearchToolGeneralSearchResponseSourceOverride";
  *(v14 + 1) = 45;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_25(v16, "SearchToolGeneralSearchResponseSourceClientCache");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  *v18 = "SearchToolGeneralSearchResponseSourceModel";
  *(v18 + 1) = 42;
  v18[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BC4F4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAAC0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBE0);
  *v1 = 0;
  *v0 = "SearchToolHallucinationDetectedRuleUnknown";
  *(v0 + 8) = 42;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_65();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  v8 = OUTLINED_FUNCTION_48(v7, "SearchToolHallucinationDetectedRuleAirFlight");
  v5(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BC65C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAAD8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_43_2(v5, xmmword_193969E40);
  OUTLINED_FUNCTION_102("SearchToolAnswerSynthesisHydrationContentTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v9 = "SearchToolAnswerSynthesisHydrationContentTypeEmail";
  *(v9 + 1) = 50;
  v10 = OUTLINED_FUNCTION_56_0(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  *v11 = "SearchToolAnswerSynthesisHydrationContentTypePhoto";
  v11[1] = 50;
  v13 = OUTLINED_FUNCTION_56_0(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_25(v14, "SearchToolAnswerSynthesisHydrationContentTypeMobileSms");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  *v16 = "SearchToolAnswerSynthesisHydrationContentTypeNote";
  *(v16 + 1) = 49;
  v17 = OUTLINED_FUNCTION_56_0(v16);
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  *v18 = "SearchToolAnswerSynthesisHydrationContentTypeContact";
  *(v18 + 1) = 52;
  v19 = OUTLINED_FUNCTION_56_0(v18);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_54_1(6);
  *v20 = "SearchToolAnswerSynthesisHydrationContentTypeFile";
  *(v20 + 1) = 49;
  v21 = OUTLINED_FUNCTION_56_0(v20);
  (v7)(v21);
  OUTLINED_FUNCTION_120();
  v23 = OUTLINED_FUNCTION_44(v22);
  *v24 = 7;
  v25 = OUTLINED_FUNCTION_25(v23, "SearchToolAnswerSynthesisHydrationContentTypeRentalCarReservation");
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_39_3((v1 + 8 * v4));
  v27 = OUTLINED_FUNCTION_25(v26, "SearchToolAnswerSynthesisHydrationContentTypeHotelReservation");
  (v7)(v27);
  v28 = OUTLINED_FUNCTION_44(9 * v4);
  *v29 = 9;
  v30 = OUTLINED_FUNCTION_25(v28, "SearchToolAnswerSynthesisHydrationContentTypeFlightReservation");
  (v7)(v30);
  v31 = OUTLINED_FUNCTION_54_1(10);
  v32 = OUTLINED_FUNCTION_25(v31, "SearchToolAnswerSynthesisHydrationContentTypeRestaurantReservation");
  (v7)(v32);
  v33 = OUTLINED_FUNCTION_54_1(11);
  *v33 = "SearchToolAnswerSynthesisHydrationContentTypeTrip";
  *(v33 + 1) = 49;
  v34 = OUTLINED_FUNCTION_56_0(v33);
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_54_1(12);
  v36 = OUTLINED_FUNCTION_25(v35, "SearchToolAnswerSynthesisHydrationContentTypeTicketShow");
  (v7)(v36);
  v37 = OUTLINED_FUNCTION_54_1(13);
  *v37 = "SearchToolAnswerSynthesisHydrationContentTypeTicketTransportation";
  *(v37 + 1) = 65;
  v38 = OUTLINED_FUNCTION_56_0(v37);
  (v7)(v38);
  v39 = OUTLINED_FUNCTION_54_1(14);
  v40 = OUTLINED_FUNCTION_25(v39, "SearchToolAnswerSynthesisHydrationContentTypeAppointment");
  (v7)(v40);
  OUTLINED_FUNCTION_44(15 * v4);
  OUTLINED_FUNCTION_180_0(v41);
  *v42 = "SearchToolAnswerSynthesisHydrationContentTypeParty";
  v42[1] = 50;
  v43 = OUTLINED_FUNCTION_56_0(v42);
  (v7)(v43);
  v44 = OUTLINED_FUNCTION_3_1(v1 + 16 * v4);
  *v45 = 16;
  *v44 = "SearchToolAnswerSynthesisHydrationContentTypeCalendar";
  *(v44 + 8) = 53;
  *(v44 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

IntelligencePlatformLibrary::IntelligenceFlowSearchToolTelemetry::SearchToolGeneralSearchStarted sub_1935BCA4C@<W0>(void *a1@<X8>)
{
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted.init()();
  *a1 = v1;
  return result;
}

void sub_1935BCA8C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAAF0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BCBDC()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v52 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = &unk_193969E60;
  v12 = OUTLINED_FUNCTION_55();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_47(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15_8();
  v40 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v39 = xmmword_193969E50;
  v41 = &v39 - v18;
  v42 = v10;
  v43 = v4;
  v44 = v0;
  v45 = v6;
  while (1)
  {
    v20 = sub_19393C0E0();
    if (v1 || (v21 & 1) != 0)
    {
      break;
    }

    switch(v20)
    {
      case 3:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = v39;
        v51 = 0;
        sub_193498018();
        v32 = OUTLINED_FUNCTION_217();
        if (v50 == 2)
        {
          IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailed.init()(&v46, v32);
          OUTLINED_FUNCTION_132_6();
        }

        else
        {
          OUTLINED_FUNCTION_117_10();
        }

        OUTLINED_FUNCTION_129_6();
        v36 = swift_allocObject();
        OUTLINED_FUNCTION_128_7(v36);
        v2 = v44;
        *v44 = v37;
        v11 = &unk_193969E60;
        v19 = v41;
        break;
      case 2:
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v52);
        OUTLINED_FUNCTION_286();
        sub_193498018();
        v25 = v42;
        OUTLINED_FUNCTION_217();
        v26 = v40;
        sub_193448850();
        if (__swift_getEnumTagSinglePayload(v26, 1, v52) == 1)
        {
          IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.init()(v25);
          v27 = OUTLINED_FUNCTION_234();
          sub_19344E6DC(v27, v28, v11);
          if (__swift_getEnumTagSinglePayload(v26, 1, v52) != 1)
          {
            OUTLINED_FUNCTION_98();
            sub_19344E6DC(v29, v30, v31);
          }
        }

        else
        {
          v33 = OUTLINED_FUNCTION_234();
          sub_19344E6DC(v33, v34, v11);
          OUTLINED_FUNCTION_108_9();
          OUTLINED_FUNCTION_286();
          sub_1935C5678();
        }

        v35 = swift_allocBox();
        OUTLINED_FUNCTION_108_9();
        sub_1935C5678();
        v11 = &unk_193969E60;
        v2 = v44;
        *v44 = v35 | 0x4000000000000000;
        v19 = v41;
        break;
      case 1:
        LOWORD(v47) = 3;
        sub_193498018();
        v22 = v11;
        OUTLINED_FUNCTION_217();
        v23 = v47;
        if (v47 == 3)
        {
          IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted.init()();
          v23 = v46;
          LOBYTE(v24) = BYTE1(v46);
        }

        else
        {
          v24 = BYTE1(v47);
        }

        v38 = swift_allocObject();
        *(v38 + 16) = v23;
        *(v38 + 17) = v24;
        *v2 = v38;
        v11 = v22;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BCF7C()
{
  v1 = OUTLINED_FUNCTION_145_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_228_1();
  if (v4)
  {
    if (v4 == 1)
    {
      swift_projectBox();
      sub_1935B8750();
      OUTLINED_FUNCTION_123_9();
      sub_193447600();
      sub_1935C56D4(v0, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded);
      return;
    }

    OUTLINED_FUNCTION_99_12(v3);
  }

  OUTLINED_FUNCTION_231_1();
}

IntelligencePlatformLibrary::IntelligenceFlowSearchToolTelemetry::SearchToolLLMQURequestStarted sub_1935BD110@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_1935BD14C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAB08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BD29C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_370();
  v2 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v24[3] = v5 - v4;
  v6 = &qword_193969E68;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E5A0, &qword_193969E68);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_8();
  v26 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v25 = xmmword_193969E50;
  v34 = v24 - v11;
  v27 = v1;
  v24[0] = v2;
  while (1)
  {
    OUTLINED_FUNCTION_234();
    v13 = sub_19393C0E0();
    if (v0 || (v14 & 1) != 0)
    {
      break;
    }

    switch(v13)
    {
      case 3:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = v25;
        v33 = 0;
        sub_193498018();

        if (v32 == 2)
        {
          IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestFailed.init()(&v28, v20);
          OUTLINED_FUNCTION_132_6();
        }

        else
        {
          OUTLINED_FUNCTION_117_10();
        }

        OUTLINED_FUNCTION_129_6();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_128_7(v22);
        v1 = v27;
        *v27 = v23;
        v2 = v24[0];
        v6 = &qword_193969E68;
        goto LABEL_19;
      case 2:
        __swift_storeEnumTagSinglePayload(v12, 1, 1, v2);
        sub_193498018();

        v18 = v12;
        v19 = v26;
        sub_193448850();
        if (__swift_getEnumTagSinglePayload(v19, 1, v2) == 1)
        {
          IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.init()();
          sub_19344E6DC(v18, &qword_1EAE3E5A0, v6);
          v1 = v27;
          if (__swift_getEnumTagSinglePayload(v19, 1, v2) != 1)
          {
            sub_19344E6DC(v26, &qword_1EAE3E5A0, v6);
          }
        }

        else
        {
          sub_19344E6DC(v18, &qword_1EAE3E5A0, v6);
          OUTLINED_FUNCTION_101_12();
          sub_1935C5678();
        }

        v21 = swift_allocBox();
        OUTLINED_FUNCTION_101_12();
        sub_1935C5678();
        v6 = &qword_193969E68;
        *v1 = v21 | 0x4000000000000000;
LABEL_19:
        v12 = v34;
        break;
      case 1:
        LOBYTE(v29) = 3;
        sub_193498018();
        v15 = v6;

        v16 = v29;
        if (v29 == 3)
        {
          IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted.init()();
          v16 = v28;
        }

        OUTLINED_FUNCTION_111_7();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *v1 = v17;
        v6 = v15;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BD634()
{
  v1 = OUTLINED_FUNCTION_145_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_228_1();
  if (v4)
  {
    if (v4 == 1)
    {
      swift_projectBox();
      sub_1935B8750();
      OUTLINED_FUNCTION_123_9();
      sub_193447600();
      sub_1935C56D4(v0, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded);
      return;
    }

    OUTLINED_FUNCTION_99_12(v3);
  }

  OUTLINED_FUNCTION_231_1();
}

IntelligencePlatformLibrary::IntelligenceFlowSearchToolTelemetry::SearchToolSpotlightRequestStarted sub_1935BD7C8@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_1935BD804()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAB20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BDAFC()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v8)
    {
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded, v4, &off_1F07D1768, v5, v6, *(v7 + 16));
    }

    else
    {
      OUTLINED_FUNCTION_36_16();
      OUTLINED_FUNCTION_135_1(v15, v16, v17, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestFailed, v18, &off_1F07D1798, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_134(v9, v10, v11, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted, v12, &off_1F07D1738, v13, v14, v21);
  }

  sub_193447600();
}

IntelligencePlatformLibrary::IntelligenceFlowSearchToolTelemetry::SearchToolAnswerSynthesisRequestStarted sub_1935BDBF4@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_1935BDC30()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAB38);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BDF28()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v8)
    {
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestEnded, v4, &off_1F07D18E8, v5, v6, *(v7 + 16));
    }

    else
    {
      OUTLINED_FUNCTION_36_16();
      OUTLINED_FUNCTION_135_1(v15, v16, v17, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestFailed, v18, &off_1F07D1918, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_134(v9, v10, v11, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted, v12, &off_1F07D18B8, v13, v14, v21);
  }

  sub_193447600();
}

IntelligencePlatformLibrary::IntelligenceFlowSearchToolTelemetry::SearchToolGlobalSearchRequestStarted sub_1935BE020@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_1935BE05C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAB50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BE354()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v8)
    {
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestEnded, v4, &off_1F07D1A38, v5, v6, *(v7 + 16));
    }

    else
    {
      OUTLINED_FUNCTION_36_16();
      OUTLINED_FUNCTION_135_1(v15, v16, v17, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestFailed, v18, &off_1F07D1A68, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_134(v9, v10, v11, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted, v12, &off_1F07D1A08, v13, v14, v21);
  }

  sub_193447600();
}

void sub_1935BE44C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAB68);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("linkId");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_0_0(v5, "eventType");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_0_0(v7, "llmQUAppEntityType");
  v3(v8);
  v9 = OUTLINED_FUNCTION_14_6();
  v10 = OUTLINED_FUNCTION_0_0(v9, "llmQUAppEntityStatus");
  v3(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BE5C0()
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
        sub_193498018();
        continue;
      case 2:
        v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
        OUTLINED_FUNCTION_160(*(v5 + 20));
        goto LABEL_9;
      case 3:
        v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
        OUTLINED_FUNCTION_160(*(v3 + 24));
        goto LABEL_9;
      case 4:
        v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
        OUTLINED_FUNCTION_160(*(v4 + 28));
        OUTLINED_FUNCTION_223_1();
LABEL_9:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935BE6E0()
{
  OUTLINED_FUNCTION_47_6();
  sub_1935BFB34();
  if (!v0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
    OUTLINED_FUNCTION_83_12();
    if ((*(v3 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_182_0(v4, v5, v6, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType, v7, &off_1F07D1108, v8, v9, v35);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v10, v11, v12, v13, v14, v15);
    }

    OUTLINED_FUNCTION_140_5();
    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_135_1(v17, v18, v19, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType, v20, &off_1F07D1158, v21, v22, v35);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v23, v24, v25, v26, v27, v28);
    }

    if ((*(v1 + *(v2 + 28) + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v29, v30, v31, v32, v33, v34);
    }
  }
}

IntelligencePlatformLibrary::IntelligenceFlowSearchToolTelemetry::SearchToolDisambiguationStarted sub_1935BE834@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_1935BE870()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAB80);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t objectdestroy_2Tm_0()
{
  if (*(v0 + 40) != 1)
  {
  }

  OUTLINED_FUNCTION_129_6();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1935BEC4C()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v8)
    {
      LOWORD(v21) = *(v7 + 16);
      BYTE2(v21) = *(v7 + 18);
      HIDWORD(v21) = *(v7 + 20);
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded, v4, &off_1F07D1498, v5, v6, v21);
    }

    else
    {
      OUTLINED_FUNCTION_36_16();
      OUTLINED_FUNCTION_135_1(v15, v16, v17, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationFailed, v18, &off_1F07D14C8, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_134(v9, v10, v11, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationStarted, v12, &off_1F07D1468, v13, v14, v21);
  }

  sub_193447600();
}

void sub_1935BED64()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAB98);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_0_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_0_0(v7, "failed");
  v3(v8);
  v9 = OUTLINED_FUNCTION_14_6();
  v10 = OUTLINED_FUNCTION_0_0(v9, "contextId");
  v3(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BEED8()
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
        v23 = 0;
        LOWORD(v24) = 0;
        BYTE2(v24) = 1;
        sub_193498018();
        if ((v24 & 0x10000) != 0)
        {
          v4 = &v16;
          IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.init()(&v16);
          v5 = v18;
          LOBYTE(v6) = BYTE1(v18);
        }

        else
        {
          v5 = v24;
          v6 = BYTE1(v24) & 1;
          v4 = &v23;
        }

        *v1 = *v4;
        *(v1 + 8) = v5;
        *(v1 + 9) = v6;
        break;
      case 2:
        v23 = 0;
        v24 = 0;
        sub_193498018();
        v11 = v24;
        if (v24)
        {
          v12 = v23;
          v13 = HIDWORD(v23) & 1;
        }

        else
        {
          IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.init()(&v16);
          v12 = v16;
          LOBYTE(v13) = v17;
          v11 = v18;
        }

        *(v1 + 16) = v12;
        *(v1 + 20) = v13;
        *(v1 + 24) = v11;
        break;
      case 3:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = xmmword_193969E50;
        v27 = 0;
        sub_193498018();
        v7 = v26;
        if (v26 == 2)
        {
          v8 = &v16;
          IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.init()(&v16);
          v9 = v18;
          v10 = v19;
          v7 = v20;
          v15 = v21;
          v28 = v22;
        }

        else
        {
          v28 = v27;
          v15 = *(&v26 + 1);
          v10 = v25;
          v8 = &v23;
          v9 = v24;
        }

        v14 = *v8;
        sub_193456418(*(v1 + 48), *(v1 + 56));
        *(v1 + 32) = v14;
        *(v1 + 40) = v9 & 1;
        *(v1 + 48) = v10;
        *(v1 + 56) = v7;
        *(v1 + 64) = v15;
        *(v1 + 72) = v28;
        break;
      case 4:
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0);
        type metadata accessor for AIML.UUID(0);
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1935BF184()
{
  OUTLINED_FUNCTION_146_5();
  v5 = v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v40 = *v1;
  v41 = v7;
  v42 = v8;
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.init()(&v38);
  v9 = sub_1935C5624();
  if ((OUTLINED_FUNCTION_216_0(v9, v10, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted, v9, v11, v12, v13) & 1) == 0)
  {
    v40 = v6;
    v41 = v7;
    v42 = v8;
    OUTLINED_FUNCTION_232_2();
    v0 = v2;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_233_0();
    IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.init()(&v38);
    v14 = sub_1935C55D0();
    v19 = OUTLINED_FUNCTION_216_0(v14, v15, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded, v14, v16, v17, v18);

    if ((v19 & 1) != 0 || (OUTLINED_FUNCTION_233_0(), OUTLINED_FUNCTION_232_2(), v0 = v2, , !v2))
    {
      v47 = v5;
      v20 = *(v3 + 40);
      v21 = *(v3 + 48);
      v22 = *(v3 + 56);
      v23 = *(v3 + 64);
      v24 = *(v3 + 72);
      v36 = *(v3 + 32);
      v40 = v36;
      v35 = v20;
      v41 = v20;
      v43 = v21;
      v44 = v22;
      v45 = v23;
      v46 = v24;
      v25 = OUTLINED_FUNCTION_286();
      sub_19350CB08(v25, v26);
      IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.init()(&v38);
      v37 = v39;
      v27 = sub_1935C557C();
      v32 = OUTLINED_FUNCTION_216_0(v27, v28, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed, v27, v29, v30, v31);
      sub_193456418(v37, *(&v37 + 1));
      sub_193456418(v43, v44);
      if ((v32 & 1) != 0 || (v40 = v36, v41 = v35, v43 = v21, v44 = v22, v45 = v23, v46 = v24, v33 = OUTLINED_FUNCTION_286(), sub_19350CB08(v33, v34), sub_193447600(), sub_193456418(v43, v44), !v0))
      {
        OUTLINED_FUNCTION_130();
        sub_1935BF42C();
      }
    }
  }
}

void sub_1935BF42C()
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
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_107_9();
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 4);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BF5D4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAABC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("disambiguationDetected");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "isQuestionQuery");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_16_6(v10, "isOpenQuery");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_16_6(v12, "noOfResults");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  *v14 = "isContentSearch";
  *(v14 + 1) = 15;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935BF76C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      default:
        continue;
    }
  }
}

void sub_1935BF80C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_96_3();
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[8];
  v5 = v0[9];
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C2E0();
  }

  if (!v1)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C2E0();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C2E0();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C3D0();
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C2E0();
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935BF940()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAABE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "searchToolFailureError");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BFB34()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  sub_193448850();
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v9, 1);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935BFC9C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAC10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("exists");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "preWarmed");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935BFDC8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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

void sub_1935BFE74()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAC28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_83_0("result");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_75_14((v0 + v4));
  *v9 = "responseSource";
  *(v9 + 1) = 14;
  v10 = OUTLINED_FUNCTION_41(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_13_12();
  *v11 = "fallbackReason";
  *(v11 + 1) = 14;
  v12 = OUTLINED_FUNCTION_41(v11);
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_14_6();
  *v13 = "linkId";
  *(v13 + 1) = 6;
  v13[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935BFFF8()
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
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
        v3 = OUTLINED_FUNCTION_86();
        sub_193498238(v3, v4, v5, v6, &off_1F07D1618);
        break;
      case 2:
      case 3:
        sub_1934982A8();
        break;
      case 4:
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(0);
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_111();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935C010C()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  if (*(*v2 + 16))
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
    OUTLINED_FUNCTION_78_1();
    v3 = sub_193451CFC(v9, v10, v11, v12, v13, v14);
    v0 = v1;
  }

  if (!v0)
  {
    if ((*(v2 + 17) & 1) != 0 || (OUTLINED_FUNCTION_182_0(v3, v4, v5, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource, v6, &off_1F07D1270, v7, v8, *(v2 + 8)), OUTLINED_FUNCTION_78_1(), v3 = sub_193447324(v15, v16, v17, v18, v19, v20), !v1))
    {
      if ((*(v2 + 33) & 1) != 0 || (OUTLINED_FUNCTION_135_1(v3, v4, v5, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason, v6, &off_1F07D1220, v7, v8, *(v2 + 24)), OUTLINED_FUNCTION_78_1(), sub_193447324(v21, v22, v23, v24, v25, v26), !v1))
      {
        OUTLINED_FUNCTION_11_1();
        sub_1935C0214();
      }
    }
  }
}

void sub_1935C0214()
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
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_107_9();
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 4);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935C0374()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAC40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_38_14("linkId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "catId");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "staticDialogId");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C04C0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3 || v1 == 2)
    {
      type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_86();
      sub_193498018();
    }
  }
}

void sub_1935C0570()
{
  OUTLINED_FUNCTION_47_6();
  sub_1935BFB34();
  if (!v0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);
    OUTLINED_FUNCTION_83_12();
    v4 = v3[1];
    if (v4)
    {
      OUTLINED_FUNCTION_2_7(*v3, v4, 2);
    }

    v5 = (v1 + *(v2 + 24));
    v6 = v5[1];
    if (v6)
    {
      OUTLINED_FUNCTION_2_7(*v5, v6, 3);
    }
  }
}

void sub_1935C0660()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAC58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "searchToolFailureError");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C0810()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAC70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("domain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "code");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935C093C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1935C09A4()
{
  OUTLINED_FUNCTION_96_3();
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  if (v3)
  {
    OUTLINED_FUNCTION_215_1(v2, v3);
  }

  if (!v1 && (v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C360();
  }
}

void sub_1935C0A60()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAC88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("SearchToolGeneralSearchResultID");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "bundleId");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "resultType");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C0BB0()
{
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
        v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
        OUTLINED_FUNCTION_160(*(v3 + 24));
        OUTLINED_FUNCTION_223_1();
        sub_1934982A8();
        break;
      case 2:
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_86();
        sub_193498018();
        break;
    }
  }
}

void sub_1935C0C8C()
{
  OUTLINED_FUNCTION_47_6();
  sub_1935BFB34();
  if (!v0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
    OUTLINED_FUNCTION_83_12();
    v2 = v1[1];
    if (v2)
    {
      OUTLINED_FUNCTION_2_7(*v1, v2, 2);
    }

    OUTLINED_FUNCTION_140_5();
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_135_1(v4, v5, v6, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType, v7, &off_1F07D10B8, v8, v9, v16);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v10, v11, v12, v13, v14, v15);
    }
  }
}

void sub_1935C0DF0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAACB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("modelNumber");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "requestLength");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_16_6(v10, "responseLength");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_16_6(v12, "queryArguments");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "llmquPerfMetrics");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C0F84()
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
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_113();
        sub_19393C220();
        break;
      case 4:
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
        goto LABEL_8;
      case 5:
        v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
        OUTLINED_FUNCTION_160(*(v3 + 32));
        OUTLINED_FUNCTION_223_1();
LABEL_8:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935C1088()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  v3 = *(v2 + 8);
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v2, v3, 1);
    v0 = v1;
  }

  if (!v0)
  {
    if ((*(v2 + 20) & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C3D0();
    }

    if ((*(v2 + 28) & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C3D0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_1935C11F4();
    if ((*(v2 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0) + 32) + 37) & 1) == 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_1935C11F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v8);
  OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3DFD8, &qword_193969380);
  }

  else
  {
    sub_1935C5678();
    OUTLINED_FUNCTION_12_12(v1, 4);
    OUTLINED_FUNCTION_95_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935C1364()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAACD0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("llmQUOverallTime");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "llmQUpromptGenerationTime");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "llmQUPreWarmModelTime");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_0_0(v12, "llmQUInferenceTime");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "llmQUpostProcessFilterTime");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935C14FC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      default:
        continue;
    }
  }
}

void sub_1935C1590()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[12];
  v3 = v0[20];
  v4 = v0[28];
  v5 = v0[36];
  if ((v0[4] & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C3D0();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }
  }
}

void sub_1935C16FC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAACE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "searchToolFailureError");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C18AC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAD00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_38_14("linkId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "questionNeedsAnswer");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "sortOrder");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C19F8()
{
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
        v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
        OUTLINED_FUNCTION_160(*(v3 + 24));
        OUTLINED_FUNCTION_223_1();
        sub_1934982A8();
        break;
      case 2:
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_86();
        sub_193498018();
        break;
    }
  }
}

void sub_1935C1AD4()
{
  OUTLINED_FUNCTION_47_6();
  sub_1935BFB34();
  if (!v0)
  {
    if (*(v1 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0) + 20)) != 2)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_140_5();
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_135_1(v3, v4, v5, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder, v6, &off_1F07D1130, v7, v8, v15);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v9, v10, v11, v12, v13, v14);
    }
  }
}

uint64_t sub_1935C1C44()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_1935C1CF8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAD48);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "searchToolFailureError");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C1EA8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAD60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v42 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_27_2(v42, xmmword_193952690);
  *v1 = 1;
  *v0 = "retrievalType";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_75_14((v1 + v4));
  v9 = OUTLINED_FUNCTION_5_4(v8, "bundleId");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v10 = "likelihood";
  *(v10 + 1) = 10;
  v11 = OUTLINED_FUNCTION_41(v10);
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_13((v1 + 3 * v4));
  *v12 = "topicality";
  *(v12 + 1) = 10;
  v13 = OUTLINED_FUNCTION_41(v12);
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_19_2((v1 + 4 * v4));
  *v14 = "pommesL1Score";
  *(v14 + 1) = 13;
  v15 = OUTLINED_FUNCTION_41(v14);
  (v6)(v15);
  v16 = OUTLINED_FUNCTION_44(5 * v4);
  *v17 = 6;
  v18 = OUTLINED_FUNCTION_5_4(v16, "pommesAdjustedL1Score");
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_30_0((v1 + 6 * v4));
  v20 = OUTLINED_FUNCTION_5_4(v19, "pommesCalibratedL1Score");
  (v6)(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_44(v21);
  *v23 = 8;
  v24 = OUTLINED_FUNCTION_5_4(v22, "embeddingSimilarity");
  (v6)(v24);
  v25 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v26 = 9;
  v27 = OUTLINED_FUNCTION_5_4(v25, "keywordMatchScore");
  (v6)(v27);
  v28 = OUTLINED_FUNCTION_44(9 * v4);
  *v29 = 10;
  *v28 = "freshness";
  v28[1] = 9;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v6)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v32 = 11;
  v33 = OUTLINED_FUNCTION_5_4(v31, "queryAttributes");
  (v6)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v35 = 12;
  v36 = OUTLINED_FUNCTION_5_4(v34, "quTokenParseInfo");
  (v6)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 12 * v4);
  *v38 = 13;
  v39 = OUTLINED_FUNCTION_5_4(v37, "documentAttributes");
  (v6)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 13 * v4);
  *v41 = 14;
  OUTLINED_FUNCTION_33_8(v40, "topicalityAttributes");
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1935C21F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      case 11:
      case 12:
      case 13:
        goto LABEL_8;
      case 14:
        OUTLINED_FUNCTION_93_8();
LABEL_8:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935C237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 9);
  v8 = *(v5 + 24);
  v9 = *(v5 + 36);
  v10 = *(v5 + 44);
  v11 = *(v5 + 52);
  v18 = *(v5 + 68);
  v19 = *(v5 + 60);
  v16 = *(v5 + 84);
  v17 = *(v5 + 76);
  v15 = *(v5 + 92);
  v23 = *(v5 + 96);
  v14 = *(v5 + 109);
  v13 = *(v5 + 112);
  v21 = *(v5 + 120);
  v20 = *(v5 + 224);
  if ((v7 & 1) == 0)
  {
    __dst[0] = *v5;
    LOBYTE(__dst[1]) = *(v5 + 8);
    sub_193447324(__dst, 1, a2, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType, a3, &off_1F07D10E0);
  }

  if (!v6)
  {
    if (v8)
    {
      sub_19393C3C0();
    }

    if ((v9 & 1) == 0)
    {
      sub_19393C340();
    }

    v12 = v23;
    if ((v10 & 1) == 0)
    {
      sub_19393C340();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_113_8(5);
    }

    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_113_8(6);
    }

    if ((v18 & 1) == 0)
    {
      OUTLINED_FUNCTION_113_8(7);
    }

    if ((v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_113_8(8);
    }

    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_113_8(9);
    }

    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_113_8(10);
    }

    if (v12)
    {
      __dst[0] = v12;
      OUTLINED_FUNCTION_218_1();
    }

    if ((v14 & 1) == 0)
    {
      LODWORD(__dst[0]) = *(v5 + 104);
      BYTE4(__dst[0]) = *(v5 + 108);
      OUTLINED_FUNCTION_218_1();
    }

    if (v21 != 1)
    {
      LODWORD(__dst[2]) = *(v5 + 128);
      BYTE4(__dst[2]) = *(v5 + 132);
      __dst[0] = v13;
      __dst[1] = v21;
      OUTLINED_FUNCTION_218_1();
    }

    if (v20 != 1)
    {
      memcpy(__dst, (v5 + 136), 0x58uLL);
      __dst[11] = v20;
      sub_193447600();
    }
  }
}

uint64_t sub_1935C2760()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_1935C2830()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C220();
    }
  }

  return result;
}

void sub_1935C287C()
{
  if ((*(v0 + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_77_9();
    sub_19393C3D0();
  }
}

void sub_1935C291C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAADA8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_27_2(v4, xmmword_1939526F0);
  *v0 = 1;
  OUTLINED_FUNCTION_83_0("countAttributeQPQUMatch");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_75_14((v0 + v3));
  v9 = OUTLINED_FUNCTION_5_4(v8, "countAttributeQPQUprefixMatch");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_5_4(v10, "countAttributeUnigramMatch");
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_5_4(v12, "countAttributeBigramMatch");
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_5_4(v14, "countAttributeNgramMatch");
  (v6)(v15);
  v16 = OUTLINED_FUNCTION_44(5 * v3);
  *v17 = 6;
  v18 = OUTLINED_FUNCTION_5_4(v16, "countAttributeUnigramPrefixMatch");
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_30_0((v0 + 6 * v3));
  *v19 = "countAttributeBigramPrefixMatch";
  *(v19 + 1) = 31;
  v20 = OUTLINED_FUNCTION_41(v19);
  (v6)(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_44(v21);
  *v23 = 8;
  v24 = OUTLINED_FUNCTION_5_4(v22, "countAttributeNgramPrefixMatch");
  (v6)(v24);
  v25 = OUTLINED_FUNCTION_55_2(&v0[v3]);
  *v25 = "unCalibratedEmbeddingSimilarity";
  *(v25 + 1) = 31;
  v26 = OUTLINED_FUNCTION_41(v25);
  (v6)(v26);
  v27 = OUTLINED_FUNCTION_44(9 * v3);
  *v28 = 10;
  *v27 = "calibratedEmbeddingSimilarity";
  v27[1] = 29;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v0 + 10 * v3);
  *v31 = 11;
  OUTLINED_FUNCTION_33_8(v30, "embeddingModelId");
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935C2BD4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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
      case 5:
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 9:
      case 10:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      case 11:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935C2CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  result = *(v4 + 8);
  v8 = *(v4 + 12);
  v9 = *(v4 + 16);
  v10 = *(v4 + 20);
  v24 = *(v4 + 24);
  v26 = *(v4 + 28);
  v25 = *(v4 + 36);
  v20 = *(v4 + 40);
  v22 = *(v4 + 32);
  v23 = *(v4 + 44);
  v21 = *(v4 + 52);
  v17 = *(v4 + 56);
  v18 = *(v4 + 48);
  v19 = *(v4 + 60);
  v11 = *(v4 + 68);
  v12 = *(v4 + 76);
  v13 = *(v4 + 88);
  if ((*(v4 + 4) & 1) == 0)
  {
    v16 = *(v4 + 8);
    sub_19393C3D0();
    v6 = a3;
    result = v16;
  }

  if (!v5)
  {
    if ((v8 & 1) == 0)
    {
      v15 = v6;
      result = sub_19393C3D0();
      v6 = v15;
    }

    if ((v10 & 1) == 0)
    {
      result = OUTLINED_FUNCTION_124_5(v9, 3, a3, a4, v6);
      v6 = v9;
    }

    if ((v26 & 1) == 0)
    {
      result = OUTLINED_FUNCTION_124_5(v24, 4, a3, a4, v6);
      v6 = v9;
    }

    if ((v25 & 1) == 0)
    {
      result = OUTLINED_FUNCTION_124_5(v22, 5, a3, a4, v6);
      v6 = v9;
    }

    if ((v23 & 1) == 0)
    {
      result = OUTLINED_FUNCTION_124_5(v20, 6, a3, a4, v6);
      v6 = v9;
    }

    if ((v21 & 1) == 0)
    {
      result = OUTLINED_FUNCTION_124_5(v18, 7, a3, a4, v6);
      v6 = v9;
    }

    if ((v19 & 1) == 0)
    {
      result = OUTLINED_FUNCTION_124_5(v17, 8, a3, a4, v6);
    }

    if ((v11 & 1) == 0)
    {
      result = sub_19393C340();
    }

    if ((v12 & 1) == 0)
    {
      result = sub_19393C340();
    }

    if (v13)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

void sub_1935C2F64()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAADC0);
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
  v6 = OUTLINED_FUNCTION_48(v5, "documentChunkCount");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935C3094()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C220();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1935C30FC()
{
  OUTLINED_FUNCTION_96_3();
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  if (v3)
  {
    OUTLINED_FUNCTION_215_1(v2, v3);
  }

  if (!v1 && (v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C3D0();
  }
}

uint64_t sub_1935C3220()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_1935C32D4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAE08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "searchToolFailureError");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C3484()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAE20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("modelNumber");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_16_6(v5, "perfMetrics");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_16_6(v7, "dataMetrics");
  v3(v8);
  v9 = OUTLINED_FUNCTION_14_6();
  v10 = OUTLINED_FUNCTION_0_0(v9, "contentSearchFallback");
  v3(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C35F4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        goto LABEL_8;
      case 3:
LABEL_8:
        sub_193498018();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }
}

void sub_1935C36D4()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v2 + 8);
  v9 = *(v2 + 133);
  v10 = *(v2 + 184);
  v11 = *(v2 + 192);
  if (v8)
  {
    v3 = OUTLINED_FUNCTION_2_7(*v2, v8, 1);
    v0 = v1;
  }

  if (!v0)
  {
    if ((v9 & 1) != 0 || (v12 = memcpy(v19, (v2 + 16), 0x75uLL), OUTLINED_FUNCTION_182_0(v12, v13, v14, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics, v15, &off_1F07D1978, v16, v17, *&v19[0]), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v1))
    {
      if (!v10 || (v18 = *(v2 + 152), v19[0] = *(v2 + 136), v19[1] = v18, v19[2] = *(v2 + 168), *&v19[3] = v10, OUTLINED_FUNCTION_135_1(v3, v8, v4, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics, v5, &off_1F07D19A8, v6, v7, *&v19[0]), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v1))
      {
        if (v11 != 2)
        {
          OUTLINED_FUNCTION_130();
          sub_19393C2E0();
        }
      }
    }
  }
}

void sub_1935C3844()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAAE38);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v45, xmmword_193952670);
  *v0 = "answerSynthesisOverallTime";
  *(v0 + 8) = 26;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "promptGenerationTime");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "dataFilteringTime");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_18_1(v12, "searchEntityPreProcessTime");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v1 + 4 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "llmPreWarmModelTime");
  v6(v15);
  v16 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v17 = 6;
  v18 = OUTLINED_FUNCTION_0_0(v16, "llmInferenceTime");
  v6(v18);
  v19 = OUTLINED_FUNCTION_30_0((v1 + 6 * v4));
  v20 = OUTLINED_FUNCTION_0_0(v19, "postProcessFilterTime");
  v6(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_45_2(v21);
  *v23 = 8;
  v24 = OUTLINED_FUNCTION_0_0(v22, "collateAnswerSynthesisResultTime");
  v6(v24);
  v25 = OUTLINED_FUNCTION_55_2((v1 + 8 * v4));
  v26 = OUTLINED_FUNCTION_16_6(v25, "answerSynthesisTotalHydrationTime");
  v6(v26);
  v27 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v28 = 10;
  v29 = OUTLINED_FUNCTION_0_0(v27, "answerSynthesisModelPromptGenerationTime");
  v6(v29);
  v30 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v31 = 11;
  v32 = OUTLINED_FUNCTION_16_6(v30, "answerSynthesisModelInferenceTime");
  v6(v32);
  v33 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v34 = 12;
  v35 = OUTLINED_FUNCTION_0_0(v33, "pqaModelPromptGenerationTime");
  v6(v35);
  v36 = OUTLINED_FUNCTION_3_1(v1 + 12 * v4);
  *v37 = 13;
  *v36 = "pqaModelInferenceTime";
  v36[1] = 21;
  v38 = OUTLINED_FUNCTION_1_3(v36);
  v6(v38);
  v39 = OUTLINED_FUNCTION_3_1(v1 + 13 * v4);
  *v40 = 14;
  v41 = OUTLINED_FUNCTION_16_6(v39, "answerSynthesisPostProcessingTime");
  v6(v41);
  OUTLINED_FUNCTION_3_1(v1 + 14 * v4);
  OUTLINED_FUNCTION_180_0(v42);
  v44 = OUTLINED_FUNCTION_0_0(v43, "answerSynthesisPCCPromptGenerationTime");
  v6(v44);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935C3B94()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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
      case 5:
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        OUTLINED_FUNCTION_98();
        sub_19393C170();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935C3C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(v3 + 8);
  v6 = *(v3 + 12);
  v7 = *(v3 + 20);
  v8 = *(v3 + 28);
  v21 = *(v3 + 36);
  v20 = *(v3 + 44);
  v19 = *(v3 + 52);
  v18 = *(v3 + 60);
  v17 = *(v3 + 68);
  v16 = *(v3 + 76);
  v15 = *(v3 + 84);
  v14 = *(v3 + 92);
  v13 = *(v3 + 100);
  v12 = *(v3 + 108);
  v9 = *(v3 + 116);
  if ((*(v3 + 4) & 1) == 0)
  {
    v11 = *(v3 + 8);
    v10 = *(v3 + 12);
    sub_19393C3D0();
    v6 = v10;
    result = v11;
  }

  if (!v4)
  {
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C3D0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C3D0();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C3D0();
    }

    if ((v21 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C3D0();
    }

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C3D0();
    }

    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C3D0();
    }

    if ((v18 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C3D0();
    }

    if ((v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C350();
    }

    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C350();
    }

    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C350();
    }

    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C350();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C350();
    }

    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      result = sub_19393C350();
    }

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_93_8();
      return sub_19393C350();
    }
  }

  return result;
}

void sub_1935C3FD8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAAE50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v4, xmmword_193952700);
  OUTLINED_FUNCTION_63("numberOfLLMCalls");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "promptLength");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "responseLength");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_0_0(v12, "numberOfAnswers");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "numberOfQueriesTriggered");
  v6(v15);
  v16 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v17 = 6;
  v18 = OUTLINED_FUNCTION_0_0(v16, "pqaModelPromptLength");
  v6(v18);
  v19 = OUTLINED_FUNCTION_30_0((v0 + 6 * v3));
  v20 = OUTLINED_FUNCTION_0_0(v19, "answerSynthesisHydrationMetrics");
  v6(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935C41D0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C170();
        break;
      case 7:
        OUTLINED_FUNCTION_62();
        sub_193498238(v3, v4, v5, v6, v7);
        break;
      default:
        continue;
    }
  }
}

void sub_1935C42A4()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v1 + 12);
  v3 = *(v1 + 20);
  v4 = *(v1 + 28);
  v12 = *(v1 + 36);
  v11 = *(v1 + 44);
  v13 = *(v1 + 48);
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

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C350();
    }

    if (*(v13 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1935C4460()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAE68);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("asHydrationContentType");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "asHydrationPerContentTypeTime");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C4590()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C170();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_1934982A8();
    }
  }
}

void sub_1935C4614()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *(v0 + 16);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_106();
    sub_193447324(v3, v4, v5, v6, v7, v8);
  }

  if (!v1 && (v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C350();
  }
}

uint64_t sub_1935C4724()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C0F0();
    }
  }

  return result;
}

uint64_t sub_1935C47B8()
{
  OUTLINED_FUNCTION_370();
  while (1)
  {
    OUTLINED_FUNCTION_234();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_144_4();
      sub_193498238(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1935C4814()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_1935C48C8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAEB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "searchToolFailureError");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C49F4()
{
  OUTLINED_FUNCTION_110();
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_134(v2, v3, v4, v5, v6, v6, v7, v8, *v0);
    OUTLINED_FUNCTION_106();
    v2 = sub_193447324(v11, v12, v13, v14, v15, v16);
  }

  if (!v1 && v10 != 1)
  {
    OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError, v6, &off_1F07D15E8, v7, v8, v9);
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }
}

void sub_1935C4B20()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAEC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("SearchToolGlobalSearchResultID");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "requestType");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C4C50()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_1934982A8();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C170();
    }
  }
}

void sub_1935C4CD0()
{
  OUTLINED_FUNCTION_110();
  v8 = *(v0 + 8);
  v9 = *(v0 + 17);
  if ((*(v0 + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    v2 = sub_19393C350();
  }

  if (!v1 && (v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType, v5, &off_1F07D11D0, v6, v7, v8);
    OUTLINED_FUNCTION_106();
    sub_193447324(v10, v11, v12, v13, v14, v15);
  }
}

void sub_1935C4DF0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
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

void sub_1935C4E58()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_77_9();
    sub_193447324(v1, v2, v3, v4, v5, v6);
  }
}

void sub_1935C4F18()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAEF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("hallucinationDetectionLatencyMs");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "hallucinationDetectedRules");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935C5048()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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
      OUTLINED_FUNCTION_84_9();
      sub_19393C170();
    }
  }

  return result;
}

void sub_1935C50C8()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *(v0 + 8);
  if ((*(v0 + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C350();
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

void sub_1935C51A8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAAF10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_38_14("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "searchToolFailureError");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935C52D4()
{
  OUTLINED_FUNCTION_370();
  while (1)
  {
    OUTLINED_FUNCTION_234();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_144_4();
      sub_1934982A8();
    }
  }
}

void sub_1935C5370()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  v3 = v2[2];
  v4 = v2[3];
  LOBYTE(v14) = *(v2 + 8);
  v13 = *v2;
  if (v14)
  {
    if (v0)
    {
      return;
    }
  }

  else
  {
    sub_1935C5520(&v13, v17);
    sub_1935C5520(v17, v12);
    OUTLINED_FUNCTION_78_1();
    sub_193447324(v5, v6, v7, v8, v9, v10);
    if (v1)
    {
      return;
    }
  }

  if (v4 != 1)
  {
    v11 = v2[4];
    v14 = v4;
    v15 = v11;
    v16 = *(v2 + 40);
    v13 = v3;
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }
}

unint64_t sub_1935C557C()
{
  result = qword_1EAE3E5A8;
  if (!qword_1EAE3E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E5A8);
  }

  return result;
}

unint64_t sub_1935C55D0()
{
  result = qword_1EAE3E5B0;
  if (!qword_1EAE3E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E5B0);
  }

  return result;
}

unint64_t sub_1935C5624()
{
  result = qword_1EAE3E5B8;
  if (!qword_1EAE3E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E5B8);
  }

  return result;
}

uint64_t sub_1935C5678()
{
  OUTLINED_FUNCTION_91_0();
  v2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1935C56D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

char *OUTLINED_FUNCTION_75_14@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_110_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return sub_193461DC0(a21, a22, a23, a24);
}

uint64_t OUTLINED_FUNCTION_113_8(uint64_t a1)
{

  return sub_19393C340();
}

uint64_t OUTLINED_FUNCTION_128_7(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 25) = v3;
  *(result + 32) = v1;
  *(result + 40) = v5;
  *(result + 48) = v7;
  *(result + 56) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_137_4(uint64_t result)
{
  *(result + 16) = v1;
  *v2 = result | 0x4000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_215_1(uint64_t a1, uint64_t a2)
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_216_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_19393C550();
}

void OUTLINED_FUNCTION_218_1()
{

  sub_193447600();
}

void *OUTLINED_FUNCTION_225_0(void *result)
{
  *result = v1;
  result[1] = 40;
  return result;
}

uint64_t OUTLINED_FUNCTION_230_1()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 120);
  v5 = *(v0 - 112);

  return sub_193461DC0(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_231_1()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_233_0()
{
}

uint64_t IntelligenceFlowSearchToolTelemetry.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t IntelligenceFlowSearchToolTelemetry.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t IntelligenceFlowSearchToolTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t IntelligenceFlowSearchToolTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t IntelligenceFlowSearchToolTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935C5BC0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowSearchToolTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t IntelligenceFlowSearchToolTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t IntelligenceFlowSearchToolTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935C5D60()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowSearchToolTelemetry.invocation.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 36), &qword_1EAE3DFB0, &qword_193969368);
}

uint64_t IntelligenceFlowSearchToolTelemetry.invocation.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 36), &qword_1EAE3DFB0, &qword_193969368);
}

uint64_t IntelligenceFlowSearchToolTelemetry.invocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 40));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 44));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 48));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 52));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 56));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935C61CC()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolLLMQUQueryArgumentsTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 60), &qword_1EAE3DFB8, &unk_19396A2A0);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolLLMQUQueryArgumentsTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 60), &qword_1EAE3DFB8, &unk_19396A2A0);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolLLMQUQueryArgumentsTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolDisambiguationContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 64));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolDisambiguationContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935C6388()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowSearchToolTelemetry.requestEndedTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 68), &qword_1EAE3DFC0, &qword_193969370);
}

uint64_t IntelligenceFlowSearchToolTelemetry.requestEndedTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 68), &qword_1EAE3DFC0, &qword_193969370);
}

uint64_t IntelligenceFlowSearchToolTelemetry.requestEndedTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935C6498()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolHallucinationDetectionContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 72), &qword_1EAE3DFC8, &unk_19396A2B0);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolHallucinationDetectionContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 72), &qword_1EAE3DFC8, &unk_19396A2B0);
}

uint64_t IntelligenceFlowSearchToolTelemetry.searchToolHallucinationDetectionContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935C65B0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C65D8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6630()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1935C6680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1935C6754()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_1935C67C8(uint64_t a1)
{
  sub_19393CAB0();
  v1 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t sub_1935C6814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1935C6960@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6988@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6A78@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6AA0@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6B90@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6BB8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6CA8@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6CD0@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6DC0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6DE8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6ED8@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6F00@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C6FF0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7018@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7108@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7130@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7220@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7248@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7338@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7360@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7450@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7478@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7568@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7590@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7680@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1935C76A8@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C76FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7724@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7814@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C783C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C792C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7954@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7A44@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7A6C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7B5C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935C7B84@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.allCases.getter();
  *a1 = result;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.eventType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 20));
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.eventType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 20));
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.eventType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.llmQUAppEntityType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.llmQUAppEntityStatus.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 28));
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.llmQUAppEntityStatus.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 28));
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.llmQUAppEntityStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
  v7 = v0 + v6[5];
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = v0 + v6[6];
  *v8 = 0;
  *(v8 + 8) = 256;
  v9 = v0 + v6[7];
  *v9 = 0;
  *(v9 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  v5 = OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_76_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32_1(v9, v30);
  OUTLINED_FUNCTION_88_10();
  v10 = OUTLINED_FUNCTION_31(v0);
  if (!v12)
  {
    OUTLINED_FUNCTION_168_2(v10, v11, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v0 + v1);
    if (!v12)
    {
      OUTLINED_FUNCTION_2_40();
      OUTLINED_FUNCTION_167_5(v13, v14, v15);
      OUTLINED_FUNCTION_0_46();
      v18 = sub_1935C8448(v16, v17, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_81_9(v18);
      OUTLINED_FUNCTION_6_34();
      sub_1935D1B90();
      OUTLINED_FUNCTION_25_2();
      sub_1935D1B90();
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v3 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v1);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
  OUTLINED_FUNCTION_106_9();
  if (v21)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v20)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_48_2(v19);
    v22 = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.rawValue.getter();
    if (v22 != IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.rawValue.getter())
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_106_9();
  if (v25)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v24)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_48_2(v23);
    v26 = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.rawValue.getter();
    if (v26 != IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.rawValue.getter())
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_106_9();
  if ((v29 & 1) == 0 && (v28 & 1) == 0)
  {
    OUTLINED_FUNCTION_48_2(v27);
    IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.rawValue.getter();
    IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.rawValue.getter();
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_25_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_70_7(v8, v23);
  OUTLINED_FUNCTION_6_3(v0, 1, v2);
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    OUTLINED_FUNCTION_166_4(v10, v11, v12);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_46();
    v15 = sub_1935C8448(v13, v14, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_73(v15);
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
  OUTLINED_FUNCTION_129_7();
  OUTLINED_FUNCTION_100();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = *(v16 + 8);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_108_10(v17 & 1);
    v18 = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.rawValue.getter();
    MEMORY[0x193B18030](v18);
  }

  OUTLINED_FUNCTION_100();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v20 = *(v19 + 8);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_108_10(v20 & 1);
    v21 = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.rawValue.getter();
    MEMORY[0x193B18030](v21);
  }

  OUTLINED_FUNCTION_100();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_96_12();
    v22 = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.rawValue.getter();
    MEMORY[0x193B18030](v22);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_1935C8448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1935C84E4(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_1935C8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.ended.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.ended.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 1);

  *(v1 + 16) = v2;
  *(v1 + 20) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.failed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 72);
  return sub_19350CB08(v3, v4);
}

__n128 IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.failed.setter(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u8[8];
  v7 = a1[1];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u8[8];
  sub_193456418(*(v1 + 48), *(v1 + 56));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  result = v7;
  *(v1 + 48) = v7;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_1935C872C(void (*a1)(void), uint64_t a2, uint64_t *a3)
{
  a1(0);
  OUTLINED_FUNCTION_148_4();
  return sub_193448804(v4, v5, v6, a3);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.contextId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(v1) + 28);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = 0;
  *(v0 + 8) = 256;
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_112_11();
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = xmmword_1939526A0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_19344E6DC(v0 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
}

double IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  OUTLINED_FUNCTION_112_11();
  result = 0.0;
  *(a1 + 16) = xmmword_1939526A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.== infix(_:_:)()
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
  OUTLINED_FUNCTION_74();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94_7();
  v13 = *(v4 + 8);
  v14 = *(v4 + 9);
  v57 = *v4;
  v58 = v13;
  v59 = v14;
  v15 = *(v2 + 8);
  v16 = *(v2 + 9);
  v50 = *v2;
  v51 = v15;
  v52 = v16;
  if (!static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.== infix(_:_:)(&v57, &v50))
  {
    goto LABEL_19;
  }

  v17 = v4[3];
  v18 = *(v2 + 20);
  v19 = v2[3];
  if (*(v4 + 20))
  {
    if (!*(v2 + 20))
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (*(v4 + 4) != *(v2 + 4))
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_19;
    }
  }

  v20 = sub_1935CA0C8(v17, v19);

  if (v20)
  {
    v46 = v8;
    v21 = *(v4 + 40);
    v22 = v4[6];
    v23 = v4[7];
    v24 = v4[8];
    v25 = *(v4 + 72);
    v57 = v4[4];
    v58 = v21;
    v60 = v22;
    v61 = v23;
    v48 = v23;
    v49 = v22;
    v62 = v24;
    v63 = v25;
    v26 = *(v2 + 40);
    v27 = v2[6];
    v28 = v2[7];
    v29 = v2[8];
    v30 = *(v2 + 72);
    v50 = v2[4];
    v51 = v26;
    v53 = v27;
    v54 = v28;
    v55 = v29;
    v56 = v30;
    sub_19350CB08(v22, v23);
    v31 = OUTLINED_FUNCTION_152_6();
    sub_19350CB08(v31, v32);
    static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.== infix(_:_:)();
    v47 = v33;
    v34 = OUTLINED_FUNCTION_152_6();
    sub_193456418(v34, v35);
    sub_193456418(v49, v48);
    if (v47)
    {
      v36 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0) + 28);
      v37 = *(v11 + 48);
      sub_193448804(v4 + v36, v0, &qword_1EAE3BCA0, &unk_19395C320);
      sub_193448804(v2 + v36, v0 + v37, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(v0);
      if (!v42)
      {
        v38 = OUTLINED_FUNCTION_115_0();
        sub_193448804(v38, v39, v40, v41);
        OUTLINED_FUNCTION_31(v0 + v37);
        if (!v42)
        {
          OUTLINED_FUNCTION_2_40();
          sub_1935D1BE4(v0 + v37, v46, v43);
          OUTLINED_FUNCTION_0_46();
          sub_1935C8448(v44, v45, &protocol conformance descriptor for AIML.UUID);
          OUTLINED_FUNCTION_24_1();
          sub_19393C550();
          OUTLINED_FUNCTION_69_12();
          sub_1935D1B90();
          sub_1935D1B90();
          sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_1_43();
        sub_1935D1B90();
LABEL_18:
        sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_31(v0 + v37);
      if (!v42)
      {
        goto LABEL_18;
      }

      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_116();
}

BOOL static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_178_0();
    OUTLINED_FUNCTION_39_5();
    v2 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter();
    return v2 == IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return sub_1935CA0C8(v5, v7);
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_115();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  if (*(v1 + 8))
  {
    if ((*(v0 + 8) & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_6:
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_248();
      sub_19350CB08(v11, v12);
      if (v7 == 1)
      {
        OUTLINED_FUNCTION_20_19(v6, 1);
        OUTLINED_FUNCTION_248();
        sub_193456418(v13, v14);
        goto LABEL_27;
      }

      v21 = OUTLINED_FUNCTION_11_23();
      sub_19350CB08(v21, v22);
      goto LABEL_12;
    }

    if (v7 == 1)
    {
      v15 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v15, v16);
      OUTLINED_FUNCTION_53_16();
      sub_19350CB08(v17, v18);
      v19 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v19, v20);

LABEL_12:
      v23 = OUTLINED_FUNCTION_8_35();
      sub_193456418(v23, v24);
      v25 = OUTLINED_FUNCTION_11_23();
LABEL_26:
      sub_193456418(v25, v26);
      goto LABEL_27;
    }

    if (v3)
    {
      if (v7)
      {
        if (v2 != v6 || v3 != v7)
        {
          OUTLINED_FUNCTION_159_7();
          v28 = sub_19393CA30();
          v29 = OUTLINED_FUNCTION_8_35();
          sub_19350CB08(v29, v30);
          v31 = OUTLINED_FUNCTION_11_23();
          sub_19350CB08(v31, v32);
          v33 = OUTLINED_FUNCTION_8_35();
          sub_19350CB08(v33, v34);
          v35 = OUTLINED_FUNCTION_11_23();
          sub_193456418(v35, v36);
          if ((v28 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_30;
        }

        OUTLINED_FUNCTION_248();
        sub_19350CB08(v51, v52);
        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_53_16();
        sub_19350CB08(v53, v54);
        v55 = OUTLINED_FUNCTION_8_35();
        sub_19350CB08(v55, v56);
        OUTLINED_FUNCTION_24_1();
LABEL_29:
        OUTLINED_FUNCTION_53_16();
        sub_193456418(v57, v58);
LABEL_30:
        if (v5)
        {
          if (v9)
          {
LABEL_35:

            v59 = OUTLINED_FUNCTION_8_35();
            sub_193456418(v59, v60);
            goto LABEL_27;
          }
        }

        else if ((v9 & 1) == 0 && v4 == v8)
        {
          goto LABEL_35;
        }

LABEL_25:

        v25 = OUTLINED_FUNCTION_8_35();
        goto LABEL_26;
      }

      v43 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v43, v44);
    }

    else
    {
      OUTLINED_FUNCTION_248();
      sub_19350CB08(v37, v38);
      if (!v7)
      {
        v39 = OUTLINED_FUNCTION_151_5();
        OUTLINED_FUNCTION_20_19(v39, v40);
        OUTLINED_FUNCTION_248();
        sub_19350CB08(v41, v42);
        OUTLINED_FUNCTION_151_5();
        goto LABEL_29;
      }
    }

    v45 = OUTLINED_FUNCTION_11_23();
    sub_19350CB08(v45, v46);
    OUTLINED_FUNCTION_248();
    sub_19350CB08(v47, v48);
    v49 = OUTLINED_FUNCTION_11_23();
    sub_193456418(v49, v50);
    goto LABEL_25;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
    v10 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.rawValue.getter();
    if (v10 == IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.rawValue.getter())
    {
      goto LABEL_6;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_114();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v4 = OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for AIML.UUID(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  if (*(v1 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v9 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter();
    MEMORY[0x193B18030](v9);
  }

  v10 = *(v1 + 24);
  if (*(v1 + 20) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  sub_1935D1A9C(v0, v10);
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hash(into:)();
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0);
  sub_193448804(v1 + *(v11 + 28), v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v3, 1, v5);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    sub_1935D1BE4(v3, v2, v13);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_46();
    sub_1935C8448(v14, v15, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_1935C91D0(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1935C9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.noOfResults.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 2) = 2;
  *(a1 + 4) = 0;
  *(a1 + 8) = 513;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = a1[8];
  v7 = a1[9];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[9];
  if (v2 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 2 || ((v8 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 2 || ((v9 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }

LABEL_16:
    if (v6)
    {
      if (!a2[8])
      {
        return 0;
      }
    }

    else
    {
      if (v5 == *(a2 + 1))
      {
        v13 = a2[8];
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    if (v7 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || ((v11 ^ v7) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v10 != 2 && ((v10 ^ v4) & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[8];
  v4 = v0[9];
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v3)
  {
    sub_19393CAE0();
  }

  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.hashValue.getter()
{
  OUTLINED_FUNCTION_74_12();
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935C95D0()
{
  OUTLINED_FUNCTION_74_12();
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted.hash(into:)()
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted.hashValue.getter()
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.result.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.fallbackReason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.linkId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
  v2 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(0) + 28);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
  sub_19344E6DC(a1 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_220();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_74();
  if (sub_1935C9E30(*v5, *v3))
  {
    if (*(v5 + 17))
    {
      if ((*(v3 + 17) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (*(v3 + 17))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_106_12(*(v5 + 8));
      v12 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource.rawValue.getter();
      if (v12 != IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource.rawValue.getter())
      {
        goto LABEL_21;
      }
    }

    if (*(v5 + 33))
    {
      if ((*(v3 + 33) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (*(v3 + 33))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_106_12(*(v5 + 24));
      v13 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason.rawValue.getter();
      if (v13 != IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason.rawValue.getter())
      {
        goto LABEL_21;
      }
    }

    v14 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(0) + 28);
    v15 = *(v10 + 48);
    sub_193448804(v5 + v14, v1, &qword_1EAE3BCA0, &unk_19395C320);
    sub_193448804(v3 + v14, v1 + v15, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v1, 1, v6);
    if (!v20)
    {
      v16 = OUTLINED_FUNCTION_24_1();
      sub_193448804(v16, v17, v18, v19);
      OUTLINED_FUNCTION_6_3(v1 + v15, 1, v6);
      if (!v20)
      {
        OUTLINED_FUNCTION_2_40();
        sub_1935D1BE4(v1 + v15, v0, v21);
        OUTLINED_FUNCTION_0_46();
        sub_1935C8448(v22, v23, &protocol conformance descriptor for AIML.UUID);
        sub_19393C550();
        OUTLINED_FUNCTION_69_12();
        sub_1935D1B90();
        sub_1935D1B90();
        sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_1_43();
      sub_1935D1B90();
LABEL_20:
      sub_19344E6DC(v1, &qword_1EAE3BD08, &qword_1939595A0);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_6_3(v1 + v15, 1, v6);
    if (!v20)
    {
      goto LABEL_20;
    }

    sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1935C9E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1935D50D0(v13, v10);
        sub_1935D50D0(v14, v7);
        static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.== infix(_:_:)();
        v17 = v16;
        sub_1935D1B90();
        sub_1935D1B90();
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1935C9FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a2 + v5 + 36);
      if (*(a1 + v5 + 36))
      {
        if (!*(a2 + v5 + 36))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v5 + 32) != *(a2 + v5 + 32))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (*(a1 + v5 + 49))
      {
        if ((*(a2 + v5 + 49) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(a2 + v5 + 49))
        {
          return 0;
        }

        v7 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter();
        if (v7 != IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter())
        {
          return 0;
        }
      }

      v5 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1935CA0C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = result + 40;
  v4 = a2 + 40;
  while (v2)
  {
    v4 += 16;
    v5 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.rawValue.getter();
    v6 = v5 == IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.rawValue.getter();
    result = v6;
    v6 = !v6 || v2-- == 1;
    v3 += 16;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1935CA184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 200)
    {
      memcpy(__dst, v3, 0xC1uLL);
      memcpy(v10, v3, sizeof(v10));
      memcpy(v12, i, 0xC1uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1935B02B8(__dst, v8);
      sub_1935B02B8(v12, v8);
      static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.== infix(_:_:)();
      v6 = v5;
      memcpy(v13, __src, 0xC1uLL);
      sub_1935D50A0(v13);
      memcpy(v14, v10, 0xC1uLL);
      sub_1935D50A0(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 200;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1935CA294(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 232)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_1935AF804(__dst, v7);
      sub_1935AF804(v11, v7);
      v5 = static IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_1935D2104(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_1935D2104(v13);
      if (!v5)
      {
        break;
      }

      v3 += 232;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1935CA3A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 44);
      v7 = *(a1 + v5 + 48);
      v8 = *(a2 + v5 + 44);
      v9 = *(a2 + v5 + 48);
      if (*(a1 + v5 + 41))
      {
        if ((*(a2 + v5 + 41) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(a2 + v5 + 41))
        {
          return 0;
        }

        v10 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
        if (v10 != IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter())
        {
          return 0;
        }
      }

      if (v7)
      {
        if (!v9)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == v8)
        {
          v11 = v9;
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

      v5 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1935CA4BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 36);
    v4 = (a2 + 36);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v4 = OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for AIML.UUID(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  sub_1935D1688(v0, *v1);
  if (*(v1 + 17) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v9 = *(v1 + 16);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_108_10(v9 & 1);
    v10 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource.rawValue.getter();
    MEMORY[0x193B18030](v10);
  }

  if (*(v1 + 33) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v11 = *(v1 + 32);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_108_10(v11 & 1);
    v12 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason.rawValue.getter();
    MEMORY[0x193B18030](v12);
  }

  v13 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(0);
  sub_193448804(v1 + *(v13 + 28), v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v3, 1, v5);
  if (v14)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    sub_1935D1BE4(v3, v2, v15);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_46();
    sub_1935C8448(v16, v17, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.catId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.getter()
{
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = (v1 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);
  v7 = (v0 + *(v6 + 20));
  v8 = (v0 + *(v6 + 24));
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1935CAD48(uint64_t (*a1)(char *))
{
  OUTLINED_FUNCTION_68_13();
  v2 = sub_19393CAB0();
  v10 = OUTLINED_FUNCTION_149_5(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  a1(v10);
  return sub_19393CB00();
}

uint64_t sub_1935CADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  OUTLINED_FUNCTION_68_13();
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_149_5(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.domain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.code.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v1);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v3)
  {
    MEMORY[0x193B18060](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_1935CB068(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CB0FC(void (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1935CB158()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = (v1 + *(v4(v3) + 20));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1935CB1F4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 24));
}

void sub_1935CB240()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_84_6(*(v2 + 24));
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.resultType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  v7 = (v0 + *(v6 + 20));
  v8 = v0 + *(v6 + 24);
  *v8 = 0;
  *(v8 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  v5 = OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_76_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32_1(v9, v28);
  OUTLINED_FUNCTION_88_10();
  v10 = OUTLINED_FUNCTION_31(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_31(v0 + v1);
    if (v12)
    {
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_2(v10, v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v0 + v1);
  if (v12)
  {
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_167_5(v13, v14, v15);
  OUTLINED_FUNCTION_0_46();
  v18 = sub_1935C8448(v16, v17, &protocol conformance descriptor for AIML.UUID);
  OUTLINED_FUNCTION_81_9(v18);
  OUTLINED_FUNCTION_6_34();
  sub_1935D1B90();
  OUTLINED_FUNCTION_25_2();
  sub_1935D1B90();
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  OUTLINED_FUNCTION_3();
  if (!v21)
  {
    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v19)
  {
    OUTLINED_FUNCTION_5(v20);
    v24 = v12 && v22 == v23;
    if (v24 || (sub_19393CA30() & 1) != 0)
    {
LABEL_21:
      OUTLINED_FUNCTION_106_9();
      if ((v27 & 1) == 0 && (v26 & 1) == 0)
      {
        OUTLINED_FUNCTION_48_2(v25);
        IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter();
        IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter();
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_25_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_70_7(v8, v18);
  OUTLINED_FUNCTION_6_3(v0, 1, v2);
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    OUTLINED_FUNCTION_166_4(v10, v11, v12);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_46();
    v15 = sub_1935C8448(v13, v14, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_73(v15);
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  OUTLINED_FUNCTION_129_7();
  if (*(v0 + v16 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_100();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_96_12();
    v17 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter();
    MEMORY[0x193B18030](v17);
  }

  OUTLINED_FUNCTION_236();
}

BOOL static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.modelNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.queryArguments.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

__n128 IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.llmquPerfMetrics.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = v1 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v2) + 32);
  v4 = *(v3 + 32);
  v5 = *(v3 + 36);
  v6 = *(v3 + 37);
  result = *v3;
  v8 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v8;
  *(v0 + 36) = v5;
  *(v0 + 32) = v4;
  *(v0 + 37) = v6;
  return result;
}

__n128 IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.llmquPerfMetrics.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 37);
  v6 = v1 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0) + 32);
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 36) = v4;
  *(v6 + 32) = v3;
  *(v6 + 37) = v5;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.llmquPerfMetrics.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

double IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v1) + 28);
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_154_5();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
  sub_19344E6DC(v0 + v2, &qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_165();
  return OUTLINED_FUNCTION_154_5();
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_220();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E5C0, &qword_19396A2C0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_74();
  v12 = *(v5 + 8);
  v13 = *(v3 + 8);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    v14 = *v5 == *v3 && v12 == v13;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v13)
  {
    goto LABEL_31;
  }

  v15 = *(v3 + 20);
  if (*(v5 + 20))
  {
    if (!*(v3 + 20))
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*(v5 + 16) != *(v3 + 16))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_31;
    }
  }

  v16 = *(v3 + 28);
  if (*(v5 + 28))
  {
    if (!*(v3 + 28))
    {
      goto LABEL_31;
    }

LABEL_22:
    v46 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
    v17 = *(v10 + 48);
    OUTLINED_FUNCTION_159_7();
    sub_193448804(v18, v19, v20, v21);
    OUTLINED_FUNCTION_159_7();
    sub_193448804(v22, v23, v24, v25);
    OUTLINED_FUNCTION_6_3(v1, 1, v6);
    if (v14)
    {
      OUTLINED_FUNCTION_6_3(v1 + v17, 1, v6);
      if (v14)
      {
        sub_19344E6DC(v1, &qword_1EAE3DFD8, &qword_193969380);
LABEL_33:
        v34 = *(v46 + 32);
        v35 = v5 + v34;
        v36 = (v3 + v34);
        v37 = *(v3 + v34 + 37);
        if ((*(v5 + v34 + 37) & 1) == 0)
        {
          v38 = *v36;
          v39 = v36[1];
          v40 = *(v36 + 36);
          v41 = *(v36 + 8);
          v42 = *(v35 + 32);
          v43 = *(v35 + 36);
          v44 = *(v35 + 16);
          v50[0] = *v35;
          v50[1] = v44;
          v52 = v43;
          v51 = v42;
          v53 = 0;
          if ((v37 & 1) == 0)
          {
            v45 = v41 | (v40 << 32);
            v47[0] = v38;
            v47[1] = v39;
            v48 = v45;
            v49 = BYTE4(v45);
            static IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.== infix(_:_:)(v50, v47);
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      v26 = OUTLINED_FUNCTION_24_1();
      sub_193448804(v26, v27, v28, v29);
      OUTLINED_FUNCTION_6_3(v1 + v17, 1, v6);
      if (!v30)
      {
        OUTLINED_FUNCTION_72_9();
        sub_1935D1BE4(v1 + v17, v0, v31);
        static IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.== infix(_:_:)();
        v33 = v32;
        sub_1935D1B90();
        sub_1935D1B90();
        sub_19344E6DC(v1, &qword_1EAE3DFD8, &qword_193969380);
        if ((v33 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      OUTLINED_FUNCTION_73_13();
      sub_1935D1B90();
    }

    sub_19344E6DC(v1, &qword_1EAE3E5C0, &qword_19396A2C0);
    goto LABEL_31;
  }

  if (*(v5 + 24) != *(v3 + 24))
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v3 = OUTLINED_FUNCTION_3_4();
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76_0();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + 20) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (*(v0 + 28) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
  sub_193448804(v0 + *(v8 + 28), v2, &qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_6_3(v2, 1, v4);
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_72_9();
    sub_1935D1BE4(v2, v1, v10);
    OUTLINED_FUNCTION_103_0();
    IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.hash(into:)();
    OUTLINED_FUNCTION_73_13();
    sub_1935D1B90();
  }

  if (*(v0 + *(v8 + 32) + 37))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t static IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = *(a2 + 4);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 8))
    {
      v11 = *(a2 + 12);
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

  if (v5)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 16))
    {
      v12 = *(a2 + 20);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 24))
    {
      v13 = *(a2 + 28);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v9)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == *(a2 + 32))
    {
      v15 = *(a2 + 36);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return 1;
}

void IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_67_10();
  v1 = v0[12];
  v2 = v0[20];
  v3 = v0[28];
  v4 = v0[36];
  if (v5 == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_19393CAD0();
  if (!v2)
  {
LABEL_4:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_19393CAD0();
    goto LABEL_12;
  }

LABEL_9:
  sub_19393CAD0();
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_19393CAD0();
  sub_19393CAE0();
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_19393CAD0();
  sub_19393CAE0();
LABEL_12:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CC300(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.questionNeedsAnswer.setter(char a1)
{
  result = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.questionNeedsAnswer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.sortOrder.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  v7 = *(v6 + 20);
  v8 = v0 + *(v6 + 24);
  *v8 = 0;
  *(v8 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *(v0 + v7) = 2;
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v4 = OUTLINED_FUNCTION_48_1();
  v5 = type metadata accessor for AIML.UUID(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32_1(v11, v27);
  OUTLINED_FUNCTION_88_10();
  v12 = OUTLINED_FUNCTION_31(v2);
  if (!v14)
  {
    OUTLINED_FUNCTION_168_2(v12, v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v2 + v3);
    if (!v14)
    {
      OUTLINED_FUNCTION_2_40();
      OUTLINED_FUNCTION_167_5(v15, v16, v17);
      OUTLINED_FUNCTION_0_46();
      v20 = sub_1935C8448(v18, v19, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_81_9(v20);
      OUTLINED_FUNCTION_6_34();
      sub_1935D1B90();
      OUTLINED_FUNCTION_25_2();
      sub_1935D1B90();
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
LABEL_9:
    sub_19344E6DC(v2, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v2 + v3);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v21 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0) + 20);
  v22 = *(v1 + v21);
  v23 = *(v0 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_106_9();
  if ((v26 & 1) == 0 && (v25 & 1) == 0)
  {
    OUTLINED_FUNCTION_48_2(v24);
    IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.rawValue.getter();
    IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.rawValue.getter();
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}