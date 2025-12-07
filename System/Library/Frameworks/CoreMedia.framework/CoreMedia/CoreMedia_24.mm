size_t FigHEVCBridge_GetSPS_VUI_NCLC()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_10_13(*MEMORY[0x1E69E9840], v11, v12, v13, v14, v15);
  result = OUTLINED_FUNCTION_13_10(v0, v1, v2, v3, v4, v5, v6, v7, 0);
  if (!result)
  {
    OUTLINED_FUNCTION_93();
    v9 = OUTLINED_FUNCTION_47_0();
    result = hevcbridgeParseNALUnit(v9, v10);
    if (!result)
    {
      return 4294954584;
    }
  }

  return result;
}

size_t FigHEVCBridge_GetNALUnitHeader(uint64_t a1, uint64_t a2, _DWORD *a3, const char **a4, _DWORD *a5, _DWORD *a6)
{
  OUTLINED_FUNCTION_38_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_84(v24);
  OUTLINED_FUNCTION_78();
  LOWORD(v44) = 1;
  result = OUTLINED_FUNCTION_46_0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24[0], v24[1], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, a1, a2, 0, a1 + a2, v43[4], v44, a1, a1, v45, v46, v47, v48, v49);
  if (!result)
  {
    LOBYTE(v28) = 7;
    v24[0] = &v22;
    v25 = hevcbridgeGetNALUnitHeaderCallbackUnsigned;
    result = hevcbridgeParseNALUnit(v43, v24);
    if (!result)
    {
      if (a3)
      {
        *a3 = v22;
      }

      if (a4)
      {
        if (v22 > 0x3F)
        {
          v21 = "?";
        }

        else
        {
          v21 = nalUnitTypeString[v22];
        }

        *a4 = v21;
      }

      if (a5)
      {
        *a5 = HIDWORD(v22);
      }

      result = 0;
      if (a6)
      {
        *a6 = v23 - 1;
      }
    }
  }

  return result;
}

size_t FigHEVCBridge_GetAmbientViewingEnvironment()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_59_0(v22);
  OUTLINED_FUNCTION_84(v4);
  v19[0] = 0;
  result = OUTLINED_FUNCTION_13_10(v5, v6, v7, v8, v9, v10, v11, v12, v18);
  if (!result)
  {
    v20 = v3;
    v21 = 7;
    v19[1] = v19;
    v19[3] = hevcbridgeGetSEIAmbientViewingEnvironmentCallbackUnsigned;
    v14 = OUTLINED_FUNCTION_47_0();
    result = hevcbridgeParseNALUnit(v14, v15);
    if (result <= 1)
    {
      result = 4294954584;
      if (LODWORD(v19[0]))
      {
        v16 = WORD2(v19[0]);
        if (WORD2(v19[0]))
        {
          v17 = HIWORD(v19[0]);
          if (HIWORD(v19[0]))
          {
            if (v2)
            {
              *v2 = v19[0];
            }

            if (v1)
            {
              *v1 = v16;
            }

            result = 0;
            if (v0)
            {
              *v0 = v17;
            }
          }
        }
      }
    }
  }

  return result;
}

size_t FigHEVCBridge_GetSPSProfileTierLevel()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_10_13(*MEMORY[0x1E69E9840], v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_78();
  result = OUTLINED_FUNCTION_13_10(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  if (!result)
  {
    v21 = v3;
    v22 = 1048583;
    v18 = &v16;
    v19 = hevcbridgeGetSPSProfileTierLevelCallbackFlag;
    v20 = hevcbridgeGetSPSProfileTierLevelCallbackUnsigned;
    v13 = OUTLINED_FUNCTION_47_0();
    result = hevcbridgeParseNALUnit(v13, v14);
    if (!result)
    {
      v15 = BYTE4(v16);
      *v2 = v16;
      *v1 = v17;
      *v0 = v15;
    }
  }

  return result;
}

uint64_t FigHEVCBridge_GetSPSChromaFormatAndBitDepths(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_38_0(*MEMORY[0x1E69E9840]);
  bzero(v32, 0x88uLL);
  OUTLINED_FUNCTION_78();
  LOWORD(v49) = 1;
  result = OUTLINED_FUNCTION_46_0(v10, v11, v12, v13, v14, v15, v16, v17, v25, v27, v29, v30, v31, v32[0], v32[1], v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, a1, a2, 0, a1 + a2, v48[4], v49, a1, a1, v50, v51, v52, v53, v54);
  if (result)
  {
    return result;
  }

  LOBYTE(v33) = 1;
  OUTLINED_FUNCTION_93();
  v29 = v19;
  v30 = hevcbridgeGetSPSChromaFormatAndBitDepthsCallbackFlag;
  v31 = hevcbridgeGetSPSChromaFormatAndBitDepthsCallbackUnsigned;
  result = hevcbridgeParseNALUnit(v48, &v29);
  if (result)
  {
    return result;
  }

  if (v26 >= 4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v24 = 8423;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v24, v21, v22, v23, v26);
  }

  if (HIDWORD(v26) >= 9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v24 = 8424;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v24, v21, v22, v23, v26);
  }

  if (v28 >= 9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v24 = 8425;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v24, v21, v22, v23, v26);
  }

  if (a3)
  {
    *a3 = v26;
  }

  if (a4)
  {
    *a4 = BYTE4(v26) + 8;
  }

  result = 0;
  if (a5)
  {
    *a5 = v28 + 8;
  }

  return result;
}

size_t FigHEVCBridge_GetSPSIsScalingListPresent(uint64_t a1, uint64_t a2, char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  bzero(v17, 0xA0uLL);
  v16 = 0;
  if (!a3)
  {
    return 4294954584;
  }

  v21 = 0u;
  v26 = 0;
  v27 = 0;
  v29 = 0;
  *a3 = 0;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = 0;
  v20[3] = a1 + a2;
  WORD4(v21) = 1;
  v22 = a1;
  v23 = a1;
  v24 = 0;
  v25 = 0;
  v28 = 0;
  result = hevcbridgeAdvanceInBitstream(v20, 0, v6, v7, v8, v9, v10, v11, v15);
  if (!result)
  {
    v18 = 1;
    v19 = 603979776;
    v17[2] = hevcbridgeGetSPSScalingListEnabledAndScalingListPresentCallbackUnsigned;
    v17[0] = &v16;
    v17[1] = hevcbridgeGetSPSScalingListEnabledAndScalingListPresentCallback;
    result = hevcbridgeParseNALUnit(v20, v17);
    if (!result)
    {
      if (v16)
      {
        v13 = HIBYTE(v16) == 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = !v13;
      *a3 = v14;
    }
  }

  return result;
}

double FigHEVCBridge_Get3DLayerIDSets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  OUTLINED_FUNCTION_84(v36);
  bzero(v42, 0x8CuLL);
  v59[0] = a3;
  v59[1] = a4;
  v59[2] = 0;
  v59[3] = a3 + a4;
  WORD4(v60) = 0;
  *&v61 = a3;
  *(&v61 + 1) = a3;
  v62 = 0uLL;
  *(&v63 + 1) = 0;
  LODWORD(v64) = 0;
  if (!hevcbridgeAdvanceInBitstream(v59, 0, v12, v13, v14, v15, v16, v17, v36[0]))
  {
    v39 = 1;
    v41 = 48;
    v37 = hevcbridgeGet3DLayerIDsSEICallbackUnsigned;
    v43 = -1;
    if (hevcbridgeParseSEI3DReferenceDisplaysInformation(v59, v36, v18, v19, v20, v21, v22, v23, v42) <= 1)
    {
      *&v52 = a1;
      *(&v52 + 1) = a2;
      *&v53 = 0;
      *(&v53 + 1) = a1 + a2;
      WORD4(v54) = 1;
      *&v55 = a1;
      *(&v55 + 1) = a1;
      v56 = 0uLL;
      *(&v57 + 1) = 0;
      LODWORD(v58) = 0;
      if (!hevcbridgeAdvanceInBitstream(&v52, 0, v25, v26, v27, v28, v29, v30, v36[0]))
      {
        bzero(&v38, 0x88uLL);
        v39 = 1;
        v40 = 4160815104;
        v36[0] = v42;
        v36[1] = hevcbridgeGet3DLayerIDsVPSCallbackFlag;
        v37 = hevcbridgeGet3DLayerIDsVPSCallbackUnsigned;
        *&v31 = -1;
        *(&v31 + 1) = -1;
        v44 = v31;
        v45 = v31;
        v46 = v31;
        v47 = v31;
        v48 = v31;
        v49 = v31;
        v50 = v31;
        v51 = v31;
        if (!hevcbridgeParseNALUnit(&v52, v36))
        {
          v32 = v45;
          *a5 = v44;
          a5[1] = v32;
          v33 = v47;
          a5[2] = v46;
          a5[3] = v33;
          v34 = v49;
          *a6 = v48;
          a6[1] = v34;
          result = *&v50;
          v35 = v51;
          a6[2] = v50;
          a6[3] = v35;
        }
      }
    }
  }

  return result;
}

void FigHEVCBridge_Get3DLayerIDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v8 = OUTLINED_FUNCTION_73();
  v19[2] = v8;
  v19[3] = v8;
  v19[0] = v8;
  v19[1] = v8;
  FigHEVCBridge_Get3DLayerIDSets(v9, v10, v11, v12, v20, v19);
  v14 = v20[0];
  v16 = LOBYTE(v20[0]) == 0xFF || v13 != 0;
  if (LOBYTE(v19[0]) == 0xFF || v16)
  {
    v14 = -1;
  }

  if (v16)
  {
    v18 = -1;
  }

  else
  {
    v18 = v19[0];
  }

  *a5 = v14;
  *a6 = v18;
}

_BYTE *FigHEVCBridge_AllocThreeDimensionalReferenceDisplaysInfo(unsigned int a1)
{
  if (a1 > 0x20)
  {
    return 0;
  }

  v1 = a1;
  result = malloc_type_calloc(1uLL, 40 * a1 + 8, 0x68B306DBuLL);
  if (result)
  {
    result[3] = v1 - 1;
  }

  return result;
}

