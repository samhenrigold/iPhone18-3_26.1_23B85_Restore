unsigned __int16 *_parseRoadLaneParameter()
{
  OUTLINED_FUNCTION_100_0();
  v4 = gLogObjects;
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  v6 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    *&buf[4] = v4;
    OUTLINED_FUNCTION_49_1();
    v212 = v6;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v123, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_108())
  {
    if (v3)
    {
      v121 = *(v3 + 8);
      if (v0)
      {
LABEL_80:
        MsgID = iAP2MsgGetMsgID(v0);
        if (!v1)
        {
LABEL_84:
          *buf = 138412802;
          *&buf[4] = v121;
          OUTLINED_FUNCTION_49_1();
          v212 = MsgID;
          v213 = v124;
          v214 = v125;
          OUTLINED_FUNCTION_55_1();
          _os_log_debug_impl(v126, v127, v128, v129, v130, 0x18u);
          goto LABEL_6;
        }

LABEL_81:
        iAP2MsgGetParamID(v1);
        goto LABEL_84;
      }
    }

    else
    {
      v121 = 0;
      if (v0)
      {
        goto LABEL_80;
      }
    }

    MsgID = 0;
    if (!v1)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

LABEL_6:
  FirstParam = 0;
  v8 = -1;
  if (!v3 || !v0 || !v1)
  {
    goto LABEL_77;
  }

  HIDWORD(v206) = 0;
  v9 = OUTLINED_FUNCTION_72_1();
  FirstParam = iAP2MsgGetFirstParam(v9, v10);
  if (!FirstParam)
  {
    goto LABEL_76;
  }

  v192 = v3;
  v196 = 0;
  v180 = v2;
  cf = 0;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v197 = 0;
  v198 = 0;
  v199 = 0;
  *&v11 = 138412546;
  *v181 = v11;
  *&v11 = 134218240;
  *v169 = v11;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v13 = gLogObjects;
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v15 = *(gLogObjects + 368);
    }

    else
    {
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = v169[0];
        *&buf[4] = v13;
        OUTLINED_FUNCTION_49_1();
        v212 = v14;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v15 = &_os_log_default;
      }
    }

    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      v109 = *(v192 + 8);
      *buf = v181[0];
      *&buf[4] = v109;
      OUTLINED_FUNCTION_49_1();
      v212 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "_parseRoadLaneParameter: %@, process paramID=%d", buf, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v24 = OUTLINED_FUNCTION_56_4();
        LODWORD(valuePtr) = iAP2MsgGetDataAsU32(v24, v25);
        if (HIDWORD(v206))
        {
          v146 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v146))
          {
            goto LABEL_132;
          }

          goto LABEL_104;
        }

        if (!v196)
        {
          v196 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_52;
        }

        v148 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v148))
        {
LABEL_104:
          iAP2MsgGetParamID(v1);
          v147 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_2_23(v147);
          goto LABEL_131;
        }

        goto LABEL_132;
      case 1:
        v75 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v75, v76);
        OUTLINED_FUNCTION_79_2();
        if (v85)
        {
          v132 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v132))
          {
            goto LABEL_132;
          }

          goto LABEL_88;
        }

        if (!cf)
        {
          cf = OUTLINED_FUNCTION_51_0(v77, v78, v79, v80, v81, v82, v83, v84, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, 0, v201, v202, v203, v204, v205, v206);
          goto LABEL_52;
        }

        v157 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v157))
        {
LABEL_88:
          iAP2MsgGetParamID(v1);
          v133 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v133, 1);
LABEL_131:
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v164, v165, v166, v167, v168, 0x14u);
          goto LABEL_132;
        }

        goto LABEL_132;
      case 2:
        v45 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v45, v46);
        OUTLINED_FUNCTION_79_2();
        if (v55)
        {
          v143 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_50_1(v143))
          {
            goto LABEL_132;
          }

          goto LABEL_100;
        }

        if (!v201)
        {
          v201 = OUTLINED_FUNCTION_51_0(v47, v48, v49, v50, v51, v52, v53, v54, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, cf, 0, v202, v203, v204, v205, v206);
          goto LABEL_52;
        }

        v155 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_50_1(v155))
        {
LABEL_100:
          iAP2MsgGetParamID(v1);
          v144 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          *&buf[4] = v13;
          OUTLINED_FUNCTION_2_23(v144);
          goto LABEL_131;
        }

        goto LABEL_132;
      case 3:
        v56 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v56, v57);
        OUTLINED_FUNCTION_79_2();
        if (v66)
        {
          v139 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v139))
          {
            goto LABEL_132;
          }

          goto LABEL_96;
        }

        if (!v202)
        {
          v202 = OUTLINED_FUNCTION_51_0(v58, v59, v60, v61, v62, v63, v64, v65, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, cf, v201, 0, v203, v204, v205, v206);
          goto LABEL_52;
        }

        v152 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v152))
        {
LABEL_96:
          iAP2MsgGetParamID(v1);
          v140 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v140, 3);
          goto LABEL_131;
        }

        goto LABEL_132;
      case 4:
        v26 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v26, v27);
        OUTLINED_FUNCTION_79_2();
        if (v36)
        {
          v141 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v141))
          {
            goto LABEL_132;
          }

          goto LABEL_98;
        }

        if (!v203)
        {
          v203 = OUTLINED_FUNCTION_51_0(v28, v29, v30, v31, v32, v33, v34, v35, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, cf, v201, v202, 0, v204, v205, v206);
          goto LABEL_52;
        }

        v151 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v151))
        {
LABEL_98:
          iAP2MsgGetParamID(v1);
          v142 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v142, 4);
          goto LABEL_131;
        }

        goto LABEL_132;
      case 5:
        v86 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v86, v87);
        OUTLINED_FUNCTION_79_2();
        if (v96)
        {
          v136 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v136))
          {
            goto LABEL_132;
          }
        }

        else
        {
          if (!v204)
          {
            v204 = OUTLINED_FUNCTION_51_0(v88, v89, v90, v91, v92, v93, v94, v95, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, cf, v201, v202, v203, 0, v205, v206);
            goto LABEL_52;
          }

          v149 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v149))
          {
            goto LABEL_132;
          }
        }

        iAP2MsgGetParamID(v1);
        v137 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_0_10(v137, 5);
        goto LABEL_131;
      case 6:
        v97 = OUTLINED_FUNCTION_56_4();
        LODWORD(valuePtr) = iAP2MsgGetDataAsU32(v97, v98);
        if (HIDWORD(v206))
        {
          v134 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v134))
          {
            goto LABEL_132;
          }
        }

        else
        {
          if (!v205)
          {
            v205 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
            goto LABEL_52;
          }

          v154 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v154))
          {
            goto LABEL_132;
          }
        }

        iAP2MsgGetParamID(v1);
        v135 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_0_10(v135, 6);
        goto LABEL_131;
      case 7:
        v67 = OUTLINED_FUNCTION_45_5(v16, v17, v18, v19, v20, v21, v22, v23, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, cf, v201, v202, v203, v204, v205, v206, SHIDWORD(v206), valuePtr);
        if (HIDWORD(v208))
        {
          v145 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v145))
          {
            goto LABEL_132;
          }

          goto LABEL_128;
        }

        if (v67 != 2)
        {
          v153 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v153))
          {
            goto LABEL_132;
          }

          goto LABEL_128;
        }

        if (!v197)
        {
          v197 = OUTLINED_FUNCTION_19_7(2, v68, v69, v70, v71, v72, v73, v74, v171, v174, v178, v180, v183, v186, v190, v194, v196, 0, v198, v199, cf, v201, v202, v203, v204, v205, v208, valuePtr, SHIDWORD(valuePtr));
          goto LABEL_52;
        }

        v160 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v160))
        {
LABEL_128:
          iAP2MsgGetParamID(v1);
          v161 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v161, 7);
          goto LABEL_131;
        }

        goto LABEL_132;
      case 8:
        v99 = OUTLINED_FUNCTION_45_5(v16, v17, v18, v19, v20, v21, v22, v23, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, cf, v201, v202, v203, v204, v205, v206, SHIDWORD(v206), valuePtr);
        if (HIDWORD(v209))
        {
          v131 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v131))
          {
            goto LABEL_132;
          }

LABEL_126:
          iAP2MsgGetParamID(v1);
          v159 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v159, 8);
          goto LABEL_131;
        }

        if (v99 != 2)
        {
          v150 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v150))
          {
            goto LABEL_132;
          }

          goto LABEL_126;
        }

        if (v198)
        {
          v158 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v158))
          {
            goto LABEL_132;
          }

          goto LABEL_126;
        }

        v198 = OUTLINED_FUNCTION_19_7(2, v100, v101, v102, v103, v104, v105, v106, v172, v175, v179, v180, v184, v187, v191, v195, v196, v197, 0, v199, cf, v201, v202, v203, v204, v205, v209, valuePtr, SHIDWORD(valuePtr));
LABEL_52:
        v107 = OUTLINED_FUNCTION_72_1();
        FirstParam = iAP2MsgGetNextParam(v107, v108, FirstParam);
        if (FirstParam)
        {
          continue;
        }

        v110 = v196;
        if (v196)
        {
          platform_navigation_createObjectDetectionRoadSignDict(*(v192 + 8));
          OUTLINED_FUNCTION_69_2();
          platform_navigation_objectDetectionRoadLaneSetInfo(v111, v112, v113);
          LODWORD(v1) = 1;
          v114 = OUTLINED_FUNCTION_66_1();
          platform_navigation_objectDetectionRoadLaneSetInfo(v114, v115, cf);
          v116 = OUTLINED_FUNCTION_94();
          platform_navigation_objectDetectionRoadLaneSetInfo(v116, v117, v201);
          v118 = OUTLINED_FUNCTION_95_1();
          platform_navigation_objectDetectionRoadLaneSetInfo(v118, v119, v202);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 4, v203);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 5, v204);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 6, v205);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 7, v197);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 8, v198);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 7, v199);
          v2 = v180;
          goto LABEL_55;
        }

        FirstParam = 0;
        LODWORD(v5) = 0;
        v2 = v180;
LABEL_56:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v201)
        {
          CFRelease(v201);
        }

        if (v202)
        {
          CFRelease(v202);
        }

        if (v203)
        {
          CFRelease(v203);
        }

        if (v204)
        {
          CFRelease(v204);
        }

        if (v205)
        {
          CFRelease(v205);
        }

        if (v197)
        {
          CFRelease(v197);
        }

        if (v198)
        {
          CFRelease(v198);
        }

        if (v199)
        {
          CFRelease(v199);
          if (v5)
          {
            goto LABEL_74;
          }

LABEL_76:
          v8 = -1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_76;
          }

LABEL_74:
          v8 = 0;
        }

LABEL_77:
        *v2 = v8;
        return FirstParam;
      case 9:
        v37 = OUTLINED_FUNCTION_45_5(v16, v17, v18, v19, v20, v21, v22, v23, v169[0], v169[1], v176, v180, v181[0], v181[1], v188, v192, v196, v197, v198, v199, cf, v201, v202, v203, v204, v205, v206, SHIDWORD(v206), valuePtr);
        if (HIDWORD(v207))
        {
          v138 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v138))
          {
            goto LABEL_132;
          }
        }

        else if (v37 == 2)
        {
          if (!v199)
          {
            v199 = OUTLINED_FUNCTION_19_7(2, v38, v39, v40, v41, v42, v43, v44, v170, v173, v177, v180, v182, v185, v189, v193, v196, v197, v198, 0, cf, v201, v202, v203, v204, v205, v207, valuePtr, SHIDWORD(valuePtr));
            goto LABEL_52;
          }

          v162 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v162))
          {
LABEL_132:
            v2 = v180;
            v110 = v196;
            OUTLINED_FUNCTION_87_2();
            if (v196)
            {
LABEL_55:
              CFRelease(v110);
              FirstParam = v0;
              LODWORD(v5) = v1;
            }

            goto LABEL_56;
          }
        }

        else
        {
          v156 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v156))
          {
            goto LABEL_132;
          }
        }

        iAP2MsgGetParamID(v1);
        v163 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_0_10(v163, 9);
        goto LABEL_131;
      default:
        goto LABEL_52;
    }
  }
}

unsigned __int16 *_parseRoadObjectParameter()
{
  OUTLINED_FUNCTION_100_0();
  v4 = gLogObjects;
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  v6 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    *&buf[4] = v4;
    OUTLINED_FUNCTION_17_0();
    v203 = v6;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v147, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_108())
  {
    if (v3)
    {
      v145 = *(v3 + 8);
      if (v0)
      {
LABEL_74:
        MsgID = iAP2MsgGetMsgID(v0);
        if (!v1)
        {
LABEL_78:
          *buf = 138412802;
          *&buf[4] = v145;
          OUTLINED_FUNCTION_17_0();
          v203 = MsgID;
          v204 = v148;
          v205 = v149;
          OUTLINED_FUNCTION_55_1();
          _os_log_debug_impl(v150, v151, v152, v153, v154, 0x18u);
          goto LABEL_6;
        }

LABEL_75:
        iAP2MsgGetParamID(v1);
        goto LABEL_78;
      }
    }

    else
    {
      v145 = 0;
      if (v0)
      {
        goto LABEL_74;
      }
    }

    MsgID = 0;
    if (!v1)
    {
      goto LABEL_78;
    }

    goto LABEL_75;
  }

LABEL_6:
  FirstParam = 0;
  v8 = -1;
  if (!v3 || !v0 || !v1)
  {
    goto LABEL_71;
  }

  v9 = OUTLINED_FUNCTION_72_1();
  FirstParam = iAP2MsgGetFirstParam(v9, v10);
  if (!FirstParam)
  {
    goto LABEL_70;
  }

  v191 = v3;
  v192 = 0;
  v189 = v2;
  cf = 0;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v198 = 0;
  v199 = 0;
  v200 = 0;
  v201 = 0;
  *&v11 = 138412546;
  v190 = v11;
  *&v11 = 134218240;
  *v187 = v11;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v13 = gLogObjects;
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v15 = *(gLogObjects + 368);
    }

    else
    {
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = v187[0];
        *&buf[4] = v13;
        OUTLINED_FUNCTION_17_0();
        v203 = v14;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v15 = &_os_log_default;
      }
    }

    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      *buf = OUTLINED_FUNCTION_44_5(v16, v17, v18, v19, v20, v21, v22, v23, v187[0], v187[1], v188, v189, v190).n128_u32[0];
      *&buf[4] = v133;
      OUTLINED_FUNCTION_17_0();
      v203 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "_parseRoadObjectParameter: %@, process paramID=%d", buf, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v24 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsU32(v24, v25);
        OUTLINED_FUNCTION_57_4();
        if (v34)
        {
          v167 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v167))
          {
            goto LABEL_114;
          }

          goto LABEL_90;
        }

        if (!v192)
        {
          v192 = OUTLINED_FUNCTION_37_3(v26, v27, v28, v29, v30, v31, v32, v33, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, 0, cf, v194, v195, v196, v197, v198, v199, v200, v201);
          goto LABEL_46;
        }

        v177 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v177))
        {
LABEL_90:
          iAP2MsgGetParamID(v1);
          v168 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_3_19(v168);
          goto LABEL_113;
        }

        goto LABEL_114;
      case 1:
        v88 = OUTLINED_FUNCTION_41_4();
        DataAsU8 = iAP2MsgGetDataAsU8(v88, v89);
        if (!cf)
        {
          cf = OUTLINED_FUNCTION_83_1(DataAsU8, v91, v92, v93, v94, v95, v96, v97, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, 0, v194, v195, v196, v197, v198, v199, v200, v201);
          goto LABEL_46;
        }

        v179 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_47_2(v179))
        {
          goto LABEL_114;
        }

        iAP2MsgGetParamID(v1);
        v159 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v159, 1);
        goto LABEL_113;
      case 2:
        v57 = OUTLINED_FUNCTION_41_4();
        v59 = iAP2MsgGetDataAsU8(v57, v58);
        if (!v194)
        {
          v194 = OUTLINED_FUNCTION_83_1(v59, v60, v61, v62, v63, v64, v65, v66, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, 0, v195, v196, v197, v198, v199, v200, v201);
          goto LABEL_46;
        }

        v171 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_50_1(v171))
        {
          goto LABEL_114;
        }

        iAP2MsgGetParamID(v1);
        v158 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        *&buf[4] = v13;
        OUTLINED_FUNCTION_3_19(v158);
        goto LABEL_113;
      case 3:
        v67 = OUTLINED_FUNCTION_41_4();
        v69 = iAP2MsgGetDataAsU8(v67, v68);
        if (!v195)
        {
          v195 = OUTLINED_FUNCTION_83_1(v69, v70, v71, v72, v73, v74, v75, v76, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, v194, 0, v196, v197, v198, v199, v200, v201);
          goto LABEL_46;
        }

        v173 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_47_2(v173))
        {
          goto LABEL_114;
        }

        iAP2MsgGetParamID(v1);
        v162 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v162, 3);
        goto LABEL_113;
      case 4:
        v35 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v35, v36);
        OUTLINED_FUNCTION_57_4();
        if (v45)
        {
          v169 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v169))
          {
            goto LABEL_114;
          }

          goto LABEL_92;
        }

        if (!v196)
        {
          v196 = OUTLINED_FUNCTION_37_3(v37, v38, v39, v40, v41, v42, v43, v44, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, v194, v195, 0, v197, v198, v199, v200, v201);
          goto LABEL_46;
        }

        v176 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v176))
        {
LABEL_92:
          iAP2MsgGetParamID(v1);
          v170 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v170, 4);
          goto LABEL_113;
        }

        goto LABEL_114;
      case 5:
        v98 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v98, v99);
        OUTLINED_FUNCTION_57_4();
        if (v108)
        {
          v157 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v157))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (!v197)
          {
            v197 = OUTLINED_FUNCTION_37_3(v100, v101, v102, v103, v104, v105, v106, v107, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, v194, v195, v196, 0, v198, v199, v200, v201);
            goto LABEL_46;
          }

          v180 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v180))
          {
            goto LABEL_114;
          }
        }

        iAP2MsgGetParamID(v1);
        v181 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v181, 5);
        goto LABEL_113;
      case 6:
        v109 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v109, v110);
        OUTLINED_FUNCTION_57_4();
        if (v119)
        {
          v160 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v160))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (!v198)
          {
            v198 = OUTLINED_FUNCTION_37_3(v111, v112, v113, v114, v115, v116, v117, v118, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, v194, v195, v196, v197, 0, v199, v200, v201);
            goto LABEL_46;
          }

          v175 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v175))
          {
            goto LABEL_114;
          }
        }

        iAP2MsgGetParamID(v1);
        v161 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v161, 6);
        goto LABEL_113;
      case 7:
        v77 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsU32(v77, v78);
        OUTLINED_FUNCTION_57_4();
        if (v87)
        {
          v165 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v165))
          {
            goto LABEL_114;
          }

          goto LABEL_88;
        }

        if (!v199)
        {
          v199 = OUTLINED_FUNCTION_37_3(v79, v80, v81, v82, v83, v84, v85, v86, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, v194, v195, v196, v197, v198, 0, v200, v201);
          goto LABEL_46;
        }

        v172 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v172))
        {
LABEL_88:
          iAP2MsgGetParamID(v1);
          v166 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v166, 7);
          goto LABEL_113;
        }

        goto LABEL_114;
      case 8:
        v120 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v120, v121);
        OUTLINED_FUNCTION_57_4();
        if (v130)
        {
          v155 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v155))
          {
            goto LABEL_114;
          }

LABEL_80:
          iAP2MsgGetParamID(v1);
          v156 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v156, 8);
LABEL_113:
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v182, v183, v184, v185, v186, 0x14u);
          goto LABEL_114;
        }

        if (v200)
        {
          v174 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v174))
          {
            goto LABEL_114;
          }

          goto LABEL_80;
        }

        v200 = OUTLINED_FUNCTION_37_3(v122, v123, v124, v125, v126, v127, v128, v129, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, v194, v195, v196, v197, v198, v199, 0, v201);
LABEL_46:
        v131 = OUTLINED_FUNCTION_72_1();
        FirstParam = iAP2MsgGetNextParam(v131, v132, FirstParam);
        if (FirstParam)
        {
          continue;
        }

        v134 = v192;
        if (v192)
        {
          platform_navigation_createObjectDetectionRoadSignDict(*(v191 + 8));
          OUTLINED_FUNCTION_69_2();
          platform_navigation_objectDetectionRoadObjectSetInfo(v135, v136, v137);
          LODWORD(v1) = 1;
          v138 = OUTLINED_FUNCTION_66_1();
          platform_navigation_objectDetectionRoadObjectSetInfo(v138, v139, cf);
          v140 = OUTLINED_FUNCTION_94();
          platform_navigation_objectDetectionRoadObjectSetInfo(v140, v141, v194);
          v142 = OUTLINED_FUNCTION_95_1();
          platform_navigation_objectDetectionRoadObjectSetInfo(v142, v143, v195);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 4, v196);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 5, v197);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 6, v198);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 7, v199);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 8, v200);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 9, v201);
          v2 = v189;
          goto LABEL_49;
        }

        FirstParam = 0;
        LODWORD(v5) = 0;
        v2 = v189;
LABEL_50:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v194)
        {
          CFRelease(v194);
        }

        if (v195)
        {
          CFRelease(v195);
        }

        if (v196)
        {
          CFRelease(v196);
        }

        if (v197)
        {
          CFRelease(v197);
        }

        if (v198)
        {
          CFRelease(v198);
        }

        if (v199)
        {
          CFRelease(v199);
        }

        if (v200)
        {
          CFRelease(v200);
        }

        if (v201)
        {
          CFRelease(v201);
          if (v5)
          {
            goto LABEL_68;
          }

LABEL_70:
          v8 = -1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_70;
          }

LABEL_68:
          v8 = 0;
        }

LABEL_71:
        *v2 = v8;
        return FirstParam;
      case 9:
        v46 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v46, v47);
        OUTLINED_FUNCTION_57_4();
        if (v56)
        {
          v163 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v163))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (!v201)
          {
            v201 = OUTLINED_FUNCTION_37_3(v48, v49, v50, v51, v52, v53, v54, v55, v187[0], v187[1], v188, v189, v190, *(&v190 + 1), v191, v192, cf, v194, v195, v196, v197, v198, v199, v200, 0);
            goto LABEL_46;
          }

          v178 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v178))
          {
LABEL_114:
            v2 = v189;
            v134 = v192;
            OUTLINED_FUNCTION_87_2();
            if (v192)
            {
LABEL_49:
              CFRelease(v134);
              FirstParam = v0;
              LODWORD(v5) = v1;
            }

            goto LABEL_50;
          }
        }

        iAP2MsgGetParamID(v1);
        v164 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v164, 9);
        goto LABEL_113;
      default:
        goto LABEL_46;
    }
  }
}

