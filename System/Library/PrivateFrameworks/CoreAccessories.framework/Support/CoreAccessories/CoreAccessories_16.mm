uint64_t iap2_oobBtPairing2_accessoryInfoHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v6 = *(gLogObjects + 400);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v159 = v4;
      OUTLINED_FUNCTION_49_2();
      *&v159[10] = v5;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v93, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v8 = *(a1 + 8);
    }

    else
    {
      v8 = 0;
    }

    *buf = 138412290;
    *v159 = v8;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v6, v7, "iAP2OOBBTPairing2 AccessoryInfo Handler %@", buf);
  }

  v9 = 0;
  if (!a1 || !a2)
  {
    return v9;
  }

  v154 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v157 = 0;
  if (!FirstParam)
  {
    v155 = 0;
    v14 = 0;
    v13 = 0;
    v156 = 0;
LABEL_56:
    v61 = gLogObjects;
    v62 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v63 = *(gLogObjects + 400);
      v64 = v156;
      v65 = v154;
    }

    else
    {
      v63 = &_os_log_default;
      v64 = v156;
      v65 = v154;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v159 = v61;
        OUTLINED_FUNCTION_49_2();
        *&v159[10] = v62;
        OUTLINED_FUNCTION_27_5();
        OUTLINED_FUNCTION_10(v94, v95, v96, v97, v98);
      }
    }

    if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
LABEL_68:
      Feature = iap2_feature_getFeature(v65, 0x19u);
      if (!Feature)
      {
        goto LABEL_94;
      }

      if (v157)
      {
        goto LABEL_94;
      }

      v74 = Feature;
      if (*(Feature + 16) != 1)
      {
        goto LABEL_94;
      }

      buf[0] = 0;
      if (!iap2_identification_checkRequiredMsgIDs(v65, &gskMsgOOBBTPairing2MainList, 4, buf))
      {
        goto LABEL_94;
      }

      if ((v155 & (v64 != 0)) != 1)
      {
        v80 = gLogObjects;
        v81 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 51)
        {
          v82 = *(gLogObjects + 400);
        }

        else
        {
          v82 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v159 = v80;
            OUTLINED_FUNCTION_49_2();
            *&v159[10] = v81;
            OUTLINED_FUNCTION_27_5();
            OUTLINED_FUNCTION_10(v105, v106, v107, v108, v109);
          }
        }

        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v99 = *(v65 + 8);
          if (v64)
          {
            CFDataGetLength(v64);
          }

          *buf = 138413314;
          *v159 = v99;
          OUTLINED_FUNCTION_49_2();
          *&v159[10] = v14;
          *&v159[14] = v115;
          *&v159[16] = v155 & 1;
          *&v159[20] = v115;
          *&v159[22] = v64 != 0;
          *&v159[26] = 2048;
          v160 = v116;
          OUTLINED_FUNCTION_27_5();
          _os_log_error_impl(v117, v118, OS_LOG_TYPE_ERROR, v119, v120, 0x28u);
        }

        goto LABEL_94;
      }

      v75 = _copyUUIDForComponentID(v74, v14);
      v76 = iap2_identification_copyMacAddressForComponentID(v65, v14);
      v77 = gLogObjects;
      v78 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v79 = *(gLogObjects + 400);
      }

      else
      {
        v79 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v159 = v77;
          OUTLINED_FUNCTION_49_2();
          *&v159[10] = v78;
          OUTLINED_FUNCTION_26_6();
          OUTLINED_FUNCTION_10(v100, v101, v102, v103, v104);
        }
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v159 = v14;
        *&v159[4] = 2112;
        *&v159[6] = v75;
        *&v159[14] = 2112;
        *&v159[16] = v76;
        OUTLINED_FUNCTION_26_6();
        _os_log_impl(v83, v84, OS_LOG_TYPE_DEFAULT, v85, v86, 0x1Cu);
      }

      if (v75)
      {
        v87 = v76 == 0;
      }

      else
      {
        v87 = 1;
      }

      v88 = !v87;
      if (v87)
      {
        v90 = gLogObjects;
        v91 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 51)
        {
          v92 = *(gLogObjects + 400);
        }

        else
        {
          v92 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v159 = v90;
            OUTLINED_FUNCTION_49_2();
            *&v159[10] = v91;
            OUTLINED_FUNCTION_26_6();
            OUTLINED_FUNCTION_10(v121, v122, v123, v124, v125);
          }
        }

        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v110 = *(v154 + 8);
          *buf = 138413058;
          *v159 = v110;
          *&v159[8] = 2112;
          *&v159[10] = v75;
          *&v159[18] = 2112;
          *&v159[20] = v76;
          LOWORD(v160) = 1024;
          *(&v160 + 2) = v14;
          OUTLINED_FUNCTION_26_6();
          _os_log_error_impl(v111, v112, OS_LOG_TYPE_ERROR, v113, v114, 0x26u);
        }

        v64 = v156;
        if (!v76)
        {
          v88 = 0;
          goto LABEL_107;
        }
      }

      else
      {
        v64 = v156;
        platform_oobBtPairing2_accessoryInfo(*(v65 + 8), v75, v76, v156, v13);
        CFRelease(v75);
      }

      CFRelease(v76);
      goto LABEL_107;
    }

    v66 = *(v65 + 8);
    if (v64)
    {
      Length = CFDataGetLength(v64);
      if (v13)
      {
LABEL_64:
        v68 = CFDataGetLength(v13);
LABEL_67:
        *buf = 138412802;
        *v159 = v66;
        *&v159[8] = 2048;
        *&v159[10] = Length;
        *&v159[18] = 2048;
        *&v159[20] = v68;
        OUTLINED_FUNCTION_27_5();
        _os_log_impl(v69, v70, OS_LOG_TYPE_INFO, v71, v72, 0x20u);
        goto LABEL_68;
      }
    }

    else
    {
      Length = 0;
      if (v13)
      {
        goto LABEL_64;
      }
    }

    v68 = 0;
    goto LABEL_67;
  }

  NextParam = FirstParam;
  v156 = 0;
  v13 = 0;
  v14 = 0;
  v155 = 0;
  *&v11 = 138412290;
  v152 = v11;
  *&v11 = 134218240;
  v151 = v11;
  *&v11 = 67109376;
  v153 = v11;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (ParamID != 2)
    {
      break;
    }

    DataAsData = iAP2MsgGetDataAsData(NextParam, &v157);
    if (v157)
    {
      v126 = logObjectForModule_21();
      if (!os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_120;
      }

      MsgID = iAP2MsgGetMsgID(a2);
      OUTLINED_FUNCTION_28_5(MsgID, v136, v137, v138, v139, v140, v141, v142, v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
      *v159 = 2;
      OUTLINED_FUNCTION_10_11();
      goto LABEL_119;
    }

    v22 = DataAsData;
    ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
    if (!v22 || ParamValueLen != 32 || v13)
    {
      v157 = 1;
      v39 = gLogObjects;
      v40 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v41 = *(gLogObjects + 400);
      }

      else
      {
        v41 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v151;
          *v159 = v39;
          OUTLINED_FUNCTION_49_2();
          *&v159[10] = v40;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v41 = &_os_log_default;
        }
      }

      v53 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      if (!v53)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_18_11(v53, v54, v55, v56, v57, v58, v59, v60, v151, *(&v151 + 1), v152);
      v51 = v41;
      v52 = "iAP2OOBBTPairing2 AccessoryInfo: %@, more than one pairDataP256";
LABEL_52:
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, v52, v50, 0xCu);
      goto LABEL_53;
    }

    v13 = CFDataCreate(kCFAllocatorDefault, v22, 32);
LABEL_53:
    NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
    if (!NextParam)
    {
      goto LABEL_56;
    }
  }

  v16 = ParamID;
  if (ParamID != 1)
  {
    if (ParamID)
    {
      v24 = v13;
      v25 = gLogObjects;
      v26 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v27 = *(gLogObjects + 400);
      }

      else
      {
        v27 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v151;
          *v159 = v25;
          OUTLINED_FUNCTION_49_2();
          *&v159[10] = v26;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v27 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_28_5(v28, v29, v30, v31, v32, v33, v34, v35, v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
        *v159 = v16;
        OUTLINED_FUNCTION_10_11();
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
      }

      v13 = v24;
    }

    else
    {
      DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v157);
      if (v157)
      {
        v126 = logObjectForModule_21();
        if (!os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_120;
        }

        v127 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_28_5(v127, v128, v129, v130, v131, v132, v133, v134, v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
        *v159 = 0;
        OUTLINED_FUNCTION_10_11();
        goto LABEL_119;
      }

      v14 = DataAsU16;
      v155 = 1;
    }

    goto LABEL_53;
  }

  v18 = iAP2MsgGetDataAsData(NextParam, &v157);
  if (!v157)
  {
    v19 = v18;
    v20 = iAP2MsgGetParamValueLen(NextParam);
    if (!v19 || v20 != 32 || v156)
    {
      v157 = 1;
      v36 = gLogObjects;
      v37 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v38 = *(gLogObjects + 400);
      }

      else
      {
        v38 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v151;
          *v159 = v36;
          OUTLINED_FUNCTION_49_2();
          *&v159[10] = v37;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v38 = &_os_log_default;
        }
      }

      v42 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (!v42)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_18_11(v42, v43, v44, v45, v46, v47, v48, v49, v151, *(&v151 + 1), v152);
      v51 = v38;
      v52 = "iAP2OOBBTPairing2 AccessoryInfo: %@, more than one pairDataP192";
      goto LABEL_52;
    }

    v156 = CFDataCreate(kCFAllocatorDefault, v19, 32);
    goto LABEL_53;
  }

  v126 = logObjectForModule_21();
  if (!os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_120;
  }

  v143 = iAP2MsgGetMsgID(a2);
  OUTLINED_FUNCTION_28_5(v143, v144, v145, v146, v147, v148, v149, v150, v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
  *v159 = 1;
  OUTLINED_FUNCTION_10_11();
LABEL_119:
  _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
LABEL_120:
  v64 = v156;
LABEL_94:
  v88 = 0;
  v9 = 0;
  if (!v64)
  {
    if (v13)
    {
      goto LABEL_96;
    }

    return v9;
  }

LABEL_107:
  CFRelease(v64);
  v9 = v88;
  if (v13)
  {
LABEL_96:
    CFRelease(v13);
  }

  return v9;
}

uint64_t iap2_oobBtPairing2_statusHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v6 = *(gLogObjects + 400);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v88 = v4;
      OUTLINED_FUNCTION_20_4();
      v89 = v5;
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v46, v47, v48, v49, v50, 0x12u);
    }
  }

  if (OUTLINED_FUNCTION_93())
  {
    if (a1)
    {
      v8 = *(a1 + 8);
    }

    else
    {
      v8 = 0;
    }

    *buf = 138412290;
    v88 = v8;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v6, v7, "iAP2OOBBTPairing2 Status Handler %@", buf);
  }

  v9 = 0;
  if (!a1 || !a2)
  {
    return v9;
  }

  v83 = a1;
  v10 = OUTLINED_FUNCTION_26_1();
  FirstParam = iAP2MsgGetFirstParam(v10, v11);
  v86 = 0;
  if (FirstParam)
  {
    NextParam = FirstParam;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v85 = 0;
    *&v13 = 67109376;
    v84 = v13;
    *&v13 = 134218240;
    v81 = v13;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      if (ParamID == 2)
      {
        break;
      }

      v19 = ParamID;
      if (ParamID == 1)
      {
        if (!iAP2MsgIsDataVoid(NextParam))
        {
          v56 = logObjectForModule_21();
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          MsgID = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_29_5(MsgID, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, v83, v84);
          LODWORD(v88) = 1;
          OUTLINED_FUNCTION_12_0();
LABEL_64:
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
          return 0;
        }

        v15 = 2;
        goto LABEL_24;
      }

      if (ParamID)
      {
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 51)
        {
          v23 = *(gLogObjects + 400);
        }

        else
        {
          v23 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v81;
            v88 = v21;
            OUTLINED_FUNCTION_20_4();
            v89 = v22;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_29_5(v24, v25, v26, v27, v28, v29, v30, v31, v81, *(&v81 + 1), v82, v83, v84);
          LODWORD(v88) = v19;
          OUTLINED_FUNCTION_12_0();
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v86);
        if (v86)
        {
          v56 = logObjectForModule_21();
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v57 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_29_5(v57, v58, v59, v60, v61, v62, v63, v64, v81, *(&v81 + 1), v82, v83, v84);
          LODWORD(v88) = 0;
          OUTLINED_FUNCTION_12_0();
          goto LABEL_64;
        }

        v17 = DataAsU16;
        v85 = 1;
      }

LABEL_32:
      v32 = OUTLINED_FUNCTION_26_1();
      NextParam = iAP2MsgGetNextParam(v32, v33, NextParam);
      if (!NextParam)
      {
        goto LABEL_35;
      }
    }

    iAP2MsgGetDataAsString(NextParam, &v86);
    if (v86)
    {
      v56 = logObjectForModule_21();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v65 = iAP2MsgGetMsgID(a2);
      OUTLINED_FUNCTION_29_5(v65, v66, v67, v68, v69, v70, v71, v72, v81, *(&v81 + 1), v82, v83, v84);
      LODWORD(v88) = 2;
      OUTLINED_FUNCTION_12_0();
      goto LABEL_64;
    }

    v15 = 4;
LABEL_24:
    v16 = 1;
    goto LABEL_32;
  }

  v85 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
LABEL_35:
  v34 = gLogObjects;
  v35 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v36 = *(gLogObjects + 400);
    v37 = v83;
  }

  else
  {
    v36 = &_os_log_default;
    v37 = v83;
    if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v88 = v34;
      OUTLINED_FUNCTION_20_4();
      v89 = v35;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    OUTLINED_FUNCTION_17_11();
    v90 = 2080;
    *v91 = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing2 Status: %@, resultCode %d (valid %d), cancelReason %s", buf, 0x22u);
  }

  Feature = iap2_feature_getFeature(v37, 0x19u);
  if (!Feature)
  {
    return 0;
  }

  v40 = Feature;
  if (*(Feature + 16) != 1)
  {
    return 0;
  }

  buf[0] = 0;
  if (!iap2_identification_checkRequiredMsgIDs(v37, &gskMsgOOBBTPairing2MainList, 4, buf))
  {
    return 0;
  }

  v41 = _copyUUIDForComponentID(v40, v17);
  v9 = v85 & v16 & (v41 != 0);
  if (v9 == 1)
  {
    platform_oobBtPairing2_completionStatus(*(v37 + 8), v41, v15);
  }

  else
  {
    v42 = gLogObjects;
    v43 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v44 = *(gLogObjects + 400);
    }

    else
    {
      v44 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v88 = v42;
        OUTLINED_FUNCTION_20_4();
        v89 = v43;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v55, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413570;
      OUTLINED_FUNCTION_17_11();
      v90 = v52;
      *v91 = v53;
      *&v91[4] = v52;
      *&v91[6] = v54;
      v92 = 2112;
      v93 = v41;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "iAP2OOBBTPairing2 Status: %@, no resultCode (%d / %d) parameter or no componenID (%d, valid=%d)... or can't find uuid (%@), ignore message", buf, 0x2Eu);
      if (!v41)
      {
        return 0;
      }
    }

    else if (!v41)
    {
      return 0;
    }
  }

  CFRelease(v41);
  return v9;
}

uint64_t iap2_oobBtPairing2_startPairingHandler(uint64_t *a1, uint64_t a2)
{
  v4 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v5 = *(gLogObjects + 400);
  }

  else
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      LODWORD(v62) = 134218240;
      HIDWORD(v62) = v4;
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42, v62, HIDWORD(v4));
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79_0(v6, v7, v8, v9, v10);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x19u);
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v12 = *(gLogObjects + 400);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v13, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 0x16u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (!*a2)
    {
      v18 = *(a2 + 8);
      if (v18)
      {
        if ((_getComponentIDForUUID(Feature, v18) & 0x80000000) == 0)
        {
          v19 = gLogObjects;
          v20 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v21 = *(gLogObjects + 400);
          }

          else
          {
            v21 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              LODWORD(v61) = 134218240;
              *(&v61 + 4) = v19;
              OUTLINED_FUNCTION_3();
              HIWORD(v61) = v20;
              OUTLINED_FUNCTION_17_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, v52, v53, v54, v61, HIWORD(v20));
            }
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_1_2();
            OUTLINED_FUNCTION_14_3();
            _os_log_impl(v22, v23, OS_LOG_TYPE_INFO, v24, v25, 0x12u);
          }

          v26 = iAP2MsgInit((a1 + 15), 2816, a1[24], 0xFFFF, 0, 0);
          OUTLINED_FUNCTION_30_5(v26);
          v27 = *(a2 + 16);
          if (v27)
          {
            BytePtr = CFDataGetBytePtr(v27);
            CFDataGetLength(*(a2 + 16));
            v29 = OUTLINED_FUNCTION_26_1();
            iAP2MsgAddDataParam(v29, v30, 1, BytePtr, v31);
          }

          *(Feature + 16) = 1;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v32 = *(gLogObjects + 400);
          }

          else
          {
            v32 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_21_2(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v57, v58, v59, v60);
            }
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            iAP2MsgGetMsgID(v21);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v33, v34, OS_LOG_TYPE_DEFAULT, v35, v36, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(a1, v21);
          platform_oobBtPairing2_deleteParams(a2);
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t iap2_oobBtPairing2_stopPairingHandler(uint64_t *a1, uint64_t a2)
{
  v4 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v5 = *(gLogObjects + 400);
  }

  else
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *v68 = 134218240;
      *&v68[4] = v4;
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48, *v68);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79_0(v6, v7, v8, v9, v10);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x19u);
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v13 = *(gLogObjects + 400);
  }

  else
  {
    v13 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7();
      *&v68[14] = v12;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, v52, v53, v54);
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x16u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (*a2 == 1)
    {
      v19 = *(a2 + 8);
      if (v19)
      {
        if ((_getComponentIDForUUID(Feature, v19) & 0x80000000) == 0)
        {
          v20 = gLogObjects;
          v21 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v22 = *(gLogObjects + 400);
          }

          else
          {
            v22 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              *v68 = 134218240;
              *&v68[4] = v20;
              OUTLINED_FUNCTION_3();
              *&v68[14] = v21;
              OUTLINED_FUNCTION_17_2(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v57, v58, v59, v60, *v68, *&v68[8]);
            }
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_1_2();
            OUTLINED_FUNCTION_14_3();
            _os_log_impl(v23, v24, OS_LOG_TYPE_INFO, v25, v26, 0x12u);
          }

          v27 = iAP2MsgInit((a1 + 15), 2819, a1[24], 0xFFFF, 0, 0);
          OUTLINED_FUNCTION_30_5(v27);
          if ((*(a2 + 16) - 2) >= 3)
          {
            v31 = gLogObjects;
            v32 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 51)
            {
              v33 = *(gLogObjects + 400);
            }

            else
            {
              v33 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *v68 = 134218240;
                *&v68[4] = v31;
                OUTLINED_FUNCTION_3();
                *&v68[14] = v32;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v67, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v68);
              }
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_1_2();
              *&v68[18] = v34;
              *&v68[20] = v35;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing2 StopPairing %@, componentID %d, unknown result! %d", v68, 0x18u);
            }
          }

          else
          {
            v28 = OUTLINED_FUNCTION_26_1();
            iAP2MsgAddVoidParam(v28, v29, v30);
          }

          *(Feature + 16) = 0;
          v36 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v37 = *(gLogObjects + 400);
          }

          else
          {
            v37 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_7();
              *&v68[14] = v36;
              OUTLINED_FUNCTION_21_2(&_mh_execute_header, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v63, v64, v65, v66);
            }
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            iAP2MsgGetMsgID(v22);
            OUTLINED_FUNCTION_7();
            *&v68[14] = v38;
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v39, v40, OS_LOG_TYPE_INFO, v41, v42, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(a1, v22);
          platform_oobBtPairing2_deleteParams(a2);
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

_BYTE *_createFeature_12(_BYTE *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v12 = 134218240;
      v13 = v2;
      OUTLINED_FUNCTION_3();
      v14 = v3;
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "iAP2OOBBTPairing2 _createFeature", &v12, 2u);
  }

  if (a1)
  {
    v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040A95220FAuLL);
    a1 = v5;
    if (v5)
    {
      v5[16] = 0;
      *v5 = OUTLINED_FUNCTION_31_6();
      *(a1 + 1) = OUTLINED_FUNCTION_31_6();
    }
  }

  return a1;
}

uint64_t _destroyFeature_12(CFTypeRef **a1, uint64_t a2)
{
  v4 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v5 = *(gLogObjects + 400);
  }

  else
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      LODWORD(v19) = 134218240;
      HIDWORD(v19) = v4;
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19, HIDWORD(v4));
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    v11 = *a1;
    if (*a1)
    {
      platform_oobBtPairing2_accessoryDetached(*(a2 + 8));
      platform_oobBTPairing_decrementUserCount();
      if (*v11)
      {
        CFRelease(*v11);
        *v11 = 0;
      }

      v12 = v11[1];
      if (v12)
      {
        CFRelease(v12);
        v11[1] = 0;
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

BOOL _startFeatureFromDevice_9(uint64_t a1)
{
  v2 = &off_1001C3000;
  if ((!gLogObjects || gNumLogObjects < 51) && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_3_26(3.8521e-34);
    OUTLINED_FUNCTION_5_21(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
  }

  if (OUTLINED_FUNCTION_93())
  {
    *buf = 0;
    OUTLINED_FUNCTION_12_12();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

  Feature = iap2_feature_getFeature(a1, 0x19u);
  if (Feature)
  {
    buf[0] = 0;
    if (iap2_identification_checkRequiredMsgIDs(a1, &gskMsgOOBBTPairing2MainList, 4, buf))
    {
      v8 = iap2_feature_getFeature(a1, 0);
      v89 = iap2_feature_getFeature(a1, 1u);
      v9 = iap2_feature_getFeature(a1, 0x14u);
      if (v9)
      {
        v10 = *(v9 + 24);
        if (v8)
        {
LABEL_11:
          v11 = iap2_accAuthentication_copyCertificate(a1);
          v12 = iap2_accAuthentication_copyCertificateSerial(a1);
LABEL_14:
          v92 = kCFAllocatorDefault;
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
          v13 = iap2_identification_transportComponents(a1);
          v90 = v11;
          if (v13)
          {
            v14 = v13;
            Count = CFDictionaryGetCount(v13);
            if (Count)
            {
              v16 = Count;
              v86 = v10;
              v87 = v12;
              v88 = a1;
              v85 = &v83;
              __chkstk_darwin(Count);
              v18 = (&v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
              memset(v18, 170, v17);
              CFDictionaryGetKeysAndValues(v14, 0, v18);
              if (v16 >= 1)
              {
                *&v19 = 134218240;
                v83 = v19;
                *&v19 = 67111426;
                v84 = v19;
                v91 = Feature;
                do
                {
                  v20 = *v18;
                  if (*v18)
                  {
                    v21 = *(v20 + 5);
                    if (v21 == 5 || v21 == 3)
                    {
                      v23 = v92;
                      v24 = CFUUIDCreate(v92);
                      v25 = CFUUIDCreateString(v23, v24);
                      v26 = CFNumberCreate(v23, kCFNumberSInt16Type, v20);
                      v27 = CFDataCreate(v23, v20 + 24, 6);
                      v28 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 51)
                      {
                        v29 = *(gLogObjects + 400);
                      }

                      else
                      {
                        v29 = &_os_log_default;
                        if (OUTLINED_FUNCTION_21())
                        {
                          OUTLINED_FUNCTION_20_8();
                          *&v95[10] = v28;
                          OUTLINED_FUNCTION_8_0();
                          _os_log_error_impl(v43, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v46, 0x12u);
                        }
                      }

                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                      {
                        v32 = *v20;
                        v33 = *(v20 + 24);
                        v34 = *(v20 + 25);
                        v35 = *(v20 + 26);
                        v36 = *(v20 + 27);
                        v37 = *(v20 + 28);
                        v38 = *(v20 + 29);
                        *buf = v84;
                        *v95 = v32;
                        *&v95[4] = 2112;
                        *&v95[6] = v26;
                        v96 = 2112;
                        v97 = v25;
                        v98 = 0;
                        v99 = 4;
                        v100 = v33;
                        v101 = 1024;
                        v102 = v34;
                        v103 = 1024;
                        v104 = v35;
                        v105 = 1024;
                        v106 = v36;
                        v107 = 1024;
                        v108 = v37;
                        v109 = 1024;
                        v110 = v38;
                        v111 = 2112;
                        v112 = v27;
                        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "iAP2OOBBTPairing2 _startFeatureFromDevice: add transportComponent: componentID=%d componentIDObj=%@ uuidStr=%@ macAddr=(%02X %02X %02X %02X %02X %02X) (%@)", buf, 0x4Au);
                      }

                      Feature = v91;
                      CFDictionarySetValue(*v91, v26, v25);
                      CFDictionarySetValue(*(Feature + 8), v25, v26);
                      BtComponentMutableDict = platform_oobBtPairing2_createBtComponentMutableDict(*v20, v25, *(v20 + 1), v27);
                      CFArrayAppendValue(Mutable, BtComponentMutableDict);
                      if (v24)
                      {
                        CFRelease(v24);
                      }

                      if (v25)
                      {
                        CFRelease(v25);
                      }

                      if (v26)
                      {
                        CFRelease(v26);
                      }

                      if (v27)
                      {
                        CFRelease(v27);
                      }

                      if (BtComponentMutableDict)
                      {
                        CFRelease(BtComponentMutableDict);
                      }
                    }
                  }

                  else
                  {
                    v30 = gNumLogObjects;
                    if ((!gLogObjects || gNumLogObjects < 51) && OUTLINED_FUNCTION_21())
                    {
                      OUTLINED_FUNCTION_20_8();
                      *&v95[10] = v30;
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v47, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, 0x12u);
                    }

                    if (OUTLINED_FUNCTION_21())
                    {
                      *buf = 0;
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v39, v40, v41, "transportComponent is NULL!", v42, 2u);
                    }
                  }

                  ++v18;
                  --v16;
                }

                while (v16);
              }

              v10 = v86;
              v12 = v87;
              a1 = v88;
              v2 = &off_1001C3000;
            }
          }

          else
          {
            if ((!gLogObjects || gNumLogObjects < 51) && OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3_26(3.8521e-34);
              OUTLINED_FUNCTION_5_21(&_mh_execute_header, v81, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }

            if (OUTLINED_FUNCTION_93())
            {
              *buf = 0;
              OUTLINED_FUNCTION_12_12();
              _os_log_impl(v51, v52, OS_LOG_TYPE_DEFAULT, v53, v54, 2u);
            }
          }

          isIdentifiedForCarPlay = iap2_identification_isIdentifiedForCarPlay(a1);
          v56 = *(v89 + 8);
          v57 = v90;
          AccInfoMutableDict = platform_oobBtPairing2_createAccInfoMutableDict(v56[2], v56[3], v56[1], v56[4], v56[5], v56[6], v10, v90, v12, isIdentifiedForCarPlay);
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v59 = *(gLogObjects + 400);
          }

          else
          {
            v59 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3_26(COERCE_FLOAT(*(v2 + 71)));
              OUTLINED_FUNCTION_5_21(&_mh_execute_header, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }
          }

          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v95 = AccInfoMutableDict;
            OUTLINED_FUNCTION_12_12();
            _os_log_debug_impl(v75, v76, OS_LOG_TYPE_DEBUG, v77, v78, 0xCu);
          }

          v60 = gLogObjects;
          v61 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 51) && OUTLINED_FUNCTION_21())
          {
            *buf = *(v2 + 71);
            *v95 = v60;
            *&v95[8] = 1024;
            *&v95[10] = v61;
            OUTLINED_FUNCTION_5_21(&_mh_execute_header, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v64 = OUTLINED_FUNCTION_93();
          v65 = Mutable;
          if (v64)
          {
            *buf = 138412290;
            *v95 = Mutable;
            OUTLINED_FUNCTION_12_12();
            OUTLINED_FUNCTION_79_0(v66, v67, v68, v69, v70);
          }

          platform_oobBTPairing2_incrementUserCount();
          if (!a1 || (v71 = *(a1 + 8)) == 0)
          {
            v71 = 0;
          }

          platform_oobBtPairing2_accessoryAttached(v71, AccInfoMutableDict, v65);
          if (AccInfoMutableDict)
          {
            CFRelease(AccInfoMutableDict);
          }

          if (v65)
          {
            CFRelease(v65);
          }

          if (v57)
          {
            CFRelease(v57);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          return Feature != 0;
        }
      }

      else
      {
        v10 = 0;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      v12 = 0;
      v11 = 0;
      goto LABEL_14;
    }
  }

  return Feature != 0;
}

uint64_t mfi4Auth_endpoint_publish(uint64_t *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v98 = 134218240;
      *&v98[4] = v2;
      OUTLINED_FUNCTION_3();
      *&v98[14] = v3;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v53, v54, v55, v56, v57, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v98 = 0;
    OUTLINED_FUNCTION_16_13(&_mh_execute_header, v5, v6, "mfi4Auth endpoint_publish", v7, v8, v9, v10, *v98);
  }

  if (!a1 || !*a1)
  {
    return 0;
  }

  isPublished = acc_endpoint_isPublished(*a1);
  v12 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 56) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_3();
    *&v98[14] = v12;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v58, v59, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60, v61, v62, v63);
  }

  if (OUTLINED_FUNCTION_81())
  {
    v13 = *(*a1 + 24);
    v14 = *(a1 + 12);
    *v98 = 67109632;
    *&v98[4] = v13;
    *&v98[8] = 1024;
    *&v98[10] = isPublished;
    *&v98[14] = 1024;
    *&v98[16] = v14;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v15, v16, v17, v18, v19, 0x14u);
  }

  if (isPublished)
  {
    if (*(a1 + 12))
    {
      if (*a1 && (v20 = *(*a1 + 16)) != 0)
      {
        Copy = CFStringCreateCopy(kCFAllocatorDefault, v20);
      }

      else
      {
        Copy = 0;
      }

      _mfi4Auth_endpoint_cleanupSession(a1);
      _mfi4Auth_endpoint_initSession(a1, Copy);
      goto LABEL_23;
    }

    return 0;
  }