uint64_t FigHEVCBridge_CreateThreeDimensionalReferenceDisplaysInfoSEI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  OUTLINED_FUNCTION_22_4();
  v253 = *MEMORY[0x1E69E9840];
  bzero(v252, 0x104uLL);
  v251 = 0;
  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  v246 = 0u;
  bzero(&v196 + 3, 0x185uLL);
  if (v9)
  {
    v245[1] = 260;
    *&v248 = v252;
    BYTE9(v247) = 0;
    OUTLINED_FUNCTION_56_0(v11, v12, v13, v14, v15, v16, v17, v18, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v252);
    OUTLINED_FUNCTION_27_5();
    result = hevcbridgeUPush(v19, v20, v21, v22, v23, v24, v25, v26, v196);
    if (!result)
    {
      v35 = OUTLINED_FUNCTION_94(result, v28, v29, v30, v31, v32, v33, v34, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
      result = hevcbridgeUPush(v35, v36, 39, 0, v37, v38, v39, v40, v196);
      if (!result)
      {
        OUTLINED_FUNCTION_94(result, v41, v42, v43, v44, v45, v46, v47, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
        OUTLINED_FUNCTION_27_5();
        result = hevcbridgeUPush(v48, v49, v50, v51, v52, v53, v54, v55, v196);
        if (!result)
        {
          result = OUTLINED_FUNCTION_58_0(v245, 3, v56, v57, v58, v59, v60, v61, v196);
          if (!result)
          {
            result = hevcbridgeUPush(v245, 8u, 176, 0, v62, v63, v64, v65, v196);
            if (!result)
            {
              OUTLINED_FUNCTION_27_5();
              result = hevcbridgeUPush(v66, v67, v68, v69, v70, v71, v72, v73, v196);
              if (!result)
              {
                result = hevcbridgeUEPush(v245, *v10, v74, v75, v76, v77, v78, v79, v196);
                if (!result)
                {
                  v86 = OUTLINED_FUNCTION_56_0(result, v80, v10[1], v81, v82, v83, v84, v85, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
                  result = hevcbridgeUPush(v86, v87, v88, 0, v89, v90, v91, v92, v196);
                  if (!result)
                  {
                    if (!v10[1] || (result = hevcbridgeUEPush(v245, v10[2], v93, v94, v95, v96, v97, v98, v196), !result))
                    {
                      result = hevcbridgeUEPush(v245, v10[3], v93, v94, v95, v96, v97, v98, v196);
                      if (!result)
                      {
                        v105 = v10 + 24;
                        v106 = -1;
                        while (1)
                        {
                          result = hevcbridgeUEPush(v245, *(v105 - 8), v99, v100, v101, v102, v103, v104, v196);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUEPush(v245, *(v105 - 7), v107, v108, v109, v110, v111, v112, v196);
                          if (result)
                          {
                            return result;
                          }

                          v119 = OUTLINED_FUNCTION_94(result, v113, *(v105 - 12), v114, v115, v116, v117, v118, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
                          result = hevcbridgeUPush(v119, v120, v121, 0, v122, v123, v124, v125, v196);
                          if (result)
                          {
                            return result;
                          }

                          if (*(v105 - 12))
                          {
                            v132 = *v10 + *(v105 - 12);
                            v131 = v132 - 31;
                            if (v132 < 0x1F)
                            {
LABEL_19:
                              v131 = 0;
LABEL_24:
                              v133 = *(v105 - 2);
                              goto LABEL_25;
                            }
                          }

                          else
                          {
                            v130 = *v10;
                            v131 = v130 - 30;
                            if (v130 < 0x1E)
                            {
                              goto LABEL_19;
                            }
                          }

                          if (v131 < 33)
                          {
                            goto LABEL_24;
                          }

                          result = hevcbridgeUPushLong(v245, (v131 - 32), *(v105 - 1), 0, v126, v127, v128, v129, v196);
                          if (result)
                          {
                            return result;
                          }

                          v133 = *(v105 - 2);
                          v131 = 32;
LABEL_25:
                          result = hevcbridgeUPushLong(v245, v131, v133, 0, v126, v127, v128, v129, v196);
                          if (result)
                          {
                            return result;
                          }

                          if (v10[1])
                          {
                            v140 = OUTLINED_FUNCTION_94(result, v134, *v105, v135, v136, v137, v138, v139, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
                            result = hevcbridgeUPush(v140, v141, v142, 0, v143, v144, v145, v146, v196);
                            if (result)
                            {
                              return result;
                            }

                            if (*v105)
                            {
                              v153 = v10[2] + *v105;
                              v152 = v153 - 31;
                              if (v153 >= 0x1F)
                              {
                                goto LABEL_32;
                              }

LABEL_30:
                              v152 = 0;
                            }

                            else
                            {
                              v151 = v10[2];
                              v152 = v151 - 30;
                              if (v151 < 0x1E)
                              {
                                goto LABEL_30;
                              }

LABEL_32:
                              if (v152 >= 33)
                              {
                                result = hevcbridgeUPushLong(v245, (v152 - 32), *(v105 + 3), 0, v147, v148, v149, v150, v196);
                                if (result)
                                {
                                  return result;
                                }

                                v154 = *(v105 + 2);
                                v152 = 32;
LABEL_36:
                                result = hevcbridgeUPushLong(v245, v152, v154, 0, v147, v148, v149, v150, v196);
                                if (result)
                                {
                                  return result;
                                }

                                goto LABEL_37;
                              }
                            }

                            v154 = *(v105 + 2);
                            goto LABEL_36;
                          }

LABEL_37:
                          v155 = OUTLINED_FUNCTION_56_0(result, v134, v105[16], v135, v136, v137, v138, v139, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
                          result = hevcbridgeUPush(v155, v156, v157, 0, v158, v159, v160, v161, v196);
                          if (result)
                          {
                            return result;
                          }

                          if (v105[16])
                          {
                            result = hevcbridgeUPush(v245, 0xAu, *(v105 + 9), 0, v101, v102, v103, v104, v196);
                            if (result)
                            {
                              return result;
                            }
                          }

                          ++v106;
                          v105 += 40;
                          if (v106 >= v10[3])
                          {
                            v163 = OUTLINED_FUNCTION_56_0(result, v162, v10[4], v100, v101, v102, v103, v104, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
                            result = hevcbridgeUPush(v163, v164, v165, 0, v166, v167, v168, v169, v196);
                            if (!result)
                            {
                              if (HIDWORD(v249))
                              {
                                result = OUTLINED_FUNCTION_50_0(v245, v170, v171, v172, v173, v174, v175, v176, v196);
                                if (result)
                                {
                                  return result;
                                }

                                while (HIDWORD(v249))
                                {
                                  OUTLINED_FUNCTION_56_0(result, v170, v171, v172, v173, v174, v175, v176, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245[0]);
                                  OUTLINED_FUNCTION_27_5();
                                  result = hevcbridgeUPush(v177, v178, v179, v180, v181, v182, v183, v184, v196);
                                }
                              }

                              v252[3] = v248 - LOBYTE(v245[0]) - 4;
                              result = OUTLINED_FUNCTION_50_0(v245, v170, v171, v172, v173, v174, v175, v176, v196);
                              if (!result)
                              {
                                BufferWithStartCodeEmulationBytes = generateBufferWithStartCodeEmulationBytes(v248 - v245[0] + 1, v252, &v196 + 3);
                                v186 = CFDataCreate(*MEMORY[0x1E695E480], &v196 + 3, BufferWithStartCodeEmulationBytes);
                                if (v186)
                                {
                                  v187 = v186;
                                  result = 0;
                                  *v9 = v187;
                                }

                                else
                                {
                                  fig_log_get_emitter("com.apple.coremedia", "");
                                  OUTLINED_FUNCTION_0();
                                  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v192, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x22E3, v193, v194, v195, v196);
                                }
                              }
                            }

                            return result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v188, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2290, v189, v190, v191, a9);
  }

  return result;
}

uint64_t hevcbridgeUPushLong(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v9 = a4;
  v10 = a3;
  v11 = a1;
  if (a2 >= 26)
  {
    result = hevcbridgeUPush(a1, a2 - 16, WORD1(a3), a4, a5, a6, a7, a8, v13);
    if (result)
    {
      return result;
    }

    LODWORD(a3) = v10;
    a1 = v11;
    LODWORD(a2) = 16;
  }

  return hevcbridgeUPush(a1, a2, a3, v9, a5, a6, a7, a8, a9);
}

size_t hevcbridgeUPush(uint64_t *a1, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v11 = *(a1 + 41);
  if (a4)
  {
    result = 4294954582;
    if (a2 - 26 < 0xFFFFFFE7 || v11)
    {
      return result;
    }
  }

  else
  {
    if (*(a1 + 41))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v26 = 990;
      goto LABEL_21;
    }

    if (a2 <= 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v26 = 992;
      goto LABEL_21;
    }

    if (a2 >= 0x1A)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v26 = 994;
      goto LABEL_21;
    }
  }

  v13 = *(a1 + 19) + a2;
  v14 = (a3 << -(*(a1 + 76) + a2)) | *(a1 + 20);
  *(a1 + 20) = v14;
  __src = bswap32(v14);
  v15 = a1[6];
  v16 = *(a1 + 2) + *a1 - v15;
  if (v16 >= 4uLL)
  {
    *v15 = __src;
    goto LABEL_14;
  }

  v17 = (v13 + 7) >> 3;
  memcpy(v15, &__src, v16);
  if (a4)
  {
    if (v17 > v16)
    {
      return 4294954582;
    }

    goto LABEL_14;
  }

  if (v17 <= v16)
  {
LABEL_14:
    v18 = *(a1 + 20) << (v13 & 0xF8);
    v19 = a1[6] + (v13 >> 3);
    a1[6] = v19;
    *(a1 + 19) = v13 & 7;
    *(a1 + 20) = v18;
    v20 = *a1;
    v21 = a1[1];
    result = 0;
    if (v21 + *a1 <= v19)
    {
      *(a1 + 41) = 1;
      a1[6] = v20 + v21;
    }

    return result;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v26 = 1007;
LABEL_21:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", v26, v23, v24, v25, a9);
}

size_t FigHEVCBridge_CreateUpdatedHVCCWithAdditionalHEVCParameterSets(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, void *a8, __CFData **a9)
{
  v222 = a5;
  v223 = a4;
  v263 = *MEMORY[0x1E69E9840];
  v233 = 0;
  cf = 0;
  bzero(v240, 0x100uLL);
  v239 = 0;
  memset(v238, 0, sizeof(v238));
  v241 = 0x100000000;
  v242 = 2;
  v243 = 0x400000003;
  v232 = 0;
  v231 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (!v223)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v169 = 4294954584;
    v170 = 9535;
    goto LABEL_117;
  }

  if (!v222)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v169 = 4294954584;
    v170 = 9536;
    goto LABEL_117;
  }

  if (a6 > 4 || ((1 << a6) & 0x16) == 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v169 = 4294954584;
    v170 = 9539;
LABEL_117:
    HEVCParameterSetAtIndex = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v165, v169, "<<<< HEVCBridge >>>>", v170, v166, v167, v168, v197);
    goto LABEL_118;
  }

  if (!a9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v169 = 4294954584;
    v170 = 9541;
    goto LABEL_117;
  }

  *a9 = 0;
  if (a2)
  {
    v15 = OUTLINED_FUNCTION_91();
    HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(v15, v16, 0, 0, 0, 0, v17, v18, 0, 0);
    if (HEVCParameterSetAtIndex)
    {
LABEL_118:
      v45 = HEVCParameterSetAtIndex;
      v46 = 0;
      goto LABEL_119;
    }

    if (HIDWORD(v232) != a6)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v169 = 4294954584;
      v170 = 9547;
      goto LABEL_117;
    }
  }

  if (a3 > 0x4FFFB)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v169 = 4294954584;
    v170 = 9551;
    goto LABEL_117;
  }

  if (v233 > 0x4FFFB)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v169 = 4294954584;
    v170 = 9553;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_89();
  v22 = malloc_type_calloc(v20 + a3, 0x20uLL, v21);
  if (!v22)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v169 = 4294954583;
    v170 = 9557;
    goto LABEL_117;
  }

  v23 = v22;
  v220 = a2;
  v213 = a9;
  v24 = v233;
  v25 = MEMORY[0x1E695E480];
  HIDWORD(v212) = a6;
  if (!(v233 + a3))
  {
    OUTLINED_FUNCTION_43_0();
    v227 = v23;
    qsort(v23, 0, 0x20uLL, v26);
    v221 = 0;
    v27 = 0;
    v224 = 0;
    theArraya = 0;
    WORD2(v215) = 0;
    BYTE4(v218) = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -4;
    v33 = -8;
    v34 = 23;
    v35 = -8;
LABEL_18:
    Mutable = CFDataCreateMutable(*v25, v34);
    if (Mutable)
    {
      v37 = Mutable;
      bytes = 1;
      v245 = v30 | v29 | v28;
      CFDataAppendBytes(Mutable, &bytes, 2);
      LODWORD(v232) = bswap32(v232);
      CFDataAppendBytes(v37, &v232, 4);
      v231 = bswap64(v231);
      CFDataAppendBytes(v37, &v231 + 2, 6);
      bytes = BYTE4(v218);
      v245 = BYTE5(v215) | 0xF0;
      v246 = BYTE4(v215);
      v247 = -4;
      v248 = v32;
      v249 = v35;
      v250 = v33;
      *v251 = 0;
      v251[2] = v224 | theArraya | (BYTE4(v212) + 3) & 3;
      v251[3] = v31;
      CFDataAppendBytes(v37, &bytes, 11);
      for (i = 0; i != 5; ++i)
      {
        v39 = v238 + 24 * i;
        v40 = *(v39 + 6);
        if (*(v39 + 6))
        {
          *v256 = 0;
          *v235 = 0;
          bytes = v39[16] & 0x3F | 0x80;
          CFDataAppendBytes(v37, &bytes, 1);
          *v235 = bswap32(v40 - *(v39 + 7)) >> 16;
          CFDataAppendBytes(v37, v235, 2);
          v41 = 0;
          v42 = *v39;
          do
          {
            if (!v41 || *v42 != *(v42 - 32) || *(v42 + 4) != *(v42 - 28))
            {
              v43 = *(v42 + 8);
              v44 = *(v42 + 16);
              *v256 = bswap32(v44) >> 16;
              CFDataAppendBytes(v37, v256, 2);
              CFDataAppendBytes(v37, v43, v44);
            }

            ++v41;
            v42 += 32;
          }

          while (v40 != v41);
        }
      }

      v45 = 0;
      *v213 = v37;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v45 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v187, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2654, v188, v189, v190, v197);
    }

    v46 = v27;
    v23 = v227;
    goto LABEL_30;
  }

  v203 = a7;
  v204 = a8;
  v208 = v9;
  v47 = 0;
  v46 = 0;
  v210 = 0;
  v211 = 0;
  v48 = 0;
  v205 = 0;
  v206 = 0;
  v207 = 0xFFFFFFFF00000000;
  HIDWORD(v215) = 0;
  HIDWORD(v218) = 0;
  LODWORD(v212) = 0;
  v49 = 0;
  v50 = 0;
  v214 = 0;
  allocator = *MEMORY[0x1E695E480];
  bytesDeallocator = *MEMORY[0x1E695E498];
  v209 = xmmword_197166470;
  while (2)
  {
    v229 = 0;
    BytePtr = 0;
    v51 = &v23[32 * v49];
    v52 = v48 >= v24;
    v53 = v48 - v24;
    v228 = v50;
    if (v52)
    {
      v56 = *(v223 + 8 * v53);
      v57 = *(v222 + 8 * v53);
      v229 = v57;
      BytePtr = v56;
      v51[24] = 0;
      *(v51 + 1) = v56;
      *(v51 + 2) = v57;
      v55 = v229;
    }

    else
    {
      ArrayOfSEINALUnitsFromJumboSEINALUnit = hevcbridge_getHEVCParameterSetAtIndex(v220, 1, 0, v48, &BytePtr, &v229, 0, 0, 0, 0);
      if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
      {
        goto LABEL_113;
      }

      v51[24] = 1;
      *(v51 + 1) = BytePtr;
      v55 = v229;
      *(v51 + 2) = v229;
    }

    if (v55 >= 0x10000)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_42();
      v195 = 4294954584;
      v196 = 9583;
      goto LABEL_112;
    }

    if (!v55)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_42();
      v195 = 4294954584;
      v196 = 9586;
      goto LABEL_112;
    }

    v58 = BytePtr;
    if (!BytePtr)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_42();
      v195 = 4294954584;
      v196 = 9588;
      goto LABEL_112;
    }

    v59 = (*BytePtr >> 1) & 0x3F;
    switch(v59)
    {
      case ' ':
        OUTLINED_FUNCTION_8_17();
        bzero((v87 + 16), 0x90uLL);
        LODWORD(v237) = 0;
        *v235 = 0u;
        v236 = 0u;
        OUTLINED_FUNCTION_71();
        v260 = 1;
        v261 = v58;
        v262 = v58;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_22_7(v88, v89, v90, v91, v92, v93, v94, v95, v197);
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v253 = 1;
        *&v254 = 49;
        v255 = 1048639;
        OUTLINED_FUNCTION_97(ArrayOfSEINALUnitsFromJumboSEINALUnit, v96, v97, v98, v99, v100, v101, v102, v199, v202, v203, v204, v205, v206, v207, v208, v209, *(&v209 + 1), v210, v211, v212, v213, v214, v215, bytesDeallocator, v217, v218, allocator, v220, v221, v222, v223, theArray, v228, v229, BytePtr, v231, v232, v233, cf, v235[0]);
        *&v251[1] = hevcbridgeParseVPSForHVCCCallbackFlag;
        v252 = hevcbridgeParseVPSForHVCCCallbackUnsigned;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_106();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v103 = BYTE1(v237);
        v104 = *&v235[8];
        v105 = *&v235[12];
        v106 = v236;
        v107 = HIDWORD(v236);
        v108 = DWORD2(v236) | (DWORD1(v236) << 32);
        v86 = *v235;
        v109 = *&v235[4] + 1;
        v110 = v237;
        v111 = v238 + 24 * v241;
        if (!*(v111 + 6) || *(v111 + 6) == 1 && *(v111 + 2) == *v235)
        {
          v85 = 0;
          *(&v238[1] + 24 * v241) = 32;
          LODWORD(v212) = v104;
          LODWORD(v232) = v106;
          v231 = v108;
          v211 = __PAIR64__(v103, v105);
          HIDWORD(v218) = v107;
          v210 = __PAIR64__(v109, v110);
          goto LABEL_74;
        }

        v50 = v228;
        if (v212 != *&v235[8])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9632;
          goto LABEL_112;
        }

        if (BYTE1(v237) != BYTE4(v211))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9633;
          goto LABEL_112;
        }

        if (v211 != *&v235[12])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9634;
          goto LABEL_112;
        }

        if (v232 != v236)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9635;
          goto LABEL_112;
        }

        if (v231 != v108)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9636;
          goto LABEL_112;
        }

        if (HIDWORD(v218) != HIDWORD(v236))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9637;
          goto LABEL_112;
        }

        if (HIDWORD(v210) != v109)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9638;
          goto LABEL_112;
        }

        if (v237 != v210)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9639;
          goto LABEL_112;
        }

        v85 = 0;
        goto LABEL_75;
      case '!':
        OUTLINED_FUNCTION_8_17();
        bzero((v112 + 16), 0x90uLL);
        v236 = 0u;
        v237 = 0u;
        *v235 = 0u;
        OUTLINED_FUNCTION_71();
        v260 = 1;
        v261 = v58;
        v262 = v58;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_22_7(v113, v114, v115, v116, v117, v118, v119, v120, v197);
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v253 = 3;
        v254 = v209;
        OUTLINED_FUNCTION_97(ArrayOfSEINALUnitsFromJumboSEINALUnit, v121, v122, v123, v124, v125, v126, v127, v200, v202, v203, v204, v205, v206, v207, v208, v209, *(&v209 + 1), v210, v211, v212, v213, v214, v215, bytesDeallocator, v217, v218, allocator, v220, v221, v222, v223, theArray, v228, v229, BytePtr, v231, v232, v233, cf, v235[0]);
        *&v251[1] = hevcbridgeParseSPSForHVCCCallbackFlag;
        v252 = hevcbridgeParseSPSForHVCCCallbackUnsigned;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_106();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v86 = *&v235[4];
        if (*v235)
        {
          v85 = 0;
LABEL_74:
          v50 = v228;
LABEL_75:
          v154 = v238 + 24 * v240[v59];
          v154[16] = v59;
          ++*(v154 + 6);
          *(v154 + 2) = v86;
          if ((v85 & 1) == 0)
          {
            v155 = &v23[32 * v49];
            *v155 = v59;
            *(v155 + 1) = v86;
            ++v49;
          }

          ++v48;
          v24 = v233;
          if (v48 >= v233 + a3)
          {
            v221 = v47;
            v172 = v23;
            v27 = v46;
            v30 = v212 << 6;
            v29 = 32 * (BYTE4(v211) & 1);
            v28 = v211 & 0x1F;
            v32 = v207 | 0xFC;
            v35 = BYTE4(v206) | 0xF8;
            v33 = v206 | 0xF8;
            theArraya = 8 * (BYTE4(v210) & 7);
            v224 = 4 * (v210 & 1);
            OUTLINED_FUNCTION_43_0();
            qsort(v172, v49, 0x20uLL, v173);
            v227 = v172;
            v31 = 0;
            if (!v49)
            {
              v34 = 23;
              v25 = MEMORY[0x1E695E480];
              goto LABEL_18;
            }

            v174 = 0;
            v34 = 23;
            v175 = v172;
            v25 = MEMORY[0x1E695E480];
            while (1)
            {
              v176 = *v175;
              v177 = v240[v176];
              v178 = v238 + 3 * v177;
              if (*v178)
              {
                if (!v174)
                {
                  goto LABEL_133;
                }
              }

              else
              {
                *v178 = v175;
                v34 += 3;
                ++v31;
                if (!v174)
                {
                  goto LABEL_133;
                }
              }

              if (v176 != *(v175 - 8) || v175[1] != *(v175 - 7))
              {
LABEL_133:
                v34 += *(v175 + 2) + 2;
                goto LABEL_134;
              }

              ++*(v238 + 12 * v177 + 7);
LABEL_134:
              ++v174;
              v175 += 8;
              if (v49 == v174)
              {
                goto LABEL_18;
              }
            }
          }

          continue;
        }

        v156 = *&v235[8];
        if (*&v235[8] == 2)
        {
          v158 = -1;
          v157 = -2;
        }

        else if (*&v235[8] == 1)
        {
          v157 = -2;
          v158 = -2;
        }

        else
        {
          v157 = -1;
          v158 = -1;
        }

        v159 = *&v235[12];
        v160 = v236;
        v161 = DWORD1(v236);
        v162 = (DWORD2(v236) + (DWORD1(v237) + v237) * v157);
        v163 = (HIDWORD(v236) + (HIDWORD(v237) + DWORD2(v237)) * v158);
        if (!v228 || (v228 == 1 ? (v164 = HIDWORD(v207) == *&v235[4]) : (v164 = 0), v164))
        {
          *(&v238[1] + 24 * SHIDWORD(v241)) = 33;
          if (v203)
          {
            *v203 = v162;
          }

          LODWORD(v205) = v163;
          HIDWORD(v215) = v161;
          if (v204)
          {
            *v204 = v163;
          }

          HIDWORD(v205) = v162;
          v206 = __PAIR64__(v159, v160);
          LODWORD(v207) = v156;
LABEL_110:
          v85 = 0;
          v50 = v228 + 1;
          HIDWORD(v207) = v86;
          goto LABEL_75;
        }

        if (v207 != *&v235[8])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9681;
          goto LABEL_112;
        }

        if (HIDWORD(v206) != *&v235[12])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9682;
          goto LABEL_112;
        }

        if (v206 != v236)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9683;
          goto LABEL_112;
        }

        if (HIDWORD(v215) != DWORD1(v236))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9684;
          goto LABEL_112;
        }

        if (HIDWORD(v205) != v162)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v195 = 4294954584;
          v196 = 9685;
          goto LABEL_112;
        }

        if (v205 == v163)
        {
          goto LABEL_110;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_42();
        v195 = 4294954584;
        v196 = 9686;
LABEL_112:
        ArrayOfSEINALUnitsFromJumboSEINALUnit = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, v195, "<<<< HEVCBridge >>>>", v196, v192, v193, v194, v197);
LABEL_113:
        v45 = ArrayOfSEINALUnitsFromJumboSEINALUnit;
LABEL_114:
        free(v23);
        if (v47)
        {
          CFRelease(v47);
        }

LABEL_119:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v46)
        {
          CFRelease(v46);
        }

        return v45;
      case '""':
        OUTLINED_FUNCTION_8_17();
        OUTLINED_FUNCTION_84(v69);
        *v235 = 0;
        OUTLINED_FUNCTION_71();
        v260 = 1;
        v261 = v58;
        v262 = v58;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_22_7(v70, v71, v72, v73, v74, v75, v76, v77, v197);
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v253 = 1;
        *&v254 = 1;
        OUTLINED_FUNCTION_97(ArrayOfSEINALUnitsFromJumboSEINALUnit, v78, v79, v80, v81, v82, v83, v84, v198, v202, v203, v204, v205, v206, v207, v208, v209, *(&v209 + 1), v210, v211, v212, v213, v214, v215, bytesDeallocator, v217, v218, allocator, v220, v221, v222, v223, theArray, v228, v229, BytePtr, v231, v232, v233, cf, v235[0]);
        v252 = hevcbridgeParsePPSForHVCCCallbackUnsigned;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_106();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v85 = 0;
        v86 = *v235;
        goto LABEL_74;
      case '\'':
      case '(':
        if (v47)
        {
          CFRelease(v47);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v47 = CFDataCreateWithBytesNoCopy(allocator, BytePtr, v229, bytesDeallocator);
        ArrayOfSEINALUnitsFromJumboSEINALUnit = FigHEVCBridge_CreateArrayOfSEINALUnitsFromJumboSEINALUnit(v47, &cf);
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        if (!v46)
        {
          v46 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (!v46)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_42();
            v195 = 4294954583;
            v196 = 9712;
            goto LABEL_112;
          }
        }

        theArray = v46;
        v221 = v47;
        Count = CFArrayGetCount(cf);
        v61 = Count;
        if (Count >= 2)
        {
          v62 = Count - 1;
          v63 = Count - 1 + v214;
          if (v63 >= 0x10000)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_42();
            v145 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v183, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x25F8, v184, v185, v186, v197);
LABEL_149:
            v45 = v145;
          }

          else
          {
            OUTLINED_FUNCTION_89();
            v67 = malloc_type_realloc(v64, v65, v66);
            if (v67)
            {
              v214 = v63;
              v68 = v238 + 24 * v240[v59];
              *(v68 + 6) += v62;
              v23 = v67;
              goto LABEL_65;
            }

            free(v23);
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_42();
            v45 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v179, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2602, v180, v181, v182, v197);
            v23 = 0;
          }

          v46 = theArray;
LABEL_30:
          v47 = v221;
          goto LABEL_114;
        }

        if (Count != 1)
        {
          v86 = 0;
LABEL_73:
          v85 = 1;
          v46 = theArray;
          v47 = v221;
          goto LABEL_74;
        }

LABEL_65:
        v128 = 0;
        v217 = v49;
        v129 = 32 * v49;
        do
        {
          v130 = a3;
          ValueAtIndex = CFArrayGetValueAtIndex(cf, v128);
          CFArrayAppendValue(theArray, ValueAtIndex);
          if (v128)
          {
            v23[v129 + 24] = v23[v129 - 8];
          }

          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          Length = CFDataGetLength(ValueAtIndex);
          v229 = Length;
          v133 = BytePtr;
          v134 = &v23[v129];
          *(v134 + 1) = BytePtr;
          *(v134 + 2) = Length;
          v135 = v229;
          OUTLINED_FUNCTION_8_17();
          OUTLINED_FUNCTION_84(v136);
          *v235 = 0;
          *v256 = v133;
          v257 = v135;
          v258 = 0;
          v259 = &v133[v135];
          v260 = 1;
          v261 = v133;
          v262 = v133;
          v145 = OUTLINED_FUNCTION_22_7(v137, v138, v139, v140, v141, v142, v143, v144, v197);
          if (v145)
          {
            goto LABEL_149;
          }

          v253 = 1;
          LOBYTE(v254) = 4;
          OUTLINED_FUNCTION_97(v145, v146, v147, v148, v149, v150, v151, v152, v201, v202, v203, v204, v205, v206, v207, v208, v209, *(&v209 + 1), v210, v211, v212, v213, v214, v215, bytesDeallocator, v217, v218, allocator, v220, v221, v222, v223, theArray, v228, v229, BytePtr, v231, v232, v233, cf, v235[0]);
          v252 = hevcbridgeParseSEIForHVCCCallbackUnsigned;
          v145 = OUTLINED_FUNCTION_106();
          if (v145)
          {
            goto LABEL_149;
          }

          a3 = v130;
          v86 = *v235;
          v153 = &v23[v129];
          *v153 = v59;
          *(v153 + 1) = v86;
          ++v128;
          v129 += 32;
        }

        while (v61 != v128);
        v49 = v217 + v128;
        goto LABEL_73;
      default:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_42();
        v195 = 4294954584;
        v196 = 9760;
        goto LABEL_112;
    }
  }
}

size_t FigHEVCBridge_CreateArrayOfSEINALUnitsFromJumboSEINALUnit(const __CFData *a1, __CFArray **a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  bzero(v56, 0xA0uLL);
  allocator = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    *&v60 = BytePtr;
    *(&v60 + 1) = Length;
    *&v61 = 0;
    *(&v61 + 1) = &BytePtr[Length];
    WORD4(v62) = 1;
    *&v63 = BytePtr;
    *(&v63 + 1) = BytePtr;
    v13 = OUTLINED_FUNCTION_22_7(Length, v6, v7, v8, v9, v10, v11, v12, v50);
    if (v13)
    {
      goto LABEL_45;
    }

    v57 |= 1u;
    v58 |= 1u;
    v56[0] = &theArray;
    v56[2] = hevcbridgeParseSEIForSplitterCallbackUnsigned;
    v56[4] = hevcbridgeParseSEIForSplitterCallbackCFData;
    v13 = hevcbridgeParseNALUnit(&v60, v56);
    if (v13)
    {
      goto LABEL_45;
    }

    Count = CFArrayGetCount(theArray);
    Mutable = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v51 = a2;
      if (Count == 1)
      {
        CFArrayAppendValue(Mutable, a1);
LABEL_37:
        v39 = 0;
        *v51 = Mutable;
        goto LABEL_38;
      }

      if (Count < 1)
      {
        goto LABEL_37;
      }

      v15 = 0;
      v52 = Count;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        bytes = 0x80;
        if (CFDataGetLength(a1) <= 1)
        {
          break;
        }

        v17 = CFDataGetLength(ValueAtIndex);
        v18 = CFDataCreateMutable(allocator, 0);
        if (!v18)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v37 = 4294954583;
          v38 = 7442;
          goto LABEL_32;
        }

        v19 = v18;
        v20 = v17 + 2;
        CFDataSetLength(v18, v17 + 2);
        MutableBytePtr = CFDataGetMutableBytePtr(v19);
        if (!MutableBytePtr)
        {
          v32 = 7445;
LABEL_34:
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", v32, v41, v42, v43, v50);
          CFRelease(v19);
          goto LABEL_35;
        }

        v22 = MutableBytePtr;
        v23 = CFDataGetBytePtr(ValueAtIndex);
        v24 = a1;
        v68.location = 0;
        v68.length = 2;
        CFDataGetBytes(a1, v68, v22);
        if (v17 >= 1)
        {
          v25 = 0;
          v26 = 2;
          while (1)
          {
            v27 = v23[v25];
            if (v25 + 2 >= v17 || v27 != 0)
            {
              goto LABEL_24;
            }

            if (v23[v25 + 1] || v23[v25 + 2] > 3u)
            {
              break;
            }

            CFDataSetLength(v19, ++v20);
            v29 = CFDataGetMutableBytePtr(v19);
            if (!v29)
            {
              v32 = 7460;
              Count = v52;
              a1 = v24;
              goto LABEL_34;
            }

            v22 = v29;
            v30 = &v29[v26];
            *v30 = v23[v25];
            v30[1] = v23[v25 + 1];
            v31 = v26 + 3;
            v30[2] = 3;
            ++v25;
LABEL_25:
            ++v25;
            v26 = v31;
            if (v25 >= v17)
            {
              goto LABEL_26;
            }
          }

          LOBYTE(v27) = 0;
LABEL_24:
          v31 = v26 + 1;
          v22[v26] = v27;
          goto LABEL_25;
        }

LABEL_26:
        CFDataAppendBytes(v19, &bytes, 1);
        CFArrayAppendValue(Mutable, v19);
        CFRelease(v19);
        Count = v52;
        a1 = v24;
LABEL_27:
        if (++v15 == Count)
        {
          goto LABEL_37;
        }
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v37 = 4294954584;
      v38 = 7437;
LABEL_32:
      v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v37, "<<<< HEVCBridge >>>>", v38, v34, v35, v36, v50);
LABEL_35:
      if (v39)
      {
        CFRelease(Mutable);
        goto LABEL_38;
      }

      CFArrayAppendValue(Mutable, 0);
      goto LABEL_27;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v49 = 10276;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v49 = 10259;
  }

  v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", v49, v46, v47, v48, v50);
LABEL_45:
  v39 = v13;
LABEL_38:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v39;
}