BOOL iap2_navigation_routeGuidanceManeuverUpdateHandler(uint64_t *a1, uint64_t a2)
{
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_35(&_mh_execute_header, v123, v124, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v136);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x11u);
  v10 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_8_1();
    *v139 = v10;
    OUTLINED_FUNCTION_39(&_mh_execute_header, v125, v126, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v136);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    v11 = "exists";
    v12 = a1[1];
    if (!Feature)
    {
      v11 = "missing!!";
    }

    v136 = 138412546;
    v137 = v12;
    v138 = 2080;
    *v139 = v11;
    OUTLINED_FUNCTION_40_5();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (*a2 != 1)
    {
      return 0;
    }

    v19 = gLogObjects;
    v20 = gNumLogObjects;
    if (gLogObjects)
    {
      v21 = gNumLogObjects <= 46;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
    if (*(a2 + 16))
    {
      if (!v22 && OUTLINED_FUNCTION_27())
      {
        v136 = 134218240;
        v137 = v19;
        OUTLINED_FUNCTION_3();
        *v139 = v20;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v127, v128, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v136);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        OUTLINED_FUNCTION_38();
        v138 = 2112;
        *v139 = v24;
        *&v139[8] = 2112;
        v140 = v25;
        OUTLINED_FUNCTION_40_5();
        _os_log_impl(v26, v27, v28, v29, v30, 0x20u);
      }

      v31 = OUTLINED_FUNCTION_49((a1 + 15), 20994, a1[24]);
      v32 = *(a2 + 8);
      if (v32 && (Count = CFArrayGetCount(v32), Count >= 1))
      {
        v34 = Count;
        v35 = 0;
        for (i = 0; i != v34; ++i)
        {
          CFArrayGetValueAtIndex(*(a2 + 8), i);
          v37 = OUTLINED_FUNCTION_13_8();
          v35 += __addU16NumberParameterToMsg(v37, v38, 0, v39);
        }
      }

      else
      {
        v35 = 0;
      }

      v40 = platform_navigation_maneuverInfoKeyForType(1);
      OUTLINED_FUNCTION_61(v40);
      v41 = OUTLINED_FUNCTION_13_8();
      v44 = v35 + __addU16NumberParameterToMsg(v41, v42, 1, v43);
      v45 = platform_navigation_maneuverInfoKeyForType(2);
      v49 = 0;
      if (OUTLINED_FUNCTION_61(v45))
      {
        v46 = OUTLINED_FUNCTION_13_8();
        if (iAP2MsgAddCFStringParam(v46, v47, 2, v48))
        {
          v49 = 1;
        }
      }

      v50 = platform_navigation_maneuverInfoKeyForType(3);
      OUTLINED_FUNCTION_61(v50);
      v51 = OUTLINED_FUNCTION_26_1();
      v55 = v44 + v49 + __addEnumNumberParameterToMsg(v51, v52, 3, v53, v54);
      v56 = platform_navigation_maneuverInfoKeyForType(4);
      v60 = 0;
      if (OUTLINED_FUNCTION_61(v56))
      {
        v57 = OUTLINED_FUNCTION_13_8();
        if (iAP2MsgAddCFStringParam(v57, v58, 4, v59))
        {
          v60 = 1;
        }
      }

      v61 = platform_navigation_maneuverInfoKeyForType(5);
      OUTLINED_FUNCTION_61(v61);
      v62 = OUTLINED_FUNCTION_13_8();
      v65 = v55 + v60 + __addU32NumberParameterToMsg(v62, v63, 5, v64);
      v66 = platform_navigation_maneuverInfoKeyForType(6);
      v70 = 0;
      if (OUTLINED_FUNCTION_61(v66))
      {
        v67 = OUTLINED_FUNCTION_13_8();
        if (iAP2MsgAddCFStringParam(v67, v68, 6, v69))
        {
          v70 = 1;
        }
      }

      v71 = platform_navigation_maneuverInfoKeyForType(7);
      OUTLINED_FUNCTION_61(v71);
      OUTLINED_FUNCTION_11_8();
      v72 = OUTLINED_FUNCTION_26_1();
      v76 = v70 + __addEnumNumberParameterToMsg(v72, v73, 7, v74, v75);
      v77 = platform_navigation_maneuverInfoKeyForType(8);
      OUTLINED_FUNCTION_61(v77);
      v78 = OUTLINED_FUNCTION_26_1();
      v82 = v76 + __addEnumNumberParameterToMsg(v78, v79, 8, v80, v81);
      v83 = platform_navigation_maneuverInfoKeyForType(9);
      OUTLINED_FUNCTION_61(v83);
      v84 = OUTLINED_FUNCTION_26_1();
      v88 = v65 + v82 + __addEnumNumberParameterToMsg(v84, v85, 9, v86, v87);
      v89 = platform_navigation_maneuverInfoKeyForType(10);
      v90 = OUTLINED_FUNCTION_61(v89);
      if (v90)
      {
        v91 = v90;
        v92 = CFArrayGetCount(v90);
        if (v92 >= 1)
        {
          v93 = v92;
          for (j = 0; j != v93; ++j)
          {
            CFArrayGetValueAtIndex(v91, j);
            v95 = OUTLINED_FUNCTION_13_8();
            v88 += __addU16NumberParameterToMsg(v95, v96, 10, v97);
          }
        }
      }

      v98 = platform_navigation_maneuverInfoKeyForType(11);
      OUTLINED_FUNCTION_61(v98);
      v99 = OUTLINED_FUNCTION_13_8();
      v102 = v88 + __addU16NumberParameterToMsg(v99, v100, 11, v101);
      if (*(Feature + 18) == 1)
      {
        v103 = *(a2 + 16);
        v104 = platform_navigation_maneuverInfoKeyForType(13);
        v108 = 0;
        if (CFDictionaryGetValue(v103, v104))
        {
          v105 = OUTLINED_FUNCTION_13_8();
          if (iAP2MsgAddCFStringParam(v105, v106, 13, v107))
          {
            v108 = 1;
          }
        }

        v102 += v108;
      }

      if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x5204u))
      {
        v109 = *(a2 + 16);
        v110 = platform_navigation_maneuverInfoKeyForType(12);
        if (CFDictionaryGetValue(v109, v110))
        {
          v111 = OUTLINED_FUNCTION_13_8();
          v102 += __addU16NumberParameterToMsg(v111, v112, 12, v113);
        }
      }

      if (v102)
      {
        v114 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_8_1();
          *v139 = v114;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v129, v130, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v136);
        }

        if (OUTLINED_FUNCTION_82())
        {
          iAP2MsgGetMsgID(v31);
          OUTLINED_FUNCTION_8_1();
          *v139 = v115;
          *&v139[4] = v116;
          *&v139[6] = v102;
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v117, v118, v119, v120, v121, 0x18u);
        }

        iap2_sessionControl_sendOutgoingMessage(a1, v31);
      }

      platform_navigation_deleteParams(a2);
      return 1;
    }

    if (v22)
    {
      v23 = *(gLogObjects + 368);
    }

    else
    {
      v23 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        v136 = 134218240;
        v137 = v19;
        OUTLINED_FUNCTION_3();
        *v139 = v20;
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v131, v132, v133, v134, v135, 0x12u);
      }
    }

    result = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_79_0(&_mh_execute_header, v23, v122, "iAP2Navigation RouteGuidanceManeuverUpdate %@, no userInfo, message not sent!", &v136);
      return 0;
    }
  }

  return result;
}

uint64_t iap2_navigation_stopRoadObjectDetectionHandler(uint64_t a1, uint64_t a2)
{
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_35(&_mh_execute_header, v42, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x11u);
  v10 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_3();
    LODWORD(v52) = v10;
    OUTLINED_FUNCTION_39(&_mh_execute_header, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    if (Feature)
    {
      v11 = "exists";
    }

    else
    {
      v11 = "missing!!";
    }

    obfuscatedPointer(a2);
    OUTLINED_FUNCTION_70();
    v51 = 2080;
    v52 = v11;
    v53 = 2048;
    v54 = v12;
    OUTLINED_FUNCTION_40_5();
    _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (*a2 == 4)
    {
      if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v46, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50);
      }

      if (OUTLINED_FUNCTION_82())
      {
        OUTLINED_FUNCTION_38();
        v51 = 2112;
        v52 = v19;
        OUTLINED_FUNCTION_27_0();
        _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      }

      v25 = OUTLINED_FUNCTION_49(a1 + 120, 3330, *(a1 + 192));
      v26 = *(a2 + 8);
      if (v26)
      {
        Count = CFArrayGetCount(v26);
        if (Count >= 1)
        {
          v28 = Count;
          for (i = 0; i != v28; ++i)
          {
            CFArrayGetValueAtIndex(*(a2 + 8), i);
            v30 = OUTLINED_FUNCTION_6_13();
            __addU16NumberParameterToMsg(v30, v31, 0, v32);
          }
        }
      }

      v33 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        LODWORD(v52) = v33;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        iAP2MsgGetMsgID(v25);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        LODWORD(v52) = v34;
        OUTLINED_FUNCTION_40_5();
        _os_log_impl(v35, v36, v37, v38, v39, 0x12u);
      }

      v40 = OUTLINED_FUNCTION_72_1();
      iap2_sessionControl_sendOutgoingMessage(v40, v41);
      platform_navigation_deleteParams(a2);
      return 1;
    }

    return 0;
  }

  return result;
}

void *_createFeature_7(void *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v14 = 134218240;
      v15 = v2;
      OUTLINED_FUNCTION_3();
      v16 = v3;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
    }
  }

  v5 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v5, v6))
  {
    LOWORD(v14) = 0;
    OUTLINED_FUNCTION_12(&_mh_execute_header, v4, v7, "iAP2Navigation _createFeature", &v14);
  }

  if (a1)
  {
    a1 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040684C9801uLL);
    if (a1)
    {
      *a1 = OUTLINED_FUNCTION_104();
      a1[1] = OUTLINED_FUNCTION_104();
    }
  }

  return a1;
}

uint64_t _destroyFeature_7(CFTypeRef **a1, uint64_t a2)
{
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_35(&_mh_execute_header, v12, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14);
  }

  if (OUTLINED_FUNCTION_82())
  {
    v14[0] = 0;
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    v10 = *a1;
    if (*a1)
    {
      platform_navigation_accessoryDetached(*(a2 + 8));
      platform_navigation_decrementUserCount();
      if (*v10)
      {
        CFRelease(*v10);
        *v10 = 0;
      }

      v11 = v10[1];
      if (v11)
      {
        CFRelease(v11);
        v10[1] = 0;
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _startFeatureFromDevice_4(uint64_t a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v49 = 134218240;
      v50 = v2;
      OUTLINED_FUNCTION_3();
      v51 = v3;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v34, v35, v36, v37, v38, 0x12u);
    }
  }

  v5 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v5, v6))
  {
    LOWORD(v49) = 0;
    OUTLINED_FUNCTION_12(&_mh_execute_header, v4, v7, "iAP2Navigation _startFeatureFromDevice", &v49);
  }

  Feature = iap2_feature_getFeature(a1, 0x11u);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Feature)
  {
    LOBYTE(v49) = 0;
    if (!iap2_identification_checkRequiredMsgIDs(a1, &gskMsgNavigationMainList, 5, &v49))
    {
      goto LABEL_23;
    }

    v10 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v11 = *(gLogObjects + 368);
    }

    else
    {
      v11 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        OUTLINED_FUNCTION_8_1();
        v51 = v10;
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v39, v40, v41, v42, v43);
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v49) = 0;
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_12(v12, v13, v14, v15, v16);
    }

    Count = CFDictionaryGetCount(*Feature);
    v18 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*Feature, 0, v18);
    if (Count < 1)
    {
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = v18;
      do
      {
        v20 = *v19++;
        CFArrayAppendValue(Mutable, v20);
        --Count;
      }

      while (Count);
    }

    free(v18);
LABEL_23:
    LOBYTE(v49) = 0;
    if (!iap2_identification_checkRequiredMsgIDs(a1, &gskMsgRoadObjectDetectionMainList, 3, &v49))
    {
      goto LABEL_37;
    }

    v21 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v22 = *(gLogObjects + 368);
    }

    else
    {
      v22 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        OUTLINED_FUNCTION_8_1();
        v51 = v21;
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v44, v45, v46, v47, v48);
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v49) = 0;
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_12(v23, v24, v25, v26, v27);
    }

    v28 = CFDictionaryGetCount(Feature[1]);
    v29 = malloc_type_calloc(v28, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(Feature[1], 0, v29);
    if (v28 < 1)
    {
      if (!v29)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v30 = v29;
      do
      {
        v31 = *v30++;
        CFArrayAppendValue(Mutable, v31);
        --v28;
      }

      while (v28);
    }

    free(v29);
LABEL_37:
    platform_navigation_incrementUserCount();
    if (!a1 || (v32 = *(a1 + 8)) == 0)
    {
      v32 = 0;
    }

    platform_navigation_accessoryAttached(v32, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Feature != 0;
}

void _convertRouteGuidanceStateTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertManeuverStateTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertDistaceUnitTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertManeuverTypeForFunc_cold_1()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertDrivingSideTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertJunctionTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _parseIdentificationParams_cold_2_0(_DWORD *a1)
{
  v2 = logObjectForModule_15();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = 10;
}

void _parseIdentificationParams_cold_6_0(_BYTE *a1)
{
  v2 = logObjectForModule_15();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = 0;
}

void acc_auth_protocol_sizeofMessageData_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = a2;
  OUTLINED_FUNCTION_3_20(&_mh_execute_header, a2, a3, "[AccAuth] sizeofEncryptedAuthInfoData: encryptedInfoType %d, dataLen %d \n", 67109376, v3);
}

uint64_t iap2_location_update(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v92 = 0;
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      Feature = iap2_feature_getFeature(a1, 0xCu);
      if (Feature)
      {
        v5 = &audioProductCerts_endpoint_publish_onceToken;
        v6 = &audioProductCerts_endpoint_publish_onceToken;
        if (*Feature == 1)
        {
          FirstParam = iAP2MsgGetFirstParam(v3, 0);
          if (FirstParam)
          {
            NextParam = FirstParam;
            v2 = 0;
            *&v8 = 134218240;
            v89 = v8;
            *&v8 = 138412546;
            v88 = v8;
            v90 = v3;
            while (1)
            {
              ParamID = iAP2MsgGetParamID(NextParam);
              if (ParamID)
              {
                v11 = ParamID;
                v12 = v5[491];
                v13 = *(v6 + 984);
                if (v12 && v13 >= 43)
                {
                  v14 = *(v12 + 336);
                }

                else
                {
                  v14 = &_os_log_default;
                  v68 = OUTLINED_FUNCTION_11();
                  if (v68)
                  {
                    OUTLINED_FUNCTION_1_16(v68, v69, v70, v71, v72, v73, v74, v75, v86, v87, v88, *(&v88 + 1), v89);
                    LODWORD(v96) = v13;
                    OUTLINED_FUNCTION_10_6();
                    _os_log_error_impl(v76, v77, v78, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v79, 0x12u);
                  }
                }

                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109120;
                  LODWORD(v94) = v11;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Unrecognized paramID: 0x%04X", buf, 8u);
                }

                v6 = &audioProductCerts_endpoint_publish_onceToken;
              }

              else
              {
                DataAsString = iAP2MsgGetDataAsString(NextParam, &v92);
                if (v92)
                {
                  MsgID = iAP2MsgGetMsgID(v3);
                  printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, MsgID);
                  return v2 & 1;
                }

                v16 = DataAsString;
                if (!DataAsString)
                {
                  return v2 & 1;
                }

                ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
                if (ParamValueLen)
                {
                  v18 = &v16[ParamValueLen];
                  if (!*(v18 - 1) && v16 < v18)
                  {
                    do
                    {
                      v20 = strlen(v16) + 1;
                      if (v20 <= 0x800)
                      {
                        v21 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
                        v22 = v5;
                        v23 = v5[491];
                        v24 = *(v6 + 984);
                        if (v23)
                        {
                          v25 = v24 <= 42;
                        }

                        else
                        {
                          v25 = 1;
                        }

                        v26 = !v25;
                        if (v21)
                        {
                          v27 = v21;
                          if (v26)
                          {
                            v28 = *(v23 + 336);
                          }

                          else
                          {
                            v28 = &_os_log_default;
                            v30 = OUTLINED_FUNCTION_11();
                            if (v30)
                            {
                              OUTLINED_FUNCTION_1_16(v30, v31, v32, v33, v34, v35, v36, v37, v86, v87, v88, *(&v88 + 1), v89);
                              LODWORD(v96) = v24;
                              OUTLINED_FUNCTION_10_6();
                              _os_log_error_impl(v55, v56, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v58, 0x12u);
                            }
                          }

                          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412290;
                            v94 = v27;
                            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "nmeaSentenceRef: %@", buf, 0xCu);
                          }

                          v2 = platform_location_update(*(a1 + 8), v27);
                          v5 = v22;
                          if ((v2 & 1) == 0)
                          {
                            v38 = gNumLogObjects;
                            if (!v22[491] || gNumLogObjects < 43)
                            {
                              v47 = OUTLINED_FUNCTION_11();
                              if (v47)
                              {
                                OUTLINED_FUNCTION_1_16(v47, v48, v49, v50, v51, v52, v53, v54, v86, v87, v88, *(&v88 + 1), v89);
                                LODWORD(v96) = v38;
                                OUTLINED_FUNCTION_10_6();
                                _os_log_error_impl(v64, v65, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v67, 0x12u);
                              }
                            }

                            v5 = v22;
                            if (OUTLINED_FUNCTION_11())
                            {
                              v59 = *(a1 + 8);
                              *buf = v88;
                              v94 = v27;
                              v95 = 2112;
                              v96 = v59;
                              OUTLINED_FUNCTION_10_6();
                              _os_log_error_impl(v60, v61, v62, "platform_location_update failed to forward nmeaSentenceRef: %@ on endpoint: %@", v63, 0x16u);
                            }
                          }

                          CFRelease(v27);
                          v6 = &audioProductCerts_endpoint_publish_onceToken;
                        }

                        else
                        {
                          if (v26)
                          {
                            v29 = *(v23 + 336);
                          }

                          else
                          {
                            v29 = &_os_log_default;
                            v39 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                            if (v39)
                            {
                              OUTLINED_FUNCTION_1_16(v39, v40, v41, v42, v43, v44, v45, v46, v86, v87, v88, *(&v88 + 1), v89);
                              LODWORD(v96) = v24;
                              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                            }
                          }

                          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 67109120;
                            LODWORD(v94) = 0;
                            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "paramID: %04X, nmeaSentenceRef = nil!\n", buf, 8u);
                          }

                          v5 = v22;
                        }
                      }

                      v16 += v20;
                    }

                    while (v16 < v18);
                  }
                }
              }

              v3 = v90;
              NextParam = iAP2MsgGetNextParam(v90, 0, NextParam);
              if (!NextParam)
              {
                return v2 & 1;
              }
            }
          }
        }

        else
        {
          v80 = gLogObjects;
          v81 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 43)
          {
            v82 = *(gLogObjects + 336);
          }

          else
          {
            v82 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v94 = v80;
              v95 = 1024;
              LODWORD(v96) = v81;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "Update received when location not started!\n", buf, 2u);
          }
        }
      }

      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t iap2_location_start(uint64_t result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 43)
    {
      v6 = *(gLogObjects + 336);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        valuePtr = 134218240;
        v22 = v4;
        v23 = 1024;
        LODWORD(v24) = v5;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v3[1];
      valuePtr = 136315650;
      v22 = "iap2_location_start";
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = a2;
      OUTLINED_FUNCTION_9_11(&_mh_execute_header, v8, v9, "%s %@, attributes %@", &valuePtr);
    }

    if (!a2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_49((v3 + 15), 65530, v3[24]);
    v11 = 0;
    valuePtr = 0;
    while (1)
    {
      v20 = v11 | 0x8000;
      v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v20);
      if (!v12)
      {
        goto LABEL_16;
      }

      Value = CFDictionaryGetValue(a2, v12);
      if (!Value)
      {
        goto LABEL_16;
      }

      v19 = 0;
      if (!CFNumberGetValue(Value, kCFNumberIntType, &v19))
      {
        goto LABEL_16;
      }

      v15 = (v3 + 15);
      if (v19 == 1)
      {
        break;
      }

      iAP2MsgAddU32Param(v15, 0, valuePtr, v19);
      if (v13)
      {
LABEL_17:
        v16 = CFDictionaryGetValue(a2, v13);
        if (v16)
        {
          v19 = 0;
          if (CFNumberGetValue(v16, kCFNumberIntType, &v19))
          {
            v17 = (v3 + 15);
            if (v19 == 1)
            {
              iAP2MsgAddVoidParam(v17, 0, v20);
            }

            else
            {
              iAP2MsgAddU32Param(v17, 0, v20, v19);
            }
          }
        }
      }

LABEL_24:
      if (v12)
      {
        CFRelease(v12);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v11 = valuePtr + 1;
      valuePtr = v11;
      if (v11 >= 8)
      {
        if (iap2_sessionControl_sendOutgoingMessage(v3, (v3 + 15)))
        {
          Feature = iap2_feature_getFeature(v3, 0xCu);
          result = 1;
          if (Feature)
          {
            *Feature = 1;
          }

          return result;
        }

        return 0;
      }
    }

    iAP2MsgAddVoidParam(v15, 0, valuePtr);
LABEL_16:
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t iap2_location_stop(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_14();
    if (v4 && v5 >= 43)
    {
      v6 = *(v4 + 336);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 = 134218240;
        v24 = v4;
        OUTLINED_FUNCTION_3();
        v25 = v5;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v23);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_9_11(&_mh_execute_header, v7, v8, "%s %@, attributes %@", &v23);
    }

    result = iap2_feature_getFeature(v1, 0xCu);
    if (result)
    {
      v9 = result;
      if (*result == 1)
      {
        OUTLINED_FUNCTION_49((v1 + 15), 65532, v1[24]);
        result = iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
        if (result)
        {
          *v9 = 0;
          return 1;
        }
      }

      else
      {
        v10 = *(v2 + 3928);
        v11 = *(v3 + 3936);
        if (v10 && v11 >= 43)
        {
          v12 = *(v10 + 336);
        }

        else
        {
          v12 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v23 = 134218240;
            v24 = v10;
            OUTLINED_FUNCTION_3();
            v25 = v11;
            OUTLINED_FUNCTION_88();
            OUTLINED_FUNCTION_10(v18, v19, v20, v21, v22);
          }
        }

        result = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (result)
        {
          LOWORD(v23) = 0;
          OUTLINED_FUNCTION_88();
          _os_log_impl(v13, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t iap2_location_send_gprmc_data_values(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_6_14();
  if (v5 && v6 >= 43)
  {
    v7 = *(v5 + 336);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v32 = 134218240;
      v33 = v5;
      OUTLINED_FUNCTION_3();
      v34 = v6;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v32);
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315650;
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_9_11(&_mh_execute_header, v8, v9, "%s %@, attributes %@", &v32);
  }

  if ((iap2_identification_isIdentifiedForOutgoingMessageID(v1, 0xFFF0u) & 1) == 0)
  {
    v27 = logObjectForModule_17();
    result = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v32 = 67109120;
    LODWORD(v33) = 65520;
    OUTLINED_FUNCTION_88();
    _os_log_error_impl(v28, v29, OS_LOG_TYPE_ERROR, v30, v31, 8u);
    return 0;
  }

  result = iap2_feature_getFeature(v1, 0xCu);
  if (!result)
  {
    return result;
  }

  if (*result == 1)
  {
    OUTLINED_FUNCTION_49((v1 + 15), 65520, v1[24]);
    Value = CFDictionaryGetValue(v2, @"GPRMCDataStatus");
    if (Value)
    {
      v11 = Value;
      if (CFArrayGetCount(Value) >= 1)
      {
        v12 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
          if (ValueAtIndex)
          {
            v32 = 3;
            if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v32))
            {
              if (v32 <= 2)
              {
                iAP2MsgAddVoidParam((v1 + 15), 0, v32);
              }
            }
          }

          ++v12;
        }

        while (CFArrayGetCount(v11) > v12);
      }
    }

    return iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
  }

  v14 = *(v3 + 3928);
  v15 = *(v4 + 3936);
  if (v14 && v15 >= 43)
  {
    v16 = *(v14 + 336);
  }

  else
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v32 = 134218240;
      v33 = v14;
      OUTLINED_FUNCTION_3();
      v34 = v15;
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_10(v22, v23, v24, v25, v26);
    }
  }

  result = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (result)
  {
    LOWORD(v32) = 0;
    OUTLINED_FUNCTION_88();
    _os_log_impl(v17, v18, OS_LOG_TYPE_INFO, v19, v20, 2u);
    return 0;
  }

  return result;
}

_BYTE *_createFeature_8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    platform_location_setSupportedNMEASentencesForEndpoint(*(a1 + 8), 0);
  }

  return v3;
}

id _destroyFeature_8(void **a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      v2 = platform_location_resetSupportedNMEASentencesForEndpoint(*(a2 + 8));
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL _startFeatureFromDevice_5(_BOOL8 result)
{
  if (result)
  {
    return iap2_feature_getFeature(result, 0xCu) != 0;
  }

  return result;
}

void _parseIdentificationParams_cold_6_1(_BYTE *a1)
{
  v2 = logObjectForModule_17();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "pProtocolEndpoint == NULL", v3, 2u);
  }

  *a1 = 0;
}

void _handleIdentificationRejection_cold_2(char a1, uint64_t a2, os_log_t log)
{
  if ((a1 & 1) != 0 || (v3 = *(a2 + 8)) == 0)
  {
    v3 = 0;
  }

  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to reset SupportedNMEASentences for endpointUUID %@", &v4, 0xCu);
}

void platform_bluetooth_copyNameForMacAddress_cold_3(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformBluetoothAccessoryInformationPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#Bluetooth] Could not find plugin conforming to %@!", &v3, 0xCu);
}