LABEL_23:
  if (mfi4Auth_endpoint_publish_onceToken != -1)
  {
    dispatch_once(&mfi4Auth_endpoint_publish_onceToken, &__block_literal_global_18);
  }

  v22 = acc_endpoint_copyProperty(*a1);
  if (acc_policies_nfcTagUseKeys(v22))
  {
    v23 = gLogObjects;
    v24 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 56) && OUTLINED_FUNCTION_17())
    {
      *v98 = 134218240;
      *&v98[4] = v23;
      OUTLINED_FUNCTION_3();
      *&v98[14] = v24;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v70, v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v72, v73, v74, v75, *v98, *&v98[8], *&v98[16]);
    }

    if (OUTLINED_FUNCTION_81())
    {
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    }

    if ((platform_system_unlockedSinceBoot() & 1) == 0)
    {
      v30 = gLogObjects;
      v31 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 56) && OUTLINED_FUNCTION_17())
      {
        *v98 = 134218240;
        *&v98[4] = v30;
        OUTLINED_FUNCTION_3();
        *&v98[14] = v31;
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v87, v88, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v89, v90, v91, v92, *v98, *&v98[8], *&v98[16]);
      }

      if (OUTLINED_FUNCTION_81())
      {
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_6_19();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      }

      platform_system_startObservingFirstUnlockNotification();
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, 0, _mfi4Auth_endpoint_firstUnlockHandler, @"ACCPlatformApplicationFirstUnlockNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      if (!platform_system_unlockedSinceBoot())
      {
        v32 = 0;
        if (!v22)
        {
          return v32;
        }

        goto LABEL_65;
      }
    }
  }

  v39 = gLogObjects;
  v40 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 56) && OUTLINED_FUNCTION_17())
  {
    *v98 = 134218240;
    *&v98[4] = v39;
    OUTLINED_FUNCTION_3();
    *&v98[14] = v40;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v66, v67, v68, v69, *v98, *&v98[8], *&v98[16]);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
  }

  platform_sleepAssertion_createForMFi4();
  if (acc_endpoint_getTransportType(*a1) == 13)
  {
    if (!acc_userDefaults_BOOLForKey(@"SkipNFCAuth"))
    {
      *(a1[1] + 32) = 1;
      acc_endpoint_setProperty();
      v32 = v51;
      if (!v22)
      {
        return v32;
      }

      goto LABEL_65;
    }

    v46 = gLogObjects;
    v47 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v48 = *(gLogObjects + 440);
    }

    else
    {
      v48 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v98 = 134218240;
        *&v98[4] = v46;
        OUTLINED_FUNCTION_3();
        *&v98[14] = v47;
        OUTLINED_FUNCTION_40_1();
        _os_log_error_impl(v93, v94, v95, v96, v97, 0x12u);
      }
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_44();
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: SkipNFCAuth!!!", v98, 0xCu);
    }
  }

  else
  {
    v32 = 1;
    if (acc_connection_isAuthenticated(**a1, 1u))
    {
      goto LABEL_64;
    }

    v49 = gLogObjects;
    v50 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 56) && OUTLINED_FUNCTION_17())
    {
      *v98 = 134218240;
      *&v98[4] = v49;
      OUTLINED_FUNCTION_3();
      *&v98[14] = v50;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v76, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v78, v79, v80, v81, *v98, *&v98[8], *&v98[16]);
    }

    if (OUTLINED_FUNCTION_81())
    {
      *v98 = 0;
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v82, v83, v84, v85, v86, 2u);
    }

    _mfi4Auth_endpoint_sendAuthSetupStart(a1);
  }

  v32 = 1;
LABEL_64:
  if (v22)
  {
LABEL_65:
    CFRelease(v22);
  }

  return v32;
}

void _mfi4Auth_endpoint_handlePropertiesDidChange(int a1, int a2, CFTypeRef cf1, uint64_t a4, const __CFDictionary *a5)
{
  if (CFEqual(cf1, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification))
  {
    v6 = CFACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID;
    Value = CFDictionaryGetValue(a5, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID);
    CFRetain(Value);
    EndpointWithUUID = acc_manager_getEndpointWithUUID(Value);
    if (acc_endpoint_getTransportType(EndpointWithUUID) == 13)
    {
      v9 = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID);
      v10 = CFDictionaryGetValue(a5, v6);
      if (v9)
      {
        v11 = v10;
        v12 = CFGetTypeID(v9);
        if (v12 == CFStringGetTypeID() && v11 != 0)
        {
          v14 = CFGetTypeID(v11);
          if (v14 == CFStringGetTypeID())
          {
            v15 = acc_manager_getEndpointWithUUID(v11);
            if (v15)
            {
              v16 = v15;
              if (*(v15 + 7) == 14)
              {
                if (v15[7])
                {
                  v17 = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld);
                  v18 = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew);
                  v19 = gLogObjects;
                  v20 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 56)
                  {
                    v21 = *(gLogObjects + 440);
                  }

                  else
                  {
                    v21 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      v39 = v19;
                      v40 = 1024;
                      LODWORD(v41) = v20;
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }
                  }

                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v39 = v18;
                    v40 = 2112;
                    v41 = v17;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PropertiesDidchange: new %@, old %@", buf, 0x16u);
                  }

                  if (v18)
                  {
                    v22 = kCFACCProperties_Endpoint_NFC_SessionOpen;
                    v23 = CFDictionaryGetValue(v17, kCFACCProperties_Endpoint_NFC_SessionOpen);
                    v26 = v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFBooleanGetTypeID()) && CFBooleanGetValue(v24) == 1;
                    v27 = CFDictionaryGetValue(v18, v22);
                    if (v27 && (v28 = v27, v29 = CFGetTypeID(v27), v29 == CFBooleanGetTypeID()))
                    {
                      v30 = CFBooleanGetValue(v28);
                      v31 = v30 == 1 && !v26;
                      if ((!v26 ^ (v30 == 1)))
                      {
                        if (!v31)
                        {
                          return;
                        }

                        goto LABEL_36;
                      }

                      if (v30 == 1)
                      {
                        acc_platform_packetLogging_logEvent(v16, "NFC Session Opened", "MFi4Auth NFC session opened");
                        if ((v31 & 1) == 0)
                        {
                          return;
                        }

LABEL_36:
                        OUTLINED_FUNCTION_7_15();
                        v34 = 0x40000000;
                        v35 = ___mfi4Auth_endpoint_handlePropertiesDidChange_block_invoke;
                        v36 = &__block_descriptor_tmp_20_0;
                        v37 = Value;
                        dispatch_async(v32, block);
                        return;
                      }
                    }

                    else if (!v26)
                    {
                      return;
                    }

                    acc_platform_packetLogging_logEvent(v16, "NFC Session Closed", "MFi4Auth NFC session closed");
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void _mfi4Auth_endpoint_sendAuthSetupStart(NSObject *a1)
{
  if (a1)
  {
    if (a1->isa && (v2 = *(a1->isa + 2)) != 0 && (Copy = CFStringCreateCopy(kCFAllocatorDefault, v2)) != 0)
    {
      v4 = Copy;
      if (*(a1->isa + 6) == 3)
      {
        v5 = 10;
      }

      else
      {
        v5 = 0;
      }

      v6 = acc_userDefaults_copyIntegerForKey(@"MFi4AuthTimeoutValueS");
      v7 = v6 & ~(v6 >> 63);
      if (!v6)
      {
        v7 = v5;
      }

      if (v7)
      {
        isa = a1[5].isa;
        v9 = dispatch_time(0, 1000000000 * v7);
        dispatch_source_set_timer(isa, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      dispatch_time(0, 1000000);
      OUTLINED_FUNCTION_7_15();
      v14 = 0x40000000;
      v15 = ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke;
      v16 = &__block_descriptor_tmp_19;
      v17 = v4;
      dispatch_after(v10, v11, block);
    }

    else
    {
      v12 = logObjectForModule_1(0x37u);
      if (OUTLINED_FUNCTION_16(v12))
      {
        *buf = 136315138;
        v19 = "_mfi4Auth_endpoint_sendAuthSetupStart";
        _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%s: no endpointUUID for endpoint!!", buf, 0xCu);
      }
    }
  }
}

BOOL mfi4Auth_endpoint_destroy(uint64_t **a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v27 = 134218240;
      *&v27[4] = v2;
      OUTLINED_FUNCTION_3();
      v28 = v3;
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v17, v18, v19, v20, v21, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_destroy", v27, 2u);
  }

  if (a1)
  {
    v5 = *a1 != 0;
    if (*a1)
    {
      acc_platform_packetLogging_logEvent(**a1, "DETACH", "MFi4Auth accessory detached!");
      if (acc_endpoint_getTransportType(**a1) == 13)
      {
        dispatch_source_cancel((*a1)[4]);
        dispatch_release((*a1)[4]);
      }

      dispatch_source_cancel((*a1)[5]);
      dispatch_release((*a1)[5]);
      dispatch_sync((*a1)[2], &__block_literal_global_12);
      v6 = (*a1)[2];
      (*a1)[2] = 0;
      *a1 = 0;
      dispatch_release(v6);
    }

    notify_post("com.apple.accessories.connection.MFi4AccessoryDisconnected");
  }

  else
  {
    v5 = 0;
  }

  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v9 = *(gLogObjects + 440);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v27 = 134218240;
      *&v27[4] = v7;
      OUTLINED_FUNCTION_3();
      v28 = v8;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v22, v23, v24, v25, v26, 0x12u);
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    OUTLINED_FUNCTION_16_13(&_mh_execute_header, v10, v11, "mfi4Auth_endpoint_destroy: destroyed", v12, v13, v14, v15, *v27);
  }

  return v5;
}

void mfi4Auth_endpoint_create_cold_2()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void mfi4Auth_endpoint_create_cold_3()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _mfi4Auth_endpoint_initSession_cold_4(uint64_t a1, char a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "_mfi4Auth_endpoint_initSession";
  v5 = 2112;
  v6 = a1;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: endpointUUID %@, endpointSupportsMutualAuth %d", &v3, 0x1Cu);
}

void _mfi4Auth_endpoint_initSession_cold_7()
{
  v0 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void mfi4Auth_endpoint_processIncomingData_cold_3()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void mfi4Auth_endpoint_processIncomingData_cold_4()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void mfi4Auth_endpoint_processIncomingData_cold_5()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void mfi4Auth_endpoint_sendOutgoingData_cold_2()
{
  v0 = logObjectForModule_1(0x37u);
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void mfi4Auth_endpoint_sendOutgoingData_cold_3()
{
  v0 = logObjectForModule_1(0x37u);
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void mfi4Auth_endpoint_sendOutgoingData_cold_4(uint64_t *a1, _BYTE *a2)
{
  if (acc_endpoint_getTransportType(*a1) == 13)
  {
    acc_endpoint_setProperty();
  }

  *a2 = 0;
}

void mfi4Auth_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler_cold_1()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_2()
{
  v0 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_3()
{
  v0 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_4()
{
  v0 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke_cold_5()
{
  v0 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

uint64_t qiAuth_endpoint_publish(uint64_t a1)
{
  v2 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v3 = *(gLogObjects + 472);
  }

  else
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_16();
      v62 = v2;
      OUTLINED_FUNCTION_4_24(&_mh_execute_header, v41, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v43, v44, v45, v46, v53, block, v55, v56, v57, v58);
    }
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    OUTLINED_FUNCTION_5_22();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = *a1;
  if (!*a1 || !*(a1 + 2152) || !*(a1 + 2160))
  {
    return 0;
  }

  v10 = gLogObjects;
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v12 = *(gLogObjects + 472);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v60 = v10;
      v61 = 1024;
      v62 = v11;
      OUTLINED_FUNCTION_4_24(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v53, block, v55, v56, v57, v58);
      v9 = *a1;
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v9 + 24);
    *buf = 67109120;
    LODWORD(v60) = v19;
    OUTLINED_FUNCTION_5_22();
    _os_log_impl(v20, v21, v22, v23, v24, 8u);
    v9 = *a1;
  }

  if (!acc_endpoint_isPublished(v9))
  {
    goto LABEL_30;
  }

  v25 = *(a1 + 16);
  v26 = v25 ? CFStringCreateCopy(kCFAllocatorDefault, v25) : 0;
  v27 = gLogObjects;
  v28 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v29 = *(gLogObjects + 472);
  }

  else
  {
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v60 = v27;
      v61 = 1024;
      v62 = v28;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Cleaning up pQiAuthProtocol in publish", buf, 2u);
  }

  qiAuth_protocol_cleanup(*(a1 + 2040), 0, 0);
  result = qiAuth_protocol_init(*(a1 + 2040), v26, 0, 1, 1u, 1, *(a1 + 2152), *(a1 + 2160));
  if (result)
  {
LABEL_30:
    v31 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v32 = *(gLogObjects + 472);
    }

    else
    {
      v32 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_7_16();
        v62 = v31;
        OUTLINED_FUNCTION_4_24(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, v50, v51, v52, v53, block, v55, v56, v57, v58);
      }
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(*a1 + 24);
      *buf = 67109120;
      LODWORD(v60) = v33;
      OUTLINED_FUNCTION_5_22();
      _os_log_impl(v34, v35, v36, v37, v38, 8u);
    }

    dispatch_time(0, 100000000);
    OUTLINED_FUNCTION_7_15();
    v55 = 0x40000000;
    v56 = __qiAuth_endpoint_publish_block_invoke;
    v57 = &__block_descriptor_tmp_4_2;
    v58 = a1;
    dispatch_after(v39, v40, &block);
    return 1;
  }

  return result;
}

BOOL qiAuth_endpoint_processIncomingData(_BOOL8 result, CFDataRef theData)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (theData)
    {
      if (v3[255])
      {
        Length = CFDataGetLength(theData);
        if (Length < 2)
        {
          return 0;
        }

        else
        {
          CFRetain(theData);
          v5 = *CFDataGetBytePtr(theData);
          acc_platform_packetLogging_logQiAuthMsg(*v3, theData, 1);
          result = qiAuth_protocol_checkValidMessageHeaderAndSize(v3[255], v5, Length);
          if (result)
          {
            OUTLINED_FUNCTION_7_15();
            v8 = 0x40000000;
            v9 = __qiAuth_endpoint_processIncomingData_block_invoke;
            v10 = &__block_descriptor_tmp_8_0;
            v11 = v3;
            v12 = theData;
            v14 = v5;
            v13 = Length;
            dispatch_async(v6, block);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void qiAuth_endpoint_create_cold_1(void *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void qiAuth_endpoint_create_cold_2(void *a1, void *a2)
{
  if (a1[255])
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v6 = *(gLogObjects + 472);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = 134218240;
        v15 = v4;
        v16 = 1024;
        v17 = v5;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v14, 0x12u);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up pQiAuthProtocol in create", &v14, 2u);
    }

    v7 = a1[2];
    qiAuth_protocol_cleanup(a1[255], 0, 0);
    a1[255] = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  for (i = 256; i != 260; ++i)
  {
    v9 = a1[i];
    if (v9)
    {
      dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_source_cancel(a1[i]);
      dispatch_release(a1[i]);
      a1[i] = 0;
    }
  }

  v10 = a1[4];
  if (v10)
  {
    a1[4] = 0;
    dispatch_release(v10);
  }

  else
  {
    v11 = a1[1];
    if (v11)
    {
      CFRelease(v11);
      a1[1] = 0;
    }

    v12 = a1[2];
    if (v12)
    {
      CFRelease(v12);
      a1[2] = 0;
    }

    v13 = a1[269];
    if (v13)
    {
      free(v13);
    }

    free(a1);
  }

  *a2 = 0;
}

void _qiAuth_endpoint_dispatchQueueFinalizer_cold_2()
{
  v0 = logObjectForModule_22();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v1, 2u);
  }
}

void qiAuth_endpoint_destroy_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "QiAuth Endpoint Destroy. NULL ppProtocolEndpoint!", v3, 2u);
  }

  *a1 = 0;
}

void __qiAuth_endpoint_processIncomingData_block_invoke_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  v5 = *a2;
  v6 = 136315906;
  v7 = "qiAuth_endpoint_processIncomingData_block_invoke";
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to process incoming message!!! hdr 0x%02X, (%d bytes) %@", &v6, 0x22u);
}

void _qiAuth_endpoint_handleMessage_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "dataOutBuffer not allocated", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void _qiAuth_endpoint_handleMessage_cold_3(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void qiAuth_endpoint_setAuthState_cold_1(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pConnection = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void qiAuth_endpoint_setAuthState_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pEndpoint = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void qiAuth_endpoint_setAuthState_cold_3(_BYTE *a1)
{
  v2 = logObjectForModule_22();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "Unknown AuthStatus passed in!!!!", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

uint64_t _pingHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v10 = OUTLINED_FUNCTION_8_13();
      if (iap2_feature_getFeature(v10, v11) || (v12 = OUTLINED_FUNCTION_8_13(), iap2_features_createFeature(v12, v13), v14 = OUTLINED_FUNCTION_8_13(), (result = iap2_feature_getFeature(v14, v15)) != 0))
      {
        OUTLINED_FUNCTION_13_12();
        if (v3 && v6 >= 27)
        {
          v16 = *(v3 + 208);
        }

        else
        {
          v16 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *v54 = 134218240;
            *&v54[4] = v3;
            OUTLINED_FUNCTION_3();
            *&v54[14] = v6;
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42, *v54, *&v54[8], *&v54[16]);
          }
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_10_5(v17, v18, v19, v20, v21);
        }

        ++*v2;
        v22 = *(v4 + 3928);
        v23 = *(v5 + 3936);
        if (v22 && v23 >= 27)
        {
          v24 = *(v22 + 208);
        }

        else
        {
          v24 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *v54 = 134218240;
            *&v54[4] = v22;
            OUTLINED_FUNCTION_3();
            *&v54[14] = v23;
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48, *v54, *&v54[8], *&v54[16]);
          }
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_14_3();
          _os_log_impl(v25, v26, OS_LOG_TYPE_INFO, v27, v28, 8u);
        }

        v29 = *(v4 + 3928);
        if (v29 && *(v5 + 3936) >= 27)
        {
          v30 = *(v29 + 208);
        }

        else
        {
          v30 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_10(v49, v50, v51, v52, v53);
          }
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_10_5(v31, v32, v33, v34, v35);
        }

        iAP2MsgInit(a1 + 120, 0, *(a1 + 192), 0xFFFF, 0, 0);
        memcpy(*(a1 + 144), *(a2 + 24), *(a2 + 16));
        v36 = *(a1 + 144);
        *(a1 + 152) = v36 + iAP2MsgGetMsgLen(a2);
        return iap2_sessionControl_sendOutgoingMessage(a1, a1 + 120);
      }
    }
  }

  return result;
}

uint64_t _sendPingAccHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v10 = OUTLINED_FUNCTION_8_13();
      if (iap2_feature_getFeature(v10, v11) || (v12 = OUTLINED_FUNCTION_8_13(), iap2_features_createFeature(v12, v13), v14 = OUTLINED_FUNCTION_8_13(), (result = iap2_feature_getFeature(v14, v15)) != 0))
      {
        OUTLINED_FUNCTION_13_12();
        if (v3 && v6 >= 27)
        {
          v16 = *(v3 + 208);
        }

        else
        {
          v16 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *v53 = 134218240;
            *&v53[4] = v3;
            OUTLINED_FUNCTION_3();
            *&v53[14] = v6;
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v36, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v38, v39, v40, v41, *v53, *&v53[8], *&v53[16]);
          }
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_10_5(v17, v18, v19, v20, v21);
        }

        ++*(v2 + 4);
        v22 = *(v4 + 3928);
        v23 = *(v5 + 3936);
        if (v22 && v23 >= 27)
        {
          v24 = *(v22 + 208);
        }

        else
        {
          v24 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *v53 = 134218240;
            *&v53[4] = v22;
            OUTLINED_FUNCTION_3();
            *&v53[14] = v23;
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v42, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, *v53, *&v53[8], *&v53[16]);
          }
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_14_3();
          _os_log_impl(v25, v26, OS_LOG_TYPE_INFO, v27, v28, 8u);
        }

        iAP2MsgInit(a1 + 120, 5, *(a1 + 192), 0xFFFF, 0, 0);
        memcpy(*(a1 + 144), *(a2 + 24), *(a2 + 16));
        *(a1 + 152) = *(a1 + 144) + *(a2 + 16);
        iAP2MsgSetMsgID(a1 + 120, 5);
        v29 = *(v4 + 3928);
        if (v29 && *(v5 + 3936) >= 27)
        {
          v30 = *(v29 + 208);
        }

        else
        {
          v30 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_10(v48, v49, v50, v51, v52);
          }
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a1 + 120);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_10_5(v31, v32, v33, v34, v35);
        }

        return iap2_sessionControl_sendOutgoingMessage(a1, a1 + 120);
      }
    }
  }

  return result;
}

uint64_t _pingAccHandler(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Feature = iap2_feature_getFeature(a1, 0x12u);
      if (Feature || (iap2_features_createFeature(a1, 0x12u), (Feature = iap2_feature_getFeature(a1, 0x12u)) != 0))
      {
        v5 = Feature;
        if (gLogObjects && gNumLogObjects >= 27)
        {
          v6 = *(gLogObjects + 208);
        }

        else
        {
          v6 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_10(v18, v19, v20, v21, v22);
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_10_5(v7, v8, v9, v10, v11);
        }

        ++*(v5 + 8);
        if (gLogObjects && gNumLogObjects >= 27)
        {
          v12 = *(gLogObjects + 208);
        }

        else
        {
          v12 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_10(v23, v24, v25, v26, v27);
          }
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v13, v14, OS_LOG_TYPE_INFO, v15, v16, 8u);
        }
      }
    }
  }

  return 0;
}

uint64_t _userNotificationHandler(void *a1, uint64_t a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 && **a1)
  {
    FirstParam = iAP2MsgGetFirstParam(a2, 0);
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 27)
    {
      v7 = *(gLogObjects + 208);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v209 = v5;
        *&v209[8] = 1024;
        v210 = v6;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      MsgID = iAP2MsgGetMsgID(a2);
      *buf = 67109120;
      *v209 = MsgID;
      OUTLINED_FUNCTION_10_5(&_mh_execute_header, v7, v11, "Received User Notification message (0x%04X)!", buf);
    }

    if (!FirstParam)
    {
      v197 = 0;
      v198 = 0;
      v202 = 0;
      v12 = 0.0;
      v196 = 1;
LABEL_51:
      Identifier = acc_userNotifications_createIdentifier(@"test", a1[1]);
      v75 = 0;
      v77 = 0;
      v76 = 0;
      v78 = ACCUNCreate(v196, 0, 0, 0, 0, 0, v197 & 1, Identifier, v12, a1[2]);
      if (Identifier)
      {
        CFRelease(Identifier);
      }

      v203[0] = _NSConcreteStackBlock;
      v203[1] = 0x40000000;
      v203[2] = ___userNotificationHandler_block_invoke;
      v203[3] = &__block_descriptor_tmp_10;
      v205 = v198 & 1;
      v203[4] = a1;
      v206 = BYTE4(v197) & 1;
      v204 = WORD2(v198);
      ACCUNManagerPresentNotification(v78, v203);
      if (v78)
      {
        CFRelease(v78);
      }

      v3 = 1;
      goto LABEL_56;
    }

    v197 = 0;
    v198 = 0;
    v201 = 0;
    v202 = 0;
    v199 = 0;
    cf = 0;
    v12 = 0.0;
    v196 = 1;
    *&v9 = 134218240;
    v194 = v9;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(FirstParam);
      if (gLogObjects)
      {
        v14 = gNumLogObjects < 27;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = OUTLINED_FUNCTION_21();
        v26 = &_os_log_default;
        if (v15)
        {
          OUTLINED_FUNCTION_9_16(v15, v16, v17, v18, v19, v20, v21, v22, v23, v192, v193, v24);
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v25, 0x12u);
          v26 = &_os_log_default;
        }
      }

      else
      {
        v26 = *(gLogObjects + 208);
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v209 = ParamID;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
      }

      switch(ParamID)
      {
        case 0:
          v27 = OUTLINED_FUNCTION_2_29();
          DataAsU16 = iAP2MsgGetDataAsU16(v27, v28);
          if (!v207)
          {
            WORD2(v198) = DataAsU16;
            BYTE4(v197) = 1;
            break;
          }

          v130 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v130))
          {
            goto LABEL_85;
          }

          v131 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v131, v132, v133, v134, v135, v136, v137, v138, v139, v192, v193, v194, *(&v194 + 1), v140);
          *v209 = 0;
          *&v209[4] = 1024;
          *&v209[6] = v141;
          goto LABEL_84;
        case 1:
          v39 = OUTLINED_FUNCTION_2_29();
          DataAsU8 = iAP2MsgGetDataAsU8(v39, v40);
          if (v207)
          {
            v155 = logObjectForModule_23();
            if (!OUTLINED_FUNCTION_16(v155))
            {
              goto LABEL_85;
            }

            v156 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v156, v157, v158, v159, v160, v161, v162, v163, v164, v192, v193, v194, *(&v194 + 1), v165);
            OUTLINED_FUNCTION_0_16(v166, 1);
            goto LABEL_84;
          }

          if (DataAsU8 > 3)
          {
            v42 = 1;
          }

          else
          {
            v42 = DataAsU8;
          }

          v196 = v42;
          break;
        case 2:
          v207 = -1431655766;
          v32 = OUTLINED_FUNCTION_6_20();
          v202 = iAP2MsgCopyDataAsCFString(v32, v33);
          v117 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v117))
          {
            goto LABEL_85;
          }

          v119 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v119, v120, v121, v122, v123, v124, v125, v126, v127, v192, v193, v194, *(&v194 + 1), v128);
          OUTLINED_FUNCTION_0_16(v129, 2);
          goto LABEL_84;
        case 3:
          v207 = -1431655766;
          v34 = OUTLINED_FUNCTION_6_20();
          v199 = iAP2MsgCopyDataAsCFString(v34, v35);
          v142 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v142))
          {
            goto LABEL_85;
          }

          v144 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v144, v145, v146, v147, v148, v149, v150, v151, v152, v192, v193, v194, *(&v194 + 1), v153);
          OUTLINED_FUNCTION_0_16(v154, 3);
          goto LABEL_84;
        case 4:
          v207 = -1431655766;
          v30 = OUTLINED_FUNCTION_6_20();
          cf = iAP2MsgCopyDataAsCFString(v30, v31);
          v167 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v167))
          {
            goto LABEL_85;
          }

          v169 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v169, v170, v171, v172, v173, v174, v175, v176, v177, v192, v193, v194, *(&v194 + 1), v178);
          OUTLINED_FUNCTION_0_16(v179, 4);
          goto LABEL_84;
        case 5:
          v207 = -1431655766;
          v43 = OUTLINED_FUNCTION_6_20();
          v201 = iAP2MsgCopyDataAsCFString(v43, v44);
          v92 = logObjectForModule_23();
          if (!OUTLINED_FUNCTION_16(v92))
          {
            goto LABEL_85;
          }

          v94 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_5_23(v94, v95, v96, v97, v98, v99, v100, v101, v102, v192, v193, v194, *(&v194 + 1), v103);
          OUTLINED_FUNCTION_0_16(v104, 5);
          goto LABEL_84;
        case 6:
          v45 = OUTLINED_FUNCTION_2_29();
          DataAsBool = iAP2MsgGetDataAsBool(v45, v46);
          if (v207)
          {
            v180 = logObjectForModule_23();
            if (!OUTLINED_FUNCTION_16(v180))
            {
              goto LABEL_85;
            }

            v181 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v181, v182, v183, v184, v185, v186, v187, v188, v189, v192, v193, v194, *(&v194 + 1), v190);
            OUTLINED_FUNCTION_0_16(v191, 6);
            goto LABEL_84;
          }

          LOBYTE(v197) = DataAsBool;
          break;
        case 7:
          v36 = OUTLINED_FUNCTION_2_29();
          v38 = iAP2MsgGetDataAsU16(v36, v37);
          if (v207)
          {
            v105 = logObjectForModule_23();
            if (!OUTLINED_FUNCTION_16(v105))
            {
              goto LABEL_85;
            }

            v106 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v106, v107, v108, v109, v110, v111, v112, v113, v114, v192, v193, v194, *(&v194 + 1), v115);
            OUTLINED_FUNCTION_0_16(v116, 7);