size_t FigHEVCBridge_GetATCSEI(const void *a1, UInt8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  cf = 0;
  if (a2)
  {
    v10 = FigHEVCBridge_CopyHEVCSEIPayloadData(a1, 147, &cf);
    v11 = cf;
    if (v10)
    {
      v13 = v10;
      if (!cf)
      {
        return v13;
      }

      goto LABEL_7;
    }

    if (!cf)
    {
      return 4294954578;
    }

    v12 = CFGetTypeID(cf);
    if (v12 == CFDataGetTypeID())
    {
      if (CFDataGetLength(v11) == 1)
      {
        v27.location = 0;
        v27.length = 1;
        CFDataGetBytes(v11, v27, a2);
        v13 = 0;
LABEL_7:
        CFRelease(v11);
        return v13;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v23 = 10194;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v23 = 10193;
    }

    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", v23, v20, v21, v22, v24);
    goto LABEL_7;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x27CD, v16, v17, v18, a9);
}

size_t FigHEVCBridge_GetNALUnitHeaderLengthFromHVCC(const __CFData *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (CFDataGetLength(a1) < 0x16)
  {
    return 4294954582;
  }

  v12 = BytePtr[21] & 3;
  *a2 = v12 + 1;
  if (v12 < 2 || v12 == 3)
  {
    return 0;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x284C, v16, v17, v18, a9);
}

size_t hevcbridge_updateFormatDescriptionExtensionsFromHVCC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  if (a1 && (v11 = CFGetTypeID(a1), v11 == CFDataGetTypeID()))
  {
    if (a2)
    {
      result = OUTLINED_FUNCTION_60_0(a1, 1, 33, v12, &v29, &v28, v13, v14, 0, 0);
      if (!result)
      {
        if (!FigHEVCBridge_GetSPSChromaFormatAndBitDepths(v29, v28, 0, &v27 + 1, &v27))
        {
          FigCFDictionarySetInt(a2, @"BitsPerComponent", HIBYTE(v27), v16, v17, v18, v19, v20);
        }

        if (!FigHEVCBridge_GetSPS_VUI_FullRangeVideo(v29, v28, &v26))
        {
          FigCFDictionarySetBoolean(a2, @"FullRangeVideo", v26);
        }

        return 0;
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v25 = 10876;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v25 = 10875;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v25, v22, v23, v24, a9);
}

size_t hevcbridgeIsHVCC8Bit420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v30 = 0;
  v28 = 0;
  v26 = 0;
  if (a1 && (OUTLINED_FUNCTION_18_4(), v11 = CFGetTypeID(v10), v11 == CFDataGetTypeID()))
  {
    v29 = 0;
    v12 = OUTLINED_FUNCTION_79();
    result = OUTLINED_FUNCTION_60_0(v12, v13, 33, v14, v15, v16, v17, v18, 0, 0);
    if (!result)
    {
      result = FigHEVCBridge_GetSPSChromaFormatAndBitDepths(v29, v30, &v26, &v28, &v27);
      if (!result)
      {
        v21 = v26 == 1 && v28 == 8;
        *v9 = v21;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2A08, v23, v24, v25, a9);
  }

  return result;
}

size_t FigHEVCBridge_CreateMultiviewMuxedAlphaFormatDescription(uint64_t a1, uint64_t a2, const __CFData *a3, uint64_t a4, const void *a5, const __CFArray *a6, CMVideoFormatDescriptionRef *a7)
{
  v134[2] = *MEMORY[0x1E69E9840];
  v132 = 0;
  cf = 0;
  formatDescriptionOut = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  theData = 0;
  v125 = 0;
  v124 = 0;
  if (!a5 || (OUTLINED_FUNCTION_18_4(), CFArrayGetCount(v13) != 2))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954584;
    v79 = 12159;
LABEL_35:
    SEIAlphaChannelInfo = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v78, "<<<< HEVCBridge >>>>", v79, v75, v76, v77, v117);
    goto LABEL_36;
  }

  if (!a6 || CFArrayGetCount(a6) != 2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954584;
    v79 = 12160;
    goto LABEL_35;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(v8);
  if (CFDataGetLength(a3) <= 4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954581;
    v79 = 12165;
    goto LABEL_35;
  }

  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  SEIAlphaChannelInfo = FigHEVCBridge_GetSEIAlphaChannelInfo(BytePtr + 4, Length - 4, &v132);
  if (SEIAlphaChannelInfo)
  {
LABEL_36:
    v80 = SEIAlphaChannelInfo;
    goto LABEL_54;
  }

  Extensions = CMFormatDescriptionGetExtensions(v8);
  if (!Extensions)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954581;
    v79 = 12171;
    goto LABEL_35;
  }

  v19 = Extensions;
  Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954581;
    v79 = 12174;
    goto LABEL_35;
  }

  v21 = Value;
  theDict = v19;
  v22 = CFDictionaryGetValue(Value, @"hvcC");
  if (!v22)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954581;
    v79 = 12177;
    goto LABEL_35;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  if (v24 != CFDataGetTypeID())
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954581;
    v79 = 12178;
    goto LABEL_35;
  }

  v25 = CFDictionaryGetValue(v21, @"lhvC");
  if (!v25)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954581;
    v79 = 12181;
    goto LABEL_35;
  }

  v26 = v25;
  v120 = Dimensions;
  v27 = CFGetTypeID(v25);
  if (v27 != CFDataGetTypeID())
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v78 = 4294954581;
    v79 = 12182;
    goto LABEL_35;
  }

  v28 = *MEMORY[0x1E695E480];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v26);
  if (!MutableCopy)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v78 = 4294954583;
    v79 = 12185;
    goto LABEL_35;
  }

  v29 = CMFormatDescriptionGetExtensions(v7);
  if (!v29)
  {
    v104 = 12189;
LABEL_82:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    IsHVCC8Bit420 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v105, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", v104, v106, v107, v108, v117);
    goto LABEL_83;
  }

  v30 = CFDictionaryGetValue(v29, @"SampleDescriptionExtensionAtoms");
  if (!v30)
  {
    v104 = 12192;
    goto LABEL_82;
  }

  v31 = v30;
  v32 = CFDictionaryGetValue(v30, @"hvcC");
  if (!v32)
  {
    v104 = 12195;
    goto LABEL_82;
  }

  v33 = v32;
  v34 = CFGetTypeID(v32);
  if (v34 != CFDataGetTypeID())
  {
    v104 = 12196;
    goto LABEL_82;
  }

  v35 = CFDictionaryGetValue(v31, @"lhvC");
  if (!v35)
  {
    v104 = 12199;
    goto LABEL_82;
  }

  v36 = v35;
  v37 = CFGetTypeID(v35);
  if (v37 != CFDataGetTypeID())
  {
    v104 = 12200;
    goto LABEL_82;
  }

  FigCFArrayGetInt16AtIndex(a6, 0, &v128 + 2, v38, v39, v40, v41, v42);
  IsHVCC8Bit420 = hevcbridgeIsHVCC8Bit420(v23, &v124, v43, v44, v45, v46, v47, v48, v117);
  if (IsHVCC8Bit420)
  {
LABEL_83:
    v80 = IsHVCC8Bit420;
    v94 = MutableCopy;
    goto LABEL_53;
  }

  v119 = a7;
  v50 = v124;
  if (v124)
  {
    v51 = v33;
  }

  else
  {
    v51 = 0;
  }

  MuxedAlphaHVCCOrLHVC = FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC(v23, v51, 0, a3, HIWORD(v128), &cf);
  v53 = cf;
  if (!MuxedAlphaHVCCOrLHVC)
  {
    if (cf)
    {
      v54 = CFGetTypeID(cf);
      if (v54 == CFDataGetTypeID())
      {
        v123 = 0;
        FigCFArrayGetInt16AtIndex(a5, 1, &v123, v55, v56, v57, v58, v59);
        v60 = MutableCopy;
        v61 = OUTLINED_FUNCTION_91();
        updated = hevcbridge_updateConfigRecordNuhLayerID(v61, v62, v63);
        if (!updated)
        {
          FigCFArrayGetInt16AtIndex(a6, 1, &v128, v65, v66, v67, v68, v69);
          updated = FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC(MutableCopy, v36, 1, 0, v128, &v129);
          if (!updated)
          {
            v70 = v129;
            if (v129 && (v71 = CFGetTypeID(v129), v71 == CFDataGetTypeID()))
            {
              if (v50)
              {
                v72 = v70;
                v73 = v119;
LABEL_42:
                v83 = CFDictionaryCreateMutableCopy(v28, 0, theDict);
                if (v83)
                {
                  v84 = v83;
                  v85 = CFDictionaryCreateMutableCopy(v28, 0, v21);
                  if (v85)
                  {
                    v86 = v85;
                    CFDictionarySetValue(v85, @"hvcC", v53);
                    CFDictionarySetValue(v86, @"lhvC", v72);
                    CFDictionarySetValue(v84, @"SampleDescriptionExtensionAtoms", v86);
                    FigCFDictionarySetInt32(v84, @"Depth", 32, v87, v88, v89, v90, v91);
                    CFDictionarySetValue(v84, @"ContainsAlphaChannel", *MEMORY[0x1E695E4D0]);
                    v92 = &kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha;
                    if (!v132)
                    {
                      v92 = &kCMFormatDescriptionAlphaChannelMode_StraightAlpha;
                    }

                    CFDictionarySetValue(v84, @"AlphaChannelMode", *v92);
                    CFDictionaryRemoveValue(v84, @"VerbatimSampleDescription");
                    CFDictionaryRemoveValue(v84, @"VerbatimISOSampleEntry");
                    v80 = CMVideoFormatDescriptionCreate(v28, 0x68766331u, v120.width, v120.height, v84, &formatDescriptionOut);
                    if (!v80)
                    {
                      *v73 = formatDescriptionOut;
                      formatDescriptionOut = 0;
                    }

                    CFRelease(v84);
                    v93 = v86;
                  }

                  else
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_6_13();
                    v80 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2FDA, v114, v115, v116, v118);
                    v93 = v84;
                  }

                  CFRelease(v93);
                }

                else
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_6_13();
                  v80 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2FD7, v110, v111, v112, v118);
                }

                v60 = MutableCopy;
                goto LABEL_51;
              }

              updated = hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC(v33, 0, HIWORD(v128), &theData, &v126);
              if (!updated)
              {
                v81 = theData;
                v134[0] = CFDataGetBytePtr(theData);
                v82 = v126;
                v134[1] = CFDataGetBytePtr(v126);
                v133[0] = CFDataGetLength(v81);
                v133[1] = CFDataGetLength(v82);
                updated = hevcbridgeCreateLHVCFromHEVCParameterSets(v70, v134, v133, &v125);
                if (!updated)
                {
                  v72 = v125;
                  v129 = v125;
                  v73 = v119;
                  if (v125)
                  {
                    CFRetain(v125);
                  }

                  CFRelease(v70);
                  goto LABEL_42;
                }
              }
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_13();
              updated = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v100, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2FC2, v101, v102, v103, v118);
            }
          }
        }

        v80 = updated;
LABEL_51:
        CFRelease(v60);
LABEL_52:
        v94 = v53;
LABEL_53:
        CFRelease(v94);
        goto LABEL_54;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    MuxedAlphaHVCCOrLHVC = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2FB3, v97, v98, v99, v118);
  }

  v80 = MuxedAlphaHVCCOrLHVC;
  CFRelease(MutableCopy);
  if (v53)
  {
    goto LABEL_52;
  }

LABEL_54:
  if (v129)
  {
    CFRelease(v129);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (v125)
  {
    CFRelease(v125);
  }

  return v80;
}

size_t hevcbridge_updateNuhLayerIDs(uint64_t a1, unint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (!a3)
  {
    return 0;
  }

  if (a2)
  {
    v11 = 0;
    v12 = 11467;
    while (1)
    {
      if (v11 + 6 > a2)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v22 = 11452;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v22, v19, v20, v21, v23);
      }

      v24 = 0;
      v13 = a1 + v11;
      v14 = bswap32(*(a1 + v11));
      if (v14 < 2)
      {
        break;
      }

      if (v11 + 4 + v14 > a2)
      {
        v12 = 11468;
        break;
      }

      v15 = bswap32(*(v13 + 4)) >> 16;
      if (v15 < 0)
      {
        v12 = 11476;
        break;
      }

      v16 = v15 & 0x7E07;
      FigCFArrayGetInt32AtIndex(a3, (v15 & 0x1F8) != 0, &v24, a4, a5, a6, a7, a8);
      *(v13 + 4) = bswap32(v16 | (8 * v24)) >> 16;
      v11 += v14 + 4;
      if (v11 >= a2)
      {
        goto LABEL_11;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = v12;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v22, v19, v20, v21, v23);
  }

  v11 = 0;
LABEL_11:
  if (v11 != a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = 11491;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v22, v19, v20, v21, v23);
  }

  return 0;
}

uint64_t FigHEVCBridge_CreateAmbientViewingEnvironmentSEINAL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v136[2] = *MEMORY[0x1E69E9840];
  memset(v136, 0, 13);
  v135 = 0;
  *&v13 = OUTLINED_FUNCTION_73();
  v132 = v13;
  *bytes = 0;
  *&v130 = 0;
  *(&v130 + 5) = 0;
  if (v12)
  {
    v14 = v12;
    v15 = v11;
    v16 = v10;
    v17 = v9;
    v131[0] = v136;
    v131[1] = 13;
    v134 = v136;
    v133 = 0;
    OUTLINED_FUNCTION_27_5();
    result = hevcbridgeUPush(v18, v19, v20, v21, v22, v23, v24, v25, v115);
    if (!result)
    {
      result = hevcbridgeUPush(v131, 6u, 39, 0, v27, v28, v29, v30, v116);
      if (!result)
      {
        OUTLINED_FUNCTION_27_5();
        result = hevcbridgeUPush(v31, v32, v33, v34, v35, v36, v37, v38, v117);
        if (!result)
        {
          result = OUTLINED_FUNCTION_58_0(v131, 3, v39, v40, v41, v42, v43, v44, v118);
          if (!result)
          {
            v52 = OUTLINED_FUNCTION_57_0(result, v45, v46, v47, v48, v49, v50, v51, v119, *bytes, v130, *(&v130 + 1), v131[0]);
            result = hevcbridgeUPush(v52, v53, 148, 0, v54, v55, v56, v57, v120);
            if (!result)
            {
              v65 = OUTLINED_FUNCTION_57_0(result, v58, v59, v60, v61, v62, v63, v64, v121, *bytes, v130, *(&v130 + 1), v131[0]);
              result = hevcbridgeUPush(v65, v66, 8, 0, v67, v68, v69, v70, v122);
              if (!result)
              {
                result = hevcbridgeUPushLong(v131, 32, v17, 0, v71, v72, v73, v74, v123);
                if (!result)
                {
                  v82 = OUTLINED_FUNCTION_41_0(result, v75, v76, v77, v78, v79, v80, v81, v124, *bytes, v130, *(&v130 + 1), v131[0]);
                  result = hevcbridgeUPush(v82, v83, v16, 0, v84, v85, v86, v87, v125);
                  if (!result)
                  {
                    v95 = OUTLINED_FUNCTION_41_0(result, v88, v89, v90, v91, v92, v93, v94, v126, *bytes, v130, *(&v130 + 1), v131[0]);
                    result = hevcbridgeUPush(v95, v96, v15, 0, v97, v98, v99, v100, v127);
                    if (!result)
                    {
                      v101 = 0;
                      v102 = 0;
                      v103 = 0;
                      BYTE4(v136[1]) = 0x80;
                      do
                      {
                        v104 = *(v136 + v101);
                        if (v102 == 2)
                        {
                          if (v104 > 3)
                          {
                            v102 = 3;
                          }

                          else
                          {
                            bytes[v103++] = 3;
                            v102 = 1;
                          }
                        }

                        else
                        {
                          ++v102;
                        }

                        bytes[v103] = v104;
                        if (v104)
                        {
                          v102 = 0;
                        }

                        ++v103;
                        ++v101;
                      }

                      while (v101 != 13);
                      v105 = CFDataCreate(*MEMORY[0x1E695E480], bytes, v103);
                      if (v105)
                      {
                        v106 = v105;
                        result = 0;
                        *v14 = v106;
                      }

                      else
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_0();
                        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v111, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x3091, v112, v113, v114, v128);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v107, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3069, v108, v109, v110, a9);
  }

  return result;
}

uint64_t FigHEVCBridge_MeasureSliceHeader(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  bzero(v20, 0xA0uLL);
  v25 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = 0;
  v24[3] = a1 + a2;
  BYTE8(v25) = 1;
  v26 = a1;
  v27 = a1;
  DWORD2(v28) = 0;
  result = hevcbridgeAdvanceInBitstream(v24, 0, v9, v10, v11, v12, v13, v14, v20[0]);
  if (!result)
  {
    v22 = *a3;
    v23 = a3 + 1;
    v21 = 1;
    v20[2] = hevcbridgeMeasureSliceHeaderCallbackUnsigned;
    result = hevcbridgeParseNALUnit(v24, v20);
    if (!result)
    {
      if (HIDWORD(v28))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3151, v17, v18, v19, v20[0]);
      }

      else
      {
        result = 0;
        *a5 = v26 - v24[0];
      }
    }
  }

  return result;
}

uint64_t FigHEVCBridge_LocateSliceHeaderForHLSfMP4EncryptableNAL(CMBlockBufferRef theBuffer, uint64_t a2, size_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, unint64_t a7, unint64_t a8, CMBlockBufferRef *a9)
{
  v80 = *MEMORY[0x1E69E9840];
  destination = 0;
  result = 4294954584;
  if (!theBuffer || !a4)
  {
    return result;
  }

  v16 = a5;
  if (a5)
  {
    *a5 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!DataLength)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_68_0();
    v25 = v58;
    v26 = 12716;
    goto LABEL_17;
  }

  if (a3)
  {
    v20 = a9;
    if (a3 + a2 > DataLength)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_68_0();
      v25 = v24;
      v26 = 12723;
LABEL_17:

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v26, v21, v22, v23, a9);
    }
  }

  else
  {
    v20 = a9;
    if (a2)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_68_0();
      v25 = v27;
      v26 = 12727;
      goto LABEL_17;
    }

    a3 = DataLength;
  }

  v67 = 0;
  if (a3 != 4)
  {
    v59 = v9;
    v28 = 0;
    v29 = a4;
    v30 = 0;
    v31 = a8 | v20;
    v65 = a7;
    v32 = (v31 | a7) != 0;
    v63 = v32;
    v64 = v31 != 0;
    v60 = v29 + 1;
    v61 = v29;
    v62 = v16;
    while (1)
    {
      result = CMBlockBufferCopyDataBytes(theBuffer, v28 + a2, 4uLL, &destination);
      if (result)
      {
        return result;
      }

      v33 = bswap32(destination);
      destination = v33;
      if (v33 <= 1)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v57 = 12741;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v57, v54, v55, v56, v59);
      }

      v34 = v28 + 4;
      if (v34 + v33 > a3)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v57 = 12748;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v57, v54, v55, v56, v59);
      }

      v35 = v34 + a2;
      result = CMBlockBufferCopyDataBytes(theBuffer, v34 + a2, 1uLL, &v67);
      if (result)
      {
        return result;
      }

      v36 = (v67 >> 1) & 0x3F;
      v67 = v36;
      v37 = v36 >= 0xA && v36 - 19 >= 2;
      if (!v37 || v36 <= 0x15 && ((1 << v36) & 0x270000) != 0)
      {
        if (v30 == a6 && v32)
        {
          v39 = a6;
          if (v65)
          {
            *v65 = v34;
          }

          if (v64)
          {
            v40 = destination;
            bzero(v68, 0xA0uLL);
            v73[0] = 0;
            v74 = 0u;
            v79 = 0;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73[1] = v35 + v40;
            *&v74 = theBuffer;
            result = CMBlockBufferGetDataPointer(theBuffer, v34 + a2, 0, 0, &v76);
            if (result)
            {
              return result;
            }

            v73[0] = v76 - v35;
            *(&v74 + 1) = v76;
            WORD4(v75) = 1;
            *(&v76 + 1) = v76;
            *(&v78 + 1) = 0;
            LODWORD(v79) = 0;
            v77 = 0uLL;
            result = hevcbridgeAdvanceInBitstream(v73, 0, v41, v42, v43, v44, v45, v46, v59);
            if (result)
            {
              return result;
            }

            v71 = *v61;
            v72 = v60;
            v70 = 1;
            v69 = hevcbridgeMeasureSliceHeaderCallbackUnsigned;
            result = hevcbridgeParseNALUnit(v73, v68);
            if (result)
            {
              return result;
            }

            if (HIDWORD(v77))
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_1_2();
              result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3179, v50, v51, v52, v59);
              if (result)
              {
                return result;
              }

              v47 = 0;
            }

            else
            {
              v47 = v76 - (v73[0] + v35);
            }

            v48 = a9;
            if (a8)
            {
              *a8 = v47 + v34;
              v48 = a9;
            }

            if (v48)
            {
              *a9 = (v40 - v47);
            }
          }

          a6 = v39;
          v16 = v62;
          v32 = v63;
          if (!v62)
          {
            if (a6 == -1)
            {
              break;
            }

            return 0;
          }
        }

        ++v30;
      }

      v28 = v34 + destination;
      if (v28 >= a3 - 4)
      {
        if (!v30)
        {
          break;
        }

        if (v16)
        {
          *v16 = v30;
        }

        if (v30 <= a6)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v57 = 12817;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v57, v54, v55, v56, v59);
        }

        return 0;
      }
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v57 = 12800;
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v57, v54, v55, v56, v59);
}

uint64_t FigHEVCBridge_GetRPUMetadataFromRPU(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v18 = 0u;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = 0;
  v17[3] = a1 + a2;
  WORD4(v18) = 0;
  v19 = a1;
  v20 = a1;
  v21 = 0uLL;
  v23 = 0;
  result = hevcbridgeAdvanceInBitstream(v17, 0, a3, a4, a5, a6, a7, a8, v16[0]);
  if (!result)
  {
    OUTLINED_FUNCTION_34_2();
    v16[1] = v10;
    v16[2] = hevcbridgeGetRPUMetadataCallbackUnsigned;
    v16[3] = hevcbridgeGetRPUMetadataCallbackSigned;
    v16[4] = hevcbridgeGetRPUMetadataCallbackCFData;
    return hevcbridgeParseDolbyRPUDataRBSP(v17, v16, a3, v11, v12, v13, v14, v15, a3);
  }

  return result;
}