BOOL _checkRequiresChargingCurrentLimit(uint64_t **a1, unsigned int a2, _WORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 0;
  }

  v8 = platform_systemInfo_deviceType();
  v9 = acc_authInfo_isAppleAccessory((v5 + 48));
  v10 = platform_power_batteryLevelPercent();
  v11 = *a1;

  return acc_policies_endpointRequiresChargingCurrentLimit(v11, v9, v8, a2, v10, a3);
}

uint64_t iap2_power_wakeUpdateHandler(uint64_t a1)
{
  Feature = iap2_feature_getFeature(a1, 0x10u);
  if (a1)
  {
    v3 = Feature;
    if (Feature)
    {
      if (*(a1 + 8))
      {
        if (*(Feature + 8) == 1)
        {
          v4 = gLogObjects;
          v5 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 37)
          {
            v6 = *(gLogObjects + 288);
          }

          else
          {
            v6 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v10 = 134218240;
              v11 = v4;
              OUTLINED_FUNCTION_3();
              v12 = v5;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v10, 0x12u);
            }
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(v3 + 8);
            v10 = 67109120;
            LODWORD(v11) = v7;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "powerDuringSleepType = %d, toggling acc_pwr on wake", &v10, 8u);
          }

          platform_system_resetLightningBusForEndpointWithUUID(*(a1 + 8));
        }

        v8 = *(a1 + 32);
        if (v8)
        {
          iAP2LinkRunLoopHandleResume(v8);
        }
      }
    }
  }

  return 1;
}

uint64_t _startFeatureFromDevice_6(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    Feature = iap2_feature_getFeature(a1, 0x10u);
    if (Feature)
    {
      v3 = Feature;
      *(Feature + 36) = -1;
      if ((acc_endpoint_isWireless(*v1) & 1) == 0 && !*(v3 + 4))
      {
        platform_power_setAvailableCurrent(*(v1 + 8), 0, 1);
      }

      if (*(v3 + 8) == 2)
      {
        return 1;
      }

      v4 = platform_power_powerDuringSleepSupported(*(v1 + 8));
      v5 = gLogObjects;
      v6 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v7 = *(gLogObjects + 288);
      }

      else
      {
        v7 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v14 = 134218240;
          *v15 = v5;
          OUTLINED_FUNCTION_3();
          v16 = v6;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v14, 0x12u);
        }
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v3 + 8);
        v14 = 67109376;
        *v15 = v11;
        *&v15[4] = 1024;
        *&v15[6] = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "powerDuringSleepType = %d, powerDuringSleepSupported = %d", &v14, 0xEu);
      }

      if (!v4)
      {
        return 1;
      }

      else
      {
        v12 = *(v1 + 8);
        v1 = 1;
        platform_power_setPowerDuringSleep(v12, 1);
      }
    }

    else
    {
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v10 = *(gLogObjects + 288);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v14 = 134218240;
          *v15 = v8;
          OUTLINED_FUNCTION_3();
          v16 = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v14, 0x12u);
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "pFeaturePower is NULL", &v14, 2u);
      }

      return 0;
    }
  }

  return v1;
}

void _parseIdentificationParamsPower_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _parseIdentificationParamsPower_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _parseIdentificationParamsPower_cold_8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _parseIdentificationParamsPower_cold_10()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _processPowerSourceUpdate_cold_2(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0)
  {
    v1 = 0;
  }

  v6 = 138412802;
  v7 = v1;
  OUTLINED_FUNCTION_3();
  v8 = v2;
  v9 = v3;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Check availableCurrentForDevice(ChargingCurrentLimit) for override, accessory %@, isValid %d, availableCurrentForDevice %d", &v6, 0x18u);
}

void _cbPowerSourceUpdateParams_cold_4()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void iap2_power_powerSourceUpdateHandler_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _cbAccessoryPowerUpdateParams_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void iap2_power_accessoryPowerUpdateHandler_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void iap2_power_updateHandler_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t iap2_deviceNotifications_deviceInfoUpdateHandler(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!iap2_feature_getFeature(a1, 8u))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_49(v3, 19977, v4);
  v5 = OUTLINED_FUNCTION_0_11();
  if (!iAP2MsgAddCFStringParam(v5, v6, v7, a2))
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_3_21();

  return iap2_sessionControl_sendOutgoingMessage(v8, v9);
}

uint64_t iap2_deviceNotifications_deviceLanguageUpdateHandler(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!iap2_feature_getFeature(a1, 8u))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_49(v3, 19978, v4);
  v5 = OUTLINED_FUNCTION_0_11();
  if (!iAP2MsgAddCFStringParam(v5, v6, v7, a2))
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_3_21();

  return iap2_sessionControl_sendOutgoingMessage(v8, v9);
}

uint64_t iap2_deviceNotifications_deviceTimeUpdateHandler(uint64_t a1, const __CFDictionary *a2)
{
  if (a1 && a2 && iap2_feature_getFeature(a1, 8u))
  {
    v4 = OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_49(v4, 19979, v5);
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    Value = CFDictionaryGetValue(a2, @"kCFACCDeviceNotifications_DeviceTimeUpdate_UnixTime");
    if (Value && CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr))
    {
      v7 = OUTLINED_FUNCTION_0_11();
      v11 = iAP2MsgAddU64Param(v7, v8, v9, v10) != 0;
    }

    else
    {
      v11 = 0;
    }

    v18 = -21846;
    v12 = CFDictionaryGetValue(a2, @"kCFACCDeviceNotifications_DeviceTimeUpdate_TimeZoneOffsetMinutes");
    if (v12 && CFNumberGetValue(v12, kCFNumberShortType, &v18) && iAP2MsgAddI16Param(a1 + 120, 0, 1, v18))
    {
      ++v11;
    }

    v17 = -86;
    v13 = CFDictionaryGetValue(a2, @"kCFACCDeviceNotifications_DeviceTimeUpdate_DaylightSavingsOffsetMinutes");
    if (v13 && CFNumberGetValue(v13, kCFNumberCharType, &v17) && iAP2MsgAddI8Param(a1 + 120, 0, 2, v17) || v11)
    {
      v14 = OUTLINED_FUNCTION_3_21();
      iap2_sessionControl_sendOutgoingMessage(v14, v15);
    }
  }

  return 0;
}

uint64_t iap2_deviceNotifications_wirelessCarPlayAvailabilityDidChangeHandler(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      return 0;
    }

    result = iap2_feature_getFeature(result, 8u);
    if (result)
    {
      v2 = result;
      v3 = iap2_accAuthentication_copyCertificateSerial(v1);
      isWirelessCarPlayAllowedForCertSerial = platform_CarPlay_isWirelessCarPlayAllowedForCertSerial(v3);
      isCarPlayPairedWithCertSerial = platform_CarPlay_isCarPlayPairedWithCertSerial(v3);
      if (v3)
      {
        CFRelease(v3);
      }

      v6 = gLogObjects;
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 28)
      {
        v8 = *(gLogObjects + 216);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v18 = 134218240;
          *v19 = v6;
          *&v19[8] = 1024;
          *v20 = v7;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v18);
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = v2[4];
        v11 = v2[2];
        v12 = v2[1];
        v13 = *(v1 + 8);
        v18 = 67110402;
        *v19 = isWirelessCarPlayAllowedForCertSerial;
        *&v19[4] = 1024;
        *&v19[6] = isCarPlayPairedWithCertSerial;
        *v20 = 1024;
        *&v20[2] = v10;
        v21 = 1024;
        v22 = v11;
        v23 = 1024;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "wirelessCarPlayAvailabilityDidChangeHandler: wirelessCarPlayAvailable: %d, carPlayPaired: %d, pfeature->wirelessCarPlayAvailable: %d, pFeature->firstWirelessCarPlayAvailabilityNotificationSeen: %d, requestedDeviceTransportIdentifierNotification: %d, endpoint: %@", &v18, 0x2Au);
      }

      if (*v2 == 1)
      {
        if (v2[4] == isWirelessCarPlayAllowedForCertSerial && (v2[2] & 1) != 0)
        {
          v14 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 28)
          {
            v15 = *(gLogObjects + 216);
          }

          else
          {
            v15 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_7();
              *v20 = v14;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v18);
            }
          }

          v16 = 1;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v18) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Wireless CarPlay availability didn't change for this accessory - ignoring notification", &v18, 2u);
          }
        }

        else
        {
          OUTLINED_FUNCTION_49(v1 + 120, 19981, *(v1 + 192));
          iAP2MsgAddU8Param(v1 + 120, 0, 0, isWirelessCarPlayAllowedForCertSerial);
          v16 = iap2_sessionControl_sendOutgoingMessage(v1, v1 + 120);
        }
      }

      else
      {
        v16 = 1;
      }

      if (v2[1] == 1 && (v2[3] & 1) == 0 && isWirelessCarPlayAllowedForCertSerial && ((isCarPlayPairedWithCertSerial ^ 1) & 1) == 0)
      {
        if ((v16 & _sendTransportIdentifiers(v1)) == 1)
        {
          v2[3] = 1;
          if ((*v2 & 1) == 0)
          {
            platform_deviceNotifications_removeSubscriber(3u, *(v1 + 8));
          }

          goto LABEL_26;
        }
      }

      else if (v16)
      {
LABEL_26:
        result = 1;
        v2[2] = 1;
LABEL_35:
        v2[4] = isWirelessCarPlayAllowedForCertSerial;
        return result;
      }

      result = 0;
      goto LABEL_35;
    }
  }

  return result;
}

uint64_t _sendTransportIdentifiers(uint64_t result)
{
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_49(result + 120, 19982, *(result + 192));
    v2 = platform_systemInfo_copyBluetoothMACAddress();
    v3 = platform_systemInfo_copyUniqueDeviceID();
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 28;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v5, v6, v7, v8, v9);
      }
    }

    else
    {
      v10 = *(gLogObjects + 216);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0x16u);
    }

    v15 = OUTLINED_FUNCTION_0_11();
    v18 = iAP2MsgAddCFStringParam(v15, v16, v17, v2);
    v19 = (iAP2MsgAddCFStringParam(v1 + 120, 0, 1, v3) | v18) != 0;
    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v19)
    {
      v20 = OUTLINED_FUNCTION_3_21();
      iap2_sessionControl_sendOutgoingMessage(v20, v21);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *_createFeature_9(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 5uLL, 0x1000040957D8CC4uLL);
  if (!result)
  {
    return 0;
  }

  result[4] = 0;
  *result = 0;
  return result;
}

uint64_t _destroyFeature_9(void **a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      platform_deviceNotifications_removeSubscriber(5u, v5);
    }

    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }
  }

  return v3;
}

uint64_t _startFeatureFromDevice_7(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 28;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41);
    }
  }

  else
  {
    v4 = *(gLogObjects + 216);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v41[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Device Notifications...", v41, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  if (!**a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 8u);
  if (!Feature)
  {
    return 0;
  }

  v6 = Feature;
  if (!iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Cu))
  {
    goto LABEL_19;
  }

  v7 = OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_49(v7, 19980, v8);
  v9 = acc_manager_copyDeviceUUID();
  v10 = OUTLINED_FUNCTION_0_11();
  v13 = iAP2MsgAddCFStringParam(v10, v11, v12, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_3_21();
    iap2_sessionControl_sendOutgoingMessage(v14, v15);
LABEL_19:
    v16 = 1;
    goto LABEL_20;
  }

  v16 = 0;
LABEL_20:
  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E09u))
  {
    platform_deviceNotifications_addSubscriber(0, *(a1 + 8), v17);
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Au))
  {
    platform_deviceNotifications_addSubscriber(1u, *(a1 + 8), v18);
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Bu))
  {
    platform_deviceNotifications_addSubscriber(2u, *(a1 + 8), v19);
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Du))
  {
    platform_deviceNotifications_addSubscriber(3u, *(a1 + 8), v20);
    *v6 = 1;
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Eu))
  {
    v6[1] = 1;
    v21 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 28)
    {
      v22 = *(gLogObjects + 216);
    }

    else
    {
      v22 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_7();
        v44[0] = v21;
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v35, v36, v37, v38, v39);
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      isIdentifiedForCarPlay = iap2_identification_isIdentifiedForCarPlay(a1);
      isIdentifiedForUSBCarPlay = iap2_identification_isIdentifiedForUSBCarPlay(a1);
      isIdentifiedForWirelessCarPlay = iap2_identification_isIdentifiedForWirelessCarPlay(a1);
      v41[0] = 67109632;
      v41[1] = isIdentifiedForCarPlay;
      v42 = 1024;
      v43 = isIdentifiedForUSBCarPlay;
      LOWORD(v44[0]) = 1024;
      *(v44 + 2) = isIdentifiedForWirelessCarPlay;
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v26, v27, OS_LOG_TYPE_INFO, v28, v29, 0x14u);
    }

    Type = acc_connection_getType(**a1);
    if (!iap2_identification_isIdentifiedForUSBCarPlay(a1) || (Type != 6 ? (v31 = Type == 1) : (v31 = 1), !v31))
    {
      if (iap2_identification_isIdentifiedForWirelessCarPlay(a1))
      {
        platform_deviceNotifications_addSubscriber(3u, *(a1 + 8), v32);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 28)
        {
          v33 = *(gLogObjects + 216);
        }

        else
        {
          v33 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41);
          }
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41[0]) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Non-CarPlay accessory requested Device Transport Identifiers, ignoring...", v41, 2u);
        }
      }

      return v16;
    }

    if ((v16 & _sendTransportIdentifiers(a1)) == 1)
    {
      v16 = 1;
      v6[3] = 1;
      return v16;
    }

    return 0;
  }

  return v16;
}

void main_cold_8(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_4_20(&_mh_execute_header, v4, v5, "mainBundle: %@");
}

void main_cold_10(void *a1)
{
  v3 = OUTLINED_FUNCTION_3_22(a1);
  *v2 = 138412290;
  *(v2 + 4) = v3;
  OUTLINED_FUNCTION_2_24(&_mh_execute_header, v4, v5, "mainBundle.bundlePath: %@");
}

void main_cold_12(void *a1)
{
  v3 = OUTLINED_FUNCTION_3_22(a1);
  *v2 = 138412290;
  *(v2 + 4) = v3;
  OUTLINED_FUNCTION_2_24(&_mh_execute_header, v4, v5, "mainBundle.bundleIdentifier: %@");
}

void main_cold_14(void *a1)
{
  v3 = OUTLINED_FUNCTION_3_22(a1);
  *v2 = 138412290;
  *(v2 + 4) = v3;
  OUTLINED_FUNCTION_2_24(&_mh_execute_header, v4, v5, "mainBundle.builtInPlugInsPath: %@");
}

void main_cold_16(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "mainBundle.localizations: %@", buf, 0xCu);
}

void main_cold_18(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "mainBundle.preferredLocalizations: %@", buf, 0xCu);
}

void main_cold_20(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_4_20(&_mh_execute_header, v4, v5, "acc_strings_bundle: %@");
}

void platform_externalAccessory_addEAAccessoryForPrimaryEndpoint(const void *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v43 = 134218240;
      *&v43[4] = v2;
      OUTLINED_FUNCTION_3();
      *&v43[14] = v3;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32, *v43, *&v43[16]);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v43 = 138412290;
    *&v43[4] = a1;
    OUTLINED_FUNCTION_3_3();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  if (qword_100246100 != -1)
  {
    dispatch_once(&qword_100246100, &__block_literal_global_16);
  }

  v12 = acc_manager_copyConnectionUUIDForEndpointUUID(a1);
  if (v12)
  {
    v13 = v12;
    ConnectionWithUUID = acc_manager_getConnectionWithUUID(v12);
    if (!ConnectionWithUUID)
    {
      CFRelease(v13);
LABEL_28:
      v22 = [[ACCExternalAccessory alloc] initWithEndpointUUIDs:0 primaryEndpointUUID:a1];
      if (v22)
      {
        p_super = &v22->super;
        [_MergedGlobals_1 lock];
        [gConnectedExternalAccessories addObject:p_super];
        [_MergedGlobals_1 unlock];
        _postFindAppAlert(p_super);
        platform_digitalAudio_eaAccessoryAttached();
        v24 = +[ACCExternalAccessoryServer sharedServer];
        [v24 externalAccessoryArrived:p_super];
      }

      else
      {
        v25 = gLogObjects;
        v26 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 10)
        {
          p_super = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *v43 = 134218240;
            *&v43[4] = v25;
            OUTLINED_FUNCTION_3();
            *&v43[14] = v26;
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42);
          }

          p_super = &_os_log_default;
          v27 = &_os_log_default;
        }

        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Could not create ACCExternalAccessory object for EA endpoints", v43, 2u);
        }
      }

      return;
    }

    v15 = acc_connection_copyProperty(ConnectionWithUUID, kCFACCProperties_Connection_HideFromEA);
    v16 = v15;
    if (v15)
    {
      CFRelease(v15);
    }

    v17 = gLogObjects;
    v18 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v19 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v43 = 134218240;
        *&v43[4] = v17;
        OUTLINED_FUNCTION_3();
        *&v43[14] = v18;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34, v35, v36, v37, *v43, *&v43[8]);
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "no";
      if (!v16)
      {
        v21 = "yes";
      }

      *v43 = 136315138;
      *&v43[4] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "connectionSupportsEA = %s", v43, 0xCu);
    }

    CFRelease(v13);
    if (!v16)
    {
      goto LABEL_28;
    }
  }
}

void _sendEAPowerSourceUpdate(uint64_t a1, int a2)
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_44;
  }

  v4 = gWiredConnectionSessionCountDict;
  if (!gWiredConnectionSessionCountDict)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = gWiredConnectionSessionCountDict;
    gWiredConnectionSessionCountDict = v5;

    v4 = gWiredConnectionSessionCountDict;
  }

  v7 = [v4 objectForKey:*(a1 + 8)];
  v8 = v7;
  if (a2 == 2)
  {
    if (!v7)
    {
      v8 = &off_100233DF8;
      goto LABEL_14;
    }

    v9 = 1;
    goto LABEL_10;
  }

  if (a2 == 1 && v7)
  {
    v9 = -1;
LABEL_10:
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 unsignedIntValue] + v9);

    v8 = v10;
  }

  if (!v8)
  {
    v11 = 0;
    goto LABEL_19;
  }

LABEL_14:
  if ([v8 unsignedIntValue])
  {
    if ([v8 unsignedIntValue])
    {
      [gWiredConnectionSessionCountDict setObject:v8 forKey:*(a1 + 8)];
    }
  }

  else
  {
    [gWiredConnectionSessionCountDict removeObjectForKey:*(a1 + 8)];
  }

  v11 = 1;
LABEL_19:
  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v14 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v32 = 134218240;
      *&v32[4] = v12;
      OUTLINED_FUNCTION_3();
      *&v32[14] = v13;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v22, v23, v24, v25, *v32, *&v32[16]);
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v32 = 138412290;
    *&v32[4] = gWiredConnectionSessionCountDict;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "gWiredConnectionSessionCountDict: %@", v32, 0xCu);
  }

  if (a2 == 2)
  {
    if ([v8 unsignedIntValue] != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  v16 = v11 ^ 1;
  if (a2 != 1)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0 && ![v8 unsignedIntValue])
  {
LABEL_34:
    if ((platform_power_setExternalAccessoryPowerMode(*(a1 + 16), 1, a2 == 2) & 1) == 0)
    {
      v17 = gLogObjects;
      v18 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v19 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v32 = 134218240;
          *&v32[4] = v17;
          OUTLINED_FUNCTION_3();
          *&v32[14] = v18;
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v28, v29, v30, v31);
        }

        v19 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 16);
        *v32 = 138412290;
        *&v32[4] = v26;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error setting AccessoryPowerMode for endpoint: %@", v32, 0xCu);
      }
    }
  }

LABEL_44:
}

uint64_t platform_externalAccessory_verifyPrimaryEndpointConnected(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v57 = [a2 unsignedLongLongValue];
  v3 = &audioProductCerts_endpoint_publish_onceToken;
  [_MergedGlobals_1 lock];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = gConnectedExternalAccessories;
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v59;
    *&v6 = 138412546;
    v56 = v6;
    *&v6 = 134218240;
    v55 = v6;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        v11 = [v10 primaryEndpointUUID];
        v12 = [v11 isEqualToString:a1];

        if (v12)
        {
          v13 = [v10 EAConnectionID];
          v14 = [v13 unsignedLongLongValue];

          if (gLogObjects)
          {
            v15 = gNumLogObjects <= 9;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (v57 == v14)
          {
            if (v16)
            {
              v36 = *(gLogObjects + 72);
              v3 = &audioProductCerts_endpoint_publish_onceToken;
            }

            else
            {
              v37 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              v3 = &audioProductCerts_endpoint_publish_onceToken;
              if (v37)
              {
                OUTLINED_FUNCTION_3_23(v37, v38, v39, v40, v41, v42, v43, v44, v55);
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v36 = &_os_log_default;
              v45 = &_os_log_default;
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v46 = [v10 primaryEndpointUUID];
              OUTLINED_FUNCTION_5_18(v46, v47, v48, v49, v50, v51, v52, v53, v55, *(&v55 + 1), v56);
              v63 = v57;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@ primaryEndpointUUID, legacy EAConnectionID %llu is currently connected", buf, 0x16u);
            }

            v35 = 1;
            goto LABEL_35;
          }

          if (v16)
          {
            v17 = *(gLogObjects + 72);
          }

          else
          {
            v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            if (v18)
            {
              OUTLINED_FUNCTION_3_23(v18, v19, v20, v21, v22, v23, v24, v25, v55);
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v26 = &_os_log_default;
            v17 = &_os_log_default;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v10 primaryEndpointUUID];
            OUTLINED_FUNCTION_5_18(v27, v28, v29, v30, v31, v32, v33, v34, v55, *(&v55 + 1), v56);
            v63 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "found %@ primaryEndpointUUID, but legacy EAConnectionID that is currently connected is %llu", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v35 = 0;
    v3 = &audioProductCerts_endpoint_publish_onceToken;
  }

  else
  {
    v35 = 0;
  }

LABEL_35:

  [v3[31] unlock];
  return v35;
}

void _platform_externalAccessory_EASessionClosed(void *a1)
{
  v1 = a1;
  if (v1 && gWiredEASessionUUIDs && [gWiredEASessionUUIDs containsObject:v1])
  {
    [gWiredEASessionUUIDs removeObject:v1];
    v2 = gLogObjects;
    v3 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v4 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v25 = 134218240;
        *&v25[4] = v2;
        OUTLINED_FUNCTION_3();
        *&v25[14] = v3;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v16, v17, v18, v19, *v25, *&v25[16]);
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v25 = 134217984;
      *&v25[4] = [gWiredEASessionUUIDs count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "after close EA session, gWiredEASessionUUIDs count = %lu", v25, 0xCu);
    }

    if (![gWiredEASessionUUIDs count])
    {
      v6 = gLogObjects;
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v8 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v25 = 134218240;
          *&v25[4] = v6;
          OUTLINED_FUNCTION_3();
          *&v25[14] = v7;
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v21, v22, v23, v24);
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        OUTLINED_FUNCTION_3_3();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
      }

      platform_sleepAssertion_destroyEA();
    }
  }
}

void _handleEAPowerSourceChange(uint64_t *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    if ((acc_endpoint_isWireless(a1) & 1) == 0)
    {
      Protocol = acc_endpoint_getProtocol(v3);
      if (Protocol == 6)
      {
        v5 = _findiAP2EndpointForConnection(*v3);
        if (!v5)
        {
          return;
        }

        v3 = v5;
      }

      else if (Protocol != 4)
      {
        return;
      }

      _sendEAPowerSourceUpdate(v3, a2);
    }
  }
}

unint64_t platform_externalAccessory_sendOutgoingEADataFromClient(const __CFString *a1, void *a2)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  v5 = EndpointWithUUID;
  if (!EndpointWithUUID)
  {
    return v5;
  }

  if (EndpointWithUUID[120])
  {
    return 0;
  }

  if (acc_endpoint_getProtocol(EndpointWithUUID) != 4 || (v6 = *(v5 + 56)) == 0 || !iap2_endpoint_isInitialized(v6))
  {
    if (acc_endpoint_getProtocol(v5) == 5 || acc_endpoint_getProtocol(v5) == 7)
    {
      v8 = a2;
      Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
      v10 = [v8 objectForKey:kACCExternalAccessorySessionUUIDKey];
      v11 = gLogObjects;
      v12 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v13 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v21 = 134218240;
          *&v21[4] = v11;
          OUTLINED_FUNCTION_3();
          *&v21[14] = v12;
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17, v18, v19, v20, *v21, *&v21[16]);
        }

        v13 = &_os_log_default;
        v14 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 138412290;
        *&v21[4] = Copy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending outgoing EA data to endpointUUID %@", v21, 0xCu);
      }

      v15 = [v8 objectForKey:kACCExternalAccessorySessionDataKey];
      acc_platform_packetLogging_logEAData(v5, v10, v15, 0);
      v5 = acc_endpoint_sendOutgoingData(v5, v15);

      return v5;
    }

    return 0;
  }

  return accFeatureHandlers_invokeHandler(a1, 28, a2);
}