LABEL_84:
            _os_log_error_impl(&_mh_execute_header, ParamID, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
            goto LABEL_85;
          }

          v12 = v38;
          break;
        case 8:
          v48 = OUTLINED_FUNCTION_2_29();
          v50 = iAP2MsgGetDataAsBool(v48, v49);
          if (v207)
          {
            v80 = logObjectForModule_23();
            if (OUTLINED_FUNCTION_16(v80))
            {
              v81 = iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_5_23(v81, v82, v83, v84, v85, v86, v87, v88, v89, v192, v193, v194, *(&v194 + 1), v90);
              OUTLINED_FUNCTION_0_16(v91, 8);
              goto LABEL_84;
            }

LABEL_85:
            v3 = 0;
            v76 = cf;
            v75 = v201;
            v77 = v199;
LABEL_56:
            if (v202)
            {
              CFRelease(v202);
            }

            if (v77)
            {
              CFRelease(v77);
            }

            if (v76)
            {
              CFRelease(v76);
            }

            if (v75)
            {
              CFRelease(v75);
            }

            return v3;
          }

          LOBYTE(v198) = v50;
          break;
        default:
          if (gLogObjects && gNumLogObjects >= 27)
          {
            v51 = *(gLogObjects + 208);
          }

          else
          {
            v52 = OUTLINED_FUNCTION_21();
            v51 = &_os_log_default;
            if (v52)
            {
              OUTLINED_FUNCTION_9_16(v52, v53, v54, v55, v56, v57, v58, v59, v60, v192, v193, v61);
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v73, 0x12u);
              v51 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v62 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_5_23(v62, v63, v64, v65, v66, v67, v68, v69, v70, v192, v193, v194, *(&v194 + 1), v71);
            *v209 = ParamID;
            *&v209[4] = 1024;
            *&v209[6] = v72;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
          }

          break;
      }

      FirstParam = iAP2MsgGetNextParam(a2, 0, FirstParam);
      if (!FirstParam)
      {
        goto LABEL_51;
      }
    }
  }

  return v3;
}

uint64_t _setTransportLockoutHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 27;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v31 = v6;
      *&v31[8] = 1024;
      v32 = v7;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  else
  {
    v10 = *(gLogObjects + 208);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    MsgID = iAP2MsgGetMsgID(a2);
    *buf = 67109120;
    *v31 = MsgID;
    OUTLINED_FUNCTION_10_5(&_mh_execute_header, v10, v12, "Received Set Transport Lockout message (0x%04X)!", buf);
  }

  if (!FirstParam)
  {
LABEL_31:
    acc_manager_disableLockoutForAllTransportTypes();
    return 1;
  }

  v13 = 0;
  v14 = 18;
  do
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v16 = gLogObjects;
    v17 = gNumLogObjects;
    if (gLogObjects)
    {
      v18 = gNumLogObjects < 27;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v31 = v16;
        *&v31[8] = 1024;
        v32 = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v19 = &_os_log_default;
      }
    }

    else
    {
      v19 = *(gLogObjects + 208);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v31 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
    }

    if (ParamID == 1)
    {
      v23 = OUTLINED_FUNCTION_17_12();
      DataAsU32 = iAP2MsgGetDataAsU32(v23, v24);
      if (v29)
      {
        v26 = logObjectForModule_23();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *v31 = 1;
          *&v31[4] = 1024;
          *&v31[6] = v28;
LABEL_42:
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
        }

        return 0;
      }

      v13 = DataAsU32;
    }

    else
    {
      if (ParamID)
      {
        goto LABEL_29;
      }

      v20 = OUTLINED_FUNCTION_17_12();
      DataAsU8 = iAP2MsgGetDataAsU8(v20, v21);
      if (v29)
      {
        v26 = logObjectForModule_23();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *v31 = 0;
          *&v31[4] = 1024;
          *&v31[6] = v27;
          goto LABEL_42;
        }

        return 0;
      }

      v14 = DataAsU8;
    }

LABEL_29:
    FirstParam = iAP2MsgGetNextParam(a2, 0, FirstParam);
  }

  while (FirstParam);
  if (v14 == 18)
  {
    goto LABEL_31;
  }

  if (v13)
  {
    acc_manager_enableLockoutForTransportType(v14, v13);
  }

  else
  {
    acc_manager_disableLockoutForTransportType(v14);
  }

  return 1;
}

_DWORD *_createFeature_13(_DWORD *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
    if (result)
    {
      *result = 0;
      result[2] = 0;
    }
  }

  return result;
}

BOOL _destroyFeature_13(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return a1 != 0;
}

uint64_t _checkIdentificationInfo_20(uint64_t a1, uint64_t a2)
{
  result = platform_systemInfo_isInternalBuild(a1, a2);
  if (result)
  {
    v6 = 0;
    result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgTestList, 5, &v6);
    if (v6 == 1 && result == 0)
    {
      v5 = OUTLINED_FUNCTION_8_13();
      iap2_identification_setIdentifiedForFeature(v5);
      return 0;
    }
  }

  return result;
}

void iAP2LinkActionHandleTimeSyncResponse_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, a2, a3, "Orig Timestamp = 0X%llx", a5, a6, a7, a8, v8, DWORD2(v8));
}

void iAP2LinkActionHandleTimeSyncResponse_cold_4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, a2, a3, "Recv Timestamp = 0X%llx", a5, a6, a7, a8, v8, DWORD2(v8));
}

void iAP2LinkActionHandleTimeSyncResponse_cold_6(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, a2, a3, "Cur Timestamp = 0X%llx", a5, a6, a7, a8, v8, DWORD2(v8));
}

void iAP2LinkActionHandleTimeSyncResponse_cold_8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, a2, a3, "Time Offset = %lld", a5, a6, a7, a8, v8, DWORD2(v8));
}

void iAP2LinkActionHandleTimeSyncResponse_cold_10(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, a2, a3, "Filtered Time Offset = %lld", a5, a6, a7, a8, v8, DWORD2(v8));
}

void iAP2LinkActionHandleTimeSyncResponse_cold_12(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, a2, a3, "Offset Uncertainty = %lld", a5, a6, a7, a8, v8, DWORD2(v8));
}

uint64_t iap2_mediaLibrary_startMediaLibraryInformationHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 21;
    }

    else
    {
      v4 = 1;
    }

    if (v4 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
    }

    v10 = OUTLINED_FUNCTION_66_1();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_26_7();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
    }

    v17 = OUTLINED_FUNCTION_91_0();
    if (v17)
    {
      v2 = 1;
      *v17 = 1;
      platform_mediaLibrary_requestLibraryInfoUpdate(*(a1 + 8));
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_mediaLibrary_stopMediaLibraryInformationHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 21;
    }

    else
    {
      v4 = 1;
    }

    if (v4 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
    }

    v10 = OUTLINED_FUNCTION_66_1();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_26_7();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
    }

    result = OUTLINED_FUNCTION_91_0();
    if (result)
    {
      *result = 0;
      return 1;
    }
  }

  return result;
}

uint64_t iap2_mediaLibrary_startMediaLibraryUpdatesHandler()
{
  result = OUTLINED_FUNCTION_88_1();
  v298 = v2;
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  if (!v1)
  {
    return result;
  }

  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 21;
  }

  else
  {
    v6 = 1;
  }

  if (v6 && OUTLINED_FUNCTION_21())
  {
    *buf = 134218240;
    v309 = v4;
    OUTLINED_FUNCTION_52_4();
    *v311 = v5;
    OUTLINED_FUNCTION_8_0();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
  }

  v12 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 0;
    OUTLINED_FUNCTION_26_7();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
  }

  FirstParam = iAP2MsgGetFirstParam(v3, 0);
  v305 = 0;
  if (!FirstParam)
  {
    v24 = 0;
    v304 = 0;
    v300 = 0;
    v301 = 0;
    v299 = 0;
    v23 = 0;
    v22 = 0;
    DataAsString = 0;
LABEL_97:
    v160 = gLogObjects;
    v161 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 21)
    {
      v162 = *(gLogObjects + 160);
      v163 = DataAsString;
    }

    else
    {
      v162 = &_os_log_default;
      v163 = DataAsString;
      if (OUTLINED_FUNCTION_19_0())
      {
        *buf = 134218240;
        v309 = v160;
        OUTLINED_FUNCTION_52_4();
        *v311 = v161;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v201, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_95())
    {
      v164 = "(nil)";
      *buf = 134219010;
      v165 = v301;
      if (!v301)
      {
        v165 = "(nil)";
      }

      v309 = v22;
      v310 = 2048;
      if (v163)
      {
        v164 = v163;
      }

      *v311 = v23;
      *&v311[8] = 2048;
      *v312 = v24;
      *&v312[8] = 2080;
      *&v312[10] = v165;
      *v313 = 2080;
      *&v313[2] = v164;
      _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_INFO, "StartMediaLibraryUpdates: mediaItemProperties=%llxh playlistProperties=%llxh playlistContentMediaItemProperties=%llxh lastRevision=%s libraryUID=%s", buf, 0x34u);
    }

    if (!v163)
    {
      return 0;
    }

    result = _iap2_mediaLibrary_findMediaLibraryForUID(v298, v163);
    if (result)
    {
      *result = 1;
      *(result + 136) = v22;
      *(result + 144) = v23;
      v166 = OUTLINED_FUNCTION_91_0();
      if (v166)
      {
        v168 = *(v166 + 48);
        if (v168)
        {
          v296 = v24;
          v303 = v166;
          if (v168 < 1)
          {
            v173 = 0;
            v172 = 0;
            v171 = 0;
            v170 = 0;
          }

          else
          {
            v169 = 0;
            LODWORD(v170) = 0;
            v171 = 0;
            v172 = 0;
            v173 = 0;
            *&v167 = 134218240;
            v291 = v167;
            *&v167 = 138414594;
            v294 = v167;
            do
            {
              v174 = *(*(v166 + 40) + 8 * v169);
              v306 = 0;
              v307 = 0;
              _calcWindowSize(v298, v174, &v307 + 1, &v307, &v306 + 1, &v306);
              v175 = gLogObjects;
              v176 = gNumLogObjects;
              if (gLogObjects)
              {
                v177 = gNumLogObjects < 31;
              }

              else
              {
                v177 = 1;
              }

              if (v177)
              {
                v182 = &_os_log_default;
                if (OUTLINED_FUNCTION_59())
                {
                  *buf = v291;
                  v309 = v175;
                  OUTLINED_FUNCTION_52_4();
                  *v311 = v176;
                  OUTLINED_FUNCTION_36_3();
                  _os_log_error_impl(v178, v179, v180, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v181, 0x12u);
                }
              }

              else
              {
                v182 = *(gLogObjects + 240);
              }

              v183 = os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT);
              if (v183)
              {
                OUTLINED_FUNCTION_59_4(v183, v184, v185, v186, v187, v188, v189, v190, v288, v289, v291, *(&v291 + 1), v294);
                v309 = v191;
                v310 = 2080;
                *v311 = v192;
                *&v311[8] = 1024;
                *v312 = v170;
                *&v312[4] = 1024;
                *&v312[6] = v193;
                *&v312[10] = 1024;
                *&v312[12] = v171;
                *&v312[16] = 1024;
                *v313 = v194;
                *&v313[4] = 1024;
                *&v313[6] = v172;
                v314 = 1024;
                v315 = v195;
                v316 = 1024;
                v317 = v173;
                v318 = 1024;
                v319 = v196;
                _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "iAP2MediaLibrary _recalcWindowSize: %@ - %s, window=%d->%d recordsPerMessage=%d->%d maxUpdateMessagesInFlight=%d->%d maxUpdateMessagesPendingSend=%d->%d", buf, 0x46u);
              }

              if (v170 <= HIDWORD(v307))
              {
                v197 = HIDWORD(v307);
              }

              else
              {
                v197 = v170;
              }

              if (HIDWORD(v307))
              {
                v170 = v197;
              }

              else
              {
                v170 = v170;
              }

              if (v171 <= v307)
              {
                v198 = v307;
              }

              else
              {
                v198 = v171;
              }

              if (v307)
              {
                v171 = v198;
              }

              if (v172 <= HIDWORD(v306))
              {
                v199 = HIDWORD(v306);
              }

              else
              {
                v199 = v172;
              }

              if (HIDWORD(v306))
              {
                v172 = v199;
              }

              if (v173 <= v306)
              {
                v200 = v306;
              }

              else
              {
                v200 = v173;
              }

              if (v306)
              {
                v173 = v200;
              }

              ++v169;
              v166 = v303;
            }

            while (v169 < v303[12]);
          }

          v202 = gLogObjects;
          v203 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 31)
          {
            v204 = *(gLogObjects + 240);
          }

          else
          {
            v204 = &_os_log_default;
            if (OUTLINED_FUNCTION_59())
            {
              *buf = 134218240;
              v309 = v202;
              OUTLINED_FUNCTION_52_4();
              *v311 = v203;
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v238, v239, v240, v241, v242, 0x12u);
            }
          }

          if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
          {
            v205 = *(v298 + 8);
            *buf = 138413826;
            v309 = v205;
            OUTLINED_FUNCTION_52_4();
            *v311 = v206;
            *&v311[4] = v207;
            *&v311[6] = v170;
            *v312 = v207;
            *&v312[2] = v208;
            *&v312[6] = v207;
            *&v312[8] = v171;
            *&v312[12] = v207;
            *&v312[14] = v209;
            *v313 = v207;
            *&v313[2] = v172;
            _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "iAP2MediaLibrary _recalcWindowSize: %@, for all library: window=%d->%d recordsPerMessage=%d->%d maxUpdateMessagesInFlight=%d->%d", buf, 0x30u);
          }

          if (v171 && v303[2] != v171)
          {
            v303[2] = v171;
          }

          v24 = v296;
          if (v172 && v303[3] != v172)
          {
            v303[3] = v172;
          }

          if (v173 && v303[4] != v173)
          {
            v303[4] = v173;
          }

          if (v170 && v303[1] != v170)
          {
            v303[1] = v170;
            platform_mediaLibrary_accessoryUpdate(*(v298 + 8), v170);
          }
        }
      }

      v210 = OUTLINED_FUNCTION_80_1(kCFAllocatorDefault, DataAsString);
      if (v301)
      {
        v211 = OUTLINED_FUNCTION_80_1(kCFAllocatorDefault, v301);
      }

      else
      {
        v211 = 0;
      }

      platform_mediaLibrary_startMediaLibraryUpdate(*(v298 + 8), v210, v211, v22, v23, v299 & 1, v300 & 1, BYTE4(v300) & 1, v304, v24);
      if (v210)
      {
        CFRelease(v210);
      }

      if (v211)
      {
        CFRelease(v211);
      }

      return 1;
    }

    return result;
  }

  v21 = FirstParam;
  v301 = 0;
  DataAsString = 0;
  v22 = 0;
  v23 = 0;
  v299 = 0;
  v300 = 0;
  v304 = 0;
  v24 = 0;
  *&v20 = 134218240;
  v295 = v20;
  *&v20 = 67109376;
  v293 = v20;
  *&v20 = 67109632;
  v297 = v20;
  v25 = 168820735;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(v21);
    switch(ParamID)
    {
      case 0:
        DataAsString = iAP2MsgGetDataAsString(v21, &v305);
        if (!v305)
        {
          goto LABEL_94;
        }

        v243 = logObjectForModule_24(0x1Eu);
        result = OUTLINED_FUNCTION_16(v243);
        if (result)
        {
          MsgID = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(MsgID, v245, v246, v247, v248, v249, v250, v251, v288, v289, v290, v292, v293);
          LODWORD(v309) = 0;
          OUTLINED_FUNCTION_21_6();
          goto LABEL_196;
        }

        return result;
      case 1:
        v132 = iAP2MsgGetDataAsString(v21, &v305);
        if (!v305)
        {
          v301 = v132;
          goto LABEL_94;
        }

        v261 = logObjectForModule_24(0x1Eu);
        result = OUTLINED_FUNCTION_16(v261);
        if (result)
        {
          v262 = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(v262, v263, v264, v265, v266, v267, v268, v269, v288, v289, v290, v292, v293);
          LODWORD(v309) = 1;
          OUTLINED_FUNCTION_21_6();
          goto LABEL_196;
        }

        return result;
      case 2:
        v28 = OUTLINED_FUNCTION_72_2();
        v30 = iAP2MsgGetFirstParam(v28, v29);
        if (!v30)
        {
          goto LABEL_94;
        }

        NextParam = v30;
        while (2)
        {
          v32 = iAP2MsgGetParamID(NextParam);
          v33 = v32;
          if (v32 <= 0x1B && ((1 << v32) & v25) != 0)
          {
            iAP2MsgIsDataVoid(NextParam);
            OUTLINED_FUNCTION_61_0();
            if ((v34 & 1) == 0)
            {
              v212 = logObjectForModule_24(0x1Eu);
              result = OUTLINED_FUNCTION_16(v212);
              if (result)
              {
                goto LABEL_177;
              }

              return result;
            }

            v22 |= 1 << _convertiAP2ToACCItemProperty__itemPropertyLookup[v33];
          }

          else
          {
            v22 = v23;
            v23 = v24;
            v25 = gNumLogObjects;
            if (gLogObjects)
            {
              v37 = gNumLogObjects < 31;
            }

            else
            {
              v37 = 1;
            }

            if (v37)
            {
              v24 = &_os_log_default;
              v38 = OUTLINED_FUNCTION_59();
              if (v38)
              {
                OUTLINED_FUNCTION_6_21(v38, v39, v40, v41, v42, v43, v44, v45, v288, v289, v290, v292, v293, *(&v293 + 1), v295);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v46, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, 0x12u);
              }
            }

            else
            {
              v24 = *(gLogObjects + 240);
            }

            if (OUTLINED_FUNCTION_59())
            {
              v50 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_11_12(v50, v51, v52, v53, v54, v55, v56, v57, v288, v289, v290, v292, v293, *(&v293 + 1), v295, *(&v295 + 1), v297);
              OUTLINED_FUNCTION_15_15();
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v58, v59, v60, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v61, 0x14u);
            }

            OUTLINED_FUNCTION_47_3();
          }

          v35 = OUTLINED_FUNCTION_72_2();
          NextParam = iAP2MsgGetNextParam(v35, v36, NextParam);
          if (!NextParam)
          {
            goto LABEL_94;
          }

          continue;
        }

      case 3:
        v62 = OUTLINED_FUNCTION_72_2();
        v64 = iAP2MsgGetFirstParam(v62, v63);
        if (!v64)
        {
          goto LABEL_94;
        }

        v65 = v64;
        while (2)
        {
          v66 = iAP2MsgGetParamID(v65);
          v67 = v66;
          if (v66 > 8)
          {
            v22 = v23;
            v23 = v24;
            v25 = gNumLogObjects;
            if (gLogObjects)
            {
              v71 = gNumLogObjects < 31;
            }

            else
            {
              v71 = 1;
            }

            if (v71)
            {
              v24 = &_os_log_default;
              v72 = OUTLINED_FUNCTION_59();
              if (v72)
              {
                OUTLINED_FUNCTION_6_21(v72, v73, v74, v75, v76, v77, v78, v79, v288, v289, v290, v292, v293, *(&v293 + 1), v295);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v80, v81, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v83, 0x12u);
              }
            }

            else
            {
              v24 = *(gLogObjects + 240);
            }

            if (OUTLINED_FUNCTION_59())
            {
              v86 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_9_17(v86, v87, v88, v89, v90, v91, v92, v93, v288, v289, v290, v292, v293, *(&v293 + 1), v295, *(&v295 + 1), v297);
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v94, v95, v96, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v97, 0x14u);
            }

            OUTLINED_FUNCTION_47_3();
          }

          else
          {
            if (((1 << v66) & 0x15F) != 0)
            {
              iAP2MsgIsDataVoid(v65);
              OUTLINED_FUNCTION_61_0();
              if (v68)
              {
                v23 |= 1 << _convertiAP2ToACCPlaylistProperty__playlistPropertyLookup[v67];
                goto LABEL_58;
              }

              v224 = logObjectForModule_24(0x1Eu);
              result = OUTLINED_FUNCTION_16(v224);
              if (!result)
              {
                return result;
              }

LABEL_183:
              v226 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_9_17(v226, v227, v228, v229, v230, v231, v232, v233, v288, v289, v290, v292, v293, *(&v293 + 1), v295, *(&v295 + 1), v297);
              v221 = &_mh_execute_header;
              v222 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_184;
            }

            if (v66 == 5)
            {
              v69 = 1;
            }

            else
            {
              v69 = 2;
            }

            iAP2MsgIsDataVoid(v65);
            OUTLINED_FUNCTION_61_0();
            if ((v70 & 1) == 0)
            {
              v225 = logObjectForModule_24(0x1Eu);
              result = OUTLINED_FUNCTION_16(v225);
              if (!result)
              {
                return result;
              }

              goto LABEL_183;
            }

            v304 |= v69;
            v23 |= 0x20uLL;
          }

LABEL_58:
          v84 = OUTLINED_FUNCTION_72_2();
          v65 = iAP2MsgGetNextParam(v84, v85, v65);
          if (!v65)
          {
            goto LABEL_94;
          }

          continue;
        }

      case 4:
        iAP2MsgIsDataVoid(v21);
        OUTLINED_FUNCTION_61_0();
        if ((v27 & 1) == 0)
        {
          v252 = logObjectForModule_24(0x1Eu);
          result = OUTLINED_FUNCTION_16(v252);
          if (result)
          {
            v253 = iAP2MsgGetMsgID(v3);
            OUTLINED_FUNCTION_59_4(v253, v254, v255, v256, v257, v258, v259, v260, v288, v289, v290, v292, v293);
            LODWORD(v309) = 4;
            OUTLINED_FUNCTION_21_6();
            goto LABEL_196;
          }

          return result;
        }

        v299 = 1;
        goto LABEL_94;
      case 5:
        iAP2MsgIsDataVoid(v21);
        OUTLINED_FUNCTION_61_0();
        if ((v133 & 1) == 0)
        {
          v270 = logObjectForModule_24(0x1Eu);
          result = OUTLINED_FUNCTION_16(v270);
          if (result)
          {
            v271 = iAP2MsgGetMsgID(v3);
            OUTLINED_FUNCTION_59_4(v271, v272, v273, v274, v275, v276, v277, v278, v288, v289, v290, v292, v293);
            LODWORD(v309) = 5;
            OUTLINED_FUNCTION_21_6();
            goto LABEL_196;
          }

          return result;
        }

        LOBYTE(v300) = 1;
        goto LABEL_94;
      case 6:
        iAP2MsgIsDataVoid(v21);
        OUTLINED_FUNCTION_61_0();
        if (v134)
        {
          BYTE4(v300) = 1;
LABEL_94:
          v21 = iAP2MsgGetNextParam(v3, 0, v21);
          if (!v21)
          {
            goto LABEL_97;
          }

          continue;
        }

        v279 = logObjectForModule_24(0x1Eu);
        result = OUTLINED_FUNCTION_16(v279);
        if (result)
        {
          v280 = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v292, v293);
          LODWORD(v309) = 6;
          OUTLINED_FUNCTION_21_6();
LABEL_196:
          OUTLINED_FUNCTION_19_9();
LABEL_185:
          _os_log_error_impl(v221, v235, v236, v222, v234, v237);
          return 0;
        }

        return result;
      case 7:
        v98 = OUTLINED_FUNCTION_72_2();
        v100 = iAP2MsgGetFirstParam(v98, v99);
        if (!v100)
        {
          goto LABEL_94;
        }

        v101 = v100;
        while (2)
        {
          v102 = iAP2MsgGetParamID(v101);
          v103 = v102;
          if (v102 <= 0x12 && ((1 << v102) & 0x55043) != 0)
          {
            iAP2MsgIsDataVoid(v101);
            OUTLINED_FUNCTION_61_0();
            if ((v104 & 1) == 0)
            {
              v223 = logObjectForModule_24(0x1Eu);
              result = OUTLINED_FUNCTION_16(v223);
              if (result)
              {
LABEL_177:
                v213 = iAP2MsgGetMsgID(v3);
                OUTLINED_FUNCTION_11_12(v213, v214, v215, v216, v217, v218, v219, v220, v288, v289, v290, v292, v293, *(&v293 + 1), v295, *(&v295 + 1), v297);
                OUTLINED_FUNCTION_15_15();
                v221 = &_mh_execute_header;
                v222 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_184:
                v234 = buf;
                v235 = 1;
                v236 = OS_LOG_TYPE_ERROR;
                v237 = 20;
                goto LABEL_185;
              }

              return result;
            }

            v24 |= 1 << _convertiAP2ToACCPlaylistContentItemProperty__itemPropertyLookup[v103];
          }

          else
          {
            v22 = v23;
            v23 = v24;
            v25 = gNumLogObjects;
            if (gLogObjects)
            {
              v107 = gNumLogObjects < 31;
            }

            else
            {
              v107 = 1;
            }

            if (v107)
            {
              v24 = &_os_log_default;
              v108 = OUTLINED_FUNCTION_59();
              if (v108)
              {
                OUTLINED_FUNCTION_6_21(v108, v109, v110, v111, v112, v113, v114, v115, v288, v289, v290, v292, v293, *(&v293 + 1), v295);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v116, v117, v118, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v119, 0x12u);
              }
            }

            else
            {
              v24 = *(gLogObjects + 240);
            }

            if (OUTLINED_FUNCTION_59())
            {
              v120 = iAP2MsgGetMsgID(v3);
              OUTLINED_FUNCTION_11_12(v120, v121, v122, v123, v124, v125, v126, v127, v288, v289, v290, v292, v293, *(&v293 + 1), v295, *(&v295 + 1), v297);
              OUTLINED_FUNCTION_15_15();
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v128, v129, v130, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v131, 0x14u);
            }

            OUTLINED_FUNCTION_47_3();
          }

          v105 = OUTLINED_FUNCTION_72_2();
          v101 = iAP2MsgGetNextParam(v105, v106, v101);
          if (!v101)
          {
            goto LABEL_94;
          }

          continue;
        }

      default:
        if (gLogObjects)
        {
          v135 = gNumLogObjects < 31;
        }

        else
        {
          v135 = 1;
        }

        if (v135)
        {
          v136 = OUTLINED_FUNCTION_59();
          if (v136)
          {
            OUTLINED_FUNCTION_6_21(v136, v137, v138, v139, v140, v141, v142, v143, v288, v289, v290, v292, v293, *(&v293 + 1), v295);
            OUTLINED_FUNCTION_36_3();
            _os_log_error_impl(v144, v145, v146, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v147, 0x12u);
          }
        }

        if (OUTLINED_FUNCTION_59())
        {
          v148 = iAP2MsgGetMsgID(v3);
          OUTLINED_FUNCTION_59_4(v148, v149, v150, v151, v152, v153, v154, v155, v288, v289, v290, v292, v293);
          LODWORD(v309) = ParamID;
          OUTLINED_FUNCTION_21_6();
          OUTLINED_FUNCTION_36_3();
          _os_log_error_impl(v156, v157, v158, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v159, 0xEu);
        }

        v25 = 168820735;
        goto LABEL_94;
    }
  }
}