size_t hevcbridgeParseDolbyRPUDataRBSP(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v244 = *MEMORY[0x1E69E9840];
  v240 = 0;
  v241 = 0;
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v243 = 0;
  v242 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v12 = hevcbridgeUPullLong(a1, 8, &v241 + 1, a4, a5, a6, a7, a8);
  if (v12)
  {
    return v12;
  }

  if (HIDWORD(v241) == 25)
  {
    v19 = *(a2 + 44);
    v20 = hevcbridgeUPullLong(a1, 6, &v241, v13, v14, v15, v16, v17);
    v18 = v20;
    if ((v19 & 1) != 0 && !v20)
    {
      v18 = (a2[2])(*a2, 412, v241, 0xFFFFFFFFLL);
    }

    if (v18)
    {
      return v18;
    }

    if (v241 == 2)
    {
      v26 = *(a2 + 44);
      v27 = hevcbridgeUPullLong(a1, 11, &v240 + 1, v21, v22, v23, v24, v25);
      v18 = v27;
      if ((v26 & 2) != 0 && !v27)
      {
        v18 = (a2[2])(*a2, 413, HIDWORD(v240), 0xFFFFFFFFLL);
      }

      if (v18)
      {
        return v18;
      }

      if (a3)
      {
        *(a3 + 6) = 2;
        *(a3 + 8) = WORD2(v240);
      }

      v230 = 0;
      v33 = *(a2 + 44);
      v34 = hevcbridgeUPullLong(a1, 4, &v231 + 1, v28, v29, v30, v31, v32);
      v18 = v34;
      if ((v33 & 4) != 0 && !v34)
      {
        v18 = (a2[2])(*a2, 414, HIDWORD(v231), 0xFFFFFFFFLL);
      }

      if (v18)
      {
        return v18;
      }

      v35 = OUTLINED_FUNCTION_24_6();
      v18 = hevcbridgeUPullAlways(v35, v36, v37, 415, v38, 4, v39, v40);
      if (v18)
      {
        return v18;
      }

      v229 = 0;
      v42 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUPullFlagAlways(v42, v43, v44, 416, v45, v46, v47, v48);
      if (v12)
      {
        return v12;
      }

      v49 = v229;
      if (a3)
      {
        v50 = v231;
        *(a3 + 10) = BYTE4(v231);
        *(a3 + 11) = v50;
        *(a3 + 12) = v49;
      }

      v228 = 0;
      v227 = 0;
      v226 = 0;
      v51 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUPullFlagAlways(v51, v52, v53, 434, v54, v55, v56, v57);
      if (v12)
      {
        return v12;
      }

      v219 = v236;
      v58 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUPullFlagAlways(v58, v59, v60, 435, v61, v62, v63, v64);
      if (v12)
      {
        return v12;
      }

      if (a3)
      {
        *(a3 + 30) = v219;
        v65 = v235;
        *(a3 + 31) = v235;
      }

      else
      {
        v65 = v235;
      }

      if (v65)
      {
        v225 = 0;
        v73 = OUTLINED_FUNCTION_24_6();
        v12 = hevcbridgeUEPullAlways(v73, v74, v75, 436, v76, v77, v78, v79);
        if (a3 && !v12)
        {
          *(a3 + 32) = v225;
LABEL_105:
          if (!v219 || (v208 = OUTLINED_FUNCTION_24_6(), v12 = hevcbridgeParseVdrDmDataPayload(v208, v209, 0, a3, v210, v211, v212, v213, v214), !v12))
          {
            v220[1] = 0;
            while (*(a1 + 76))
            {
              v200 = OUTLINED_FUNCTION_79();
              v12 = hevcbridgeUPullLong(v200, v201, v202, v203, v204, v205, v206, v207);
              if (v12)
              {
                return v12;
              }
            }

            return hevcbridgeUPullLong(a1, 32, v220, v80, v81, v82, v83, v84);
          }

          return v12;
        }

LABEL_104:
        if (!v12)
        {
          goto LABEL_105;
        }

        return v12;
      }

      v224 = 0;
      v225 = 0;
      v85 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUEPullAlways(v85, v86, v87, 437, v88, v89, v90, v91);
      if (v12)
      {
        return v12;
      }

      v92 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUEPullAlways(v92, v93, v94, 438, v95, v96, v97, v98);
      if (v12)
      {
        return v12;
      }

      v99 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUEPullAlways(v99, v100, v101, 439, v102, v103, v104, v105);
      if (v12)
      {
        return v12;
      }

      if (a3)
      {
        v106 = v224;
        *(a3 + 33) = v225;
        *(a3 + 34) = v106;
        v216 = HIDWORD(v234);
        *(a3 + 35) = BYTE4(v234);
      }

      else
      {
        v216 = HIDWORD(v234);
      }

      v215 = WORD2(v240) & 0x700;
      if ((v240 & 0x70000000000) == 0 && v216)
      {
        v107 = OUTLINED_FUNCTION_24_6();
        v12 = hevcbridgeUPullAlways(v107, v108, v109, 440, v110, 4, v111, v112);
        if (v12)
        {
          return v12;
        }

        v113 = v234;
        if (a3)
        {
          *(a3 + 36) = v234;
        }

        if (v113 == 14)
        {
          v222 = 0;
          v223 = 0;
          if (v216 == 2)
          {
            v114 = OUTLINED_FUNCTION_24_6();
            v12 = hevcbridgeUPullAlways(v114, v115, v116, 441, v117, 2, v118, v119);
            if (v12)
            {
              return v12;
            }

            if (a3)
            {
              *(a3 + 37) = v223;
            }
          }

          v120 = OUTLINED_FUNCTION_24_6();
          v12 = hevcbridgeUPullAlways(v120, v121, v122, 442, v123, 2, v124, v125);
          if (!a3 || v12)
          {
            if (v12)
            {
              return v12;
            }
          }

          else
          {
            *(a3 + 38) = v222;
          }
        }
      }

      v217 = 46;
      for (i = 0; i != 3; ++i)
      {
        v223 = 0;
        v130 = OUTLINED_FUNCTION_24_6();
        v12 = hevcbridgeUEPullAlways(v130, v131, v132, 447, v133, v134, v135, v136);
        if (v12)
        {
          return v12;
        }

        v137 = v223;
        if (a3)
        {
          *(a3 + 43 + i) = v223;
        }

        v138 = v217;
        *(&v242 + i) = v137;
        v139 = v137 + 2;
        do
        {
          v222 = 0;
          v140 = OUTLINED_FUNCTION_24_6();
          v12 = hevcbridgeUPullAlways(v140, v141, v142, 448, v143, 8, v144, v145);
          if (!a3 || v12)
          {
            if (v12)
            {
              return v12;
            }
          }

          else
          {
            *(a3 + v138) = v222;
          }

          v138 += 2;
          --v139;
        }

        while (v139);
        v217 += 32;
      }

      if (v215)
      {
LABEL_70:
        v146 = OUTLINED_FUNCTION_24_6();
        v12 = hevcbridgeUEPullAlways(v146, v147, v148, 457, v149, v150, v151, v152);
        if (v12)
        {
          return v12;
        }

        v153 = OUTLINED_FUNCTION_24_6();
        v12 = hevcbridgeUEPullAlways(v153, v154, v155, 458, v156, v157, v158, v159);
        if (v12)
        {
          return v12;
        }

        v160 = v233;
        v161 = v232;
        if (a3)
        {
          *(a3 + 313) = v233;
          *(a3 + 314) = v161;
        }

        if (v160 + v161)
        {
          v223 = 0;
          v162 = OUTLINED_FUNCTION_24_6();
          v12 = hevcbridgeUEPullAlways(v162, v163, v164, 459, v165, v166, v167, v168);
          if (a3 && !v12)
          {
            *(a3 + 315) = v223;
          }

          else if (v12)
          {
            return v12;
          }
        }

        v197 = OUTLINED_FUNCTION_24_6();
        v12 = hevcbridgeParseVDRRPUDataPayload(v197, v198, v160, v161, 0, 0, v199, v216, 0, 0, &v242, a3);
        goto LABEL_104;
      }

      v222 = 0;
      v223 = 0;
      v169 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUPullAlways(v169, v170, v171, 453, v172, 3, v173, v174);
      if (v12)
      {
        return v12;
      }

      if (a3)
      {
        *(a3 + 246) = v222;
        if (v216 != 2)
        {
          *(a3 + 247) = 0;
LABEL_89:
          v183 = 2;
LABEL_90:
          v184 = (a3 + 248);
          do
          {
            OUTLINED_FUNCTION_90();
            v185 = OUTLINED_FUNCTION_24_6();
            v12 = hevcbridgeUPullAlways(v185, v186, v187, 455, v188, 8, v189, v190);
            if (!a3 || v12)
            {
              if (v12)
              {
                return v12;
              }
            }

            else
            {
              *v184 = v221;
            }

            ++v184;
            --v183;
          }

          while (v183);
          if (v216)
          {
            OUTLINED_FUNCTION_90();
            v191 = OUTLINED_FUNCTION_24_6();
            v12 = hevcbridgeUPullAlways(v191, v192, v193, 456, v194, 3, v195, v196);
            if (!a3 || v12)
            {
              if (v12)
              {
                return v12;
              }
            }

            else
            {
              *(a3 + 312) = v221;
            }
          }

          goto LABEL_70;
        }
      }

      else if (v216 != 2)
      {
        goto LABEL_89;
      }

      v175 = OUTLINED_FUNCTION_24_6();
      v12 = hevcbridgeUEPullAlways(v175, v176, v177, 454, v178, v179, v180, v181);
      if (v12)
      {
        return v12;
      }

      v182 = v223;
      if (v223 >= 0x10)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v126, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1C55, v127, v128, v129, v214);
      }

      if (a3)
      {
        *(a3 + 247) = v223;
      }

      v183 = v182 + 2;
      goto LABEL_90;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();
    v70 = v72;
    v71 = 7015;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();
    v70 = v69;
    v71 = 7007;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v70, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v71, v66, v67, v68, a9);
}

uint64_t FigHEVCBridge_GetRPUMetadata(const void *a1, size_t a2, CMBlockBufferRef *a3)
{
  OUTLINED_FUNCTION_38_0(*MEMORY[0x1E69E9840]);
  v7 = v6 + 2;
  v8 = malloc_type_malloc(v6 + 2, 0xA8C3A6D3uLL);
  v9 = v8;
  if (!v8)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x33D7, v47, v48, v49, v54);
    goto LABEL_16;
  }

  *v8 = 380;
  v10 = memcpy(v8 + 1, a1, a2);
  LOWORD(v77) = 1;
  v18 = OUTLINED_FUNCTION_46_0(v10, v11, v12, v13, v14, v15, v16, v17, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v9, v7, 0, v9 + v7, v76[4], v77, v9, v9, v78, v79, v80, v81, v82);
  if (v18)
  {
LABEL_16:
    v44 = v18;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_34_2();
  v54 = a3;
  v55 = v19;
  v56 = hevcbridgeGetRPUMetadataCallbackUnsigned;
  v57 = hevcbridgeGetRPUMetadataCallbackSigned;
  v58 = hevcbridgeGetRPUMetadataCallbackCFData;
  v75 = 0;
  v25 = hevcbridgeUPullLong(v76, 1, &v75 + 1, v20, v21, v22, v23, v24);
  if (!v25)
  {
    if (HIDWORD(v75))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v44 = 4294954582;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x339A, v51, v52, v53, v54);
      goto LABEL_14;
    }

    v25 = hevcbridgeUPullLong(v76, 6, &v75, v26, v27, v28, v29, v30);
    if (!v25)
    {
      if (v75 == 62)
      {
        v25 = hevcbridgeUPullLong(v76, 6, &v74 + 1, v31, v32, v33, v34, v35);
        if (!v25)
        {
          v25 = hevcbridgeUPullIfRequested(v76, &v54, 1, 2, 3, v36, v37, v38, v54);
          if (!v25)
          {
            v25 = hevcbridgeParseDolbyRPUDataRBSP(v76, &v54, a3, v39, v40, v41, v42, v43, v54);
          }
        }
      }

      else
      {
        v25 = -12712;
      }
    }
  }

  if (v25 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = v25;
  }

LABEL_14:
  free(v9);
  return v44;
}