unint64_t platform_externalAccessory_outgoingEADataFromClientAvailable(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v5 = EndpointWithUUID;
  if ((EndpointWithUUID[120] & 1) != 0 || acc_endpoint_getProtocol(EndpointWithUUID) != 4)
  {
    return 0;
  }

  v6 = *(v5 + 7);
  if (!v6 || !iap2_endpoint_isInitialized(v6))
  {
    v8 = gLogObjects;
    v9 = HIWORD(gNumLogObjects);
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v10 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v22) = 134218240;
        HIDWORD(v22) = v8;
        OUTLINED_FUNCTION_3();
        LOWORD(v23) = v9;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v18, v19, v20, v21, v22, HIDWORD(v8), v23);
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_3();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    }

    return 0;
  }

  return accFeatureHandlers_invokeHandler(a1, 29, a2);
}

void platform_externalAccessory_addEAAccessoryForEAEndpoints_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "platform_externalAccessory_addEAAccessoryForEAEndpoints: endpointUUIDs: %@, primaryEndpointUUID: %@", &v3, 0x16u);
}

void platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint_cold_2(void *a1, NSObject *a2)
{
  v3 = [a1 primaryEndpointUUID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Removing accessory primaryEndpointUUID %@", &v4, 0xCu);
}

void platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus_cold_6(unsigned __int8 a1, int a2, os_log_t log)
{
  v3 = 136315906;
  v4 = "platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  v9 = 2112;
  v10 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ERROR: %s: result=%d connectionID=%u macAddr=%@, invalid macAddr! skip update!", &v3, 0x22u);
}

void platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus_cold_8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s Couldn't find EA accessory to notify with primary endpointUUID %@", &v2, 0x16u);
}

void _sendUpdateForUUID_cold_2(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[#Device Notifications] Sending update for notification type: %{coreacc:ACCDeviceNotification_t}d to endpoint %@...", v3, 0x12u);
}

void ___addObserversForNotification_block_invoke_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, a2, a3, "[#Device Notifications] %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

uint64_t acc_protocolParser_iAP1_create(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10100408DD85393uLL);
  *a1 = v2;
  if (!v2)
  {
    return 0;
  }

  *v2 = 0;
  v2[2] = 0;
  *(v2 + 1) = 0;
  v2[8] = 0;
  v3 = 1;
  *(v2 + 18) = 0;
  return v3;
}

BOOL acc_protocolParser_iAP1_reset(uint64_t a1)
{
  if (a1)
  {
    *a1 = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 18) = 0;
  }

  return a1 != 0;
}

void acc_protocolParser_iAP1_run_cold_14(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "iAP1 Payload Length: %d", v3, 8u);
}

uint64_t loggingProtocol_handleMessage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  if (a1 && a3)
  {
    LODWORD(v6) = a2;
    v8 = *(a3 + 8);
    if (v8 != 2)
    {
      if (v8 == 1)
      {
        return 1;
      }

      if (!v8 && a2 >= 2 && __rev16(*a1) == 2)
      {
        if (a2 >= 5)
        {
          if (*(a1 + 4) == 1)
          {
            CurrentTimeInNanoseconds = loggingProtocol_getCurrentTimeInNanoseconds();
            if (v6 >= 0x1E)
            {
              v10 = 0;
              v11 = *(a1 + 29);
              if (!*(a1 + 29))
              {
                v12 = 0;
                v13 = 0;
                goto LABEL_166;
              }

              v12 = 0;
              v13 = 0;
              if (v11 + 30 > v6)
              {
LABEL_166:
                free(v10);
                free(v12);
                free(v13);
                return 0;
              }

              v14 = CurrentTimeInNanoseconds;
              v15 = *(a1 + 5);
              *v210 = *(a1 + 13);
              v10 = strndup(a1 + 30, v11 - 1);
              v16 = v11 + 30;
              if (v11 + 30 < v6)
              {
                v12 = 0;
                v17 = *(a1 + v16);
                if (!*(a1 + v16) || (v18 = v11 + 31, v17 + v18 > v6))
                {
                  v13 = 0;
                  goto LABEL_166;
                }

                v12 = strndup(a1 + v18, v17 - 1);
                v19 = v18 + v17;
                if (v18 + v17 < v6)
                {
                  v13 = 0;
                  v20 = *(a1 + v19);
                  if (*(a1 + v19))
                  {
                    v21 = v19 + 1;
                    if (v20 + v19 + 1 <= v6)
                    {
                      v22 = strndup(a1 + v21, v20 - 1);
                      v13 = v22;
                      if (v21 + v20 == v6 && v10 && v12 && v22)
                      {
                        *(a3 + 40) = v14;
                        *(a3 + 48) = bswap64(v15);
                        *(a3 + 56) = 1;
                        *(a3 + 57) = *v210;
                        free(*(a3 + 80));
                        *(a3 + 80) = v10;
                        free(*(a3 + 96));
                        *(a3 + 96) = v12;
                        free(*(a3 + 88));
                        *(a3 + 88) = v13;
                        v213 = 1;
                        v23 = gLogObjects;
                        v24 = gNumLogObjects;
                        if (gLogObjects && gNumLogObjects >= 53)
                        {
                          v25 = *(gLogObjects + 416);
                        }

                        else
                        {
                          v25 = &_os_log_default;
                          if (OUTLINED_FUNCTION_17())
                          {
                            *__s2 = 134218240;
                            *&__s2[4] = v23;
                            *&__s2[12] = 1024;
                            *&__s2[14] = v24;
                            OUTLINED_FUNCTION_4_21();
                            _os_log_error_impl(v104, v105, v106, v107, v108, v109);
                          }
                        }

                        if (OUTLINED_FUNCTION_75_0())
                        {
                          *__s2 = 136315394;
                          *&__s2[4] = v10;
                          *&__s2[12] = 1024;
                          *&__s2[14] = 1;
                          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Logging Protocol Session Sync Received. AccessoryName: %s, Protocol Version: %d", __s2, 0x12u);
                        }

                        if (loggingProtocol_sendMessage(3, &v213, a3))
                        {
                          *(a3 + 8) = 1;
                        }

                        v41 = *(a3 + 32);
                        if (v41)
                        {
                          if (*v41)
                          {
                            EndpointWithUUID = acc_manager_getEndpointWithUUID(*v41);
                            if (EndpointWithUUID)
                            {
                              v43 = EndpointWithUUID[7];
                              if (v43)
                              {
                                v44 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v43 + 24));
                                *(v41 + 72) = v44;
                                *handler = _NSConcreteStackBlock;
                                *&handler[8] = 0x40000000;
                                *&handler[16] = __handleMessage_sessionSync_block_invoke;
                                *&handler[24] = &__block_descriptor_tmp_6;
                                *&handler[32] = a3;
                                dispatch_source_set_event_handler(v44, handler);
                                v45 = *(v41 + 72);
                                v46 = dispatch_time(0, 5000000000);
                                dispatch_source_set_timer(v45, v46, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                                dispatch_activate(*(v41 + 72));
                                iap2_sessionLog_writeSessionSyncToFile(a3);
                                return 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_166;
                }

                goto LABEL_165;
              }

LABEL_164:
              v12 = 0;
LABEL_165:
              v13 = 0;
              goto LABEL_166;
            }
          }

          else
          {
            __s2[0] = 1;
            loggingProtocol_sendMessage(3, __s2, a3);
          }
        }

        v10 = 0;
        goto LABEL_164;
      }

      return 0;
    }

    if (a2 < 2)
    {
      return 0;
    }

    v4 = 0;
    switch(__rev16(*a1))
    {
      case 0u:
        *&handler[48] = 0xAAAAAAAAAAAAAAAALL;
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&handler[16] = v26;
        *&handler[32] = v26;
        *handler = v26;
        if ((a2 - 513) < 0xFE07u)
        {
          goto LABEL_161;
        }

        v27 = bswap32(*(a1 + 1));
        v28 = *(a3 + 32);
        v30 = *(v28 + 16);
        v29 = *(v28 + 20);
        if (v30 == v29 || v27 - v30 > v29 + ~v30)
        {
          v100 = 0;
          v39 = 0;
          v40 = 0;
          goto LABEL_146;
        }

        if (a2 <= 0x10 || ((v32 = *(a1 + 16), a2 >= 0x12) ? (v33 = v32 > 1) : (v33 = 1), v33 || (v34 = *(a1 + 17), v34 + 18 > a2)))
        {
LABEL_161:
          v100 = 0;
          v39 = 0;
          v40 = 0;
          v4 = 0;
        }

        else
        {
          v35 = *(a1 + 1);
          v211 = strndup(a1 + 18, v34 - 1);
          v36 = v34 + 19;
          if (v34 + 19 > v6 || (v37 = *(a1 + v34 + 18), v38 = v36 + v37, v36 + v37 > v6))
          {
            v39 = 0;
            v40 = 0;
            v4 = 0;
            v100 = v211;
          }

          else
          {
            v39 = strndup(a1 + v36, v37 - 1);
            if (v38 >= v6)
            {
              v40 = 0;
            }

            else
            {
              v40 = strndup(a1 + v38, (v6 - v38) - 1);
            }

            v4 = 0;
            v100 = v211;
            if (v211 && v39)
            {
              v101 = *(a3 + 40) + bswap64(v35) - *(a3 + 48);
              *handler = v27;
              *&handler[8] = v101;
              *&handler[16] = v32;
              handler[20] = v34;
              *&handler[24] = v211;
              handler[32] = v37;
              *&handler[40] = v39;
              *&handler[48] = v40;
              iap2_sessionLog_writeLogEntryToFile(handler, a3);
LABEL_146:
              v4 = 1;
            }
          }
        }

        free(v100);
        free(v39);
        v102 = v40;
        goto LABEL_152;
      case 1u:
        *__s2 = 0;
        *&__s2[8] = 0;
        *&handler[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v53 = 0xAAAAAAAAAAAAAAAALL;
        *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *handler = v53;
        *&handler[16] = v53;
        if (!memcmp((a3 + 57), __s2, 0x10uLL))
        {
          goto LABEL_130;
        }

        if ((v6 - 513) < 0xFE07u)
        {
          goto LABEL_194;
        }

        v54 = bswap32(*(a1 + 1));
        v55 = *(a3 + 32);
        v57 = *(v55 + 16);
        v56 = *(v55 + 20);
        if (v57 == v56 || v54 - v57 > v56 + ~v57)
        {
          goto LABEL_130;
        }

        if (v6 <= 0x10)
        {
          goto LABEL_194;
        }

        v59 = *(a1 + 16);
        if (v6 < 0x15 || v59 > 1)
        {
          goto LABEL_194;
        }

        if (v6 == 21)
        {
          goto LABEL_194;
        }

        v61 = *(a1 + 21);
        if (8 * v61 + 22 != v6)
        {
          goto LABEL_194;
        }

        v62 = *(a1 + 1);
        v63 = *(a1 + 17);
        if (*(a1 + 21))
        {
          v64 = malloc_type_malloc(8 * v61, 0x6A504332uLL);
          v65 = v64;
          if (!v64)
          {
            goto LABEL_195;
          }

          v66 = 0;
          v67 = 11;
          do
          {
            *&v64[v66] = bswap64(*&a1[v67]);
            v67 += 4;
            v66 += 8;
          }

          while (8 * v61 != v66);
        }

        else
        {
          v65 = 0;
        }

        v103 = *(a3 + 40) + bswap64(v62) - *(a3 + 48);
        *handler = v54;
        *&handler[8] = v103;
        *&handler[16] = v59;
        *&handler[20] = bswap32(v63);
        handler[24] = v61;
        *&handler[32] = v65;
        iap2_sessionLog_writeIndexBasedLogEntryToFile(handler, a3);
        goto LABEL_150;
      case 6u:
        if (a2 != 12)
        {
          return 0;
        }

        v88 = bswap32(*(a1 + 1));
        v89 = bswap32(*(a1 + 2));
        v90 = v89 + 1;
        v91 = *(a3 + 32);
        v92 = *(v91 + 36);
        if (v89 + 1 != *(v91 + 40) || ((v93 = v89 - v92, v88 != v92) ? (v94 = v88 - v92 > v93) : (v94 = 1), v94))
        {
          *(v91 + 9) = 1;
        }

        *(v91 + 32) = v92;
        *(v91 + 36) = v88;
        *(v91 + 40) = v90;
        logFetcher_processAvailabilityUpdate(a3);
        return 1;
      case 8u:
        logFetcher_performFetch(a3);
        return 1;
      case 9u:
        if (*(a3 + 112) == 1)
        {
          v166 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v166))
          {
            return 0;
          }

          *handler = 136315394;
          OUTLINED_FUNCTION_0_12();
          *&handler[14] = 0;
          goto LABEL_203;
        }

        OUTLINED_FUNCTION_7_10();
        if (!v47)
        {
          v170 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v170))
          {
            return 0;
          }

          goto LABEL_184;
        }

        OUTLINED_FUNCTION_10_12();
        if (v48 || !v47)
        {
          v182 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v182))
          {
            return 0;
          }

          goto LABEL_202;
        }

        v49 = *(a1 + 28);
        if (*(a1 + 28))
        {
          v197 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v197))
          {
            return 0;
          }

          *handler = 136315138;
          *&handler[4] = "handleMessage_binaryLogNotification";
          goto LABEL_210;
        }

        v95 = *(a1 + 1);
        v96 = gLogObjects;
        v97 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 53) && OUTLINED_FUNCTION_17())
        {
          *handler = 134218240;
          *&handler[4] = v96;
          OUTLINED_FUNCTION_49_2();
          *&handler[14] = v97;
          OUTLINED_FUNCTION_1_17();
          _os_log_error_impl(v134, v135, v136, v137, v138, 0x12u);
        }

        v98 = bswap32(v95);
        if (OUTLINED_FUNCTION_75_0())
        {
          goto LABEL_153;
        }

        goto LABEL_134;
      case 0xBu:
        if (*(a3 + 104))
        {
          OUTLINED_FUNCTION_7_10();
          if (!v47)
          {
            v167 = logObjectForModule_18();
            if (!OUTLINED_FUNCTION_16(v167))
            {
              return 0;
            }

LABEL_184:
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v6;
            goto LABEL_203;
          }

          OUTLINED_FUNCTION_10_12();
          if (v48 || !v47)
          {
            v172 = logObjectForModule_18();
            if (!OUTLINED_FUNCTION_16(v172))
            {
              return 0;
            }

LABEL_202:
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v3;
LABEL_203:
            OUTLINED_FUNCTION_4_21();
LABEL_211:
            _os_log_error_impl(v184, v185, v186, v187, v188, v189);
            return 0;
          }

          v49 = *(a1 + 28);
          if (*(a3 + 108) == v49)
          {
            v50 = *(a1 + 1);
            v51 = gLogObjects;
            v52 = gNumLogObjects;
            if ((!gLogObjects || gNumLogObjects < 53) && OUTLINED_FUNCTION_17())
            {
              *handler = 134218240;
              *&handler[4] = v51;
              OUTLINED_FUNCTION_49_2();
              *&handler[14] = v52;
              OUTLINED_FUNCTION_1_17();
              _os_log_error_impl(v124, v125, v126, v127, v128, 0x12u);
            }

            v98 = bswap32(v50);
            if (OUTLINED_FUNCTION_75_0())
            {
LABEL_153:
              OUTLINED_FUNCTION_5_19();
              OUTLINED_FUNCTION_6_16();
              _os_log_debug_impl(v114, v115, OS_LOG_TYPE_DEBUG, v116, v117, 0x28u);
            }

LABEL_134:
            sendMessage_requestBinaryLogFileInfo(a3, v98, v49);
            return 1;
          }

          v190 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v190))
          {
            return 0;
          }

          *handler = 136315138;
          *&handler[4] = "handleMessage_binaryLogAvailable";
        }

        else
        {
          v155 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v155))
          {
            return 0;
          }

          *handler = 136315138;
          *&handler[4] = "handleMessage_binaryLogAvailable";
        }

LABEL_210:
        OUTLINED_FUNCTION_13_0();
        v189 = 12;
        goto LABEL_211;
      case 0xDu:
        OUTLINED_FUNCTION_7_10();
        if (!v47)
        {
          v156 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v156))
          {
            goto LABEL_194;
          }

          *handler = 136315394;
          OUTLINED_FUNCTION_0_12();
          *&handler[14] = v6;
          goto LABEL_216;
        }

        v212 = bswap32(*(a1 + 1));
        if (*(a3 + 112) == 1)
        {
          sendMessage_stopBinaryLogFile(a3, v212, 2);
        }

        else
        {
          v68 = bswap32(*(a1 + 2));
          if (v68 - 524289 > 0xFFF7FFFF)
          {
            v69 = *(a1 + 6);
            v70 = *(a1 + 10);
            v71 = *(a1 + 29);
            v72 = v71 - 1;
            v73 = strndup(a1 + 30, v71 - 1);
            v65 = v73;
            v74 = *(a1 + v71 + 30);
            if (!*(a1 + v71 + 30))
            {
              v75 = bswap64(v69);
              v76 = bswap64(v70);
              *(a3 + 128) = v75;
              *(a3 + 136) = v76;
              *(a3 + 144) = v71;
              *(a3 + 152) = v73;
              *(a3 + 160) = v74;
              *(a3 + 120) = v212;
              *(a3 + 124) = v68;
              *(a3 + 116) = 0;
              *(a3 + 112) = 1;
              v77 = gLogObjects;
              v78 = gNumLogObjects;
              if ((!gLogObjects || gNumLogObjects < 53) && OUTLINED_FUNCTION_17())
              {
                *handler = 134218240;
                *&handler[4] = v77;
                OUTLINED_FUNCTION_49_2();
                *&handler[14] = v78;
                OUTLINED_FUNCTION_1_17();
                _os_log_error_impl(v129, v130, v131, v132, v133, 0x12u);
              }

              if (OUTLINED_FUNCTION_75_0())
              {
                *handler = 67110402;
                *&handler[4] = v212;
                *&handler[8] = 1024;
                *&handler[10] = v68;
                *&handler[14] = 2048;
                *&handler[16] = v75;
                *&handler[24] = 2048;
                *&handler[26] = v76;
                *&handler[34] = 1024;
                *&handler[36] = v74;
                *&handler[40] = 2080;
                *&handler[42] = v65;
                OUTLINED_FUNCTION_6_16();
                _os_log_debug_impl(v110, v111, OS_LOG_TYPE_DEBUG, v112, v113, 0x32u);
              }

              writeMessage_binaryBlock(v65, v72, a3);
              sendMessage_requestBinaryLogSegment(a3, v212, 0);
LABEL_130:
              v65 = 0;
LABEL_150:
              v4 = 1;
LABEL_151:
              v102 = v65;
LABEL_152:
              free(v102);
              return v4;
            }

            v191 = logObjectForModule_18();
            if (OUTLINED_FUNCTION_16(v191))
            {
              *handler = 136315138;
              *&handler[4] = "handleMessage_binaryLogFileInfo";
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v192, v193, v194, v195, v196, 0xCu);
            }

LABEL_195:
            v4 = 0;
            goto LABEL_151;
          }

          v174 = logObjectForModule_18();
          if (OUTLINED_FUNCTION_16(v174))
          {
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v68;
LABEL_216:
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v204, v205, v206, v207, v208, v209);
          }
        }

LABEL_194:
        v65 = 0;
        goto LABEL_195;
      case 0x10u:
        OUTLINED_FUNCTION_7_10();
        if (!v47)
        {
          v158 = logObjectForModule_18();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v6;
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v160, v161, v162, v163, v164, v165);
          }

          v79 = 0;
          goto LABEL_199;
        }

        v79 = bswap32(*(a1 + 1));
        if (v79 == *(a3 + 120))
        {
          if (*(a3 + 112))
          {
            v6 = bswap32(*(a1 + 3));
            if (v6)
            {
              v80 = *(a3 + 124);
              v81 = *(a3 + 116);
              v47 = v80 >= v81;
              v82 = v80 - v81;
              if (v82 != 0 && v47 && v6 <= v82)
              {
                *(a3 + 116) = v81 + v6;
                v84 = malloc_type_malloc(v6, 0xB2E00847uLL);
                if (v84)
                {
                  v85 = v84;
                  memcpy(v84, a1 + 8, v6);
                  v86 = gLogObjects;
                  v87 = gNumLogObjects;
                  if ((!gLogObjects || gNumLogObjects < 53) && OUTLINED_FUNCTION_17())
                  {
                    *handler = 134218240;
                    *&handler[4] = v86;
                    OUTLINED_FUNCTION_49_2();
                    *&handler[14] = v87;
                    OUTLINED_FUNCTION_1_17();
                    _os_log_error_impl(v139, v140, v141, v142, v143, 0x12u);
                  }

                  if (OUTLINED_FUNCTION_75_0())
                  {
                    *handler = 67109378;
                    *&handler[4] = v79;
                    *&handler[8] = 2080;
                    *&handler[10] = v85;
                    OUTLINED_FUNCTION_6_16();
                    _os_log_debug_impl(v118, v119, OS_LOG_TYPE_DEBUG, v120, v121, 0x12u);
                  }

                  writeMessage_binaryBlock(v85, v6, a3);
                  v99 = *(a3 + 116);
                  if (v99 == *(a3 + 124))
                  {
                    v122 = gLogObjects;
                    v123 = gNumLogObjects;
                    if ((!gLogObjects || gNumLogObjects < 53) && OUTLINED_FUNCTION_17())
                    {
                      *handler = 134218240;
                      *&handler[4] = v122;
                      OUTLINED_FUNCTION_49_2();
                      *&handler[14] = v123;
                      OUTLINED_FUNCTION_1_17();
                      _os_log_error_impl(v144, v145, v146, v147, v148, 0x12u);
                    }

                    if (OUTLINED_FUNCTION_75_0())
                    {
                      *handler = 0;
                      OUTLINED_FUNCTION_6_16();
                      _os_log_debug_impl(v149, v150, OS_LOG_TYPE_DEBUG, v151, v152, 2u);
                    }

                    sendMessage_stopBinaryLogFile(a3, v79, 0);
                  }

                  else
                  {
                    sendMessage_requestBinaryLogSegment(a3, v79, v99);
                  }

                  return 1;
                }

                v198 = logObjectForModule_18();
                if (OUTLINED_FUNCTION_13_9(v198))
                {
                  *handler = 136315138;
                  *&handler[4] = "handleMessage_binaryLogSegment";
                  OUTLINED_FUNCTION_1_17();
                  _os_log_error_impl(v199, v200, v201, v202, v203, 0xCu);
                }

                v181 = 2;
LABEL_200:
                sendMessage_stopBinaryLogFile(a3, v79, v181);
                return 0;
              }
            }

            v154 = logObjectForModule_18();
            if (OUTLINED_FUNCTION_13_9(v154))
            {
              goto LABEL_171;
            }
          }

          else
          {
            v175 = logObjectForModule_18();
            if (OUTLINED_FUNCTION_13_9(v175))
            {
              *handler = 136315394;
              OUTLINED_FUNCTION_0_12();
              *&handler[14] = v79;
              goto LABEL_198;
            }
          }
        }

        else
        {
          v169 = logObjectForModule_18();
          if (OUTLINED_FUNCTION_13_9(v169))
          {
LABEL_171:
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v6;
LABEL_198:
            OUTLINED_FUNCTION_1_17();
            _os_log_error_impl(v176, v177, v178, v179, v180, 0x12u);
          }
        }

LABEL_199:
        v181 = 1;
        goto LABEL_200;
      default:
        return v4;
    }
  }

  return v4;
}