uint64_t _iap2_mediaLibrary_findMediaLibraryForUID(uint64_t a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 0xDu);
    if (Feature && (v5 = *(Feature + 48), v5 >= 1))
    {
      for (i = *(Feature + 40); ; ++i)
      {
        v2 = *i;
        if (!strncmp((*i + 65), a2, 0x40uLL))
        {
          break;
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void iap2_mediaLibrary_stopMediaLibraryUpdatesHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, __int128 buf, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_101();
  a31 = v33;
  a32 = v34;
  OUTLINED_FUNCTION_88_1();
  if (!v36)
  {
    goto LABEL_38;
  }

  v37 = v35;
  if (!v35)
  {
    goto LABEL_38;
  }

  v38 = gLogObjects;
  v39 = gNumLogObjects;
  if (gLogObjects)
  {
    v40 = gNumLogObjects < 21;
  }

  else
  {
    v40 = 1;
  }

  v82 = v36;
  if (v40 && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_5_24();
    *(&buf + 14) = v39;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v41, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
  }

  if (OUTLINED_FUNCTION_82())
  {
    LOWORD(buf) = 0;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
  }

  v48 = OUTLINED_FUNCTION_22();
  FirstParam = iAP2MsgGetFirstParam(v48, v49);
  a17 = 0;
  if (FirstParam)
  {
    NextParam = FirstParam;
    v52 = 0;
    while (1)
    {
      if (iAP2MsgGetParamID(NextParam))
      {
        OUTLINED_FUNCTION_105_0();
        if (v53)
        {
          v54 = 1;
        }

        else
        {
          v54 = &off_1001C3000 < 31;
        }

        if (v54)
        {
          v56 = &_os_log_default;
          if (OUTLINED_FUNCTION_18())
          {
            OUTLINED_FUNCTION_5_24();
            *(&buf + 14) = &off_1001C3000;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf, 0x12u);
            v56 = &_os_log_default;
          }
        }

        else
        {
          v56 = *(v38 + 240);
        }

        if (OUTLINED_FUNCTION_114())
        {
          iAP2MsgGetMsgID(v37);
          LODWORD(buf) = 67109376;
          DWORD1(buf) = v32;
          OUTLINED_FUNCTION_12_0();
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", &buf, 0xEu);
        }
      }

      else
      {
        DataAsString = iAP2MsgGetDataAsString(NextParam, &a17);
        if (a17)
        {
          v75 = logObjectForModule_24(0x1Eu);
          if (OUTLINED_FUNCTION_16(v75))
          {
            iAP2MsgGetMsgID(v37);
            *&buf = 67109376;
            OUTLINED_FUNCTION_12_0();
            OUTLINED_FUNCTION_19_9();
            _os_log_error_impl(v76, v77, v78, v79, v80, v81);
          }

          goto LABEL_38;
        }

        v52 = DataAsString;
      }

      v57 = OUTLINED_FUNCTION_22();
      NextParam = iAP2MsgGetNextParam(v57, v58, NextParam);
      if (!NextParam)
      {
        goto LABEL_29;
      }
    }
  }

  v52 = 0;
LABEL_29:
  v59 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 21) && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_5_24();
    *(&buf + 14) = v59;
    OUTLINED_FUNCTION_8_0();
    _os_log_error_impl(v70, v71, v72, v73, v74, 0x12u);
  }

  v60 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = "(nil)";
    if (v52)
    {
      v62 = v52;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v62;
    OUTLINED_FUNCTION_26_7();
    _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
  }

  if (v52)
  {
    MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(v82, v52);
    if (MediaLibraryForUID)
    {
      *MediaLibraryForUID = 0;
      *(MediaLibraryForUID + 136) = 0;
      *(MediaLibraryForUID + 144) = 0;
      v69 = OUTLINED_FUNCTION_80_1(kCFAllocatorDefault, v52);
      platform_mediaLibrary_stopMediaLibraryUpdate(*(v82 + 8), v69);
      if (v69)
      {
        CFRelease(v69);
      }
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_102();
}

uint64_t iap2_mediaLibrary_playMediaLibraryCurrentSelectionHandler()
{
  result = OUTLINED_FUNCTION_88_1();
  if (v8)
  {
    v9 = v7;
    if (v7)
    {
      OUTLINED_FUNCTION_85_2();
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v1 < 21;
      }

      v72 = v10;
      if (v12 && OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        v75 = v0;
        OUTLINED_FUNCTION_34_2();
        v76 = v1;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      if (OUTLINED_FUNCTION_82())
      {
        *buf = 0;
        OUTLINED_FUNCTION_33_5();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
      }

      v20 = OUTLINED_FUNCTION_22();
      FirstParam = iAP2MsgGetFirstParam(v20, v21);
      if (FirstParam)
      {
        NextParam = FirstParam;
        v25 = 0;
        *&v23 = 134218240;
        v70 = v23;
        *&v23 = 67109376;
        v71 = v23;
        while (1)
        {
          if (iAP2MsgGetParamID(NextParam))
          {
            OUTLINED_FUNCTION_105_0();
            if (v11)
            {
              v26 = 1;
            }

            else
            {
              v26 = v2 < 31;
            }

            if (v26)
            {
              v28 = &_os_log_default;
              if (OUTLINED_FUNCTION_18())
              {
                *buf = v70;
                v75 = &off_1001C3000;
                OUTLINED_FUNCTION_34_2();
                v76 = v2;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v28 = &_os_log_default;
              }
            }

            else
            {
              v28 = 0x5BA6A0007ECC8;
            }

            if (OUTLINED_FUNCTION_114())
            {
              MsgID = iAP2MsgGetMsgID(v9);
              OUTLINED_FUNCTION_57_5(MsgID, v32, v33, v34, v35, v36, v37, v38, v70, *(&v70 + 1), v71);
              LODWORD(v75) = v5;
              OUTLINED_FUNCTION_10_2();
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
            }
          }

          else
          {
            v73 = -1431655766;
            DataAsString = iAP2MsgGetDataAsString(NextParam, &v73);
            if (v73)
            {
              v55 = logObjectForModule_24(0x1Eu);
              if (OUTLINED_FUNCTION_16(v55))
              {
                v56 = iAP2MsgGetMsgID(v9);
                OUTLINED_FUNCTION_57_5(v56, v57, v58, v59, v60, v61, v62, v63, v70, *(&v70 + 1), v71);
                LODWORD(v75) = 0;
                OUTLINED_FUNCTION_10_2();
                OUTLINED_FUNCTION_19_9();
                _os_log_error_impl(v64, v65, v66, v67, v68, v69);
              }

              return 0;
            }

            v25 = DataAsString;
          }

          v29 = OUTLINED_FUNCTION_22();
          NextParam = iAP2MsgGetNextParam(v29, v30, NextParam);
          if (!NextParam)
          {
            goto LABEL_29;
          }
        }
      }

      v25 = 0;
LABEL_29:
      v39 = *(v3 + 3928);
      v40 = *(v4 + 3936);
      if ((!v39 || v40 < 21) && OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        v75 = v39;
        OUTLINED_FUNCTION_34_2();
        v76 = v40;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v50, v51, v52, v53, v54, 0x12u);
      }

      v41 = OUTLINED_FUNCTION_66_1();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = "(nil)";
        if (v25)
        {
          v43 = v25;
        }

        *buf = 136315138;
        v75 = v43;
        OUTLINED_FUNCTION_26_7();
        _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      }

      if (v25)
      {
        v49 = OUTLINED_FUNCTION_80_1(kCFAllocatorDefault, v25);
        platform_mediaLibrary_playCurrentSelection(*(v72 + 8), v49);
        if (v49)
        {
          CFRelease(v49);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t iap2_mediaLibrary_infoUpdateHandler(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = 0;
  if (!a2)
  {
    return result;
  }

  v156 = *(v3 + 8);
  if (!v156)
  {
    return result;
  }

  if (*a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  v153 = a2;
  v6 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_3_5();
    *v162 = v6;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v143, v144, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_82())
  {
    v7 = *(a2 + 8);
    *buf = 138412802;
    if (v7)
    {
      v8 = ".";
    }

    else
    {
      v8 = "nil ";
    }

    v160 = v156;
    v161 = 2080;
    *v162 = v8;
    *&v162[8] = 2048;
    *&v162[10] = Count;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
  }

  result = iap2_feature_getFeature(v3, 0xDu);
  if (!result)
  {
    return result;
  }

  if (*result != 1)
  {
    return 0;
  }

  v157 = result;
  v154 = v3;
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_3_5();
      *v162 = v14;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v145, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_93_2())
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_83_2();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
  }

  if (Count >= 1)
  {
    v22 = 0;
    key = @"ACCMediaLibraryNameKey";
    v150 = @"ACCMediaLibraryUIDKey";
    *&v16 = 134218240;
    v152 = v16;
    *&v16 = 138412546;
    v155 = v16;
    *&v16 = 138413314;
    v149 = v16;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v15 + 8), v22);
      Value = CFDictionaryGetValue(ValueAtIndex, @"ACCMediaLibraryTypeKey");
      valuePtr = 4;
      if (!Value)
      {
        break;
      }

      if (CFNumberGetValue(Value, kCFNumberCharType, &valuePtr))
      {
        goto LABEL_42;
      }

      v25 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_75())
      {
        OUTLINED_FUNCTION_3_5();
        *v162 = v25;
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v66, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, 0x12u);
      }

      v42 = OUTLINED_FUNCTION_75();
      if (v42)
      {
        OUTLINED_FUNCTION_4_25(v42, v43, v44, v45, v46, v47, v48, v49, v149, *(&v149 + 1), v150, key, v152, *(&v152 + 1), v153, v154, v155);
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v62, v63, v64, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: failed to get type from typeObj! entry=%@", v65, 0x16u);
      }

LABEL_50:
      if (Count == ++v22)
      {
        for (i = 0; i != Count; ++i)
        {
          v71 = CFArrayGetValueAtIndex(*(v15 + 8), i);
          v72 = CFDictionaryGetValue(v71, @"ACCMediaLibraryTypeKey");
          valuePtr = 4;
          if (v72)
          {
            if (!CFNumberGetValue(v72, kCFNumberCharType, &valuePtr))
            {
              v73 = gNumLogObjects;
              if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_3_5();
                *v162 = v73;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v114, v115, v116, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v117, 0x12u);
              }

              v92 = OUTLINED_FUNCTION_11();
              if (v92)
              {
                OUTLINED_FUNCTION_4_25(v92, v93, v94, v95, v96, v97, v98, v99, v149, *(&v149 + 1), v150, key, v152, *(&v152 + 1), v153, v154, v155);
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v110, v111, v112, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: failed to get type from typeObj! entry=%@", v113, 0x16u);
              }

              valuePtr = 4;
            }
          }

          else
          {
            v74 = gNumLogObjects;
            if (gLogObjects)
            {
              v75 = gNumLogObjects < 31;
            }

            else
            {
              v75 = 1;
            }

            if (v75 && OUTLINED_FUNCTION_11())
            {
              OUTLINED_FUNCTION_3_5();
              *v162 = v74;
              OUTLINED_FUNCTION_10_6();
              _os_log_error_impl(v76, v77, v78, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v79, 0x12u);
            }

            v80 = OUTLINED_FUNCTION_11();
            if (v80)
            {
              OUTLINED_FUNCTION_4_25(v80, v81, v82, v83, v84, v85, v86, v87, v149, *(&v149 + 1), v150, key, v152, *(&v152 + 1), v153, v154, v155);
              OUTLINED_FUNCTION_10_6();
              _os_log_error_impl(v88, v89, v90, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: no Type object in libraryDictionary! entry=%@", v91, 0x16u);
            }
          }

          if ((valuePtr & 0xFFFFFFFB) != 0)
          {
            v100 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v101 = *(gLogObjects + 240);
            }

            else
            {
              v101 = &_os_log_default;
              if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_3_5();
                *v162 = v100;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v102, v103, v104, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v105, 0x12u);
              }
            }

            if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
            {
              v106 = CFDictionaryGetValue(v71, key);
              v107 = CFDictionaryGetValue(v71, v150);
              CFDictionaryGetValue(v71, @"ACCMediaLibraryTypeKey");
              OUTLINED_FUNCTION_12_13();
              OUTLINED_FUNCTION_86_2();
              *&v162[10] = v106;
              *&v162[18] = v108;
              *&v162[20] = v107;
              *&v162[28] = v108;
              v163 = v109;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "iap2_mediaLibrary_infoUpdateHandler %@ i=%ld addUpdateLibrary name=%@ uid=%@ type=%@", buf, 0x34u);
            }

            iap2_mediaLibrary_addUpdateLibrary(v154, v71);
          }
        }

        goto LABEL_87;
      }
    }

    v26 = gNumLogObjects;
    if (gLogObjects)
    {
      v27 = gNumLogObjects < 31;
    }

    else
    {
      v27 = 1;
    }

    if (v27 && OUTLINED_FUNCTION_75())
    {
      OUTLINED_FUNCTION_3_5();
      *v162 = v26;
      OUTLINED_FUNCTION_39_5();
      _os_log_error_impl(v28, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v31, 0x12u);
    }

    v32 = OUTLINED_FUNCTION_75();
    if (v32)
    {
      OUTLINED_FUNCTION_4_25(v32, v33, v34, v35, v36, v37, v38, v39, v149, *(&v149 + 1), v150, key, v152, *(&v152 + 1), v153, v154, v155);
      OUTLINED_FUNCTION_39_5();
      _os_log_error_impl(v58, v59, v60, "iap2_mediaLibrary_infoUpdateHandler %@, ERROR: no Type object in libraryDictionary! entry=%@", v61, 0x16u);
    }

LABEL_42:
    if (!valuePtr)
    {
      v40 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 31)
      {
        v41 = *(gLogObjects + 240);
      }

      else
      {
        v41 = &_os_log_default;
        if (OUTLINED_FUNCTION_75())
        {
          OUTLINED_FUNCTION_3_5();
          *v162 = v40;
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v50, v51, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, 0x12u);
        }
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v54 = CFDictionaryGetValue(ValueAtIndex, key);
        v55 = CFDictionaryGetValue(ValueAtIndex, v150);
        CFDictionaryGetValue(ValueAtIndex, @"ACCMediaLibraryTypeKey");
        OUTLINED_FUNCTION_12_13();
        OUTLINED_FUNCTION_86_2();
        *&v162[10] = v54;
        *&v162[18] = v56;
        *&v162[20] = v55;
        *&v162[28] = v56;
        v163 = v57;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "iap2_mediaLibrary_infoUpdateHandler %@ i=%ld addUpdateLibrary name=%@ uid=%@ type=%@", buf, 0x34u);
      }

      iap2_mediaLibrary_addUpdateLibrary(v154, ValueAtIndex);
    }

    goto LABEL_50;
  }

LABEL_87:
  v118 = iAP2MsgInit(v154 + 120, 19457, *(v154 + 192), 0xFFFF, 0, 0);
  v119 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v120 = v157;
  }

  else
  {
    v120 = v157;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_3_5();
      *v162 = v119;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v146, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_93_2())
  {
    v121 = *(v120 + 48);
    *buf = 138412546;
    v160 = v156;
    v161 = 1024;
    *v162 = v121;
    OUTLINED_FUNCTION_83_2();
    _os_log_impl(v122, v123, v124, v125, v126, 0x12u);
  }

  if (*(v120 + 48) >= 1)
  {
    v127 = 0;
    do
    {
      v128 = *(*(v120 + 40) + 8 * v127);
      v129 = iAP2MsgAddGroupParam(v118, 0);
      v130 = gLogObjects;
      v131 = gNumLogObjects;
      if (gLogObjects)
      {
        v132 = gNumLogObjects < 31;
      }

      else
      {
        v132 = 1;
      }

      if (v132)
      {
        v133 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          *buf = 134218240;
          v160 = v130;
          v161 = 1024;
          *v162 = v131;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v133 = &_os_log_default;
        }
      }

      else
      {
        v133 = *(gLogObjects + 240);
      }

      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        v134 = *(v128 + 33);
        *buf = 138413314;
        v160 = v156;
        v161 = 1024;
        *v162 = v127;
        *&v162[4] = 2080;
        *&v162[6] = v128 + 1;
        *&v162[14] = 2080;
        *&v162[16] = v128 + 65;
        *&v162[24] = 1024;
        *&v162[26] = v134;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "iap2_mediaLibrary_infoUpdateHandler %@ index=%d name=%s uid=%s type=%d", buf, 0x2Cu);
      }

      iAP2MsgAddStringParam(v118, v129, 0, v128 + 1);
      iAP2MsgAddStringParam(v118, v129, 1, v128 + 65);
      iAP2MsgAddU8Param(v118, v129, 2, v128[132]);
      ++v127;
      v120 = v157;
    }

    while (v127 < *(v157 + 48));
  }

  v135 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 31)
  {
    v136 = v154;
  }

  else
  {
    v136 = v154;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_3_5();
      *v162 = v135;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v147, v148, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_82())
  {
    iAP2MsgGetMsgID(v118);
    OUTLINED_FUNCTION_12_13();
    v161 = 1024;
    *v162 = v137;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v138, v139, v140, v141, v142, 0x12u);
  }

  iap2_sessionControl_sendOutgoingMessage(v136, v118);
  platform_mediaLibrary_deleteParams(v153);
  return 1;
}

uint64_t iap2_mediaLibrary_addUpdateLibrary(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = 1;
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"ACCMediaLibraryNameKey");
      v6 = CFDictionaryGetValue(theDict, @"ACCMediaLibraryUIDKey");
      v7 = CFDictionaryGetValue(theDict, @"ACCMediaLibraryTypeKey");
      valuePtr = -86;
      v2 = 1;
      if (v6)
      {
        if (v7)
        {
          CFNumberGetValue(v7, kCFNumberSInt8Type, &valuePtr);
          v8 = OUTLINED_FUNCTION_96_1(v6);
          MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(a1, v8);
          v10 = MediaLibraryForUID;
          if (MediaLibraryForUID || (v2 = 1, (v10 = malloc_type_calloc(1uLL, 0xC8uLL, 0x102004001C2AE80uLL)) != 0))
          {
            GetCStringFromCFString(v6);
            __strlcpy_chk();
            if (Value)
            {
              GetCStringFromCFString(Value);
              __strlcpy_chk();
            }

            v10[33] = valuePtr;
            v11 = &audioProductCerts_endpoint_publish_onceToken;
            v12 = &audioProductCerts_endpoint_publish_onceToken;
            v13 = &off_1001C3000;
            if (MediaLibraryForUID)
            {
              v2 = 1;
            }

            else
            {
              v14 = OUTLINED_FUNCTION_91_0();
              v2 = v14;
              if (v14)
              {
                v15 = *(v14 + 52);
                if (v15 && *(v14 + 40))
                {
                  if (v15 == *(v14 + 48))
                  {
                    v16 = 2 * v15;
                    *(v14 + 52) = 2 * v15;
                    v17 = gNumLogObjects;
                    if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_19_0())
                    {
                      OUTLINED_FUNCTION_13_4();
                      *v97 = v17;
                      OUTLINED_FUNCTION_20_9();
                      _os_log_error_impl(v83, v84, v85, v86, v87, 0x12u);
                    }

                    if (OUTLINED_FUNCTION_95())
                    {
                      OUTLINED_FUNCTION_23_6();
                      *v97 = v60;
                      *&v97[4] = v61;
                      *&v97[6] = v16;
                      OUTLINED_FUNCTION_48_2();
                      _os_log_impl(v62, v63, OS_LOG_TYPE_INFO, v64, v65, 0x18u);
                    }

                    OUTLINED_FUNCTION_106_0();
                    v69 = malloc_type_realloc(v66, v67, v68);
                    v11 = &audioProductCerts_endpoint_publish_onceToken;
                    if (v69)
                    {
                      *(v2 + 40) = v69;
                      *(v2 + 52) = v16;
                      bzero(&v69[8 * *(v2 + 48)], 8 * (v16 - *(v2 + 48)));
                    }

                    else
                    {
                      v70 = gNumLogObjects;
                      if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_19_0())
                      {
                        OUTLINED_FUNCTION_13_4();
                        *v97 = v70;
                        OUTLINED_FUNCTION_20_9();
                        _os_log_error_impl(v88, v89, v90, v91, v92, 0x12u);
                      }

                      v11 = &audioProductCerts_endpoint_publish_onceToken;
                      if (OUTLINED_FUNCTION_19_0())
                      {
                        OUTLINED_FUNCTION_23_6();
                        *v97 = v71;
                        *&v97[4] = v72;
                        *&v97[6] = v16;
                        OUTLINED_FUNCTION_20_9();
                        _os_log_error_impl(v73, v74, v75, v76, v77, 0x18u);
                      }
                    }
                  }
                }

                else
                {
                  *(v14 + 52) = 2;
                  v18 = gNumLogObjects;
                  if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_19_0())
                  {
                    OUTLINED_FUNCTION_13_4();
                    *v97 = v18;
                    OUTLINED_FUNCTION_20_9();
                    _os_log_error_impl(v78, v79, v80, v81, v82, 0x12u);
                    v19 = *(v2 + 52);
                  }

                  else
                  {
                    v19 = 2;
                  }

                  v11 = &audioProductCerts_endpoint_publish_onceToken;
                  if (OUTLINED_FUNCTION_95())
                  {
                    OUTLINED_FUNCTION_23_6();
                    *v97 = v19;
                    OUTLINED_FUNCTION_48_2();
                    _os_log_impl(v20, v21, OS_LOG_TYPE_INFO, v22, v23, 0x12u);
                  }

                  OUTLINED_FUNCTION_106_0();
                  *(v2 + 40) = malloc_type_calloc(v24, 8uLL, v25);
                }

                v26 = *(v2 + 40);
                if (v26)
                {
                  v27 = *(v2 + 52);
                  v12 = &audioProductCerts_endpoint_publish_onceToken;
                  if (v27 < 1)
                  {
LABEL_30:
                    v2 = 0;
                  }

                  else
                  {
                    v28 = 0;
                    while (*(v26 + 8 * v28))
                    {
                      if (v27 == ++v28)
                      {
                        goto LABEL_30;
                      }
                    }

                    v29 = gNumLogObjects;
                    if (v11[491])
                    {
                      v30 = gNumLogObjects < 31;
                    }

                    else
                    {
                      v30 = 1;
                    }

                    if (v30 && OUTLINED_FUNCTION_19_0())
                    {
                      OUTLINED_FUNCTION_13_4();
                      *v97 = v29;
                      OUTLINED_FUNCTION_20_9();
                      _os_log_error_impl(v31, v32, v33, v34, v35, 0x12u);
                    }

                    v13 = &off_1001C3000;
                    if (OUTLINED_FUNCTION_95())
                    {
                      OUTLINED_FUNCTION_23_6();
                      *v97 = v28;
                      *&v97[4] = 2080;
                      *&v97[6] = v36;
                      *&v97[14] = 2080;
                      *&v97[16] = v10 + 65;
                      *&v97[24] = v37;
                      *&v97[26] = v38;
                      OUTLINED_FUNCTION_48_2();
                      _os_log_impl(v39, v40, OS_LOG_TYPE_INFO, v41, v42, 0x2Cu);
                    }

                    *(*(v2 + 40) + 8 * v28) = v10;
                    ++*(v2 + 48);
                    v2 = 1;
                    v12 = &audioProductCerts_endpoint_publish_onceToken;
                    v11 = &audioProductCerts_endpoint_publish_onceToken;
                  }
                }

                else
                {
                  v2 = 0;
                  v12 = &audioProductCerts_endpoint_publish_onceToken;
                }
              }
            }

            v43 = v11[491];
            v44 = *(v12 + 984);
            if (v43)
            {
              v45 = v44 < 31;
            }

            else
            {
              v45 = 1;
            }

            if (v45)
            {
              v51 = &_os_log_default;
              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_13_4();
                *v97 = v44;
                OUTLINED_FUNCTION_20_9();
                _os_log_error_impl(v46, v47, v48, v49, v50, 0x12u);
              }
            }

            else
            {
              v51 = *(v43 + 240);
            }

            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = "failed to insert";
              v53 = *(a1 + 8);
              v54 = v10[33];
              if (v2)
              {
                v52 = "inserted";
              }

              v94 = *(v13 + 79);
              v95 = v53;
              if (MediaLibraryForUID)
              {
                v52 = "updated";
              }

              v96 = 2080;
              *v97 = v52;
              *&v97[8] = 2080;
              *&v97[10] = v10 + 1;
              *&v97[18] = 2080;
              *&v97[20] = v10 + 65;
              *&v97[28] = 1024;
              v98 = v54;
              OUTLINED_FUNCTION_48_2();
              _os_log_impl(v55, v56, OS_LOG_TYPE_DEFAULT, v57, v58, 0x30u);
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t iap2_mediaLibrary_libraryStateUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (v3[1])
      {
        if (*a2 != 1)
        {
          return 0;
        }

        v4 = OUTLINED_FUNCTION_96_1(*(a2 + 8));
        result = _iap2_mediaLibrary_findMediaLibraryForUID(v3, v4);
        if (!result)
        {
          return result;
        }

        if (*result != 1)
        {
          return 0;
        }

        v5 = gLogObjects;
        v6 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_17())
        {
          v30 = 134218240;
          v31 = v5;
          OUTLINED_FUNCTION_3();
          v32 = v6;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v23, v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v30);
        }

        if (OUTLINED_FUNCTION_82())
        {
          OUTLINED_FUNCTION_43_5();
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v7, v8, OS_LOG_TYPE_INFO, v9, v10, 0x22u);
        }

        v11 = iAP2MsgInit((v3 + 15), 19460, v3[24], 0xFFFF, 0, 0);
        iAP2MsgAddCFStringParam(v11, 0, 0, *(a2 + 8));
        v12 = *(a2 + 16);
        if (v12 == 1)
        {
          v13 = *(a2 + 20);
          v14 = v11;
          v15 = 9;
        }

        else
        {
          if (v12)
          {
            v16 = gLogObjects;
            v17 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v18 = *(gLogObjects + 240);
            }

            else
            {
              v18 = &_os_log_default;
              if (OUTLINED_FUNCTION_27())
              {
                v30 = 134218240;
                v31 = v16;
                OUTLINED_FUNCTION_3();
                v32 = v17;
                OUTLINED_FUNCTION_14_3();
                OUTLINED_FUNCTION_10(v25, v26, v27, v28, v29);
              }
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_43_5();
              OUTLINED_FUNCTION_14_3();
              _os_log_impl(v19, v20, OS_LOG_TYPE_INFO, v21, v22, 0x22u);
            }

            goto LABEL_18;
          }

          v13 = *(a2 + 20);
          v14 = v11;
          v15 = 8;
        }

        iAP2MsgAddU8Param(v14, 0, v15, v13);
LABEL_18:
        iap2_sessionControl_sendOutgoingMessage(v3, v11);
        platform_mediaLibrary_deleteParams(a2);
        return 1;
      }
    }
  }

  return result;
}