size_t hevcbridgeAdvanceInBitstream(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v10 = *(a1 + 76) + a2;
  v11 = v10 >> 3;
  *(a1 + 76) = v10 & 7;
  if (*(a1 + 40))
  {
    v12 = (*(a1 + 72) - v11);
    *(a1 + 72) = v12;
    if (!a2 || v10 >= 8)
    {
      if (v11 >= 8)
      {
        v13 = 8;
      }

      else
      {
        v13 = v10 >> 3;
      }

      *(a1 + 96) >>= v13;
      if (v12 >= 1)
      {
        memmove((a1 + 64), (a1 + 64 + v11), v12);
        LODWORD(v12) = *(a1 + 72);
      }

      v14 = *(a1 + 56);
      v15 = *(a1 + 8) + *a1 - v14;
      if (v12 <= 3 && v15 >= 1)
      {
        v23 = a1 + 64;
        do
        {
          if ((v14 + 3) > *(a1 + 24) && *(a1 + 16))
          {
            result = hevcbridgeAdvanceAcrossBBufDiscontiguity(a1, 1);
            if (result)
            {
              return result;
            }

            v14 = *(a1 + 56);
          }

          if (*v14)
          {
            v24 = 0;
          }

          else
          {
            v24 = v15 >= 3;
          }

          if (v24 && !v14[1] && v14[2] == 3)
          {
            v25 = *(a1 + 72);
            if ((v25 & 0x80000000) == 0)
            {
              *(v23 + v25) = 0;
              v25 = *(a1 + 72);
            }

            *(a1 + 72) = v25 + 1;
            if (v25 <= -2)
            {
              LODWORD(v12) = v25 + 2;
              *(a1 + 72) = v25 + 2;
              v14 += 3;
              *(a1 + 56) = v14;
            }

            else
            {
              *(v23 + (v25 + 1)) = 0;
              v26 = *(a1 + 72);
              LODWORD(v12) = v26 + 1;
              *(a1 + 72) = v26 + 1;
              v14 += 3;
              *(a1 + 56) = v14;
              if (v26 >= 1)
              {
                *(a1 + 96) |= 1 << v26;
              }
            }

            v15 -= 3;
            ++*(a1 + 88);
          }

          else
          {
            v27 = *(a1 + 72);
            if ((v27 & 0x80000000) == 0)
            {
              *(v23 + v27) = *v14;
              v27 = *(a1 + 72);
            }

            LODWORD(v12) = v27 + 1;
            *(a1 + 72) = v27 + 1;
            *(a1 + 56) = ++v14;
            --v15;
          }
        }

        while (v12 <= 3 && v15 > 0);
      }

      v17 = vcnt_s8(*(a1 + 96));
      v17.i16[0] = vaddlv_u8(v17);
      *(a1 + 48) = &v14[-v12 - v17.u32[0]];
    }

    if (v12 > 0 || (*(a1 + 41) = 1, !v12) && !*(a1 + 76))
    {
      v18 = *(a1 + 64);
LABEL_23:
      v21 = bswap32(v18);
LABEL_24:
      result = 0;
      *(a1 + 80) = v21 << *(a1 + 76);
      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v36 = 658;
  }

  else
  {
    v19 = (*(a1 + 48) + v11);
    *(a1 + 48) = v19;
    if ((v19 + 1) <= *(a1 + 24))
    {
      goto LABEL_22;
    }

    if (*(a1 + 16))
    {
      result = hevcbridgeAdvanceAcrossBBufDiscontiguity(a1, 0);
      if (result)
      {
        return result;
      }

      v19 = *(a1 + 48);
    }

    v20 = *(a1 + 8) + *a1 - v19;
    if (v20 > 3)
    {
LABEL_22:
      v18 = *v19;
      goto LABEL_23;
    }

    v21 = 0;
    v29 = 3;
    v30 = v19;
    do
    {
      if (v20 >= 1)
      {
        v31 = *v30;
        v30 = (v30 + 1);
        v21 |= v31;
        --v20;
      }

      v21 <<= 8;
      --v29;
    }

    while (v29);
    *(a1 + 80) = v21;
    if (v30 != v19)
    {
      goto LABEL_24;
    }

    *(a1 + 41) = 1;
    if (!v20 && !*(a1 + 76))
    {
      goto LABEL_24;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v36 = 696;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", v36, v33, v34, v35, a9);
}

uint64_t hevcbridgeAdvanceAcrossBBufDiscontiguity(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 56;
  }

  else
  {
    v3 = 48;
  }

  v4 = *(a1 + v3);
  lengthAtOffsetOut = 0;
  dataPointerOut = v4;
  v5 = &v4[-*a1];
  totalLengthOut = 0;
  result = CMBlockBufferGetDataPointer(*(a1 + 16), v5, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (!result)
  {
    v7 = totalLengthOut - v5;
    if (lengthAtOffsetOut > 7 || lengthAtOffsetOut == v7)
    {
      v9 = dataPointerOut;
      v10 = &dataPointerOut[lengthAtOffsetOut];
LABEL_16:
      result = 0;
      *(a1 + 24) = v10;
      *a1 = &v9[-v5];
      *(a1 + v3) = v9;
      return result;
    }

    if (v7 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = totalLengthOut - v5;
    }

    v9 = (a1 + 32);
    result = CMBlockBufferCopyDataBytes(*(a1 + 16), v5, v11, (a1 + 32));
    if (!result)
    {
      v10 = &v9[v11];
      goto LABEL_16;
    }
  }

  return result;
}

size_t hevcbridgeUPullFlagAlways(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  result = hevcbridgeUPull(a1, 1, &v16, a4, a5, a6, a7, a8);
  if (!result)
  {
    v13 = v16;
    *a5 = v16;
    if (a3)
    {
      v14 = *a2;
      v15 = a2[1];

      return v15(v14, a4, v13, 0xFFFFFFFFLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t hevcbridgeParseVPSExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10)
{
  v11 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v12;
  v21 = v20;
  v23 = v22;
  v24 = v10;
  v531 = v25;
  v26 = v11;
  v555[2] = *MEMORY[0x1E69E9840];
  v540 = 0;
  v555[0] = 0;
  v555[1] = 0;
  v27 = &v546;
  memset(v554, 0, 64);
  if (v12 >= 0x3E)
  {
    v28 = 62;
  }

  else
  {
    v28 = v12;
  }

  v552[0] = 0;
  v552[1] = 0;
  v553 = 0;
  v539 = 0;
  bzero(v551, 0x100uLL);
  v538 = 0;
  v537 = 0;
  v535 = 0;
  v536 = 0;
  memset(v550, 0, 64);
  v534 = 0;
  v33 = v23 == 1 && v21 == 1;
  v533 = 0;
  if (!v33)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_52_0();
    v186 = 2953;
LABEL_162:
    FigSignalErrorAtGM(v179, v180, v181, v182, v186, v183, v184, v185, v488);
    goto LABEL_35;
  }

  HIDWORD(v526) = v14;
  if (v19)
  {
    v34 = hevcbridgeParseProfileTierLevel(v26, v531, 0, v18, v29, v30, v31, v32);
    if (v34)
    {
      goto LABEL_34;
    }
  }

  v34 = hevcbridgeUPullFlagAlways(v26, v531, (*(v531 + 44) >> 18) & 1, 21, &v540 + 1, v30, v31, v32);
  if (v34)
  {
    goto LABEL_34;
  }

  HIDWORD(v513) = v16;
  v510 = v10;
  HIDWORD(v509) = v18;
  HIDWORD(v518) = v19;
  v19 = 0;
  v21 = 0;
  v511 = a10;
  __src = a9;
  v16 = (v28 + 2);
  v24 = v531;
  do
  {
    LOBYTE(v546) = 0;
    v35 = OUTLINED_FUNCTION_69();
    v34 = hevcbridgeUPullFlagAlways(v35, v531, v36, 22, v37, v38, v39, v40);
    if (v34)
    {
      goto LABEL_34;
    }

    v46 = v546;
    *(v555 + v19) = v546;
    v21 = (v21 + v46);
    ++v19;
  }

  while (v19 != 16);
  LODWORD(v530) = HIBYTE(v540);
  v47 = v21 - HIBYTE(v540);
  if (v21 > HIBYTE(v540))
  {
    if (v47 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v47;
    }

    v48 = v554;
    while (1)
    {
      LODWORD(v546) = 0;
      v49 = *(v531 + 44);
      v50 = hevcbridgeUPullLong(v26, 3, &v546, v41, v42, v43, v44, v45);
      v14 = v50;
      if ((v49 & 0x100000) != 0 && !v50)
      {
        v51 = OUTLINED_FUNCTION_87();
        v14 = v52(v51, 23, v546, 0xFFFFFFFFLL);
      }

      if (v14)
      {
        break;
      }

      *v48++ = v546 + 1;
      if (!--v19)
      {
        goto LABEL_25;
      }
    }

LABEL_35:
    OUTLINED_FUNCTION_3_30();
    v60 = 0;
    v61 = 0;
    v62 = 0;
    goto LABEL_36;
  }

LABEL_25:
  if (v530 && v21)
  {
    if (v21 < 2)
    {
      v58 = 1;
    }

    else
    {
      v53 = 0;
      v54 = v552 + 1;
      v55 = v21 - 1;
      v56 = v554;
      do
      {
        v57 = *v56;
        v56 += 4;
        v53 += v57;
        *v54++ = v53;
        --v55;
      }

      while (v55);
      v58 = v21;
    }

    v59 = *(v552 + (v21 - 1));
    v554[(v21 - 1)] = 6 - v59;
    *(v552 + v58) = 6;
    if (v59 >= 6)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_52_0();
      v186 = 2989;
      goto LABEL_162;
    }
  }

  v34 = hevcbridgeUPullFlagAlways(v26, v531, (*(v531 + 44) >> 21) & 1, 24, &v540, v43, v44, v45);
  if (v34)
  {
LABEL_34:
    v14 = v34;
    goto LABEL_35;
  }

  memset(&v551[1], 255, 0xFCuLL);
  v551[0] = 0;
  v514 = v28;
  if (!HIDWORD(v518))
  {
    v521 = 0;
    v19 = 1;
    v73 = 1;
LABEL_82:
    v104 = hevcbridgeUPullAlways(v26, v24, (*(v24 + 44) >> 25) & 1, 28, &v539, 4, v66, v67);
    if (v104)
    {
LABEL_83:
      v14 = v104;
      OUTLINED_FUNCTION_3_30();
      v60 = 0;
      v61 = 0;
      v62 = v521;
      goto LABEL_36;
    }

    count = v19;
    LODWORD(v530) = v539;
    if (v539 && v73)
    {
      v19 = 0;
      v21 = count << 16;
      do
      {
        LODWORD(v546) = 0;
        v110 = *(v24 + 44);
        v104 = hevcbridgeUPullLong(v26, v530, &v546, v105, v106, v107, v108, v109);
        v14 = v104;
        if ((v110 & 0x4000000) != 0)
        {
          v106 = v521;
          if (!v104)
          {
            v113 = OUTLINED_FUNCTION_87();
            v115 = v114;
            v104 = v116(v113, 29, v546, 0xFFFFFFFFLL);
            v106 = v115;
            v14 = v104;
          }
        }

        else
        {
          v106 = v521;
        }

        if (v14)
        {
          goto LABEL_80;
        }

        if ((*(v24 + 47) & 8) != 0)
        {
          v117 = 0;
          v27 = v551;
          v24 = v546;
          do
          {
            v118 = *v27++;
            if (v118 == v19)
            {
              v119 = OUTLINED_FUNCTION_72(v104, v111, v112, v105, v106, v107, v108, v109, v488, v490, v493, v494, v495, v496, v498, v500, size, v505, v507, v509, v510, v511, __src, v513, v514, v515, v518, v519, v521, v522, v526, count, v529, v530, v531);
              v104 = v120(v119, 30, v24 | v117, 0xFFFFFFFFLL);
              if (v104)
              {
                goto LABEL_83;
              }
            }

            v117 += 0x10000;
          }

          while (v21 != v117);
        }

        v19 = (v19 + 1);
        v27 = &v546;
        v24 = v531;
      }

      while (v19 != v73);
    }

    if (HIDWORD(v518))
    {
      v121 = malloc_type_calloc(v16, v16, 0x100004077774924uLL);
      v60 = malloc_type_calloc(v16, v16, 0x100004077774924uLL);
      v506 = v121;
      v19 = v121 + v16;
      v21 = 1;
      v516 = (v28 + 1);
      do
      {
        v122 = 0;
        do
        {
          LOBYTE(v546) = 0;
          v123 = OUTLINED_FUNCTION_69();
          v129 = hevcbridgeUPullFlagAlways(v123, v24, v124, 31, v125, v126, v127, v128);
          if (v129)
          {
            v14 = v129;
            OUTLINED_FUNCTION_3_30();
            v62 = v521;
            v61 = v506;
            goto LABEL_36;
          }

          *(v19 + v122++) = v546;
        }

        while (v21 != v122);
        ++v21;
        v19 += v16;
      }

      while (v21 != v516);
      v130 = v506 + v16;
      v131 = 1;
      do
      {
        v132 = 0;
        v133 = v131 * v16;
        v134 = v60;
        do
        {
          v135 = 0;
          v60[v133 + v132] = *(v506 + v133 + v132);
          v136 = v134;
          do
          {
            if (*(v130 + v135) && *v136)
            {
              v60[v133 + v132] = 1;
            }

            ++v135;
            v136 += v16;
          }

          while (v131 != v135);
          ++v132;
          ++v134;
        }

        while (v132 != v28);
        ++v131;
        v130 += v16;
      }

      while (v131 != v516);
      v137 = 0;
      v138 = 0;
      LOBYTE(v139) = 0;
      LOBYTE(v140) = 0;
      LOBYTE(v141) = 0;
      do
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = (v28 + 1);
        v146 = v138;
        v147 = v137;
        do
        {
          if (*(v506 + v147))
          {
            ++v144;
          }

          if (v60[v147])
          {
            ++v143;
          }

          if (v60[v146])
          {
            ++v142;
          }

          ++v147;
          v146 += v16;
          --v145;
        }

        while (v145);
        if (v139 <= v144)
        {
          v139 = v144;
        }

        else
        {
          v139 = v139;
        }

        if (v140 <= v143)
        {
          v140 = v143;
        }

        else
        {
          v140 = v140;
        }

        if (v141 <= v142)
        {
          v141 = v142;
        }

        else
        {
          v141 = v141;
        }

        ++v138;
        v137 += v16;
      }

      while (v138 != v516);
      sizea = v141;
      v523 = v139;
      v501 = malloc_type_calloc(count, v139, 0x100004077774924uLL);
      v148 = malloc_type_calloc(count, v140, 0x100004077774924uLL);
      v149 = malloc_type_calloc(count, sizea, 0x100004077774924uLL);
      v530 = OUTLINED_FUNCTION_81();
      v508 = OUTLINED_FUNCTION_81();
      v520 = OUTLINED_FUNCTION_81();
      v150 = 0;
      v151 = 0;
      do
      {
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = v521[v151];
        v156 = (v28 + 1);
        v157 = v151;
        v158 = v150;
        v159 = v521;
        do
        {
          v161 = *v159++;
          v160 = v161;
          if (*(v506 + v158))
          {
            v501[v155 * v523 + v154++] = v160;
          }

          if (v60[v158])
          {
            v148[v155 * v140 + v153++] = v160;
          }

          if (v60[v157])
          {
            v149[v155 * sizea + v152++] = v160;
          }

          ++v158;
          v157 += v16;
          --v156;
        }

        while (v156);
        v530[v155] = v154;
        v508[v155] = v153;
        v520[v155] = v152;
        ++v151;
        v150 += v16;
      }

      while (v151 != v516);
      count = v148;
      v529 = v149;
      v524 = v26;
      v162 = 0;
      v163 = 0;
      v548 = 0u;
      v549 = 0u;
      v546 = 0u;
      v547 = 0u;
      v164 = v530;
      do
      {
        if (!v530[v521[v162]])
        {
          ++v163;
        }

        ++v162;
      }

      while (v516 != v162);
      v165 = (sizea + 1);
      v14 = v163;
      v166 = OUTLINED_FUNCTION_82(v163, v165 + 63);
      v495 = v163;
      v167 = malloc_type_calloc(v163, 1uLL, v501);
      v107 = sizea;
      v168 = v521;
      v169 = 0;
      v170 = 0;
      do
      {
        v171 = v521[v169];
        if (!v530[v171])
        {
          v172 = v170;
          v173 = &v166[v170 * v165];
          *v173 = v171;
          v174 = v520[v171];
          if (v174)
          {
            v175 = 0;
            v176 = 1;
            do
            {
              v177 = v149[v171 * sizea + v175];
              if (!*(&v546 + v177))
              {
                v173[v176++] = v177;
                *(&v546 + v177) = 1;
                v174 = v520[v171];
              }

              ++v175;
            }

            while (v175 < v174);
          }

          else
          {
            v176 = 1;
          }

          ++v170;
          v167[v172] = v176;
        }

        ++v169;
      }

      while (v169 != v516);
      if (v163 >= 2u)
      {
        v517 = v167;
        sizeb = v166;
        v178 = hevcbridgeUEPullAlways(v524, v531, (*(v531 + 44) >> 29) & 1, 32, &v538, v107, v108, v109);
        if (v178)
        {
          v14 = v178;
          goto LABEL_160;
        }

        if (v538 >= 0x400)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_52_0();
          FigSignalErrorAtGM(v287, v288, v289, v290, 0xC75, v291, v292, v293, v488);
LABEL_160:
          v21 = 0;
          v19 = 0;
          v61 = v506;
          v16 = v508;
          v26 = v520;
          v62 = v521;
          v24 = v501;
          v27 = sizeb;
          v28 = v517;
          goto LABEL_36;
        }

        v187 = HIDWORD(v513) + 1;
        v188 = v538 + HIDWORD(v513) + 1;
        v493 = v538;
        if (v538)
        {
          v189 = OUTLINED_FUNCTION_82(v538 + v187, 1uLL);
          LODWORD(v494) = HIDWORD(v526) + 1;
          v491 = v188;
          v190 = malloc_type_calloc(v188, HIDWORD(v526) + 1 - v163 + (v163 << 6), v501);
          v191 = v190;
          if (__src)
          {
            memcpy(v190, __src, v494 * v187);
          }

          *v189 = 1;
          v192 = v517;
          v193 = v495;
          if (HIDWORD(v513))
          {
            if (v187 <= 2)
            {
              v194 = 2;
            }

            else
            {
              v194 = v187;
            }

            v195 = (v511 + 1);
            v196 = v189 + 1;
            v197 = v194 - 1;
            do
            {
              v198 = *v195++;
              *v196++ = v198;
              --v197;
            }

            while (v197);
          }

          else
          {
            v187 = 1;
          }

          v497 = v191;
          v499 = v189;
          v218 = 0;
LABEL_187:
          bzero(&v546, 0xF8uLL);
          v219 = 1;
          while (1)
          {
            LODWORD(v220) = vcvtpd_s64_f64(log2((*(v192 + v219) + 1)));
            LODWORD(v542[0]) = 0;
            v221 = *(v531 + 44);
            v227 = hevcbridgeUPullLong(v524, v220, v542, v222, v223, v224, v225, v226);
            v14 = v227;
            if ((v221 & 0x40000000) != 0 && !v227)
            {
              v232 = OUTLINED_FUNCTION_72(v227, v228, v229, v230, v231, v107, v108, v109, v488, v491, v493, v494, v495, v497, v499, v501, sizeb, v506, v508, v509, v510, v511, __src, v513, v514, v517, v518, v520, v521, v524, v526, count, v529, v530, v531);
              v14 = v233(v232, 33, LODWORD(v542[0]), 0xFFFFFFFFLL);
            }

            v62 = v521;
            if (v14)
            {
              goto LABEL_223;
            }

            v192 = v517;
            if (LODWORD(v542[0]) > *(v517 + v219))
            {
              break;
            }

            *(&v546 + v219++) = v542[0];
            if (v193 == v219)
            {
              v234 = 0;
              v235 = 1;
              do
              {
                v236 = *(&v546 + v235);
                if (v236)
                {
                  v237 = 0;
                  do
                  {
                    *(v497 + (v187 + v218) * v494 + v234++) = *(sizeb + v235 * v165 + v237++);
                  }

                  while (v236 > v237);
                }

                ++v235;
              }

              while (v235 != v193);
              *(v499 + v187 + v218++) = v234;
              if (v218 == v493)
              {
                v511 = v499;
                __src = v497;
                v26 = v524;
                v201 = count;
                v149 = v529;
                v164 = v530;
                LODWORD(v28) = v514;
                v188 = v491;
                v202 = v493;
                goto LABEL_176;
              }

              goto LABEL_187;
            }
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_52_0();
          FigSignalErrorAtGM(v280, v281, v282, v283, 0xC93, v284, v285, v286, v488);
          v62 = v521;
LABEL_223:
          v61 = v506;
          v16 = v508;
          v26 = v520;
LABEL_224:
          v24 = v501;
          v27 = sizeb;
          v28 = v517;
          v19 = v497;
          v21 = v499;
          goto LABEL_36;
        }

        v497 = 0;
        v499 = 0;
        v202 = 0;
        v26 = v524;
        v201 = count;
        v149 = v529;
        v164 = v530;
LABEL_176:
        v203 = hevcbridgeUPullFlagAlways(v26, v531, *(v531 + 44) >> 31, 34, &v537 + 1, v107, v108, v109);
        count = v201;
        v529 = v149;
        v530 = v164;
        if (v203)
        {
LABEL_177:
          v14 = v203;
          v61 = v506;
          v16 = v508;
          v26 = v520;
          v62 = v521;
          goto LABEL_224;
        }

        memset(v545, 0, sizeof(v545));
        if (HIBYTE(v537))
        {
          v204 = (v28 + 1);
          v205 = v545;
          do
          {
            LODWORD(v546) = 0;
            v206 = OUTLINED_FUNCTION_69();
            v203 = hevcbridgeUPullAlways(v206, v207, v208, 35, v209, 3, v210, v211);
            if (v203)
            {
              goto LABEL_177;
            }

            *v205++ = v546;
          }

          while (--v204);
        }

        v492 = v188;
        OUTLINED_FUNCTION_36_0();
        v525 = v26;
        v217 = hevcbridgeUPullFlagAlways(v26, v213, (v212 >> 33) & 1, 36, &v537, v214, v215, v216);
        if (v217)
        {
          goto LABEL_183;
        }

        bzero(&v543, 0x1000uLL);
        if (v537 && HIDWORD(v518))
        {
          v238 = 0;
          v239 = v514;
          v494 = v514 + 3;
          v495 = v544;
          v240 = v16;
          do
          {
            v241 = v506;
            if (v238 < v514)
            {
              v242 = v239;
              v243 = v495;
              v244 = v240;
              do
              {
                if (*(v241 + v244))
                {
                  LODWORD(v546) = 0;
                  OUTLINED_FUNCTION_36_0();
                  v253 = OUTLINED_FUNCTION_45_0(v246, v247, (v245 >> 34) & 1, v248, v249, v250, v251, v252, v488, v492, v493, v494, v495, v497, v499, v501, sizeb, v506, v508, v509, v510, v511, __src, v513, v514, v517, v518, v520, v521, v525);
                  v217 = hevcbridgeUPullAlways(v253, v254, v255, 37, v256, 3, v257, v258);
                  if (v217)
                  {
                    goto LABEL_183;
                  }

                  *v243 = v546;
                  v241 = v506;
                }

                v244 += v16;
                ++v243;
                --v242;
              }

              while (v242);
            }

            ++v238;
            v240 += v494;
            v495 += 65;
            --v239;
          }

          while (v238 != v514);
        }

        OUTLINED_FUNCTION_36_0();
        v217 = hevcbridgeUPullFlagAlways(v525, v260, (v259 >> 35) & 1, 38, &v534, v261, v262, v263);
        if (v217 || (OUTLINED_FUNCTION_36_0(), v217 = hevcbridgeUEPullAlways(v525, v265, (v264 >> 36) & 1, 39, &v536 + 1, v266, v267, v268), v217))
        {
LABEL_183:
          v14 = v217;
LABEL_184:
          v62 = v521;
          goto LABEL_223;
        }

        v269 = HIDWORD(v536);
        if (HIDWORD(v536) >= 2)
        {
          v294 = 2;
          do
          {
            OUTLINED_FUNCTION_100();
            *v295 = 0;
            OUTLINED_FUNCTION_36_0();
            v304 = OUTLINED_FUNCTION_45_0(v297, v298, (v296 >> 37) & 1, v299, v300, v301, v302, v303, v488, v492, v493, v494, v495, v497, v499, v501, sizeb, v506, v508, v509, v510, v511, __src, v513, v514, v517, v518, v520, v521, v525);
            v217 = hevcbridgeUPullFlagAlways(v304, v305, v306, 40, v307, v308, v309, v310);
            if (v217)
            {
              goto LABEL_183;
            }

            OUTLINED_FUNCTION_100();
            v217 = hevcbridgeParseProfileTierLevel(v525, v531, *v311, HIDWORD(v509), v312, v313, v314, v315);
            if (v217)
            {
              goto LABEL_183;
            }

            ++v294;
          }

          while (v294 <= v269);
        }

        LODWORD(v494) = v492 - 2;
        if (v492 < 2)
        {
          v275 = 0;
          LODWORD(v495) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_36_0();
          v217 = hevcbridgeUEPullAlways(v525, v271, (v270 >> 38) & 1, 41, &v536, v272, v273, v274);
          if (v217)
          {
            goto LABEL_183;
          }

          v275 = v536;
          if (v536 >= 0x400)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_5_26();
            OUTLINED_FUNCTION_52_0();
            v399 = 3276;
            goto LABEL_381;
          }

          OUTLINED_FUNCTION_36_0();
          v217 = hevcbridgeUPullAlways(v525, v277, (v276 >> 39) & 1, 42, &v535 + 1, 2, v278, v279);
          if (v217)
          {
            goto LABEL_183;
          }

          LODWORD(v495) = HIDWORD(v535);
        }

        if (*(v531 + 152))
        {
LABEL_233:
          v14 = 1;
          goto LABEL_184;
        }

        LODWORD(v493) = v275 + v492;
        if ((v275 + v492) >= 2)
        {
          LODWORD(v488) = vcvtpd_s64_f64(log2((v202 + HIDWORD(v513))));
          HIDWORD(v488) = HIDWORD(v526) + 1;
          v527 = vcvtpd_s64_f64(log2((v269 + 1)));
          for (i = 1; i != v493; ++i)
          {
            v317 = 0;
            v532 = 0;
            v548 = 0u;
            v549 = 0u;
            v318 = v492 >= 3 && i >= v492;
            v546 = 0uLL;
            v547 = 0uLL;
            if (v318)
            {
              OUTLINED_FUNCTION_36_0();
              v217 = hevcbridgeUPullAlways(v525, v320, (v319 >> 40) & 1, 43, &v532, v488, v321, v322);
              if (v217)
              {
                goto LABEL_183;
              }

              v317 = v532;
              if (v532 > v494)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_5_26();
                OUTLINED_FUNCTION_52_0();
                v399 = 3297;
                goto LABEL_381;
              }
            }

            if (i >= v492)
            {
              v323 = v317 + 1;
            }

            else
            {
              v323 = i;
            }

            v14 = *(v511 + v323);
            if (i > HIDWORD(v513) || v495 == 2)
            {
              if (*(v511 + v323))
              {
                v325 = 0;
                while (1)
                {
                  LOBYTE(v542[0]) = 0;
                  OUTLINED_FUNCTION_36_0();
                  v217 = hevcbridgeUPullFlagAlways(v525, v327, (v326 >> 41) & 1, 44, v542, v328, v329, v330);
                  if (v217)
                  {
                    goto LABEL_183;
                  }

                  *(&v546 + v325++) = v542[0];
                  v14 = *(v511 + v323);
                  if (v325 >= v14)
                  {
                    goto LABEL_270;
                  }
                }
              }
            }

            else
            {
              if (v495)
              {
                if (*(v511 + v323))
                {
                  v331 = 0;
                  LOBYTE(v332) = 0;
                  v333 = 0;
                  do
                  {
                    v334 = __src[(v323 * HIDWORD(v488) + v331)];
                    v335 = v334 >= v333;
                    if (v334 > v333)
                    {
                      v333 = __src[(v323 * HIDWORD(v488) + v331)];
                    }

                    if (v335)
                    {
                      LOBYTE(v332) = v331;
                    }

                    ++v331;
                  }

                  while (v14 != v331);
                  v332 = v332;
                }

                else
                {
                  v332 = 0;
                }

                *(&v546 + v332) = 1;
LABEL_270:
                if (!v14)
                {
                  continue;
                }
              }

              else
              {
                if (!*(v511 + v323))
                {
                  continue;
                }

                memset(&v546, 1, *(v511 + v323));
              }

              v336 = 0;
              v337 = 0;
              v338 = 0;
              do
              {
                if (*(&v546 + v336))
                {
                  ++v338;
                  v337 = __src[v336];
                }

                ++v336;
              }

              while (v14 != v336);
              v339 = 0;
              memset(v542, 0, sizeof(v542));
              do
              {
                if (*(&v546 + v339))
                {
                  *(v542 + v339) = 1;
                  if (v339)
                  {
                    v340 = 0;
                    v341 = v550[__src[(v323 * HIDWORD(v488) + v339)]] * v16;
                    v342 = v323 * HIDWORD(v488);
                    do
                    {
                      if (v60[v341 + v550[__src[v342]]])
                      {
                        *(v542 + v340) = 1;
                      }

                      ++v340;
                      ++v342;
                    }

                    while (v339 != v340);
                  }
                }

                ++v339;
              }

              while (v339 != v14);
              v343 = 0;
              do
              {
                if (v269 && *(v542 + v343))
                {
                  OUTLINED_FUNCTION_36_0();
                  v217 = hevcbridgeUPullIfRequested(v525, v345, (v344 >> 42) & 1, 45, v527, v346, v347, v348, v488);
                  if (v217)
                  {
                    goto LABEL_183;
                  }

                  v14 = *(v511 + v323);
                }

                ++v343;
              }

              while (v343 < v14);
              if (v338 == 1)
              {
                if (!HIDWORD(v518))
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_5_26();
                  OUTLINED_FUNCTION_52_0();
                  v399 = 3366;
                  goto LABEL_381;
                }

                if (v530[v337])
                {
                  OUTLINED_FUNCTION_36_0();
                  v217 = hevcbridgeUPullFlagIfRequested(v525, v350, (v349 >> 43) & 1, 46, v351, v352, v353, v354, v488);
                  if (v217)
                  {
                    goto LABEL_183;
                  }
                }
              }
            }
          }
        }

        OUTLINED_FUNCTION_36_0();
        v217 = hevcbridgeUEPullAlways(v525, v356, (v355 >> 44) & 1, 47, &v535, v357, v358, v359);
        if (v217)
        {
          goto LABEL_183;
        }

        v364 = v535;
        if (v535 < 0x100)
        {
          if (*(v531 + 144))
          {
            **(v531 + 144) = malloc_type_calloc(1uLL, 16 * v535 + 4512, 0x2F18350BuLL);
            v365 = **(v531 + 144);
            if (!v365)
            {
              v14 = 4294954583;
              goto LABEL_184;
            }

            *(v365 + 8) = v364;
            v366 = v365 + 8;
            *(v365 + 204) = v534;
            if (HIDWORD(v518))
            {
              v367 = 0;
              do
              {
                v368 = v521[v367];
                *(v365 + 76 + v368) = v530[v368];
                *(v365 + 334 + v368) = v550[v368];
                if (v530[v368])
                {
                  v369 = 0;
                  do
                  {
                    v370 = v550[v501[v368 + v369]];
                    *(v365 + 206 + v368) = v370;
                    *(v365 + 270 + v370) = v545[v370];
                    ++v369;
                  }

                  while (v369 < v530[v368]);
                }

                ++v367;
              }

              while (v367 != v514 + 1);
              v371 = 0;
              v372 = v544;
              v373 = (v365 + 399);
              v374 = v514 - 1;
              do
              {
                if (v514 > v371)
                {
                  memcpy(v373, v372, v374 + 1);
                }

                ++v371;
                --v374;
                v373 += 65;
                v372 += 65;
              }

              while (v514 != v371);
            }

            *(v365 + 4494) = BYTE4(v509);
          }

          else
          {
            v366 = 0;
          }

          LODWORD(v375) = 0;
          while (1)
          {
            v217 = hevcbridgeParseRepFormat(v525, v531, v375, v366, v360, v361, v362, v363);
            if (v217)
            {
              goto LABEL_183;
            }

            v375 = (v375 + 1);
            if (v375 > v364)
            {
              if (v364)
              {
                OUTLINED_FUNCTION_36_0();
                v217 = hevcbridgeUPullFlagAlways(v525, v401, (v400 >> 45) & 1, 48, &v534 + 1, v402, v403, v404);
                if (v217)
                {
                  goto LABEL_183;
                }
              }

              memset(v541, 0, sizeof(v541));
              if (HIBYTE(v534))
              {
                if (HIDWORD(v518))
                {
                  LODWORD(v375) = vcvtpd_s64_f64(log2((v364 + 1)));
                  v376 = v541 + 1;
                  if (HIDWORD(v518) >= 0x3EuLL)
                  {
                    v377 = 62;
                  }

                  else
                  {
                    v377 = HIDWORD(v518);
                  }

                  do
                  {
                    LODWORD(v546) = 0;
                    OUTLINED_FUNCTION_36_0();
                    v386 = OUTLINED_FUNCTION_45_0(v379, v380, (v378 >> 46) & 1, v381, v382, v383, v384, v385, v488, v492, v493, v494, v495, v497, v499, v501, sizeb, v506, v508, v509, v510, v511, __src, v513, v514, v517, v518, v520, v521, v525);
                    v217 = hevcbridgeUPullAlways(v386, v387, v388, 49, v389, v375, v390, v391);
                    if (v217)
                    {
                      goto LABEL_183;
                    }

                    *v376++ = v546;
                  }

                  while (--v377);
                }
              }

              else
              {
                v405 = vdupq_n_s64(v514);
                v406 = vdupq_n_s32(v364);
                v407 = xmmword_1971664F0;
                v408 = v541 + 7;
                v409 = xmmword_197165580;
                do
                {
                  v410 = vmovn_s64(vcgeq_u64(v405, v409));
                  v411 = vminq_u32(v407, v406);
                  if (vuzp1_s8(vuzp1_s16(v410, *v405.i8), *v405.i8).u8[0])
                  {
                    *(v408 - 7) = v411.i8[0];
                  }

                  if (vuzp1_s8(vuzp1_s16(v410, *&v405), *&v405).i8[1])
                  {
                    *(v408 - 6) = v411.i8[4];
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(v417, *&v413).i8[2])
                  {
                    *(v412 - 5) = v414;
                  }

                  if (vuzp1_s8(vuzp1_s16(v413, v416), *&v413).i8[3])
                  {
                    *(v412 - 4) = v415;
                  }

                  OUTLINED_FUNCTION_98();
                  if (v423)
                  {
                    *(v418 - 3) = v420;
                  }

                  if (vuzp1_s8(*&v419, vuzp1_s16(v422, v419)).i8[5])
                  {
                    *(v418 - 2) = v421;
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(*&v425, v432).i8[6])
                  {
                    *(v424 - 1) = v429;
                  }

                  if (vuzp1_s8(*&v425, vuzp1_s16(*&v425, v431)).i8[7])
                  {
                    *v424 = v430;
                  }

                  v433 = vminq_u32(v427, v426);
                  v434 = vmovn_s64(vcgeq_u64(v425, v428));
                  if (vuzp1_s8(vuzp1_s16(v434, *v425.i8), *v425.i8).u8[0])
                  {
                    v424[1] = v433.i8[0];
                  }

                  if (vuzp1_s8(vuzp1_s16(v434, *&v425), *&v425).i8[1])
                  {
                    v424[2] = v433.i8[4];
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(v440, *&v436).i8[2])
                  {
                    *(v435 + 3) = v437;
                  }

                  if (vuzp1_s8(vuzp1_s16(v436, v439), *&v436).i8[3])
                  {
                    *(v435 + 4) = v438;
                  }

                  OUTLINED_FUNCTION_98();
                  if (v446)
                  {
                    *(v441 + 5) = v443;
                  }

                  if (vuzp1_s8(*&v442, vuzp1_s16(v445, v442)).i8[5])
                  {
                    *(v441 + 6) = v444;
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(*&v405, v456).i8[6])
                  {
                    v448[7] = v453;
                  }

                  if (vuzp1_s8(*&v405, vuzp1_s16(*&v405, v455)).i8[7])
                  {
                    v448[8] = v454;
                  }

                  v409 = vaddq_s64(v451, vdupq_n_s64(v449));
                  v407 = vaddq_s32(v450, v452);
                  v408 = v448 + 16;
                }

                while (v447 != 16);
              }

              if (v366)
              {
                for (j = 0; j != 64; ++j)
                {
                  *(v366 + 4 + j) = *(v541 + v550[j]);
                }
              }

              OUTLINED_FUNCTION_36_0();
              v217 = hevcbridgeUPullFlagAlways(v525, v459, (v458 >> 47) & 1, 50, &v533, v460, v461, v462);
              if (v217)
              {
                goto LABEL_183;
              }

              if (v366)
              {
                *(v366 + 197) = v533;
              }

              v217 = hevcbridgeUPullFlagIfRequested(v525, v531, *(v531 + 50) & 1, 51, v463, v464, v465, v466, v488);
              if (v217)
              {
                goto LABEL_183;
              }

              if (HIDWORD(v518))
              {
                v467 = HIDWORD(v518);
                if (HIDWORD(v518) >= 0x3EuLL)
                {
                  v467 = 62;
                }

                v468 = -v467;
                v469 = 1;
                while (1)
                {
                  if (!v530[v521[v469]])
                  {
                    OUTLINED_FUNCTION_100();
                    *v470 = 0;
                    OUTLINED_FUNCTION_36_0();
                    v479 = OUTLINED_FUNCTION_45_0(v472, v473, (v471 >> 49) & 1, v474, v475, v476, v477, v478, v489, v492, v493, v494, v495, v497, v499, v501, sizeb, v506, v508, v509, v510, v511, __src, v513, v514, v517, v518, v520, v521, v525);
                    v486 = hevcbridgeUPullFlagAlways(v479, v480, v481, 52, v482, v483, v484, v485);
                    v14 = v486;
                    if (!v366 || v486)
                    {
                      if (v486)
                      {
                        goto LABEL_184;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_100();
                      *(v366 + 132 + v550[v469]) = *v487;
                    }
                  }

                  ++v469;
                  v14 = 1;
                  if (v468 + v469 == 1)
                  {
                    goto LABEL_184;
                  }
                }
              }

              goto LABEL_233;
            }
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_5_26();
        OUTLINED_FUNCTION_52_0();
        v399 = 3373;
LABEL_381:
        FigSignalErrorAtGM(v392, v393, v394, v395, v399, v396, v397, v398, v488);
        goto LABEL_184;
      }

      v26 = v524;
      v201 = count;
      v200 = v501;
      v199 = v506;
    }

    else
    {
      v199 = 0;
      v60 = 0;
      v200 = 0;
      v167 = 0;
      v166 = 0;
      v520 = 0;
      v508 = 0;
      v164 = 0;
      v149 = 0;
      v201 = 0;
      v168 = v521;
    }

    v501 = v200;
    sizeb = v166;
    v521 = v168;
    v517 = v167;
    v506 = v199;
    v497 = 0;
    v499 = 0;
    v202 = 0;
    v188 = (HIDWORD(v513) + 1);
    goto LABEL_176;
  }

  v522 = v26;
  v68 = malloc_type_calloc((v28 + 2), 1uLL, 0x100004077774924uLL);
  v71 = 1;
  v72 = v68;
  v27 = 0;
  LODWORD(count) = 0;
  LODWORD(v515) = v540;
  v505 = v552 + 1;
  v507 = (v28 + 1);
  v26 = v555;
  v73 = 1;
  v521 = v68;
  while (1)
  {
    LODWORD(v519) = v73;
    v532 = 0;
    v546 = 0uLL;
    if (v515)
    {
      v74 = v71;
      v75 = v72;
      v19 = *(v24 + 44);
      v76 = hevcbridgeUPullLong(v522, 6, &v532, v69, v72, v70, v66, v67);
      v14 = v76;
      if ((v19 & 0x400000) != 0 && !v76)
      {
        v77 = OUTLINED_FUNCTION_87();
        v14 = v78(v77, 25, v532, 0xFFFFFFFFLL);
      }

      v72 = v75;
      if (v14)
      {
        goto LABEL_80;
      }

      v71 = v74;
      v19 = v532;
    }

    else
    {
      v532 = v71;
      v19 = v71;
    }

    *(v72 + v71) = v19;
    v529 = v71;
    v550[v19] = v71;
    v79 = count;
    if (v19 > count)
    {
      v79 = v19;
    }

    LODWORD(count) = v79;
    if (v530)
    {
      if (v21)
      {
        v80 = 0;
        v81 = &v546;
        v82 = v505;
        v83 = v21;
        do
        {
          v84 = *v82++;
          v85 = (v19 & ~(-1 << v84)) >> v80;
          v80 = v84;
          *v81 = v85;
          v81 = (v81 + 1);
          --v83;
        }

        while (v83);
      }

      goto LABEL_64;
    }

    if (v21)
    {
      break;
    }

LABEL_64:
    v94 = 0;
    v95 = 0;
    v542[0] = 0uLL;
    v24 = v531;
    v28 = v514;
    do
    {
      if (*(v555 + v94))
      {
        v96 = *(&v546 + v95++);
        *(v542 + v94) = v96;
      }

      ++v94;
    }

    while (v94 != 16);
    v97 = BYTE1(v542[0]);
    v551[v19] = BYTE1(v542[0]);
    if (v551[*v521] == v97)
    {
      v98 = 0;
      v99 = v529;
    }

    else
    {
      v100 = 1;
      do
      {
        v101 = v100;
        if ((v27 + v100) == 1)
        {
          break;
        }

        ++v100;
      }

      while (v551[v521[v101]] != v97);
      v318 = v101 >= v529;
      v99 = v529;
      v98 = v318;
    }

    if (*(v531 + 47))
    {
      v102 = OUTLINED_FUNCTION_87();
      v104 = v103(v102, 27);
      v99 = v529;
      if (v104)
      {
        goto LABEL_83;
      }
    }

    v73 = v519 + v98;
    v71 = v99 + 1;
    v27 = (v27 - 1);
    v72 = v521;
    if (v71 == v507)
    {
      v19 = count + 1;
      v26 = v522;
      v27 = &v546;
      goto LABEL_82;
    }
  }

  v28 = v554;
  v86 = &v546;
  v87 = v21;
  while (1)
  {
    LODWORD(v542[0]) = 0;
    v24 = *(v531 + 44);
    v88 = *v28;
    v28 += 4;
    v89 = hevcbridgeUPullLong(v522, v88, v542, v69, v72, v70, v66, v67);
    v14 = v89;
    if ((v24 & 0x800000) != 0 && !v89)
    {
      v92 = OUTLINED_FUNCTION_72(v89, v90, v91, v69, v72, v70, v66, v67, v488, v490, v493, v494, v495, v496, v498, v500, size, v505, v507, v509, v510, v511, __src, v513, v514, v515, v518, v519, v521, v522, v526, count, v529, v530, v531);
      v14 = v93(v92, 26, LODWORD(v542[0]), 0xFFFFFFFFLL);
    }

    if (v14)
    {
      break;
    }

    *v86 = v542[0];
    v86 = (v86 + 1);
    if (!--v87)
    {
      goto LABEL_64;
    }
  }

LABEL_80:
  OUTLINED_FUNCTION_3_30();
  v60 = 0;
  v61 = 0;
LABEL_36:
  free(v62);
  free(v61);
  free(v60);
  free(v24);
  free(count);
  free(v529);
  free(v530);
  free(v16);
  free(v26);
  free(v27);
  free(v28);
  free(v21);
  free(v19);
  v63 = *(v531 + 144);
  if (v63)
  {
    if (v14 >= 2)
    {
      v64 = *v63;
      if (*v63)
      {
        *v63 = 0;
        free(v64);
      }
    }
  }

  return v14;
}

uint64_t hevcbridgeParseVUIParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  OUTLINED_FUNCTION_18_4();
  v287 = 0;
  v286 = 0;
  v285 = 0;
  v284 = 0;
  result = hevcbridgeUPullFlagAlways(v12, v13, (*(v13 + 44) >> 44) & 1, 109, &v287 + 1, v14, v15, v16);
  if (!result)
  {
    if (!HIBYTE(v287))
    {
      goto LABEL_10;
    }

    HIDWORD(v283) = 0;
    v23 = *(v9 + 44);
    result = hevcbridgeUPullLong(v10, 8, &v283 + 1, v18, v19, v20, v21, v22);
    if ((v23 & 0x200000000000) != 0 && !result)
    {
      v24 = OUTLINED_FUNCTION_53_0();
      result = v25(v24, 110, HIDWORD(v283), 0xFFFFFFFFLL);
    }

    if (!result)
    {
      if (HIDWORD(v283) != 255 || (v26 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v26, v27, v28, 111, 16, v29, v30, v31, v283), !result) && (v32 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v32, v33, v34, 112, 16, v35, v36, v37, v283), !result))
      {
LABEL_10:
        v38 = OUTLINED_FUNCTION_11_4();
        result = hevcbridgeUPullFlagAlways(v38, v39, v40, 113, v41, v42, v43, v44);
        if (!result)
        {
          if (!v287 || (v45 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagIfRequested(v45, v46, v47, 114, v48, v49, v50, v51, v283), !result))
          {
            v52 = OUTLINED_FUNCTION_11_4();
            result = hevcbridgeUPullFlagAlways(v52, v53, v54, 115, v55, v56, v57, v58);
            if (!result)
            {
              if (!HIBYTE(v286) || (BYTE3(v283) = 0, v59 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v59, v60, v61, 116, 3, v62, v63, v64, v283), !result) && (v65 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagIfRequested(v65, v66, v67, 117, v68, v69, v70, v71, v283), !result) && (v72 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagAlways(v72, v73, v74, 118, v75, v76, v77, v78), !result) && (!BYTE3(v283) || (v79 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v79, v80, v81, 119, 8, v82, v83, v84, v283), !result) && (v85 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v85, v86, v87, 120, 8, v88, v89, v90, v283), !result) && (v91 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v91, v92, v93, 121, 8, v94, v95, v96, v283), !result)))
              {
                v97 = OUTLINED_FUNCTION_11_4();
                result = hevcbridgeUPullFlagAlways(v97, v98, v99, 122, v100, v101, v102, v103);
                if (!result)
                {
                  if (!v286 || (v104 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v104, v105, v106, 123, v107, v108, v109, v110, v283), !result) && (v111 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v111, v112, v113, 124, v114, v115, v116, v117, v283), !result))
                  {
                    v118 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullFlagIfRequested(v118, v119, v120, 125, v121, v122, v123, v124, v283);
                    if (!result)
                    {
                      v125 = OUTLINED_FUNCTION_11_4();
                      result = hevcbridgeUPullFlagIfRequested(v125, v126, v127, 126, v128, v129, v130, v131, v283);
                      if (!result)
                      {
                        v132 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullFlagIfRequested(v132, v133, v134, 127, v135, v136, v137, v138, v283);
                        if (!result)
                        {
                          v139 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullFlagAlways(v139, v140, v141, 128, v142, v143, v144, v145);
                          if (!result)
                          {
                            if (!HIBYTE(v285) || (v146 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v146, v147, v148, 129, v149, v150, v151, v152, v283), !result) && (v153 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v153, v154, v155, 130, v156, v157, v158, v159, v283), !result) && (v160 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v160, v161, v162, 131, v163, v164, v165, v166, v283), !result) && (v167 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v167, v168, v169, 132, v170, v171, v172, v173, v283), !result))
                            {
                              v174 = OUTLINED_FUNCTION_11_4();
                              result = hevcbridgeUPullFlagAlways(v174, v175, v176, 133, v177, v178, v179, v180);
                              if (!result)
                              {
                                if (!v285 || (*(&v283 + 1) = 0, v181 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v181, v182, v183, 134, 32, v184, v185, v186, v283), !result) && (v187 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v187, v188, v189, 135, 32, v190, v191, v192, v283), !result) && (v193 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagAlways(v193, v194, v195, 136, v196, v197, v198, v199), !result) && (!BYTE2(v283) || (v200 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v200, v201, v202, 137, v203, v204, v205, v206, v283), !result)) && (v207 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagAlways(v207, v208, v209, 138, v210, v211, v212, v213), !result) && (!BYTE1(v283) || (v214 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeParseHRDParameters(v214, v215, 1, a3, v216, v217, v218, v219), !result)))
                                {
                                  v220 = OUTLINED_FUNCTION_11_4();
                                  result = hevcbridgeUPullFlagAlways(v220, v221, v222, 139, v223, v224, v225, v226);
                                  if (!result)
                                  {
                                    if (v284)
                                    {
                                      v227 = OUTLINED_FUNCTION_11_4();
                                      result = hevcbridgeUPullFlagIfRequested(v227, v228, v229, 140, v230, v231, v232, v233, v283);
                                      if (!result)
                                      {
                                        v234 = OUTLINED_FUNCTION_11_4();
                                        result = hevcbridgeUPullFlagIfRequested(v234, v235, v236, 141, v237, v238, v239, v240, v283);
                                        if (!result)
                                        {
                                          v241 = OUTLINED_FUNCTION_11_4();
                                          result = hevcbridgeUPullFlagIfRequested(v241, v242, v243, 142, v244, v245, v246, v247, v283);
                                          if (!result)
                                          {
                                            v248 = OUTLINED_FUNCTION_11_4();
                                            result = hevcbridgeUEPullIfRequested(v248, v249, v250, 143, v251, v252, v253, v254, v283);
                                            if (!result)
                                            {
                                              v255 = OUTLINED_FUNCTION_11_4();
                                              result = hevcbridgeUEPullIfRequested(v255, v256, v257, 144, v258, v259, v260, v261, v283);
                                              if (!result)
                                              {
                                                v262 = OUTLINED_FUNCTION_11_4();
                                                result = hevcbridgeUEPullIfRequested(v262, v263, v264, 145, v265, v266, v267, v268, v283);
                                                if (!result)
                                                {
                                                  v269 = OUTLINED_FUNCTION_11_4();
                                                  result = hevcbridgeUEPullIfRequested(v269, v270, v271, 146, v272, v273, v274, v275, v283);
                                                  if (!result)
                                                  {
                                                    v276 = OUTLINED_FUNCTION_11_4();

                                                    return hevcbridgeUEPullIfRequested(v276, v277, v278, 147, v279, v280, v281, v282, a9);
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL hevcbridgeMoreRBSPData(void *__src)
{
  v17 = *MEMORY[0x1E69E9840];
  memcpy(__dst, __src, sizeof(__dst));
  if (!BYTE1(__dst[10]) && !hevcbridgeUPull(__dst, 1, &v15, v1, v2, v3, v4, v5))
  {
    while (!BYTE1(__dst[10]))
    {
      v14 = 0;
      v12 = hevcbridgeUPull(__dst, (8 - __dst[19]), &v14, v7, v8, v9, v10, v11);
      v13 = v14 != 0;
      if (v12)
      {
        v13 = 4;
      }

      if (v13)
      {
        return v13 != 4;
      }
    }
  }

  return 0;
}

uint64_t hevcbridgeParseHDR10PlusITUT35()
{
  OUTLINED_FUNCTION_18_4();
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v251 = 0;
  v252 = 0;
  v3 = *(v2 + 84);
  result = hevcbridgeUPullLong(v4, 8, &v251 + 1, v5, v6, v7, v8, v9);
  if ((v3 & 1) != 0 && !result)
  {
    v16 = OUTLINED_FUNCTION_53_0();
    result = v17(v16, 376, HIDWORD(v251), 0xFFFFFFFFLL);
  }

  if (!result)
  {
    if (HIDWORD(v251) != 4)
    {
      return 1;
    }

    v18 = *(v0 + 84);
    result = hevcbridgeUPullLong(v1, 8, &v251, v11, v12, v13, v14, v15);
    if ((v18 & 2) != 0 && !result)
    {
      v24 = OUTLINED_FUNCTION_53_0();
      result = v25(v24, 377, v251, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    if (v251 != 1)
    {
      return 1;
    }

    v26 = *(v0 + 84);
    result = hevcbridgeUPullLong(v1, 2, &v255, v19, v20, v21, v22, v23);
    if ((v26 & 4) != 0 && !result)
    {
      v27 = OUTLINED_FUNCTION_53_0();
      result = v28(v27, 378, v255, 0xFFFFFFFFLL);
    }

    if (!result)
    {
      v29 = v255;
      if (v255 < 2)
      {
LABEL_29:
        v97 = OUTLINED_FUNCTION_11_4();
        result = hevcbridgeUPullIfRequested(v97, v98, v99, 390, 27, v100, v101, v102, v236);
        if (!result)
        {
          v103 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullFlagAlways(v103, v104, v105, 391, v106, v107, v108, v109);
          if (!result)
          {
            if (!HIBYTE(v254))
            {
              goto LABEL_41;
            }

            v110 = OUTLINED_FUNCTION_11_4();
            result = hevcbridgeUPullAlways(v110, v111, v112, 392, v113, 5, v114, v115);
            if (result)
            {
              return result;
            }

            v116 = OUTLINED_FUNCTION_11_4();
            result = hevcbridgeUPullAlways(v116, v117, v118, 393, v119, 5, v120, v121);
            if (result)
            {
              return result;
            }

            v122 = HIDWORD(v252);
            if (HIDWORD(v252))
            {
              v123 = 0;
              v124 = v252;
              while (1)
              {
                v125 = v124;
                if (v124)
                {
                  break;
                }

LABEL_40:
                if (++v123 == v122)
                {
                  goto LABEL_41;
                }
              }

              while (1)
              {
                v126 = OUTLINED_FUNCTION_11_4();
                result = hevcbridgeUPullIfRequested(v126, v127, v128, 394, 4, v129, v130, v131, v247);
                if (result)
                {
                  break;
                }

                if (!--v125)
                {
                  goto LABEL_40;
                }
              }
            }

            else
            {
LABEL_41:
              if (v29)
              {
                v132 = 0;
LABEL_43:
                HIDWORD(v247) = 0;
                v133 = 3;
                while (1)
                {
                  v134 = OUTLINED_FUNCTION_11_4();
                  result = hevcbridgeUPullIfRequested(v134, v135, v136, 395, 17, v137, v138, v139, v247);
                  if (result)
                  {
                    break;
                  }

                  if (!--v133)
                  {
                    v140 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullIfRequested(v140, v141, v142, 396, 17, v143, v144, v145, v247);
                    if (result)
                    {
                      return result;
                    }

                    v146 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullAlways(v146, v147, v148, 397, v149, 4, v150, v151);
                    if (result)
                    {
                      return result;
                    }

                    v152 = HIDWORD(v248);
                    if (HIDWORD(v248))
                    {
                      do
                      {
                        v153 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullIfRequested(v153, v154, v155, 398, 7, v156, v157, v158, v248);
                        if (result)
                        {
                          return result;
                        }

                        v159 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullIfRequested(v159, v160, v161, 399, 17, v162, v163, v164, v249);
                        if (result)
                        {
                          return result;
                        }
                      }

                      while (--v152);
                    }

                    v165 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullIfRequested(v165, v166, v167, 400, 10, v168, v169, v170, v248);
                    if (result)
                    {
                      return result;
                    }

                    if (++v132 != v29)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_54;
                  }
                }
              }

              else
              {
LABEL_54:
                v171 = OUTLINED_FUNCTION_11_4();
                result = hevcbridgeUPullFlagAlways(v171, v172, v173, 401, v174, v175, v176, v177);
                if (!result)
                {
                  if (!v254 || (v247 = 0, v178 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullAlways(v178, v179, v180, 402, v181, 5, v182, v183), !result) && (v184 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullAlways(v184, v185, v186, 403, v187, 5, v188, v189), !result))
                  {
                    if (v29)
                    {
                      v190 = 0;
                      while (1)
                      {
                        v191 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullFlagAlways(v191, v192, v193, 405, v194, v195, v196, v197);
                        if (result)
                        {
                          break;
                        }

                        if (HIBYTE(v253))
                        {
                          v198 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullIfRequested(v198, v199, v200, 406, 12, v201, v202, v203, v247);
                          if (result)
                          {
                            return result;
                          }

                          v204 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullIfRequested(v204, v205, v206, 407, 12, v207, v208, v209, v250);
                          if (result)
                          {
                            return result;
                          }

                          v210 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullAlways(v210, v211, v212, 408, v213, 4, v214, v215);
                          if (result)
                          {
                            return result;
                          }

                          v216 = HIDWORD(v247);
                          if (HIDWORD(v247))
                          {
                            do
                            {
                              v217 = OUTLINED_FUNCTION_11_4();
                              result = hevcbridgeUPullIfRequested(v217, v218, v219, 409, 10, v220, v221, v222, v247);
                              if (result)
                              {
                                return result;
                              }
                            }

                            while (--v216);
                          }
                        }

                        v223 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullFlagAlways(v223, v224, v225, 410, v226, v227, v228, v229);
                        if (!result)
                        {
                          if (!v253 || (v230 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v230, v231, v232, 411, 6, v233, v234, v235, v247), !result))
                          {
                            result = 0;
                            if (++v190 != v29)
                            {
                              continue;
                            }
                          }
                        }

                        return result;
                      }
                    }

                    else
                    {
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v30 = v255 - 1;
        while (1)
        {
          v31 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v31, v32, v33, 379, 16, v34, v35, v36, v236);
          if (result)
          {
            break;
          }

          v37 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v37, v38, v39, 380, 16, v40, v41, v42, v237);
          if (result)
          {
            break;
          }

          v43 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v43, v44, v45, 381, 16, v46, v47, v48, v238);
          if (result)
          {
            break;
          }

          v49 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v49, v50, v51, 382, 16, v52, v53, v54, v239);
          if (result)
          {
            break;
          }

          v55 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v55, v56, v57, 383, 16, v58, v59, v60, v240);
          if (result)
          {
            break;
          }

          v61 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v61, v62, v63, 384, 16, v64, v65, v66, v241);
          if (result)
          {
            break;
          }

          v67 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v67, v68, v69, 385, 8, v70, v71, v72, v242);
          if (result)
          {
            break;
          }

          v73 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v73, v74, v75, 386, 16, v76, v77, v78, v243);
          if (result)
          {
            break;
          }

          v79 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v79, v80, v81, 387, 16, v82, v83, v84, v244);
          if (result)
          {
            break;
          }

          v85 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v85, v86, v87, 388, 16, v88, v89, v90, v245);
          if (result)
          {
            break;
          }

          v91 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v91, v92, v93, 389, 1, v94, v95, v96, v246);
          if (result)
          {
            break;
          }

          if (!--v30)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hevcbridgeParseVDRRPUDataPayload(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, unsigned int a6, __int16 a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v151) = a4;
  v18 = malloc_type_calloc(1uLL, 0x90uLL, 0x1000040265AC83CuLL);
  v25 = v18;
  if (!v18)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_24();
    v126 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v144, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x187C, v145, v146, v147, v149);
LABEL_199:
    v38 = v126;
    goto LABEL_200;
  }

  HIDWORD(v151) = 0;
  v164 = 0;
  v26 = a11;
  v152 = a12 + 361;
  v168 = v18 + 48;
  v150 = a12 + 24984;
  v172 = a6;
  if (a5)
  {
    v27 = 32;
  }

  else
  {
    v27 = a6;
  }

  v177 = v27;
  v171 = a12 + 408;
  v153 = a8;
  if (a8)
  {
    v28 = (a7 & 0x700) == 0;
  }

  else
  {
    v28 = 0;
  }

  if (a9)
  {
    v29 = (a7 & 0x700) == 0;
  }

  else
  {
    v29 = 0;
  }

  v156 = v29;
  v157 = v28;
  v155 = a7 & 0x700 | a10;
  v165 = v18;
LABEL_12:
  v30 = 0;
LABEL_13:
  v31 = 0;
  v32 = 0;
  v179 = 0;
  v166 = v30;
  v167 = v164++;
  v33 = a12 + 420;
  v34 = (a12 + 448);
  while (2)
  {
    if (*(v26 + 4 * v32) > 0xFu)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_24();
      v142 = 4294954584;
      v143 = 6050;
LABEL_191:
      v90 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v138, v142, "<<<< HEVCBridge >>>>", v143, v139, v140, v141, v149);
LABEL_192:
      v38 = v90;
      if (!v90)
      {
        goto LABEL_179;
      }

      goto LABEL_200;
    }

    v176 = 0;
    v158 = v171 + 780 * v32;
    v160 = v33;
    v161 = v171 + 2700 * v32;
    v169 = a12 + 316 - v32 + 16 * v32;
    v175 = v33;
    v159 = v34;
    v173 = v34;
    v174 = v32;
LABEL_16:
    v35 = v31;
    v178 = 0;
    v36 = *(a2 + 100);
    v37 = hevcbridgeUEPullLong(a1, &v178 + 1, v19, v20, v21, v22, v23, v24);
    v38 = v37;
    if ((v36 & 1) != 0 && !v37)
    {
      v39 = OUTLINED_FUNCTION_40_0();
      v38 = v40(v39, 496, HIDWORD(v178), 0xFFFFFFFFLL);
    }

    v41 = v174;
    if (v38)
    {
      goto LABEL_178;
    }

    v42 = HIDWORD(v178);
    if (HIDWORD(v178) >= 0x10)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_24();
      v142 = 4294954584;
      v143 = 6062;
      goto LABEL_191;
    }

    if (a12)
    {
      *(v169 + v176) = BYTE4(v178);
    }

    switch(v42)
    {
      case 0:
        OUTLINED_FUNCTION_88();
        if (v45)
        {
          v90 = OUTLINED_FUNCTION_74(v43, v44, v19, v20, v21, v22, v23, v24);
          if (v90)
          {
            goto LABEL_192;
          }

          v35 = v179;
          if (a12)
          {
            OUTLINED_FUNCTION_76(v90, v91, v19, v20, v21, v22, v23, v24, v149, v150, v151, v152);
          }

          if (!v35)
          {
            goto LABEL_26;
          }

          if (*v170 < 2u)
          {
LABEL_140:
            v65 = v168[16 * v174 + v176];
          }

          else
          {
            v92 = *(a2 + 100);
            v93 = hevcbridgeUEPullLong(a1, &v178, v19, v20, v21, v22, v23, v24);
            v38 = v93;
            if ((v92 & 4) != 0)
            {
              v41 = v174;
              if (!v93)
              {
                v94 = OUTLINED_FUNCTION_40_0();
                v38 = v95(v94, 498, v178, 0xFFFFFFFFLL);
              }

              if (v38)
              {
                goto LABEL_178;
              }
            }

            else
            {
              v41 = v174;
              if (v93)
              {
                goto LABEL_178;
              }
            }

            v65 = v167 - v178 + 1;
            if (a12)
            {
              *(v150 - v41 + 16 * v41 + v176) = v178;
            }
          }

LABEL_59:
          v38 = 0;
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_178;
          }

          v31 = v35;
          if (v65 >= v167)
          {
            goto LABEL_178;
          }

LABEL_107:
          v173 += 45;
          v175 += 52;
          if (++v176 >= (*(v26 + 4 * v41) + 1))
          {
            v34 = v159 + 675;
            v33 = v160 + 780;
            v32 = v41 + 1;
            if (v41 == 2)
            {
              goto LABEL_179;
            }

            continue;
          }

          goto LABEL_16;
        }

        v179 = 0;
LABEL_26:
        v46 = *(v26 + 4 * v174);
        LODWORD(v181[1]) = 0;
        BYTE4(v180) = 0;
        v47 = *(a2 + 52);
        v48 = hevcbridgeUEPullLong(a1, &v181[1], v19, v20, v21, v22, v23, v24);
        v38 = v48;
        if ((v47 & 1) != 0 && !v48)
        {
          v49 = OUTLINED_FUNCTION_40_0();
          v38 = v50(v49, 499, LODWORD(v181[1]), 0xFFFFFFFFLL);
        }

        LOBYTE(v41) = v174;
        if (v38)
        {
          goto LABEL_178;
        }

        v51 = v181[1];
        if (a12)
        {
          *(v171 + 780 * v174 + 52 * v176) = v181[1];
        }

        if (!v51)
        {
          v90 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 104) >> 1) & 1, 500, &v180 + 4, v22, v23, v24);
          if (!v90)
          {
            v102 = BYTE4(v180);
            if (a12)
            {
              OUTLINED_FUNCTION_30_3();
              *(v103 + 1) = v102;
            }

            if (v102)
            {
              v181[0] = 0;
              if (!a5)
              {
                v108 = *(a2 + 52);
                v90 = hevcbridgeUEPullLong(a1, v181, v19, v20, v21, v22, v23, v24);
                v38 = v90;
                if ((v108 & 4) != 0)
                {
                  v41 = v174;
                  if (!v90)
                  {
                    v109 = OUTLINED_FUNCTION_37_0();
                    v90 = v110(v109, 501);
                    v38 = v90;
                  }

                  if (v38)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v41 = v174;
                  if (v90)
                  {
                    goto LABEL_55;
                  }
                }

                if (a12)
                {
                  *(v158 + 52 * v176 + 4) = v181[0];
                }
              }

              v104 = OUTLINED_FUNCTION_103(v90, v101, v19, v20, v21, v22, v23, v24);
              v38 = v104;
              if ((v41 & 8) != 0)
              {
                v41 = v174;
                if (!v104)
                {
                  v106 = OUTLINED_FUNCTION_40_0();
                  v104 = v107(v106, 502, HIDWORD(v181[0]), 0xFFFFFFFFLL);
                  v38 = v104;
                }

                if (v38)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v41 = v174;
                if (v104)
                {
                  goto LABEL_55;
                }
              }

              if (a12)
              {
                *(v171 + 780 * v41 + 52 * v176 + 8) = HIDWORD(v181[0]);
              }

              if (v176 != v46)
              {
                v38 = 0;
                goto LABEL_55;
              }

              if (!a5)
              {
                v117 = *(a2 + 52);
                v104 = hevcbridgeUEPullLong(a1, v181, v19, v20, v21, v22, v23, v24);
                v38 = v104;
                if ((v117 & 4) != 0 && !v104)
                {
                  v118 = OUTLINED_FUNCTION_37_0();
                  v104 = v119(v118, 501);
                  v38 = v104;
                }

                v41 = v174;
                if (v38)
                {
                  goto LABEL_55;
                }

                if (a12)
                {
                  OUTLINED_FUNCTION_30_3();
                  *(v121 + 4) = v120;
                }
              }

              v111 = OUTLINED_FUNCTION_103(v104, v105, v19, v20, v21, v22, v23, v24);
              v38 = v111;
              if ((v41 & 8) != 0 && !v111)
              {
                v112 = OUTLINED_FUNCTION_40_0();
                v38 = v113(v112, 502, HIDWORD(v181[0]), 0xFFFFFFFFLL);
              }

              v41 = v174;
              if (a12 && !v38)
              {
                OUTLINED_FUNCTION_30_3();
                *(v115 + 8) = v114;
              }

              goto LABEL_55;
            }

            goto LABEL_33;
          }

          goto LABEL_192;
        }

LABEL_33:
        v52 = 0;
        v53 = 0;
        v181[0] = 0;
        v54 = (v51 + 2);
        while (1)
        {
          v55 = *(a2 + 52);
          if (a5)
          {
            v56 = hevcbridgeUPullLong(a1, 32, v181, v20, v21, v22, v23, v24);
            v38 = v56;
            if ((v55 & 0x20) != 0 && !v56)
            {
              v57 = OUTLINED_FUNCTION_37_0();
              v38 = v58(v57, 504);
            }

            if (v38)
            {
              goto LABEL_54;
            }

            if (!a12)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

          if ((v55 & 0x10) != 0)
          {
            break;
          }

LABEL_45:
          v60 = hevcbridgeUPullLong(a1, v172, v181, v20, v21, v22, v23, v24);
          v38 = v60;
          if ((v55 & 0x20) != 0 && !v60)
          {
            v61 = OUTLINED_FUNCTION_37_0();
            v38 = v62(v61, 504);
          }

          if (v38)
          {
            goto LABEL_54;
          }

          if (!a12)
          {
            goto LABEL_52;
          }

          *(v175 + 4 * v53) = v52;
LABEL_51:
          *(v171 + 780 * v174 + 52 * v176 + 32 + 4 * v53) = v181[0];
LABEL_52:
          if (v54 == ++v53)
          {
            v38 = 0;
            goto LABEL_54;
          }
        }

        v59 = hevcbridgeSEPullLong(a1, v181 + 1, v19, v20, v21, v22, v23, v24);
        if (!v59)
        {
          v52 = HIDWORD(v181[0]);
          v59 = (a2[3])(*a2, 503, HIDWORD(v181[0]), 0xFFFFFFFFLL);
          if (!v59)
          {
            v55 = *(a2 + 52);
            goto LABEL_45;
          }
        }

        v38 = v59;
LABEL_54:
        v26 = a11;
        v25 = v165;
        v41 = v174;
LABEL_55:
        if (!v38)
        {
          OUTLINED_FUNCTION_86();
          if (!v64)
          {
LABEL_105:
            *v63 = v167;
          }

          goto LABEL_106;
        }

LABEL_178:
        if (!v38)
        {
LABEL_179:
          if (v157)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_24();
            v126 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x1836, v123, v124, v125, v149);
            if (v126)
            {
              goto LABEL_199;
            }
          }

          if (v156)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_24();
            v126 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x1842, v128, v129, v130, v149);
            if (v126)
            {
              goto LABEL_199;
            }
          }

          v131 = v166;
          if (!v155)
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v126 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x184F, v162, v133, v134, v149);
            if (v126)
            {
              goto LABEL_199;
            }

            v131 = v166;
            if (v153)
            {
              v135 = fig_log_get_emitter("com.apple.coremedia", "");
              v126 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v135, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x185B, v162, v136, v137, v149);
              if (v126)
              {
                goto LABEL_199;
              }
            }
          }

          v30 = v131 + 1;
          if (v30 > a3)
          {
            if (++HIDWORD(v151) > v151)
            {
              v38 = 0;
              goto LABEL_200;
            }

            goto LABEL_12;
          }

          goto LABEL_13;
        }

LABEL_200:
        free(v25);
        return v38;
      case 1:
        OUTLINED_FUNCTION_88();
        if (!v69)
        {
          v179 = 0;
LABEL_64:
          memset(v181, 0, 12);
          v70 = *(a2 + 52);
          v71 = hevcbridgeUPullLong(a1, 2, &v181[1], v20, v21, v22, v23, v24);
          v38 = v71;
          if ((v70 & 0x40) != 0 && !v71)
          {
            v72 = OUTLINED_FUNCTION_40_0();
            v38 = v73(v72, 505, LODWORD(v181[1]), 0xFFFFFFFFLL);
          }

          if (v38)
          {
            goto LABEL_177;
          }

          if (a12)
          {
            *(v171 + 2700 * v174 + 180 * v176) = v181[1];
          }

          if (!a5)
          {
            if ((a2[13] & 0x80) != 0)
            {
              v75 = hevcbridgeSEPullLong(a1, v181 + 1, v19, v20, v21, v22, v23, v24);
              if (v75 || (v74 = HIDWORD(v181[0]), v75 = (a2[3])(*a2, 506, HIDWORD(v181[0]), 0xFFFFFFFFLL), v75))
              {
LABEL_176:
                v38 = v75;
LABEL_177:
                v26 = a11;
                v25 = v165;
                goto LABEL_178;
              }
            }

            else
            {
              v74 = 0;
            }

            if (a12)
            {
              *(v161 + 180 * v176 + 4) = v74;
            }
          }

          v76 = *(a2 + 52);
          v77 = hevcbridgeUPullLong(a1, v177, v181, v20, v21, v22, v23, v24);
          v38 = v77;
          if ((v76 & 0x100) != 0 && !v77)
          {
            v78 = OUTLINED_FUNCTION_37_0();
            v38 = v79(v78, 507);
          }

          if (v38)
          {
            goto LABEL_177;
          }

          if (a12)
          {
            *(v171 + 2700 * v174 + 180 * v176 + 8) = v181[0];
          }

          if (LODWORD(v181[1]) != -1)
          {
            v163 = (LODWORD(v181[1]) + 2);
            v80 = v173;
            v81 = 1;
            do
            {
              v82 = 7;
              v83 = v80;
              do
              {
                v180 = 0;
                if (!a5)
                {
                  if ((a2[13] & 0x200) != 0)
                  {
                    v75 = hevcbridgeSEPullLong(a1, &v180 + 1, v19, v20, v21, v22, v23, v24);
                    if (v75)
                    {
                      goto LABEL_176;
                    }

                    v84 = HIDWORD(v180);
                    v75 = (a2[3])(*a2, 508, HIDWORD(v180), 0xFFFFFFFFLL);
                    if (v75)
                    {
                      goto LABEL_176;
                    }
                  }

                  else
                  {
                    v84 = 0;
                  }

                  if (a12)
                  {
                    *v83 = v84;
                  }
                }

                v85 = *(a2 + 52);
                v86 = hevcbridgeUPullLong(a1, v177, &v180, v20, v21, v22, v23, v24);
                v38 = v86;
                if ((v85 & 0x400) != 0 && !v86)
                {
                  v87 = OUTLINED_FUNCTION_40_0();
                  v38 = v88(v87, 509, v180, 0xFFFFFFFFLL);
                }

                if (!a12 || v38)
                {
                  if (v38)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v83[21] = v180;
                }

                ++v83;
                --v82;
              }

              while (v82);
              ++v81;
              v80 += 7;
            }

            while (v81 != v163);
          }

          OUTLINED_FUNCTION_86();
          v26 = a11;
          v25 = v165;
          if (!v89)
          {
            v41 = v174;
            goto LABEL_105;
          }

          v41 = v174;
LABEL_106:
          v31 = 0;
          ++*v170;
          goto LABEL_107;
        }

        v90 = OUTLINED_FUNCTION_74(v66, v67, v68, v20, v21, v22, v23, v24);
        if (v90)
        {
          goto LABEL_192;
        }

        v35 = v179;
        if (a12)
        {
          OUTLINED_FUNCTION_76(v90, v96, v19, v20, v21, v22, v23, v24, v149, v150, v151, v152);
        }

        if (!v35)
        {
          goto LABEL_64;
        }

        if (*v170 < 2u)
        {
          goto LABEL_140;
        }

        v97 = *(a2 + 100);
        v98 = hevcbridgeUEPullLong(a1, &v178, v19, v20, v21, v22, v23, v24);
        v38 = v98;
        if ((v97 & 4) != 0)
        {
          v41 = v174;
          if (!v98)
          {
            v99 = OUTLINED_FUNCTION_40_0();
            v38 = v100(v99, 498, v178, 0xFFFFFFFFLL);
          }

          if (v38)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v41 = v174;
          if (v98)
          {
            goto LABEL_178;
          }
        }

        v116 = v178;
        if (a12)
        {
          *(v150 - v41 + 16 * v41 + v176) = v178;
        }

        v65 = v164 - v116;
        goto LABEL_59;
      case 2:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_24();
        v142 = 4294954579;
        v143 = 6127;
        goto LABEL_191;
      case 3:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_24();
        v142 = 4294954579;
        v143 = 6153;
        goto LABEL_191;
      default:
        v65 = 0;
        v31 = 0;
        if (v35)
        {
          goto LABEL_59;
        }

        goto LABEL_107;
    }
  }
}