uint64_t loggingProtocol_requestAccessoryLogs(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    *(a2 + 104) = 1;
    *(a2 + 108) = result;
    v13 = xmmword_1001C3A90;
    LODWORD(v13) = result;
    v14 = -1;
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v6 = *(gLogObjects + 416);
    }

    else
    {
      v6 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        *v16 = v4;
        *&v16[8] = 1024;
        *&v16[10] = v5;
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v7, v8, v9, v10, v11, v12);
      }
    }

    if (OUTLINED_FUNCTION_75_0())
    {
      *buf = 67109632;
      *v16 = v3;
      *&v16[4] = 2048;
      *&v16[6] = 0;
      v17 = 2048;
      v18 = -1;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Sending RequestBinaryLogAvailable. LogPriority: %u, TimeStampStart: %llu, TimeStampEnd: %llu", buf, 0x1Cu);
    }

    return loggingProtocol_sendMessage(10, &v13, a2);
  }

  return result;
}

uint64_t sendMessage_stopBinaryLogFile(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v5 = result;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 116) = 0;
    v15[0] = a2;
    v15[1] = a3;
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v8 = *(gLogObjects + 416);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v17 = v6;
        *&v17[8] = 1024;
        v18 = v7;
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v9, v10, v11, v12, v13, v14);
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v17 = a2;
      *&v17[4] = 1024;
      *&v17[6] = a3;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Sending StopBinaryLogFile. LogFileID: %u, Status: %u", buf, 0xEu);
    }

    return loggingProtocol_sendMessage(14, v15, v5);
  }

  return result;
}

void logObjectForModule_cold_1_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sendMessage_requestBinaryLogFileInfo_cold_2(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Sending RequestBinaryLogFileInfo. LogFileID: %u, FilePriority: %u", v3, 0xEu);
}

void writeMessage_binaryBlock_cold_1()
{
  v0 = logObjectForModule_18();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void writeMessage_binaryBlock_cold_2()
{
  v0 = logObjectForModule_18();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __acc_auth_protocol_handleCertificateHash_cold_2()
{
  OUTLINED_FUNCTION_2_25(__stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

void __acc_auth_protocol_handleCertificateHash_cold_4()
{
  OUTLINED_FUNCTION_2_25(__stack_chk_guard);
  v1 = 136315906;
  v2 = "__acc_auth_protocol_handleCertificateHash";
  v3 = 1024;
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] %s:%d sessionID %d, role %d, call __acc_auth_protocol_handleCertificateCommon \n", &v1, 0x1Eu);
}

void __acc_auth_protocol_handleCertificate_cold_3()
{
  OUTLINED_FUNCTION_2_25(__stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleCertificate: sessionID %d, role %d, first segment, init for segmented received. \n", v1, 0xEu);
}

void __acc_auth_protocol_handleCertificateChainCert_cold_3()
{
  OUTLINED_FUNCTION_2_25(__stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  v3 = v0;
  v4 = 0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleCertificateChainCert: sessionID %d, role %d, first segment(=%d), init for segmented received. \n", v2, 0x14u);
}

void __acc_auth_protocol_handleResponse_cold_2()
{
  OUTLINED_FUNCTION_2_25(__stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

void __acc_auth_protocol_handleResponse_cold_5()
{
  OUTLINED_FUNCTION_2_25(__stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void __acc_auth_protocol_sendCertChainRequestOrChallenge_cold_4()
{
  OUTLINED_FUNCTION_2_25(__stack_chk_guard);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x24u);
}

void *ea_control_openSessionHandler(void *result, CFDictionaryRef theDict)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (theDict)
    {
      if (*v2)
      {
        result = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
        if (result)
        {
          if (gLogObjects && gNumLogObjects >= 54)
          {
            v3 = *(gLogObjects + 424);
          }

          else
          {
            v3 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_6_0();
              _os_log_error_impl(v11, v12, OS_LOG_TYPE_ERROR, v13, v14, 0x12u);
            }
          }

          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_1_18();
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 0x16u);
          }

          acc_endpoint_setProperty();
          v9 = v8;
          acc_endpoint_setProperty();
          return (v9 & v10);
        }
      }
    }
  }

  return result;
}

void ea_control_closeSessionHandler(void *result, CFDictionaryRef theDict)
{
  if (result && *result && CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey))
  {
    if (gLogObjects && gNumLogObjects >= 54)
    {
      v2 = *(gLogObjects + 424);
    }

    else
    {
      v2 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_6_0();
        _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x12u);
      }
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_18();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0x16u);
    }

    acc_endpoint_setProperty();
  }
}

uint64_t iap2_CarPlayStartSession(CFStringRef a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v6 = 0;
  v7 = 0;
  v242 = a1;
  if (!a1)
  {
    v8 = OUTLINED_FUNCTION_13_10();
    goto LABEL_104;
  }

  v8 = OUTLINED_FUNCTION_13_10();
  if (!a2)
  {
    goto LABEL_104;
  }

  if (iAP2MsgGetMsgID(a2) != 17153)
  {
    v7 = 0;
    a1 = 0;
    v245 = 0;
    v246 = 0;
    v248 = 0;
    v249 = 0;
    cf = 0;
    v253 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_104;
  }

  OUTLINED_FUNCTION_44_3(0x6D64u);
  v9 = *(a1->isa + 6);
  theArray = Mutable;
  v247 = v5;
  if (v9 > 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1001C3AC8[v9];
  }

  CFAbsoluteTimeGetCurrent();
  platform_CarPlay_sendConnectionEvent(4, v10);
  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v13 = *(gLogObjects + 408);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v261 = v11;
      *&v261[8] = 1024;
      LODWORD(v262) = v12;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_10(v200, v201, v202, v203, v204);
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v261 = 17153;
    OUTLINED_FUNCTION_19_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 8u);
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v259 = -1431655766;
  if (!FirstParam)
  {
    v243 = 0;
    v244 = 0;
    v255 = 0;
    v256 = 0;
    v245 = 0;
    v246 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    cf = 0;
    v253 = 0;
LABEL_96:
    v188 = platform_externalAccesory_legacyConnectionUUIDForPrimaryEndpointUUID(v242->info);
    v189 = gLogObjects;
    v190 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v191 = *(gLogObjects + 408);
      Mutable = theArray;
      v192 = v246;
      v5 = v247;
      v193 = v245;
    }

    else
    {
      v191 = &_os_log_default;
      Mutable = theArray;
      v192 = v246;
      v5 = v247;
      v193 = v245;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v261 = v189;
        *&v261[8] = 1024;
        LODWORD(v262) = v190;
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_10(v205, v206, v207, v208, v209);
      }
    }

    v7 = v255;
    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138415618;
      *v261 = Mutable;
      *&v261[8] = 2112;
      v262 = v5;
      v263 = 2112;
      v264 = cf;
      v265 = 2112;
      v266 = v251;
      v267 = 2112;
      v268 = v253;
      v269 = 2112;
      v270 = v250;
      v271 = 2112;
      v272 = v244;
      v273 = 2112;
      v274 = v248;
      v275 = 2112;
      v276 = v249;
      v277 = 2112;
      v278 = v193;
      v279 = 2112;
      v280 = v192;
      v281 = 2112;
      v282 = v256;
      v283 = 2112;
      v284 = v255;
      v285 = 2112;
      v286 = v243;
      OUTLINED_FUNCTION_19_8();
      _os_log_impl(v194, v195, OS_LOG_TYPE_DEFAULT, v196, v197, 0x8Eu);
    }

    a1 = v256;
    platform_CarPlay_startSession(v188, Mutable, v5, cf, v251, v253, v250, v244, v248, v249, v193, v192, v256, v255, v243);
    v8 = v251;
    v6 = 1;
    goto LABEL_104;
  }

  v20 = FirstParam;
  v251 = 0;
  cf = 0;
  v253 = 0;
  v249 = 0;
  v250 = 0;
  v244 = 0;
  v245 = 0;
  v248 = 0;
  v246 = 0;
  v255 = 0;
  v256 = 0;
  v243 = 0;
  v241 = kCFBooleanTrue;
  v240 = kCFBooleanFalse;
  *&v19 = 67109120;
  v257 = v19;
  *&v19 = 134218240;
  v238 = v19;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(v20);
    switch(ParamID)
    {
      case 0:
        v22 = OUTLINED_FUNCTION_10_13();
        v24 = iAP2MsgGetFirstParam(v22, v23);
        if (!v24)
        {
          goto LABEL_93;
        }

        NextParam = v24;
        while (2)
        {
          if (iAP2MsgGetParamID(NextParam))
          {
            if (gLogObjects && gNumLogObjects >= 52)
            {
              v26 = *(gLogObjects + 408);
            }

            else
            {
              v32 = OUTLINED_FUNCTION_59();
              v26 = &_os_log_default;
              if (v32)
              {
                OUTLINED_FUNCTION_0_13(v32, v33, v34, v35, v36, v37, v38, v39, v230, v231, v232, v233, v234, v235, v236, v237, v238);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v51, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, 0x12u);
                v26 = &_os_log_default;
              }
            }

            v40 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
            if (v40)
            {
              OUTLINED_FUNCTION_6_17(v40, v41, v42, v43, v44, v45, v46, v47, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257);
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Unrecognized USB group paramID:0x%04X", v48, 8u);
            }

            goto LABEL_30;
          }

          v27 = OUTLINED_FUNCTION_7_11();
          DataAsString = iAP2MsgGetDataAsString(v27, v28);
          if (!v259)
          {
            v30 = OUTLINED_FUNCTION_4_22(DataAsString);
            if (v30)
            {
              v31 = v30;
              CFArrayAppendValue(theArray, v30);
              CFRelease(v31);
            }

LABEL_30:
            v49 = OUTLINED_FUNCTION_10_13();
            NextParam = iAP2MsgGetNextParam(v49, v50, NextParam);
            if (!NextParam)
            {
              goto LABEL_93;
            }

            continue;
          }

          break;
        }

        v210 = logObjectForModule_8();
        if (!OUTLINED_FUNCTION_16(v210))
        {
          goto LABEL_156;
        }

        iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_5_20();
        *&v261[6] = 0;
        LOWORD(v262) = v211;
        *(&v262 + 2) = v212;
        v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
        goto LABEL_143;
      case 1:
        v114 = OUTLINED_FUNCTION_10_13();
        v116 = iAP2MsgGetFirstParam(v114, v115);
        if (!v116)
        {
          goto LABEL_93;
        }

        NextParam = v116;
        while (2)
        {
          switch(iAP2MsgGetParamID(NextParam))
          {
            case 0u:
              v117 = OUTLINED_FUNCTION_7_11();
              v119 = iAP2MsgGetDataAsString(v117, v118);
              if (!v259)
              {
                cf = OUTLINED_FUNCTION_4_22(v119);
                goto LABEL_76;
              }

              v217 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v217))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 0;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            case 1u:
              v138 = OUTLINED_FUNCTION_7_11();
              v140 = iAP2MsgGetDataAsString(v138, v139);
              if (!v259)
              {
                v251 = OUTLINED_FUNCTION_4_22(v140);
                goto LABEL_76;
              }

              v218 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v218))
              {
                goto LABEL_156;
              }

              MsgID = iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 1;
              *&v261[4] = 1024;
              *&v261[6] = 1;
              LOWORD(v262) = 1024;
              *(&v262 + 2) = MsgID;
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              break;
            case 2u:
              v122 = OUTLINED_FUNCTION_7_11();
              iAP2MsgGetDataAsU8(v122, v123);
              OUTLINED_FUNCTION_11_9();
              if (!v132)
              {
                v250 = OUTLINED_FUNCTION_15_10(v124, v125, v126, v127, v128, v129, v130, v131, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257, *(&v257 + 1));
                goto LABEL_76;
              }

              v216 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v216))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 2;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            case 3u:
              v133 = OUTLINED_FUNCTION_7_11();
              v135 = iAP2MsgGetDataAsString(v133, v134);
              if (!v259)
              {
                v136 = OUTLINED_FUNCTION_4_22(v135);
                if (v136)
                {
                  v137 = v136;
                  CFArrayAppendValue(v247, v136);
                  CFRelease(v137);
                }

LABEL_76:
                v159 = OUTLINED_FUNCTION_10_13();
                NextParam = iAP2MsgGetNextParam(v159, v160, NextParam);
                if (!NextParam)
                {
                  goto LABEL_93;
                }

                continue;
              }

              v221 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v221))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 3;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              break;
            case 4u:
              v120 = OUTLINED_FUNCTION_7_11();
              valuePtr[0] = iAP2MsgGetDataAsU8(v120, v121);
              if (!v259)
              {
                v253 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr);
                goto LABEL_76;
              }

              v220 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v220))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 4;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            default:
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v141 = *(gLogObjects + 408);
              }

              else
              {
                v142 = OUTLINED_FUNCTION_59();
                v141 = &_os_log_default;
                if (v142)
                {
                  OUTLINED_FUNCTION_0_13(v142, v143, v144, v145, v146, v147, v148, v149, v230, v231, v232, v233, v234, v235, v236, v237, v238);
                  OUTLINED_FUNCTION_36_3();
                  _os_log_error_impl(v161, v162, v163, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v164, 0x12u);
                  v141 = &_os_log_default;
                }
              }

              v150 = os_log_type_enabled(v141, OS_LOG_TYPE_INFO);
              if (v150)
              {
                OUTLINED_FUNCTION_6_17(v150, v151, v152, v153, v154, v155, v156, v157, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257);
                _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, "Unrecognized Wireless group paramID:0x%04X", v158, 8u);
              }

              goto LABEL_76;
          }

          goto LABEL_143;
        }

      case 2:
        v58 = OUTLINED_FUNCTION_9_12();
        iAP2MsgGetDataAsU32(v58, v59);
        OUTLINED_FUNCTION_11_9();
        if (v68)
        {
          v224 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v224))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v244 = OUTLINED_FUNCTION_15_10(v60, v61, v62, v63, v64, v65, v66, v67, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257, *(&v257 + 1));
        goto LABEL_93;
      case 3:
        v69 = OUTLINED_FUNCTION_9_12();
        v71 = iAP2MsgGetDataAsString(v69, v70);
        if (v259)
        {
          v228 = logObjectForModule_8();
          if (!OUTLINED_FUNCTION_16(v228))
          {
            goto LABEL_156;
          }

LABEL_159:
          iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          OUTLINED_FUNCTION_1_19();
          v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
          v222 = ParamID;
          v223 = 14;
LABEL_144:
          _os_log_error_impl(&_mh_execute_header, v222, OS_LOG_TYPE_ERROR, v213, buf, v223);
          goto LABEL_156;
        }

        v248 = OUTLINED_FUNCTION_4_22(v71);
LABEL_93:
        v20 = iAP2MsgGetNextParam(a2, 0, v20);
        if (!v20)
        {
          goto LABEL_96;
        }

        continue;
      case 4:
        v55 = OUTLINED_FUNCTION_9_12();
        v57 = iAP2MsgGetDataAsString(v55, v56);
        if (v259)
        {
          v229 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v229))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v249 = OUTLINED_FUNCTION_4_22(v57);
        goto LABEL_93;
      case 5:
        v165 = OUTLINED_FUNCTION_9_12();
        v167 = iAP2MsgGetDataAsString(v165, v166);
        if (v259)
        {
          v225 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v225))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v245 = OUTLINED_FUNCTION_4_22(v167);
        goto LABEL_93;
      case 6:
        v168 = OUTLINED_FUNCTION_9_12();
        v170 = iAP2MsgGetDataAsString(v168, v169);
        if (v259)
        {
          v226 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v226))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v246 = OUTLINED_FUNCTION_4_22(v170);
        goto LABEL_93;
      case 7:
        v72 = OUTLINED_FUNCTION_10_13();
        v74 = iAP2MsgGetFirstParam(v72, v73);
        if (!v74)
        {
          goto LABEL_93;
        }

        NextParam = v74;
        while (2)
        {
          v75 = iAP2MsgGetParamID(NextParam);
          if (v75 == 1)
          {
            v79 = OUTLINED_FUNCTION_7_11();
            iAP2MsgGetDataAsU32(v79, v80);
            OUTLINED_FUNCTION_11_9();
            if (v89)
            {
              v215 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v215))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 1;
              *&v261[4] = 1024;
              OUTLINED_FUNCTION_3_24();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            }

            v255 = OUTLINED_FUNCTION_15_10(v81, v82, v83, v84, v85, v86, v87, v88, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257, *(&v257 + 1));
          }

          else
          {
            if (!v75)
            {
              v76 = OUTLINED_FUNCTION_7_11();
              v78 = iAP2MsgGetDataAsString(v76, v77);
              if (!v259)
              {
                v256 = OUTLINED_FUNCTION_4_22(v78);
                goto LABEL_53;
              }

              v214 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v214))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_5_20();
              OUTLINED_FUNCTION_3_24();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_143:
              v222 = NextParam;
              v223 = 20;
              goto LABEL_144;
            }

            if (gLogObjects && gNumLogObjects >= 52)
            {
              v90 = *(gLogObjects + 408);
            }

            else
            {
              v91 = OUTLINED_FUNCTION_59();
              v90 = &_os_log_default;
              if (v91)
              {
                OUTLINED_FUNCTION_0_13(v91, v92, v93, v94, v95, v96, v97, v98, v230, v231, v232, v233, v234, v235, v236, v237, v238);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v110, v111, v112, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v113, 0x12u);
                v90 = &_os_log_default;
              }
            }

            v99 = os_log_type_enabled(v90, OS_LOG_TYPE_INFO);
            if (v99)
            {
              OUTLINED_FUNCTION_6_17(v99, v100, v101, v102, v103, v104, v105, v106, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257);
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "Unrecognized asset group paramID:0x%04X", v107, 8u);
            }
          }

LABEL_53:
          v108 = OUTLINED_FUNCTION_10_13();
          NextParam = iAP2MsgGetNextParam(v108, v109, NextParam);
          if (!NextParam)
          {
            goto LABEL_93;
          }

          continue;
        }

      case 8:
        v171 = OUTLINED_FUNCTION_9_12();
        DataAsBool = iAP2MsgGetDataAsBool(v171, v172);
        if (!v259)
        {
          v174 = v241;
          if (!DataAsBool)
          {
            v174 = v240;
          }

          v243 = v174;
          goto LABEL_93;
        }

        v227 = logObjectForModule_8();
        if (OUTLINED_FUNCTION_16(v227))
        {
          goto LABEL_159;
        }

LABEL_156:
        v6 = 0;
        Mutable = theArray;
        v7 = v255;
        v5 = v247;
        a1 = v256;
        v8 = v251;
LABEL_104:
        v198 = v8;
        if (Mutable)
        {
          CFRelease(Mutable);
          v8 = v198;
        }

        if (v5)
        {
          CFRelease(v5);
          v8 = v198;
        }

        if (cf)
        {
          CFRelease(cf);
          v8 = v198;
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v253)
        {
          CFRelease(v253);
        }

        if (v248)
        {
          CFRelease(v248);
        }

        if (v249)
        {
          CFRelease(v249);
        }

        if (v245)
        {
          CFRelease(v245);
        }

        if (v246)
        {
          CFRelease(v246);
        }

        if (a1)
        {
          CFRelease(a1);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        return v6;
      default:
        if (gLogObjects && gNumLogObjects >= 52)
        {
          v175 = *(gLogObjects + 408);
        }

        else
        {
          v176 = OUTLINED_FUNCTION_59();
          v175 = &_os_log_default;
          if (v176)
          {
            OUTLINED_FUNCTION_0_13(v176, v177, v178, v179, v180, v181, v182, v183, v230, v231, v232, v233, v234, v235, v236, v237, v238);
            OUTLINED_FUNCTION_36_3();
            _os_log_error_impl(v184, v185, v186, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v187, 0x12u);
            v175 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
        {
          *buf = v257;
          *v261 = ParamID;
          _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
        }

        goto LABEL_93;
    }
  }
}

uint64_t iap2_CarPlayAvailability(uint64_t *a1, const __CFDictionary *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v7 = *(gLogObjects + 408);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 = 134218240;
        v24 = v5;
        v25 = 1024;
        LODWORD(v26) = v6;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v23);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_9_0();
      v26 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iap2_CarPlayAvailability: %@, parameters %@", &v23, 0x16u);
    }

    Value = CFDictionaryGetValue(a2, @"wiredAvailable");
    v10 = CFDictionaryGetValue(a2, @"usbIdentifier");
    v11 = CFDictionaryGetValue(a2, @"wirelessAvailable");
    v12 = CFDictionaryGetValue(a2, @"bluetoothIdentifier");
    v13 = CFDictionaryGetValue(a2, @"themeAssetsAvailable");
    v14 = gLogObjects;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v16 = *(gLogObjects + 408);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 = 134218240;
        v24 = v14;
        v25 = 1024;
        LODWORD(v26) = v15;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v23);
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_9_0();
      v26 = Value;
      v27 = v18;
      v28 = v10;
      v29 = v18;
      v30 = v11;
      v31 = v18;
      v32 = v12;
      v33 = v18;
      v34 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iap2_CarPlayAvailability: %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@, themeAssetsAvailable %@", &v23, 0x3Eu);
    }

    if (Value | v11)
    {
      iAP2MsgInit((a1 + 15), 17152, a1[24], 0xFFFF, 0, 0);
      if (Value)
      {
        v19 = iAP2MsgAddGroupParam((a1 + 15), 0);
        iAP2MsgAddCFBooleanParam((a1 + 15), v19, 0, Value);
        if (v10)
        {
          iAP2MsgAddCFStringParam((a1 + 15), v19, 1, v10);
        }
      }

      if (v11)
      {
        v20 = iAP2MsgAddGroupParam((a1 + 15), 1);
        iAP2MsgAddCFBooleanParam((a1 + 15), v20, 0, v11);
        if (v12)
        {
          iAP2MsgAddCFStringParam((a1 + 15), v20, 1, v12);
        }
      }

      if (v13)
      {
        v21 = iAP2MsgAddGroupParam((a1 + 15), 2);
        iAP2MsgAddCFBooleanParam((a1 + 15), v21, 0, v13);
      }

      v2 = iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
      OUTLINED_FUNCTION_44_3(0x6D60u);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

_BYTE *_createFeature_10(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    if (result)
    {
      result[1] = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_10(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t _checkIdentificationInfo_18(uint64_t a1)
{
  v8 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &kMsgCarPlayConnectionRequestList, 2, &v8);
  if (!v2 && v8 == 1)
  {
    iap2_features_createFeature(a1, 0x1Au);
    iap2_identification_setIdentifiedForFeature(a1);
    v3 = gLogObjects;
    v4 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v5 = *(gLogObjects + 408);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v10 = v3;
        v11 = 1024;
        v12 = v4;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Identified for CarPlay Connection Initiation", buf, 2u);
    }
  }

  return v2;
}

id acc_json_data2object(void *a1)
{
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v3 = 0;
    v4 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_14();
  v9 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: jsonData %@", buf, 0x16u);
  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = 0;
  v2 = [NSJSONSerialization JSONObjectWithData:a1 options:0 error:&v7];
  v3 = v7;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_14();
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: failed JSON serialization!!! err %@", buf, 0x16u);
  }

  v4 = v2;
LABEL_7:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_14();
    v9 = a1;
    v10 = v5;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: jsonData %@  ->  result %@", buf, 0x20u);
  }

  return v4;
}

BOOL _isModelNumberConnected(const void *a1, void *a2)
{
  v3 = a2;
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  v9 = EndpointWithUUID && *EndpointWithUUID && (v5 = EndpointWithUUID[1]) != 0 && (ConnectionWithUUID = acc_manager_getConnectionWithUUID(v5)) != 0 && (AccessoryInfo = acc_connection_getAccessoryInfo(ConnectionWithUUID)) != 0 && (v8 = *(AccessoryInfo + 16)) != 0 && CFStringCompare(v8, v3, 0) == kCFCompareEqualTo;

  return v9;
}