uint64_t iap2_mediaLibrary_updateHandler(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    result = 0;
    if (a2)
    {
      v583 = v3;
      theString = *(v3 + 8);
      if (theString)
      {
        if (*a2 != 2)
        {
          return 0;
        }

        v4 = OUTLINED_FUNCTION_91_0();
        v5 = OUTLINED_FUNCTION_96_1(*(v2 + 1));
        MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(v583, v5);
        result = 0;
        v587 = v4;
        if (v4 && MediaLibraryForUID)
        {
          if (*MediaLibraryForUID == 1)
          {
            Count = CFArrayGetCount(*(v2 + 3));
            v7 = gLogObjects;
            v8 = gNumLogObjects;
            if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_21())
            {
              *v603 = 134218240;
              *&v603[4] = v7;
              OUTLINED_FUNCTION_34_3();
              *&v603[14] = v8;
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v548, v549, v550, v551, v552, 0x12u);
            }

            v9 = OUTLINED_FUNCTION_66_1();
            if (os_log_type_enabled(v9, v10))
            {
              v11 = *(v2 + 1);
              *v603 = 138413314;
              *&v603[4] = theString;
              *&v603[12] = 2112;
              OUTLINED_FUNCTION_29_6(v11);
              *&v603[24] = v12;
              *&v603[28] = 2080;
              *&v603[30] = v13;
              *&v603[38] = 2048;
              *&v603[40] = Count;
              OUTLINED_FUNCTION_26_7();
              _os_log_impl(v14, v15, v16, v17, v18, 0x30u);
            }

            v594 = *(MediaLibraryForUID + 152);
            v601 = 0;
            v19 = *(v2 + 16);
            v20 = *(MediaLibraryForUID + 192);
            MaxSendPayloadSizeWithOverride = iap2_endpoint_getMaxSendPayloadSizeWithOverride(v583);
            v589 = MediaLibraryForUID;
            LODWORD(v588) = MaxSendPayloadSizeWithOverride;
            HIDWORD(v580) = MaxSendPayloadSizeWithOverride >> 1;
            if (Count >= 1)
            {
              v23 = 0;
              LODWORD(v585) = 0;
              cf = 0;
              HIDWORD(v593) = 0;
              LOBYTE(v24) = 0;
              v25 = 0;
              HIDWORD(v568) = v583;
              LODWORD(v568) = MediaLibraryForUID;
              key = @"ACCMediaLibraryUpdateTypeKey";
              HIDWORD(v582) = (MaxSendPayloadSizeWithOverride >> 1) + (MaxSendPayloadSizeWithOverride >> 2);
              v591 = @"ACCMediaLibraryUpdateProgressKey";
              v590 = @"ACCMediaLibraryUpdateRevisionKey";
              alloc = kCFAllocatorDefault;
              v574 = @"ACCMediaLibraryUpdateItemDeletePersistentID";
              v575 = @"ACCMediaLibraryUpdatePlaylistDeletePersistentID";
              v572 = @"ACCMediaLibraryUpdateItemDictionary";
              v573 = @"ACCMediaLibraryUpdatePlaylistDictionary";
              *&v22 = 134218240;
              v581 = v22;
              *&v22 = 138413314;
              v578 = v22;
              *&v22 = 138413570;
              v577 = v22;
              *&v22 = 138413058;
              v576 = v22;
              *&v22 = 67109376;
              v571 = v22;
              *&v22 = 138414082;
              v566 = v22;
              *&v22 = 67109120;
              v569 = v22;
              *&v22 = 67109632;
              v565 = v22;
              *&v22 = 67110144;
              v570 = v22;
              LODWORD(v582) = v19;
              while (1)
              {
                v597 = v25;
                ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 3), v23);
                if (gLogObjects)
                {
                  v27 = gNumLogObjects < 31;
                }

                else
                {
                  v27 = 1;
                }

                if (v27)
                {
                  v28 = OUTLINED_FUNCTION_21();
                  if (v28)
                  {
                    OUTLINED_FUNCTION_0_17(v28, v29, v30, v31, v32, v33, v34, v35, v36, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v37);
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v38, v39, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41, 0x12u);
                  }
                }

                if (OUTLINED_FUNCTION_65())
                {
                  OUTLINED_FUNCTION_17_13(*(v2 + 1), *&v578, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583, alloc, v585, theString);
                  *&v603[22] = 1024;
                  *&v603[24] = v597;
                  *&v603[28] = 2048;
                  *&v603[30] = Count;
                  *&v603[38] = v72;
                  *&v603[40] = ValueAtIndex;
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v73, v74, v75, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@, i = %d / %ld, entry=%@", v76, 0x30u);
                }

                v42 = v2;
                Value = CFDictionaryGetValue(ValueAtIndex, key);
                v44 = CFDictionaryGetValue(ValueAtIndex, v591);
                v598 = CFDictionaryGetValue(ValueAtIndex, v590);
                v45 = gLogObjects;
                v46 = gNumLogObjects;
                if (!gLogObjects || gNumLogObjects < 31)
                {
                  v47 = OUTLINED_FUNCTION_21();
                  if (v47)
                  {
                    OUTLINED_FUNCTION_36_4(v47, v48, v49, v50, v51, v52, v53, v54, v55, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v56);
                    *&v603[4] = v45;
                    OUTLINED_FUNCTION_34_3();
                    *&v603[14] = v46;
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v117, v118, v119, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v120, 0x12u);
                  }
                }

                v2 = v42;
                if (OUTLINED_FUNCTION_65())
                {
                  OUTLINED_FUNCTION_17_13(*(v42 + 1), *&v577, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583, alloc, v585, theString);
                  *&v603[22] = 1024;
                  *&v603[24] = v597;
                  *&v603[28] = v77;
                  *&v603[30] = Value;
                  *&v603[38] = v77;
                  *&v603[40] = v44;
                  LOWORD(v604) = v77;
                  *(&v604 + 2) = v598;
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v78, v79, v80, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@ update[%d]=(type=%@ progress=%@ revision=%@)", v81, 0x3Au);
                }

                valuePtr = -86;
                CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
                if (v44)
                {
                  CFNumberGetValue(v44, kCFNumberSInt8Type, &v601);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                v57 = CFRetain(v598);
                v58 = v57;
                v59 = valuePtr - 3;
                v19 = v19 & (v59 < 2);
                if (v19 != 1)
                {
                  break;
                }

                cf = v57;
                if (!gLogObjects || gNumLogObjects < 31)
                {
                  v61 = OUTLINED_FUNCTION_21();
                  if (v61)
                  {
                    OUTLINED_FUNCTION_0_17(v61, v62, v63, v64, v65, v66, v67, v68, v69, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v70);
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v441, v442, v443, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v444, 0x12u);
                  }
                }

                if (OUTLINED_FUNCTION_65())
                {
                  v121 = *(v42 + 1);
                  *v603 = v576;
                  *&v603[4] = theString;
                  *&v603[12] = 2112;
                  OUTLINED_FUNCTION_29_6(v121);
                  *&v603[24] = 1;
                  *&v603[28] = v122;
                  *&v603[30] = v123;
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v124, v125, v126, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@ bFullUpdateWaitForNonDelete=%d type=%d, skip deletes", v127, 0x22u);
                }

                ++HIDWORD(v593);
                if (v24)
                {
                  v60 = v20;
                  goto LABEL_247;
                }

                OUTLINED_FUNCTION_79_3();
                v19 = 1;
LABEL_249:
                v23 = v25;
                if (Count <= v25)
                {
                  goto LABEL_254;
                }
              }

              HIDWORD(v588) = v19;
              if (valuePtr - 1 < 2)
              {
                v60 = 2;
              }

              else if (v59 >= 2)
              {
                v60 = v20;
                if (valuePtr)
                {
                  v71 = v57;
                  if (!gLogObjects || gNumLogObjects < 31)
                  {
                    v82 = OUTLINED_FUNCTION_21();
                    if (v82)
                    {
                      OUTLINED_FUNCTION_0_17(v82, v83, v84, v85, v86, v87, v88, v89, v90, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v91);
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v469, v470, v471, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v472, 0x12u);
                    }
                  }

                  v92 = OUTLINED_FUNCTION_21();
                  v60 = v20;
                  v58 = v71;
                  if (v92)
                  {
                    OUTLINED_FUNCTION_89_2(v92, v93, v94, v95, v96, v97, v98, v99, v100, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v101, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583, alloc, v585, theString, v587, v588, v589, v590, v591, key, v593, v594, Count, SBYTE4(Count), BYTE5(Count), v597, v598, SBYTE4(v598), BYTE5(v598));
                    OUTLINED_FUNCTION_8_0();
                    _os_log_error_impl(v457, v458, v459, "Invalid media library update type: %d\n", v460, 8u);
                    v58 = v71;
                    v60 = v20;
                  }
                }
              }

              else
              {
                v60 = 1;
              }

              if (v20)
              {
                v102 = v20 == v60;
              }

              else
              {
                v102 = 1;
              }

              v19 = !v102;
              v103 = v589;
              *(v589 + 192) = v60;
              if (v102)
              {
                v104 = v594;
                cf = v58;
                if (!v594)
                {
                  v105 = malloc_type_malloc(0x20uLL, 0x106004082FC22AAuLL);
                  *v105 = CFStringCreateCopy(alloc, theString);
                  v105[1] = CFRetain(*(v2 + 1));
                  v105[2] = CFRetain(v598);
                  *(v105 + 6) = 0;
                  *(v105 + 28) = 0;
                  *(v589 + 196) = 0;
                  v106 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
                  v107 = malloc_type_malloc(0xFFFFuLL, 0x5E913751uLL);
                  v108 = iAP2MsgInit(v106, 19460, v107, 0xFFFF, _iAP2MediaLibraryMsgCleanupCB, v105);
                  v104 = v108;
                  if (v108 == v106)
                  {
                    *(v589 + 152) = v106;
                    v114 = gLogObjects;
                    v115 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 31)
                    {
                      v116 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v116 = &_os_log_default;
                      v160 = OUTLINED_FUNCTION_17();
                      if (v160)
                      {
                        OUTLINED_FUNCTION_36_4(v160, v161, v162, v163, v164, v165, v166, v167, v168, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v169);
                        *&v603[4] = v114;
                        OUTLINED_FUNCTION_34_3();
                        *&v603[14] = v115;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v603, 0x12u);
                      }
                    }

                    if (OUTLINED_FUNCTION_75_0())
                    {
                      v473 = *(v2 + 1);
                      MsgID = iAP2MsgGetMsgID(v104);
                      OUTLINED_FUNCTION_67_4(MsgID, v475, v476, v477, v478, v479, v480, v481, v482, v563, v564, v565, *(&v565 + 1), v483, v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583, alloc);
                      *&v603[14] = v473;
                      OUTLINED_FUNCTION_100_1(v484);
                      *&v603[30] = v485;
                      *&v603[38] = v486;
                      *&v603[40] = v487;
                      LOWORD(v604) = v486;
                      *(&v604 + 2) = v488;
                      WORD5(v604) = v489;
                      HIDWORD(v604) = v490;
                      LOWORD(v605) = v489;
                      *(&v605 + 2) = v491;
                      _os_log_debug_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEBUG, "init outMsg: %@ libraryUID=%@ message(%04xh): context=(accessoryUID=%@ libraryUID=%@ lastRevision=%@ updatesInMsg=%d confirmed=%d)", v603, 0x46u);
                    }
                  }

                  else
                  {
                    v109 = v2;
                    v110 = v60;
                    v111 = v19;
                    v112 = v108;
                    v24 = gLogObjects;
                    v113 = gNumLogObjects;
                    if (!gLogObjects || gNumLogObjects < 31)
                    {
                      v128 = OUTLINED_FUNCTION_21();
                      if (v128)
                      {
                        OUTLINED_FUNCTION_36_4(v128, v129, v130, v131, v132, v133, v134, v135, v136, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v137);
                        *&v603[4] = v24;
                        OUTLINED_FUNCTION_34_3();
                        *&v603[14] = v113;
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v492, v493, v494, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v495, 0x12u);
                      }
                    }

                    v104 = v112;
                    v19 = v111;
                    v60 = v110;
                    v2 = v109;
                    v103 = v589;
                    if (OUTLINED_FUNCTION_21())
                    {
                      v24 = *(v2 + 1);
                      iAP2MsgGetMsgID(v106);
                      OUTLINED_FUNCTION_102_0();
                      OUTLINED_FUNCTION_67_4(v138, v139, v140, v141, v142, v143, v144, v145, v146, v563, v564, v565, *(&v565 + 1), v147, v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583, alloc);
                      *&v603[14] = v24;
                      OUTLINED_FUNCTION_100_1(v148);
                      *&v603[30] = v149;
                      *&v603[38] = v150;
                      *&v603[40] = v151;
                      LOWORD(v604) = v150;
                      *(&v604 + 2) = v152;
                      WORD5(v604) = v153;
                      HIDWORD(v604) = v154;
                      LOWORD(v605) = v153;
                      *(&v605 + 2) = v155;
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v156, v157, v158, "ERROR: Failed init outMsg: %@ libraryUID=%@ message(%04xh): context=(accessoryUID=%@ libraryUID=%@ lastRevision=%@ updatesInMsg=%d confirmed=%d)", v159, 0x46u);
                    }
                  }

                  iAP2MsgSetCallbackOnSend(v104, __MsgSentOutCB);
                  iAP2MsgAddCFStringParam(v104, 0, 0, *(v2 + 1));
                }

                switch(valuePtr)
                {
                  case 1u:
                    v170 = CFDictionaryGetValue(ValueAtIndex, v572);
                    v171 = gLogObjects;
                    LODWORD(v24) = gNumLogObjects;
                    if (!gLogObjects || gNumLogObjects < 31)
                    {
                      v180 = OUTLINED_FUNCTION_21();
                      if (v180)
                      {
                        OUTLINED_FUNCTION_36_4(v180, v181, v182, v183, v184, v185, v186, v187, v188, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v189);
                        *&v603[4] = v171;
                        OUTLINED_FUNCTION_34_3();
                        *&v603[14] = v24;
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v496, v497, v498, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v499, 0x12u);
                      }
                    }

                    v190 = OUTLINED_FUNCTION_65();
                    if (v190)
                    {
                      OUTLINED_FUNCTION_31_7(v190, v191, v192, v193, v194, v195, v196, v197, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, SHIDWORD(v568));
                      OUTLINED_FUNCTION_33_6();
                      _os_log_debug_impl(v461, v462, v463, "_iap2_mediaLibrary_mediaItemUpdateHandler: endpoint=%hxh mediaLibraryInfo=%hxh pOutMsg=%hxh data=%hxh", v464, 0x1Au);
                    }

                    LODWORD(v177) = 0;
                    if (!v104 || !v170)
                    {
                      goto LABEL_210;
                    }

                    if (*v103 != 1)
                    {
                      goto LABEL_252;
                    }

                    *&v198 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v198 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v607 = v198;
                    v608 = v198;
                    v605 = v198;
                    v606 = v198;
                    *&v603[32] = v198;
                    v604 = v198;
                    *v603 = v198;
                    *&v603[16] = v198;
                    iAP2MsgAddGroupParam(v104, 2);
                    platform_mediaLibrary_getStructUpdateItem(v2, v170, v603);
                    for (i = 0; i != 28; ++i)
                    {
                      if ((*v603 >> i))
                      {
                        switch(i)
                        {
                          case 0:
                            v200 = OUTLINED_FUNCTION_24_7();
                            v203 = 0;
                            goto LABEL_128;
                          case 1:
                            v204 = OUTLINED_FUNCTION_24_7();
                            v207 = 1;
                            goto LABEL_130;
                          case 2:
                            v212 = OUTLINED_FUNCTION_24_7();
                            v215 = 2;
                            goto LABEL_132;
                          case 3:
                            v212 = OUTLINED_FUNCTION_24_7();
                            v215 = 3;
                            goto LABEL_132;
                          case 4:
                            v216 = OUTLINED_FUNCTION_24_7();
                            iAP2MsgAddU32Param(v216, v217, 4, v218);
                            continue;
                          case 5:
                            v200 = OUTLINED_FUNCTION_24_7();
                            v203 = 5;
                            goto LABEL_128;
                          case 6:
                            v204 = OUTLINED_FUNCTION_24_7();
                            v207 = 6;
                            goto LABEL_130;
                          case 7:
                            v208 = OUTLINED_FUNCTION_24_7();
                            v211 = 7;
                            goto LABEL_126;
                          case 8:
                            v208 = OUTLINED_FUNCTION_24_7();
                            v211 = 8;
                            goto LABEL_126;
                          case 9:
                            v208 = OUTLINED_FUNCTION_24_7();
                            v211 = 9;
                            goto LABEL_126;
                          case 10:
                            v208 = OUTLINED_FUNCTION_24_7();
                            v211 = 10;
                            goto LABEL_126;
                          case 11:
                            v200 = OUTLINED_FUNCTION_24_7();
                            v203 = 11;
                            goto LABEL_128;
                          case 12:
                            v204 = OUTLINED_FUNCTION_24_7();
                            v207 = 12;
                            goto LABEL_130;
                          case 13:
                            v200 = OUTLINED_FUNCTION_24_7();
                            v203 = 13;
                            goto LABEL_128;
                          case 14:
                            v204 = OUTLINED_FUNCTION_24_7();
                            v207 = 14;
                            goto LABEL_130;
                          case 15:
                            v200 = OUTLINED_FUNCTION_24_7();
                            v203 = 15;
                            goto LABEL_128;
                          case 16:
                            v204 = OUTLINED_FUNCTION_24_7();
                            v207 = 16;
                            goto LABEL_130;
                          case 17:
                            v200 = OUTLINED_FUNCTION_24_7();
                            v203 = 17;
LABEL_128:
                            iAP2MsgAddU64Param(v200, v201, v203, v202);
                            continue;
                          case 18:
                            v204 = OUTLINED_FUNCTION_24_7();
                            v207 = 18;
LABEL_130:
                            iAP2MsgAddStringParam(v204, v205, v207, v206);
                            continue;
                          case 19:
                            v212 = OUTLINED_FUNCTION_24_7();
                            v215 = 19;
                            goto LABEL_132;
                          case 25:
                            v212 = OUTLINED_FUNCTION_24_7();
                            v215 = 25;
LABEL_132:
                            iAP2MsgAddU8Param(v212, v213, v215, v214);
                            break;
                          case 27:
                            v208 = OUTLINED_FUNCTION_24_7();
                            v211 = 27;
LABEL_126:
                            iAP2MsgAddU16Param(v208, v209, v211, v210);
                            break;
                          default:
                            continue;
                        }
                      }
                    }

                    LODWORD(v177) = 1;
                    goto LABEL_210;
                  case 2u:
                    v178 = CFDictionaryGetValue(ValueAtIndex, v573);
                    v179 = gLogObjects;
                    LODWORD(v24) = gNumLogObjects;
                    if (!gLogObjects || gNumLogObjects < 31)
                    {
                      v219 = OUTLINED_FUNCTION_21();
                      if (v219)
                      {
                        OUTLINED_FUNCTION_36_4(v219, v220, v221, v222, v223, v224, v225, v226, v227, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v228);
                        *&v603[4] = v179;
                        OUTLINED_FUNCTION_34_3();
                        *&v603[14] = v24;
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v500, v501, v502, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v503, 0x12u);
                      }
                    }

                    v229 = OUTLINED_FUNCTION_65();
                    if (v229)
                    {
                      OUTLINED_FUNCTION_31_7(v229, v230, v231, v232, v233, v234, v235, v236, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, SHIDWORD(v568));
                      OUTLINED_FUNCTION_33_6();
                      _os_log_debug_impl(v465, v466, v467, "_iap2_mediaLibrary_playlistUpdateHandler: endpoint=%hxh mediaLibraryInfo=%hxh pOutMsg=%hxh data=%hxh", v468, 0x1Au);
                    }

                    Feature = iap2_feature_getFeature(v583, 0xDu);
                    LODWORD(v177) = 0;
                    if (!v178)
                    {
                      goto LABEL_210;
                    }

                    if (!v104)
                    {
                      goto LABEL_210;
                    }

                    if (!Feature)
                    {
                      goto LABEL_210;
                    }

                    v177 = *(v583 + 32);
                    if (!v177)
                    {
                      goto LABEL_210;
                    }

                    v177 = *(v177 + 24);
                    if (!v177)
                    {
                      goto LABEL_210;
                    }

                    v595 = v177;
                    if (*v103 == 1)
                    {
                      *&v603[32] = 0xAAAAAAAAAAAAAAAALL;
                      *&v238 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v238 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *v603 = v238;
                      *&v603[16] = v238;
                      iAP2MsgAddGroupParam(v104, 3);
                      platform_mediaLibrary_getStructUpdatePlaylist(v2, v178, v603);
                      for (j = 0; j != 10; ++j)
                      {
                        if ((*v603 >> j))
                        {
                          switch(j)
                          {
                            case 0:
                              v240 = OUTLINED_FUNCTION_49_3();
                              v243 = 0;
                              goto LABEL_158;
                            case 1:
                              v244 = OUTLINED_FUNCTION_49_3();
                              iAP2MsgAddStringParam(v244, v245, 1, v246);
                              continue;
                            case 2:
                              v240 = OUTLINED_FUNCTION_49_3();
                              v243 = 2;
LABEL_158:
                              iAP2MsgAddU64Param(v240, v241, v243, v242);
                              continue;
                            case 3:
                              v247 = OUTLINED_FUNCTION_49_3();
                              v250 = 3;
                              goto LABEL_161;
                            case 4:
                              v247 = OUTLINED_FUNCTION_49_3();
                              v250 = 4;
                              goto LABEL_161;
                            case 5:
                              if ((v603[0] & 0x10) != 0 && v603[33])
                              {
                                LOBYTE(v24) = gNumLogObjects;
                                if (!gLogObjects || gNumLogObjects < 31)
                                {
                                  v261 = OUTLINED_FUNCTION_21();
                                  if (v261)
                                  {
                                    OUTLINED_FUNCTION_2_30(v261, v262, v263, v264, v265, v266, v267, v268, v269, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v270);
                                    OUTLINED_FUNCTION_8_0();
                                    _os_log_error_impl(v331, v332, v333, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v334, 0x12u);
                                  }
                                }

                                if (OUTLINED_FUNCTION_93())
                                {
                                  LOWORD(buf) = 0;
                                  OUTLINED_FUNCTION_15();
                                  v275 = "_iap2_mediaLibrary_playlistUpdateHandler: Playlist is a folder, no need to send content.";
                                  v276 = 2;
LABEL_190:
                                  _os_log_impl(v271, v272, v273, v275, v274, v276);
                                  continue;
                                }
                              }

                              else if (v603[34] == 2)
                              {
                                v277 = OUTLINED_FUNCTION_66_1();
                                SessionForService = iAP2LinkGetSessionForService(v277, v278);
                                SessionInfo = iAP2LinkGetSessionInfo(v595, SessionForService);
                                if (SessionInfo)
                                {
                                  if (SessionInfo[2] >= 2u && v603[34] != 1)
                                  {
                                    v282 = OUTLINED_FUNCTION_49_3();
                                    iAP2MsgAddVoidParam(v282, v283, 7);
                                  }
                                }
                              }

                              else if (v603[34] == 1)
                              {
                                v251 = iAP2LinkGetSessionForService(v595, 1);
                                v252 = v251;
                                v602 = 0;
                                if (iAP2FileTransferAllocateBufferID(v595, v251, &v602))
                                {
                                  OUTLINED_FUNCTION_111();
                                  v255 = malloc_type_malloc(v253, v254);
                                  v255[8] = v602;
                                  *v255 = v103;
                                  *(v255 + 2) = *&v603[8];
                                  v585 = v255;
                                  OUTLINED_FUNCTION_74_1(v598, v255 + 24);
                                  OUTLINED_FUNCTION_109();
                                  malloc_type_malloc(v256, v257);
                                  OUTLINED_FUNCTION_40_6();
                                  v564 = v258;
                                  iAP2FileTransferCreate(v595, v252, v259, 0, 0, 0, v258, v260);
                                  LOBYTE(v24) = gNumLogObjects;
                                  if (!gLogObjects || gNumLogObjects < 31)
                                  {
                                    v297 = OUTLINED_FUNCTION_21();
                                    if (v297)
                                    {
                                      OUTLINED_FUNCTION_2_30(v297, v298, v299, v300, v301, v302, v303, v304, v305, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v306);
                                      OUTLINED_FUNCTION_8_0();
                                      _os_log_error_impl(v343, v344, v345, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v346, 0x12u);
                                    }
                                  }

                                  if (OUTLINED_FUNCTION_65())
                                  {
                                    buf = v565;
                                    v610 = 5;
                                    v611 = 2048;
                                    v612 = *&v603[8];
                                    v613 = 1024;
                                    v614 = v602;
                                    OUTLINED_FUNCTION_33_6();
                                    _os_log_debug_impl(v335, v336, v337, "_iap2_mediaLibrary_playlistUpdateHandler: i=%d, iap2_sessionFileTransfer_addTransferForFeature, persistentID=%llu bufferID=%u", v338, 0x18u);
                                  }

                                  if (iap2_sessionFileTransfer_addTransferForFeature(v583, 13, v564, v585))
                                  {
                                    v247 = OUTLINED_FUNCTION_49_3();
                                    v250 = 5;
LABEL_161:
                                    iAP2MsgAddU8Param(v247, v248, v250, v249);
                                  }

                                  else
                                  {
                                    LOBYTE(v24) = gNumLogObjects;
                                    if (!gLogObjects || gNumLogObjects < 31)
                                    {
                                      v317 = OUTLINED_FUNCTION_21();
                                      if (v317)
                                      {
                                        OUTLINED_FUNCTION_2_30(v317, v318, v319, v320, v321, v322, v323, v324, v325, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v326);
                                        OUTLINED_FUNCTION_8_0();
                                        _os_log_error_impl(v351, v352, v353, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v354, 0x12u);
                                      }
                                    }

                                    if (OUTLINED_FUNCTION_93())
                                    {
                                      buf = v571;
                                      v610 = v602;
                                      v611 = 1024;
                                      LODWORD(v612) = v602;
                                      OUTLINED_FUNCTION_15();
                                      _os_log_impl(v327, v328, v329, "_iap2_mediaLibrary_playlistUpdateHandler: failed to add fileXfer for bufferID %u(%x) !!!!!!!!", v330, 0xEu);
                                    }

                                    if (v564)
                                    {
                                      iAP2FileTransferRelease(v564);
                                    }

                                    free(v585);
                                  }
                                }

                                else
                                {
                                  LOBYTE(v24) = gNumLogObjects;
                                  if (gLogObjects && gNumLogObjects >= 31)
                                  {
                                    v284 = *(gLogObjects + 240);
                                  }

                                  else
                                  {
                                    v284 = &_os_log_default;
                                    v307 = OUTLINED_FUNCTION_21();
                                    if (v307)
                                    {
                                      OUTLINED_FUNCTION_2_30(v307, v308, v309, v310, v311, v312, v313, v314, v315, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v316);
                                      OUTLINED_FUNCTION_8_0();
                                      _os_log_error_impl(v347, v348, v349, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v350, 0x12u);
                                    }
                                  }

                                  if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
                                  {
                                    LOWORD(buf) = 0;
                                    _os_log_fault_impl(&_mh_execute_header, v284, OS_LOG_TYPE_FAULT, "_iap2_mediaLibrary_playlistUpdateHandler: failed to get bufferID... need to retry later! (but not supported yet)", &buf, 2u);
                                  }
                                }
                              }

                              else
                              {
                                LOBYTE(v24) = gNumLogObjects;
                                if (!gLogObjects || gNumLogObjects < 31)
                                {
                                  v285 = OUTLINED_FUNCTION_21();
                                  if (v285)
                                  {
                                    OUTLINED_FUNCTION_2_30(v285, v286, v287, v288, v289, v290, v291, v292, v293, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v294);
                                    OUTLINED_FUNCTION_8_0();
                                    _os_log_error_impl(v339, v340, v341, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v342, 0x12u);
                                  }
                                }

                                v295 = OUTLINED_FUNCTION_66_1();
                                if (os_log_type_enabled(v295, v296))
                                {
                                  buf = v569;
                                  v610 = v603[34];
                                  OUTLINED_FUNCTION_26_7();
                                  v275 = "_iap2_mediaLibrary_playlistUpdateHandler: Invalid content style(%d)!";
                                  v276 = 8;
                                  goto LABEL_190;
                                }
                              }

                              break;
                            case 6:
                              v247 = OUTLINED_FUNCTION_49_3();
                              v250 = 6;
                              goto LABEL_161;
                            case 8:
                              v247 = OUTLINED_FUNCTION_49_3();
                              v250 = 8;
                              goto LABEL_161;
                            default:
                              continue;
                          }
                        }
                      }

                      LODWORD(v177) = 1;
                    }

                    else
                    {
LABEL_252:
                      LODWORD(v177) = 0;
                    }

LABEL_210:
                    LODWORD(v585) = v177;
