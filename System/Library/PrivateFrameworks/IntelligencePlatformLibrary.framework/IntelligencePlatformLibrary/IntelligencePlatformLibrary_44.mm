uint64_t MomentsEventData.MediaType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x636973754DLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_111_14(0x736163646F50);
      break;
    case 2:
      result = OUTLINED_FUNCTION_260_0(0x426F69647541);
      break;
    case 3:
      result = 0x5573656E755449;
      break;
    case 4:
      result = OUTLINED_FUNCTION_270_3();
      break;
    case 5:
      v2 = 1768191297;
      goto LABEL_11;
    case 6:
      v2 = 1701079382;
LABEL_11:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 7:
      result = 0x726568744FLL;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.MediaType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x636973754DLL && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_14(0x636973754DLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_106_16(0x736163646F50);
      v8 = v4 && v0 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_22_7(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x6F6F426F69647541 && v0 == 0xE90000000000006BLL;
        if (v9 || (OUTLINED_FUNCTION_30_22(0x6F6F426F69647541, 107) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 0x5573656E755449 && v0 == 0xE700000000000000;
          if (v10 || (OUTLINED_FUNCTION_22_7(0x5573656E755449) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = OUTLINED_FUNCTION_270_3();
            v13 = v1 == v11 && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v14 = OUTLINED_FUNCTION_224_2(1768191297);
              v15 = v4 && v0 == 0xE500000000000000;
              if (v15 || (OUTLINED_FUNCTION_15_14(v14) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v16 = OUTLINED_FUNCTION_224_2(1701079382);
                v17 = v4 && v0 == 0xE500000000000000;
                if (v17 || (OUTLINED_FUNCTION_15_14(v16) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v18 = OUTLINED_FUNCTION_69_20();
                  if (v4 && v0 == 0xE500000000000000)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_15_14(v18);
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

uint64_t MomentsEventData.AgeRangeType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t static MomentsEventData.AgeRangeType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v48 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v48, v49, v50, v51, &qword_1EAE42DF8, &qword_1939970C8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v52 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v52, v53, v54, v55, &qword_1EAE42DF8, &qword_1939970C8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v56, v57, v58, v59, v60, v61);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v62 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v62, v63, v64, v65, &qword_1EAE42DF8, &qword_1939970C8);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v66 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v66, v67, v68, v69, &qword_1EAE42DF8, &qword_1939970C8);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v70 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v70, v71, v72, v73, &qword_1EAE42DF8, &qword_1939970C8);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v74 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v74, v75, v76, v77, &qword_1EAE42DF8, &qword_1939970C8);
    v43 = v40;
  }

  OUTLINED_FUNCTION_47_5(v40, v41, v42, v43);
  return OUTLINED_FUNCTION_89_3(v45, v46);
}

void MomentsEventData.AgeRangeType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_118_14();
        break;
      case 5:
        OUTLINED_FUNCTION_238_4();
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

void MomentsEventData.AgeRangeType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x316F54306D6F7246 && v0 == 0xE900000000000037;
    if (v6 || (OUTLINED_FUNCTION_30_22(0x316F54306D6F7246, 55) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6F5438316D6F7246 && v0 == 0xEA00000000003432;
      if (v7 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x6F5435326D6F7246 && v0 == 0xEA00000000003433;
        if (v8 || (OUTLINED_FUNCTION_0_9(0x6F5435326D6F7246, 0xEA00000000003433) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x6F5435336D6F7246 && v0 == 0xEA00000000003434;
          if (v9 || (OUTLINED_FUNCTION_0_9(0x6F5435336D6F7246, 0xEA00000000003434) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x6F5435346D6F7246 && v0 == 0xEA00000000003436;
            if (v10 || (OUTLINED_FUNCTION_0_9(0x6F5435346D6F7246, 0xEA00000000003436) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = OUTLINED_FUNCTION_238_4();
              if (v1 == v11 && v0 == v12)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_0_9(v11, v12);
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

uint64_t MomentsEventData.BiologicalSexType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1701601613;
  if (*v0 != 1)
  {
    v1 = 0x726568744FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C616D6546;
  }
}

void MomentsEventData.BiologicalSexType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x656C616D6546 && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_21_38(0x656C616D6546) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 1701601613 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_19_8(1701601613) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_69_20();
        if (v4 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_15_14(v8);
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

uint64_t MomentsEventData.BundleEngagementType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6F77546C6576654CLL;
  if (*v0 != 1)
  {
    v1 = 0x7268546C6576654CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E4F6C6576654CLL;
  }
}

void MomentsEventData.BundleEngagementType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x656E4F6C6576654CLL && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_29_2(0x656E4F6C6576654CLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6F77546C6576654CLL && v0 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_29_2(0x6F77546C6576654CLL) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x7268546C6576654CLL && v0 == 0xEA00000000006565)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_59_20();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.SuggestionType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.SuggestionType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v143 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v143, v144, v145, v146, &qword_1EAE42DE0, &qword_1939970B0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v147 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v147, v148, v149, v150, &qword_1EAE42DE0, &qword_1939970B0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v151, v152, v153, v154, v155, v156);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v157 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v157, v158, v159, v160, &qword_1EAE42DE0, &qword_1939970B0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v161 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v161, v162, v163, v164, &qword_1EAE42DE0, &qword_1939970B0);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v165 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v165, v166, v167, v168, &qword_1EAE42DE0, &qword_1939970B0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v169 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v169, v170, v171, v172, &qword_1EAE42DE0, &qword_1939970B0);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v173 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v173, v174, v175, v176, &qword_1EAE42DE0, &qword_1939970B0);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v177 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v177, v178, v179, v180, &qword_1EAE42DE0, &qword_1939970B0);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v181 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v181, v182, v183, v184, &qword_1EAE42DE0, &qword_1939970B0);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v185 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v185, v186, v187, v188, &qword_1EAE42DE0, &qword_1939970B0);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v189 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v189, v190, v191, v192, &qword_1EAE42DE0, &qword_1939970B0);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v193 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v193, v194, v195, v196, &qword_1EAE42DE0, &qword_1939970B0);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v197 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v197, v198, v199, v200, &qword_1EAE42DE0, &qword_1939970B0);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v201 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v201, v202, v203, v204, &qword_1EAE42DE0, &qword_1939970B0);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v205 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v205, v206, v207, v208, &qword_1EAE42DE0, &qword_1939970B0);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v209 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v209, v210, v211, v212, &qword_1EAE42DE0, &qword_1939970B0);
    v93 = v90;
  }

  OUTLINED_FUNCTION_17_41(v90, v91, v92, v93);
  if (!(v18 ^ v19 | v12))
  {
    v213 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v213, v214, v215, v216, &qword_1EAE42DE0, &qword_1939970B0);
    v98 = v95;
  }

  OUTLINED_FUNCTION_19_54(v95, v96, v97, v98);
  if (!(v18 ^ v19 | v12))
  {
    v217 = OUTLINED_FUNCTION_39(v104);
    v100 = OUTLINED_FUNCTION_85(v217, v218, v219, v220, &qword_1EAE42DE0, &qword_1939970B0);
    v103 = v100;
  }

  OUTLINED_FUNCTION_20_47(v100, v101, v102, v103);
  if (!(v18 ^ v19 | v12))
  {
    v221 = OUTLINED_FUNCTION_39(v109);
    v105 = OUTLINED_FUNCTION_84_2(v221, v222, v223, v224, &qword_1EAE42DE0, &qword_1939970B0);
    v108 = v105;
  }

  OUTLINED_FUNCTION_25_36(v105, v106, v107, v108);
  if (!(v18 ^ v19 | v12))
  {
    v225 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v225, v226, v227, v228, &qword_1EAE42DE0, &qword_1939970B0);
    v113 = v110;
  }

  OUTLINED_FUNCTION_22_38(v110, v111, v112, v113);
  if (!(v18 ^ v19 | v12))
  {
    v229 = OUTLINED_FUNCTION_39(v119);
    v115 = OUTLINED_FUNCTION_84_2(v229, v230, v231, v232, &qword_1EAE42DE0, &qword_1939970B0);
    v118 = v115;
  }

  OUTLINED_FUNCTION_24_46(v115, v116, v117, v118);
  if (!(v18 ^ v19 | v12))
  {
    v233 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v233, v234, v235, v236, &qword_1EAE42DE0, &qword_1939970B0);
    v123 = v120;
  }

  OUTLINED_FUNCTION_21_45(v120, v121, v122, v123);
  if (!(v18 ^ v19 | v12))
  {
    v237 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_84_2(v237, v238, v239, v240, &qword_1EAE42DE0, &qword_1939970B0);
    v128 = v125;
  }

  OUTLINED_FUNCTION_23_44(v125, v126, v127, v128);
  if (!(v18 ^ v19 | v12))
  {
    v241 = OUTLINED_FUNCTION_39(v134);
    v130 = OUTLINED_FUNCTION_85(v241, v242, v243, v244, &qword_1EAE42DE0, &qword_1939970B0);
    v133 = v130;
  }

  OUTLINED_FUNCTION_28_32(v130, v131, v132, v133);
  if (!(v18 ^ v19 | v12))
  {
    v245 = OUTLINED_FUNCTION_39(v139);
    v135 = OUTLINED_FUNCTION_84_2(v245, v246, v247, v248, &qword_1EAE42DE0, &qword_1939970B0);
    v138 = v135;
  }

  OUTLINED_FUNCTION_50(v135, v136, v137, v138);
  return OUTLINED_FUNCTION_38_1(v140, v141);
}

void MomentsEventData.SuggestionType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_197_4(1701538124);
        break;
      case 3:
        OUTLINED_FUNCTION_185_6(0x6B696C736944);
        break;
      case 4:
      case 0x10:
        OUTLINED_FUNCTION_144();
        break;
      case 5:
        OUTLINED_FUNCTION_194_4(0x6574656C6544);
        break;
      case 7:
        OUTLINED_FUNCTION_232_5();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_93_13();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_175_7();
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_81_12();
        break;
      case 0x11:
        v1 = 1769172816;
        goto LABEL_17;
      case 0x12:
        v1 = 1634166094;
LABEL_17:
        OUTLINED_FUNCTION_257_1(v1 & 0xFFFF0000FFFFFFFFLL | 0x697400000000);
        break;
      case 0x13:
        OUTLINED_FUNCTION_149_10();
        break;
      case 0x14:
        OUTLINED_FUNCTION_185_6(0x7463656A6552);
        break;
      case 0x15:
        OUTLINED_FUNCTION_185_6(0x747065636341);
        break;
      case 0x17:
        OUTLINED_FUNCTION_185_6(0x7265746C6946);
        break;
      case 0x18:
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