void _isPowerDuringSleepForApplePencil(const void *a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID || (v3 = EndpointWithUUID[2]) == 0 || !_isModelNumberConnected(v3, @"A1603") || !platform_systemInfo_isApplePencilSupported())
  {
    v7 = 0;
    goto LABEL_10;
  }

  v4 = +[ACCPlatformPowerManager sharedManager];
  [v4 addAccessoryForEndpointUID:a1 andBitmask:0 andOldBitmask:0];

  v5 = +[ACCPlatformPowerManager sharedManager];
  v6 = [v5 powerAccessories];
  v7 = [v6 objectForKey:a1];

  if (!v7)
  {
    v23 = logObjectForModule_19();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[#Power] Failed to find ACCPlatformPowerInfo instance, no sleep assertion for Apple Pencil", v36, 2u);
    }

    v7 = 0;
    goto LABEL_29;
  }

  v8 = _getPowerPluginInstance();
  v9 = [v7 connectionUID];
  v10 = [v8 sleepPowerCurrentLimitInmA:v9];

  v11 = _getIOKitPowerPluginInstance();
  v12 = [v11 getBatteryChargeLevel];

  v13 = gLogObjects;
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v15 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v36 = 134218240;
      *&v36[4] = v13;
      OUTLINED_FUNCTION_3();
      *&v36[14] = v14;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30, *v36, *&v36[8]);
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v36 = 67109376;
    *&v36[4] = v10;
    OUTLINED_FUNCTION_9_13();
    *&v36[10] = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[#Power] sleepPowerCurrentLimitInmA: %d, current iOS battery level percentage: %d", v36, 0xEu);
  }

  if (v10 == 100 && v12 >= 0xB)
  {
    platform_sleepAssertion_createForApplePencil();
    [v7 setHoldingApplePencilSleepAssertion:1];
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v7 selector:"powerInfoChangeNotificationHandler:" name:ACCPlatformIOKitPowerPlugin_BatteryChargeLevel object:0];

    v19 = _getIOKitPowerPluginInstance();
    v20 = [v19 createBatteryNotificationClient];
    [v7 setApplePencilBatteryNotificationClientUUID:v20];

    v21 = gLogObjects;
    v22 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v23 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v36 = 134218240;
        *&v36[4] = v21;
        OUTLINED_FUNCTION_3();
        *&v36[14] = v22;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v32, v33, v34, v35);
      }

      v23 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = [v7 applePencilBatteryNotificationClientUUID];
      *v36 = 138412290;
      *&v36[4] = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[#Power] Created applePencilBatteryNotificationClientUUID: %@", v36, 0xCu);
    }

LABEL_29:
  }

LABEL_10:
}

unint64_t platform_power_sendEAPowerUpdate(const void *a1, int a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    return 1;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 1;
  }

  v11 = EndpointWithUUID;
  if (acc_endpoint_getProtocol(EndpointWithUUID) == 4 && !iap2_endpoint_isInitialized(v11[7]))
  {
    v18 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v19 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_16_11();
        v30 = v18;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "NO";
      v29 = 1024;
      v30 = 4;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[#Power] Not sending EA Power Update: iap2initialized = %s, protocol = %{coreacc:ACCEndpoint_Protocol_t}d", buf, 0x12u);
    }

    return 1;
  }

  v23 = -21846;
  v21 = a2;
  v22 = a3;
  v24 = a4;
  v26 = -21846;
  v25 = a5;
  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v14 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_11();
    v30 = a2;
    v31 = v16;
    v32 = a3;
    v33 = v16;
    v34 = a4;
    v35 = v16;
    v36 = a5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[#Power] EAPowerUpdate: endpoint: %@, updateType: %d, updateValue: %u, updateType2: %d, updateValue2: %u", buf, 0x24u);
  }

  return accFeatureHandlers_invokeHandler(a1, 18, &v21);
}

id platform_power_powerDuringSleepSupported(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v2 = EndpointWithUUID;
  if (!*EndpointWithUUID || !EndpointWithUUID[1])
  {
    return 0;
  }

  v3 = _getPowerPluginInstance();
  v4 = [v3 isPowerDuringSleepSupported:v2[1]];

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v5 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17);
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x12u);
  }

  return v4;
}

id platform_power_setPowerDuringSleep(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    _isPowerDuringSleepForApplePencil(a1);
  }

  else
  {
    _isDisablingPowerDuringSleepForApplePencil(a1);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v5 = EndpointWithUUID;
  if (!*EndpointWithUUID || !EndpointWithUUID[1])
  {
    return 0;
  }

  v6 = _getPowerPluginInstance();
  v7 = [v6 setPowerDuringSleepEnabled:a2 forConnectionUUID:v5[1]];

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v8 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17, v18, v19, v20);
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  return v7;
}

id platform_power_powerDuringSleepEnabled(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v2 = EndpointWithUUID;
  if (!*EndpointWithUUID || !EndpointWithUUID[1])
  {
    return 0;
  }

  v3 = _getPowerPluginInstance();
  v4 = [v3 isPowerDuringSleepEnabled:v2[1]];

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v5 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17);
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x12u);
  }

  return v4;
}

id platform_power_resetBaseCurrent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = _getPowerPluginInstance();
  v3 = [v2 resetAccessoryBaseCurrent:a1];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  return v3;
}

void platform_power_updateAccessoryChargeCurrent(uint64_t a1, unsigned int a2)
{
  v11 = +[ACCPlatformPowerManager sharedManager];
  v4 = [v11 powerAccessories];
  v5 = [v4 objectForKey:a1];

  if (v5)
  {
    v6 = [v5 endpointUID];
    isModelNumberConnected = _isModelNumberConnected(v6, @"A1603");

    if (isModelNumberConnected)
    {
      if (platform_systemInfo_isApplePencilSupported())
      {
        v8 = [v5 holdingApplePencilSleepAssertion];
        if (a2 <= 9)
        {
          if (v8)
          {
            platform_sleepAssertion_destroyForApplePencil();
            [v5 setHoldingApplePencilSleepAssertion:0];
          }
        }
      }

      if ([v5 powerUpdateSentDueToSleep])
      {
        v9 = [v5 sleepNotificationClientUUID];

        if (v9)
        {
          v10 = _getIOKitPowerPluginInstance();
          [v5 sleepNotificationClientUUID];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_15_11() clientHandledSleepNotification:v6];

          [v5 setPowerUpdateSentDueToSleep:0];
        }
      }
    }
  }
}

uint64_t iap2_sessionControl_init(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 192))
    {
      v2 = 1;
    }

    else
    {
      v3 = malloc_type_malloc(0xFFFFuLL, 0x5696F3AuLL);
      *(v1 + 192) = v3;
      v2 = v3 != 0;
    }

    v4 = iap2_features_registerMessageHandlers();
    v5 = v4 & iap2_features_registerIdentificationParamHandlers();
    v6 = OUTLINED_FUNCTION_9_14();
    return v2 & v5 & iap2_features_createFeatures(v6, v7);
  }

  return result;
}

uint64_t iap2_sessionControl_start(unsigned __int8 *a1)
{
  if (a1)
  {
    Version = iap2_sessionControl_getVersion(a1);
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 23;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_10(v4, v5, v6, v7, v8);
      }
    }

    else
    {
      v9 = *(gLogObjects + 176);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v10, v11, OS_LOG_TYPE_INFO, v12, v13, 8u);
    }

    v14 = gLogObjects;
    v15 = HIWORD(gNumLogObjects);
    if (gLogObjects)
    {
      v16 = gNumLogObjects <= 22;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    if (Version == 2)
    {
      if (v17)
      {
        v18 = *(gLogObjects + 176);
      }

      else
      {
        v18 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          LODWORD(v45) = 134218240;
          HIDWORD(v45) = v14;
          OUTLINED_FUNCTION_3();
          LOWORD(v47) = v15;
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v33, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, v36, v37, v38, v45, HIDWORD(v14), v47);
        }
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_9(v20, v21, v22, v23, v24);
      }

      v25 = 1;
    }

    else
    {
      if (v17)
      {
        v19 = *(gLogObjects + 176);
      }

      else
      {
        v19 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          LODWORD(v46) = 134218240;
          HIDWORD(v46) = v14;
          OUTLINED_FUNCTION_3();
          LOWORD(v47) = v15;
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v39, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41, v42, v43, v44, v46, HIDWORD(v14), v47);
        }
      }

      v26 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      v25 = 0;
      if (v26)
      {
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_9(v27, v28, v29, v30, v31);
        v25 = 0;
      }
    }

    iap2_features_startFeatureFromDevice(a1, v25);
  }

  return 0;
}

unsigned __int8 *iap2_sessionControl_getVersion(unsigned __int8 *result)
{
  if (result)
  {
    v1 = *(result + 4);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {
        v3 = OUTLINED_FUNCTION_7_2();
        SessionForService = iAP2LinkGetSessionForService(v3, v4);
        result = iAP2LinkGetSessionInfo(v2, SessionForService);
        if (result)
        {
          return result[2];
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t iap2_sessionControl_parseIncomingMessage(uint64_t a1, char *a2, unsigned int a3)
{
  v3 = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v50 = 0xAAAAAAAAAAAAAAAALL;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v49[2] = v7;
      v49[3] = v7;
      v49[0] = v7;
      v49[1] = v7;
      iAP2MsgInit(v49, 0, 0, 0, 0, 0);
      v3 = 0;
      if (a3)
      {
        v9 = a3;
        *&v8 = 67109120;
        v48 = v8;
        while (1)
        {
          v10 = *v4++;
          v11 = iAP2MsgParserConsumeByte(*(a1 + 112), v10, v49);
          if (v11)
          {
            break;
          }

LABEL_19:
          if (!--v9)
          {
            return v3 & 1;
          }
        }

        v12 = v11;
        if (!*a1)
        {
          goto LABEL_26;
        }

        MsgID = iAP2MsgGetMsgID(v11);
        MsgLen = iAP2MsgGetMsgLen(v12);
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 21)
        {
          v17 = *(gLogObjects + 160);
        }

        else
        {
          v17 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v52 = v15;
            *&v52[8] = 1024;
            v53[0] = v16;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v17 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 8);
          *buf = 67109634;
          *v52 = MsgID;
          *&v52[4] = 1024;
          *&v52[6] = MsgLen;
          LOWORD(v53[0]) = 2112;
          *(v53 + 2) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Incoming Message ID: 0x%04X (%d bytes) for endpoint %@", buf, 0x18u);
        }

        if (iap2_identification_isIdentifiedForIncomingMessageID(a1, MsgID))
        {
          Handler = iap2_messageHandlers_getHandler(MsgID);
          if (!Handler)
          {
            v34 = logObjectForModule_1(0x16u);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = v48;
            *v52 = MsgID;
            v31 = buf;
            v32 = v34;
            v33 = "No message handler found for incoming message ID: 0x%04X!";
            v35 = 8;
LABEL_29:
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, v31, v35);
            goto LABEL_26;
          }

          if ((Handler)(a1, v12))
          {
            v3 = 1;
LABEL_18:
            iAP2MsgCleanup(v12);
            goto LABEL_19;
          }

          v36 = logObjectForModule_1(0x16u);
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
          if (!v37)
          {
LABEL_26:
            v3 = 0;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_7_13(v37, v38, v39, v40, v41, v42, v43, v44, v45, v48, *(&v48 + 1), v46);
          v32 = v36;
          v33 = "Message handler returned false! (0x%04X for endpoint %@)";
        }

        else
        {
          v20 = logObjectForModule_1(0x16u);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
          if (!v21)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_7_13(v21, v22, v23, v24, v25, v26, v27, v28, v29, v48, *(&v48 + 1), v30);
          v32 = v20;
          v33 = "Not identified for incoming message ID: 0x%04X! (endpoint %@)";
        }

        v35 = 18;
        goto LABEL_29;
      }
    }
  }

  return v3 & 1;
}

void iap2_sessionControl_accAuthenticationStateChanged(void *result, int a2)
{
  if (result && a2 == 2 && *result)
  {
    if (iap2_identification_getState(result))
    {
      if (iap2_identification_getState(result) == 6)
      {
        if (gLogObjects && gNumLogObjects >= 23)
        {
          v5 = *(gLogObjects + 176);
        }

        else
        {
          v5 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_1_7();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v8, v9, v10, v11);
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_73_0(v12, v13, v14, v15, v16);
        }

        _authAndIDComplete(result);
      }
    }

    else
    {
      v3 = OUTLINED_FUNCTION_9_14();

      iap2_features_startFeatureFromDevice(v3, v4);
    }
  }
}

void iap2_sessionControl_identificationStateChanged(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      TransportType = acc_endpoint_getTransportType(v3);
      if (a2 == 6)
      {
        if (**a1)
        {
          if (TransportType && (TransportType == 8 || acc_connection_getType(**a1) == 6 && *a1 && **a1))
          {
            if (gLogObjects && gNumLogObjects >= 23)
            {
              v6 = *(gLogObjects + 176);
            }

            else
            {
              v6 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_26_0(&_mh_execute_header, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, v48, v49, v50);
              }
            }

            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_9(v7, v8, v9, v10, v11);
            }

            acc_connection_isAuthenticated(**a1, 6u);
            if (gLogObjects && gNumLogObjects >= 23)
            {
              v12 = *(gLogObjects + 176);
            }

            else
            {
              v12 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_26_0(&_mh_execute_header, v51, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, v54, v55, v56);
              }
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_15_1();
              _os_log_impl(v13, v14, OS_LOG_TYPE_INFO, v15, v16, 8u);
            }

            TransportComponent = iap2_identification_getTransportComponent(a1);
            if (TransportComponent)
            {
              v18 = TransportComponent;
              if (gLogObjects && gNumLogObjects >= 23)
              {
                v19 = *(gLogObjects + 176);
              }

              else
              {
                v19 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  OUTLINED_FUNCTION_6_6();
                  OUTLINED_FUNCTION_6_0();
                  OUTLINED_FUNCTION_10(v57, v58, v59, v60, v61);
                }
              }

              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                OUTLINED_FUNCTION_6_0();
                _os_log_impl(v20, v21, OS_LOG_TYPE_INFO, v22, v23, 2u);
              }

              if (v18[53] == 1)
              {
                if ((v18[55] & 1) == 0)
                {
                  if (gLogObjects && gNumLogObjects >= 23)
                  {
                    v24 = *(gLogObjects + 176);
                  }

                  else
                  {
                    v24 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      OUTLINED_FUNCTION_6_6();
                      OUTLINED_FUNCTION_6_0();
                      OUTLINED_FUNCTION_10(v62, v63, v64, v65, v66);
                    }
                  }

                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_6_0();
                    OUTLINED_FUNCTION_9(v25, v26, v27, v28, v29);
                  }
                }

                if (iap2_identification_isIdentifiedForCarPlay(a1))
                {
                  v30 = iAP2_carPlayConnectionType(a1);
                  CFAbsoluteTimeGetCurrent();
                  platform_CarPlay_sendConnectionEvent(3, v30);
                }

                platform_usb_configureUSBHostNCMInterface(*(a1 + 16), v18[54], 1);
              }
            }

            platform_usb_unlockUSBHostInterfaces(*(a1 + 16));
          }

          if (iap2_accAuthentication_getState(a1))
          {
            if (iap2_accAuthentication_getState(a1) == 2)
            {
              if (gLogObjects && gNumLogObjects >= 23)
              {
                v31 = *(gLogObjects + 176);
              }

              else
              {
                v31 = &_os_log_default;
                if (OUTLINED_FUNCTION_21())
                {
                  OUTLINED_FUNCTION_1_7();
                  OUTLINED_FUNCTION_26_0(&_mh_execute_header, v34, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v36, v37, v38, v39);
                }
              }

              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                OUTLINED_FUNCTION_38();
                OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_73_0(v40, v41, v42, v43, v44);
              }

              _authAndIDComplete(a1);
            }
          }

          else
          {
            v32 = OUTLINED_FUNCTION_7_2();
            iap2_features_startFeatureFromDevice(v32, v33);
          }
        }
      }
    }
  }
}

void iap2_sessionControl_authorizationHook_authentication(unsigned int *a1, uint64_t a2)
{
  if (a1 && *a1 && **a1)
  {
    State = iap2_identification_getState(a1);
    if (gLogObjects && gNumLogObjects >= 23)
    {
      v5 = *(gLogObjects + 176);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v22, v23, v24, v25, v26);
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_73_0(v6, v7, v8, v9, v10);
    }

    if (gLogObjects && gNumLogObjects >= 23)
    {
      v11 = *(gLogObjects + 176);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v27, v28, v29, v30, v31);
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      iap2_accAuthentication_getState(a1);
      iap2_identification_getState(a1);
      OUTLINED_FUNCTION_14_3();
      _os_log_debug_impl(v14, v15, OS_LOG_TYPE_DEBUG, v16, v17, 0xEu);
      if (!State)
      {
        goto LABEL_18;
      }
    }

    else if (!State)
    {
LABEL_18:
      v12 = OUTLINED_FUNCTION_9_14();
      v13(v12);
      return;
    }

    v18 = iap2_accAuthentication_copyCertificateSerialString(a1);
    AccessoryInfo = acc_endpoint_getAccessoryInfo(*a1);
    v20 = acc_strings_copyPlaceholder_Unknown();
    v21 = acc_accInfo_retainedProperty(AccessoryInfo, 0, v20);
    _requestAuthorization(a1, v18, v21, a2);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }
}

void _requestAuthorization(uint64_t a1, CFTypeRef a2, CFTypeRef a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (v5)
    {
      if (*v5)
      {
        if (acc_policies_endpointRequiresUserAuthorization(v5))
        {
          v9 = CFRetain(*(a1 + 8));
          if (a2)
          {
            a2 = CFRetain(a2);
          }

          if (a3)
          {
            a3 = CFRetain(a3);
          }

          v10 = acc_endpoint_isWireless(*a1);
          if (v10)
          {
            CurrentLimit = 0;
            v12 = 0;
          }

          else
          {
            CurrentLimit = platform_power_getCurrentLimit(*(a1 + 16));
            v12 = CurrentLimit != 0;
          }

          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 23)
          {
            v17 = *(gLogObjects + 176);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v25 = v15;
              v26 = 1024;
              LODWORD(v27) = v16;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v20 = "NO";
            if (v12)
            {
              v21 = "YES";
            }

            else
            {
              v21 = "NO";
            }

            *buf = 136315650;
            v25 = v21;
            if (v10)
            {
              v20 = "YES";
            }

            v26 = 2080;
            v27 = v20;
            v28 = 1024;
            v29 = CurrentLimit;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "providesPower: %s, isWireless: %s, currentLimit: %uma", buf, 0x1Cu);
          }

          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = ___requestAuthorization_block_invoke;
          block[3] = &unk_100228190;
          v23 = v12;
          block[6] = a3;
          block[7] = v9;
          block[4] = a4;
          block[5] = a2;
          dispatch_async(global_queue, block);
        }

        else
        {
          v13 = OUTLINED_FUNCTION_9_14();

          v14(v13);
        }
      }
    }
  }
}

void iap2_sessionControl_authorizationHook_identification(unsigned int *a1, const void *a2, uint64_t a3)
{
  if (a1 && *a1 && **a1)
  {
    State = iap2_accAuthentication_getState(a1);
    if (gLogObjects && gNumLogObjects >= 23)
    {
      v7 = *(gLogObjects + 176);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v21, v22, v23, v24, v25);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_73_0(v8, v9, v10, v11, v12);
    }

    if (gLogObjects && gNumLogObjects >= 23)
    {
      v13 = *(gLogObjects + 176);
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v26, v27, v28, v29, v30);
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      iap2_accAuthentication_getState(a1);
      iap2_identification_getState(a1);
      OUTLINED_FUNCTION_36();
      _os_log_debug_impl(v16, v17, OS_LOG_TYPE_DEBUG, v18, v19, 0xEu);
      if (!State)
      {
        goto LABEL_18;
      }
    }

    else if (!State)
    {
LABEL_18:
      v14 = OUTLINED_FUNCTION_9_14();
      v15(v14);
      return;
    }

    v20 = iap2_accAuthentication_copyCertificateSerialString(a1);
    _requestAuthorization(a1, v20, a2, a3);
    if (v20)
    {
      CFRelease(v20);
    }
  }
}

void _sendOutgoingMessage_cold_1(unsigned __int16 a1, uint64_t a2)
{
  v4 = logObjectForModule_1(0x16u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a2 + 8);
    v7[0] = 67109378;
    v7[1] = a1;
    v8 = 2112;
    v9 = v6;
    OUTLINED_FUNCTION_10(&_mh_execute_header, v4, v5, "Not identified for outgoing message ID: 0x%04X! (endpoint %@)", v7);
  }
}

void ___requestAuthorization_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_38();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "certSerialString: %@, accName: %@", v2, 0x16u);
}