uint64_t hevcbridgeParseVdrDmDataPayload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v10 = a3;
  v267 = 0;
  v13 = *(a2 + 92);
  result = hevcbridgeUEPullLong(a1, &v267, a3, a4, a5, a6, a7, a8);
  if ((v13 & 1) != 0 && !result)
  {
    v21 = OUTLINED_FUNCTION_95();
    result = v22(v21, 460, v267, 0xFFFFFFFFLL);
  }

  if (!result)
  {
    v266 = 0;
    v23 = *(a2 + 92);
    result = hevcbridgeUEPullLong(a1, &v266, v15, v16, v17, v18, v19, v20);
    if ((v23 & 2) != 0 && !result)
    {
      v30 = OUTLINED_FUNCTION_95();
      result = v31(v30, 461, v266, 0xFFFFFFFFLL);
    }

    if (!result)
    {
      v265 = 0;
      v32 = *(a2 + 92);
      result = hevcbridgeUEPullLong(a1, &v265, v24, v25, v26, v27, v28, v29);
      if ((v32 & 4) != 0 && !result)
      {
        v39 = OUTLINED_FUNCTION_95();
        result = v40(v39, 462, v265, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        if (!v10)
        {
          v54 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v54, v55, v56, 463, v57, 16, v58, v59);
          if (result)
          {
            return result;
          }

          v60 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v60, v61, v62, 464, v63, 16, v64, v65);
          if (result)
          {
            return result;
          }

          v66 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v66, v67, v68, 465, v69, 16, v70, v71);
          if (result)
          {
            return result;
          }

          v72 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v72, v73, v74, 466, v75, 16, v76, v77);
          if (result)
          {
            return result;
          }

          v78 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v78, v79, v80, 467, v81, 16, v82, v83);
          if (result)
          {
            return result;
          }

          v84 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v84, v85, v86, 468, v87, 16, v88, v89);
          if (result)
          {
            return result;
          }

          v90 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v90, v91, v92, 469, v93, 16, v94, v95);
          if (result)
          {
            return result;
          }

          v96 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v96, v97, v98, 470, v99, 16, v100, v101);
          if (result)
          {
            return result;
          }

          v102 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v102, v103, v104, 471, v105, 16, v106, v107);
          if (result)
          {
            return result;
          }

          v108 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v108, v109, v110, 472, v111, 32, v112, v113);
          if (result)
          {
            return result;
          }

          v114 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v114, v115, v116, 473, v117, 32, v118, v119);
          if (result)
          {
            return result;
          }

          v120 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v120, v121, v122, 474, v123, 32, v124, v125);
          if (result)
          {
            return result;
          }

          v126 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v126, v127, v128, 475, v129, 16, v130, v131);
          if (result)
          {
            return result;
          }

          v132 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v132, v133, v134, 476, v135, 16, v136, v137);
          if (result)
          {
            return result;
          }

          v138 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v138, v139, v140, 477, v141, 16, v142, v143);
          if (result)
          {
            return result;
          }

          v144 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v144, v145, v146, 478, v147, 16, v148, v149);
          if (result)
          {
            return result;
          }

          v150 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v150, v151, v152, 479, v153, 16, v154, v155);
          if (result)
          {
            return result;
          }

          v156 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v156, v157, v158, 480, v159, 16, v160, v161);
          if (result)
          {
            return result;
          }

          v162 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v162, v163, v164, 481, v165, 16, v166, v167);
          if (result)
          {
            return result;
          }

          v168 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v168, v169, v170, 482, v171, 16, v172, v173);
          if (result)
          {
            return result;
          }

          v174 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v174, v175, v176, 483, v177, 16, v178, v179);
          if (result)
          {
            return result;
          }

          v180 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v180, v181, v182, 484, v183, 16, v184, v185);
          if (result)
          {
            return result;
          }

          v186 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v186, v187, v188, 485, v189, 16, v190, v191);
          if (result)
          {
            return result;
          }

          v192 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v192, v193, v194, 486, v195, 16, v196, v197);
          if (result)
          {
            return result;
          }

          v198 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v198, v199, v200, 487, v201, 32, v202, v203);
          if (result)
          {
            return result;
          }

          v204 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v204, v205, v206, 488, v207, 5, v208, v209);
          if (result)
          {
            return result;
          }

          v210 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v210, v211, v212, 489, v213, 2, v214, v215);
          if (result)
          {
            return result;
          }

          v216 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v216, v217, v218, 490, v219, 2, v220, v221);
          if (result)
          {
            return result;
          }

          v222 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v222, v223, v224, 491, v225, 2, v226, v227);
          if (result)
          {
            return result;
          }

          v228 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v228, v229, v230, 492, v231, 12, v232, v233);
          if (result)
          {
            return result;
          }

          v234 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v234, v235, v236, 493, v237, 12, v238, v239);
          if (result)
          {
            return result;
          }

          v240 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v240, v241, v242, 494, v243, 10, v244, v245);
          if (result)
          {
            return result;
          }

          if (a4)
          {
            *(a4 + 29048) = 0;
            *(a4 + 29050) = 0;
            *(a4 + 29052) = 0;
            *(a4 + 29054) = 0;
            *(a4 + 29056) = 0;
            *(a4 + 29058) = 0;
            *(a4 + 29060) = 0;
            *(a4 + 29062) = 0;
            *(a4 + 29064) = 0;
            *(a4 + 29068) = 0;
            *(a4 + 29072) = 0;
            *(a4 + 29076) = 0;
            *(a4 + 29080) = 0;
            *(a4 + 29082) = 0;
            *(a4 + 29084) = 0;
            *(a4 + 29086) = 0;
            *(a4 + 29088) = 0;
            *(a4 + 29090) = 0;
            *(a4 + 29092) = 0;
            *(a4 + 29094) = 0;
            *(a4 + 29096) = 0;
            *(a4 + 29098) = 0;
            *(a4 + 29100) = 0;
            *(a4 + 29102) = 0;
            *(a4 + 29104) = 0;
            *(a4 + 29108) = 0;
            *(a4 + 29109) = 0;
            *(a4 + 29110) = 0;
            *(a4 + 29111) = 0;
            *(a4 + 29112) = 0;
            *(a4 + 29114) = 0;
            *(a4 + 29116) = 0;
          }
        }

        v41 = *(a2 + 92);
        result = hevcbridgeUEPullLong(a1, &v267 + 1, v33, v34, v35, v36, v37, v38);
        if ((v41 & 0x800000000) != 0 && !result)
        {
          v42 = OUTLINED_FUNCTION_95();
          result = v43(v42, 495, HIDWORD(v267), 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v44 = HIDWORD(v267);
          if (HIDWORD(v267) >= 0xFF)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();

            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v260, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1B11, v261, v262, v263, a9);
          }

          else
          {
            if (a4)
            {
              *(a4 + 29118) = BYTE4(v267);
              v45 = v266;
              *(a4 + 29044) = v267;
              *(a4 + 29045) = v45;
              *(a4 + 29046) = v265;
            }

            if (v44)
            {
              while (*(a1 + 76))
              {
                v46 = OUTLINED_FUNCTION_91();
                result = hevcbridgeUPullLong(v46, v47, v48, v49, v50, v51, v52, v53);
                if (result)
                {
                  return result;
                }
              }

              v246 = v44;
              while (1)
              {
                v247 = OUTLINED_FUNCTION_22_1();
                result = hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks(v247, v248, 1, a4, v249, v250, v251, v252, v264);
                if (result)
                {
                  break;
                }

                if (!--v246)
                {
                  goto LABEL_62;
                }
              }
            }

            else
            {
LABEL_62:
              if (*(a1 + 8) + *a1 - *(a1 + 56) < 6uLL)
              {
                return 0;
              }

              v253 = OUTLINED_FUNCTION_22_1();
              result = hevcbridgeUEPullAlways(v253, v254, v255, 591, v256, v257, v258, v259);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t hevcBridgeAlignToByte(size_t result)
{
  if (*(result + 76))
  {
    v1 = result;
    do
    {
      OUTLINED_FUNCTION_27_5();
      result = hevcbridgeUPush(v2, v3, v4, v5, v6, v7, v8, v9, v10);
    }

    while (!result && *(v1 + 76));
  }

  return result;
}

size_t hevcbridgeParseNALUnit_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1CC1, v10, v11, v12, a9);
}