LABEL_211:
                    ++*(v103 + 196);
                    OUTLINED_FUNCTION_74_1(cf, (v103 + 160));
                    break;
                  case 3u:
                    *v603 = 0;
                    v172 = CFDictionaryGetValue(ValueAtIndex, v574);
                    CFNumberGetValue(v172, kCFNumberSInt64Type, v603);
                    v173 = *v603;
                    v174 = v104;
                    v175 = 4;
                    goto LABEL_90;
                  case 4u:
                    *v603 = 0;
                    v176 = CFDictionaryGetValue(ValueAtIndex, v575);
                    CFNumberGetValue(v176, kCFNumberSInt64Type, v603);
                    v173 = *v603;
                    v174 = v104;
                    v175 = 5;
LABEL_90:
                    LODWORD(v177) = iAP2MsgAddI64Param(v174, 0, v175, v173) != 0;
                    goto LABEL_210;
                  default:
                    if (!gLogObjects || gNumLogObjects < 31)
                    {
                      v411 = OUTLINED_FUNCTION_21();
                      if (v411)
                      {
                        OUTLINED_FUNCTION_0_17(v411, v412, v413, v414, v415, v416, v417, v418, v419, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v420);
                        OUTLINED_FUNCTION_8_0();
                        _os_log_error_impl(v504, v505, v506, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v507, 0x12u);
                      }
                    }

                    v421 = OUTLINED_FUNCTION_21();
                    if (v421)
                    {
                      OUTLINED_FUNCTION_89_2(v421, v422, v423, v424, v425, v426, v427, v428, v429, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v430, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583, alloc, v585, theString, v587, v588, v589, v590, v591, key, v593, v594, Count, SBYTE4(Count), BYTE5(Count), v597, v598, SBYTE4(v598), BYTE5(v598));
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v431, v432, v433, "Invalid media library update type: %d\n", v434, 8u);
                    }

                    goto LABEL_211;
                }
              }

              else
              {
                v104 = v594;
                if (v58)
                {
                  CFRelease(v58);
                }

                cf = OUTLINED_FUNCTION_80_1(alloc, (v589 + 160));
              }

              if (!gLogObjects || gNumLogObjects < 31)
              {
                v355 = OUTLINED_FUNCTION_21();
                if (v355)
                {
                  OUTLINED_FUNCTION_0_17(v355, v356, v357, v358, v359, v360, v361, v362, v363, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v364);
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v445, v446, v447, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v448, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_65())
              {
                v393 = *(v2 + 1);
                *v603 = v576;
                *&v603[4] = theString;
                *&v603[12] = 2112;
                OUTLINED_FUNCTION_29_6(v393);
                *&v603[24] = v394;
                *&v603[28] = v395;
                *&v603[30] = v396;
                OUTLINED_FUNCTION_33_6();
                _os_log_debug_impl(v397, v398, v399, "iap2_mediaLibrary_updateHandler %@ libraryUID=%@ type=%d result=%d", v400, 0x22u);
              }

              if (!gLogObjects || gNumLogObjects < 31)
              {
                v365 = OUTLINED_FUNCTION_21();
                if (v365)
                {
                  OUTLINED_FUNCTION_0_17(v365, v366, v367, v368, v369, v370, v371, v372, v373, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v374);
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v449, v450, v451, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v452, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_65())
              {
                v401 = *(v103 + 196);
                *v603 = v570;
                *&v603[4] = v19;
                OUTLINED_FUNCTION_50_2(v401);
                OUTLINED_FUNCTION_33_6();
                _os_log_debug_impl(v402, v403, v404, "iap2_mediaLibrary_updateHandler addDeleteChanged=%d sendCount=%d window=%d recordsPerMessage=%d bFullUpdate=%d", v405, 0x20u);
              }

              if (!gLogObjects || gNumLogObjects < 31)
              {
                v375 = OUTLINED_FUNCTION_21();
                if (v375)
                {
                  OUTLINED_FUNCTION_0_17(v375, v376, v377, v378, v379, v380, v381, v382, v383, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v384);
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v453, v454, v455, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v456, 0x12u);
                }
              }

              v385 = OUTLINED_FUNCTION_65();
              if (v385)
              {
                MsgLen = iAP2MsgGetMsgLen(v104);
                *v603 = v571;
                *&v603[4] = MsgLen;
                *&v603[8] = 1024;
                *&v603[10] = v588;
                OUTLINED_FUNCTION_33_6();
                _os_log_debug_impl(v407, v408, v409, "iap2_mediaLibrary_updateHandler msgLen=%d maxSendPayloadSize=%d", v410, 0xEu);
                if (v104)
                {
                  goto LABEL_230;
                }
              }

              else if (v104)
              {
LABEL_230:
                v390 = v601;
                if (v601 > 0x63u)
                {
                  v391 = 1;
                }

                else
                {
                  v391 = v19;
                }

                v392 = *(v103 + 196);
                if ((v391 & 1) == 0 && v392 < *(v587 + 8))
                {
                  v385 = iAP2MsgGetMsgLen(v104);
                  if (v385 <= HIDWORD(v582))
                  {
                    v594 = v104;
                    v19 = 0;
LABEL_239:
                    OUTLINED_FUNCTION_79_3();
                    goto LABEL_248;
                  }

                  v390 = v601;
                  v392 = *(v103 + 196);
                }

                v435 = OUTLINED_FUNCTION_101_0(v385, v386, *(v2 + 1), v387, v388, v389, v390, v392, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583);
                _iap2_mediaLibrary_sendUpdateMsg(v435, v436, v437, v104, cf, v438, v439, v440);
                v594 = 0;
                *(v103 + 152) = 0;
                *(v103 + 196) = 0;
                LODWORD(v585) = 1;
                LODWORD(v582) = 0;
                if ((v19 & 1) == 0)
                {
                  OUTLINED_FUNCTION_79_3();
                  v19 = 0;
                  goto LABEL_248;
                }

LABEL_246:
                v19 = HIDWORD(v588);
LABEL_247:
                v25 = v597;
                LOBYTE(v24) = 1;
LABEL_248:
                v20 = v60;
                goto LABEL_249;
              }

              v594 = 0;
              if (!v19)
              {
                goto LABEL_239;
              }

              goto LABEL_246;
            }

            LOBYTE(v24) = 0;
            HIDWORD(v593) = 0;
            cf = 0;
            LODWORD(v585) = 0;
            LODWORD(v582) = v19;
LABEL_254:
            v508 = v19;
            v509 = gLogObjects;
            v510 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v511 = v589;
              v512 = HIDWORD(v580);
              v513 = v594;
              v514 = &off_1001C3000;
            }

            else
            {
              v511 = v589;
              v512 = HIDWORD(v580);
              v513 = v594;
              v514 = &off_1001C3000;
              if (OUTLINED_FUNCTION_21())
              {
                *v603 = 134218240;
                *&v603[4] = v509;
                OUTLINED_FUNCTION_34_3();
                *&v603[14] = v510;
                OUTLINED_FUNCTION_8_0();
                _os_log_error_impl(v553, v554, v555, v556, v557, 0x12u);
              }
            }

            v515 = OUTLINED_FUNCTION_65();
            if (v515)
            {
              v536 = iAP2MsgGetMsgLen(v513);
              *v603 = *(v514 + 93);
              *&v603[4] = v536;
              OUTLINED_FUNCTION_50_2(v601);
              OUTLINED_FUNCTION_33_6();
              _os_log_debug_impl(v537, v538, v539, v540, v541, 0x20u);
            }

            if (v513)
            {
              v520 = v601;
              if (v601 > 0x63u)
              {
                v521 = 1;
              }

              else
              {
                v521 = v24;
              }

              if ((v521 & 1) == 0 && *(v511 + 196) < *(v587 + 8))
              {
                v515 = iAP2MsgGetMsgLen(v513);
                if (v515 <= v512 + (v588 >> 2))
                {
                  goto LABEL_268;
                }

                v520 = v601;
              }

              v542 = OUTLINED_FUNCTION_101_0(v515, v516, *(v2 + 1), v517, v518, v519, v520, *(v511 + 196), v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583);
              v525 = cf;
              _iap2_mediaLibrary_sendUpdateMsg(v542, v543, v544, v513, cf, v545, v546, v547);
              *(v511 + 152) = 0;
              *(v511 + 196) = 0;
              v534 = 1;
              if (cf)
              {
LABEL_279:
                v535 = v534;
                CFRelease(v525);
                v534 = v535;
              }

LABEL_280:
              if (v534)
              {
                platform_mediaLibrary_deleteParams(v2);
                return 1;
              }

              return 0;
            }

LABEL_268:
            if (v508)
            {
              v522 = gLogObjects;
              v523 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 31)
              {
                v524 = HIDWORD(v593);
              }

              else
              {
                v524 = HIDWORD(v593);
                if (OUTLINED_FUNCTION_21())
                {
                  *v603 = 134218240;
                  *&v603[4] = v522;
                  OUTLINED_FUNCTION_34_3();
                  *&v603[14] = v523;
                  OUTLINED_FUNCTION_8_0();
                  _os_log_error_impl(v558, v559, v560, v561, v562, 0x12u);
                }
              }

              v526 = OUTLINED_FUNCTION_66_1();
              if (os_log_type_enabled(v526, v527))
              {
                OUTLINED_FUNCTION_17_13(*(v2 + 1), 5.7784e-34, v563, v564, v565, *(&v565 + 1), v566, *(&v566 + 1), v567, v568, v569, *(&v569 + 1), v570, *(&v570 + 1), v571, *(&v571 + 1), v572, v573, v574, v575, v576, *(&v576 + 1), v577, *(&v577 + 1), v578, *(&v578 + 1), v579, v580, v581, *(&v581 + 1), v582, v583, alloc, v585, theString);
                *&v603[22] = v528;
                *&v603[24] = cf;
                *&v603[32] = 1024;
                *&v603[34] = 1;
                *&v603[38] = 1024;
                *&v603[40] = v524;
                OUTLINED_FUNCTION_26_7();
                _os_log_impl(v529, v530, v531, v532, v533, 0x2Cu);
              }

              v525 = cf;
              platform_mediaLibrary_confirmLibraryUpdate(*(v583 + 8), *(v2 + 1), cf, v524);
            }

            else
            {
              v525 = cf;
            }

            v534 = v585;
            if (v525)
            {
              goto LABEL_279;
            }

            goto LABEL_280;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void _iAP2MediaLibraryMsgCleanupCB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, const char *a10, __int128 a11, int a12, __int16 a13, __int16 a14, __int16 a15, __int16 a16, int a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_101();
  a34 = v39;
  a35 = v40;
  v42 = v41;
  v44 = v43;
  OUTLINED_FUNCTION_85_2();
  if (v45)
  {
    v46 = 1;
  }

  else
  {
    v46 = v36 < 31;
  }

  if (v46)
  {
    v49 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      LODWORD(a9) = 134218240;
      *(&a9 + 4) = v35;
      OUTLINED_FUNCTION_3();
      *(&a9 + 14) = v36;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
    }
  }

  else
  {
    v49 = *(v35 + 240);
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    if (v44)
    {
      v50 = *(v44 + 48);
      MsgID = iAP2MsgGetMsgID(v44);
      MsgLen = iAP2MsgGetMsgLen(v44);
    }

    else
    {
      MsgID = 0;
      v50 = 0;
      MsgLen = 0;
    }

    label = dispatch_queue_get_label(0);
    LODWORD(a9) = 67110402;
    DWORD1(a9) = v44;
    WORD4(a9) = 1024;
    *(&a9 + 10) = v50;
    HIWORD(a9) = 1024;
    LODWORD(a10) = MsgID;
    WORD2(a10) = 1024;
    *(&a10 + 6) = MsgLen;
    WORD1(a11) = 1024;
    DWORD1(a11) = v42;
    WORD4(a11) = 2080;
    *(&a11 + 10) = label;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v54, v55, OS_LOG_TYPE_DEFAULT, v56, v57, 0x2Au);
  }

  if (v44)
  {
    v58 = *(v44 + 48);
    if (!v58)
    {
      goto LABEL_73;
    }

    v59 = *(v37 + 3928);
    v60 = *(v38 + 3936);
    if ((!v59 || v60 < 31) && OUTLINED_FUNCTION_17())
    {
      LODWORD(a9) = 134218240;
      *(&a9 + 4) = v59;
      OUTLINED_FUNCTION_3();
      *(&a9 + 14) = v60;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v93, v94, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
    }

    if (OUTLINED_FUNCTION_75_0())
    {
      iAP2MsgGetMsgID(v44);
      OUTLINED_FUNCTION_51_1();
      LODWORD(a9) = 67110658;
      DWORD1(a9) = v44;
      WORD4(a9) = 1024;
      *(&a9 + 10) = v83;
      HIWORD(a9) = 2112;
      a10 = v84;
      LOWORD(a11) = 2112;
      *(&a11 + 2) = v85;
      WORD5(a11) = 2112;
      *(&a11 + 12) = v86;
      a13 = 1024;
      *(&a12 + 6) = v87;
      a16 = 1024;
      a17 = v88;
      OUTLINED_FUNCTION_6_0();
      _os_log_debug_impl(v89, v90, OS_LOG_TYPE_DEBUG, v91, v92, 0x38u);
    }

    EndpointWithUUID = acc_manager_getEndpointWithUUID(*v58);
    if (!EndpointWithUUID)
    {
LABEL_73:
      if (!v42)
      {
        goto LABEL_72;
      }

      goto LABEL_61;
    }

    if (*(EndpointWithUUID + 7) == 4)
    {
      v62 = EndpointWithUUID[7];
    }

    else
    {
      v62 = 0;
    }

    Feature = iap2_feature_getFeature(v62, 0xDu);
    v64 = OUTLINED_FUNCTION_96_1(*(v58 + 8));
    MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(v62, v64);
    if (MediaLibraryForUID && *(MediaLibraryForUID + 152) == v44)
    {
      *(MediaLibraryForUID + 152) = 0;
      if (!v42)
      {
        goto LABEL_72;
      }
    }

    else if (!v42)
    {
      goto LABEL_72;
    }

    v66 = *(v37 + 3928);
    v67 = *(v38 + 3936);
    if (v66)
    {
      v68 = v67 <= 30;
    }

    else
    {
      v68 = 1;
    }

    v69 = !v68;
    if (Feature)
    {
      if (!v69 && OUTLINED_FUNCTION_21())
      {
        LODWORD(a9) = 134218240;
        *(&a9 + 4) = v66;
        OUTLINED_FUNCTION_3();
        *(&a9 + 14) = v67;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v124, v125, v126, v127, v128, 0x12u);
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_51_1();
        v95 = Feature[5];
        v96 = Feature[6];
        v97 = Feature[3];
        v98 = Feature[4];
        LODWORD(a9) = 138414594;
        *(&a9 + 4) = v99;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v100;
        HIWORD(a10) = 2112;
        *&a11 = v101;
        WORD4(a11) = 1024;
        *(&a11 + 10) = v102;
        HIWORD(a11) = 1024;
        a12 = v103;
        a13 = 1024;
        *(&a12 + 6) = v95;
        a16 = 1024;
        a17 = v97;
        LOWORD(a18) = 1024;
        *(&a18 + 2) = v96;
        HIWORD(a18) = 1024;
        a19 = v98;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = 1;
        OUTLINED_FUNCTION_33_6();
        _os_log_debug_impl(v104, v105, v106, v107, v108, 0x4Au);
      }

      v70 = Feature[5];
      if (v70)
      {
        Feature[5] = v70 - 1;
      }

      if (Feature[6] >= Feature[4])
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v69 && OUTLINED_FUNCTION_21())
      {
        LODWORD(a9) = 134218240;
        *(&a9 + 4) = v66;
        OUTLINED_FUNCTION_3();
        *(&a9 + 14) = v67;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v129, v130, v131, v132, v133, 0x12u);
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_51_1();
        LODWORD(a9) = 138413570;
        *(&a9 + 4) = v114;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v115;
        HIWORD(a10) = 2112;
        *&a11 = v116;
        WORD4(a11) = 1024;
        *(&a11 + 10) = v117;
        HIWORD(a11) = 1024;
        a12 = v118;
        a13 = 1024;
        *(&a12 + 6) = 1;
        OUTLINED_FUNCTION_33_6();
        _os_log_debug_impl(v119, v120, v121, v122, v123, 0x32u);
      }
    }

    if ((*(v58 + 28) & 1) == 0)
    {
      *(v58 + 28) = 1;
      platform_mediaLibrary_confirmLibraryUpdate(*v58, *(v58 + 8), *(v58 + 16), *(v58 + 24));
    }

LABEL_55:
    if (*v58)
    {
      CFRelease(*v58);
      *v58 = 0;
    }

    v71 = *(v58 + 8);
    if (v71)
    {
      CFRelease(v71);
      *(v58 + 8) = 0;
    }

    v72 = *(v58 + 16);
    if (v72)
    {
      CFRelease(v72);
      *(v58 + 16) = 0;
    }

LABEL_61:
    if ((!*(v37 + 3928) || *(v38 + 3936) < 32) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v109, v110, v111, v112, v113, 0x12u);
    }

    if (OUTLINED_FUNCTION_93())
    {
      v73 = iAP2MsgGetMsgID(v44);
      v74 = iAP2MsgGetMsgLen(v44);
      v75 = dispatch_queue_get_label(0);
      LODWORD(a9) = 67109634;
      DWORD1(a9) = v73;
      WORD4(a9) = 1024;
      *(&a9 + 10) = v74;
      HIWORD(a9) = 2080;
      a10 = v75;
      OUTLINED_FUNCTION_15();
      _os_log_impl(v76, v77, v78, v79, v80, 0x18u);
    }

    v81 = *(v44 + 48);
    if (v81)
    {
      free(v81);
      *(v44 + 48) = 0;
    }

    v82 = *(v44 + 24);
    if (v82)
    {
      free(v82);
    }

    free(v44);
  }

LABEL_72:
  OUTLINED_FUNCTION_102();
}

void __MsgSentOutCB(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(*v1);
      if (EndpointWithUUID)
      {
        v3 = EndpointWithUUID[7];
        if (v3)
        {
          Feature = iap2_feature_getFeature(v3, 0xDu);
          if (Feature)
          {
            v5 = Feature;
            if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
            }

            if (OUTLINED_FUNCTION_65())
            {
              OUTLINED_FUNCTION_102_0();
              OUTLINED_FUNCTION_33_6();
              _os_log_debug_impl(v7, v8, v9, v10, v11, 0x44u);
            }

            v6 = v5[6];
            if (v6)
            {
              v5[6] = --v6;
            }

            ++v5[5];
            if ((*(v1 + 28) & 1) == 0 && v6 < v5[4])
            {
              *(v1 + 28) = 1;
              platform_mediaLibrary_confirmLibraryUpdate(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
            }
          }
        }
      }
    }
  }
}

char *_iap2_mediaLibrary_sendUpdateMsg(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, const __CFString *a5, int a6, int a7, int a8)
{
  result = GetCStringFromCFString(a5);
  v50 = a1;
  if (a1 && a2)
  {
    __s = result;
    v15 = *(a4 + 48);
    v16 = gNumLogObjects;
    if (gLogObjects)
    {
      v17 = gNumLogObjects < 31;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v19 = &_os_log_default;
      if (OUTLINED_FUNCTION_114())
      {
        OUTLINED_FUNCTION_46();
        LODWORD(v54) = v16;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    else
    {
      v19 = *(gLogObjects + 240);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v50[1];
      MsgID = iAP2MsgGetMsgID(a4);
      MsgLen = iAP2MsgGetMsgLen(a4);
      v23 = *v15;
      v24 = v15[1];
      *buf = 138414594;
      v52 = v20;
      v53 = 2112;
      v54 = a3;
      v55 = 1024;
      v56 = a6;
      v57 = 1024;
      v58 = a7;
      v59 = 1024;
      v60 = a8;
      v61 = 1024;
      *v62 = a4;
      *&v62[4] = 1024;
      *&v62[6] = MsgID;
      LOWORD(v63) = 1024;
      *(&v63 + 2) = MsgLen;
      HIWORD(v63) = 2112;
      *v64 = v23;
      *&v64[8] = 2112;
      v65 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "_iap2_mediaLibrary_sendUpdateMsg %@ libraryUID=%@ fullUpdate=%d progress=%d sendCount=%d pOutMsg(%hxh ID=%xh len=%d): context=(accessoryUID=%@ libraryUID=%@)", buf, 0x4Eu);
    }

    if (a6)
    {
      v25 = OUTLINED_FUNCTION_107();
      iAP2MsgAddVoidParam(v25, v26, 6);
    }

    v27 = OUTLINED_FUNCTION_107();
    iAP2MsgAddStringParam(v27, v28, 1, __s);
    v29 = OUTLINED_FUNCTION_107();
    iAP2MsgAddU8Param(v29, v30, 7, a7);
    if (v15)
    {
      v31 = v15[2];
      if (v31)
      {
        CFRelease(v31);
        v15[2] = 0;
      }

      if (a5)
      {
        v15[2] = CFRetain(a5);
      }

      *(v15 + 6) = a8;
    }

    v32 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 31)
    {
      v33 = *(gLogObjects + 240);
    }

    else
    {
      v33 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_46();
        LODWORD(v54) = v32;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = v50[1];
      v35 = iAP2MsgGetMsgID(a4);
      v36 = iAP2MsgGetMsgLen(a4);
      if (v15)
      {
        v39 = *v15;
        v38 = v15[1];
        v40 = v15[2];
        v37 = *(v15 + 6);
        v41 = *(v15 + 28);
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
      }

      v43 = a2[5];
      v44 = a2[6];
      v45 = a2[3];
      v46 = a2[4];
      *buf = 138415874;
      v52 = v34;
      v53 = 2112;
      v54 = a3;
      v55 = 1024;
      v56 = a4;
      v57 = 1024;
      v58 = v35;
      v59 = 1024;
      v60 = v36;
      v61 = 2112;
      *v62 = v39;
      *&v62[8] = 2112;
      v63 = v38;
      *v64 = 2112;
      *&v64[2] = v40;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = v37;
      HIWORD(v65) = 1024;
      v66 = v41;
      v67 = 1024;
      v68 = a6;
      v69 = 1024;
      v70 = v43;
      v71 = 1024;
      v72 = v45;
      v73 = 1024;
      v74 = v44;
      v75 = 1024;
      v76 = v46;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "_iap2_mediaLibrary_sendUpdateMsg %@ libraryUID=%@ send message(%hxh ID=%xh len=%d): context=(accessoryUID=%@ libraryUID=%@ lastRevision=%@ updatesInMsg=%d confirmed=%d) fullUpdate=%d updateMessagesInFlight=%d/%d updateMessagesPendingSend=%d++/%d", buf, 0x70u);
    }

    ++a2[6];
    return iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v50, a4);
  }

  return result;
}