id _statusUpdateHandler(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 34, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = 0;
  if (!a1 || !a2)
  {
LABEL_118:
    if (!Mutable)
    {
      return v5;
    }

LABEL_119:
    CFRelease(Mutable);
    return v5;
  }

  v6 = &audioProductCerts_endpoint_publish_onceToken;
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 41)
  {
    v9 = *(gLogObjects + 320);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v582 = v7;
      OUTLINED_FUNCTION_17_0();
      v583[0] = v8;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v209, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    MsgID = iAP2MsgGetMsgID(a2);
    *buf = 67109120;
    *v582 = MsgID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received Vehicle Status Update message (0x%04X)!", buf, 8u);
  }

  Feature = iap2_feature_getFeature(a1, 0x14u);
  if (!Feature)
  {
    goto LABEL_186;
  }

  if (*(Feature + 137) != 1 || (*(Feature + 138) & 1) == 0)
  {
    v225 = logObjectForModule_20();
    if (!os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_186;
    }

    *buf = 0;
    OUTLINED_FUNCTION_22_5();
    v224 = 2;
LABEL_185:
    _os_log_error_impl(v213, v222, v223, v214, v221, v224);
    goto LABEL_186;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
LABEL_117:
    v5 = platform_vehicle_vehicleStatusChanged(*(a1 + 8), Mutable);
    goto LABEL_118;
  }

  v13 = FirstParam;
  v578 = kCFACCVehicleInfoMaxRangeCNGKey;
  v577 = kCFACCVehicleInfoMaxRangeDieselKey;
  v576 = kCFACCVehicleInfoMaxRangeGasolineKey;
  v575 = kCFACCVehicleInfoMaxRangeElectricKey;
  v574 = kCFACCVehicleInfoActiveConnectorKey;
  v573 = kCFACCVehicleInfoConsumptionParameterKey;
  v572 = kCFACCVehicleInfoChargingParameterKey;
  v571 = kCFACCVehicleInfoIsChargingKey;
  v570 = kCFACCVehicleInfoDisplayedBatteryPercentageKey;
  v569 = kCFACCVehicleInfoMaxBatteryChargeKey;
  v568 = kCFACCVehicleInfoCurrentBatteryChargeKey;
  v567 = kCFACCVehicleInfoMinBatteryChargeKey;
  v566 = kCFACCVehicleInfoPassengerSeatStatus;
  key = kCFACCVehicleInfoAlerts;
  v564 = kCFACCVehicleInfoBarometricPressure;
  v551 = kCFACCVehicleInfoWiperStatusWasherOn;
  v550 = kCFACCVehicleInfoWiperStatusWipeDurationMs;
  v549 = kCFACCVehicleInfoWiperStatusWaitDurationMs;
  v552 = kCFACCVehicleInfoWiperStatus;
  v563 = kCFACCVehicleInfoHasLowDistanceRangeCNGKey;
  v562 = kCFACCVehicleInfoHasLowDistanceRangeElectricKey;
  v561 = kCFACCVehicleInfoHasLowDistanceRangeDieselKey;
  v560 = kCFACCVehicleInfoHasLowDistanceRangeGasolineKey;
  v559 = kCFACCVehicleInfoRangeCNGKey;
  v558 = kCFACCVehicleInfoRangeElectricKey;
  v557 = kCFACCVehicleInfoRangeDieselKey;
  v556 = kCFACCVehicleInfoRangeGasolineKey;
  v555 = kCFACCVehicleInfoHasLowDistanceRangeKey;
  v554 = kCFACCVehicleInfoOutsideTemperatureKey;
  v553 = kCFACCVehicleInfoRangeKey;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(v13);
    v15 = v6[491];
    if (v15 && gNumLogObjects >= 41)
    {
      isa = v15[40].isa;
    }

    else
    {
      isa = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v582 = v15;
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_28_4();
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v195, 0x12u);
        isa = &_os_log_default;
      }
    }

    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v582 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, isa, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
    }

    switch(ParamID)
    {
      case 3:
        v17 = OUTLINED_FUNCTION_1_20();
        DataAsU16 = iAP2MsgGetDataAsU16(v17, v18);
        OUTLINED_FUNCTION_14_11(DataAsU16);
        if (!v20)
        {
          v21 = OUTLINED_FUNCTION_8_12();
          CFNumberCreate(v21, kCFNumberSInt16Type, v22);
          v23 = OUTLINED_FUNCTION_7_14();
          v24 = v553;
          goto LABEL_106;
        }

        v333 = logObjectForModule_20();
        if (!OUTLINED_FUNCTION_13_9(v333))
        {
          goto LABEL_186;
        }

        v334 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_18_1(v334, v335, v336, v337, v338, v339, v340, v341, v342, v549, v550, v551, v552, v343);
        OUTLINED_FUNCTION_2_28(v344, 3);
        v213 = &_mh_execute_header;
        v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_184;
      case 4:
        v118 = OUTLINED_FUNCTION_1_20();
        DataAsI16 = iAP2MsgGetDataAsI16(v118, v119);
        OUTLINED_FUNCTION_14_11(DataAsI16);
        if (v121)
        {
          v417 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v417))
          {
            v418 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v418, v419, v420, v421, v422, v423, v424, v425, v426, v549, v550, v551, v552, v427);
            OUTLINED_FUNCTION_2_28(v428, 4);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v122 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v122, kCFNumberSInt16Type, v123);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v554;
        goto LABEL_106;
      case 6:
        v79 = OUTLINED_FUNCTION_1_20();
        DataAsBool = iAP2MsgGetDataAsBool(v79, v80);
        OUTLINED_FUNCTION_18_10(DataAsBool);
        if (v82)
        {
          v477 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v477))
          {
            v478 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v478, v479, v480, v481, v482, v483, v484, v485, v486, v549, v550, v551, v552, v487);
            OUTLINED_FUNCTION_2_28(v488, 6);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v83 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v83, kCFNumberSInt8Type, v84);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v555;
        goto LABEL_106;
      case 9:
        v148 = OUTLINED_FUNCTION_1_20();
        v150 = iAP2MsgGetDataAsU16(v148, v149);
        OUTLINED_FUNCTION_14_11(v150);
        if (v151)
        {
          v489 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v489))
          {
            v490 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v490, v491, v492, v493, v494, v495, v496, v497, v498, v549, v550, v551, v552, v499);
            OUTLINED_FUNCTION_2_28(v500, 9);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v152 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v152, kCFNumberSInt16Type, v153);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v556;
        goto LABEL_106;
      case 10:
        v154 = OUTLINED_FUNCTION_1_20();
        v156 = iAP2MsgGetDataAsU16(v154, v155);
        OUTLINED_FUNCTION_14_11(v156);
        if (v157)
        {
          v429 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v429))
          {
            v430 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v430, v431, v432, v433, v434, v435, v436, v437, v438, v549, v550, v551, v552, v439);
            OUTLINED_FUNCTION_2_28(v440, 10);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v158 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v158, kCFNumberSInt16Type, v159);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v557;
        goto LABEL_106;
      case 11:
        v85 = OUTLINED_FUNCTION_1_20();
        v87 = iAP2MsgGetDataAsU16(v85, v86);
        OUTLINED_FUNCTION_14_11(v87);
        if (v88)
        {
          v345 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v345))
          {
            v346 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v346, v347, v348, v349, v350, v351, v352, v353, v354, v549, v550, v551, v552, v355);
            OUTLINED_FUNCTION_2_28(v356, 11);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v89 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v89, kCFNumberSInt16Type, v90);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v558;
        goto LABEL_106;
      case 12:
        v124 = OUTLINED_FUNCTION_1_20();
        v126 = iAP2MsgGetDataAsU16(v124, v125);
        OUTLINED_FUNCTION_14_11(v126);
        if (v127)
        {
          v441 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v441))
          {
            v442 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v442, v443, v444, v445, v446, v447, v448, v449, v450, v549, v550, v551, v552, v451);
            OUTLINED_FUNCTION_2_28(v452, 12);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v128 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v128, kCFNumberSInt16Type, v129);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v559;
        goto LABEL_106;
      case 13:
        v130 = OUTLINED_FUNCTION_1_20();
        v132 = iAP2MsgGetDataAsBool(v130, v131);
        OUTLINED_FUNCTION_18_10(v132);
        if (v133)
        {
          v501 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v501))
          {
            v502 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v502, v503, v504, v505, v506, v507, v508, v509, v510, v549, v550, v551, v552, v511);
            OUTLINED_FUNCTION_2_28(v512, 13);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v134 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v134, kCFNumberSInt8Type, v135);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v560;
        goto LABEL_106;
      case 14:
        v166 = OUTLINED_FUNCTION_1_20();
        v168 = iAP2MsgGetDataAsBool(v166, v167);
        OUTLINED_FUNCTION_18_10(v168);
        if (v169)
        {
          v465 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v465))
          {
            v466 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v466, v467, v468, v469, v470, v471, v472, v473, v474, v549, v550, v551, v552, v475);
            OUTLINED_FUNCTION_2_28(v476, 14);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v170 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v170, kCFNumberSInt8Type, v171);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v561;
        goto LABEL_106;
      case 15:
        v160 = OUTLINED_FUNCTION_1_20();
        v162 = iAP2MsgGetDataAsBool(v160, v161);
        OUTLINED_FUNCTION_18_10(v162);
        if (v163)
        {
          v405 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v405))
          {
            v406 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v406, v407, v408, v409, v410, v411, v412, v413, v414, v549, v550, v551, v552, v415);
            OUTLINED_FUNCTION_2_28(v416, 15);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v164 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v164, kCFNumberSInt8Type, v165);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v562;
        goto LABEL_106;
      case 16:
        v55 = OUTLINED_FUNCTION_1_20();
        v57 = iAP2MsgGetDataAsBool(v55, v56);
        OUTLINED_FUNCTION_18_10(v57);
        if (v58)
        {
          v15 = logObjectForModule_20();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v322 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v322, v323, v324, v325, v326, v327, v328, v329, v330, v549, v550, v551, v552, v331);
            *v582 = 16;
            OUTLINED_FUNCTION_3_25(v332);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v59 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v59, kCFNumberSInt8Type, v60);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v563;
        goto LABEL_106;
      case 17:
        v580 = -1431655766;
        v91 = iAP2MsgGetFirstParam(a2, v13);
        if (v91)
        {
          NextParam = v91;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          valuePtr = 0;
          while (1)
          {
            v97 = iAP2MsgGetParamID(NextParam);
            switch(v97)
            {
              case 2:
                v104 = OUTLINED_FUNCTION_23_5();
                iAP2MsgGetDataAsU32(v104, v105);
                if (v580)
                {
                  v218 = logObjectForModule_20();
                  if (!OUTLINED_FUNCTION_13_9(v218))
                  {
                    goto LABEL_186;
                  }

                  iAP2MsgGetMsgID(a2);
                  *buf = 67109632;
                  OUTLINED_FUNCTION_4_23(17);
                  *&v582[6] = 2;
                  LOWORD(v583[0]) = v219;
                  *(v583 + 2) = v220;
                  v213 = &_mh_execute_header;
                  v214 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
                  goto LABEL_127;
                }

                v96 = 1;
                break;
              case 1:
                v101 = OUTLINED_FUNCTION_23_5();
                v103 = iAP2MsgGetDataAsU16(v101, v102);
                if (v580)
                {
                  v215 = logObjectForModule_20();
                  if (!OUTLINED_FUNCTION_13_9(v215))
                  {
                    goto LABEL_186;
                  }

                  iAP2MsgGetMsgID(a2);
                  *buf = 67109632;
                  OUTLINED_FUNCTION_4_23(17);
                  *&v582[6] = 1;
                  LOWORD(v583[0]) = v216;
                  *(v583 + 2) = v217;
                  v213 = &_mh_execute_header;
                  v214 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
                  goto LABEL_127;
                }

                valuePtr = v103;
                v95 = 1;
                break;
              case 0:
                v98 = OUTLINED_FUNCTION_23_5();
                DataAsU8 = iAP2MsgGetDataAsU8(v98, v99);
                if (v580)
                {
                  v210 = logObjectForModule_20();
                  if (!OUTLINED_FUNCTION_13_9(v210))
                  {
                    goto LABEL_186;
                  }

                  iAP2MsgGetMsgID(a2);
                  *buf = 67109632;
                  OUTLINED_FUNCTION_4_23(17);
                  *&v582[6] = 0;
                  LOWORD(v583[0]) = v211;
                  *(v583 + 2) = v212;
                  v213 = &_mh_execute_header;
                  v214 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_127:
                  v221 = buf;
                  v222 = v94;
                  v223 = OS_LOG_TYPE_ERROR;
                  v224 = 20;
                  goto LABEL_185;
                }

                v93 = DataAsU8 != 0;
                v94 = 1;
                break;
            }

            NextParam = iAP2MsgGetNextParam(a2, v13, NextParam);
            if (!NextParam)
            {
              if ((v94 | v95 | v96))
              {
                v106 = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (v94)
                {
                  buf[0] = v93;
                  v107 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, buf);
                  CFDictionaryAddValue(v106, v551, v107);
                  if (v107)
                  {
                    CFRelease(v107);
                  }
                }

                if (v95)
                {
                  v108 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
                  CFDictionaryAddValue(v106, v550, v108);
                  if (v108)
                  {
                    CFRelease(v108);
                  }
                }

                if (v96)
                {
                  v109 = OUTLINED_FUNCTION_8_12();
                  v111 = CFNumberCreate(v109, kCFNumberSInt32Type, v110);
                  CFDictionaryAddValue(v106, v549, v111);
                  if (v111)
                  {
                    CFRelease(v111);
                  }
                }

                CFDictionarySetValue(Mutable, v552, v106);
                if (v106)
                {
                  v42 = v106;
LABEL_76:
                  CFRelease(v42);
                }
              }

              goto LABEL_77;
            }
          }
        }

        v369 = logObjectForModule_20();
        if (!OUTLINED_FUNCTION_13_9(v369))
        {
          goto LABEL_186;
        }

        v370 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_18_1(v370, v371, v372, v373, v374, v375, v376, v377, v378, v549, v550, v551, v552, v379);
        OUTLINED_FUNCTION_2_28(v380, 17);
        v213 = &_mh_execute_header;
        v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_184;
      case 18:
        v67 = OUTLINED_FUNCTION_1_20();
        v69 = iAP2MsgGetDataAsU16(v67, v68);
        OUTLINED_FUNCTION_14_11(v69);
        if (v70)
        {
          v453 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v453))
          {
            v454 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v454, v455, v456, v457, v458, v459, v460, v461, v462, v549, v550, v551, v552, v463);
            OUTLINED_FUNCTION_2_28(v464, 18);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v71 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v71, kCFNumberSInt16Type, v72);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v564;
        goto LABEL_106;
      case 19:
        v34 = OUTLINED_FUNCTION_1_20();
        DataAsData = iAP2MsgGetDataAsData(v34, v35);
        ParamValueLen = iAP2MsgGetParamValueLen(v13);
        if (v580)
        {
          v250 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v250))
          {
            v251 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v251, v252, v253, v254, v255, v256, v257, v258, v259, v549, v550, v551, v552, v260);
            OUTLINED_FUNCTION_2_28(v261, 19);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v38 = ParamValueLen;
        v39 = ParamValueLen;
        v40 = CFArrayCreateMutable(kCFAllocatorDefault, ParamValueLen, &kCFTypeArrayCallBacks);
        if (v38)
        {
          do
          {
            v41 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, DataAsData);
            CFArrayAppendValue(v40, v41);
            if (v41)
            {
              CFRelease(v41);
            }

            ++DataAsData;
            --v39;
          }

          while (v39);
        }

        CFDictionarySetValue(Mutable, key, v40);
        if (v40)
        {
          v42 = v40;
          goto LABEL_76;
        }

LABEL_77:
        v6 = &audioProductCerts_endpoint_publish_onceToken;
        goto LABEL_108;
      case 20:
        v136 = OUTLINED_FUNCTION_1_20();
        v138 = iAP2MsgGetDataAsBool(v136, v137);
        OUTLINED_FUNCTION_18_10(v138);
        if (v139)
        {
          v513 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v513))
          {
            v514 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v514, v515, v516, v517, v518, v519, v520, v521, v522, v549, v550, v551, v552, v523);
            OUTLINED_FUNCTION_2_28(v524, 20);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v140 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v140, kCFNumberSInt8Type, v141);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v566;
        goto LABEL_106;
      case 21:
        v142 = OUTLINED_FUNCTION_1_20();
        DataAsU32 = iAP2MsgGetDataAsU32(v142, v143);
        OUTLINED_FUNCTION_24_6(DataAsU32);
        if (v145)
        {
          v357 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v357))
          {
            v358 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v358, v359, v360, v361, v362, v363, v364, v365, v366, v549, v550, v551, v552, v367);
            OUTLINED_FUNCTION_2_28(v368, 21);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v146 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v146, kCFNumberSInt32Type, v147);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v567;
        goto LABEL_106;
      case 22:
        v178 = OUTLINED_FUNCTION_1_20();
        v180 = iAP2MsgGetDataAsU32(v178, v179);
        OUTLINED_FUNCTION_24_6(v180);
        if (!v181)
        {
          v182 = OUTLINED_FUNCTION_8_12();
          CFNumberCreate(v182, kCFNumberSInt32Type, v183);
          v23 = OUTLINED_FUNCTION_7_14();
          v24 = v568;
          goto LABEL_106;
        }

        v537 = logObjectForModule_20();
        if (!OUTLINED_FUNCTION_13_9(v537))
        {
          goto LABEL_186;
        }

        v538 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_18_1(v538, v539, v540, v541, v542, v543, v544, v545, v546, v549, v550, v551, v552, v547);
        OUTLINED_FUNCTION_2_28(v548, 22);
        v213 = &_mh_execute_header;
        v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
LABEL_184:
        v221 = buf;
        v222 = v15;
        v223 = OS_LOG_TYPE_ERROR;
        v224 = 14;
        goto LABEL_185;
      case 23:
        v172 = OUTLINED_FUNCTION_1_20();
        v174 = iAP2MsgGetDataAsU32(v172, v173);
        OUTLINED_FUNCTION_24_6(v174);
        if (v175)
        {
          v298 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v298))
          {
            v299 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v299, v300, v301, v302, v303, v304, v305, v306, v307, v549, v550, v551, v552, v308);
            OUTLINED_FUNCTION_2_28(v309, 23);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v176 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v176, kCFNumberSInt32Type, v177);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v569;
        goto LABEL_106;
      case 24:
        v25 = OUTLINED_FUNCTION_1_20();
        v27 = iAP2MsgGetDataAsU32(v25, v26);
        OUTLINED_FUNCTION_24_6(v27);
        if (v28)
        {
          v238 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v238))
          {
            v239 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v239, v240, v241, v242, v243, v244, v245, v246, v247, v549, v550, v551, v552, v248);
            OUTLINED_FUNCTION_2_28(v249, 24);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v29 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v29, kCFNumberSInt32Type, v30);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v570;
        goto LABEL_106;
      case 25:
        v73 = OUTLINED_FUNCTION_1_20();
        v75 = iAP2MsgGetDataAsBool(v73, v74);
        OUTLINED_FUNCTION_18_10(v75);
        if (v76)
        {
          v381 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v381))
          {
            v382 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v382, v383, v384, v385, v386, v387, v388, v389, v390, v549, v550, v551, v552, v391);
            OUTLINED_FUNCTION_2_28(v392, 25);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v77 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v77, kCFNumberSInt8Type, v78);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v571;
        goto LABEL_106;
      case 26:
        v184 = OUTLINED_FUNCTION_1_20();
        DataAsString = iAP2MsgGetDataAsString(v184, v185);
        if (v580)
        {
          v262 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v262))
          {
            v263 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v263, v264, v265, v266, v267, v268, v269, v270, v271, v549, v550, v551, v552, v272);
            OUTLINED_FUNCTION_2_28(v273, 26);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        OUTLINED_FUNCTION_31_5(DataAsString);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v572;
        goto LABEL_106;
      case 27:
        v31 = OUTLINED_FUNCTION_1_20();
        v33 = iAP2MsgGetDataAsString(v31, v32);
        if (v580)
        {
          v310 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v310))
          {
            v311 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v311, v312, v313, v314, v315, v316, v317, v318, v319, v549, v550, v551, v552, v320);
            OUTLINED_FUNCTION_2_28(v321, 27);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        OUTLINED_FUNCTION_31_5(v33);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v573;
        goto LABEL_106;
      case 28:
        v61 = OUTLINED_FUNCTION_1_20();
        v63 = iAP2MsgGetDataAsU8(v61, v62);
        OUTLINED_FUNCTION_24_6(v63);
        if (v64)
        {
          v274 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v274))
          {
            v275 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v275, v276, v277, v278, v279, v280, v281, v282, v283, v549, v550, v551, v552, v284);
            OUTLINED_FUNCTION_2_28(v285, 28);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v65 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v65, kCFNumberCharType, v66);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v574;
        goto LABEL_106;
      case 30:
        v49 = OUTLINED_FUNCTION_1_20();
        v51 = iAP2MsgGetDataAsU16(v49, v50);
        OUTLINED_FUNCTION_14_11(v51);
        if (v52)
        {
          v393 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v393))
          {
            v394 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v394, v395, v396, v397, v398, v399, v400, v401, v402, v549, v550, v551, v552, v403);
            OUTLINED_FUNCTION_2_28(v404, 30);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v53 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v53, kCFNumberSInt16Type, v54);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v575;
        goto LABEL_106;
      case 31:
        v112 = OUTLINED_FUNCTION_1_20();
        v114 = iAP2MsgGetDataAsU16(v112, v113);
        OUTLINED_FUNCTION_14_11(v114);
        if (v115)
        {
          v226 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v226))
          {
            v227 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v227, v228, v229, v230, v231, v232, v233, v234, v235, v549, v550, v551, v552, v236);
            OUTLINED_FUNCTION_2_28(v237, 31);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v116 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v116, kCFNumberSInt16Type, v117);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v576;
        goto LABEL_106;
      case 32:
        v43 = OUTLINED_FUNCTION_1_20();
        v45 = iAP2MsgGetDataAsU16(v43, v44);
        OUTLINED_FUNCTION_14_11(v45);
        if (v46)
        {
          v286 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v286))
          {
            v287 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v287, v288, v289, v290, v291, v292, v293, v294, v295, v549, v550, v551, v552, v296);
            OUTLINED_FUNCTION_2_28(v297, 32);
            v213 = &_mh_execute_header;
            v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v47 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v47, kCFNumberSInt16Type, v48);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v577;
        goto LABEL_106;
      case 33:
        v187 = OUTLINED_FUNCTION_1_20();
        v189 = iAP2MsgGetDataAsU16(v187, v188);
        OUTLINED_FUNCTION_14_11(v189);
        if (!v190)
        {
          v191 = OUTLINED_FUNCTION_8_12();
          CFNumberCreate(v191, kCFNumberSInt16Type, v192);
          v23 = OUTLINED_FUNCTION_7_14();
          v24 = v578;
LABEL_106:
          CFDictionarySetValue(v23, v24, isa);
          if (isa)
          {
            CFRelease(isa);
          }

LABEL_108:
          v13 = iAP2MsgGetNextParam(a2, 0, v13);
          if (!v13)
          {
            goto LABEL_117;
          }

          continue;
        }

        v525 = logObjectForModule_20();
        if (OUTLINED_FUNCTION_13_9(v525))
        {
          v526 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_18_1(v526, v527, v528, v529, v530, v531, v532, v533, v534, v549, v550, v551, v552, v535);
          OUTLINED_FUNCTION_2_28(v536, 33);
          v213 = &_mh_execute_header;
          v214 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
          goto LABEL_184;
        }

LABEL_186:
        v5 = 0;
        if (Mutable)
        {
          goto LABEL_119;
        }

        return v5;
      default:
        v193 = v6[491];
        if (v193 && gNumLogObjects >= 41)
        {
          v194 = *(v193 + 320);
        }

        else
        {
          v194 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v582 = v193;
            OUTLINED_FUNCTION_17_0();
            OUTLINED_FUNCTION_28_4();
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v207, 0x12u);
            v194 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
        {
          v196 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_18_1(v196, v197, v198, v199, v200, v201, v202, v203, v204, v549, v550, v551, v552, v205);
          *v582 = ParamID;
          OUTLINED_FUNCTION_3_25(v206);
          _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }

        goto LABEL_108;
    }
  }
}

uint64_t iap2_vehicle_startStatusUpdatesHandler(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!*result)
  {
    return 0;
  }

  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 41)
  {
    v4 = *(gLogObjects + 320);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v103 = v2;
      v104 = 1024;
      v105 = v3;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v1[1];
    *buf = 138412290;
    v103 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting vehicle status updates for endpoint %@!", buf, 0xCu);
  }

  v7 = OUTLINED_FUNCTION_16_12();
  result = iap2_feature_getFeature(v7, v8);
  if (result)
  {
    v9 = result;
    if (*(result + 137))
    {
      if (*(result + 138) != 1)
      {
        v10 = 1;
        *(result + 138) = 1;
        iAP2MsgInit((v1 + 15), 41216, v1[24], 0xFFFF, 0, 0);
        v11 = *(v9 + 16);
        if (v11)
        {
          Count = CFArrayGetCount(v11);
          buf[0] = 0;
          v20 = OUTLINED_FUNCTION_21_5(Count, v13, v14, v15, v16, v17, v18, v19, v93, v97);
          buf[0] = 1;
          v28 = OUTLINED_FUNCTION_21_5(v20, v21, v22, v23, v24, v25, v26, v27, v94, v98);
          buf[0] = 2;
          v36 = OUTLINED_FUNCTION_21_5(v28, v29, v30, v31, v32, v33, v34, v35, v95, v99);
          buf[0] = 3;
          v44 = OUTLINED_FUNCTION_21_5(v36, v37, v38, v39, v40, v41, v42, v43, v96, v100);
          v45 = OUTLINED_FUNCTION_15_12();
          v101 = CFArrayContainsValue(v45, v106, v20) == 0;
          v46 = OUTLINED_FUNCTION_15_12();
          v47 = CFArrayContainsValue(v46, v107, v28) == 0;
          v48 = OUTLINED_FUNCTION_15_12();
          v49 = CFArrayContainsValue(v48, v108, v36) == 0;
          v50 = OUTLINED_FUNCTION_15_12();
          v10 = CFArrayContainsValue(v50, v109, v44) == 0;
          if (v20)
          {
            CFRelease(v20);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (v36)
          {
            CFRelease(v36);
          }

          v51 = v101;
          if (v44)
          {
            CFRelease(v44);
          }
        }

        else
        {
          v49 = 1;
          v47 = 1;
          v51 = 1;
        }

        if (*(v9 + 120) == 1)
        {
          v52 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v52, v53, 3);
        }

        if (*(v9 + 121) == 1)
        {
          v54 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v54, v55, 4);
        }

        if (*(v9 + 122) == 1)
        {
          v56 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v56, v57, 6);
        }

        if (!(v51 & 1 | ((*(v9 + 123) & 1) == 0)))
        {
          v58 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v58, v59, 9);
        }

        if (!v47 && (*(v9 + 124) & 1) != 0)
        {
          v60 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v60, v61, 10);
        }

        if (!v49 && (*(v9 + 125) & 1) != 0)
        {
          v62 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v62, v63, 11);
        }

        if (!v10 && (*(v9 + 126) & 1) != 0)
        {
          v64 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v64, v65, 12);
        }

        if (*(v9 + 131) == 1)
        {
          v66 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v66, v67, 17);
        }

        if (!(v51 & 1 | ((*(v9 + 127) & 1) == 0)))
        {
          v68 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v68, v69, 13);
        }

        if (!v47 && (*(v9 + 128) & 1) != 0)
        {
          v70 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v70, v71, 14);
        }

        if (!v49 && (*(v9 + 129) & 1) != 0)
        {
          v72 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v72, v73, 15);
        }

        if (!v10 && (*(v9 + 130) & 1) != 0)
        {
          v74 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v74, v75, 16);
        }

        if (*(v9 + 132) == 1)
        {
          v76 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v76, v77, 18);
        }

        if (*(v9 + 133) == 1)
        {
          v78 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v78, v79, 19);
        }

        if (*(v9 + 134) == 1)
        {
          v80 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v80, v81, 20);
        }

        if (*(v9 + 135) == 1)
        {
          v82 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v82, v83, 21);
        }

        if (*(v9 + 136) == 1)
        {
          v84 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v84, v85, 30);
        }

        return iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
      }

      v87 = logObjectForModule_20();
      result = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
    }

    else
    {
      v86 = logObjectForModule_20();
      result = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
    }

    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v88, v89, v90, v91, v92, 2u);
    return 0;
  }

  return result;
}