size_t hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x16D6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x16E0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x16D2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUEPush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x421, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetAtIndex_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v1, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2881, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x28A0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x289D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x28A6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28C8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28C7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28BE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28BD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28B8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28AD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x28A3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2892, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2880, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x287F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x292C, v3, v4, v5, v6);

  CFRelease(v1);
}

size_t FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2925, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AB6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2AD3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2ADA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2ADB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2ADF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2AE0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2AE6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2AD6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_9()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2ABC, v3, v4, v5, v6);

  CFRelease(v1);
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2AB9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AB5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AB2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AAF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2A9F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2A3F, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A5C, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A5B, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A53, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A52, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A4D, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A44, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2A3E, v10, v11, v12, a9);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2A2F, v10, v11, v12, a9);
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29BD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29D6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29D2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29C8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29B8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29AE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2957, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2954, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x295D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x297B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x297A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2971, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2970, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x296B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2962, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x295A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2949, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B1E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B2E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B32, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B4D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B51, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B52, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B56, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B57, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B67, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B5D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_11()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B38, v3, v4, v5, v6);

  CFRelease(v1);
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B35, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B31, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B2D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B2A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B27, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B1D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B1C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2BA1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B9E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B98, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B95, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2BC0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v1, v3, v4, v5, v7);
  *v0 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", 0x2BD5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", 0x2C16, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2BBF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2BBE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateAlphaInfoSEI_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D15, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D66, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D6B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D6A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D7C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D7B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D80, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DA1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DA0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D97, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D96, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D91, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D86, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DF1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DF0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D7F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D76, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2D70, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D5D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C51, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C50, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C4D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C7B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C4C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2C47, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2C41, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E42, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E61, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E60, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E58, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E57, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E52, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E47, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2E3E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E3B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2E38, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2E21, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaDataBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x3001, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMultiviewMuxedAlphaDataBuffer_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x301F, v10, v11, v12, a9);
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30C1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x30D9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30CD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30CC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30CB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30C2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30C0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x37FF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3804, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3801, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3807, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x37FD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x3859, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x383C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3835, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3833, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3831, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3830, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPullLong_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x32F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPullLong_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x333, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPullLong_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x331, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVideoParameterSet_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xDFE, v10, v11, v12, a9);
}