uint64_t iap2_mediaLibrary_updatePlaylistContentHandler(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    result = 0;
    if (a2)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        if (*a2 != 3)
        {
          return 0;
        }

        v5 = &audioProductCerts_endpoint_publish_onceToken;
        v6 = gLogObjects;
        v7 = &audioProductCerts_endpoint_publish_onceToken;
        LODWORD(v8) = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 31) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_1_21();
          OUTLINED_FUNCTION_8_14();
          _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
        }

        v14 = OUTLINED_FUNCTION_66_1();
        v260 = v3;
        if (os_log_type_enabled(v14, v15))
        {
          v17 = *(v2 + 1);
          v16 = *(v2 + 2);
          v8 = *(v2 + 3);
          v6 = v2[8];
          v18 = *(v2 + 5);
          if (v18)
          {
            v19 = ".";
          }

          else
          {
            v19 = "nil ";
          }

          if (v18)
          {
            CFArrayGetCount(v18);
          }

          OUTLINED_FUNCTION_99_1();
          WORD6(__b[0]) = 2112;
          *(__b + 14) = v17;
          WORD3(__b[1]) = 2112;
          *(&__b[1] + 1) = v16;
          LOWORD(__b[2]) = 2048;
          *(&__b[2] + 2) = v8;
          WORD5(__b[2]) = 1024;
          HIDWORD(__b[2]) = v6;
          LOWORD(__b[3]) = 2080;
          *(&__b[3] + 2) = v19;
          WORD5(__b[3]) = 2048;
          *(&__b[3] + 12) = v20;
          OUTLINED_FUNCTION_18_12();
          _os_log_impl(v21, v22, v23, v24, v25, 0x44u);
          v3 = v260;
        }

        v26 = OUTLINED_FUNCTION_96_1(*(v2 + 1));
        MediaLibraryForUID = _iap2_mediaLibrary_findMediaLibraryForUID(v3, v26);
        if (MediaLibraryForUID)
        {
          OUTLINED_FUNCTION_68_4();
          if ((!v6 || v8 < 31) && OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_8_14();
            _os_log_error_impl(v131, v132, v133, v134, v135, 0x12u);
          }

          v27 = OUTLINED_FUNCTION_66_1();
          if (os_log_type_enabled(v27, v28))
          {
            OUTLINED_FUNCTION_99_1();
            WORD6(__b[0]) = 2080;
            *(__b + 14) = v29;
            WORD3(__b[1]) = 2080;
            *(&__b[1] + 1) = v30;
            LOWORD(__b[2]) = 1024;
            *(&__b[2] + 2) = v31;
            WORD3(__b[2]) = 1024;
            DWORD2(__b[2]) = v32;
            OUTLINED_FUNCTION_18_12();
            _os_log_impl(v33, v34, v35, v36, v37, 0x2Cu);
          }

          OUTLINED_FUNCTION_77_4();
          if (v38)
          {
            v39 = *(v3 + 32);
            if (v39)
            {
              v40 = *(v39 + 24);
              if (v40)
              {
                LODWORD(v256) = iAP2LinkGetSessionForService(*(v39 + 24), 1);
                SessionInfo = iAP2LinkGetSessionInfo(v40, v256);
                if (SessionInfo)
                {
                  HIDWORD(v256) = SessionInfo[2];
                }

                else
                {
                  HIDWORD(v256) = 0;
                }

                v269 = 0;
                *&v42 = 0xAAAAAAAAAAAAAAAALL;
                *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v267[0] = v42;
                v267[1] = v42;
                v267[2] = v42;
                v267[3] = v42;
                v268 = 0xAAAAAAAAAAAAAAAALL;
                v43 = *(v2 + 5);
                if (v43)
                {
                  Count = CFArrayGetCount(v43);
                }

                else
                {
                  Count = 0;
                }

                v255 = v40;
                OUTLINED_FUNCTION_68_4();
                if (v8 < 31 && OUTLINED_FUNCTION_21())
                {
                  OUTLINED_FUNCTION_1_21();
                  OUTLINED_FUNCTION_8_14();
                  _os_log_error_impl(v166, v167, v168, v169, v170, 0x12u);
                }

                if (OUTLINED_FUNCTION_65())
                {
                  OUTLINED_FUNCTION_103_0();
                  OUTLINED_FUNCTION_99_1();
                  OUTLINED_FUNCTION_28_6(v111, v112, v113, v114, v115, v116, v117, v118, v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v40, v256, SHIDWORD(v256));
                  OUTLINED_FUNCTION_33_6();
                  _os_log_debug_impl(v119, v120, v121, v122, v123, 0x42u);
                }

                v44 = v2[8];
                ValueAtIndex = &off_1001C3000;
                v259 = v4;
                if (v44 == 2)
                {
                  if (HIDWORD(v256) < 2)
                  {
                    OUTLINED_FUNCTION_68_4();
                    if (&off_1001C3000 < 31 && OUTLINED_FUNCTION_21())
                    {
                      OUTLINED_FUNCTION_1_21();
                      OUTLINED_FUNCTION_8_14();
                      _os_log_error_impl(v216, v217, v218, v219, v220, 0x12u);
                    }

                    if (OUTLINED_FUNCTION_21())
                    {
                      LODWORD(__b[0]) = 67109120;
                      DWORD1(__b[0]) = HIDWORD(v256);
                      OUTLINED_FUNCTION_8_14();
                      _os_log_error_impl(v77, v78, v79, v80, v81, 8u);
                    }
                  }

                  else
                  {
                    if (iAP2FileTransferAllocateBufferID(v255, v256, &v269))
                    {
                      v262 = v2;
                      if (Count < 1)
                      {
                        v257 = 0;
                        v40 = Count;
                        goto LABEL_156;
                      }

                      v257 = 0;
                      v55 = 0;
                      *&v54 = 134218240;
                      v252 = v54;
                      *&v54 = 134217984;
                      v253 = v54;
                      while (1)
                      {
                        if (!CFArrayGetValueAtIndex(*(v2 + 5), v55))
                        {
                          goto LABEL_75;
                        }

                        OUTLINED_FUNCTION_77_4();
                        if (!v38)
                        {
                          goto LABEL_75;
                        }

                        *&v57 = 0xAAAAAAAAAAAAAAAALL;
                        *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
                        __b[2] = v57;
                        __b[3] = v57;
                        __b[0] = v57;
                        __b[1] = v57;
                        platform_mediaLibrary_getStructPlaylistContentItem(v2, v56, __b);
                        v58 = 0;
                        LODWORD(ValueAtIndex) = __b[3];
                        v59 = 4;
                        do
                        {
                          v40 = v59;
                          if ((LODWORD(__b[0]) >> v58))
                          {
                            v59 = (v59 + 4);
                            switch(v58)
                            {
                              case 12:
                                v60 = *&__b[2];
                                goto LABEL_71;
                              case 13:
                              case 15:
                              case 17:
                                break;
                              case 14:
                                v60 = *(&__b[2] + 1);
                                goto LABEL_71;
                              case 16:
                                v60 = *&__b[3];
                                goto LABEL_71;
                              case 18:
                                v60 = *(&__b[3] + 1);
                                goto LABEL_71;
                              default:
                                if (v58 == 6)
                                {
                                  v60 = *(&__b[1] + 1);
                                  goto LABEL_71;
                                }

                                if (v58 == 1)
                                {
                                  v60 = *&__b[1];
LABEL_71:
                                  v59 = v40 + strlen(v60) + 5;
                                  break;
                                }

                                if (v58)
                                {
                                  v59 = v59;
                                }

                                else
                                {
                                  v59 = (v40 + 12);
                                }

                                break;
                            }
                          }

                          ++v58;
                        }

                        while (v58 != 28);
                        v2 = v262;
                        v7 = &audioProductCerts_endpoint_publish_onceToken;
                        v5 = &audioProductCerts_endpoint_publish_onceToken;
                        if (v59)
                        {
                          v257 = __PAIR64__(HIDWORD(v257), v59 + v257) + 0x100000000;
                          goto LABEL_84;
                        }

LABEL_75:
                        OUTLINED_FUNCTION_68_4();
                        if (v40)
                        {
                          v61 = ValueAtIndex < 31;
                        }

                        else
                        {
                          v61 = 1;
                        }

                        if (v61 && OUTLINED_FUNCTION_21())
                        {
                          OUTLINED_FUNCTION_1_21();
                          OUTLINED_FUNCTION_8_0();
                          _os_log_error_impl(v62, v63, v64, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v65, 0x12u);
                        }

                        if (OUTLINED_FUNCTION_93())
                        {
                          OUTLINED_FUNCTION_99_1();
                          OUTLINED_FUNCTION_15();
                          _os_log_impl(v66, v67, v68, "updatePlaylistContentHandler: WARNING: record size is 0 for index %ld", v69, 0xCu);
                        }

LABEL_84:
                        v40 = Count;
                        if (++v55 == Count)
                        {
LABEL_156:
                          v70 = v5;
                          LODWORD(v253) = v257 + 16;
                          v89 = malloc_type_malloc((v257 + 22), 0x100004077774924uLL);
                          iAP2MsgInit(v267, 0, v89, v257 + 22, 0, 0);
                          iAP2MsgAddU32Param(v267, 0, 0, HIDWORD(v257));
                          iAP2MsgAddU32Param(v267, 0, 1, 0);
                          if (v40 < 1)
                          {
LABEL_188:
                            iAP2MsgGetFirstParam(v267, 0);
                            iAP2LinkRunLoopInitImplementation();
                            v73 = v160;
                            OUTLINED_FUNCTION_111();
                            v162 = malloc_type_malloc(0x38uLL, v161);
                            v162[8] = v269;
                            v2 = v262;
                            *v162 = MediaLibraryForUID;
                            *(v162 + 2) = *(v262 + 24);
                            OUTLINED_FUNCTION_74_1(*(v262 + 16), v162 + 24);
                            OUTLINED_FUNCTION_109();
                            v71 = malloc_type_malloc(0x138uLL, v163);
                            OUTLINED_FUNCTION_40_6();
                            iAP2FileTransferCreate(v255, v256, v164, 0, 0, 0, v71, v165);
                            if (!iap2_sessionFileTransfer_addTransferForFeature(v260, 13, v71, v162))
                            {
                              v40 = v70[491];
                              LODWORD(ValueAtIndex) = gNumLogObjects;
                              if ((!v40 || gNumLogObjects < 31) && OUTLINED_FUNCTION_21())
                              {
                                OUTLINED_FUNCTION_1_21();
                                OUTLINED_FUNCTION_8_14();
                                _os_log_error_impl(v246, v247, v248, v249, v250, 0x12u);
                              }

                              if (OUTLINED_FUNCTION_93())
                              {
                                LODWORD(__b[0]) = 67109120;
                                DWORD1(__b[0]) = v269;
                                OUTLINED_FUNCTION_15();
                                _os_log_impl(v185, v186, v187, v188, v189, 8u);
                              }

                              free(v162);
                              iAP2FileTransferRelease(v71);
                            }

                            v49 = 1;
                            v76 = v253;
                            if (v71)
                            {
                              goto LABEL_115;
                            }

                            goto LABEL_203;
                          }

                          v137 = 0;
                          LODWORD(v258) = MediaLibraryForUID;
                          HIDWORD(v258) = v260;
                          LODWORD(v252) = (v138 + 144) & 0xFFF0;
                          *&v136 = 134218240;
                          v251 = v136;
                          while (2)
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(*(v262 + 40), v137);
                            v40 = v70[491];
                            v139 = *(v7 + 984);
                            if (v40)
                            {
                              v140 = v139 < 31;
                            }

                            else
                            {
                              v140 = 1;
                            }

                            if (v140 && OUTLINED_FUNCTION_114())
                            {
                              LODWORD(__b[0]) = v251;
                              *(__b + 4) = v40;
                              WORD6(__b[0]) = 1024;
                              *(__b + 14) = v139;
                              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", __b, 0x12u);
                            }

                            if (OUTLINED_FUNCTION_65())
                            {
                              *&__b[0] = __PAIR64__(HIDWORD(v258), 67109888);
                              WORD4(__b[0]) = 1024;
                              *(__b + 10) = v258;
                              HIWORD(__b[0]) = 1024;
                              LODWORD(__b[1]) = v252;
                              WORD2(__b[1]) = 1024;
                              *(&__b[1] + 6) = ValueAtIndex;
                              OUTLINED_FUNCTION_33_6();
                              _os_log_debug_impl(v156, v157, v158, "_iap2_mediaLibrary_playlistContentItemUpdateHandler: pEndpoint=%hxh mediaLibraryInfo=%hxh pOutMsg=%hxh data=%hxh", v159, 0x1Au);
                              if (ValueAtIndex)
                              {
                                goto LABEL_167;
                              }
                            }

                            else if (ValueAtIndex)
                            {
LABEL_167:
                              OUTLINED_FUNCTION_77_4();
                              if (v38)
                              {
                                *&v141 = 0xAAAAAAAAAAAAAAAALL;
                                *(&v141 + 1) = 0xAAAAAAAAAAAAAAAALL;
                                __b[2] = v141;
                                __b[3] = v141;
                                __b[0] = v141;
                                __b[1] = v141;
                                iAP2MsgAddGroupParam(v267, 2);
                                StructPlaylistContentItem = platform_mediaLibrary_getStructPlaylistContentItem(v262, ValueAtIndex, __b);
                                for (ValueAtIndex = 0; ValueAtIndex != 28; ++ValueAtIndex)
                                {
                                  if ((LODWORD(__b[0]) >> ValueAtIndex))
                                  {
                                    switch(ValueAtIndex)
                                    {
                                      case 12:
                                        v149 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v143, v144, *&__b[2], v145, v146, v147, v148, v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v255, v256, v258, v259, v260, Count, v262, MediaLibraryForUID, v264, v265, v266, v267[0]);
                                        v152 = 12;
                                        goto LABEL_182;
                                      case 13:
                                      case 15:
                                      case 17:
                                        break;
                                      case 14:
                                        v149 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v143, v144, *(&__b[2] + 1), v145, v146, v147, v148, v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v255, v256, v258, v259, v260, Count, v262, MediaLibraryForUID, v264, v265, v266, v267[0]);
                                        v152 = 14;
                                        goto LABEL_182;
                                      case 16:
                                        OUTLINED_FUNCTION_8_0();
                                        goto LABEL_182;
                                      case 18:
                                        v149 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v143, v144, *(&__b[3] + 1), v145, v146, v147, v148, v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v255, v256, v258, v259, v260, Count, v262, MediaLibraryForUID, v264, v265, v266, v267[0]);
                                        v152 = 18;
                                        goto LABEL_182;
                                      default:
                                        switch(ValueAtIndex)
                                        {
                                          case 6:
                                            v149 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v143, v144, *(&__b[1] + 1), v145, v146, v147, v148, v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v255, v256, v258, v259, v260, Count, v262, MediaLibraryForUID, v264, v265, v266, v267[0]);
                                            v152 = 6;
                                            goto LABEL_182;
                                          case 1:
                                            OUTLINED_FUNCTION_26_7();
LABEL_182:
                                            StructPlaylistContentItem = iAP2MsgAddStringParam(v149, v150, v152, v151);
                                            continue;
                                          case 0:
                                            v153 = OUTLINED_FUNCTION_60_0(StructPlaylistContentItem, v143, v144, *(&__b[0] + 1), v145, v146, v147, v148, v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v255, v256, v258, v259, v260, Count, v262, MediaLibraryForUID, v264, v265, v266, v267[0]);
                                            StructPlaylistContentItem = iAP2MsgAddU64Param(v153, v154, 0, v155);
                                            break;
                                        }

                                        break;
                                    }
                                  }
                                }
                              }
                            }

                            if (++v137 == Count)
                            {
                              goto LABEL_188;
                            }

                            continue;
                          }
                        }
                      }
                    }

                    OUTLINED_FUNCTION_68_4();
                    if (&off_1001C3000 < 31)
                    {
                      v82 = &_os_log_default;
                      if (OUTLINED_FUNCTION_21())
                      {
                        OUTLINED_FUNCTION_1_21();
                        OUTLINED_FUNCTION_8_14();
                        _os_log_error_impl(v236, v237, v238, v239, v240, 0x12u);
                      }
                    }

                    else
                    {
                      v82 = *(v40 + 240);
                    }

                    if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
                    {
                      LOWORD(__b[0]) = 0;
                      _os_log_fault_impl(&_mh_execute_header, v82, OS_LOG_TYPE_FAULT, "updatePlaylistContentHandler: failed to get bufferID... need to retry later! (but not supported yet)", __b, 2u);
                    }
                  }
                }

                else if (v44 == 1)
                {
                  *&v46 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *(__b + 8) = v46;
                  *(&__b[2] + 8) = v46;
                  *(&__b[1] + 8) = v46;
                  BYTE8(__b[0]) = 0;
                  *&__b[0] = MediaLibraryForUID;
                  v47 = *(v2 + 2);
                  *&__b[1] = *(v2 + 3);
                  OUTLINED_FUNCTION_74_1(v47, &__b[1] + 8);
                  v264 = 0xDAAAAAA00;
                  v265 = 0;
                  v266 = __b;
                  TransferEntryForFeature = iap2_sessionFileTransfer_findTransferEntryForFeature(v3, 128, &v264, _compareLibraryRevisionPlaylistPersistentID);
                  v49 = TransferEntryForFeature != 0;
                  v40 = gNumLogObjects;
                  if (gLogObjects)
                  {
                    v50 = gNumLogObjects <= 30;
                  }

                  else
                  {
                    v50 = 1;
                  }

                  v51 = !v50;
                  if (TransferEntryForFeature)
                  {
                    v52 = TransferEntryForFeature;
                    if (v51)
                    {
                      v53 = *(gLogObjects + 240);
                    }

                    else
                    {
                      v53 = &_os_log_default;
                      if (OUTLINED_FUNCTION_17())
                      {
                        OUTLINED_FUNCTION_87_3(3.8521e-34);
                        OUTLINED_FUNCTION_35(&_mh_execute_header, v214, v215, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", valuePtr);
                      }
                    }

                    if (OUTLINED_FUNCTION_75_0())
                    {
                      v210 = *v52;
                      v211 = *(v52 + 1);
                      v212 = *(v52 + 4);
                      v213 = *(v52 + 8);
                      *valuePtr = 67109888;
                      *&valuePtr[4] = v210;
                      *&valuePtr[8] = 1024;
                      *&valuePtr[10] = v211;
                      v272 = 1024;
                      v273 = v212;
                      v274 = 1024;
                      v275 = v213;
                      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "updatePlaylistContentHandler: xferEntry(bufferID=%u type=%u fileXfer=%hxh context=%hxh)", valuePtr, 0x1Au);
                    }

                    v70 = &audioProductCerts_endpoint_publish_onceToken;
                    v269 = *v52;
                    v71 = *(v52 + 1);
                    LODWORD(ValueAtIndex) = Count;
                    if (Count)
                    {
                      v72 = OUTLINED_FUNCTION_112(8 * Count);
                      if (v72)
                      {
                        v73 = v72;
                        *valuePtr = 0xAAAAAAAAAAAAAAAALL;
                        if (Count < 1)
                        {
                          v76 = 0;
                        }

                        else
                        {
                          v74 = 0;
                          v40 = v72;
                          do
                          {
                            v75 = CFArrayGetValueAtIndex(*(v2 + 5), v74);
                            CFNumberGetValue(v75, kCFNumberSInt64Type, valuePtr);
                            *v40 = valuePtr[7];
                            *(v40 + 1) = valuePtr[6];
                            *(v40 + 2) = valuePtr[5];
                            *(v40 + 3) = valuePtr[4];
                            *(v40 + 4) = valuePtr[3];
                            *(v40 + 5) = valuePtr[2];
                            *(v40 + 6) = valuePtr[1];
                            *(v40 + 7) = valuePtr[0];
                            ++v74;
                            v40 += 8;
                          }

                          while (Count != v74);
                          v76 = 8 * Count;
                        }

LABEL_114:
                        v89 = v73;
                        if (v71)
                        {
LABEL_115:
                          v90 = !v49;
                          if (HIDWORD(v256) < 2)
                          {
                            v90 = 1;
                          }

                          if ((v90 & 1) == 0)
                          {
                            memset(__b, 170, 0xA8uLL);
                            Length = CFStringGetLength(*(v2 + 1));
                            LOWORD(__b[0]) = Length + 9;
                            *(&__b[0] + 1) = *(v2 + 3);
                            if ((Length + 1) < 0x3C)
                            {
                              v92 = Length + 1;
                            }

                            else
                            {
                              v92 = 60;
                            }

                            CFStringGetCString(*(v2 + 1), &__b[1], v92, 0x8000100u);
                            BYTE11(__b[4]) = 0;
                            if (v2[8] == 2)
                            {
                              v93 = 7;
                            }

                            else
                            {
                              v93 = 4;
                            }

                            iAP2FileTransferTypeData(v71, v93, __b);
                          }

                          if (v70[491])
                          {
                            v94 = gNumLogObjects <= 30;
                          }

                          else
                          {
                            v94 = 1;
                          }

                          v95 = !v94;
                          if (!v71[26])
                          {
                            if (!v95 && OUTLINED_FUNCTION_21())
                            {
                              OUTLINED_FUNCTION_84_2();
                              OUTLINED_FUNCTION_8_14();
                              _os_log_error_impl(v231, v232, v233, v234, v235, 0x12u);
                            }

                            v124 = OUTLINED_FUNCTION_66_1();
                            if (os_log_type_enabled(v124, v125))
                            {
                              OUTLINED_FUNCTION_103_0();
                              OUTLINED_FUNCTION_30_6();
                              OUTLINED_FUNCTION_18_12();
                              _os_log_impl(v126, v127, v128, v129, v130, 0x30u);
                            }

                            if (!iAP2FileTransferStart(v71, v73, v76, v76, __handleTransferEnd, v89, 0, 0))
                            {
                              if ((!v70[491] || gNumLogObjects < 31) && OUTLINED_FUNCTION_21())
                              {
                                OUTLINED_FUNCTION_1_21();
                                OUTLINED_FUNCTION_8_14();
                                _os_log_error_impl(v241, v242, v243, v244, v245, 0x12u);
                              }

                              v171 = OUTLINED_FUNCTION_66_1();
                              if (os_log_type_enabled(v171, v172))
                              {
                                OUTLINED_FUNCTION_103_0();
                                OUTLINED_FUNCTION_30_6();
                                OUTLINED_FUNCTION_18_12();
                                _os_log_impl(v180, v181, v182, v183, v184, 0x30u);
                              }

                              iAP2FileTransferCancel(v71, v173, v174, v175, v176, v177, v178, v179);
                            }

                            goto LABEL_211;
                          }

                          if (!v95 && OUTLINED_FUNCTION_21())
                          {
                            OUTLINED_FUNCTION_84_2();
                            OUTLINED_FUNCTION_8_14();
                            _os_log_error_impl(v221, v222, v223, v224, v225, 0x12u);
                          }

                          v96 = OUTLINED_FUNCTION_66_1();
                          if (os_log_type_enabled(v96, v97))
                          {
                            v105 = v71[26];
                            LODWORD(__b[0]) = 67109120;
                            DWORD1(__b[0]) = v105;
                            OUTLINED_FUNCTION_18_12();
                            _os_log_impl(v106, v107, v108, v109, v110, 8u);
                          }

                          iAP2FileTransferCancel(v71, v98, v99, v100, v101, v102, v103, v104);
LABEL_209:
                          if (v89)
                          {
                            free(v89);
                          }

LABEL_211:
                          platform_mediaLibrary_confirmLibraryPlaylistContentUpdate(v259, *(v2 + 1), *(v2 + 2));
                          platform_mediaLibrary_deleteParams(v2);
                          return 1;
                        }

LABEL_203:
                        OUTLINED_FUNCTION_68_4();
                        if ((!v40 || ValueAtIndex < 31) && OUTLINED_FUNCTION_21())
                        {
                          OUTLINED_FUNCTION_1_21();
                          OUTLINED_FUNCTION_8_14();
                          _os_log_error_impl(v205, v206, v207, v208, v209, 0x12u);
                        }

                        v190 = OUTLINED_FUNCTION_66_1();
                        if (os_log_type_enabled(v190, v191))
                        {
                          OUTLINED_FUNCTION_103_0();
                          LODWORD(__b[0]) = 138414082;
                          *(__b + 4) = v259;
                          OUTLINED_FUNCTION_28_6(v192, v193, v194, v195, v196, v197, v198, v199, v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v255, v256, SHIDWORD(v256));
                          OUTLINED_FUNCTION_18_12();
                          _os_log_impl(v200, v201, v202, v203, v204, 0x42u);
                        }

                        goto LABEL_209;
                      }

                      goto LABEL_100;
                    }
                  }

                  else
                  {
                    if (!v51 && OUTLINED_FUNCTION_21())
                    {
                      OUTLINED_FUNCTION_87_3(3.8521e-34);
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v226, v227, v228, v229, v230, 0x12u);
                    }

                    v70 = &audioProductCerts_endpoint_publish_onceToken;
                    if (OUTLINED_FUNCTION_93())
                    {
                      v83 = *(v2 + 3);
                      *valuePtr = 134217984;
                      *&valuePtr[4] = v83;
                      OUTLINED_FUNCTION_15();
                      _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
                    }

                    v71 = 0;
                  }

                  v76 = 0;
                  v73 = 0;
                  goto LABEL_114;
                }

                v89 = 0;
                goto LABEL_203;
              }
            }
          }
        }

LABEL_100:
        platform_mediaLibrary_confirmLibraryPlaylistContentUpdate(v4, *(v2 + 1), *(v2 + 2));
        return 0;
      }
    }
  }

  return result;
}

uint64_t __handleTransferEnd(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*v3)
      {
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if (gLogObjects)
        {
          v6 = gNumLogObjects < 31;
        }

        else
        {
          v6 = 1;
        }

        if (v6 && OUTLINED_FUNCTION_17())
        {
          v34 = 134218240;
          *v35 = v4;
          OUTLINED_FUNCTION_3();
          *v36 = v5;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v34);
        }

        if (OUTLINED_FUNCTION_75_0())
        {
          OUTLINED_FUNCTION_110();
          v34 = 67110144;
          *v35 = v15;
          *&v35[4] = 1024;
          *&v35[6] = v16;
          *v36 = 1024;
          *&v36[2] = v17;
          *v37 = 1024;
          *&v37[2] = v18;
          *v38 = 1024;
          *&v38[2] = a2;
          OUTLINED_FUNCTION_6_0();
          _os_log_debug_impl(v19, v20, OS_LOG_TYPE_DEBUG, v21, v22, 0x20u);
        }

        v9 = *(v3 + 104);
        result = 1;
        if (v9 <= 7 && ((1 << v9) & 0xD0) != 0)
        {
          if (*(v3 + 16))
          {
            v10 = *(v3 + 64);
            if (v10 == a2)
            {
              free(v10);
              *(v3 + 64) = 0;
            }

            else
            {
              v11 = gLogObjects;
              v12 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 31)
              {
                v13 = *(gLogObjects + 240);
              }

              else
              {
                v13 = &_os_log_default;
                if (OUTLINED_FUNCTION_17())
                {
                  v34 = 134218240;
                  *v35 = v11;
                  OUTLINED_FUNCTION_3();
                  *v36 = v12;
                  OUTLINED_FUNCTION_35(&_mh_execute_header, v32, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v34);
                }
              }

              if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
              {
                OUTLINED_FUNCTION_110();
                v23 = *(v3 + 64);
                v34 = 136316674;
                *v35 = "__handleTransferEnd";
                *&v35[8] = 1024;
                *v36 = v24;
                *&v36[4] = 1024;
                *v37 = v25;
                *&v37[4] = 1024;
                *v38 = v26;
                *&v38[4] = 1024;
                v39 = v27;
                v40 = 1024;
                v41 = a2;
                v42 = 1024;
                v43 = v23;
                OUTLINED_FUNCTION_6_0();
                _os_log_fault_impl(v28, v29, OS_LOG_TYPE_FAULT, v30, v31, 0x30u);
              }
            }
          }

          *(v3 + 16) = 0;
          *(v3 + 40) = 0;
          v14 = *(*v3 + 176);
          if (v14)
          {
            result = *(v14 + 16);
            if (result)
            {
              iap2_sessionFileTransfer_removeTransferForFeature(result, 13, v3);
              return 1;
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

  return result;
}

void *_createFeature_14(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 21;
  }

  else
  {
    v2 = 1;
  }

  if (v2 && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_26_7();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  v15 = malloc_type_calloc(1uLL, 0x38uLL, 0x1080040A967669AuLL);
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_107();
    _calcWindowSize(v16, v17, v18, v19, v20, v21);
    *v15 = 0;
    v15[5] = 0;
    v15[6] = 0;
    v15[4] = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    v15[2] = 0;
    *(v15 + 6) = 0;
    *(v15 + 1) = 1;
    *(v15 + 2) = 1;
    *(v15 + 3) = 1;
    *(v15 + 4) = 1;
  }

  return v15;
}

uint64_t _destroyFeature_14(void **a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 21;
  }

  else
  {
    v6 = 1;
  }

  if (v6 && OUTLINED_FUNCTION_17())
  {
    *v129 = 134218240;
    *&v129[4] = v4;
    *&v129[12] = 1024;
    *&v129[14] = v5;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v129);
  }

  if (OUTLINED_FUNCTION_82())
  {
    *v129 = 0;
    OUTLINED_FUNCTION_33_5();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    v15 = *a1;
    if (*a1)
    {
      v113 = a1;
      v16 = *a1;
      if (*v15 == 1)
      {
        platform_mediaLibrary_accessoryDetached(*(a2 + 8));
        v118 = *(v16 + 48);
        if (v118 >= 1)
        {
          v26 = 0;
          *&v25 = 136315394;
          v114 = v25;
          *&v25 = 134218240;
          v117 = v25;
          *&v25 = 67110144;
          v120 = v25;
          v116 = v16;
          while (1)
          {
            v27 = *(*(v16 + 40) + 8 * v26);
            if (v27)
            {
              break;
            }

LABEL_61:
            if (++v26 == v118)
            {
              goto LABEL_62;
            }
          }

          *&v28 = 0xAAAAAAAAAAAAAAAALL;
          *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v131 = v28;
          v130 = v28;
          *&v129[8] = 0xAAAAAAAAAAAAAA00;
          *v129 = v27;
          LOBYTE(v130) = 0;
          v29 = OUTLINED_FUNCTION_38_7(v17, v18, v19, v20, v21, v22, v23, v24, v112, v113, v114, *(&v114 + 1), v115, v116, v117, *(&v117 + 1), v118, v27, v120, *(&v120 + 1), v121);
          v30 = gNumLogObjects;
          if (gLogObjects)
          {
            v31 = gNumLogObjects <= 30;
          }

          else
          {
            v31 = 1;
          }

          v32 = !v31;
          if (v29)
          {
            v33 = v29;
            if (!v32)
            {
              v34 = OUTLINED_FUNCTION_27();
              if (v34)
              {
                OUTLINED_FUNCTION_48_4(v34, v35, v36, v37, v38, v39, v40, v41, v112, v113, v114, *(&v114 + 1), v115, v116, v117);
                *v124 = v30;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v99, v100, v101, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v102, 0x12u);
              }
            }

            if (OUTLINED_FUNCTION_93_2())
            {
              *buf = v114;
              OUTLINED_FUNCTION_82_2();
              OUTLINED_FUNCTION_83_2();
              _os_log_impl(v42, v43, v44, "cleanupPendingFileTransfers: for library '%s' (%s)", v45, 0x16u);
            }

            v46 = -1;
            do
            {
              v47 = gLogObjects;
              v48 = gNumLogObjects;
              if (gLogObjects)
              {
                v49 = gNumLogObjects < 31;
              }

              else
              {
                v49 = 1;
              }

              if (v49 && OUTLINED_FUNCTION_27())
              {
                *buf = v117;
                *v123 = v47;
                *&v123[8] = 1024;
                *v124 = v48;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v50, v51, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, 0x12u);
              }

              if (OUTLINED_FUNCTION_93_2())
              {
                v54 = *v33;
                v55 = *(v33 + 1);
                v56 = obfuscatedPointer(*(v33 + 1));
                v57 = *(*(v33 + 1) + 109);
                v58 = *(v33 + 8);
                *buf = v120;
                *v123 = v54;
                *&v123[4] = 1024;
                *&v123[6] = v55;
                *v124 = 2048;
                *&v124[2] = v56;
                v125 = 1024;
                v126 = v57;
                v127 = 1024;
                v128 = v58;
                OUTLINED_FUNCTION_83_2();
                _os_log_impl(v59, v60, v61, "cleanupPendingFileTransfers: xferEntry(bufferID=%u type=%u fileXfer=%p(0x%02x) context=%hxh)", v62, 0x24u);
              }

              v63 = iap2_sessionFileTransfer_removeTransferForFeature(a2, 13, *(v33 + 1));
              v71 = OUTLINED_FUNCTION_38_7(v63, v64, v65, v66, v67, v68, v69, v70, v112, v113, v114, *(&v114 + 1), v115, v116, v117, *(&v117 + 1), v118, v119, v120, *(&v120 + 1), v121);
              v33 = v71;
              v72 = v46 + 1;
              if (!v71)
              {
                break;
              }

              ++v46;
            }

            while (v46 < 0x3E7);
            v16 = v116;
            v73 = v119;
            if (!v71 || v72 < 0x3E7)
            {
              goto LABEL_58;
            }

            v74 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 31)
            {
              v75 = *(gLogObjects + 240);
            }

            else
            {
              v90 = OUTLINED_FUNCTION_27();
              v75 = &_os_log_default;
              if (v90)
              {
                OUTLINED_FUNCTION_48_4(v90, v91, v92, v93, v94, v95, v96, v97, v112, v113, v114, *(&v114 + 1), v115, v116, v117);
                *v124 = v74;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v107, v108, v109, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v110, 0x12u);
                v75 = &_os_log_default;
              }
            }

            if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_58;
            }

            *buf = 0;
            v87 = buf;
            v84 = &_mh_execute_header;
            v85 = v75;
            v86 = OS_LOG_TYPE_DEFAULT;
            v88 = "Reached max file transfer entries before stopping cleanup!";
            v89 = 2;
          }

          else
          {
            if (!v32)
            {
              v76 = OUTLINED_FUNCTION_27();
              if (v76)
              {
                OUTLINED_FUNCTION_48_4(v76, v77, v78, v79, v80, v81, v82, v83, v112, v113, v114, *(&v114 + 1), v115, v116, v117);
                *v124 = v30;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v103, v104, v105, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v106, 0x12u);
              }
            }

            v73 = v119;
            if (!OUTLINED_FUNCTION_93_2())
            {
              goto LABEL_58;
            }

            *buf = v114;
            OUTLINED_FUNCTION_82_2();
            OUTLINED_FUNCTION_83_2();
            v88 = "cleanupPendingFileTransfers: for library '%s' (%s), No transfers found to cleanup!";
            v89 = 22;
          }

          _os_log_impl(v84, v85, v86, v88, v87, v89);