double _createFeature_11(uint64_t a1)
{
  if (a1)
  {
    v1 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040318D9E5CuLL);
    if (v1)
    {
      *v1 = 0;
      v1[96] = 0;
      *(v1 + 52) = 0;
      *(v1 + 2) = 0;
      *(v1 + 3) = 0;
      *(v1 + 1) = 0;
      result = 0.0;
      *(v1 + 40) = 0u;
      *(v1 + 56) = 0u;
      *(v1 + 72) = 0u;
      *(v1 + 15) = 0;
      *(v1 + 16) = 0;
      *(v1 + 14) = 0;
      *(v1 + 68) = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_11(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = v2[1];
      if (v3)
      {
        CFRelease(v3);
        v2[1] = 0;
      }

      v4 = v2[2];
      if (v4)
      {
        CFRelease(v4);
        v2[2] = 0;
      }

      v5 = v2[3];
      if (v5)
      {
        CFRelease(v5);
        v2[3] = 0;
      }

      v6 = v2[4];
      if (v6)
      {
        CFRelease(v6);
        v2[4] = 0;
      }

      v7 = v2[14];
      if (v7)
      {
        CFRelease(v7);
        v2[14] = 0;
      }

      v8 = v2[5];
      if (v8)
      {
        CFRelease(v8);
        v2[5] = 0;
      }

      v9 = v2[6];
      if (v9)
      {
        CFRelease(v9);
        v2[6] = 0;
      }

      if (*v1)
      {
        free(*v1);
        *v1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _checkIdentificationInfo_19(uint64_t a1)
{
  if (!iap2_feature_getFeature(a1, 0x14u))
  {
    v2 = OUTLINED_FUNCTION_16_12();
    iap2_features_createFeature(v2, v3);
  }

  v4 = OUTLINED_FUNCTION_16_12();
  Feature = iap2_feature_getFeature(v4, v5);
  if (!Feature)
  {
    return 17;
  }

  v7 = Feature;
  v18 = 0;
  v8 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgVehicleStatusList, 3, &v18);
  v9 = v8;
  if (v18 != 1 || v8)
  {
    if ((v18 & 1) == 0 && *(v7 + 137) == 1)
    {
      v9 = 14;
      iap2_identification_addRejectGroup(a1, 21, *(v7 + 104), 0xEu);
    }
  }

  else if (*(v7 + 137))
  {
    v10 = OUTLINED_FUNCTION_16_12();
    iap2_features_createFeature(v10, v11);
    v12 = OUTLINED_FUNCTION_16_12();
    iap2_identification_setIdentifiedForFeature(v12);
    return 0;
  }

  else
  {
    v13 = &dword_1001C3AFC;
    v14 = 3;
    do
    {
      v15 = *(v13 - 2);
      v16 = *v13;
      v13 += 3;
      v9 = 14;
      iap2_identification_rejectMsgID(a1, v15, v16, 0xEu);
      --v14;
    }

    while (v14);
  }

  return v9;
}

BOOL _parseIdentificationParams_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v469 = 0;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  v6 = a1;
  if (!iap2_feature_getFeature(a1, 0x14u))
  {
    v7 = OUTLINED_FUNCTION_16_12();
    iap2_features_createFeature(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_16_12();
  Feature = iap2_feature_getFeature(v9, v10);
  if (!Feature)
  {
    return 0;
  }

  v461 = Feature;
  v467 = v6;
  ParamID = iAP2MsgGetParamID(a3);
  v466 = ParamID;
  if (ParamID != 21)
  {
    v13 = ParamID;
    if (ParamID != 20)
    {
      v378 = gLogObjects;
      v379 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 41) && OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        v471 = v378;
        OUTLINED_FUNCTION_17_0();
        v472 = v379;
        OUTLINED_FUNCTION_22_5();
        _os_log_error_impl(v400, v401, v402, v403, v404, 0x12u);
      }

      if (OUTLINED_FUNCTION_21())
      {
        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        LODWORD(v471) = v13;
        OUTLINED_FUNCTION_3_25(MsgID);
        OUTLINED_FUNCTION_22_5();
        _os_log_error_impl(v395, v396, v397, v398, v399, 0xEu);
      }

      v3 = 0;
      v392 = 0;
      v19 = 10;
      v6 = v467;
      goto LABEL_353;
    }

    v14 = OUTLINED_FUNCTION_30_4();
    FirstParam = iAP2MsgGetFirstParam(v14, v15);
    NextParam = FirstParam;
    if (FirstParam)
    {
      DataAsU16 = 0;
      v462 = 0;
      v464 = 0;
      Mutable = 0;
      v457 = 0;
      v459 = 0;
      v454 = 0;
      DataAsU32 = 0;
      v443 = 0;
      v445 = 0;
      v447 = 0;
      v449 = 0;
      HIDWORD(v434) = 0;
      v438 = 0;
      cf = 0;
      v19 = 10;
      *&v17 = 67109632;
      v431 = v17;
      do
      {
        v20 = iAP2MsgGetParamID(NextParam);
        if (gLogObjects && gNumLogObjects >= 41)
        {
          v21 = *(gLogObjects + 320);
        }

        else
        {
          v22 = OUTLINED_FUNCTION_11();
          v21 = &_os_log_default;
          if (v22)
          {
            OUTLINED_FUNCTION_0_15(v22, v23, v24, v25, v26, v27, v28, v29, v30, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v31);
            OUTLINED_FUNCTION_10_6();
            _os_log_error_impl(v78, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v81, 0x12u);
            v21 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v471) = 20;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
        }

        switch(v20)
        {
          case 0:
            v32 = OUTLINED_FUNCTION_12_11();
            DataAsU16 = iAP2MsgGetDataAsU16(v32, v33);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v151 = OUTLINED_FUNCTION_11();
                if (v151)
                {
                  OUTLINED_FUNCTION_0_15(v151, v152, v153, v154, v155, v156, v157, v158, v159, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v160);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v303, v304, v305, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v306, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid identifier";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v438 = 1;
            break;
          case 1:
            if (v462)
            {
              CFRelease(v462);
            }

            v47 = OUTLINED_FUNCTION_12_11();
            v462 = iAP2MsgCopyDataAsCFString(v47, v48);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v161 = OUTLINED_FUNCTION_11();
                if (v161)
                {
                  OUTLINED_FUNCTION_0_15(v161, v162, v163, v164, v165, v166, v167, v168, v169, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v170);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v307, v308, v309, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v310, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid vehicleInfoName";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            cf = 1;
            break;
          case 2:
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            }

            v40 = OUTLINED_FUNCTION_12_11();
            DataAsU8 = iAP2MsgGetDataAsU8(v40, v41);
            valuePtr = DataAsU8;
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v121 = OUTLINED_FUNCTION_11();
                if (v121)
                {
                  OUTLINED_FUNCTION_0_15(v121, v122, v123, v124, v125, v126, v127, v128, v129, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v130);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v291, v292, v293, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v294, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid engineTypes";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            if (DataAsU8 <= 3)
            {
              v82 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
              v83 = Mutable;
              goto LABEL_107;
            }

            if (gLogObjects && gNumLogObjects >= 41)
            {
              v251 = *(gLogObjects + 320);
            }

            else
            {
              v264 = OUTLINED_FUNCTION_11();
              v251 = &_os_log_default;
              if (v264)
              {
                OUTLINED_FUNCTION_0_15(v264, v265, v266, v267, v268, v269, v270, v271, v272, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v273);
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v347, v348, v349, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v350, 0x12u);
                v251 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_3_14();
              _os_log_error_impl(&_mh_execute_header, v251, OS_LOG_TYPE_ERROR, "engineType >= eiAP2ParamID_VehicleInformationComponent_EngineType_Unknown", v274, 2u);
            }

            break;
          case 6:
            if (v457)
            {
              CFRelease(v457);
            }

            v57 = OUTLINED_FUNCTION_12_11();
            v457 = iAP2MsgCopyDataAsCFString(v57, v58);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v211 = OUTLINED_FUNCTION_11();
                if (v211)
                {
                  OUTLINED_FUNCTION_0_15(v211, v212, v213, v214, v215, v216, v217, v218, v219, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v220);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v327, v328, v329, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v330, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid displayName";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 8:
            if (v459)
            {
              CFRelease(v459);
            }

            v59 = OUTLINED_FUNCTION_12_11();
            v459 = iAP2MsgCopyDataAsCFString(v59, v60);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v221 = OUTLINED_FUNCTION_11();
                if (v221)
                {
                  OUTLINED_FUNCTION_0_15(v221, v222, v223, v224, v225, v226, v227, v228, v229, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v230);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v331, v332, v333, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v334, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid mapDisplayName";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 10:
            if (v464)
            {
              CFRelease(v464);
            }

            v43 = OUTLINED_FUNCTION_12_11();
            v464 = iAP2MsgCopyDataAsCFString(v43, v44);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v131 = OUTLINED_FUNCTION_11();
                if (v131)
                {
                  OUTLINED_FUNCTION_0_15(v131, v132, v133, v134, v135, v136, v137, v138, v139, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v140);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v295, v296, v297, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v298, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid vehicleColorHexCode";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 11:
            if (!v454)
            {
              v454 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            }

            v49 = OUTLINED_FUNCTION_12_11();
            valuePtr = iAP2MsgGetDataAsU8(v49, v50);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v171 = OUTLINED_FUNCTION_11();
                if (v171)
                {
                  OUTLINED_FUNCTION_0_15(v171, v172, v173, v174, v175, v176, v177, v178, v179, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v180);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v311, v312, v313, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v314, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid connectorTypes";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v82 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
            v83 = v454;
LABEL_107:
            CFArrayAppendValue(v83, v82);
            CFRelease(v82);
            break;
          case 12:
            v51 = OUTLINED_FUNCTION_12_11();
            DataAsU32 = iAP2MsgGetDataAsU32(v51, v52);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v181 = OUTLINED_FUNCTION_11();
                if (v181)
                {
                  OUTLINED_FUNCTION_0_15(v181, v182, v183, v184, v185, v186, v187, v188, v189, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v190);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v315, v316, v317, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v318, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeCCS1";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 13:
            v63 = OUTLINED_FUNCTION_12_11();
            LODWORD(v443) = iAP2MsgGetDataAsU32(v63, v64);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v241 = OUTLINED_FUNCTION_11();
                if (v241)
                {
                  OUTLINED_FUNCTION_0_15(v241, v242, v243, v244, v245, v246, v247, v248, v249, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v250);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v339, v340, v341, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v342, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeCCS2";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 14:
            v61 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v443) = iAP2MsgGetDataAsU32(v61, v62);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v231 = OUTLINED_FUNCTION_11();
                if (v231)
                {
                  OUTLINED_FUNCTION_0_15(v231, v232, v233, v234, v235, v236, v237, v238, v239, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v240);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v335, v336, v337, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v338, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeJ1772";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 15:
            v36 = OUTLINED_FUNCTION_12_11();
            LODWORD(v445) = iAP2MsgGetDataAsU32(v36, v37);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v101 = OUTLINED_FUNCTION_11();
                if (v101)
                {
                  OUTLINED_FUNCTION_0_15(v101, v102, v103, v104, v105, v106, v107, v108, v109, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v110);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v283, v284, v285, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v286, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeCHAdeMO";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 16:
            v45 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v445) = iAP2MsgGetDataAsU32(v45, v46);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v141 = OUTLINED_FUNCTION_11();
                if (v141)
                {
                  OUTLINED_FUNCTION_0_15(v141, v142, v143, v144, v145, v146, v147, v148, v149, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v150);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v299, v300, v301, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v302, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeMennekes";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 17:
            v38 = OUTLINED_FUNCTION_12_11();
            LODWORD(v447) = iAP2MsgGetDataAsU32(v38, v39);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v111 = OUTLINED_FUNCTION_11();
                if (v111)
                {
                  OUTLINED_FUNCTION_0_15(v111, v112, v113, v114, v115, v116, v117, v118, v119, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v120);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v287, v288, v289, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v290, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeGBT_DC";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 18:
            v34 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v447) = iAP2MsgGetDataAsU32(v34, v35);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v86 = OUTLINED_FUNCTION_11();
                if (v86)
                {
                  OUTLINED_FUNCTION_0_15(v86, v87, v88, v89, v90, v91, v92, v93, v94, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v95);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v279, v280, v281, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v282, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeGBT_AC";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 19:
            v53 = OUTLINED_FUNCTION_12_11();
            LODWORD(v449) = iAP2MsgGetDataAsU32(v53, v54);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v191 = OUTLINED_FUNCTION_11();
                if (v191)
                {
                  OUTLINED_FUNCTION_0_15(v191, v192, v193, v194, v195, v196, v197, v198, v199, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v200);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v319, v320, v321, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v322, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeTesla";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v84 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v434) = iAP2MsgGetDataAsU32(v84, v85);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v252 = OUTLINED_FUNCTION_11();
                if (v252)
                {
                  OUTLINED_FUNCTION_0_15(v252, v253, v254, v255, v256, v257, v258, v259, v260, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v261);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v343, v344, v345, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v346, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeNACS_DC";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 20:
            v55 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v449) = iAP2MsgGetDataAsU32(v55, v56);
            if (v469)
            {
              if (!gLogObjects || gNumLogObjects < 41)
              {
                v201 = OUTLINED_FUNCTION_11();
                if (v201)
                {
                  OUTLINED_FUNCTION_0_15(v201, v202, v203, v204, v205, v206, v207, v208, v209, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v210);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v323, v324, v325, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v326, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v100 = "Got invalid powerForConnectorTypeNACS_AC";
LABEL_183:
                _os_log_error_impl(v96, v97, v98, v100, v99, 2u);
              }

LABEL_184:
              v19 = 9;
            }

            break;
          default:
            if (gLogObjects && gNumLogObjects >= 41)
            {
              v65 = *(gLogObjects + 320);
            }

            else
            {
              v66 = OUTLINED_FUNCTION_11();
              v65 = &_os_log_default;
              if (v66)
              {
                OUTLINED_FUNCTION_0_15(v66, v67, v68, v69, v70, v71, v72, v73, v74, v405, v406, v407, v408, v409, v411, v413, v416, v419, v422, v425, v428, v431, *(&v431 + 1), v433, v434, v75);
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v275, v276, v277, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v278, 0x12u);
                v65 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_27_4(*&v431);
              OUTLINED_FUNCTION_29_4(v76, 20);
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v77, 0x14u);
            }

            break;
        }

        v262 = OUTLINED_FUNCTION_30_4();
        NextParam = iAP2MsgGetNextParam(v262, v263, NextParam);
      }

      while (NextParam);
      if ((v438 & cf & 1) != 0 && v19 != 9)
      {
        v380 = v459;
        v381 = DataAsU16;
        *v461 = DataAsU16;
        v382 = *(v461 + 8);
        v383 = v454;
        v384 = v457;
        if (v382)
        {
          CFRelease(v382);
          *(v461 + 8) = 0;
        }

        if (v462)
        {
          *(v461 + 8) = CFRetain(v462);
        }

        v385 = *(v461 + 16);
        if (v385)
        {
          CFRelease(v385);
          *(v461 + 16) = 0;
        }

        if (Mutable)
        {
          *(v461 + 16) = CFRetain(Mutable);
        }

        v386 = *(v461 + 24);
        if (v386)
        {
          CFRelease(v386);
          *(v461 + 24) = 0;
        }

        if (v457)
        {
          *(v461 + 24) = CFRetain(v457);
        }

        v387 = *(v461 + 32);
        if (v387)
        {
          CFRelease(v387);
          *(v461 + 32) = 0;
        }

        if (v459)
        {
          *(v461 + 32) = CFRetain(v459);
        }

        v388 = *(v461 + 40);
        if (v388)
        {
          CFRelease(v388);
          *(v461 + 40) = 0;
        }

        if (v464)
        {
          *(v461 + 40) = CFRetain(v464);
        }

        v389 = *(v461 + 48);
        if (v389)
        {
          CFRelease(v389);
          *(v461 + 48) = 0;
        }

        if (v454)
        {
          *(v461 + 48) = CFRetain(v454);
        }

        v19 = 0;
        *(v461 + 56) = DataAsU32;
        *(v461 + 60) = v443;
        *(v461 + 68) = v445;
        *(v461 + 76) = v447;
        *(v461 + 84) = v449;
        *(v461 + 88) = HIDWORD(v434);
        *(v461 + 92) = HIDWORD(v449);
        *(v461 + 96) = 1;
        NextParam = Mutable;
        FirstParam = v462;
        goto LABEL_334;
      }

      v381 = DataAsU16;
      v383 = v454;
      NextParam = Mutable;
      v384 = v457;
      v380 = v459;
      FirstParam = v462;
      if (v19 != 10)
      {
LABEL_334:
        if (FirstParam)
        {
          CFRelease(FirstParam);
        }

        if (NextParam)
        {
          CFRelease(NextParam);
        }

        if (v384)
        {
          CFRelease(v384);
        }

        if (v380)
        {
          CFRelease(v380);
        }

        if (v464)
        {
          CFRelease(v464);
        }

        if (v383)
        {
          CFRelease(v383);
        }

        v392 = v381;
        goto LABEL_352;
      }
    }

    else
    {
      v383 = 0;
      v464 = 0;
      v380 = 0;
      v384 = 0;
      v381 = 0;
    }

    v19 = 2;
    goto LABEL_334;
  }

  v351 = OUTLINED_FUNCTION_30_4();
  v353 = iAP2MsgGetFirstParam(v351, v352);
  if (!v353)
  {
    v391 = 0;
LABEL_348:
    v19 = 2;
    goto LABEL_349;
  }

  v354 = v353;
  v460 = 0;
  v458 = 0;
  v456 = 0;
  v453 = 0;
  allocator = 0;
  v448 = 0;
  v450 = 0;
  v435 = 0;
  v430 = 0;
  v432 = 0;
  v427 = 0;
  v424 = 0;
  v421 = 0;
  v418 = 0;
  IsDataVoid = 0;
  v444 = 0;
  v446 = 0;
  v442 = 0;
  v439 = 0;
  v440 = 0;
  v463 = 0;
  v465 = 0;
  cfa = 0;
  v429 = 0;
  v426 = 0;
  v423 = 0;
  v420 = 0;
  v417 = 0;
  v414 = 0;
  v410 = 0;
  v412 = 0;
  v19 = 10;
  do
  {
    v355 = iAP2MsgGetParamID(v354);
    v356 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 41)
    {
      v357 = *(gLogObjects + 320);
    }

    else
    {
      v357 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v471 = v356;
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_28_4();
        v357 = &_os_log_default;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v362, v363, v364, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v365, 0x12u);
      }
    }

    if (os_log_type_enabled(v357, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v471) = 21;
      _os_log_debug_impl(&_mh_execute_header, v357, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
    }

    switch(v355)
    {
      case 0:
        if (v465)
        {
          v19 = 5;
          v358 = 1;
        }

        else
        {
          v368 = OUTLINED_FUNCTION_23_5();
          LOWORD(v410) = iAP2MsgGetDataAsU16(v368, v369);
          v358 = v469 == 0;
        }

        v465 = v358;
        break;
      case 1:
        if (v463)
        {
          v19 = 5;
          v359 = 1;
        }

        else
        {
          if (cfa)
          {
            CFRelease(cfa);
          }

          v366 = OUTLINED_FUNCTION_23_5();
          cfa = iAP2MsgCopyDataAsCFString(v366, v367);
          v359 = v469 == 0;
        }

        v463 = v359;
        break;
      case 3:
        if (v439)
        {
          v19 = 5;
        }

        else
        {
          BYTE4(v410) = iAP2MsgIsDataVoid(v354);
        }

        v439 = 1;
        break;
      case 4:
        if (v440)
        {
          v19 = 5;
        }

        else
        {
          LOBYTE(v412) = iAP2MsgIsDataVoid(v354);
        }

        v440 = 1;
        break;
      case 6:
        if (v442)
        {
          v19 = 5;
        }

        else
        {
          BYTE4(v412) = iAP2MsgIsDataVoid(v354);
        }

        v442 = 1;
        break;
      case 9:
        if (v450)
        {
          v19 = 5;
        }

        else
        {
          IsDataVoid = iAP2MsgIsDataVoid(v354);
        }

        LOBYTE(v450) = 1;
        break;
      case 10:
        if ((v450 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v418 = iAP2MsgIsDataVoid(v354);
        }

        BYTE4(v450) = 1;
        break;
      case 11:
        if (allocator)
        {
          v19 = 5;
        }

        else
        {
          v421 = iAP2MsgIsDataVoid(v354);
        }

        allocator = 1;
        break;
      case 12:
        if (v453)
        {
          v19 = 5;
        }

        else
        {
          v424 = iAP2MsgIsDataVoid(v354);
        }

        LOBYTE(v453) = 1;
        break;
      case 13:
        if ((v453 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v427 = iAP2MsgIsDataVoid(v354);
        }

        BYTE4(v453) = 1;
        break;
      case 14:
        if (v456)
        {
          v19 = 5;
        }

        else
        {
          v430 = iAP2MsgIsDataVoid(v354);
        }

        v456 = 1;
        break;
      case 15:
        if (v458)
        {
          v19 = 5;
        }

        else
        {
          v432 = iAP2MsgIsDataVoid(v354);
        }

        v458 = 1;
        break;
      case 16:
        if (v460)
        {
          v19 = 5;
        }

        else
        {
          v435 = iAP2MsgIsDataVoid(v354);
        }

        v460 = 1;
        break;
      case 17:
        if (v444)
        {
          v19 = 5;
        }

        else
        {
          v414 = iAP2MsgIsDataVoid(v354);
        }

        LOBYTE(v444) = 1;
        break;
      case 18:
        if ((v444 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v417 = iAP2MsgIsDataVoid(v354);
        }

        BYTE4(v444) = 1;
        break;
      case 19:
        if (v446)
        {
          v19 = 5;
        }

        else
        {
          v420 = iAP2MsgIsDataVoid(v354);
        }

        LOBYTE(v446) = 1;
        break;
      case 20:
        if ((v446 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v423 = iAP2MsgIsDataVoid(v354);
        }

        BYTE4(v446) = 1;
        break;
      case 21:
        if (v448)
        {
          v19 = 5;
        }

        else
        {
          v426 = iAP2MsgIsDataVoid(v354);
        }

        LOBYTE(v448) = 1;
        break;
      case 30:
        if ((v448 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v429 = iAP2MsgIsDataVoid(v354);
        }

        BYTE4(v448) = 1;
        break;
      default:
        v360 = gLogObjects;
        if (gLogObjects && gNumLogObjects >= 41)
        {
          v361 = *(gLogObjects + 320);
        }

        else
        {
          v361 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v471 = v360;
            OUTLINED_FUNCTION_17_0();
            OUTLINED_FUNCTION_28_4();
            v361 = &_os_log_default;
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v374, v375, v376, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v377, 0x12u);
          }
        }

        if (os_log_type_enabled(v361, OS_LOG_TYPE_INFO))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_27_4(1.5048e-36);
          OUTLINED_FUNCTION_29_4(v370, 21);
          _os_log_impl(&_mh_execute_header, v361, OS_LOG_TYPE_INFO, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v371, 0x14u);
        }

        break;
    }

    v372 = OUTLINED_FUNCTION_30_4();
    v354 = iAP2MsgGetNextParam(v372, v373, v354);
  }

  while (v354);
  if (v465 && v463 && v19 != 5)
  {
    *(v461 + 104) = v410;
    v390 = *(v461 + 112);
    v391 = cfa;
    if (v390)
    {
      CFRelease(v390);
      *(v461 + 112) = 0;
    }

    if (cfa)
    {
      *(v461 + 112) = CFRetain(cfa);
    }

    v19 = 0;
    *(v461 + 120) = BYTE4(v410) & 1;
    *(v461 + 121) = v412 & 1;
    *(v461 + 122) = BYTE4(v412) & 1;
    *(v461 + 123) = IsDataVoid;
    *(v461 + 124) = v418;
    *(v461 + 125) = v421;
    *(v461 + 126) = v424;
    *(v461 + 127) = v427;
    *(v461 + 128) = v430;
    *(v461 + 129) = v432;
    *(v461 + 130) = v435;
    *(v461 + 131) = v414;
    *(v461 + 132) = v417;
    *(v461 + 133) = v420;
    *(v461 + 134) = v423;
    *(v461 + 135) = v426;
    *(v461 + 136) = v429;
    *(v461 + 137) = 1;
    goto LABEL_349;
  }

  v391 = cfa;
  if (v19 == 10)
  {
    goto LABEL_348;
  }

LABEL_349:
  if (v391)
  {
    CFRelease(v391);
  }

  v392 = 0;
LABEL_352:
  v3 = (v469 | v19) == 0;
  if (v19)
  {
LABEL_353:
    iap2_identification_addRejectGroup(v6, v466, v392, v19);
  }

  return v3;
}