size_t hevcbridgeParseVideoParameterSet_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xDC7, v10, v11, v12, a9);
}

size_t hevcbridgeParsePictureParameterSet_cold_1(const CMBlockBufferCustomBlockSource *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", a1, v11, v12, v13, a9);
}

size_t hevcbridgeParsePictureParameterSet_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x11CD, v10, v11, v12, a9);
}

size_t hevcbridgeParsePictureParameterSet_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x116B, v10, v11, v12, a9);
}

size_t hevcbridgeParsePictureParameterSet_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1169, v10, v11, v12, a9);
}

uint64_t hevcbridgeParsePictureParameterSet_cold_5(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_22_4();
  do
  {
    result = hevcbridgeUPullFlagAlways(v4, v3, (*(v3 + 52) >> 35) & 1, 262, &v10, v6, v7, v8);
    *a3 = result;
    if (result)
    {
      break;
    }

    if ((v4[6] + 1) >= v4[1] + *v4)
    {
      break;
    }

    result = hevcbridgeMoreRBSPData(v4);
  }

  while (result);
  return result;
}

size_t hevcbridgeParsePictureParameterSet_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x11F3, v10, v11, v12, a9);
}

size_t hevcbridgeParseSEIRBSP_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x1463, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x148A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1487, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1486, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x14A0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x149C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1447, v1, v2, v3, v5);
}

size_t hevcbridgeParseSEIRBSP_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1482, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x14E7, v1, v2, v3, v5);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x124F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSliceSegmentLayer_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12BC, v10, v11, v12, a9);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12C8, v10, v11, v12, a9);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12C7, v10, v11, v12, a9);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12C6, v10, v11, v12, a9);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1317, v10, v11, v12, a9);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1314, v10, v11, v12, a9);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_8()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x13E1, v1, v2, v3, v5);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x13E4, v1, v2, v3, v5);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_10()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x133D, v1, v2, v3, v5);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1258, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPull_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2FD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPull_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x301, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPull_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2FF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUSkip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x30C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUSkip_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x30E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseProfileTierLevel_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xA4E, v10, v11, v12, a9);
}

size_t hevcbridgeUESkip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x366, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUESkip_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x36E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUESkip_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x375, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseHRDParameters_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xAF9, v10, v11, v12, a9);
}

size_t hevcbridgeUEPullLong_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x349, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUEPullLong_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x351, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeUEPullLong_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x358, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSTRefPicSet_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEB7, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xE7A, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xE76, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xE6E, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEC8, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xED5, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEC0, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEBF, v10, v11, v12, a9);
}

size_t hevcbridgeParseSTRefPicSet_cold_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEBE, v10, v11, v12, a9);
}

size_t hevcbridgeSESkip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3B9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParsePictureParameterSetMultilayerExtension_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x10CF, v10, v11, v12, a9);
}

size_t hevcbridgeParsePictureParameterSetMultilayerExtension_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x10AF, v10, v11, v12, a9);
}

size_t hevcbridgeSEPullLong_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3C6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeSPullAlways_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3A1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1A87, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1A85, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1A84, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeSEPush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x444, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeIPush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x474, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeIPush_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x479, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t hevcbridgeIPush_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x47A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = 0;
  HIBYTE(v37) = 0;
  FigMemoryOriginBeginTransactionMakingRegistrationsContingentOnIt(a1, a2, a3, a4, a5, a6, a7, a8, v37);
  if (*(a1 + 64))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v31 = 4294947867;
    v32 = 508;
LABEL_26:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v31, "<< FigOSEventLink >>", v32, v28, v29, v30, v37);
LABEL_27:
    v23 = DataPointer;
LABEL_28:
    v25 = 0;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_4_17();
  DataPointer = CMBlockBufferGetDataPointer(v11, v12, v13, v14, v15);
  if (DataPointer)
  {
    goto LABEL_27;
  }

  DataPointer = (*(a2 + 16))(a2, *(*(a1 + 16) + 40));
  if (DataPointer)
  {
    goto LABEL_27;
  }

  if (!FigAtomicCompareAndSwap32(0, 1u, (v38 + 12)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v31 = 4294947872;
    v32 = 516;
    goto LABEL_26;
  }

  v17 = v38;
  *v38 = 1;
  *(v17 + 16) = 0;
  os_unfair_lock_lock((a1 + 32));
  *(v38 + 4) = *(a1 + 36);
  *(a1 + 36) = 0x500000000;
  os_unfair_lock_unlock((a1 + 32));
  v41 = 0uLL;
  v42 = 0;
  v40 = 0;
  if (*(a1 + 48) && *(a1 + 56))
  {
    v39 = 0;
    v42 = FigAtomicIncrement64(&v39);
    v41 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    *(v38 + 16) = v42;
    FigThreadRegisterAbortAction(figOSEventLinkRemoteAbortAction, &v41, &v40, v18, v19, v20, v21, v22, v37);
  }

  LODWORD(v23) = os_eventlink_signal_and_wait();
  if (v40)
  {
    FigThreadUnregisterAbortAction(v40);
  }

  if (v23 == 89)
  {
    v23 = 4294947868;
  }

  else
  {
    v23 = v23;
  }

  if (v23)
  {
    goto LABEL_28;
  }

  v24 = figOSEventLinkResolveMessageStatus((v38 + 12), &v37 + 7);
  v25 = HIBYTE(v37);
  if (v24)
  {
    v23 = v24;
    goto LABEL_21;
  }

  if (!HIBYTE(v37))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v31 = 4294947872;
    v32 = 533;
    goto LABEL_26;
  }

  if (FigAtomicCompareAndSwap32(1, 2u, (v38 + 28)))
  {
    v23 = (*(a3 + 16))(a3, *(*(a1 + 16) + 48));
    if (!v23)
    {
      v23 = *(v38 + 24);
    }

    *(v38 + 12) = 0;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x217, v34, v35, v36, v37);
  }

  v25 = 1;
LABEL_21:
  FigMemoryOriginCompleteTransaction(v25 == 0);
  return v23;
}

size_t FigOSEventLinkRemoteInvalidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (!*(a1 + 64))
    {
      *(a1 + 64) = 1;
      os_eventlink_cancel();
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x22F, v11, v12, v13, a9);
  }
}

uint64_t FigOSEventLinkServerMain(void *a1)
{
  if (!os_eventlink_associate() && !os_eventlink_wait())
  {
    OUTLINED_FUNCTION_4_17();
    if (!CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6))
    {
      v7 = 0;
      v8 = *MEMORY[0x1E695E480];
      do
      {
        while (1)
        {
          if (v7)
          {
            goto LABEL_50;
          }

          if (!a1[8])
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, 0xFFFFB41FuLL, "<< FigOSEventLink >>", 0x354, v56, v57, v58, v60);
            goto LABEL_50;
          }

          if (*v61 == 1)
          {
            break;
          }

          if (*v61)
          {
            v7 = 0;
          }

          else
          {
            *(v61 + 24) = 0;
            v9 = os_eventlink_signal();
            v7 = 1;
            if (v9)
            {
              goto LABEL_50;
            }
          }
        }

        v10 = FigAtomicCompareAndSwap32(1, 2u, (v61 + 12));
        if (v10)
        {
          v17 = *(v61 + 4);
          if (v17 > 0)
          {
            goto LABEL_13;
          }

          if (*(v61 + 8) == 5)
          {
            goto LABEL_17;
          }

          if (v17)
          {
LABEL_13:
            SInt32 = FigCFNumberCreateSInt32(v8, v17);
            v19 = &kFigThreadPropertyKey_MachThreadPriority;
          }

          else
          {
            SInt32 = FigCFNumberCreateUInt32(v8, *(v61 + 8));
            v19 = &kFigThreadPropertyKey_Priority;
          }

          v20 = *v19;
          Current = FigThreadGetCurrent();
          v10 = FigThreadSetProperty(Current, v20, SInt32, v22, v23, v24, v25, v26, v60);
          if (SInt32)
          {
            CFRelease(SInt32);
          }

          *(v61 + 4) = 0x500000000;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x2BA, v40, v41, v42, v60);
        }

LABEL_17:
        FigMemoryOriginBeginTransactionMakingRegistrationsContingentOnIt(v10, v17, v11, v12, v13, v14, v15, v16, v60);
        if (!FigAtomicCompareAndSwap32(0, 1u, (v61 + 28)))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x2D9, v44, v45, v46, v60);
        }

        if (*(v61 + 12) == 2)
        {
          v27 = *(v61 + 16);
          if (v27 && a1[12] && a1[13] && (v28 = a1[11]) != 0)
          {
            v29 = FigCFWeakReferenceHolderCopyReferencedObject(v28);
            if (v29)
            {
              v30 = a1[12];
              v31 = FigThreadGetCurrent();
              v30(v29, v31, v27);
            }
          }

          else
          {
            v29 = 0;
          }

          v32 = a1[9];
          if (v32)
          {
            v33 = FigCFWeakReferenceHolderCopyReferencedObject(v32);
          }

          else
          {
            v33 = 0;
          }

          v34 = objc_autoreleasePoolPush();
          v35 = (a1[8])(a1, v33, *(a1[3] + 40), *(a1[3] + 48));
          objc_autoreleasePoolPop(v34);
          if (v33)
          {
            CFRelease(v33);
          }

          if (v29)
          {
            (a1[13])(v29, v27);
            CFRelease(v29);
          }

          *(v61 + 24) = v35;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v36 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 0xFFFFB41EuLL, "<< FigOSEventLink >>", 0x318, v48, v49, v50, v60);
          *(v61 + 24) = 0;
          if (v36)
          {
            goto LABEL_37;
          }
        }

        v36 = os_eventlink_signal_and_wait();
LABEL_37:
        v62 = 0;
        v37 = figOSEventLinkResolveMessageStatus((v61 + 28), &v62);
        v38 = v62;
        if (!v37)
        {
          if (v62)
          {
            *(v61 + 28) = 0;
          }

          else
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x331, v52, v53, v54, v60);
          }
        }

        FigMemoryOriginCompleteTransaction(!v38);
        v7 = 0;
      }

      while (!v36);
    }
  }

LABEL_50:
  os_eventlink_cancel();
  CFRelease(a1);
  return 0;
}

void figOSEventLinkRemote_Finalize(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v15 = 288;
LABEL_17:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFB420uLL, "<< FigOSEventLink >>", v15, v12, v13, v14, v16);
    goto LABEL_6;
  }

  if (!*(v2 + 32))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v15 = 289;
    goto LABEL_17;
  }

  if (!a1[3])
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v15 = 290;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_17();
  if (!CMBlockBufferGetDataPointer(v3, v4, v5, v6, v7))
  {
    MEMORY[0] = 0;
    os_eventlink_signal();
  }

LABEL_6:
  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }

  if (a1[3])
  {
    os_eventlink_cancel();
    v9 = a1[3];
    if (v9)
    {

      a1[3] = 0;
    }
  }

  a1[7] = 0;
  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
    a1[6] = 0;
  }
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x173, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB421uLL, "<< FigOSEventLink >>", 0x18A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB41FuLL, "<< FigOSEventLink >>", 0x186, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB424uLL, "<< FigOSEventLink >>", 0x17A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x172, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x171, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x170, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figOSEventLinkMemoryObjects_createInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0xE4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figOSEventLinkMemoryObjects_createInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB424uLL, "<< FigOSEventLink >>", 0xE9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figOSEventLinkMemoryObjects_createInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0xE1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x1AE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x1AF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x1AD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x1AC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x1AB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figOSEventLinkResolveMessageStatus_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x8F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x245, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x244, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x257, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x256, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB421uLL, "<< FigOSEventLink >>", 0x3A6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB424uLL, "<< FigOSEventLink >>", 0x391, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x38C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x38B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x38A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x389, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x388, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetCallbacks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3E9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x401, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x402, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x403, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x400, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3FF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3FE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3FD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x413, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x412, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x411, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x420, v10, v11, v12, a9);
}

size_t FigCaptionGroupFormatDescriptionCreate_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "(Fig)", 0x64, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

CVPixelBufferRef CMTaggedBufferGroupGetCVPixelBufferForTag(CMTaggedBufferGroupRef group, CMTag tag, CFIndex *indexOut)
{
  OUTLINED_FUNCTION_2_30();
  if (CMTagCollectionCreate(*MEMORY[0x1E695E480], &tags, 1, &tagCollection))
  {
    v6 = 0;
  }

  else
  {
    CVPixelBufferForTagCollection = CMTaggedBufferGroupGetCVPixelBufferForTagCollection(v4, tagCollection, &indexOuta);
    v6 = CVPixelBufferForTagCollection;
    if (v3 && CVPixelBufferForTagCollection)
    {
      *v3 = indexOuta;
    }
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  return v6;
}