LABEL_58:
          v98 = v73[19];
          if (v98)
          {
            iAP2MsgCleanup(v98);
          }

          *(*(v16 + 40) + 8 * v26) = 0;
          free(v73);
          --*(v16 + 48);
          goto LABEL_61;
        }
      }

LABEL_62:
      platform_mediaLibrary_decrementUserCount();
      v111 = *(v16 + 40);
      if (v111)
      {
        free(v111);
        *(v16 + 40) = 0;
      }

      if (*v113)
      {
        free(*v113);
        *v113 = 0;
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

BOOL _startFeatureFromDevice_10(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 21;
  }

  else
  {
    v2 = 1;
  }

  if (v2 && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_8_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_26_7();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
  }

  v15 = OUTLINED_FUNCTION_91_0();
  if (v15)
  {
    platform_mediaLibrary_incrementUserCount();
    if (!a1 || (v16 = *(a1 + 8)) == 0)
    {
      v16 = 0;
    }

    platform_mediaLibrary_accessoryAttached(v16, *(v15 + 4));
  }

  return v15 != 0;
}

void _calcWindowSize(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, unsigned int *a5, int *a6)
{
  v8 = a1;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (!a1)
  {
    v23 = 0;
    v57 = 0;
    v59 = 0;
    OUTLINED_FUNCTION_97_1();
    goto LABEL_77;
  }

  LinkMaxCumAck = iap2_endpoint_getLinkMaxCumAck(a1);
  MaxSendPayloadSizeWithOverride = iap2_endpoint_getMaxSendPayloadSizeWithOverride(v8);
  LODWORD(v8) = gLogObjects;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 31;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v17 = &_os_log_default;
    if (OUTLINED_FUNCTION_75())
    {
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_39_5();
      _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
    }
  }

  else
  {
    v17 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_76_4();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_55_2();
    _os_log_impl(v19, v20, OS_LOG_TYPE_INFO, v21, v22, 0x28u);
  }

  v23 = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_56_5();
    v9 = &audioProductCerts_endpoint_publish_onceToken;
    goto LABEL_77;
  }

  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (!MaxSendPayloadSizeWithOverride)
  {
    OUTLINED_FUNCTION_56_5();
    goto LABEL_77;
  }

  v24 = 0;
  v25 = *(a2 + 144);
  v26 = 1;
  do
  {
    if ((v26 & v25) != 0)
    {
      if ((v26 & v25) == 0 || !v18)
      {
        switch(v26)
        {
          case 1uLL:
          case 4uLL:
            v24 += 12;
            goto LABEL_24;
          case 2uLL:
            v24 += 68;
            goto LABEL_24;
          case 3uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
            goto LABEL_24;
          case 8uLL:
            goto LABEL_23;
          default:
LABEL_99:
            JUMPOUT(0);
        }
      }

      v18 = v26 - 16 >= 0x30;
      if (v26 - 16 <= 0x30 && ((1 << (v26 - 16)) & 0x1000000010001) != 0 || (v18 = v26 >= 0x100, v26 == 256))
      {
LABEL_23:
        v24 += 5;
      }
    }

LABEL_24:
    v26 *= 2;
  }

  while (v26);
  v27 = 0;
  v28 = *(a2 + 136);
  v29 = 1;
  do
  {
    if ((v29 & v28) == 0)
    {
      goto LABEL_57;
    }

    if ((v29 & v28) == 0 || !v18)
    {
      switch(v29)
      {
        case 1uLL:
          goto LABEL_55;
        case 2uLL:
          goto LABEL_56;
        case 3uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
          goto LABEL_57;
        case 4uLL:
        case 8uLL:
          goto LABEL_54;
        default:
          goto LABEL_99;
      }
    }

    v18 = v29 >= 0x10;
    if (v29 == 16)
    {
      v27 += 8;
      goto LABEL_57;
    }

    v18 = v29 >= 0x20;
    if (v29 == 32)
    {
LABEL_55:
      v27 += 12;
      goto LABEL_57;
    }

    v18 = v29 >= 0x40;
    if (v29 == 64)
    {
      goto LABEL_56;
    }

    v18 = v29 >= 0x80;
    if (v29 == 128 || (v18 = v29 >= 0x100, v29 == 256) || (v18 = v29 >= 0x200, v29 == 512) || (v18 = v29 >= 0x400, v29 == 1024))
    {
LABEL_52:
      v27 += 6;
      goto LABEL_57;
    }

    v18 = v29 >= 0x800;
    if (v29 == 2048)
    {
      goto LABEL_55;
    }

    v18 = v29 >= 0x1000;
    if (v29 == 4096)
    {
      goto LABEL_56;
    }

    v18 = v29 >= 0x2000;
    if (v29 == 0x2000)
    {
      goto LABEL_55;
    }

    v18 = v29 >= 0x4000;
    if (v29 == 0x4000)
    {
      goto LABEL_56;
    }

    v18 = v29 >= 0x8000;
    if (v29 == 0x8000)
    {
      goto LABEL_55;
    }

    v18 = v29 >= 0x10000;
    if (v29 == 0x10000)
    {
      goto LABEL_56;
    }

    v18 = v29 >= 0x8000000;
    if (v29 == 0x8000000)
    {
      goto LABEL_52;
    }

    v18 = v29 >= 0x40000;
    if (v29 == 0x40000)
    {
LABEL_56:
      v27 += 68;
    }

    else
    {
      if (v29 == 0x80000)
      {
        v18 = 0;
        v30 = 1;
      }

      else
      {
        v18 = v29 >= 0x2000000;
        v30 = v29 == 0x2000000;
      }

      if (v30)
      {
LABEL_54:
        v27 += 5;
        goto LABEL_57;
      }

      v18 = v29 >= 0x20000;
      if (v29 == 0x20000)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    v29 *= 2;
  }

  while (v29);
  if (v24 | v27)
  {
    if (v27 + 124 <= (v24 + 124))
    {
      v31 = v24 + 124;
    }

    else
    {
      v31 = v27 + 124;
    }

    v32 = (v31 + (MaxSendPayloadSizeWithOverride >> 1) - 1) / v31;
    if (v32 * v31 * LinkMaxCumAck > 0x186A0)
    {
      LODWORD(v8) = 0x186A0 / LinkMaxCumAck / v31;
    }

    else
    {
      LODWORD(v8) = (v31 + (MaxSendPayloadSizeWithOverride >> 1) - 1) / v31;
    }

    if (!v8)
    {
      if (gLogObjects && gNumLogObjects >= 31)
      {
        v33 = *(gLogObjects + 240);
      }

      else
      {
        v33 = &_os_log_default;
        if (OUTLINED_FUNCTION_75())
        {
          OUTLINED_FUNCTION_14_10();
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v49, v50, v51, v52, v53, 0x12u);
        }
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_76_4();
        OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_55_2();
        _os_log_debug_impl(v45, v46, OS_LOG_TYPE_DEBUG, v47, v48, 0x16u);
      }

      LODWORD(v8) = 1;
      v9 = &audioProductCerts_endpoint_publish_onceToken;
    }

    v59 = LinkMaxCumAck;
    MaxSendPayloadSizeWithOverride = 5 * v8;
    v57 = 5;
  }

  else
  {
    v57 = 0;
    v59 = 0;
    LODWORD(v8) = 0;
    OUTLINED_FUNCTION_97_1();
  }

  v23 = 1;
LABEL_77:
  if (gLogObjects)
  {
    v34 = *(v9 + 984) < 31;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v40 = &_os_log_default;
    if (OUTLINED_FUNCTION_75())
    {
      OUTLINED_FUNCTION_39_5();
      _os_log_error_impl(v35, v36, v37, v38, v39, 0x12u);
    }
  }

  else
  {
    v40 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_55_2();
    _os_log_impl(v41, v42, OS_LOG_TYPE_DEFAULT, v43, v44, 0x58u);
  }

  if (v23)
  {
    if (a3)
    {
      *a3 = MaxSendPayloadSizeWithOverride;
    }

    if (a4)
    {
      *a4 = v8;
    }

    if (a5)
    {
      *a5 = v59;
    }

    if (a6)
    {
      *a6 = v57;
    }
  }
}

uint64_t iap2_externalaccessory_statusEASessionHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v194 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v4 = a1;
  if (iAP2MsgGetMsgID(a2) != 59907)
  {
    return 0;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    return 0;
  }

  NextParam = FirstParam;
  v189 = v4;
  LOWORD(v4) = 0;
  v192 = 0;
  v193 = 0;
  v8 = 2;
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  *&v6 = 134218240;
  v190 = v6;
  *&v6 = 67109120;
  v191 = v6;
  do
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (ParamID == 1)
    {
      DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v194);
      if (v194)
      {
        v147 = logObjectForModule_1(9u);
        if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v196 = 1;
        *&v196[4] = 1024;
        *&v196[6] = MsgID;
        v141 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_79;
      }

      v8 = DataAsU8;
      v17 = v9[491];
      v18 = gNumLogObjects;
      if (v17)
      {
        v19 = gNumLogObjects < 10;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = OUTLINED_FUNCTION_59();
        v73 = &_os_log_default;
        if (v20)
        {
          OUTLINED_FUNCTION_5_25(v20, v21, v22, v23, v24, v25, v26, v27, v188, v189, v190);
          v197 = v18;
          OUTLINED_FUNCTION_36_3();
          _os_log_error_impl(v28, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v31, 0x12u);
          v73 = &_os_log_default;
        }
      }

      else
      {
        v73 = *(v17 + 72);
      }

      v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);
      if (v74)
      {
        OUTLINED_FUNCTION_29_5(v74, v75, v76, v77, v78, v79, v80, v81, v188, v189, v190, *(&v190 + 1), v191);
        *v196 = v8;
        _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "eaSessinoIDStatus for SessionIDStatus = %d", buf, 8u);
      }

      v193 = 1;
    }

    else
    {
      v11 = ParamID;
      if (!ParamID)
      {
        DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v194);
        if (!v194)
        {
          LODWORD(v4) = DataAsU16;
          v13 = v9[491];
          v14 = gNumLogObjects;
          if (v13 && gNumLogObjects >= 10)
          {
            v15 = *(v13 + 72);
          }

          else
          {
            v57 = OUTLINED_FUNCTION_59();
            v15 = &_os_log_default;
            if (v57)
            {
              OUTLINED_FUNCTION_45(v57, v58, v59, v60, v61, v62, v63, v64, v188, v189, v190);
              *v196 = v13;
              OUTLINED_FUNCTION_20_4();
              v197 = v14;
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v82, v83, v84, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v85, 0x12u);
              v15 = &_os_log_default;
            }
          }

          v65 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          if (v65)
          {
            OUTLINED_FUNCTION_29_5(v65, v66, v67, v68, v69, v70, v71, v72, v188, v189, v190, *(&v190 + 1), v191);
            *v196 = v4;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "eaSessionID for SessionIDStatus = %d", buf, 8u);
          }

          v192 = 1;
          goto LABEL_38;
        }

        v147 = logObjectForModule_1(9u);
        if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v148 = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v196 = 0;
        *&v196[4] = 1024;
        *&v196[6] = v148;
        v141 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
LABEL_79:
        v142 = v147;
        goto LABEL_74;
      }

      v32 = v9;
      v33 = v9[491];
      v34 = gNumLogObjects;
      if (v33)
      {
        v35 = gNumLogObjects < 10;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = OUTLINED_FUNCTION_59();
        v48 = &_os_log_default;
        if (v36)
        {
          OUTLINED_FUNCTION_45(v36, v37, v38, v39, v40, v41, v42, v43, v188, v189, v190);
          *v196 = v33;
          OUTLINED_FUNCTION_20_4();
          v197 = v34;
          OUTLINED_FUNCTION_36_3();
          _os_log_error_impl(v44, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, 0x12u);
          v48 = &_os_log_default;
        }
      }

      else
      {
        v48 = *(v33 + 72);
      }

      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
      if (v49)
      {
        OUTLINED_FUNCTION_29_5(v49, v50, v51, v52, v53, v54, v55, v56, v188, v189, v190, *(&v190 + 1), v191);
        *v196 = v11;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
      }

      v9 = v32;
    }

LABEL_38:
    NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
  }

  while (NextParam);
  if ((v192 & v193 & 1) == 0)
  {
    return 0;
  }

  v86 = v9[491];
  v87 = gNumLogObjects;
  if (v86 && gNumLogObjects >= 10)
  {
    v88 = *(v86 + 72);
  }

  else
  {
    v88 = &_os_log_default;
    v89 = OUTLINED_FUNCTION_27();
    if (v89)
    {
      OUTLINED_FUNCTION_5_25(v89, v90, v91, v92, v93, v94, v95, v96, v188, v189, v190);
      v197 = v87;
      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_10(v136, v137, v138, v139, v140);
    }
  }

  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v196 = v4;
    *&v196[4] = 1024;
    *&v196[6] = v8;
    OUTLINED_FUNCTION_10_3();
    _os_log_impl(v97, v98, OS_LOG_TYPE_DEFAULT, v99, v100, 0xEu);
  }

  if (v8)
  {
    if (v8 != 1)
    {
      v101 = v9[491];
      v102 = gNumLogObjects;
      if (v101 && gNumLogObjects >= 10)
      {
        v103 = *(v101 + 72);
      }

      else
      {
        v103 = &_os_log_default;
        v107 = OUTLINED_FUNCTION_21();
        if (v107)
        {
          OUTLINED_FUNCTION_45(v107, v108, v109, v110, v111, v112, v113, v114, v188, v189, v190);
          *v196 = v101;
          OUTLINED_FUNCTION_20_4();
          v197 = v102;
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v143, v144, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_21())
      {
        return 0;
      }

      *buf = 67109376;
      *v196 = v8;
      *&v196[4] = 1024;
      *&v196[6] = v4;
      v141 = "Unknown sessionStatus %d (eaSessionID %d)";
      v142 = v103;
LABEL_74:
      _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, v141, buf, 0xEu);
      return 0;
    }

    v133 = platform_externalAccessory_copyEndpointUUIDForEASessionID(v4);
    v134 = _iap2_externalAccessory_removeEASessionStruct(v189, v133);
    if (v133)
    {
      CFRelease(v133);
    }

    if (v134)
    {
      _iAP2_closeEASession(v189, v4);
    }

    v2 = platform_externalAccessory_accessoryCloseExternalAccessorySession(v4);
    if ((v2 & 1) == 0)
    {
      v135 = gNumLogObjects;
      if (!v9[491] || gNumLogObjects < 30)
      {
        v150 = OUTLINED_FUNCTION_27();
        if (v150)
        {
          OUTLINED_FUNCTION_5_25(v150, v151, v152, v153, v154, v155, v156, v157, v188, v189, v190);
          v197 = v135;
          OUTLINED_FUNCTION_10_3();
          OUTLINED_FUNCTION_10(v183, v184, v185, v186, v187);
        }
      }

      v158 = OUTLINED_FUNCTION_27();
      if (v158)
      {
        OUTLINED_FUNCTION_29_5(v158, v159, v160, v161, v162, v163, v164, v165, v188, v189, v190, *(&v190 + 1), v191);
        *v196 = v178;
        OUTLINED_FUNCTION_10_3();
        _os_log_error_impl(v179, v180, OS_LOG_TYPE_ERROR, v181, v182, 8u);
      }
    }

    v166 = v9[491];
    v167 = gNumLogObjects;
    if (v166 && gNumLogObjects >= 30)
    {
      v168 = *(v166 + 232);
    }

    else
    {
      v168 = &_os_log_default;
      v169 = OUTLINED_FUNCTION_13();
      if (v169)
      {
        OUTLINED_FUNCTION_5_25(v169, v170, v171, v172, v173, v174, v175, v176, v188, v189, v190);
        v197 = v167;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v177, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_INFO, "Close iAP2 EA Session based on accessory sending eiAP2ParamEA_SessionStatus_SessionStatusClosed", buf, 2u);
    }
  }

  else
  {
    v104 = v9[491];
    v105 = gNumLogObjects;
    if (v104 && gNumLogObjects >= 10)
    {
      v106 = *(v104 + 72);
    }

    else
    {
      v106 = &_os_log_default;
      v116 = OUTLINED_FUNCTION_21();
      if (v116)
      {
        OUTLINED_FUNCTION_45(v116, v117, v118, v119, v120, v121, v122, v123, v188, v189, v190);
        *v196 = v104;
        OUTLINED_FUNCTION_20_4();
        v197 = v105;
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v145, v146, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    v124 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
    if (v124)
    {
      OUTLINED_FUNCTION_29_5(v124, v125, v126, v127, v128, v129, v130, v131, v188, v189, v190, *(&v190 + 1), v191);
      *v196 = v132;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "SessionStatus OK for sessionID %d", buf, 8u);
    }

    return 1;
  }

  return v2;
}

uint64_t _iap2_externalAccessory_removeEASessionStruct(uint64_t a1, const void *a2)
{
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  Value = 0;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(__gActiveEASessionStructs, a2);
      if (Value)
      {
        CFDictionaryRemoveValue(__gActiveEASessionStructs, a2);
        _iap2_externalAccessory_cleanupEASessionStruct(Value);
        free(Value);
        Feature = iap2_feature_getFeature(a1, 0xAu);
        if (Feature)
        {
          CFDictionaryRemoveValue(*(Feature + 32), a2);
        }

        Value = 1;
      }
    }
  }

  pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
  return Value;
}

uint64_t _iAP2_closeEASession(uint64_t *a1, unsigned int a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 30;
  }

  else
  {
    v6 = 1;
  }

  if (v6 && OUTLINED_FUNCTION_17())
  {
    v41 = 134218240;
    *v42 = v4;
    OUTLINED_FUNCTION_3();
    v43 = v5;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v41);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (a1)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (a1)
  {
    v18 = @"yes";
  }

  else
  {
    v18 = @"no";
  }

  v41 = 138412290;
  *v42 = v18;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_30_7(v19, v20, v21, v22, v23);
  if (!a1)
  {
    return 0;
  }

LABEL_10:
  v9 = gLogObjects;
  v10 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 30) && OUTLINED_FUNCTION_17())
  {
    v41 = 134218240;
    *v42 = v9;
    OUTLINED_FUNCTION_3();
    v43 = v10;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v36, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v41);
  }

  if (OUTLINED_FUNCTION_75_0())
  {
    if (*a1)
    {
      v24 = @"yes";
    }

    else
    {
      v24 = @"no";
    }

    v41 = 138412290;
    *v42 = v24;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_30_7(v25, v26, v27, v28, v29);
  }

  if (!*a1)
  {
    return 0;
  }

  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 30) && OUTLINED_FUNCTION_17())
  {
    v41 = 134218240;
    *v42 = v11;
    OUTLINED_FUNCTION_3();
    v43 = v12;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v38, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v41);
  }

  if (OUTLINED_FUNCTION_75_0())
  {
    v30 = a1[1];
    if (!v30)
    {
      v30 = @"no";
    }

    v41 = 138412290;
    *v42 = v30;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_30_7(v31, v32, v33, v34, v35);
  }

  if (!a1[1])
  {
    return 0;
  }

  v13 = iAP2MsgInit((a1 + 15), 59905, a1[24], 0xFFFF, 0, 0);
  iAP2MsgAddU16Param(v13, 0, 0, a2);
  v14 = gLogObjects;
  v15 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 30)
  {
    v16 = *(gLogObjects + 232);
  }

  else
  {
    v16 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      v41 = 134218240;
      *v42 = v14;
      OUTLINED_FUNCTION_3();
      v43 = v15;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v41);
    }
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 67109376;
    *v42 = a2;
    *&v42[4] = 1024;
    *&v42[6] = a2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "closing EA session for sessionID %d (0x%X)", &v41, 0xEu);
  }

  return iap2_sessionControl_sendOutgoingMessage(a1, v13);
}

uint64_t iap2_externalAccessory_closeEASession(uint64_t *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
  if (a1)
  {
    Feature = iap2_feature_getFeature(a1, 0xAu);
    if (Feature)
    {
      v6 = Feature;
      v7 = CFDictionaryGetValue(*(Feature + 24), Value);
      if (v7)
      {
        v8 = v7;
        CFDictionaryRemoveValue(_gActiveEASessions, Value);
        CFDictionaryRemoveAllValues(v8);
        CFDictionaryRemoveValue(*(v6 + 24), Value);
      }
    }
  }

  if (_iap2_externalAccessory_removeEASessionStruct(a1, Value))
  {
    v13 = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionIDKey);
    *v19 = -1431655766;
    CFNumberGetValue(v13, kCFNumberSInt32Type, v19);
    return _iAP2_closeEASession(a1, v19[0]);
  }

  else
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 30;
    }

    else
    {
      v9 = 1;
    }

    if (v9 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v19);
    }

    result = OUTLINED_FUNCTION_65();
    if (result)
    {
      OUTLINED_FUNCTION_38_8();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_30_7(v14, v15, v16, v17, v18);
      return 0;
    }
  }

  return result;
}

uint64_t iap2_externalAccessory_outgoingEADataAvailable(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1 || !*(a1 + 32) || !iap2_endpoint_isInitialized(a1))
  {
    goto LABEL_48;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
LABEL_48:
    v10 = 0;
    goto LABEL_73;
  }

  v5 = *(v4 + 24);
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  if (!v5)
  {
    goto LABEL_48;
  }

  Value = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionUUIDKey);
  v7 = CFDictionaryGetValue(__gActiveEASessionStructs, Value);
  if (!v7)
  {
    goto LABEL_48;
  }

  v9 = v7;
  v10 = 1;
  *(v7 + 3) = 1;
  if (Value && (v7[1] & 1) != 0)
  {
    if (*(v7 + 2))
    {
      *&v8 = 134218240;
      v113 = v8;
      do
      {
        v11 = *(v9 + 1);
        if (!v11)
        {
          break;
        }

        if (CFArrayGetCount(v11) < 1)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 1), 0);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        CFDataSetLength(ValueAtIndex, v9[2]);
        v117.length = v9[2];
        v117.location = 0;
        CFDataReplaceBytes(v13, v117, 0, 0);
        CFArrayAppendValue(*(v9 + 2), v13);
        CFArrayRemoveValueAtIndex(*(v9 + 1), 0);
        MutableEADataFromAppForSessionUUID = platform_externalAccessory_retrieveMutableEADataFromAppForSessionUUID(Value, v9[2]);
        if (!MutableEADataFromAppForSessionUUID)
        {
          v83 = gLogObjects;
          v84 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 30) && OUTLINED_FUNCTION_17())
          {
            *buf = v113;
            v115 = v83;
            OUTLINED_FUNCTION_2_1();
            v116 = v84;
            OUTLINED_FUNCTION_35(&_mh_execute_header, v106, v107, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          if (OUTLINED_FUNCTION_82())
          {
            v85 = *v9;
            *buf = 67109120;
            LODWORD(v115) = v85;
            OUTLINED_FUNCTION_27_1();
            _os_log_impl(v86, v87, OS_LOG_TYPE_INFO, v88, v89, 8u);
          }

          v90 = *(v9 + 2);
          if (v90)
          {
            if (*(v9 + 1))
            {
              v91 = CFArrayGetCount(v90) - 1;
              v92 = CFArrayGetValueAtIndex(*(v9 + 2), v91);
              if (v92)
              {
                CFArrayAppendValue(*(v9 + 1), v92);
                CFArrayRemoveValueAtIndex(*(v9 + 2), v91);
              }
            }
          }

          *(v9 + 3) = 0;
          goto LABEL_62;
        }

        v15 = MutableEADataFromAppForSessionUUID;
        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = *(v16 + 24);
          if (v17)
          {
            CFRetain(Value);
            CFRetain(v15);
            SessionForService = iAP2LinkGetSessionForService(v17, 2);
            MutableBytePtr = CFDataGetMutableBytePtr(v15);
            *MutableBytePtr = bswap32(*v9) >> 16;
            Length = CFDataGetLength(v15);
            v21 = iAP2LinkQueueSendData(v17, MutableBytePtr, Length, SessionForService, Value, _iap2_externalAccessory_eaDataQueuedCB, 0, 0);
            if (gLogObjects)
            {
              v22 = gNumLogObjects <= 29;
            }

            else
            {
              v22 = 1;
            }

            v23 = !v22;
            if (v21)
            {
              if (v23)
              {
                v24 = *(gLogObjects + 232);
              }

              else
              {
                v25 = OUTLINED_FUNCTION_19_0();
                v24 = &_os_log_default;
                if (v25)
                {
                  OUTLINED_FUNCTION_6_22(v25, v26, v27, v28, v29, v30, v31, v32, v113);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v75, v76, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v78, 0x12u);
                  v24 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v33 = CFDataGetLength(v15);
                OUTLINED_FUNCTION_19_10(v33, v34, v35, v36, v37, v38, v39, v40, v113);
                _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "queued %lu ea bytes for eaSession %d", v41, 0x12u);
              }
            }

            else
            {
              if (!v23)
              {
                v42 = OUTLINED_FUNCTION_19_0();
                if (v42)
                {
                  OUTLINED_FUNCTION_6_22(v42, v43, v44, v45, v46, v47, v48, v49, v113);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v79, v80, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v82, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_59())
              {
                v63 = CFDataGetLength(v15);
                OUTLINED_FUNCTION_19_10(v63, v64, v65, v66, v67, v68, v69, v70, v113);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v71, v72, v73, "Unable to queue %lu ea bytes for eaSession %d", v74, 0x12u);
              }
            }

            CFRelease(v15);
          }
        }

        if (CFDataGetLength(v15) != v9[2])
        {
          *(v9 + 3) = 0;
          CFRelease(v15);
          goto LABEL_62;
        }

        if (gLogObjects && gNumLogObjects >= 30)
        {
          v50 = *(gLogObjects + 232);
        }

        else
        {
          v51 = OUTLINED_FUNCTION_19_0();
          v50 = &_os_log_default;
          if (v51)
          {
            OUTLINED_FUNCTION_6_22(v51, v52, v53, v54, v55, v56, v57, v58, v113);
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v59, v60, v61, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v62, 0x12u);
            v50 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "SST READ MAX POSSIBLE, WILL KEEP READING", buf, 2u);
        }

        CFRelease(v15);
      }

      while (*(v9 + 2));
    }

    v96 = gLogObjects;
    v97 = gNumLogObjects;
    if (gLogObjects)
    {
      v98 = gNumLogObjects < 10;
    }

    else
    {
      v98 = 1;
    }

    if (v98 && OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      v115 = v96;
      OUTLINED_FUNCTION_2_1();
      v116 = v97;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v99, v100, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v101 = *v9;
      *buf = 67109120;
      LODWORD(v115) = v101;
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v102, v103, OS_LOG_TYPE_INFO, v104, v105, 8u);
    }

LABEL_62:
    v93 = *(v9 + 1);
    if (!v93 || CFArrayGetCount(v93) <= 0)
    {
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v94 = *(gLogObjects + 232);
      }

      else
      {
        v94 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v108, v109, v110, v111, v112, 0x12u);
        }
      }

      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_58_0();
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "free buffers are not remaining for eaSessionUUID %@, stop notifications", buf, 0xCu);
      }

      platform_externalAccessory_stopIncomingDataNotificationsForEASessionUUID(Value);
    }

    v10 = 1;
  }

LABEL_73:
  pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
  return v10;
}