void MomentsEventData.SuggestionType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_93_2(0x7463656C6553);
    v7 = v4 && v0 == 0xE800000000000000;
    if (v7 || (OUTLINED_FUNCTION_29_2(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_189_2(1918986323);
      v9 = v4 && v0 == 0xE600000000000000;
      if (v9 || (OUTLINED_FUNCTION_21_38(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_305_1(1701538124);
        v11 = v4 && v0 == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_15_14(v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_93_2(0x6B696C736944);
          v13 = v4 && v0 == 0xE800000000000000;
          if (v13 || (OUTLINED_FUNCTION_29_2(v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_180_8();
            v16 = v4 && v0 == v15;
            if (v16 || (OUTLINED_FUNCTION_30_22(v14, 100) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v17 = OUTLINED_FUNCTION_141_9(0x6574656C6544);
              v18 = v4 && v0 == 0xE700000000000000;
              if (v18 || (OUTLINED_FUNCTION_22_7(v17) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v19 = v1 == 0x6E6564646948 && v0 == 0xE600000000000000;
                if (v19 || (OUTLINED_FUNCTION_21_38(0x6E6564646948) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v20 = OUTLINED_FUNCTION_232_5();
                  v22 = v1 == v20 && v0 == v21;
                  if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v23 = OUTLINED_FUNCTION_189_2(2003134806);
                    v24 = v4 && v0 == 0xE600000000000000;
                    if (v24 || (OUTLINED_FUNCTION_21_38(v23) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v25 = v1 == 0x6F4473626D756854 && v0 == 0xEA00000000006E77;
                      if (v25 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v26 = OUTLINED_FUNCTION_294_3(0x69726F766146);
                        v27 = v4 && v0 == 0xE800000000000000;
                        if (v27 || (OUTLINED_FUNCTION_29_2(v26) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v28 = v1 == 0x705573626D756854 && v0 == 0xE800000000000000;
                          if (v28 || (OUTLINED_FUNCTION_29_2(0x705573626D756854) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v29 = OUTLINED_FUNCTION_221_2();
                            v30 = v4 && v0 == 0xEC00000064657461;
                            if (v30 || (OUTLINED_FUNCTION_0_9(v29, 0xEC00000064657461) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v31 = OUTLINED_FUNCTION_93_13();
                              v33 = v1 == v31 && v0 == v32;
                              if (v33 || (OUTLINED_FUNCTION_0_9(v31, v32) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v34 = OUTLINED_FUNCTION_175_7();
                                v35 = v1 == v34 && v0 == 0xEC00000064657465;
                                if (v35 || (OUTLINED_FUNCTION_0_9(v34, 0xEC00000064657465) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v36 = OUTLINED_FUNCTION_81_12();
                                  v38 = v1 == v36 && v0 == v37;
                                  if (v38 || (OUTLINED_FUNCTION_0_9(v36, v37) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v39 = OUTLINED_FUNCTION_294_3(0x61746F6E6E41);
                                    v40 = v4 && v0 == 0xE900000000000064;
                                    if (v40 || (OUTLINED_FUNCTION_30_22(v39, 100) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v41 = OUTLINED_FUNCTION_296_2(0x697469736F50);
                                      v42 = v4 && v0 == 0xE800000000000000;
                                      if (v42 || (OUTLINED_FUNCTION_29_2(v41) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v43 = OUTLINED_FUNCTION_296_2(0x69746167654ELL);
                                        v44 = v4 && v0 == 0xE800000000000000;
                                        if (v44 || (OUTLINED_FUNCTION_29_2(v43) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v45 = OUTLINED_FUNCTION_208_2();
                                          v46 = v4 && v0 == 0xE700000000000000;
                                          if (v46 || (OUTLINED_FUNCTION_22_7(v45) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v47 = OUTLINED_FUNCTION_93_2(0x7463656A6552);
                                            v48 = v4 && v0 == 0xE800000000000000;
                                            if (v48 || (OUTLINED_FUNCTION_29_2(v47) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v49 = OUTLINED_FUNCTION_93_2(0x747065636341);
                                              v50 = v4 && v0 == 0xE800000000000000;
                                              if (v50 || (OUTLINED_FUNCTION_29_2(v49) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v51 = OUTLINED_FUNCTION_189_2(1953722192);
                                                v52 = v4 && v0 == 0xE600000000000000;
                                                if (v52 || (OUTLINED_FUNCTION_21_38(v51) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v53 = OUTLINED_FUNCTION_93_2(0x7265746C6946);
                                                  v54 = v4 && v0 == 0xE800000000000000;
                                                  if (v54 || (OUTLINED_FUNCTION_29_2(v53) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_65_0();
                                                    if (v4 && v55 == v0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_25_7(23, v55);
                                                      OUTLINED_FUNCTION_89();
                                                      v5 = 24;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.AppEntryEventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6572437972746E45;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_93_13();
      break;
    case 2:
      result = OUTLINED_FUNCTION_175_7();
      break;
    case 3:
      result = OUTLINED_FUNCTION_81_12();
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.AppEntryEventType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_221_2();
    v6 = v4 && v0 == 0xEC00000064657461;
    if (v6 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_93_13();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_175_7();
        v11 = v1 == v10 && v0 == 0xEC00000064657465;
        if (v11 || (OUTLINED_FUNCTION_0_9(v10, 0xEC00000064657465) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_81_12();
          if (v1 == v12 && v0 == v13)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v12, v13);
            OUTLINED_FUNCTION_89();
            v5 = 3;
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

uint64_t MomentsEventData.ClientActivityEventType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void MomentsEventData.ClientActivityEventType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_75();
        break;
      case 2:
        OUTLINED_FUNCTION_135_11();
        break;
      case 3:
        OUTLINED_FUNCTION_187_1();
        break;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.ClientActivityEventType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_206_3();
    OUTLINED_FUNCTION_26_4();
    v9 = v5 && v8 == v0;
    if (v9 || (OUTLINED_FUNCTION_44_25(v7, v8) & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_138();
      v12 = v5 && v11 == v0;
      if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
      {

        v6 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v14 = v1 == v2 + 6 && v13 == v0;
        if (v14 || (OUTLINED_FUNCTION_0_9(v2 + 6, v13) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_38();
          if (v1 == v2 + 8 && v15 == v0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v2 + 8, v15);
            OUTLINED_FUNCTION_89();
            v6 = 3;
            if ((v1 & 1) == 0)
            {
              v6 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t sub_19379AA48()
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

  OUTLINED_FUNCTION_149(v29, v30, v31, v32);
  OUTLINED_FUNCTION_90_7(v34);
  OUTLINED_FUNCTION_301_2();
  if (!(v17 ^ v18 | v11))
  {
    v35 = OUTLINED_FUNCTION_33_5((v39 > 1), v36, v37, v38);
    v38 = v35;
  }

  OUTLINED_FUNCTION_160_1(v35, v36, v37, v38);
  return OUTLINED_FUNCTION_38_1(v40, v41);
}

uint64_t MomentsEventData.PhotoSourceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6867696C68676948;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_168_6();
      break;
    case 2:
      result = 0x736569726F6D654DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_185_6(0x727574616546);
      break;
    case 4:
      result = 1919251285;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.PhotoSourceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6867696C68676948 && v0 == 0xEA00000000007374;
    if (v6 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_148_9();
      v8 = v4 && v0 == 0xE600000000000000;
      if (v8 || (OUTLINED_FUNCTION_21_38(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x736569726F6D654DLL && v0 == 0xE800000000000000;
        if (v9 || (OUTLINED_FUNCTION_29_2(0x736569726F6D654DLL) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = OUTLINED_FUNCTION_93_2(0x727574616546);
          v11 = v4 && v0 == 0xE800000000000000;
          if (v11 || (OUTLINED_FUNCTION_29_2(v10) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == 1919251285 && v0 == 0xE400000000000000)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_19_8(1919251285);
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_214_2();
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

void MomentsEventData.PhotoLibraryType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t MomentsEventData.PhotoLibraryType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x694C6D6574737953;
  }
}

void MomentsEventData.PhotoLibraryType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x694C6D6574737953 && v0 == 0xED00007972617262;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x694C6D6574737953, 0xED00007972617262) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v8 = v4 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(18, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v1 == 0xD000000000000013 && v9 == v0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_9(0xD000000000000013, v9);
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

uint64_t MomentsEventData.PRType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x646E65697246;
  }

  return 0x796C696D6146;
}

void MomentsEventData.PRType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_144_9();
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_292_1();
      if (v1 == v8 && v0 == 0xE600000000000000)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_21_38(v8);
        OUTLINED_FUNCTION_89();
        v5 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.MapItemSourceType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.MapItemSourceType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v103 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v103, v104, v105, v106, &qword_1EAE42DB0, &qword_193997080);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v107 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v107, v108, v109, v110, &qword_1EAE42DB0, &qword_193997080);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v111, v112, v113, v114, v115, v116);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v117 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v117, v118, v119, v120, &qword_1EAE42DB0, &qword_193997080);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v121 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v121, v122, v123, v124, &qword_1EAE42DB0, &qword_193997080);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v125 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v125, v126, v127, v128, &qword_1EAE42DB0, &qword_193997080);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v129 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v129, v130, v131, v132, &qword_1EAE42DB0, &qword_193997080);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v133 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v133, v134, v135, v136, &qword_1EAE42DB0, &qword_193997080);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v137 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v137, v138, v139, v140, &qword_1EAE42DB0, &qword_193997080);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v141 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v141, v142, v143, v144, &qword_1EAE42DB0, &qword_193997080);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v145 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v145, v146, v147, v148, &qword_1EAE42DB0, &qword_193997080);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v149 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v149, v150, v151, v152, &qword_1EAE42DB0, &qword_193997080);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v153 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v153, v154, v155, v156, &qword_1EAE42DB0, &qword_193997080);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v157 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v157, v158, v159, v160, &qword_1EAE42DB0, &qword_193997080);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v161 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v161, v162, v163, v164, &qword_1EAE42DB0, &qword_193997080);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v165 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v165, v166, v167, v168, &qword_1EAE42DB0, &qword_193997080);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v169 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v169, v170, v171, v172, &qword_1EAE42DB0, &qword_193997080);
    v93 = v90;
  }

  OUTLINED_FUNCTION_17_41(v90, v91, v92, v93);
  if (!(v18 ^ v19 | v12))
  {
    v173 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v173, v174, v175, v176, &qword_1EAE42DB0, &qword_193997080);
    v98 = v95;
  }

  OUTLINED_FUNCTION_50(v95, v96, v97, v98);
  return OUTLINED_FUNCTION_38_1(v100, v101);
}

void MomentsEventData.MapItemSourceType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 4:
      case 6:
      case 0x10:
        OUTLINED_FUNCTION_187_1();
        break;
      case 5:
        OUTLINED_FUNCTION_136_10();
        break;
      case 7:
        OUTLINED_FUNCTION_191_4(0x4B746E657645);
        break;
      case 8:
        OUTLINED_FUNCTION_267_3();
        break;
      case 9:
        OUTLINED_FUNCTION_246_3();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_38();
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_191_4(0x617274726F50);
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_269_3();
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_118_14();
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

void MomentsEventData.MapItemSourceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x4765737265766552 && v0 == 0xEE0065646F636F65;
    if (v6 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x4764726177726F46 && v0 == 0xEE0065646F636F65;
      if (v7 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x73746361746E6F43 && v0 == 0xE800000000000000;
        if (v8 || (OUTLINED_FUNCTION_29_2(0x73746361746E6F43) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 1919251285 && v0 == 0xE400000000000000;
          if (v9 || (OUTLINED_FUNCTION_19_8(1919251285) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_206_3();
            OUTLINED_FUNCTION_38();
            v11 = v1 == 0xEE0065646F636F67 && v10 == v0;
            if (v11 || (OUTLINED_FUNCTION_0_9(0xEE0065646F636F68, v10) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v13 = v1 == 0xEE0065646F636F71 && v12 == v0;
              if (v13 || (OUTLINED_FUNCTION_0_9(0xEE0065646F636F71, v12) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v15 = v1 == 0xEE0065646F636F78 && v14 == v0;
                if (v15 || (OUTLINED_FUNCTION_0_9(0xEE0065646F636F78, v14) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_298_2(0x4B746E657645);
                  v17 = v4 && v0 == 0xE800000000000000;
                  if (v17 || (OUTLINED_FUNCTION_29_2(v16) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v18 = OUTLINED_FUNCTION_267_3();
                    v20 = v1 == v18 && v0 == v19;
                    if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v21 = OUTLINED_FUNCTION_246_3();
                      v23 = v1 == v21 && v0 == v22;
                      if (v23 || (OUTLINED_FUNCTION_0_9(v21, v22) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_26_4();
                        v26 = v4 && v25 == v0;
                        if (v26 || (OUTLINED_FUNCTION_44_25(v24, v25) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v27 = OUTLINED_FUNCTION_298_2(0x617274726F50);
                          v28 = v4 && v0 == 0xE800000000000000;
                          if (v28 || (OUTLINED_FUNCTION_29_2(v27) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v29 = OUTLINED_FUNCTION_269_3();
                            v31 = v1 == v29 && v0 == v30;
                            if (v31 || (OUTLINED_FUNCTION_0_9(v29, v30) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v32 = v1 == 0x494F5065756C42 && v0 == 0xE700000000000000;
                              if (v32 || (OUTLINED_FUNCTION_22_7(0x494F5065756C42) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v33 = v1 == 0x556D65744970614DLL && v0 == 0xEA00000000004C52;
                                if (v33 || (OUTLINED_FUNCTION_0_9(0x556D65744970614DLL, 0xEA00000000004C52) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v34 = v1 == 0x50746E6572727543 && v0 == 0xEA0000000000494FLL;
                                  if (v34 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v35 = OUTLINED_FUNCTION_138();
                                    if (v4 && v36 == v0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_0_9(v35, v36);
                                      OUTLINED_FUNCTION_89();
                                      v5 = 16;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.VisitPlaceTypes.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 4804432;
  if (*v0 != 1)
  {
    v1 = 0x73736572646441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4804417;
  }
}

void MomentsEventData.VisitPlaceTypes.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 4804417 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 4804432 && v0 == 0xE300000000000000;
      if (v7 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_264_1();
        v9 = OUTLINED_FUNCTION_160_9(v8);
        if (v4 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_22_7(v9);
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

uint64_t MomentsEventData.PlaceInferenceGranularityType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x5073736572646441;
  switch(*v0)
  {
    case 1:
      result = 0x746565727453;
      break;
    case 2:
      result = OUTLINED_FUNCTION_162_10();
      break;
    case 3:
      result = OUTLINED_FUNCTION_184_8();
      break;
    case 4:
      result = 0x7972746E756F43;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.PlaceInferenceGranularityType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_264_1() & 0xFFFFFFFFFFFFLL | 0x5073000000000000;
    v8 = v1 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = v1 == 0x746565727453 && v0 == 0xE600000000000000;
      if (v9 || (OUTLINED_FUNCTION_21_38(0x746565727453) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_209_2();
        v12 = v4 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = v1 == 2037672259 && v0 == 0xE400000000000000;
          if (v13 || (OUTLINED_FUNCTION_19_8(2037672259) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_103_14();
            if (v4 && v0 == 0xE700000000000000)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_22_7(v14);
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_214_2();
              if (v4)
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

uint64_t MomentsEventData.RankingType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x3031706F54;
  if (*v0 != 1)
  {
    v1 = 1953719634;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 896560980;
  }
}

void MomentsEventData.RankingType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 896560980 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(896560980) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x3031706F54 && v0 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_15_14(0x3031706F54) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 1953719634 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8(1953719634);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.LabelConfidenceScoreType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 1751607624;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7827276;
  }
}

void _s27IntelligencePlatformLibrary16MomentsEventDataV24LabelConfidenceScoreTypeOyAESgSScfC_0()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 7827276 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_91_15();
      v8 = v4 && v0 == 0xE600000000000000;
      if (v8 || (OUTLINED_FUNCTION_21_38(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 1751607624 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8(1751607624);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.DistanceFromHomeType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1918985550;
  switch(*v0)
  {
    case 1:
      result = 0x6D756964654DLL;
      break;
    case 2:
      result = 7496006;
      break;
    case 3:
      result = 0x7261466F53;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.DistanceFromHomeType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1918985550 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(1918985550) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_91_15();
      v8 = v4 && v0 == 0xE600000000000000;
      if (v8 || (OUTLINED_FUNCTION_21_38(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 7496006 && v0 == 0xE300000000000000;
        if (v9 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x7261466F53 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_15_14(0x7261466F53);
          OUTLINED_FUNCTION_89();
          v5 = 3;
          if ((v1 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.CallDurationTypes.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 1735290700;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F6853;
  }
}

void MomentsEventData.CallDurationTypes.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_154_9(1919903827);
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_15_14(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_91_15();
      v9 = v4 && v0 == 0xE600000000000000;
      if (v9 || (OUTLINED_FUNCTION_21_38(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 1735290700 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8(1735290700);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.InteractionCountTypes.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 1751607624;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7824710;
  }
}

void MomentsEventData.InteractionCountTypes.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 7824710 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_91_15();
      v8 = v4 && v0 == 0xE600000000000000;
      if (v8 || (OUTLINED_FUNCTION_21_38(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 1751607624 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8(1751607624);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void MomentsEventData.BundleInteractionTypes.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_275_3();
        break;
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      case 3:
        OUTLINED_FUNCTION_199_3(0x43796C696144);
        break;
      case 4:
        OUTLINED_FUNCTION_187_1();
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

void MomentsEventData.BundleInteractionTypes.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6563655274736F4DLL && v0 == 0xEE006C6C6143746ELL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6563655274736F4DLL, 0xEE006C6C6143746ELL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_275_3();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_206_3();
        OUTLINED_FUNCTION_26_4();
        v12 = v4 && v11 == v0;
        if (v12 || (OUTLINED_FUNCTION_44_25(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = OUTLINED_FUNCTION_223_3(0x43796C696144);
          v15 = v4 && v0 == v14;
          if (v15 || (OUTLINED_FUNCTION_30_22(v13, 108) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v16 = OUTLINED_FUNCTION_138();
            if (v4 && v17 == v0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(v16, v17);
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_214_2();
              if (v4)
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

uint64_t MomentsEventData.CallPlaceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1802661719;
  if (*v0 != 1)
  {
    v1 = 0x726568744FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701670728;
  }
}

void MomentsEventData.CallPlaceType.init(_:)()
{
  v1 = OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7(v1) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_201_3();
    v5 = v3 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_19_8(1701670728) & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_130_12();
      v6 = v3 && v0 == 0xE400000000000000;
      if (v6 || (OUTLINED_FUNCTION_19_8(1802661719) & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_69_20();
        if (v3 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_15_14(v7);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.AvailabilityType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6C69617641746F4ELL;
  }

  return 0x6C62616C69617641;
}

void MomentsEventData.AvailabilityType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6C62616C69617641 && v0 == 0xE900000000000065;
    if (v6 || (OUTLINED_FUNCTION_30_22(0x6C62616C69617641, 101) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x6C69617641746F4ELL && v0 == 0xEC000000656C6261)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x6C69617641746F4ELL, 0xEC000000656C6261);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.AnomalousType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x616D6F6E41746F4ELL;
  }

  return 0x756F6C616D6F6E41;
}

void MomentsEventData.AnomalousType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x756F6C616D6F6E41 && v0 == 0xE900000000000073;
    if (v6 || (OUTLINED_FUNCTION_30_22(0x756F6C616D6F6E41, 115) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x616D6F6E41746F4ELL && v0 == 0xEC00000073756F6CLL)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x616D6F6E41746F4ELL, 0xEC00000073756F6CLL);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.StateOfMindLabel.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    case 30:
      v3 = 30;
      break;
    case 31:
      v3 = 31;
      break;
    case 32:
      v3 = 32;
      break;
    case 33:
      v3 = 33;
      break;
    case 34:
      v3 = 34;
      break;
    case 35:
      v3 = 35;
      break;
    case 36:
      v3 = 36;
      break;
    case 37:
      v3 = 37;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.StateOfMindLabel.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v219 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v219, v220, v221, v222, &qword_1EAE42D48, &qword_193997018);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v223 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v223, v224, v225, v226, &qword_1EAE42D48, &qword_193997018);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v227, v228, v229, v230, v231, v232);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v233 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v233, v234, v235, v236, &qword_1EAE42D48, &qword_193997018);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v237 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v237, v238, v239, v240, &qword_1EAE42D48, &qword_193997018);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v241 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v241, v242, v243, v244, &qword_1EAE42D48, &qword_193997018);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v245 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v245, v246, v247, v248, &qword_1EAE42D48, &qword_193997018);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v249 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v249, v250, v251, v252, &qword_1EAE42D48, &qword_193997018);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v253 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v253, v254, v255, v256, &qword_1EAE42D48, &qword_193997018);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v257 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v257, v258, v259, v260, &qword_1EAE42D48, &qword_193997018);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v261 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v261, v262, v263, v264, &qword_1EAE42D48, &qword_193997018);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v265 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v265, v266, v267, v268, &qword_1EAE42D48, &qword_193997018);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v269 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v269, v270, v271, v272, &qword_1EAE42D48, &qword_193997018);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v273 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v273, v274, v275, v276, &qword_1EAE42D48, &qword_193997018);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v277 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v277, v278, v279, v280, &qword_1EAE42D48, &qword_193997018);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v281 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v281, v282, v283, v284, &qword_1EAE42D48, &qword_193997018);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v285 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v285, v286, v287, v288, &qword_1EAE42D48, &qword_193997018);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v289 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v289, v290, v291, v292, &qword_1EAE42D48, &qword_193997018);
    v99 = v96;
  }

  OUTLINED_FUNCTION_19_54(v96, v97, v98, v99);
  if (!(v19 ^ v20 | v13))
  {
    v293 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v293, v294, v295, v296, &qword_1EAE42D48, &qword_193997018);
    v104 = v101;
  }

  OUTLINED_FUNCTION_20_47(v101, v102, v103, v104);
  if (!(v19 ^ v20 | v13))
  {
    v297 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_84_2(v297, v298, v299, v300, &qword_1EAE42D48, &qword_193997018);
    v109 = v106;
  }

  OUTLINED_FUNCTION_25_36(v106, v107, v108, v109);
  if (!(v19 ^ v20 | v13))
  {
    v301 = OUTLINED_FUNCTION_39(v115);
    v111 = OUTLINED_FUNCTION_85(v301, v302, v303, v304, &qword_1EAE42D48, &qword_193997018);
    v114 = v111;
  }

  OUTLINED_FUNCTION_22_38(v111, v112, v113, v114);
  if (!(v19 ^ v20 | v13))
  {
    v305 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v305, v306, v307, v308, &qword_1EAE42D48, &qword_193997018);
    v119 = v116;
  }

  OUTLINED_FUNCTION_24_46(v116, v117, v118, v119);
  if (!(v19 ^ v20 | v13))
  {
    v309 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_85(v309, v310, v311, v312, &qword_1EAE42D48, &qword_193997018);
    v124 = v121;
  }

  OUTLINED_FUNCTION_21_45(v121, v122, v123, v124);
  if (!(v19 ^ v20 | v13))
  {
    v313 = OUTLINED_FUNCTION_39(v130);
    v126 = OUTLINED_FUNCTION_84_2(v313, v314, v315, v316, &qword_1EAE42D48, &qword_193997018);
    v129 = v126;
  }

  OUTLINED_FUNCTION_23_44(v126, v127, v128, v129);
  if (!(v19 ^ v20 | v13))
  {
    v317 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_85(v317, v318, v319, v320, &qword_1EAE42D48, &qword_193997018);
    v134 = v131;
  }

  OUTLINED_FUNCTION_28_32(v131, v132, v133, v134);
  if (!(v19 ^ v20 | v13))
  {
    v321 = OUTLINED_FUNCTION_39(v140);
    v136 = OUTLINED_FUNCTION_84_2(v321, v322, v323, v324, &qword_1EAE42D48, &qword_193997018);
    v139 = v136;
  }

  OUTLINED_FUNCTION_32_33(v136, v137, v138, v139);
  if (!(v19 ^ v20 | v13))
  {
    v325 = OUTLINED_FUNCTION_39(v145);
    v141 = OUTLINED_FUNCTION_85(v325, v326, v327, v328, &qword_1EAE42D48, &qword_193997018);
    v144 = v141;
  }

  OUTLINED_FUNCTION_30_29(v141, v142, v143, v144);
  if (!(v19 ^ v20 | v13))
  {
    v329 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_84_2(v329, v330, v331, v332, &qword_1EAE42D48, &qword_193997018);
    v149 = v146;
  }

  OUTLINED_FUNCTION_31_39(v146, v147, v148, v149);
  if (!(v19 ^ v20 | v13))
  {
    v333 = OUTLINED_FUNCTION_39(v155);
    v151 = OUTLINED_FUNCTION_85(v333, v334, v335, v336, &qword_1EAE42D48, &qword_193997018);
    v154 = v151;
  }

  OUTLINED_FUNCTION_47_5(v151, v152, v153, v154);
  OUTLINED_FUNCTION_4(v156);
  OUTLINED_FUNCTION_222_2();
  if (!(v19 ^ v20 | v13))
  {
    v337 = OUTLINED_FUNCTION_39(v161);
    v157 = OUTLINED_FUNCTION_84_2(v337, v338, v339, v340, &qword_1EAE42D48, &qword_193997018);
    v160 = v157;
  }

  OUTLINED_FUNCTION_50(v157, v158, v159, v160);
  OUTLINED_FUNCTION_4(v162);
  OUTLINED_FUNCTION_309_1();
  if (!(v19 ^ v20 | v13))
  {
    v341 = OUTLINED_FUNCTION_39(v167);
    v163 = OUTLINED_FUNCTION_85(v341, v342, v343, v344, &qword_1EAE42D48, &qword_193997018);
    v166 = v163;
  }

  OUTLINED_FUNCTION_47_5(v163, v164, v165, v166);
  OUTLINED_FUNCTION_4(v168);
  OUTLINED_FUNCTION_308_2();
  if (!(v19 ^ v20 | v13))
  {
    v345 = OUTLINED_FUNCTION_39(v173);
    v169 = OUTLINED_FUNCTION_84_2(v345, v346, v347, v348, &qword_1EAE42D48, &qword_193997018);
    v172 = v169;
  }

  OUTLINED_FUNCTION_50(v169, v170, v171, v172);
  OUTLINED_FUNCTION_4(v174);
  if (v0 + 33 > (v179 >> 1))
  {
    v349 = OUTLINED_FUNCTION_39(v179);
    v175 = OUTLINED_FUNCTION_85(v349, v350, v351, v352, &qword_1EAE42D48, &qword_193997018);
    v178 = v175;
  }

  OUTLINED_FUNCTION_47_5(v175, v176, v177, v178);
  OUTLINED_FUNCTION_4(v180);
  if (v0 + 34 > (v185 >> 1))
  {
    v353 = OUTLINED_FUNCTION_39(v185);
    v181 = OUTLINED_FUNCTION_84_2(v353, v354, v355, v356, &qword_1EAE42D48, &qword_193997018);
    v184 = v181;
  }

  OUTLINED_FUNCTION_50(v181, v182, v183, v184);
  OUTLINED_FUNCTION_4(v186);
  if (v0 + 35 > (v191 >> 1))
  {
    v357 = OUTLINED_FUNCTION_39(v191);
    v187 = OUTLINED_FUNCTION_85(v357, v358, v359, v360, &qword_1EAE42D48, &qword_193997018);
    v190 = v187;
  }

  OUTLINED_FUNCTION_47_5(v187, v188, v189, v190);
  OUTLINED_FUNCTION_4(v192);
  if (v0 + 36 > (v197 >> 1))
  {
    v361 = OUTLINED_FUNCTION_39(v197);
    v193 = OUTLINED_FUNCTION_84_2(v361, v362, v363, v364, &qword_1EAE42D48, &qword_193997018);
    v196 = v193;
  }

  OUTLINED_FUNCTION_50(v193, v194, v195, v196);
  OUTLINED_FUNCTION_4(v198);
  if (v0 + 37 > (v203 >> 1))
  {
    v365 = OUTLINED_FUNCTION_39(v203);
    v199 = OUTLINED_FUNCTION_85(v365, v366, v367, v368, &qword_1EAE42D48, &qword_193997018);
    v202 = v199;
  }

  OUTLINED_FUNCTION_47_5(v199, v200, v201, v202);
  OUTLINED_FUNCTION_4(v204);
  if (v0 + 38 > (v209 >> 1))
  {
    v369 = OUTLINED_FUNCTION_39(v209);
    v205 = OUTLINED_FUNCTION_84_2(v369, v370, v371, v372, &qword_1EAE42D48, &qword_193997018);
    v208 = v205;
  }

  OUTLINED_FUNCTION_50(v205, v206, v207, v208);
  OUTLINED_FUNCTION_4(v210);
  if (v0 + 39 > (v215 >> 1))
  {
    v373 = OUTLINED_FUNCTION_39(v215);
    v211 = OUTLINED_FUNCTION_85(v373, v374, v375, v376, &qword_1EAE42D48, &qword_193997018);
    v214 = v211;
  }

  OUTLINED_FUNCTION_47_5(v211, v212, v213, v214);
  return OUTLINED_FUNCTION_89_3(v216, v217);
}

void MomentsEventData.StateOfMindLabel.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_186_4(1919381057);
        break;
      case 3:
        v1 = 1769500225;
        goto LABEL_25;
      case 4:
        OUTLINED_FUNCTION_194_4(0x656D61687341);
        break;
      case 5:
        OUTLINED_FUNCTION_115_12(1986097730);
        break;
      case 7:
        OUTLINED_FUNCTION_111_14(0x6E65746E6F43);
        break;
      case 8:
        OUTLINED_FUNCTION_279_2();
        break;
      case 9:
        OUTLINED_FUNCTION_167_7();
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_194_4(0x657469637845);
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_118_14();
        break;
      case 0x10:
        OUTLINED_FUNCTION_186_4(1886413128);
        break;
      case 0x11:
        OUTLINED_FUNCTION_262_1(0x656C65706F48);
        break;
      case 0x13:
        v1 = 1818322250;
LABEL_25:
        OUTLINED_FUNCTION_200_5(v1 & 0xFFFF0000FFFFFFFFLL | 0x756F00000000);
        break;
      case 0x18:
        OUTLINED_FUNCTION_197_4(1970238032);
        break;
      case 0x19:
        OUTLINED_FUNCTION_185_6(0x7665696C6552);
        break;
      case 0x1CLL:
        OUTLINED_FUNCTION_185_6(0x737365727453);
        break;
      case 0x1ELL:
        OUTLINED_FUNCTION_194_4(0x656972726F57);
        break;
      case 0x1FLL:
        OUTLINED_FUNCTION_194_4(0x65796F6E6E41);
        break;
      case 0x20:
        OUTLINED_FUNCTION_164_7(0x6469666E6F43);
        break;
      case 0x21:
        OUTLINED_FUNCTION_194_4(0x656E69617244);
        break;
      case 0x23:
        OUTLINED_FUNCTION_280_2();
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

void MomentsEventData.StateOfMindLabel.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_189_2(2053205313);
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_189_2(1937075521);
      v9 = v4 && v0 == 0xE600000000000000;
      if (v9 || (OUTLINED_FUNCTION_21_38(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_187_4(1919381057);
        v11 = v4 && v0 == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_15_14(v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_160_9(0x756F69786E41);
          v13 = v4 && v0 == 0xE700000000000000;
          if (v13 || (OUTLINED_FUNCTION_22_7(v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_141_9(0x656D61687341);
            v15 = v4 && v0 == 0xE700000000000000;
            if (v15 || (OUTLINED_FUNCTION_22_7(v14) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v16 = OUTLINED_FUNCTION_116_15(1986097730);
              v17 = v4 && v0 == 0xE500000000000000;
              if (v17 || (OUTLINED_FUNCTION_15_14(v16) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v18 = v1 == 1835819331 && v0 == 0xE400000000000000;
                if (v18 || (OUTLINED_FUNCTION_19_8(1835819331) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v19 = OUTLINED_FUNCTION_106_16(0x6E65746E6F43);
                  v20 = v4 && v0 == 0xE700000000000000;
                  if (v20 || (OUTLINED_FUNCTION_22_7(v19) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v21 = OUTLINED_FUNCTION_279_2();
                    v23 = v1 == v21 && v0 == v22;
                    if (v23 || (OUTLINED_FUNCTION_0_9(v21, v22) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v24 = v1 == 0x6172756F63736944 && v0 == 0xEB00000000646567;
                      if (v24 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v25 = OUTLINED_FUNCTION_294_3(0x737567736944);
                        v26 = v4 && v0 == 0xE900000000000064;
                        if (v26 || (OUTLINED_FUNCTION_30_22(v25, 100) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v27 = v1 == 0x7361727261626D45 && v0 == 0xEB00000000646573;
                          if (v27 || (OUTLINED_FUNCTION_0_9(0x7361727261626D45, 0xEB00000000646573) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v28 = OUTLINED_FUNCTION_141_9(0x657469637845);
                            v29 = v4 && v0 == 0xE700000000000000;
                            if (v29 || (OUTLINED_FUNCTION_22_7(v28) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_192_3(0x727473757246);
                              v30 = v4 && v0 == 0xEA00000000006465;
                              if (v30 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v31 = v1 == 0x6C75666574617247 && v0 == 0xE800000000000000;
                                if (v31 || (OUTLINED_FUNCTION_29_2(0x6C75666574617247) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v32 = v1 == 0x79746C697547 && v0 == 0xE600000000000000;
                                  if (v32 || (OUTLINED_FUNCTION_21_38(0x79746C697547) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v33 = OUTLINED_FUNCTION_187_4(1886413128);
                                    v34 = v4 && v0 == 0xE500000000000000;
                                    if (v34 || (OUTLINED_FUNCTION_15_14(v33) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v35 = OUTLINED_FUNCTION_310_1(0x656C65706F48);
                                      v36 = v4 && v0 == 0xE800000000000000;
                                      if (v36 || (OUTLINED_FUNCTION_29_2(v35) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v37 = OUTLINED_FUNCTION_294_3(0x617469727249);
                                        v38 = v4 && v0 == 0xE900000000000064;
                                        if (v38 || (OUTLINED_FUNCTION_30_22(v37, 100) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v39 = OUTLINED_FUNCTION_160_9(0x756F6C61654ALL);
                                          v40 = v4 && v0 == 0xE700000000000000;
                                          if (v40 || (OUTLINED_FUNCTION_22_7(v39) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v41 = v1 == 0x6C7566796F4ALL && v0 == 0xE600000000000000;
                                            if (v41 || (OUTLINED_FUNCTION_21_38(0x6C7566796F4ALL) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v42 = v1 == 0x796C656E6F4CLL && v0 == 0xE600000000000000;
                                              if (v42 || (OUTLINED_FUNCTION_21_38(0x796C656E6F4CLL) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v43 = v1 == 0x616E6F6973736150 && v0 == 0xEA00000000006574;
                                                if (v43 || (OUTLINED_FUNCTION_0_9(0x616E6F6973736150, 0xEA00000000006574) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v44 = v1 == 0x6C75666563616550 && v0 == 0xE800000000000000;
                                                  if (v44 || (OUTLINED_FUNCTION_29_2(0x6C75666563616550) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v45 = OUTLINED_FUNCTION_305_1(1970238032);
                                                    v46 = v4 && v0 == 0xE500000000000000;
                                                    if (v46 || (OUTLINED_FUNCTION_15_14(v45) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      v47 = OUTLINED_FUNCTION_93_2(0x7665696C6552);
                                                      v48 = v4 && v0 == 0xE800000000000000;
                                                      if (v48 || (OUTLINED_FUNCTION_29_2(v47) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v49 = v1 == 6578515 && v0 == 0xE300000000000000;
                                                        if (v49 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v50 = OUTLINED_FUNCTION_189_2(1918985043);
                                                          v51 = v4 && v0 == 0xE600000000000000;
                                                          if (v51 || (OUTLINED_FUNCTION_21_38(v50) & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            v52 = OUTLINED_FUNCTION_93_2(0x737365727453);
                                                            v53 = v4 && v0 == 0xE800000000000000;
                                                            if (v53 || (OUTLINED_FUNCTION_29_2(v52) & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              v54 = v1 == 0x6573697270727553 && v0 == 0xE900000000000064;
                                                              if (v54 || (OUTLINED_FUNCTION_30_22(0x6573697270727553, 100) & 1) != 0)
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                v55 = OUTLINED_FUNCTION_141_9(0x656972726F57);
                                                                v56 = v4 && v0 == 0xE700000000000000;
                                                                if (v56 || (OUTLINED_FUNCTION_22_7(v55) & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  v57 = OUTLINED_FUNCTION_141_9(0x65796F6E6E41);
                                                                  v58 = v4 && v0 == 0xE700000000000000;
                                                                  if (v58 || (OUTLINED_FUNCTION_22_7(v57) & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    v59 = v1 == 0x6E656469666E6F43 && v0 == 0xE900000000000074;
                                                                    if (v59 || (OUTLINED_FUNCTION_0_9(0x6E656469666E6F43, 0xE900000000000074) & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      v60 = OUTLINED_FUNCTION_141_9(0x656E69617244);
                                                                      v61 = v4 && v0 == 0xE700000000000000;
                                                                      if (v61 || (OUTLINED_FUNCTION_22_7(v60) & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        v62 = v1 == 0x6C756665706F48 && v0 == 0xE700000000000000;
                                                                        if (v62 || (OUTLINED_FUNCTION_22_7(0x6C756665706F48) & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          v63 = OUTLINED_FUNCTION_280_2();
                                                                          v65 = v1 == v63 && v0 == v64;
                                                                          if (v65 || (OUTLINED_FUNCTION_0_9(v63, v64) & 1) != 0)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            v66 = v1 == 0x6C6568777265764FLL && v0 == 0xEB0000000064656DLL;
                                                                            if (v66 || (OUTLINED_FUNCTION_0_9(0x6C6568777265764FLL, 0xEB0000000064656DLL) & 1) != 0)
                                                                            {

                                                                              OUTLINED_FUNCTION_303_1();
                                                                            }

                                                                            else if (v1 == 0x6569667369746153 && v0 == 0xE900000000000064)
                                                                            {

                                                                              OUTLINED_FUNCTION_302_2();
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_30_22(0x6569667369746153, 100);
                                                                              OUTLINED_FUNCTION_89();
                                                                              v5 = 37;
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

uint64_t MomentsEventData.StateOfMindDomain.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.StateOfMindDomain.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v108 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v108, v109, v110, v111, &qword_1EAE42D40, &qword_193997010);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v112 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v112, v113, v114, v115, &qword_1EAE42D40, &qword_193997010);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v116, v117, v118, v119, v120, v121);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v122 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v122, v123, v124, v125, &qword_1EAE42D40, &qword_193997010);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v126 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v126, v127, v128, v129, &qword_1EAE42D40, &qword_193997010);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v130 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v130, v131, v132, v133, &qword_1EAE42D40, &qword_193997010);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v134 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v134, v135, v136, v137, &qword_1EAE42D40, &qword_193997010);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v138 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v138, v139, v140, v141, &qword_1EAE42D40, &qword_193997010);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v142 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v142, v143, v144, v145, &qword_1EAE42D40, &qword_193997010);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v146 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v146, v147, v148, v149, &qword_1EAE42D40, &qword_193997010);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v150 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v150, v151, v152, v153, &qword_1EAE42D40, &qword_193997010);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v154 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v154, v155, v156, v157, &qword_1EAE42D40, &qword_193997010);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v158 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v158, v159, v160, v161, &qword_1EAE42D40, &qword_193997010);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v162 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v162, v163, v164, v165, &qword_1EAE42D40, &qword_193997010);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v166 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v166, v167, v168, v169, &qword_1EAE42D40, &qword_193997010);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v170 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v170, v171, v172, v173, &qword_1EAE42D40, &qword_193997010);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v174 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v174, v175, v176, v177, &qword_1EAE42D40, &qword_193997010);
    v93 = v90;
  }

  OUTLINED_FUNCTION_17_41(v90, v91, v92, v93);
  if (!(v18 ^ v19 | v12))
  {
    v178 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v178, v179, v180, v181, &qword_1EAE42D40, &qword_193997010);
    v98 = v95;
  }

  OUTLINED_FUNCTION_19_54(v95, v96, v97, v98);
  if (!(v18 ^ v19 | v12))
  {
    v182 = OUTLINED_FUNCTION_39(v104);
    v100 = OUTLINED_FUNCTION_85(v182, v183, v184, v185, &qword_1EAE42D40, &qword_193997010);
    v103 = v100;
  }

  OUTLINED_FUNCTION_47_5(v100, v101, v102, v103);
  return OUTLINED_FUNCTION_89_3(v105, v106);
}

void MomentsEventData.StateOfMindDomain.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_250_2();
        break;
      case 2:
        OUTLINED_FUNCTION_122_10(1769234756);
        break;
      case 3:
        OUTLINED_FUNCTION_144();
        break;
      case 4:
        OUTLINED_FUNCTION_170_7();
        break;
      case 5:
        OUTLINED_FUNCTION_200_5(0x73656E746946);
        break;
      case 6:
        v1 = OUTLINED_FUNCTION_292_1();
        goto LABEL_16;
      case 8:
        v1 = 0x656962626F48;
LABEL_16:
        OUTLINED_FUNCTION_200_5(v1);
        break;
      case 0xALL:
        OUTLINED_FUNCTION_186_4(1701736269);
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_166_7(0x656E74726150);
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_265_2();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_198_2(1802723668);
        break;
      case 0x10:
        OUTLINED_FUNCTION_131_10();
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

void MomentsEventData.StateOfMindDomain.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x74696E756D6D6F43 && v0 == 0xE900000000000079;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x74696E756D6D6F43, 0xE900000000000079) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_250_2();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_113_12(1769234756);
        v11 = v4 && v0 == 0xE600000000000000;
        if (v11 || (OUTLINED_FUNCTION_21_38(v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = v1 == 0x6F69746163756445 && v0 == 0xE90000000000006ELL;
          if (v12 || (OUTLINED_FUNCTION_30_22(0x6F69746163756445, 110) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = OUTLINED_FUNCTION_144_9();
            v14 = v4 && v0 == 0xE600000000000000;
            if (v14 || (OUTLINED_FUNCTION_21_38(v13) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v15 = OUTLINED_FUNCTION_160_9(0x73656E746946);
              v16 = v4 && v0 == 0xE700000000000000;
              if (v16 || (OUTLINED_FUNCTION_22_7(v15) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v17 = OUTLINED_FUNCTION_292_1();
                v18 = OUTLINED_FUNCTION_160_9(v17);
                v19 = v4 && v0 == 0xE700000000000000;
                if (v19 || (OUTLINED_FUNCTION_22_7(v18) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v20 = OUTLINED_FUNCTION_304_2();
                  v21 = v4 && v0 == 0xE600000000000000;
                  if (v21 || (OUTLINED_FUNCTION_21_38(v20) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v22 = OUTLINED_FUNCTION_160_9(0x656962626F48);
                    v23 = v4 && v0 == 0xE700000000000000;
                    if (v23 || (OUTLINED_FUNCTION_22_7(v22) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v24 = v1 == 0x797469746E656449 && v0 == 0xE800000000000000;
                      if (v24 || (OUTLINED_FUNCTION_29_2(0x797469746E656449) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v25 = OUTLINED_FUNCTION_187_4(1701736269);
                        v26 = v4 && v0 == 0xE500000000000000;
                        if (v26 || (OUTLINED_FUNCTION_15_14(v25) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v27 = OUTLINED_FUNCTION_181_8(0x656E74726150);
                          v28 = v4 && v0 == 0xE700000000000000;
                          if (v28 || (OUTLINED_FUNCTION_22_7(v27) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v29 = v1 == 0x65726143666C6553 && v0 == 0xE800000000000000;
                            if (v29 || (OUTLINED_FUNCTION_29_2(0x65726143666C6553) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v30 = OUTLINED_FUNCTION_265_2();
                              v32 = v1 == v30 && v0 == v31;
                              if (v32 || (OUTLINED_FUNCTION_0_9(v30, v31) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v33 = OUTLINED_FUNCTION_307_1(1802723668);
                                v34 = v4 && v0 == 0xE500000000000000;
                                if (v34 || (OUTLINED_FUNCTION_15_14(v33) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v35 = v1 == 0x6C6576617254 && v0 == 0xE600000000000000;
                                  if (v35 || (OUTLINED_FUNCTION_21_38(0x6C6576617254) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_130_12();
                                    v36 = v4 && v0 == 0xE400000000000000;
                                    if (v36 || (OUTLINED_FUNCTION_19_8(1802661719) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v37 = OUTLINED_FUNCTION_181_8(0x656874616557);
                                      if (v4 && v0 == 0xE700000000000000)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_22_7(v37);
                                        OUTLINED_FUNCTION_89();
                                        v5 = 17;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.StateOfMindValenceClassification.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t static MomentsEventData.StateOfMindValenceClassification.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v53 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v53, v54, v55, v56, &qword_1EAE42D38, &qword_193997008);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v57 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v57, v58, v59, v60, &qword_1EAE42D38, &qword_193997008);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v61, v62, v63, v64, v65, v66);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v67 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v67, v68, v69, v70, &qword_1EAE42D38, &qword_193997008);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v71 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v71, v72, v73, v74, &qword_1EAE42D38, &qword_193997008);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v75 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v75, v76, v77, v78, &qword_1EAE42D38, &qword_193997008);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v79 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v79, v80, v81, v82, &qword_1EAE42D38, &qword_193997008);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v83 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v83, v84, v85, v86, &qword_1EAE42D38, &qword_193997008);
    v48 = v45;
  }

  OUTLINED_FUNCTION_50(v45, v46, v47, v48);
  return OUTLINED_FUNCTION_38_1(v50, v51);
}

void MomentsEventData.StateOfMindValenceClassification.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_75();
        break;
      case 3:
        OUTLINED_FUNCTION_149_10();
        break;
      case 4:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_287_3();
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

void MomentsEventData.StateOfMindValenceClassification.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v7 = v1 == 0x6C706E5579726556 && v0 == 0xEE00746E61736165;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x6C706E5579726556, 0xEE00746E61736165) & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v8 = v1 == 0x617361656C706E55 && v0 == 0xEA0000000000746ELL;
      if (v8 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
      {

        v6 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_206_3();
        OUTLINED_FUNCTION_38();
        v10 = v1 == (v2 | 2) && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_0_9(v2 + 2, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_208_2();
          v12 = v5 && v0 == 0xE700000000000000;
          if (v12 || (OUTLINED_FUNCTION_22_7(v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_26_4();
            v15 = v5 && v14 == v0;
            if (v15 || (OUTLINED_FUNCTION_44_25(v13, v14) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v16 = v1 == 0x746E617361656C50 && v0 == 0xE800000000000000;
              if (v16 || (OUTLINED_FUNCTION_29_2(0x746E617361656C50) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v17 = OUTLINED_FUNCTION_287_3();
                if (v1 == v17 && v0 == v18)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_0_9(v17, v18);
                  OUTLINED_FUNCTION_89();
                  v6 = 6;
                  if ((v1 & 1) == 0)
                  {
                    v6 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t MomentsEventData.StateOfMindReflectiveInterval.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x796C696144;
  }

  return 0x7261746E656D6F4DLL;
}

void MomentsEventData.StateOfMindReflectiveInterval.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_155_7(0x746E656D6F4DLL);
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_30_22(v6, 121) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_187_4(1818845508);
      if (v4 && v0 == 0xE500000000000000)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_15_14(v9);
        OUTLINED_FUNCTION_89();
        v5 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.PersonRelationshipTag.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.PersonRelationshipTag.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v164 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v164, v165, v166, v167, &qword_1EAE42D28, &qword_193996FF8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v168 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v168, v169, v170, v171, &qword_1EAE42D28, &qword_193996FF8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v172, v173, v174, v175, v176, v177);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v178 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v178, v179, v180, v181, &qword_1EAE42D28, &qword_193996FF8);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v182 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v182, v183, v184, v185, &qword_1EAE42D28, &qword_193996FF8);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v186 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v186, v187, v188, v189, &qword_1EAE42D28, &qword_193996FF8);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v190 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v190, v191, v192, v193, &qword_1EAE42D28, &qword_193996FF8);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v194 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v194, v195, v196, v197, &qword_1EAE42D28, &qword_193996FF8);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v198 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v198, v199, v200, v201, &qword_1EAE42D28, &qword_193996FF8);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v202 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v202, v203, v204, v205, &qword_1EAE42D28, &qword_193996FF8);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v206 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v206, v207, v208, v209, &qword_1EAE42D28, &qword_193996FF8);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v210 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v210, v211, v212, v213, &qword_1EAE42D28, &qword_193996FF8);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v214 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v214, v215, v216, v217, &qword_1EAE42D28, &qword_193996FF8);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v218 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v218, v219, v220, v221, &qword_1EAE42D28, &qword_193996FF8);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v222 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v222, v223, v224, v225, &qword_1EAE42D28, &qword_193996FF8);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v226 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v226, v227, v228, v229, &qword_1EAE42D28, &qword_193996FF8);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v230 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v230, v231, v232, v233, &qword_1EAE42D28, &qword_193996FF8);
    v93 = v90;
  }

  OUTLINED_FUNCTION_17_41(v90, v91, v92, v93);
  if (!(v18 ^ v19 | v12))
  {
    v234 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v234, v235, v236, v237, &qword_1EAE42D28, &qword_193996FF8);
    v98 = v95;
  }

  OUTLINED_FUNCTION_19_54(v95, v96, v97, v98);
  if (!(v18 ^ v19 | v12))
  {
    v238 = OUTLINED_FUNCTION_39(v104);
    v100 = OUTLINED_FUNCTION_85(v238, v239, v240, v241, &qword_1EAE42D28, &qword_193996FF8);
    v103 = v100;
  }

  OUTLINED_FUNCTION_20_47(v100, v101, v102, v103);
  if (!(v18 ^ v19 | v12))
  {
    v242 = OUTLINED_FUNCTION_39(v109);
    v105 = OUTLINED_FUNCTION_84_2(v242, v243, v244, v245, &qword_1EAE42D28, &qword_193996FF8);
    v108 = v105;
  }

  OUTLINED_FUNCTION_25_36(v105, v106, v107, v108);
  if (!(v18 ^ v19 | v12))
  {
    v246 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v246, v247, v248, v249, &qword_1EAE42D28, &qword_193996FF8);
    v113 = v110;
  }

  OUTLINED_FUNCTION_22_38(v110, v111, v112, v113);
  if (!(v18 ^ v19 | v12))
  {
    v250 = OUTLINED_FUNCTION_39(v119);
    v115 = OUTLINED_FUNCTION_84_2(v250, v251, v252, v253, &qword_1EAE42D28, &qword_193996FF8);
    v118 = v115;
  }

  OUTLINED_FUNCTION_24_46(v115, v116, v117, v118);
  if (!(v18 ^ v19 | v12))
  {
    v254 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v254, v255, v256, v257, &qword_1EAE42D28, &qword_193996FF8);
    v123 = v120;
  }

  OUTLINED_FUNCTION_21_45(v120, v121, v122, v123);
  if (!(v18 ^ v19 | v12))
  {
    v258 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_84_2(v258, v259, v260, v261, &qword_1EAE42D28, &qword_193996FF8);
    v128 = v125;
  }

  OUTLINED_FUNCTION_23_44(v125, v126, v127, v128);
  if (!(v18 ^ v19 | v12))
  {
    v262 = OUTLINED_FUNCTION_39(v134);
    v130 = OUTLINED_FUNCTION_85(v262, v263, v264, v265, &qword_1EAE42D28, &qword_193996FF8);
    v133 = v130;
  }

  OUTLINED_FUNCTION_28_32(v130, v131, v132, v133);
  if (!(v18 ^ v19 | v12))
  {
    v266 = OUTLINED_FUNCTION_39(v139);
    v135 = OUTLINED_FUNCTION_84_2(v266, v267, v268, v269, &qword_1EAE42D28, &qword_193996FF8);
    v138 = v135;
  }

  OUTLINED_FUNCTION_32_33(v135, v136, v137, v138);
  if (!(v18 ^ v19 | v12))
  {
    v270 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_85(v270, v271, v272, v273, &qword_1EAE42D28, &qword_193996FF8);
    v143 = v140;
  }

  OUTLINED_FUNCTION_30_29(v140, v141, v142, v143);
  if (!(v18 ^ v19 | v12))
  {
    v274 = OUTLINED_FUNCTION_39(v149);
    v145 = OUTLINED_FUNCTION_84_2(v274, v275, v276, v277, &qword_1EAE42D28, &qword_193996FF8);
    v148 = v145;
  }

  OUTLINED_FUNCTION_31_39(v145, v146, v147, v148);
  if (!(v18 ^ v19 | v12))
  {
    v278 = OUTLINED_FUNCTION_39(v154);
    v150 = OUTLINED_FUNCTION_85(v278, v279, v280, v281, &qword_1EAE42D28, &qword_193996FF8);
    v153 = v150;
  }

  OUTLINED_FUNCTION_47_5(v150, v151, v152, v153);
  OUTLINED_FUNCTION_4(v155);
  OUTLINED_FUNCTION_222_2();
  if (!(v18 ^ v19 | v12))
  {
    v282 = OUTLINED_FUNCTION_39(v160);
    v156 = OUTLINED_FUNCTION_84_2(v282, v283, v284, v285, &qword_1EAE42D28, &qword_193996FF8);
    v159 = v156;
  }

  OUTLINED_FUNCTION_50(v156, v157, v158, v159);
  return OUTLINED_FUNCTION_38_1(v161, v162);
}

void MomentsEventData.PersonRelationshipTag.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 3:
        OUTLINED_FUNCTION_170_7();
        break;
      case 7:
        OUTLINED_FUNCTION_71_21(0x6C626953u);
        break;
      case 8:
        OUTLINED_FUNCTION_166_7(0x6568746F7242);
        break;
      case 0xALL:
        OUTLINED_FUNCTION_190_3(0x50646E617247);
        break;
      case 0xBLL:
      case 0xCLL:
        OUTLINED_FUNCTION_167_7();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_194_4(0x6C696843794DLL);
        break;
      case 0xELL:
        OUTLINED_FUNCTION_197_4(1818847299);
        break;
      case 0x11:
        OUTLINED_FUNCTION_166_7(0x656E74726150);
        break;
      case 0x13:
        OUTLINED_FUNCTION_194_4(0x6E6162737548);
        break;
      case 0x14:
        OUTLINED_FUNCTION_292_1();
        break;
      case 0x16:
        OUTLINED_FUNCTION_162_10();
        break;
      case 0x17:
        OUTLINED_FUNCTION_258_3(0x6D6573756F48);
        break;
      case 0x19:
        OUTLINED_FUNCTION_84_16();
        break;
      case 0x1ALL:
        OUTLINED_FUNCTION_255_3(1699772749);
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

void MomentsEventData.PersonRelationshipTag.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_154_9(1702063701);
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_15_14(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_69_20();
      v9 = v4 && v0 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_15_14(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0x666C6573794DLL && v0 == 0xE600000000000000;
        if (v10 || (OUTLINED_FUNCTION_21_38(0x666C6573794DLL) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_144_9();
          v12 = v4 && v0 == 0xE600000000000000;
          if (v12 || (OUTLINED_FUNCTION_21_38(v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = v1 == 0x746E65726150 && v0 == 0xE600000000000000;
            if (v13 || (OUTLINED_FUNCTION_21_38(0x746E65726150) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v14 = v1 == 0x726568746F4DLL && v0 == 0xE600000000000000;
              if (v14 || (OUTLINED_FUNCTION_21_38(0x726568746F4DLL) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v15 = v1 == 0x726568746146 && v0 == 0xE600000000000000;
                if (v15 || (OUTLINED_FUNCTION_21_38(0x726568746146) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_46_24(0x6C626953u);
                  v17 = v4 && v0 == 0xE700000000000000;
                  if (v17 || (OUTLINED_FUNCTION_22_7(v16) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v18 = OUTLINED_FUNCTION_181_8(0x6568746F7242);
                    v19 = v4 && v0 == 0xE700000000000000;
                    if (v19 || (OUTLINED_FUNCTION_22_7(v18) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v20 = OUTLINED_FUNCTION_215_3(1953720659);
                      v21 = v4 && v0 == 0xE600000000000000;
                      if (v21 || (OUTLINED_FUNCTION_21_38(v20) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v22 = OUTLINED_FUNCTION_155_7(0x50646E617247);
                        v24 = v4 && v0 == v23;
                        if (v24 || (OUTLINED_FUNCTION_0_9(v22, v23) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v25 = v1 == 0x746F6D646E617247 && v0 == 0xEB00000000726568;
                          if (v25 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_192_3(0x66646E617247);
                            v26 = v4 && v0 == 0xEB00000000726568;
                            if (v26 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v27 = OUTLINED_FUNCTION_141_9(0x6C696843794DLL);
                              v28 = v4 && v0 == 0xE700000000000000;
                              if (v28 || (OUTLINED_FUNCTION_22_7(v27) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v29 = OUTLINED_FUNCTION_305_1(1818847299);
                                v30 = v4 && v0 == 0xE500000000000000;
                                if (v30 || (OUTLINED_FUNCTION_15_14(v29) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v31 = v1 == 7237459 && v0 == 0xE300000000000000;
                                  if (v31 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v32 = v1 == 0x7265746867756144 && v0 == 0xE800000000000000;
                                    if (v32 || (OUTLINED_FUNCTION_29_2(0x7265746867756144) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v33 = OUTLINED_FUNCTION_181_8(0x656E74726150);
                                      v34 = v4 && v0 == 0xE700000000000000;
                                      if (v34 || (OUTLINED_FUNCTION_22_7(v33) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v35 = v1 == 1701210455 && v0 == 0xE400000000000000;
                                        if (v35 || (OUTLINED_FUNCTION_19_8(1701210455) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v36 = OUTLINED_FUNCTION_141_9(0x6E6162737548);
                                          v37 = v4 && v0 == 0xE700000000000000;
                                          if (v37 || (OUTLINED_FUNCTION_22_7(v36) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v38 = OUTLINED_FUNCTION_292_1();
                                            v39 = v1 == v38 && v0 == 0xE600000000000000;
                                            if (v39 || (OUTLINED_FUNCTION_21_38(v38) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v40 = v1 == 0x72656B726F776F43 && v0 == 0xE800000000000000;
                                              if (v40 || (OUTLINED_FUNCTION_29_2(0x72656B726F776F43) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v41 = OUTLINED_FUNCTION_209_2();
                                                v42 = v4 && v0 == 0xE800000000000000;
                                                if (v42 || (OUTLINED_FUNCTION_29_2(v41) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v43 = OUTLINED_FUNCTION_192_3(0x6D6573756F48);
                                                  v45 = v4 && v0 == v44;
                                                  if (v45 || (OUTLINED_FUNCTION_30_22(v43, 101) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v46 = v1 == 0x696E6D756C41 && v0 == 0xE600000000000000;
                                                    if (v46 || (OUTLINED_FUNCTION_21_38(0x696E6D756C41) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_65_0();
                                                      v49 = v4 && v48 == v0;
                                                      if (v49 || (OUTLINED_FUNCTION_44_25(v47, v48) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v50 = OUTLINED_FUNCTION_154_9(1699772749);
                                                        v51 = v4 && v0 == 0xE500000000000000;
                                                        if (v51 || (OUTLINED_FUNCTION_15_14(v50) & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v52 = v1 == 0x676F44794DLL && v0 == 0xE500000000000000;
                                                          if (v52 || (OUTLINED_FUNCTION_15_14(0x676F44794DLL) & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            v53 = OUTLINED_FUNCTION_154_9(1631811917);
                                                            if (v4 && v0 == 0xE500000000000000)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_15_14(v53);
                                                              OUTLINED_FUNCTION_89();
                                                              v5 = 28;
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

uint64_t _s27IntelligencePlatformLibrary16MomentsEventDataV15PhotoSourceTypeO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

unint64_t MomentsEventData.OnboardingFlowCompletion.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7472617453746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x657373696D736944;
      break;
    case 2:
      result = 0x7472617453746547;
      break;
    case 3:
      result = OUTLINED_FUNCTION_185_6(0x6873696E6946);
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

void MomentsEventData.OnboardingFlowCompletion.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7472617453746F4ELL && v0 == 0xEA00000000006465;
    if (v6 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_180_8();
      v9 = v4 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_30_22(v7, 100) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0x7472617453746547 && v0 == 0xEA00000000006465;
        if (v10 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_93_2(0x6873696E6946);
          v12 = v4 && v0 == 0xE800000000000000;
          if (v12 || (OUTLINED_FUNCTION_29_2(v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_65_0();
            if (v4 && v13 == v0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_25_7(19, v13);
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_214_2();
              if (v4)
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

uint64_t _s27IntelligencePlatformLibrary16MomentsEventDataV0E12ProviderTypeO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t sub_19379FFFC()
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

  OUTLINED_FUNCTION_149(v30, v31, v32, v33);
  OUTLINED_FUNCTION_90_7(v35);
  OUTLINED_FUNCTION_301_2();
  if (!(v18 ^ v19 | v12))
  {
    v36 = OUTLINED_FUNCTION_33_5((v40 > 1), v37, v38, v39);
    v39 = v36;
  }

  OUTLINED_FUNCTION_160_1(v36, v37, v38, v39);
  OUTLINED_FUNCTION_90_7(v41);
  if (v1 + 7 > (v46 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39_2((v46 > 1), v43, v44, v45);
    v45 = v42;
  }

  OUTLINED_FUNCTION_149(v42, v43, v44, v45);
  OUTLINED_FUNCTION_90_7(v47);
  if (v1 + 8 > (v52 >> 1))
  {
    v48 = OUTLINED_FUNCTION_33_5((v52 > 1), v49, v50, v51);
    v51 = v48;
  }

  OUTLINED_FUNCTION_160_1(v48, v49, v50, v51);
  OUTLINED_FUNCTION_90_7(v53);
  if (v1 + 9 > (v58 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39_2((v58 > 1), v55, v56, v57);
    v57 = v54;
  }

  OUTLINED_FUNCTION_149(v54, v55, v56, v57);
  OUTLINED_FUNCTION_90_7(v59);
  if (v1 + 10 > (v64 >> 1))
  {
    v60 = OUTLINED_FUNCTION_33_5((v64 > 1), v61, v62, v63);
    v63 = v60;
  }

  OUTLINED_FUNCTION_160_1(v60, v61, v62, v63);
  OUTLINED_FUNCTION_90_7(v65);
  if (v1 + 11 > (v70 >> 1))
  {
    v66 = OUTLINED_FUNCTION_39_2((v70 > 1), v67, v68, v69);
    v69 = v66;
  }

  OUTLINED_FUNCTION_149(v66, v67, v68, v69);
  OUTLINED_FUNCTION_90_7(v71);
  if (v1 + 12 > (v76 >> 1))
  {
    v72 = OUTLINED_FUNCTION_33_5((v76 > 1), v73, v74, v75);
    v75 = v72;
  }

  OUTLINED_FUNCTION_160_1(v72, v73, v74, v75);
  return OUTLINED_FUNCTION_38_1(v77, v78);
}

void MomentsEventData.EventBundle.BundleSuperType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_143_8();
        break;
      case 2:
        OUTLINED_FUNCTION_111_14(0x6361746E6F43);
        break;
      case 3:
        OUTLINED_FUNCTION_98_17();
        break;
      case 4:
        OUTLINED_FUNCTION_118_14();
        break;
      case 5:
        OUTLINED_FUNCTION_42_30();
        break;
      case 6:
        OUTLINED_FUNCTION_62_4();
        break;
      case 7:
        OUTLINED_FUNCTION_66_23();
        break;
      case 9:
        OUTLINED_FUNCTION_244_2();
        break;
      case 0xALL:
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

void MomentsEventData.EventBundle.BundleSuperType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_113_12(1769239887);
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_107_14();
      v9 = v4 && v0 == 0xE800000000000000;
      if (v9 || (OUTLINED_FUNCTION_29_2(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_100_12();
        v11 = v4 && v0 == 0xE700000000000000;
        if (v11 || (OUTLINED_FUNCTION_22_7(v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_140_11();
          v13 = v4 && v0 == 0xE500000000000000;
          if (v13 || (OUTLINED_FUNCTION_15_14(v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_104_13();
            v14 = v4 && v0 == 0xEA0000000000656DLL;
            if (v14 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v15 = OUTLINED_FUNCTION_47_28();
              v17 = v4 && v0 == v16;
              if (v17 || (OUTLINED_FUNCTION_0_9(v15, v16) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v18 = OUTLINED_FUNCTION_79_16();
                v20 = v4 && v0 == v19;
                if (v20 || (OUTLINED_FUNCTION_30_22(v18, 110) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_66_23();
                  v23 = v1 == v21 && v0 == v22;
                  if (v23 || (OUTLINED_FUNCTION_0_9(v21, v22) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v24 = v1 == 0x6972657473756C43 && v0 == 0xEA0000000000676ELL;
                    if (v24 || (OUTLINED_FUNCTION_0_9(0x6972657473756C43, 0xEA0000000000676ELL) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v25 = OUTLINED_FUNCTION_244_2();
                      v27 = v1 == v25 && v0 == v26;
                      if (v27 || (OUTLINED_FUNCTION_0_9(v25, v26) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_65_0();
                        if (v4 && v28 == v0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_25_7(22, v28);
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

uint64_t MomentsEventData.EventBundle.BundleSubType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!v3 & v2)
  {
    switch(a1)
    {
      case 301:
        a1 = 13;
        break;
      case 302:
        a1 = 14;
        break;
      case 303:
        a1 = 15;
        break;
      case 801:
        a1 = 56;
        break;
      case 802:
        a1 = 57;
        break;
      case 1101:
        a1 = 74;
        break;
      case 1102:
        a1 = 75;
        break;
      case 1103:
        a1 = 76;
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 601:
        a1 = 30;
        break;
      case 602:
        a1 = 31;
        break;
      case 603:
        a1 = 32;
        break;
      case 604:
        a1 = 33;
        break;
      case 605:
        a1 = 34;
        break;
      case 606:
        a1 = 35;
        break;
      case 607:
        a1 = 36;
        break;
      case 608:
        a1 = 37;
        break;
      case 609:
        a1 = 38;
        break;
      case 610:
        a1 = 39;
        break;
      case 611:
        a1 = 40;
        break;
      case 612:
        a1 = 41;
        break;
      case 613:
        a1 = 42;
        break;
      case 614:
        a1 = 43;
        break;
      case 615:
        a1 = 44;
        break;
      case 616:
        a1 = 45;
        break;
      case 617:
        a1 = 46;
        break;
      default:
        JUMPOUT(0);
    }
  }

  return OUTLINED_FUNCTION_15_3(a1, a2);
}

uint64_t MomentsEventData.EventBundle.BundleSubType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939975A8[result];
  }

  return result;
}

uint64_t sub_1937A0AB8()
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

  OUTLINED_FUNCTION_149(v30, v31, v32, v33);
  OUTLINED_FUNCTION_90_7(v35);
  OUTLINED_FUNCTION_301_2();
  if (!(v18 ^ v19 | v12))
  {
    v36 = OUTLINED_FUNCTION_33_5((v40 > 1), v37, v38, v39);
    v39 = v36;
  }

  OUTLINED_FUNCTION_160_1(v36, v37, v38, v39);
  OUTLINED_FUNCTION_90_7(v41);
  if (v1 + 7 > (v46 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39_2((v46 > 1), v43, v44, v45);
    v45 = v42;
  }

  OUTLINED_FUNCTION_149(v42, v43, v44, v45);
  OUTLINED_FUNCTION_90_7(v47);
  if (v1 + 8 > (v52 >> 1))
  {
    v48 = OUTLINED_FUNCTION_33_5((v52 > 1), v49, v50, v51);
    v51 = v48;
  }

  OUTLINED_FUNCTION_160_1(v48, v49, v50, v51);
  OUTLINED_FUNCTION_90_7(v53);
  if (v1 + 9 > (v58 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39_2((v58 > 1), v55, v56, v57);
    v57 = v54;
  }

  OUTLINED_FUNCTION_149(v54, v55, v56, v57);
  OUTLINED_FUNCTION_90_7(v59);
  if (v1 + 10 > (v64 >> 1))
  {
    v60 = OUTLINED_FUNCTION_33_5((v64 > 1), v61, v62, v63);
    v63 = v60;
  }

  OUTLINED_FUNCTION_160_1(v60, v61, v62, v63);
  OUTLINED_FUNCTION_90_7(v65);
  if (v1 + 11 > (v70 >> 1))
  {
    v66 = OUTLINED_FUNCTION_39_2((v70 > 1), v67, v68, v69);
    v69 = v66;
  }

  OUTLINED_FUNCTION_149(v66, v67, v68, v69);
  OUTLINED_FUNCTION_90_7(v71);
  if (v1 + 12 > (v76 >> 1))
  {
    v72 = OUTLINED_FUNCTION_33_5((v76 > 1), v73, v74, v75);
    v75 = v72;
  }

  OUTLINED_FUNCTION_160_1(v72, v73, v74, v75);
  OUTLINED_FUNCTION_90_7(v77);
  if (v1 + 13 > (v82 >> 1))
  {
    v78 = OUTLINED_FUNCTION_39_2((v82 > 1), v79, v80, v81);
    v81 = v78;
  }

  OUTLINED_FUNCTION_149(v78, v79, v80, v81);
  OUTLINED_FUNCTION_90_7(v83);
  if (v1 + 14 > (v88 >> 1))
  {
    v84 = OUTLINED_FUNCTION_33_5((v88 > 1), v85, v86, v87);
    v87 = v84;
  }

  OUTLINED_FUNCTION_160_1(v84, v85, v86, v87);
  OUTLINED_FUNCTION_90_7(v89);
  if (v1 + 15 > (v94 >> 1))
  {
    v90 = OUTLINED_FUNCTION_39_2((v94 > 1), v91, v92, v93);
    v93 = v90;
  }

  OUTLINED_FUNCTION_149(v90, v91, v92, v93);
  OUTLINED_FUNCTION_90_7(v95);
  if (v1 + 16 > (v100 >> 1))
  {
    v96 = OUTLINED_FUNCTION_33_5((v100 > 1), v97, v98, v99);
    v99 = v96;
  }

  OUTLINED_FUNCTION_160_1(v96, v97, v98, v99);
  OUTLINED_FUNCTION_90_7(v101);
  if (v1 + 17 > (v106 >> 1))
  {
    v102 = OUTLINED_FUNCTION_39_2((v106 > 1), v103, v104, v105);
    v105 = v102;
  }

  OUTLINED_FUNCTION_149(v102, v103, v104, v105);
  OUTLINED_FUNCTION_90_7(v107);
  if (v1 + 18 > (v112 >> 1))
  {
    v108 = OUTLINED_FUNCTION_33_5((v112 > 1), v109, v110, v111);
    v111 = v108;
  }

  OUTLINED_FUNCTION_160_1(v108, v109, v110, v111);
  OUTLINED_FUNCTION_90_7(v113);
  if (v1 + 19 > (v118 >> 1))
  {
    v114 = OUTLINED_FUNCTION_39_2((v118 > 1), v115, v116, v117);
    v117 = v114;
  }

  OUTLINED_FUNCTION_149(v114, v115, v116, v117);
  OUTLINED_FUNCTION_90_7(v119);
  if (v1 + 20 > (v124 >> 1))
  {
    v120 = OUTLINED_FUNCTION_33_5((v124 > 1), v121, v122, v123);
    v123 = v120;
  }

  OUTLINED_FUNCTION_160_1(v120, v121, v122, v123);
  OUTLINED_FUNCTION_90_7(v125);
  if (v1 + 21 > (v130 >> 1))
  {
    v126 = OUTLINED_FUNCTION_39_2((v130 > 1), v127, v128, v129);
    v129 = v126;
  }

  OUTLINED_FUNCTION_149(v126, v127, v128, v129);
  OUTLINED_FUNCTION_90_7(v131);
  if (v1 + 22 > (v136 >> 1))
  {
    v132 = OUTLINED_FUNCTION_33_5((v136 > 1), v133, v134, v135);
    v135 = v132;
  }

  OUTLINED_FUNCTION_160_1(v132, v133, v134, v135);
  OUTLINED_FUNCTION_90_7(v137);
  if (v1 + 23 > (v142 >> 1))
  {
    v138 = OUTLINED_FUNCTION_39_2((v142 > 1), v139, v140, v141);
    v141 = v138;
  }

  OUTLINED_FUNCTION_149(v138, v139, v140, v141);
  OUTLINED_FUNCTION_90_7(v143);
  if (v1 + 24 > (v148 >> 1))
  {
    v144 = OUTLINED_FUNCTION_33_5((v148 > 1), v145, v146, v147);
    v147 = v144;
  }

  OUTLINED_FUNCTION_160_1(v144, v145, v146, v147);
  OUTLINED_FUNCTION_90_7(v149);
  if (v1 + 25 > (v154 >> 1))
  {
    v150 = OUTLINED_FUNCTION_39_2((v154 > 1), v151, v152, v153);
    v153 = v150;
  }

  OUTLINED_FUNCTION_149(v150, v151, v152, v153);
  OUTLINED_FUNCTION_90_7(v155);
  if (v1 + 26 > (v160 >> 1))
  {
    v156 = OUTLINED_FUNCTION_33_5((v160 > 1), v157, v158, v159);
    v159 = v156;
  }

  OUTLINED_FUNCTION_160_1(v156, v157, v158, v159);
  OUTLINED_FUNCTION_90_7(v161);
  if (v1 + 27 > (v166 >> 1))
  {
    v162 = OUTLINED_FUNCTION_39_2((v166 > 1), v163, v164, v165);
    v165 = v162;
  }

  OUTLINED_FUNCTION_149(v162, v163, v164, v165);
  OUTLINED_FUNCTION_90_7(v167);
  if (v1 + 28 > (v172 >> 1))
  {
    v168 = OUTLINED_FUNCTION_33_5((v172 > 1), v169, v170, v171);
    v171 = v168;
  }

  OUTLINED_FUNCTION_160_1(v168, v169, v170, v171);
  OUTLINED_FUNCTION_90_7(v173);
  if (v1 + 29 > (v178 >> 1))
  {
    v174 = OUTLINED_FUNCTION_39_2((v178 > 1), v175, v176, v177);
    v177 = v174;
  }

  OUTLINED_FUNCTION_149(v174, v175, v176, v177);
  OUTLINED_FUNCTION_90_7(v179);
  if (v1 + 30 > (v184 >> 1))
  {
    v180 = OUTLINED_FUNCTION_33_5((v184 > 1), v181, v182, v183);
    v183 = v180;
  }

  OUTLINED_FUNCTION_160_1(v180, v181, v182, v183);
  OUTLINED_FUNCTION_90_7(v185);
  if (v1 + 31 > (v190 >> 1))
  {
    v186 = OUTLINED_FUNCTION_39_2((v190 > 1), v187, v188, v189);
    v189 = v186;
  }

  OUTLINED_FUNCTION_149(v186, v187, v188, v189);
  OUTLINED_FUNCTION_90_7(v191);
  if (v1 + 32 > (v196 >> 1))
  {
    v192 = OUTLINED_FUNCTION_33_5((v196 > 1), v193, v194, v195);
    v195 = v192;
  }

  OUTLINED_FUNCTION_160_1(v192, v193, v194, v195);
  OUTLINED_FUNCTION_90_7(v197);
  if (v1 + 33 > (v202 >> 1))
  {
    v198 = OUTLINED_FUNCTION_39_2((v202 > 1), v199, v200, v201);
    v201 = v198;
  }

  OUTLINED_FUNCTION_149(v198, v199, v200, v201);
  OUTLINED_FUNCTION_90_7(v203);
  if (v1 + 34 > (v208 >> 1))
  {
    v204 = OUTLINED_FUNCTION_33_5((v208 > 1), v205, v206, v207);
    v207 = v204;
  }

  OUTLINED_FUNCTION_160_1(v204, v205, v206, v207);
  OUTLINED_FUNCTION_90_7(v209);
  if (v1 + 35 > (v214 >> 1))
  {
    v210 = OUTLINED_FUNCTION_39_2((v214 > 1), v211, v212, v213);
    v213 = v210;
  }

  OUTLINED_FUNCTION_149(v210, v211, v212, v213);
  OUTLINED_FUNCTION_90_7(v215);
  if (v1 + 36 > (v220 >> 1))
  {
    v216 = OUTLINED_FUNCTION_33_5((v220 > 1), v217, v218, v219);
    v219 = v216;
  }

  OUTLINED_FUNCTION_160_1(v216, v217, v218, v219);
  OUTLINED_FUNCTION_90_7(v221);
  if (v1 + 37 > (v226 >> 1))
  {
    v222 = OUTLINED_FUNCTION_39_2((v226 > 1), v223, v224, v225);
    v225 = v222;
  }

  OUTLINED_FUNCTION_149(v222, v223, v224, v225);
  OUTLINED_FUNCTION_90_7(v227);
  if (v1 + 38 > (v232 >> 1))
  {
    v228 = OUTLINED_FUNCTION_33_5((v232 > 1), v229, v230, v231);
    v231 = v228;
  }

  OUTLINED_FUNCTION_160_1(v228, v229, v230, v231);
  OUTLINED_FUNCTION_90_7(v233);
  if (v1 + 39 > (v238 >> 1))
  {
    v234 = OUTLINED_FUNCTION_39_2((v238 > 1), v235, v236, v237);
    v237 = v234;
  }

  OUTLINED_FUNCTION_149(v234, v235, v236, v237);
  OUTLINED_FUNCTION_90_7(v239);
  if (v1 + 40 > (v244 >> 1))
  {
    v240 = OUTLINED_FUNCTION_33_5((v244 > 1), v241, v242, v243);
    v243 = v240;
  }

  OUTLINED_FUNCTION_160_1(v240, v241, v242, v243);
  OUTLINED_FUNCTION_90_7(v245);
  if (v1 + 41 > (v250 >> 1))
  {
    v246 = OUTLINED_FUNCTION_39_2((v250 > 1), v247, v248, v249);
    v249 = v246;
  }

  OUTLINED_FUNCTION_149(v246, v247, v248, v249);
  OUTLINED_FUNCTION_90_7(v251);
  if (v1 + 42 > (v256 >> 1))
  {
    v252 = OUTLINED_FUNCTION_33_5((v256 > 1), v253, v254, v255);
    v255 = v252;
  }

  OUTLINED_FUNCTION_160_1(v252, v253, v254, v255);
  OUTLINED_FUNCTION_90_7(v257);
  if (v1 + 43 > (v262 >> 1))
  {
    v258 = OUTLINED_FUNCTION_39_2((v262 > 1), v259, v260, v261);
    v261 = v258;
  }

  OUTLINED_FUNCTION_149(v258, v259, v260, v261);
  OUTLINED_FUNCTION_90_7(v263);
  if (v1 + 44 > (v268 >> 1))
  {
    v264 = OUTLINED_FUNCTION_33_5((v268 > 1), v265, v266, v267);
    v267 = v264;
  }

  OUTLINED_FUNCTION_160_1(v264, v265, v266, v267);
  OUTLINED_FUNCTION_90_7(v269);
  if (v1 + 45 > (v274 >> 1))
  {
    v270 = OUTLINED_FUNCTION_39_2((v274 > 1), v271, v272, v273);
    v273 = v270;
  }

  OUTLINED_FUNCTION_149(v270, v271, v272, v273);
  OUTLINED_FUNCTION_90_7(v275);
  if (v1 + 46 > (v280 >> 1))
  {
    v276 = OUTLINED_FUNCTION_33_5((v280 > 1), v277, v278, v279);
    v279 = v276;
  }

  OUTLINED_FUNCTION_160_1(v276, v277, v278, v279);
  OUTLINED_FUNCTION_90_7(v281);
  if (v1 + 47 > (v286 >> 1))
  {
    v282 = OUTLINED_FUNCTION_39_2((v286 > 1), v283, v284, v285);
    v285 = v282;
  }

  OUTLINED_FUNCTION_149(v282, v283, v284, v285);
  OUTLINED_FUNCTION_90_7(v287);
  if (v1 + 48 > (v292 >> 1))
  {
    v288 = OUTLINED_FUNCTION_33_5((v292 > 1), v289, v290, v291);
    v291 = v288;
  }

  OUTLINED_FUNCTION_160_1(v288, v289, v290, v291);
  OUTLINED_FUNCTION_90_7(v293);
  if (v1 + 49 > (v298 >> 1))
  {
    v294 = OUTLINED_FUNCTION_39_2((v298 > 1), v295, v296, v297);
    v297 = v294;
  }

  OUTLINED_FUNCTION_149(v294, v295, v296, v297);
  OUTLINED_FUNCTION_90_7(v299);
  if (v1 + 50 > (v304 >> 1))
  {
    v300 = OUTLINED_FUNCTION_33_5((v304 > 1), v301, v302, v303);
    v303 = v300;
  }

  OUTLINED_FUNCTION_160_1(v300, v301, v302, v303);
  OUTLINED_FUNCTION_90_7(v305);
  if (v1 + 51 > (v310 >> 1))
  {
    v306 = OUTLINED_FUNCTION_39_2((v310 > 1), v307, v308, v309);
    v309 = v306;
  }

  OUTLINED_FUNCTION_149(v306, v307, v308, v309);
  OUTLINED_FUNCTION_90_7(v311);
  if (v1 + 52 > (v316 >> 1))
  {
    v312 = OUTLINED_FUNCTION_33_5((v316 > 1), v313, v314, v315);
    v315 = v312;
  }

  OUTLINED_FUNCTION_160_1(v312, v313, v314, v315);
  OUTLINED_FUNCTION_90_7(v317);
  if (v1 + 53 > (v322 >> 1))
  {
    v318 = OUTLINED_FUNCTION_39_2((v322 > 1), v319, v320, v321);
    v321 = v318;
  }

  OUTLINED_FUNCTION_149(v318, v319, v320, v321);
  OUTLINED_FUNCTION_90_7(v323);
  if (v1 + 54 > (v328 >> 1))
  {
    v324 = OUTLINED_FUNCTION_33_5((v328 > 1), v325, v326, v327);
    v327 = v324;
  }

  OUTLINED_FUNCTION_160_1(v324, v325, v326, v327);
  OUTLINED_FUNCTION_90_7(v329);
  if (v1 + 55 > (v334 >> 1))
  {
    v330 = OUTLINED_FUNCTION_39_2((v334 > 1), v331, v332, v333);
    v333 = v330;
  }

  OUTLINED_FUNCTION_149(v330, v331, v332, v333);
  OUTLINED_FUNCTION_90_7(v335);
  if (v1 + 56 > (v340 >> 1))
  {
    v336 = OUTLINED_FUNCTION_33_5((v340 > 1), v337, v338, v339);
    v339 = v336;
  }

  OUTLINED_FUNCTION_160_1(v336, v337, v338, v339);
  OUTLINED_FUNCTION_90_7(v341);
  if (v1 + 57 > (v346 >> 1))
  {
    v342 = OUTLINED_FUNCTION_39_2((v346 > 1), v343, v344, v345);
    v345 = v342;
  }

  OUTLINED_FUNCTION_149(v342, v343, v344, v345);
  OUTLINED_FUNCTION_90_7(v347);
  if (v1 + 58 > (v352 >> 1))
  {
    v348 = OUTLINED_FUNCTION_33_5((v352 > 1), v349, v350, v351);
    v351 = v348;
  }

  OUTLINED_FUNCTION_160_1(v348, v349, v350, v351);
  OUTLINED_FUNCTION_90_7(v353);
  if (v1 + 59 > (v358 >> 1))
  {
    v354 = OUTLINED_FUNCTION_39_2((v358 > 1), v355, v356, v357);
    v357 = v354;
  }

  OUTLINED_FUNCTION_149(v354, v355, v356, v357);
  OUTLINED_FUNCTION_90_7(v359);
  if (v1 + 60 > (v364 >> 1))
  {
    v360 = OUTLINED_FUNCTION_33_5((v364 > 1), v361, v362, v363);
    v363 = v360;
  }

  OUTLINED_FUNCTION_160_1(v360, v361, v362, v363);
  OUTLINED_FUNCTION_90_7(v365);
  if (v1 + 61 > (v370 >> 1))
  {
    v366 = OUTLINED_FUNCTION_39_2((v370 > 1), v367, v368, v369);
    v369 = v366;
  }

  OUTLINED_FUNCTION_149(v366, v367, v368, v369);
  OUTLINED_FUNCTION_90_7(v371);
  if (v1 + 62 > (v376 >> 1))
  {
    v372 = OUTLINED_FUNCTION_33_5((v376 > 1), v373, v374, v375);
    v375 = v372;
  }

  OUTLINED_FUNCTION_160_1(v372, v373, v374, v375);
  OUTLINED_FUNCTION_90_7(v377);
  if (v1 + 63 > (v382 >> 1))
  {
    v378 = OUTLINED_FUNCTION_39_2((v382 > 1), v379, v380, v381);
    v381 = v378;
  }

  OUTLINED_FUNCTION_149(v378, v379, v380, v381);
  OUTLINED_FUNCTION_90_7(v383);
  if (v1 + 64 > (v388 >> 1))
  {
    v384 = OUTLINED_FUNCTION_33_5((v388 > 1), v385, v386, v387);
    v387 = v384;
  }

  OUTLINED_FUNCTION_160_1(v384, v385, v386, v387);
  OUTLINED_FUNCTION_90_7(v389);
  if (v1 + 65 > (v394 >> 1))
  {
    v390 = OUTLINED_FUNCTION_39_2((v394 > 1), v391, v392, v393);
    v393 = v390;
  }

  OUTLINED_FUNCTION_149(v390, v391, v392, v393);
  OUTLINED_FUNCTION_90_7(v395);
  if (v1 + 66 > (v400 >> 1))
  {
    v396 = OUTLINED_FUNCTION_33_5((v400 > 1), v397, v398, v399);
    v399 = v396;
  }

  OUTLINED_FUNCTION_160_1(v396, v397, v398, v399);
  OUTLINED_FUNCTION_90_7(v401);
  if (v1 + 67 > (v406 >> 1))
  {
    v402 = OUTLINED_FUNCTION_39_2((v406 > 1), v403, v404, v405);
    v405 = v402;
  }

  OUTLINED_FUNCTION_149(v402, v403, v404, v405);
  OUTLINED_FUNCTION_90_7(v407);
  if (v1 + 68 > (v412 >> 1))
  {
    v408 = OUTLINED_FUNCTION_33_5((v412 > 1), v409, v410, v411);
    v411 = v408;
  }

  OUTLINED_FUNCTION_160_1(v408, v409, v410, v411);
  OUTLINED_FUNCTION_90_7(v413);
  if (v1 + 69 > (v418 >> 1))
  {
    v414 = OUTLINED_FUNCTION_39_2((v418 > 1), v415, v416, v417);
    v417 = v414;
  }

  OUTLINED_FUNCTION_149(v414, v415, v416, v417);
  OUTLINED_FUNCTION_90_7(v419);
  if (v1 + 70 > (v424 >> 1))
  {
    v420 = OUTLINED_FUNCTION_33_5((v424 > 1), v421, v422, v423);
    v423 = v420;
  }

  OUTLINED_FUNCTION_160_1(v420, v421, v422, v423);
  OUTLINED_FUNCTION_90_7(v425);
  if (v1 + 71 > (v430 >> 1))
  {
    v426 = OUTLINED_FUNCTION_39_2((v430 > 1), v427, v428, v429);
    v429 = v426;
  }

  OUTLINED_FUNCTION_149(v426, v427, v428, v429);
  OUTLINED_FUNCTION_90_7(v431);
  if (v1 + 72 > (v436 >> 1))
  {
    v432 = OUTLINED_FUNCTION_33_5((v436 > 1), v433, v434, v435);
    v435 = v432;
  }

  OUTLINED_FUNCTION_160_1(v432, v433, v434, v435);
  OUTLINED_FUNCTION_90_7(v437);
  if (v1 + 73 > (v442 >> 1))
  {
    v438 = OUTLINED_FUNCTION_39_2((v442 > 1), v439, v440, v441);
    v441 = v438;
  }

  OUTLINED_FUNCTION_149(v438, v439, v440, v441);
  OUTLINED_FUNCTION_90_7(v443);
  if (v1 + 74 > (v448 >> 1))
  {
    v444 = OUTLINED_FUNCTION_33_5((v448 > 1), v445, v446, v447);
    v447 = v444;
  }

  OUTLINED_FUNCTION_160_1(v444, v445, v446, v447);
  OUTLINED_FUNCTION_90_7(v449);
  if (v1 + 75 > (v454 >> 1))
  {
    v450 = OUTLINED_FUNCTION_39_2((v454 > 1), v451, v452, v453);
    v453 = v450;
  }

  OUTLINED_FUNCTION_149(v450, v451, v452, v453);
  OUTLINED_FUNCTION_90_7(v455);
  if (v1 + 76 > (v460 >> 1))
  {
    v456 = OUTLINED_FUNCTION_33_5((v460 > 1), v457, v458, v459);
    v459 = v456;
  }

  OUTLINED_FUNCTION_160_1(v456, v457, v458, v459);
  OUTLINED_FUNCTION_90_7(v461);
  if (v1 + 77 > (v466 >> 1))
  {
    v462 = OUTLINED_FUNCTION_39_2((v466 > 1), v463, v464, v465);
    v465 = v462;
  }

  OUTLINED_FUNCTION_149(v462, v463, v464, v465);
  OUTLINED_FUNCTION_90_7(v467);
  if (v1 + 78 > (v472 >> 1))
  {
    v468 = OUTLINED_FUNCTION_33_5((v472 > 1), v469, v470, v471);
    v471 = v468;
  }

  OUTLINED_FUNCTION_160_1(v468, v469, v470, v471);
  return OUTLINED_FUNCTION_38_1(v473, v474);
}

void MomentsEventData.EventBundle.BundleSubType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_174_5();
        break;
      case 2:
        OUTLINED_FUNCTION_122_10(1768843588);
        break;
      case 3:
        OUTLINED_FUNCTION_142_11();
        break;
      case 4:
        OUTLINED_FUNCTION_147_9();
        break;
      case 5:
      case 7:
      case 9:
      case 0xBLL:
      case 0xCLL:
      case 0xELL:
      case 0x14:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x19:
      case 0x1ELL:
      case 0x1FLL:
      case 0x20:
      case 0x22:
      case 0x23:
      case 0x25:
      case 0x28:
      case 0x29:
      case 0x2ALL:
      case 0x2BLL:
      case 0x2DLL:
      case 0x2ELL:
      case 0x2FLL:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x39:
      case 0x3ALL:
      case 0x3BLL:
      case 0x3CLL:
      case 0x3DLL:
      case 0x40:
      case 0x42:
      case 0x43:
      case 0x44:
      case 0x45:
      case 0x46:
      case 0x48:
      case 0x4ALL:
      case 0x4BLL:
      case 0x4CLL:
        OUTLINED_FUNCTION_2_77();
        break;
      case 6:
        OUTLINED_FUNCTION_111_14(0x756F6B726F57);
        break;
      case 8:
        OUTLINED_FUNCTION_230_4();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_266_3();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_111_14(0x6361746E6F43);
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_312_1();
        break;
      case 0x10:
        OUTLINED_FUNCTION_273_2();
        break;
      case 0x12:
        OUTLINED_FUNCTION_231_4();
        break;
      case 0x13:
      case 0x21:
      case 0x26:
      case 0x2CLL:
      case 0x37:
      case 0x3ELL:
      case 0x3FLL:
      case 0x41:
      case 0x47:
      case 0x49:
        OUTLINED_FUNCTION_38();
        break;
      case 0x15:
        OUTLINED_FUNCTION_233_3();
        break;
      case 0x1ALL:
        OUTLINED_FUNCTION_118_14();
        break;
      case 0x1BLL:
        OUTLINED_FUNCTION_276_4();
        break;
      case 0x1CLL:
        OUTLINED_FUNCTION_229_0();
        break;
      case 0x1DLL:
      case 0x30:
        OUTLINED_FUNCTION_62_4();
        break;
      case 0x38:
        OUTLINED_FUNCTION_260_0(0x4D796C696144);
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

void MomentsEventData.EventBundle.BundleSubType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_134_13();
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_15_14(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_132_10();
      v9 = v4 && v0 == 0xE600000000000000;
      if (v9 || (OUTLINED_FUNCTION_21_38(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_113_12(1768843588);
        v11 = v4 && v0 == 0xE600000000000000;
        if (v11 || (OUTLINED_FUNCTION_21_38(v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_156_8(0x6970706F6853);
          v13 = v4 && v0 == 0xE800000000000000;
          if (v13 || (OUTLINED_FUNCTION_29_2(v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_205_3();
            v14 = v4 && v0 == 0xE400000000000000;
            if (v14 || (OUTLINED_FUNCTION_19_8(1885958740) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v17 = v1 == 0xD000000000000011 && v16 == v0;
              if (v17 || (OUTLINED_FUNCTION_68_21(v15, v16) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v18 = OUTLINED_FUNCTION_70_14();
                v19 = v4 && v0 == 0xE700000000000000;
                if (v19 || (OUTLINED_FUNCTION_22_7(v18) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v21 = v1 == 0xD000000000000014 && v20 == v0;
                  if (v21 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v20) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v22 = OUTLINED_FUNCTION_230_4();
                    v24 = v1 == v22 && v0 == v23;
                    if (v24 || (OUTLINED_FUNCTION_0_9(v22, v23) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v26 = v1 == 0xD000000000000015 && v25 == v0;
                      if (v26 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v25) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v27 = OUTLINED_FUNCTION_266_3() & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
                        v29 = v1 == v27 && v0 == v28;
                        if (v29 || (OUTLINED_FUNCTION_0_9(v27, v28) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_60();
                          v31 = v4 && v30 == v0;
                          if (v31 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v30) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_60();
                            v33 = v4 && v32 == v0;
                            if (v33 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v32) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v34 = OUTLINED_FUNCTION_100_12();
                              v35 = v4 && v0 == 0xE700000000000000;
                              if (v35 || (OUTLINED_FUNCTION_22_7(v34) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_79_0();
                                v37 = v4 && v36 == v0;
                                if (v37 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v36) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v38 = OUTLINED_FUNCTION_312_1() & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
                                  v40 = v1 == v38 && v0 == v39;
                                  if (v40 || (OUTLINED_FUNCTION_0_9(v38, v39) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v41 = OUTLINED_FUNCTION_273_2();
                                    v43 = v1 == v41 && v0 == v42;
                                    if (v43 || (OUTLINED_FUNCTION_0_9(v41, v42) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v44 = v1 == 0x6F53646579616C50 && v0 == 0xEA0000000000676ELL;
                                      if (v44 || (OUTLINED_FUNCTION_0_9(0x6F53646579616C50, 0xEA0000000000676ELL) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v45 = OUTLINED_FUNCTION_231_4();
                                        v47 = v1 == v45 && v0 == v46;
                                        if (v47 || (OUTLINED_FUNCTION_0_9(v45, v46) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_6_27();
                                          v49 = v4 && v48 == v0;
                                          if (v49 || (OUTLINED_FUNCTION_25_7(26, v48) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_38();
                                            v51 = v1 == 0xD000000000000018 && v50 == v0;
                                            if (v51 || (OUTLINED_FUNCTION_0_9(0xD000000000000018, v50) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v52 = OUTLINED_FUNCTION_233_3();
                                              v54 = v1 == v52 && v0 == v53;
                                              if (v54 || (OUTLINED_FUNCTION_0_9(v52, v53) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_38();
                                                v56 = v1 == 0xD000000000000017 && v55 == v0;
                                                if (v56 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v55) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_60();
                                                  v58 = v4 && v57 == v0;
                                                  if (v58 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v57) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_38();
                                                    v60 = v1 == 0xD000000000000024 && v59 == v0;
                                                    if (v60 || (OUTLINED_FUNCTION_0_9(0xD000000000000024, v59) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_38();
                                                      v62 = v1 == 0xD000000000000022 && v61 == v0;
                                                      if (v62 || (OUTLINED_FUNCTION_0_9(0xD000000000000022, v61) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_104_13();
                                                        v63 = v4 && v0 == 0xEA0000000000656DLL;
                                                        if (v63 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v64 = OUTLINED_FUNCTION_276_4();
                                                          v66 = v1 == v64 && v0 == v65;
                                                          if (v66 || (OUTLINED_FUNCTION_0_9(v64, v65) & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            v67 = OUTLINED_FUNCTION_229_0();
                                                            v69 = v1 == v67 && v0 == v68;
                                                            if (v69 || (OUTLINED_FUNCTION_0_9(v67, v68) & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_207_0();
                                                              v71 = v4 && v0 == v70;
                                                              if (v71 || (v72 = OUTLINED_FUNCTION_62_4(), (OUTLINED_FUNCTION_0_9(v72, v73) & 1) != 0))
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_43_6();
                                                                v75 = v4 && v74 == v0;
                                                                if (v75 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v74) & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_26_4();
                                                                  v78 = v4 && v77 == v0;
                                                                  if (v78 || (OUTLINED_FUNCTION_68_21(v76, v77) & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_38();
                                                                    v80 = v1 == 0xD000000000000016 && v79 == v0;
                                                                    if (v80 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v79) & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_6_27();
                                                                      v82 = v4 && v81 == v0;
                                                                      if (v82 || (OUTLINED_FUNCTION_25_7(26, v81) & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_79_0();
                                                                        v84 = v4 && v83 == v0;
                                                                        if (v84 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v83) & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_26_4();
                                                                          v87 = v4 && v86 == v0;
                                                                          if (v87 || (OUTLINED_FUNCTION_68_21(v85, v86) & 1) != 0)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            v88 = v1 == 0x6D654D6F746F6850 && v0 == 0xEE0074655079726FLL;
                                                                            if (v88 || (OUTLINED_FUNCTION_0_9(0x6D654D6F746F6850, 0xEE0074655079726FLL) & 1) != 0)
                                                                            {

                                                                              OUTLINED_FUNCTION_303_1();
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_38();
                                                                              v90 = v1 == 0xD000000000000013 && v89 == v0;
                                                                              if (v90 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, v89) & 1) != 0)
                                                                              {

                                                                                OUTLINED_FUNCTION_302_2();
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_6_27();
                                                                                v92 = v4 && v91 == v0;
                                                                                if (v92 || (OUTLINED_FUNCTION_25_7(26, v91) & 1) != 0)
                                                                                {

                                                                                  v5 = 38;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v93 = v1 == 0x6D654D6F746F6850 && v0 == 0xEF7069725479726FLL;
                                                                                  if (v93 || (OUTLINED_FUNCTION_0_9(0x6D654D6F746F6850, 0xEF7069725479726FLL) & 1) != 0)
                                                                                  {

                                                                                    v5 = 39;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_43_6();
                                                                                    v95 = v4 && v94 == v0;
                                                                                    if (v95 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v94) & 1) != 0)
                                                                                    {

                                                                                      v5 = 40;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_26_4();
                                                                                      v98 = v4 && v97 == v0;
                                                                                      if (v98 || (OUTLINED_FUNCTION_68_21(v96, v97) & 1) != 0)
                                                                                      {

                                                                                        v5 = 41;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_38();
                                                                                        v100 = v1 == 0xD00000000000001BLL && v99 == v0;
                                                                                        if (v100 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v99) & 1) != 0)
                                                                                        {

                                                                                          v5 = 42;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_26_4();
                                                                                          v103 = v4 && v102 == v0;
                                                                                          if (v103 || (OUTLINED_FUNCTION_68_21(v101, v102) & 1) != 0)
                                                                                          {

                                                                                            v5 = 43;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_6_27();
                                                                                            v105 = v4 && v104 == v0;
                                                                                            if (v105 || (OUTLINED_FUNCTION_25_7(26, v104) & 1) != 0)
                                                                                            {

                                                                                              v5 = 44;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_26_4();
                                                                                              v108 = v4 && v107 == v0;
                                                                                              if (v108 || (OUTLINED_FUNCTION_68_21(v106, v107) & 1) != 0)
                                                                                              {

                                                                                                v5 = 45;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_26_4();
                                                                                                v111 = v4 && v110 == v0;
                                                                                                if (v111 || (OUTLINED_FUNCTION_68_21(v109, v110) & 1) != 0)
                                                                                                {

                                                                                                  v5 = 46;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                  v113 = v1 == 0xD000000000000012 && v112 == v0;
                                                                                                  if (v113 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v112) & 1) != 0)
                                                                                                  {

                                                                                                    v5 = 47;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_207_0();
                                                                                                    v115 = v4 && v0 == v114;
                                                                                                    if (v115 || (v116 = OUTLINED_FUNCTION_62_4(), (OUTLINED_FUNCTION_0_9(v116, v117) & 1) != 0))
                                                                                                    {

                                                                                                      v5 = 48;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_79_0();
                                                                                                      v119 = v4 && v118 == v0;
                                                                                                      if (v119 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v118) & 1) != 0)
                                                                                                      {

                                                                                                        v5 = 49;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                        v121 = v1 == 0xD000000000000013 && v120 == v0;
                                                                                                        if (v121 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, v120) & 1) != 0)
                                                                                                        {

                                                                                                          v5 = 50;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_26_4();
                                                                                                          v124 = v4 && v123 == v0;
                                                                                                          if (v124 || (OUTLINED_FUNCTION_68_21(v122, v123) & 1) != 0)
                                                                                                          {

                                                                                                            v5 = 51;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                            v126 = v1 == 0xD000000000000010 && v125 == v0;
                                                                                                            if (v126 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v125) & 1) != 0)
                                                                                                            {

                                                                                                              v5 = 52;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_38();
                                                                                                              v129 = v1 == 0xD00000000000001CLL && v128 == v0;
                                                                                                              if (v129 || (OUTLINED_FUNCTION_68_21(v127, v128) & 1) != 0)
                                                                                                              {

                                                                                                                v5 = 53;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_38();
                                                                                                                v131 = v1 == 0xD00000000000001DLL && v130 == v0;
                                                                                                                if (v131 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v130) & 1) != 0)
                                                                                                                {

                                                                                                                  v5 = 54;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_6_27();
                                                                                                                  v133 = v4 && v132 == v0;
                                                                                                                  if (v133 || (OUTLINED_FUNCTION_25_7(26, v132) & 1) != 0)
                                                                                                                  {

                                                                                                                    v5 = 55;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v134 = v1 == 0x6F6F4D796C696144 && v0 == 0xE900000000000064;
                                                                                                                    if (v134 || (OUTLINED_FUNCTION_30_22(0x6F6F4D796C696144, 100) & 1) != 0)
                                                                                                                    {

                                                                                                                      v5 = 56;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_38();
                                                                                                                      v136 = v1 == 0xD000000000000010 && v135 == v0;
                                                                                                                      if (v136 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v135) & 1) != 0)
                                                                                                                      {

                                                                                                                        v5 = 57;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_43_6();
                                                                                                                        v138 = v4 && v137 == v0;
                                                                                                                        if (v138 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v137) & 1) != 0)
                                                                                                                        {

                                                                                                                          v5 = 58;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_38();
                                                                                                                          v140 = v1 == 0xD000000000000019 && v139 == v0;
                                                                                                                          if (v140 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v139) & 1) != 0)
                                                                                                                          {

                                                                                                                            v5 = 59;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_96_2();
                                                                                                                            v142 = v4 && v141 == v0;
                                                                                                                            if (v142 || (OUTLINED_FUNCTION_0_9(0xD000000000000018, v141) & 1) != 0)
                                                                                                                            {

                                                                                                                              v5 = 60;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_38();
                                                                                                                              v144 = v1 == 0xD00000000000001BLL && v143 == v0;
                                                                                                                              if (v144 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v143) & 1) != 0)
                                                                                                                              {

                                                                                                                                v5 = 61;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_6_27();
                                                                                                                                v146 = v4 && v145 == v0;
                                                                                                                                if (v146 || (OUTLINED_FUNCTION_25_7(26, v145) & 1) != 0)
                                                                                                                                {

                                                                                                                                  v5 = 62;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_6_27();
                                                                                                                                  v148 = v4 && v147 == v0;
                                                                                                                                  if (v148 || (OUTLINED_FUNCTION_25_7(26, v147) & 1) != 0)
                                                                                                                                  {

                                                                                                                                    v5 = 63;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_43_6();
                                                                                                                                    v150 = v4 && v149 == v0;
                                                                                                                                    if (v150 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v149) & 1) != 0)
                                                                                                                                    {

                                                                                                                                      v5 = 64;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      OUTLINED_FUNCTION_6_27();
                                                                                                                                      v152 = v4 && v151 == v0;
                                                                                                                                      if (v152 || (OUTLINED_FUNCTION_25_7(26, v151) & 1) != 0)
                                                                                                                                      {

                                                                                                                                        v5 = 65;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        OUTLINED_FUNCTION_26_4();
                                                                                                                                        v154 = v4 && v153 == v0;
                                                                                                                                        if (v154 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v153) & 1) != 0)
                                                                                                                                        {

                                                                                                                                          v5 = 66;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          OUTLINED_FUNCTION_79_0();
                                                                                                                                          v156 = v4 && v155 == v0;
                                                                                                                                          if (v156 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v155) & 1) != 0)
                                                                                                                                          {

                                                                                                                                            v5 = 67;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                                            v158 = v1 == 0xD000000000000016 && v157 == v0;
                                                                                                                                            if (v158 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v157) & 1) != 0)
                                                                                                                                            {

                                                                                                                                              v5 = 68;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              OUTLINED_FUNCTION_60();
                                                                                                                                              v160 = v4 && v159 == v0;
                                                                                                                                              if (v160 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v159) & 1) != 0)
                                                                                                                                              {

                                                                                                                                                v5 = 69;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                OUTLINED_FUNCTION_79_0();
                                                                                                                                                v162 = v4 && v161 == v0;
                                                                                                                                                if (v162 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v161) & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  v5 = 70;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  OUTLINED_FUNCTION_6_27();
                                                                                                                                                  v164 = v4 && v163 == v0;
                                                                                                                                                  if (v164 || (OUTLINED_FUNCTION_25_7(26, v163) & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    v5 = 71;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    OUTLINED_FUNCTION_38();
                                                                                                                                                    v166 = v1 == 0xD00000000000001BLL && v165 == v0;
                                                                                                                                                    if (v166 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v165) & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      v5 = 72;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      OUTLINED_FUNCTION_6_27();
                                                                                                                                                      v168 = v4 && v167 == v0;
                                                                                                                                                      if (v168 || (OUTLINED_FUNCTION_25_7(26, v167) & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        v5 = 73;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        OUTLINED_FUNCTION_26_4();
                                                                                                                                                        v170 = v4 && v169 == v0;
                                                                                                                                                        if (v170 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v169) & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          v5 = 74;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          OUTLINED_FUNCTION_79_0();
                                                                                                                                                          v172 = v4 && v171 == v0;
                                                                                                                                                          if (v172 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v171) & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            v5 = 75;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                                                            if (v1 == 0xD00000000000001ELL && v173 == v0)
                                                                                                                                                            {

                                                                                                                                                              v5 = 76;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, v173);
                                                                                                                                                              OUTLINED_FUNCTION_89();
                                                                                                                                                              v5 = 76;
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

void MomentsEventData.EventBundle.SummarizationGranularity.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t MomentsEventData.EventBundle.SummarizationGranularity.rawValue.getter()
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

uint64_t MomentsEventData.EventBundle.SummarizationGranularity.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x657372616F43;
  }

  return 1701734726;
}

void MomentsEventData.EventBundle.SummarizationGranularity.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1701734726 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(1701734726) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x657372616F43 && v0 == 0xE600000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_21_38(0x657372616F43);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.EventBundle.Resource.Type.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t static MomentsEventData.EventBundle.Resource.Type.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v98 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v98, v99, v100, v101, &qword_1EAE42D00, &qword_193996FD0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v102 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v102, v103, v104, v105, &qword_1EAE42D00, &qword_193996FD0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v106, v107, v108, v109, v110, v111);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v112 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v112, v113, v114, v115, &qword_1EAE42D00, &qword_193996FD0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v116 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v116, v117, v118, v119, &qword_1EAE42D00, &qword_193996FD0);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v120 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v120, v121, v122, v123, &qword_1EAE42D00, &qword_193996FD0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v124 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v124, v125, v126, v127, &qword_1EAE42D00, &qword_193996FD0);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v128 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v128, v129, v130, v131, &qword_1EAE42D00, &qword_193996FD0);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v132 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v132, v133, v134, v135, &qword_1EAE42D00, &qword_193996FD0);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v136 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v136, v137, v138, v139, &qword_1EAE42D00, &qword_193996FD0);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v140 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v140, v141, v142, v143, &qword_1EAE42D00, &qword_193996FD0);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v144 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v144, v145, v146, v147, &qword_1EAE42D00, &qword_193996FD0);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v148 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v148, v149, v150, v151, &qword_1EAE42D00, &qword_193996FD0);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v152 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v152, v153, v154, v155, &qword_1EAE42D00, &qword_193996FD0);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v156 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v156, v157, v158, v159, &qword_1EAE42D00, &qword_193996FD0);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v160 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v160, v161, v162, v163, &qword_1EAE42D00, &qword_193996FD0);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v164 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v164, v165, v166, v167, &qword_1EAE42D00, &qword_193996FD0);
    v93 = v90;
  }

  OUTLINED_FUNCTION_47_5(v90, v91, v92, v93);
  return OUTLINED_FUNCTION_89_3(v95, v96);
}

uint64_t MomentsEventData.EventBundle.Resource.Type.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x65756C6156;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_262_1(0x416F746F6850);
      break;
    case 2:
      result = OUTLINED_FUNCTION_98_17();
      break;
    case 3:
      result = 0x6B6E694C626557;
      break;
    case 4:
      result = OUTLINED_FUNCTION_268_2();
      break;
    case 5:
      result = 0x6D65744970614DLL;
      break;
    case 6:
      result = 7368769;
      break;
    case 7:
      result = OUTLINED_FUNCTION_188_5();
      break;
    case 8:
      result = OUTLINED_FUNCTION_62_4();
      break;
    case 9:
      result = OUTLINED_FUNCTION_111_14(0x756F6B726F57);
      break;
    case 0xALL:
      result = 0x6E6F73726550;
      break;
    case 0xBLL:
      result = OUTLINED_FUNCTION_115_12(1667329104);
      break;
    case 0xCLL:
      result = OUTLINED_FUNCTION_82_16();
      break;
    case 0xDLL:
      result = OUTLINED_FUNCTION_166_7(0x656874616557);
      break;
    case 0xELL:
      result = OUTLINED_FUNCTION_42_30();
      break;
    case 0xFLL:
      result = OUTLINED_FUNCTION_235_3();
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.EventBundle.Resource.Type.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_116_15(1970037078);
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_15_14(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_310_1(0x416F746F6850);
      v10 = v4 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_140_11();
        v12 = v4 && v0 == 0xE500000000000000;
        if (v12 || (OUTLINED_FUNCTION_15_14(v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = v1 == 0x6B6E694C626557 && v0 == 0xE700000000000000;
          if (v13 || (OUTLINED_FUNCTION_22_7(0x6B6E694C626557) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_268_2();
            v16 = v1 == v14 && v0 == v15;
            if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v17 = v1 == 0x6D65744970614DLL && v0 == 0xE700000000000000;
              if (v17 || (OUTLINED_FUNCTION_22_7(0x6D65744970614DLL) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v18 = v1 == 7368769 && v0 == 0xE300000000000000;
                if (v18 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v19 = OUTLINED_FUNCTION_295_3();
                  v20 = v4 && v0 == 0xE500000000000000;
                  if (v20 || (OUTLINED_FUNCTION_15_14(v19) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v21 = OUTLINED_FUNCTION_79_16();
                    v23 = v4 && v0 == v22;
                    if (v23 || (OUTLINED_FUNCTION_30_22(v21, 110) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v24 = OUTLINED_FUNCTION_70_14();
                      v25 = v4 && v0 == 0xE700000000000000;
                      if (v25 || (OUTLINED_FUNCTION_22_7(v24) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v26 = v1 == 0x6E6F73726550 && v0 == 0xE600000000000000;
                        if (v26 || (OUTLINED_FUNCTION_21_38(0x6E6F73726550) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v27 = OUTLINED_FUNCTION_116_15(1667329104);
                          v28 = v4 && v0 == 0xE500000000000000;
                          if (v28 || (OUTLINED_FUNCTION_15_14(v27) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v29 = OUTLINED_FUNCTION_82_16();
                            v31 = v1 == v29 && v0 == v30;
                            if (v31 || (OUTLINED_FUNCTION_0_9(v29, v30) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v32 = OUTLINED_FUNCTION_181_8(0x656874616557);
                              v33 = v4 && v0 == 0xE700000000000000;
                              if (v33 || (OUTLINED_FUNCTION_22_7(v32) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v34 = OUTLINED_FUNCTION_47_28();
                                v36 = v4 && v0 == v35;
                                if (v36 || (OUTLINED_FUNCTION_0_9(v34, v35) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v37 = OUTLINED_FUNCTION_235_3();
                                  if (v1 == v37 && v0 == v38)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_0_9(v37, v38);
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

uint64_t MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6F65646956;
  if (*v0 != 1)
  {
    v1 = 0x6F69647541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D49;
  }
}

void MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.init(_:)()
{
  v1 = OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7(v1) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_116_15(1734438217);
    v6 = v3 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_14(v5) & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_224_2(1701079382);
      v8 = v3 && v0 == 0xE500000000000000;
      if (v8 || (OUTLINED_FUNCTION_15_14(v7) & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_224_2(1768191297);
        if (v3 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_15_14(v9);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

unint64_t sub_1937A39A8()
{
  result = qword_1EAE42B60;
  if (!qword_1EAE42B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B60);
  }

  return result;
}

unint64_t sub_1937A3A00()
{
  result = qword_1EAE42B68;
  if (!qword_1EAE42B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B68);
  }

  return result;
}

unint64_t sub_1937A3A58()
{
  result = qword_1EAE42B70;
  if (!qword_1EAE42B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B70);
  }

  return result;
}

unint64_t sub_1937A3AB0()
{
  result = qword_1EAE42B78;
  if (!qword_1EAE42B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B78);
  }

  return result;
}

unint64_t sub_1937A3B08()
{
  result = qword_1EAE42B80;
  if (!qword_1EAE42B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B80);
  }

  return result;
}

unint64_t sub_1937A3B60()
{
  result = qword_1EAE42B88;
  if (!qword_1EAE42B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B88);
  }

  return result;
}

unint64_t sub_1937A3BB8()
{
  result = qword_1EAE42B90;
  if (!qword_1EAE42B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B90);
  }

  return result;
}

unint64_t sub_1937A3C10()
{
  result = qword_1EAE42B98;
  if (!qword_1EAE42B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B98);
  }

  return result;
}

unint64_t sub_1937A3C68()
{
  result = qword_1EAE42BA0;
  if (!qword_1EAE42BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BA0);
  }

  return result;
}

unint64_t sub_1937A3CC0()
{
  result = qword_1EAE42BA8;
  if (!qword_1EAE42BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BA8);
  }

  return result;
}

unint64_t sub_1937A3D18()
{
  result = qword_1EAE42BB0;
  if (!qword_1EAE42BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BB0);
  }

  return result;
}

unint64_t sub_1937A3D70()
{
  result = qword_1EAE42BB8;
  if (!qword_1EAE42BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BB8);
  }

  return result;
}

unint64_t sub_1937A3DC8()
{
  result = qword_1EAE42BC0;
  if (!qword_1EAE42BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BC0);
  }

  return result;
}

unint64_t sub_1937A3E20()
{
  result = qword_1EAE42BC8;
  if (!qword_1EAE42BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BC8);
  }

  return result;
}

unint64_t sub_1937A3E78()
{
  result = qword_1EAE42BD0;
  if (!qword_1EAE42BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BD0);
  }

  return result;
}

unint64_t sub_1937A3ED0()
{
  result = qword_1EAE42BD8;
  if (!qword_1EAE42BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BD8);
  }

  return result;
}

unint64_t sub_1937A3F28()
{
  result = qword_1EAE42BE0;
  if (!qword_1EAE42BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BE0);
  }

  return result;
}

unint64_t sub_1937A3F80()
{
  result = qword_1EAE42BE8;
  if (!qword_1EAE42BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BE8);
  }

  return result;
}

unint64_t sub_1937A3FD8()
{
  result = qword_1EAE42BF0;
  if (!qword_1EAE42BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BF0);
  }

  return result;
}

unint64_t sub_1937A4030()
{
  result = qword_1EAE42BF8;
  if (!qword_1EAE42BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42BF8);
  }

  return result;
}

unint64_t sub_1937A4088()
{
  result = qword_1EAE42C00;
  if (!qword_1EAE42C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C00);
  }

  return result;
}

unint64_t sub_1937A40E0()
{
  result = qword_1EAE42C08;
  if (!qword_1EAE42C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C08);
  }

  return result;
}

unint64_t sub_1937A4138()
{
  result = qword_1EAE42C10;
  if (!qword_1EAE42C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C10);
  }

  return result;
}

unint64_t sub_1937A4190()
{
  result = qword_1EAE42C18;
  if (!qword_1EAE42C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C18);
  }

  return result;
}

unint64_t sub_1937A41E8()
{
  result = qword_1EAE42C20;
  if (!qword_1EAE42C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C20);
  }

  return result;
}

unint64_t sub_1937A4240()
{
  result = qword_1EAE42C28;
  if (!qword_1EAE42C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C28);
  }

  return result;
}

unint64_t sub_1937A4298()
{
  result = qword_1EAE42C30;
  if (!qword_1EAE42C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C30);
  }

  return result;
}

unint64_t sub_1937A42F0()
{
  result = qword_1EAE42C38;
  if (!qword_1EAE42C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C38);
  }

  return result;
}

unint64_t sub_1937A4348()
{
  result = qword_1EAE42C40;
  if (!qword_1EAE42C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C40);
  }

  return result;
}

unint64_t sub_1937A43A0()
{
  result = qword_1EAE42C48;
  if (!qword_1EAE42C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C48);
  }

  return result;
}

unint64_t sub_1937A43F8()
{
  result = qword_1EAE42C50;
  if (!qword_1EAE42C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C50);
  }

  return result;
}

unint64_t sub_1937A4450()
{
  result = qword_1EAE42C58;
  if (!qword_1EAE42C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C58);
  }

  return result;
}

unint64_t sub_1937A44A8()
{
  result = qword_1EAE42C60;
  if (!qword_1EAE42C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C60);
  }

  return result;
}

unint64_t sub_1937A4500()
{
  result = qword_1EAE42C68;
  if (!qword_1EAE42C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C68);
  }

  return result;
}

unint64_t sub_1937A4558()
{
  result = qword_1EAE42C70;
  if (!qword_1EAE42C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C70);
  }

  return result;
}

unint64_t sub_1937A45B0()
{
  result = qword_1EAE42C78;
  if (!qword_1EAE42C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C78);
  }

  return result;
}

unint64_t sub_1937A4608()
{
  result = qword_1EAE42C80;
  if (!qword_1EAE42C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C80);
  }

  return result;
}

unint64_t sub_1937A4660()
{
  result = qword_1EAE42C88;
  if (!qword_1EAE42C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C88);
  }

  return result;
}

unint64_t sub_1937A46B8()
{
  result = qword_1EAE42C90;
  if (!qword_1EAE42C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C90);
  }

  return result;
}

unint64_t sub_1937A4710()
{
  result = qword_1EAE42C98;
  if (!qword_1EAE42C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42C98);
  }

  return result;
}

unint64_t sub_1937A4768()
{
  result = qword_1EAE42CA0;
  if (!qword_1EAE42CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CA0);
  }

  return result;
}

unint64_t sub_1937A47C0()
{
  result = qword_1EAE42CA8;
  if (!qword_1EAE42CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CA8);
  }

  return result;
}

unint64_t sub_1937A4818()
{
  result = qword_1EAE42CB0;
  if (!qword_1EAE42CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CB0);
  }

  return result;
}

unint64_t sub_1937A4870()
{
  result = qword_1EAE42CB8;
  if (!qword_1EAE42CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CB8);
  }

  return result;
}

unint64_t sub_1937A48C8()
{
  result = qword_1EAE42CC0;
  if (!qword_1EAE42CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CC0);
  }

  return result;
}

unint64_t sub_1937A4920()
{
  result = qword_1EAE42CC8;
  if (!qword_1EAE42CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CC8);
  }

  return result;
}

unint64_t sub_1937A4978()
{
  result = qword_1EAE42CD0;
  if (!qword_1EAE42CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CD0);
  }

  return result;
}

unint64_t sub_1937A49D0()
{
  result = qword_1EAE42CD8;
  if (!qword_1EAE42CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CD8);
  }

  return result;
}

unint64_t sub_1937A4A28()
{
  result = qword_1EAE42CE0;
  if (!qword_1EAE42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CE0);
  }

  return result;
}

unint64_t sub_1937A4A80()
{
  result = qword_1EAE42CE8;
  if (!qword_1EAE42CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CE8);
  }

  return result;
}

unint64_t sub_1937A4AD8()
{
  result = qword_1EAE42CF0;
  if (!qword_1EAE42CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42CF0);
  }

  return result;
}

void OUTLINED_FUNCTION_21_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 21;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_59_20()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_63_16()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_65_22()
{

  return sub_19393CA30();
}

void sub_1937A5894()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD988);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v89 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_27_2(v89, xmmword_193997810);
  OUTLINED_FUNCTION_244_3();
  OUTLINED_FUNCTION_83_0("event");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_61();
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_5_4(v8, "bundle");
  v6(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = 3;
  v13 = OUTLINED_FUNCTION_36_0(v11, "isBundle");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_36_0(v14, "IHAState");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_23_7(v16, "age");
  v6(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  v20 = OUTLINED_FUNCTION_36_0(v18, "ageRange");
  v6(v20);
  v21 = OUTLINED_FUNCTION_72();
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_5_4(v21, "biologicalSex");
  v6(v23);
  v24 = OUTLINED_FUNCTION_33_0(8 * v4);
  *v25 = 8;
  v26 = OUTLINED_FUNCTION_36_0(v24, "startDate");
  v6(v26);
  v27 = OUTLINED_FUNCTION_67_1((v0 + 8 * v4));
  v28 = OUTLINED_FUNCTION_23_7(v27, "endDate");
  v6(v28);
  v29 = OUTLINED_FUNCTION_44(9 * v4);
  *v30 = 10;
  *v29 = "categoryOfEvent";
  v29[1] = 15;
  v31 = OUTLINED_FUNCTION_41(v29);
  v6(v31);
  v32 = OUTLINED_FUNCTION_72();
  *v33 = 11;
  v34 = OUTLINED_FUNCTION_36_0(v32, "bundleInterface");
  v6(v34);
  v35 = OUTLINED_FUNCTION_72();
  *v36 = 12;
  v37 = OUTLINED_FUNCTION_5_4(v35, "bundleEvergreenType");
  v6(v37);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_631(v38);
  v40 = OUTLINED_FUNCTION_23_7(v39, "sugSeetEngType");
  v6(v40);
  v41 = OUTLINED_FUNCTION_52_0();
  *v42 = 14;
  v43 = OUTLINED_FUNCTION_36_0(v41, "appEntryEngType");
  v6(v43);
  v44 = OUTLINED_FUNCTION_67_1((v0 + 14 * v4));
  *v44 = "megaSignalTypeUsed";
  *(v44 + 1) = 18;
  v45 = OUTLINED_FUNCTION_41(v44);
  v6(v45);
  v46 = OUTLINED_FUNCTION_33_0(16 * v4);
  *v47 = 16;
  v48 = OUTLINED_FUNCTION_5_4(v46, "viewVisibleSuggestionsCount");
  v6(v48);
  v49 = OUTLINED_FUNCTION_131_1((v0 + 16 * v4));
  v50 = OUTLINED_FUNCTION_5_4(v49, "viewTotalSuggestionsCount");
  v6(v50);
  v51 = OUTLINED_FUNCTION_44(17 * v4);
  *v52 = 18;
  v53 = OUTLINED_FUNCTION_5_4(v51, "onboardingFlowCompletionState");
  v6(v53);
  v54 = OUTLINED_FUNCTION_52_0();
  *v55 = 19;
  v56 = OUTLINED_FUNCTION_36_0(v54, "isJournalAppInstalled");
  v6(v56);
  v57 = OUTLINED_FUNCTION_72();
  *v58 = 20;
  v59 = OUTLINED_FUNCTION_15(v57, 18);
  v6(v59);
  v60 = OUTLINED_FUNCTION_67_1((v0 + 20 * v4));
  v61 = OUTLINED_FUNCTION_5_4(v60, "isJournalSuggestionSkipped");
  v6(v61);
  v62 = OUTLINED_FUNCTION_52_0();
  *v63 = 22;
  v64 = OUTLINED_FUNCTION_5_4(v62, "isActivitySettingsSwitchEnabled");
  v6(v64);
  v65 = OUTLINED_FUNCTION_52_0();
  *v66 = 23;
  v67 = OUTLINED_FUNCTION_5_4(v65, "isCommunicationSettingsSwitchEnabled");
  v6(v67);
  v68 = OUTLINED_FUNCTION_52_0();
  *v69 = 24;
  v70 = OUTLINED_FUNCTION_5_4(v68, "isSignificantLocationSettingsSwitchEnabled");
  v6(v70);
  v71 = OUTLINED_FUNCTION_52_0();
  *v72 = 25;
  v73 = OUTLINED_FUNCTION_23_7(v71, "isMediaSettingsSwitchEnabled");
  v6(v73);
  v74 = OUTLINED_FUNCTION_52_0();
  *v75 = 26;
  v76 = OUTLINED_FUNCTION_5_4(v74, "isNearbyPeopleSettingsSwitchEnabled");
  v6(v76);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_242_5(v77);
  v79 = OUTLINED_FUNCTION_23_7(v78, "isPhotoSettingsSwitchEnabled");
  v6(v79);
  v80 = OUTLINED_FUNCTION_52_0();
  *v81 = 28;
  v82 = OUTLINED_FUNCTION_5_4(v80, "isStateOfMindSettingsSwitchEnabled");
  v6(v82);
  v83 = OUTLINED_FUNCTION_72();
  *v84 = 29;
  v85 = OUTLINED_FUNCTION_5_4(v83, "isReflectionSettingsSwitchEnabled");
  v6(v85);
  v86 = OUTLINED_FUNCTION_52_0();
  *v87 = 30;
  v88 = OUTLINED_FUNCTION_15(v86, 42);
  v6(v88);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937A5E18()
{
  v3 = v0;
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        type metadata accessor for MomentsEventData.Event(0);
        goto LABEL_20;
      case 2:
        type metadata accessor for MomentsEventData(0);
        type metadata accessor for MomentsEventData.EventBundle(0);
LABEL_20:
        sub_193498018();
        goto LABEL_39;
      case 3:
        v6 = *(type metadata accessor for MomentsEventData(0) + 24);
        goto LABEL_38;
      case 4:
        v6 = *(type metadata accessor for MomentsEventData(0) + 28);
        goto LABEL_38;
      case 5:
        v7 = *(type metadata accessor for MomentsEventData(0) + 32);
        goto LABEL_17;
      case 6:
        v9 = *(type metadata accessor for MomentsEventData(0) + 36);
        goto LABEL_27;
      case 7:
        v9 = *(type metadata accessor for MomentsEventData(0) + 40);
        goto LABEL_27;
      case 8:
      case 9:
        type metadata accessor for MomentsEventData(0);
        OUTLINED_FUNCTION_151_10();
        sub_1934976E4(v10, v11, v12, v2, v1);
        goto LABEL_39;
      case 10:
        v8 = *(type metadata accessor for MomentsEventData(0) + 52);
        goto LABEL_30;
      case 11:
        v8 = *(type metadata accessor for MomentsEventData(0) + 56);
        goto LABEL_30;
      case 12:
        v8 = *(type metadata accessor for MomentsEventData(0) + 60);
        goto LABEL_30;
      case 13:
        v8 = *(type metadata accessor for MomentsEventData(0) + 64);
        goto LABEL_30;
      case 14:
        v8 = *(type metadata accessor for MomentsEventData(0) + 68);
        goto LABEL_30;
      case 15:
        v8 = *(type metadata accessor for MomentsEventData(0) + 72);
LABEL_30:
        OUTLINED_FUNCTION_100_17(v8);
        sub_19393C200();
        goto LABEL_39;
      case 16:
        v7 = *(type metadata accessor for MomentsEventData(0) + 76);
        goto LABEL_17;
      case 17:
        v7 = *(type metadata accessor for MomentsEventData(0) + 80);
LABEL_17:
        OUTLINED_FUNCTION_100_17(v7);
        sub_19393C170();
        goto LABEL_39;
      case 18:
        v9 = *(type metadata accessor for MomentsEventData(0) + 84);
LABEL_27:
        OUTLINED_FUNCTION_126_12(v9);
        sub_1934982A8();
        goto LABEL_39;
      case 19:
        v6 = *(type metadata accessor for MomentsEventData(0) + 88);
        goto LABEL_38;
      case 20:
        v6 = *(type metadata accessor for MomentsEventData(0) + 92);
        goto LABEL_38;
      case 21:
        v6 = *(type metadata accessor for MomentsEventData(0) + 96);
        goto LABEL_38;
      case 22:
        v6 = *(type metadata accessor for MomentsEventData(0) + 100);
        goto LABEL_38;
      case 23:
        v6 = *(type metadata accessor for MomentsEventData(0) + 104);
        goto LABEL_38;
      case 24:
        v6 = *(type metadata accessor for MomentsEventData(0) + 108);
        goto LABEL_38;
      case 25:
        v6 = *(type metadata accessor for MomentsEventData(0) + 112);
        goto LABEL_38;
      case 26:
        v6 = *(type metadata accessor for MomentsEventData(0) + 116);
        goto LABEL_38;
      case 27:
        v6 = *(type metadata accessor for MomentsEventData(0) + 120);
        goto LABEL_38;
      case 28:
        v6 = *(type metadata accessor for MomentsEventData(0) + 124);
        goto LABEL_38;
      case 29:
        v6 = *(type metadata accessor for MomentsEventData(0) + 128);
        goto LABEL_38;
      case 30:
        v6 = *(type metadata accessor for MomentsEventData(0) + 132);
LABEL_38:
        OUTLINED_FUNCTION_100_17(v6);
        sub_19393C0F0();
LABEL_39:
        v3 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1937A6110()
{
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_26_29();
  OUTLINED_FUNCTION_95_3();
  sub_1937A6590();
  if (!v0)
  {
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_95_3();
    sub_1937A66A0();
    type metadata accessor for MomentsEventData(0);
    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_147_3();
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_238();
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_106();
      sub_193447324(v4, v5, v6, v7, v8, v9);
    }

    OUTLINED_FUNCTION_238();
    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_106();
      sub_193447324(v11, v12, v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_95_3();
    sub_1937A67B4();
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_95_3();
    sub_1937A68DC();
    OUTLINED_FUNCTION_16_4();
    if (v17)
    {
      OUTLINED_FUNCTION_149_11(*v18, v17, 10);
    }

    OUTLINED_FUNCTION_16_4();
    if (v19)
    {
      OUTLINED_FUNCTION_149_11(*v20, v19, 11);
    }

    OUTLINED_FUNCTION_16_4();
    if (v21)
    {
      OUTLINED_FUNCTION_149_11(*v22, v21, 12);
    }

    OUTLINED_FUNCTION_16_4();
    if (v23)
    {
      OUTLINED_FUNCTION_149_11(*v24, v23, 13);
    }

    OUTLINED_FUNCTION_16_4();
    if (v25)
    {
      OUTLINED_FUNCTION_149_11(*v26, v25, 14);
    }

    OUTLINED_FUNCTION_16_4();
    if (v27)
    {
      OUTLINED_FUNCTION_149_11(*v28, v27, 15);
    }

    OUTLINED_FUNCTION_147_3();
    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_147_3();
    if ((v30 & 1) == 0)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_238();
    if ((v31 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_106();
      sub_193447324(v32, v33, v34, v35, v36, v37);
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }

    OUTLINED_FUNCTION_117_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_92_12();
      sub_19393C2E0();
    }
  }
}

void sub_1937A6590()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8();
  type metadata accessor for MomentsEventData.Event(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_235_4();
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE42AF0, &unk_193997C80);
  }

  else
  {
    sub_1937B8B6C();
    OUTLINED_FUNCTION_12_12(v9, 1);
    OUTLINED_FUNCTION_236_3();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937A66A0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for MomentsEventData.EventBundle(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v8 = OUTLINED_FUNCTION_15_9();
  type metadata accessor for MomentsEventData(v8);
  OUTLINED_FUNCTION_235_4();
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE42AE8, &qword_193995D00);
  }

  else
  {
    sub_1937B8B6C();
    OUTLINED_FUNCTION_12_12(v1, 2);
    OUTLINED_FUNCTION_236_3();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937A67B4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_1_10();
  type metadata accessor for MomentsEventData(v9);
  OUTLINED_FUNCTION_113_13();
  OUTLINED_FUNCTION_64_1();
  if (v10)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_243();
    v12(v11);
    OUTLINED_FUNCTION_22_1(v0, 8);
    v13 = OUTLINED_FUNCTION_78();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937A68DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_1_10();
  type metadata accessor for MomentsEventData(v9);
  OUTLINED_FUNCTION_113_13();
  OUTLINED_FUNCTION_64_1();
  if (v10)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_243();
    v12(v11);
    OUTLINED_FUNCTION_22_1(v0, 9);
    v13 = OUTLINED_FUNCTION_78();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937A6A68()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAD9A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_6_63(v5, xmmword_1939526C0);
  OUTLINED_FUNCTION_63("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_4_9();
  v10 = OUTLINED_FUNCTION_16_6(v9, "Health");
  v7(v10);
  v11 = OUTLINED_FUNCTION_35_4();
  v12 = OUTLINED_FUNCTION_0_0(v11, "Photo");
  v7(v12);
  v13 = OUTLINED_FUNCTION_2_78();
  v14 = OUTLINED_FUNCTION_0_0(v13, "Proactive");
  v7(v14);
  v15 = OUTLINED_FUNCTION_25_37();
  v16 = OUTLINED_FUNCTION_18_1(v15, "Routine");
  v7(v16);
  v17 = OUTLINED_FUNCTION_3_74();
  v18 = OUTLINED_FUNCTION_0_0(v17, "PostAnalytics");
  v7(v18);
  v19 = OUTLINED_FUNCTION_105_0();
  *v20 = 6;
  *v19 = "PD";
  v19[1] = v1;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  v7(v21);
  v22 = OUTLINED_FUNCTION_23_45();
  *v23 = 7;
  v24 = OUTLINED_FUNCTION_16_6(v22, "Motion");
  v7(v24);
  v25 = OUTLINED_FUNCTION_35_34();
  v26 = OUTLINED_FUNCTION_28_4(v25, 5);
  v7(v26);
  v27 = OUTLINED_FUNCTION_8_59();
  v28 = OUTLINED_FUNCTION_18_1(v27, "ScreenTime");
  v7(v28);
  v29 = OUTLINED_FUNCTION_67_1((v0 + 10 * v4));
  v30 = OUTLINED_FUNCTION_16_6(v29, "IntPlt");
  v7(v30);
  v31 = OUTLINED_FUNCTION_14_4(11);
  *v31 = "SWU";
  *(v31 + 1) = 3;
  v32 = OUTLINED_FUNCTION_1_3(v31);
  v7(v32);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937A6D18()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD9B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v2 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_6_63(v2, xmmword_1939775A0);
  *v0 = "EventCategoryTypeUnknown";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_50_1();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  *v6 = "EventCategoryTypeVisit";
  v6[1] = 22;
  v7 = OUTLINED_FUNCTION_41(v6);
  v4(v7);
  v8 = OUTLINED_FUNCTION_46_10();
  *v9 = 2;
  v10 = OUTLINED_FUNCTION_36_0(v8, "EventCategoryTypeWorkout");
  v4(v10);
  v11 = OUTLINED_FUNCTION_2_78();
  v12 = OUTLINED_FUNCTION_5_4(v11, "EventCategoryTypeMediaOnRepeat");
  v4(v12);
  v13 = OUTLINED_FUNCTION_25_37();
  v14 = OUTLINED_FUNCTION_5_4(v13, "EventCategoryTypeLeisureMedia");
  v4(v14);
  v15 = OUTLINED_FUNCTION_3_74();
  *v15 = "EventCategoryTypePhotoMoment";
  *(v15 + 1) = 28;
  v16 = OUTLINED_FUNCTION_41(v15);
  v4(v16);
  v17 = OUTLINED_FUNCTION_14_4(6);
  v18 = OUTLINED_FUNCTION_5_4(v17, "EventCategoryTypeMediaPlaySessions");
  v4(v18);
  v19 = OUTLINED_FUNCTION_0_103();
  v20 = OUTLINED_FUNCTION_23_7(v19, "EventCategoryTypeTopic");
  v4(v20);
  v21 = OUTLINED_FUNCTION_35_34();
  v22 = OUTLINED_FUNCTION_36_0(v21, "EventCategoryTypeTravelEvent");
  v4(v22);
  v23 = OUTLINED_FUNCTION_8_59();
  v24 = OUTLINED_FUNCTION_36_0(v23, "EventCategoryTypeSharedWithYouEvent");
  v4(v24);
  v25 = OUTLINED_FUNCTION_14_4(10);
  v26 = OUTLINED_FUNCTION_36_0(v25, "EventCategoryTypeSignificantContact");
  v4(v26);
  v27 = OUTLINED_FUNCTION_14_4(11);
  v28 = OUTLINED_FUNCTION_5_4(v27, "EventCategoryTypeStructuredEvent");
  v4(v28);
  v29 = OUTLINED_FUNCTION_14_4(12);
  v30 = OUTLINED_FUNCTION_15(v29, 24);
  v4(v30);
  v31 = OUTLINED_FUNCTION_14_4(13);
  v32 = OUTLINED_FUNCTION_23_7(v31, "EventCategoryTypeMindfulSession");
  v4(v32);
  v33 = OUTLINED_FUNCTION_14_4(14);
  v34 = OUTLINED_FUNCTION_36_0(v33, "EventCategoryTypeSharedPhoto");
  v4(v34);
  v35 = OUTLINED_FUNCTION_21_46();
  v36 = OUTLINED_FUNCTION_23_7(v35, "EventCategoryTypeProximityEvent");
  v4(v36);
  v37 = OUTLINED_FUNCTION_52_22();
  v38 = OUTLINED_FUNCTION_23_7(v37, "EventCategoryTypeMotionActivity");
  v4(v38);
  v39 = OUTLINED_FUNCTION_42_31();
  *v39 = "EventCategoryTypePhotoMemory";
  *(v39 + 1) = 28;
  v40 = OUTLINED_FUNCTION_41(v39);
  v4(v40);
  v41 = OUTLINED_FUNCTION_14_4(18);
  v42 = OUTLINED_FUNCTION_36_0(v41, "EventCategoryTypeTextCelebration");
  v4(v42);
  v43 = OUTLINED_FUNCTION_14_4(19);
  v44 = OUTLINED_FUNCTION_15(v43, 22);
  v4(v44);
  v45 = OUTLINED_FUNCTION_14_4(20);
  v46 = OUTLINED_FUNCTION_36_0(v45, "EventCategoryTypeScreenTimeEvent");
  v4(v46);
  v47 = OUTLINED_FUNCTION_14_4(21);
  v48 = OUTLINED_FUNCTION_5_4(v47, "EventCategoryTypeSoConEvent");
  v4(v48);
  v49 = OUTLINED_FUNCTION_32_10();
  v50 = OUTLINED_FUNCTION_36_0(v49, "EventCategoryTypeLifeEvent");
  v4(v50);
  v51 = OUTLINED_FUNCTION_14_4(23);
  v52 = OUTLINED_FUNCTION_36_0(v51, "EventCategoryTypePDenEvent");
  v4(v52);
  v53 = OUTLINED_FUNCTION_32_10();
  *v53 = "EventCategoryTypeStateOfMind";
  *(v53 + 1) = 28;
  v54 = OUTLINED_FUNCTION_41(v53);
  v4(v54);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}