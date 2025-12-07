uint64_t _sendPBQTransferTypeAndAvailability(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_50();
    if (!v6)
    {
      return 0;
    }

    v7 = v5;
    v8 = v4;
    v9 = v3;
    v10 = v2;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v36, v37, v38, v39, v40, v41);
    }

    v11 = OUTLINED_FUNCTION_66_2();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_48_1();
      _os_log_impl(v13, v14, OS_LOG_TYPE_INFO, v15, v16, 0x1Eu);
    }

    v17 = OUTLINED_FUNCTION_69_3();
    result = iap2_feature_getFeature(v17, v18);
    if (result)
    {
      v19 = result;
      OUTLINED_FUNCTION_89_3();
      if (!v20)
      {
        return 0;
      }

      v48 = v7;
      v21 = OUTLINED_FUNCTION_6_7();
      v22 = malloc_type_malloc(0xFFFFuLL, 0xA9F0B797uLL);
      v23 = OUTLINED_FUNCTION_51_2();
      *v23 = v1;
      v23[8] = *(v19 + 121);
      *(v23 + 3) = v10;
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v24 = *(gLogObjects + 248);
      }

      else
      {
        v24 = &_os_log_default;
        if (OUTLINED_FUNCTION_11())
        {
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_87_4();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v42, v43, v44, v45, v46, v47);
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_87_4();
        _os_log_impl(v25, v26, OS_LOG_TYPE_DEFAULT, v27, v28, 0x1Cu);
      }

      iAP2MsgInit(v21, 20481, v22, 0xFFFF, _playbackQueueFileTransferIDSent, v23);
      v29 = OUTLINED_FUNCTION_66_2();
      iAP2MsgAddGroupParam(v29, v30);
      if (!v8 || (v31 = OUTLINED_FUNCTION_44_7(), iAP2MsgAddU8Param(v31, v32, 14, v48), v48))
      {
        v33 = OUTLINED_FUNCTION_44_7();
        if (v9)
        {
          iAP2MsgAddVoidParam(v33, v34, 17);
        }

        else
        {
          iAP2MsgAddU8Param(v33, v34, 15, v35);
        }
      }

      return iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v1, v21);
    }
  }

  return result;
}

void _playbackQueueFileTransferIDSent(void *a1, int a2)
{
  if (a1)
  {
    v4 = a1[6];
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v5 = *(gLogObjects + 248);
    }

    else
    {
      v5 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v20, v21, v22, v23, v24, v25);
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      obfuscatedPointer(v4);
      iAP2MsgGetMsgID(a1);
      iAP2MsgGetMsgLen(a1);
      dispatch_queue_get_label(0);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x2Eu);
    }

    if (v4)
    {
      v10 = *(v4 + 12);
      if (v10 == 6 || v10 == 3)
      {
        if (*v4)
        {
          Feature = iap2_feature_getFeature(*v4, 0xEu);
          if (Feature)
          {
            _handleFileTransferIDSent(@"#PlaybackQueueList", v4, Feature + 120, _playbackQueueFileTransferEndHandler);
          }
        }
      }
    }
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v13 = *(gLogObjects + 248);
    }

    else
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_21();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v26, v27, v28, v29, v30, v31);
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        iAP2MsgGetMsgID(a1);
        iAP2MsgGetMsgLen(a1);
      }

      dispatch_queue_get_label(0);
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v14, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 0x18u);
    }

    if (a1)
    {
      v18 = a1[6];
      if (v18)
      {
        free(v18);
        a1[6] = 0;
      }

      v19 = a1[3];
      if (v19)
      {
        free(v19);
      }

      free(a1);
    }
  }
}

char *_createFeature_19(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2 || !*(v2 + 24))
  {
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040F5F5C552uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = 0;
    *(v3 + 6) = 0;
    *(v3 + 40) = 0;
    v3[82] = 0;
    v3[136] = 0;
    *(v3 + 8) = 0u;
    *(v3 + 24) = 0u;
    v3[40] = 0;
    *(v3 + 92) = 0;
    *(v3 + 108) = 0;
    *(v3 + 100) = 0;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 24));
    *(v4 + 7) = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___createFeature_block_invoke_0;
    v7[3] = &__block_descriptor_tmp_16;
    v7[4] = a1;
    v7[5] = v4;
    dispatch_source_set_event_handler(v5, v7);
    dispatch_source_set_timer(*(v4 + 7), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v4 + 7));
    *(v4 + 32) = 0;
    v4[66] = 0;
    *(v4 + 9) = 0;
    *(v4 + 60) = 0;
    v4[122] = 0;
    *(v4 + 16) = 0;
    iAP2LinkRegisterEventCallback(*(*(a1 + 32) + 24), 1u, _nowPlayingiAP2LinkEventNotifyHandler);
    platform_nowPlaying_incrementUserCount();
  }

  return v4;
}

uint64_t _destroyFeature_19(void **a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = *(v5 + 7);
      if (v6)
      {
        dispatch_source_cancel(v6);
      }

      if (v5[64] == 1)
      {
        TransferEntry = iap2_sessionFileTransfer_findTransferEntry(a2, v5[65]);
        if (TransferEntry)
        {
          v15 = *(TransferEntry + 8);
          if (v15)
          {
            iAP2FileTransferCancel(v15, v8, v9, v10, v11, v12, v13, v14);
          }
        }

        *(v5 + 32) = 0;
      }

      if (v5[120] == 1)
      {
        v16 = iap2_sessionFileTransfer_findTransferEntry(a2, v5[121]);
        if (v16)
        {
          v24 = *(v16 + 8);
          if (v24)
          {
            iAP2FileTransferCancel(v24, v17, v18, v19, v20, v21, v22, v23);
          }
        }

        *(v5 + 60) = 0;
      }

      if (*v5 == 1)
      {
        _removeSubscribersForSubFeatures(v5);
      }

      platform_nowPlaying_decrementUserCount();
      v25 = *(v5 + 1);
      if (v25)
      {
        CFRelease(v25);
        *(v5 + 1) = 0;
      }

      v26 = *(v5 + 2);
      if (v26)
      {
        CFRelease(v26);
        *(v5 + 2) = 0;
      }

      v27 = *(v5 + 7);
      if (v27)
      {
        dispatch_release(v27);
        *(v5 + 7) = 0;
      }

      v28 = *(v5 + 9);
      if (v28)
      {
        CFRelease(v28);
        *(v5 + 9) = 0;
      }

      v5[66] = 0;
      v29 = *(v5 + 12);
      if (v29)
      {
        CFRelease(v29);
        *(v5 + 12) = 0;
      }

      v30 = *(v5 + 13);
      if (v30)
      {
        CFRelease(v30);
        *(v5 + 13) = 0;
      }

      v31 = *(v5 + 16);
      if (v31)
      {
        CFRelease(v31);
        *(v5 + 16) = 0;
      }

      v5[122] = 0;
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

void ___createFeature_block_invoke_0(uint64_t a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
  {
    *v82 = 134218240;
    *&v82[4] = v2;
    OUTLINED_FUNCTION_3();
    *&v82[14] = v3;
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_4_21();
    _os_log_error_impl(v46, v47, v48, v49, v50, v51);
  }

  v4 = OUTLINED_FUNCTION_94();
  if (os_log_type_enabled(v4, v5))
  {
    *v82 = 0;
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_46_4();
    _os_log_debug_impl(v27, v28, v29, v30, v31, v32);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_6();
    *&v82[14] = v8;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v7 || (v33 = v7[1]) == 0)
  {
    v33 = 0;
  }

  *v82 = 138412546;
  *&v82[4] = v33;
  *&v82[12] = 2048;
  *&v82[14] = obfuscatedPointer(v6);
  OUTLINED_FUNCTION_19_11();
  _os_log_debug_impl(v34, v35, v36, v37, v38, 0x16u);
  if (v7)
  {
LABEL_13:
    if (v6)
    {
      *(v6 + 137) = 0;
      CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
      v10 = *(v6 + 48);
      if (v10)
      {
        v11 = CurrentUnixTimeMS - v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
      {
        *v82 = 134218240;
        *&v82[4] = v12;
        OUTLINED_FUNCTION_3();
        *&v82[14] = v13;
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v58, v59, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60, v61, v62, v63, *v82, *&v82[16]);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        *v82 = 134217984;
        *&v82[4] = v11;
        OUTLINED_FUNCTION_19_11();
        _os_log_debug_impl(v39, v40, v41, v42, v43, 0xCu);
      }

      if (*(v6 + 24) == 1)
      {
        *(v6 + 36) += v11;
      }

      if (*v7 && *v6 == 1 && *(v6 + 40) == 1)
      {
        v14 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_6();
          *&v82[14] = v14;
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v70, v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v72, v73, v74, v75);
        }

        if (OUTLINED_FUNCTION_75_0())
        {
          OUTLINED_FUNCTION_84();
          *&v82[8] = 2112;
          *&v82[10] = v64;
          OUTLINED_FUNCTION_19_11();
          _os_log_debug_impl(v65, v66, v67, v68, v69, 0x12u);
        }

        v15 = OUTLINED_FUNCTION_6_7();
        malloc_type_malloc(0xFFFFuLL, 0xB521221uLL);
        v16 = OUTLINED_FUNCTION_52_5();
        iAP2MsgInit(v16, v17, v18, v19, v20, v7);
        v21 = OUTLINED_FUNCTION_9_3();
        v23 = iAP2MsgAddGroupParam(v21, v22);
        if (iAP2MsgAddU32Param(v15, v23, 1, *(v6 + 36)))
        {
          if (iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v7, v15))
          {
            *(v6 + 48) = systemInfo_getCurrentUnixTimeMS();
          }
        }

        else
        {
          v24 = gLogObjects;
          v25 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v26 = *(gLogObjects + 248);
          }

          else
          {
            v26 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              *v82 = 134218240;
              *&v82[4] = v24;
              OUTLINED_FUNCTION_3();
              *&v82[14] = v25;
              OUTLINED_FUNCTION_6_26();
              _os_log_error_impl(v76, v77, v78, v79, v80, v81);
            }
          }

          if (OUTLINED_FUNCTION_24())
          {
            *v82 = 136315138;
            *&v82[4] = "_sendElapsedTimeUpdate";
            OUTLINED_FUNCTION_79_0(&_mh_execute_header, v26, v44, "%s: no parameters added! cleaning up pOutMsg", v82);
          }

          v45 = OUTLINED_FUNCTION_9_3();
          iAP2MsgCleanup(v45);
        }
      }
    }
  }
}

void _nowPlayingiAP2LinkEventNotifyHandler(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 || a2 != 1)
  {
    return;
  }

  if (a3)
  {
    v5 = *(a3 + 64);
  }

  else
  {
    v5 = 0;
  }

  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (!a3)
    {
      return;
    }

LABEL_12:
    if (!*(a3 + 64))
    {
      return;
    }

    v6 = *(a3 + 112);
    if (v6 > 6)
    {
      return;
    }

    if (((1 << v6) & 0x4C) == 0)
    {
      return;
    }

    v7 = *(a1 + 176);
    if (!v7)
    {
      return;
    }

    v8 = *(v7 + 16);
    if (!v8 || !v5)
    {
      return;
    }

    v9 = *(a3 + 104);
    if (v9 == 2)
    {
      if (v5[2] != 1)
      {
LABEL_39:
        if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_23_7();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48);
        }

        v10 = OUTLINED_FUNCTION_75_0();
        v11 = *(a3 + 104);
        if (v10)
        {
          OUTLINED_FUNCTION_19_11();
          _os_log_debug_impl(v38, v39, v40, v41, v42, 0x20u);
          v11 = *(a3 + 104);
        }

        v5[1] = v11 == 1;
        if (*v5 == 1)
        {
          if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, v52, v53, v54);
          }

          v12 = OUTLINED_FUNCTION_9_3();
          if (os_log_type_enabled(v12, v13))
          {
            OUTLINED_FUNCTION_12_15();
            OUTLINED_FUNCTION_14_6();
            OUTLINED_FUNCTION_67_5();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_84_3(v21, v22, v23, v24, v25);
          }

          *v5 = 0;
          iAP2FileTransferCancel(a3, v14, v15, v16, v17, v18, v19, v20);
          iap2_sessionFileTransfer_removeTransferForFeature(v8, 14, a3);
          v26 = *(a3 + 64);
          if (v26)
          {
            free(v26);
            *(a3 + 64) = 0;
          }
        }

        return;
      }

      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_23_7();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v65, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v67, v68, v69, v70);
        v9 = *(a3 + 104);
      }

      else
      {
        v9 = 2;
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_14_6();
        OUTLINED_FUNCTION_19_11();
        _os_log_debug_impl(v55, v56, v57, v58, v59, 0x20u);
        v9 = *(a3 + 104);
      }

      v5[3] = 1;
    }

    if (v9 == 3 && v5[1] == 1)
    {
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_23_7();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v71, v72, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v73, v74, v75, v76);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_14_6();
        OUTLINED_FUNCTION_67_5();
        OUTLINED_FUNCTION_19_11();
        _os_log_debug_impl(v60, v61, v62, v63, v64, 0x20u);
      }

      v5[2] = 1;
    }

    goto LABEL_39;
  }

  obfuscatedPointer(a3);
  if (a3)
  {
    obfuscatedPointer(*(a3 + 64));
  }

  OUTLINED_FUNCTION_19_11();
  _os_log_debug_impl(v33, v34, v35, v36, v37, 0x3Au);
  if (a3)
  {
    goto LABEL_12;
  }
}

void _elapsedTimeSentCB(void *a1, int a2)
{
  if (a1)
  {
    if (a1[6])
    {
      Feature = iap2_feature_getFeature(a1[6], 0xEu);
      if (Feature)
      {
        if (*(Feature + 136) == 1)
        {
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v5 = *(gLogObjects + 248);
          }

          else
          {
            v5 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_36();
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v6, v7, v8, v9, v10, v11);
            }
          }

          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_36();
            _os_log_debug_impl(v12, v13, OS_LOG_TYPE_DEBUG, v14, v15, 0x1Eu);
          }

          _continueElapsedTimeTimer();
        }
      }
    }

    if (a2)
    {
      v16 = a1[3];
      if (v16)
      {
        free(v16);
      }

      free(a1);
    }
  }
}

void _continueElapsedTimeTimer()
{
  OUTLINED_FUNCTION_43_1();
  if (!v0)
  {
    goto LABEL_26;
  }

  v1 = v0;
  if (*(v0 + 40) != 1)
  {
    goto LABEL_26;
  }

  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_4_21();
    _os_log_error_impl(v20, v21, v22, v23, v24, v25);
  }

  v2 = OUTLINED_FUNCTION_94();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_15_1();
    _os_log_debug_impl(v16, v17, OS_LOG_TYPE_DEBUG, v18, v19, 0xEu);
  }

  if (*(v1 + 136))
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if ((*(v1 + 137) & 1) == 0)
    {
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v36, v37, v38, v39, v40, v41);
      }

      v12 = OUTLINED_FUNCTION_94();
      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v32, v33, OS_LOG_TYPE_DEBUG, v34, v35, 8u);
      }

      v14 = *(v1 + 56);
      v15 = dispatch_time(0, 450000000);
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
      *(v1 + 137) = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
  }

  if ((!v4 || v5 < 32) && OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_26();
    _os_log_error_impl(v26, v27, v28, v29, v30, v31);
  }

  if (OUTLINED_FUNCTION_108())
  {
    OUTLINED_FUNCTION_46_4();
    _os_log_debug_impl(v6, v7, v8, v9, v10, v11);
  }

LABEL_26:
  OUTLINED_FUNCTION_44_2();
}

void _removeSubscribersForSubFeatures(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (CFArrayGetCount(v2) >= 1)
      {
        platform_nowPlaying_removeSubscriber(@"MediaItemAttributes");
      }

      if (_isSubscribingForMediaItemAttribute(a1))
      {
        platform_nowPlaying_removeSubscriber(@"MediaItemArtwork");
      }
    }

    v3 = *(a1 + 16);
    if (v3 && CFArrayGetCount(v3) >= 1)
    {

      platform_nowPlaying_removeSubscriber(@"PlaybackAttributes");
    }
  }
}

uint64_t _startNowPlayingUpdatesHandler(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = iap2_feature_getFeature(a1, 0xEu);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_3_5();
    *v339 = v6;
    OUTLINED_FUNCTION_6_26();
    _os_log_error_impl(v178, v179, v180, v181, v182, v183);
  }

  v327 = a1;
  if (OUTLINED_FUNCTION_108())
  {
    *buf = 0;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_46_4();
    _os_log_debug_impl(v111, v112, v113, v114, v115, v116);
  }

  v326 = v5;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 28, 0);
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 18, 0);
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    v11 = 0;
    v332 = 0;
    v333 = 0;
    v331 = 0;
LABEL_95:
    v117 = v326;
    _removeSubscribersForSubFeatures(v326);
    v118 = *(v326 + 8);
    if (v118)
    {
      CFRelease(v118);
    }

    *(v326 + 8) = Mutable;
    v119 = *(v326 + 16);
    v120 = v327;
    if (v119)
    {
      CFRelease(v119);
    }

    *(v326 + 16) = theArray;
    *(v326 + 40) = v332 & 1;
    v121 = BYTE4(v332) & 1;
    *(v326 + 80) = v121;
    *(v326 + 81) = v331 & 1;
    *(v326 + 82) = v333 & 1;
    *(v326 + 83) = 0;
    *(v326 + 84) = 0;
    *(v326 + 88) = HIDWORD(v333);
    *(v326 + 92) = v11 | v121;
    *v326 = 1;
    v122 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_3_5();
      *v339 = v122;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v228, v229, v230, v231, v232, v233);
    }

    if (OUTLINED_FUNCTION_108())
    {
      Count = CFArrayGetCount(*(v326 + 8));
      *buf = 134217984;
      *v338 = Count;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_45_6();
      _os_log_debug_impl(v185, v186, v187, v188, v189, v190);
    }

    v123 = gLogObjects;
    v124 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      *v338 = v123;
      *&v338[8] = 1024;
      *v339 = v124;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v234, v235, v236, v237, v238, v239);
    }

    if (OUTLINED_FUNCTION_108())
    {
      v191 = CFArrayGetCount(*(v326 + 16));
      *buf = 134217984;
      *v338 = v191;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_45_6();
      _os_log_debug_impl(v192, v193, v194, v195, v196, v197);
    }

    if (!*v327 || (v125 = *(v326 + 8)) == 0)
    {
LABEL_159:
      v171 = *(v117 + 16);
      if (v171 && CFArrayGetCount(v171) >= 1)
      {
        platform_nowPlaying_addSubscriber(@"PlaybackAttributes");
        platform_nowPlaying_triggerPlaybackAttributesUpdate();
        if (_isSubscribingForPlaybackAttribute(v117, 0xFu) || _isSubscribingForPlaybackAttribute(v117, 0x11u))
        {
          v172 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
          {
            OUTLINED_FUNCTION_3_5();
            *v339 = v172;
            OUTLINED_FUNCTION_6_26();
            _os_log_error_impl(v288, v289, v290, v291, v292, v293);
          }

          if (OUTLINED_FUNCTION_80_2())
          {
            *buf = 0;
            OUTLINED_FUNCTION_23_0();
            _os_log_impl(v173, v174, OS_LOG_TYPE_INFO, v175, v176, 2u);
          }

          platform_nowPlaying_addSubscriber(@"PlaybackQueueList");
        }

        v177 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_3_5();
          *v339 = v177;
          OUTLINED_FUNCTION_6_26();
          _os_log_error_impl(v271, v272, v273, v274, v275, v276);
        }

        if (OUTLINED_FUNCTION_108())
        {
          *buf = 0;
          OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_46_4();
          _os_log_debug_impl(v264, v265, v266, v267, v268, v269);
        }

        _checkMoveWindowAndRequestPBQList(1, *(v117 + 84), v120, v117);
      }

      v125 = *(v117 + 8);
      if (!v125)
      {
        return 1;
      }

      goto LABEL_178;
    }

    if (!*(v326 + 16))
    {
LABEL_178:
      if (CFArrayGetCount(v125) >= 1)
      {
        platform_nowPlaying_addSubscriber(@"MediaItemAttributes");
        platform_nowPlaying_triggerMediaItemAttributesUpdate();
      }

      if (_isSubscribingForMediaItemAttribute(v117))
      {
        platform_nowPlaying_addSubscriber(@"MediaItemArtwork");
        platform_nowPlaying_triggerMediaItemArtworkUpdate();
      }

      return 1;
    }

    v126 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_3_5();
      *v339 = v126;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v240, v241, v242, v243, v244, v245);
    }

    if (OUTLINED_FUNCTION_24())
    {
      v127 = v327[1];
      *buf = 138412290;
      *v338 = v127;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_79_0(v128, v129, v130, v131, v132);
    }

    v133 = platform_nowPlaying_copyDefaultMediaItemAttributes();
    v134 = platform_nowPlaying_copyDefaultPlaybackAttributes();
    v135 = OUTLINED_FUNCTION_6_7();
    v136 = malloc_type_malloc(0xFFFFuLL, 0xEF0211D1uLL);
    v137 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v138 = *(gLogObjects + 248);
    }

    else
    {
      v138 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_21_8();
        *v339 = v137;
        OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v246, v247, v248, v249, v250, v251);
      }
    }

    v120 = v327;
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      v139 = v327[1];
      *buf = 136315650;
      *v338 = "_sendInitialNowPlayingUpdate";
      *&v338[8] = 1024;
      *v339 = 1449;
      *&v339[4] = 2112;
      v340 = v139;
      OUTLINED_FUNCTION_88_2();
      _os_log_impl(v140, v141, OS_LOG_TYPE_DEFAULT, v142, v143, 0x1Cu);
    }

    v144 = OUTLINED_FUNCTION_38_9();
    iAP2MsgInit(v144, v145, v136, 0xFFFF, v146, 0);
    if (CFArrayGetCount(*(v326 + 8)) < 1)
    {
      v147 = 0;
      v148 = 0;
      goto LABEL_129;
    }

    v198 = iAP2MsgAddGroupParam(v135, 0);
    v199 = _addMediaItemAttributesToMessage(v135, v198, v326, v133);
    if (!v135 || !*(v326 + 8) || !_isSubscribingForMediaItemAttribute(v326))
    {
      goto LABEL_200;
    }

    if (*(v326 + 64) == 1)
    {
      TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v327, *(v326 + 65));
      if (TransferEntry)
      {
        v201 = TransferEntry;
        if (*(TransferEntry + 8))
        {
          v301 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v302 = *(gLogObjects + 248);
          }

          else
          {
            theArraya = gNumLogObjects;
            v302 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v338 = v301;
              *&v338[8] = 1024;
              *v339 = theArraya;
              v302 = &_os_log_default;
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v309, v310, v311, v312, v313, v314);
            }
          }

          if (os_log_type_enabled(v302, OS_LOG_TYPE_INFO))
          {
            v315 = *v201;
            v316 = *(v201 + 1);
            v317 = *(v316 + 109);
            v318 = *(v201 + 1);
            v319 = *(v316 + 112);
            LODWORD(v316) = *(v316 + 104);
            *buf = 67110400;
            *v338 = 1682;
            *&v338[4] = 1024;
            *&v338[6] = v315;
            *v339 = 1024;
            *&v339[2] = v317;
            LOWORD(v340) = 1024;
            *(&v340 + 2) = v318;
            HIWORD(v340) = 1024;
            v341 = v319;
            v342 = 1024;
            v343 = v316;
            _os_log_impl(&_mh_execute_header, v302, OS_LOG_TYPE_INFO, "#Artwork %d: cancel previous transfer: id=%d(%d) type=%d(%d) state=%d", buf, 0x26u);
          }

          _cancelPendingTransfer_0();
          v117 = v326;
        }
      }

      *(v117 + 64) = 0;
      v120 = v327;
    }

    v202 = v120[4];
    if (!v202)
    {
LABEL_200:
      v147 = 0;
      v216 = 0;
LABEL_218:
      v148 = v199 + v216;
LABEL_129:
      if (CFArrayGetCount(*(v117 + 16)) >= 1)
      {
        v218 = OUTLINED_FUNCTION_66_2();
        v220 = iAP2MsgAddGroupParam(v218, v219);
        v148 += _addplaybackAttributesToMessage(v135, v220, v117, v134, 0, 1);
      }

      if (v148)
      {
        v149 = iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v120, v135);
        if (!v147 || (v149 & 1) != 0)
        {
          goto LABEL_155;
        }

        iAP2FileTransferCancel(v147, v150, v151, v152, v153, v154, v155, v156);
        iap2_sessionFileTransfer_removeTransferForFeature(v120, 14, v147);
        v157 = v147[8];
        if (v157)
        {
          free(v157);
          v147[8] = 0;
        }
      }

      else
      {
        v158 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_3_5();
          *v339 = v158;
          OUTLINED_FUNCTION_6_26();
          _os_log_error_impl(v282, v283, v284, v285, v286, v287);
        }

        if (OUTLINED_FUNCTION_24())
        {
          *buf = 136315138;
          *v338 = "_sendInitialNowPlayingUpdate";
          OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_79_0(v165, v166, v167, v168, v169);
        }
      }

      v170 = OUTLINED_FUNCTION_66_2();
      iAP2MsgCleanup(v170);
LABEL_155:
      if (v133)
      {
        CFRelease(v133);
      }

      if (v134)
      {
        CFRelease(v134);
      }

      goto LABEL_159;
    }

    v203 = *(v202 + 24);
    if (v203)
    {
      SessionForService = iAP2LinkGetSessionForService(v203, 1);
      if (iAP2FileTransferAllocateBufferID(*(v327[4] + 24), SessionForService, (v117 + 65)))
      {
        *(v117 + 64) = 1;
        v147 = OUTLINED_FUNCTION_54_0();
        if (v147)
        {
          OUTLINED_FUNCTION_40_6();
          OUTLINED_FUNCTION_72_3();
          iAP2FileTransferCreate(v205, v206, v207, v208, v209, v210, v147, v211);
          v212 = OUTLINED_FUNCTION_94();
          iAP2FileTransferTypeData(v212, v213, 0);
          if (iap2_sessionFileTransfer_addTransferForFeature(v327, 14, v147, 0))
          {
            iAP2MsgSetCleanupCB(v135, _artworkFileTransferIDSent);
            v214 = OUTLINED_FUNCTION_51_2();
            *v214 = v327;
            v215 = *(v117 + 65);
            v214[8] = v215;
            *(v214 + 3) = 2;
            v135[6] = v214;
            v216 = iAP2MsgAddU8Param(v135, v198, 26, v215) != 0;
            v217 = *(v117 + 72);
            if (v217)
            {
              CFRelease(v217);
              *(v117 + 72) = 0;
            }
          }

          else
          {
            v294 = gLogObjects;
            v295 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 32)
            {
              v296 = *(gLogObjects + 248);
            }

            else
            {
              v296 = &_os_log_default;
              if (OUTLINED_FUNCTION_19_0())
              {
                *buf = 134218240;
                *v338 = v294;
                *&v338[8] = 1024;
                *v339 = v295;
                OUTLINED_FUNCTION_4_21();
                _os_log_error_impl(v320, v321, v322, v323, v324, v325);
              }
            }

            if (OUTLINED_FUNCTION_19_0())
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v296, OS_LOG_TYPE_ERROR, "#Artwork Failed to add file transfer!", buf, 2u);
            }

            iAP2FileTransferRelease(v147);
            v216 = 0;
            v117 = v326;
          }

          goto LABEL_217;
        }

LABEL_208:
        v216 = 0;
LABEL_217:
        v120 = v327;
        goto LABEL_218;
      }

      v270 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_21_8();
        *v339 = v270;
        OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v303, v304, v305, v306, v307, v308);
      }

      if (OUTLINED_FUNCTION_21())
      {
        *buf = 0;
        OUTLINED_FUNCTION_88_2();
        _os_log_error_impl(v297, v298, OS_LOG_TYPE_ERROR, v299, v300, 2u);
      }
    }

    v147 = 0;
    goto LABEL_208;
  }

  v10 = FirstParam;
  v332 = 0;
  v333 = 0;
  v331 = 0;
  v11 = 0;
  *&v9 = 67109120;
  v330 = v9;
  *&v9 = 134218240;
  v329 = v9;
  *&v9 = 67109376;
  v328 = v9;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(v10);
    v13 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v14 = *(gLogObjects + 248);
    }

    else
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_3_5();
        *v339 = v13;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v98, v99, v100, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v101, 0x12u);
        v14 = &_os_log_default;
      }
    }

    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      OUTLINED_FUNCTION_49_5(v15, v16, v17, v18, v19, v20, v21, v22, v326, v327, v328, *(&v328 + 1), v329, *(&v329 + 1), v330);
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "msgParamID: %d", v97, 8u);
    }

    if (ParamID == 2)
    {
      v68 = OUTLINED_FUNCTION_44_7();
      v70 = iAP2MsgGetFirstParam(v68, v69);
      if (v70)
      {
        NextParam = v70;
        do
        {
          v72 = iAP2MsgGetParamID(NextParam);
          v73 = gLogObjects;
          if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
          {
            *buf = v329;
            *v338 = v73;
            OUTLINED_FUNCTION_18_14();
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v90, v91, v92, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v93, 0x12u);
          }

          v74 = OUTLINED_FUNCTION_94();
          v76 = os_log_type_enabled(v74, v75);
          if (v76)
          {
            OUTLINED_FUNCTION_49_5(v76, v77, v78, v79, v80, v81, v82, v83, v326, v327, v328, *(&v328 + 1), v329, *(&v329 + 1), v330);
            OUTLINED_FUNCTION_33_6();
            _os_log_debug_impl(v86, v87, v88, "msgSubParamID: %d", v89, 8u);
          }

          if (!iAP2MsgIsDataVoid(NextParam))
          {
            v106 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 32)
            {
              v107 = theArray;
            }

            else
            {
              v107 = theArray;
              if (OUTLINED_FUNCTION_13())
              {
                OUTLINED_FUNCTION_3_5();
                *v339 = v106;
                OUTLINED_FUNCTION_6_26();
                _os_log_error_impl(v252, v253, v254, v255, v256, v257);
              }
            }

            if (OUTLINED_FUNCTION_13())
            {
              iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_48_5();
              *&v338[6] = 2;
              *v339 = v109;
              *&v339[2] = v110;
              goto LABEL_199;
            }

            goto LABEL_89;
          }

          v11 |= 1 << v72;
          v84 = OUTLINED_FUNCTION_44_7();
          NextParam = iAP2MsgGetNextParam(v84, v85, NextParam);
        }

        while (NextParam);
      }

      goto LABEL_74;
    }

    if (ParamID != 1)
    {
      if (ParamID)
      {
        v94 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v95 = *(gLogObjects + 248);
        }

        else
        {
          v95 = &_os_log_default;
          if (OUTLINED_FUNCTION_13())
          {
            OUTLINED_FUNCTION_3_5();
            *v339 = v94;
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v102, v103, v104, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v105, 0x12u);
            v95 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_48_5();
          *&v338[6] = v96;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        v23 = OUTLINED_FUNCTION_44_7();
        v25 = iAP2MsgGetFirstParam(v23, v24);
        if (v25)
        {
          v26 = v25;
          while (1)
          {
            v27 = iAP2MsgGetParamID(v26);
            v28 = gLogObjects;
            if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
            {
              *buf = v329;
              *v338 = v28;
              OUTLINED_FUNCTION_18_14();
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v45, v46, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48, 0x12u);
            }

            v29 = OUTLINED_FUNCTION_94();
            v31 = os_log_type_enabled(v29, v30);
            if (v31)
            {
              OUTLINED_FUNCTION_49_5(v31, v32, v33, v34, v35, v36, v37, v38, v326, v327, v328, *(&v328 + 1), v329, *(&v329 + 1), v330);
              OUTLINED_FUNCTION_33_6();
              _os_log_debug_impl(v41, v42, v43, "msgSubParamID: %d", v44, 8u);
            }

            if (!iAP2MsgIsDataVoid(v26))
            {
              break;
            }

            CFArrayAppendValue(Mutable, v27);
            v39 = OUTLINED_FUNCTION_44_7();
            v26 = iAP2MsgGetNextParam(v39, v40, v26);
            if (!v26)
            {
              goto LABEL_74;
            }
          }

          v108 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v107 = theArray;
          }

          else
          {
            v107 = theArray;
            if (OUTLINED_FUNCTION_13())
            {
              OUTLINED_FUNCTION_3_5();
              *v339 = v108;
              OUTLINED_FUNCTION_6_26();
              _os_log_error_impl(v258, v259, v260, v261, v262, v263);
            }
          }

          if (OUTLINED_FUNCTION_13())
          {
            iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_48_5();
            *&v338[6] = 0;
            *v339 = v221;
            *&v339[2] = v222;
            goto LABEL_199;
          }

          goto LABEL_89;
        }
      }

      goto LABEL_74;
    }

    v49 = OUTLINED_FUNCTION_44_7();
    v51 = iAP2MsgGetFirstParam(v49, v50);
    if (v51)
    {
      break;
    }

LABEL_74:
    v10 = iAP2MsgGetNextParam(a2, 0, v10);
    if (!v10)
    {
      goto LABEL_95;
    }
  }

  v52 = v51;
  while (1)
  {
    v53 = iAP2MsgGetParamID(v52);
    v54 = gLogObjects;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
    {
      *buf = v329;
      *v338 = v54;
      OUTLINED_FUNCTION_18_14();
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v64, v65, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v67, 0x12u);
    }

    v55 = OUTLINED_FUNCTION_94();
    if (os_log_type_enabled(v55, v56))
    {
      *buf = v330;
      *v338 = v53;
      OUTLINED_FUNCTION_33_6();
      _os_log_debug_impl(v60, v61, v62, "msgSubParamID: %d", v63, 8u);
    }

    if (v53 == 17)
    {
      v336 = 0;
      DataAsU32 = iAP2MsgGetDataAsU32(v52, &v336);
      if (v336)
      {
        v163 = logObjectForModule_30();
        if (OUTLINED_FUNCTION_16(v163))
        {
          iAP2MsgGetMsgID(a2);
          *buf = 67109632;
          *v338 = 17;
          OUTLINED_FUNCTION_13_14();
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v277, v278, v279, v280, v281, 0x14u);
        }

        v107 = theArray;
        goto LABEL_89;
      }

      HIDWORD(v333) = DataAsU32;
      v331 = 1;
      goto LABEL_54;
    }

    if (v53 == 14)
    {
      break;
    }

    if (v53 == 15)
    {
      if (!iAP2MsgIsDataVoid(v52))
      {
        v160 = logObjectForModule_30();
        v107 = theArray;
        if (!OUTLINED_FUNCTION_16(v160))
        {
          goto LABEL_89;
        }

        iAP2MsgGetMsgID(a2);
        *buf = 67109632;
        *v338 = 15;
        OUTLINED_FUNCTION_13_14();
        goto LABEL_199;
      }

      BYTE4(v332) = 1;
    }

    else if (v53 == 1)
    {
      if (!iAP2MsgIsDataVoid(v52))
      {
        v161 = logObjectForModule_30();
        v107 = theArray;
        if (!OUTLINED_FUNCTION_16(v161))
        {
          goto LABEL_89;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109632;
        *v338 = 1;
        *&v338[4] = 1024;
        *&v338[6] = 1;
        *v339 = 1024;
        *&v339[2] = MsgID;
        goto LABEL_199;
      }

      LOBYTE(v332) = 1;
    }

    else if (!iAP2MsgIsDataVoid(v52))
    {
      v159 = logObjectForModule_30();
      v107 = theArray;
      if (!OUTLINED_FUNCTION_16(v159))
      {
        goto LABEL_89;
      }

      iAP2MsgGetMsgID(a2);
      *buf = 67109632;
      *v338 = v53;
      OUTLINED_FUNCTION_13_14();
      goto LABEL_199;
    }

LABEL_54:
    CFArrayAppendValue(theArray, v53);
    v58 = OUTLINED_FUNCTION_44_7();
    v52 = iAP2MsgGetNextParam(v58, v59, v52);
    if (!v52)
    {
      goto LABEL_74;
    }
  }

  if (iAP2MsgIsDataVoid(v52))
  {
    LOBYTE(v333) = 1;
    goto LABEL_54;
  }

  v164 = logObjectForModule_30();
  v107 = theArray;
  if (!OUTLINED_FUNCTION_16(v164))
  {
    goto LABEL_89;
  }

  iAP2MsgGetMsgID(a2);
  *buf = 67109632;
  *v338 = 14;
  OUTLINED_FUNCTION_13_14();
LABEL_199:
  OUTLINED_FUNCTION_13_0();
  _os_log_error_impl(v223, v224, v225, v226, v227, 0x14u);
LABEL_89:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  return 0;
}

uint64_t _stopNowPlayingUpdatesHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 0xEu);
      if (result)
      {
        v4 = result;
        if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_21();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v5, v6, v7, v8, v9, v10);
        }

        v11 = OUTLINED_FUNCTION_94();
        if (os_log_type_enabled(v11, v12))
        {
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_46_4();
          _os_log_debug_impl(v13, v14, v15, v16, v17, v18);
        }

        _pauseElapsedTimeTimer(v4);
        _removeSubscribersForSubFeatures(v4);
        *v4 = 0;
        *(v4 + 40) = 0;
        *(v4 + 136) = 0;
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        v19 = *(v4 + 8);
        if (v19)
        {
          CFRelease(v19);
          *(v4 + 8) = 0;
        }

        v20 = *(v4 + 16);
        if (v20)
        {
          CFRelease(v20);
          *(v4 + 16) = 0;
        }

        return 1;
      }
    }
  }

  return result;
}

void _pauseElapsedTimeTimer(uint64_t a1)
{
  if (a1)
  {
    dispatch_source_set_timer(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(a1 + 136) = 0;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xEu);
    }
  }
}

void _handleFileTransferIDSent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_32_0(&_mh_execute_header, v19, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v21, v22, v23, v24, v66, v68);
    }

    v7 = OUTLINED_FUNCTION_68_5();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_4();
      _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 0x2Au);
    }

    if (!*(a3 + 2) || *(a2 + 12) == *(a3 + 2))
    {
      v13 = *a2;
      if (*a2)
      {
        if (iap2_feature_getFeature(*a2, 0xEu))
        {
          if (*(a2 + 8) < 0 && *a3 == 1 && *(a2 + 8) == *(a3 + 1))
          {
            TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v13, *(a2 + 8));
            if (TransferEntry)
            {
              v15 = *(TransferEntry + 8);
              if (v15)
              {
                if (*(v15 + 104))
                {
                  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
                  {
                    OUTLINED_FUNCTION_4_6();
                    OUTLINED_FUNCTION_59_1();
                    OUTLINED_FUNCTION_4_21();
                    _os_log_error_impl(v44, v45, v46, v47, v48, v49);
                  }

                  v25 = OUTLINED_FUNCTION_94();
                  if (os_log_type_enabled(v25, v26))
                  {
                    OUTLINED_FUNCTION_58_0();
                    OUTLINED_FUNCTION_33_6();
                    _os_log_debug_impl(v27, v28, v29, v30, v31, 0x22u);
                  }
                }

                else
                {
                  v16 = *(a3 + 8);
                  if (v16)
                  {
                    BytePtr = CFDataGetBytePtr(v16);
                    Length = CFDataGetLength(*(a3 + 8));
                    if (*(a3 + 2) == 6)
                    {
                      BytePtr += 6;
                      Length -= 6;
                    }

                    v67 = Length;
                    v69 = BytePtr;
                  }

                  else
                  {
                    v67 = 0;
                    v69 = 0;
                  }

                  if (gLogObjects && gNumLogObjects >= 32)
                  {
                    v32 = *(gLogObjects + 248);
                  }

                  else
                  {
                    v32 = &_os_log_default;
                    if (OUTLINED_FUNCTION_19_0())
                    {
                      OUTLINED_FUNCTION_4_6();
                      OUTLINED_FUNCTION_48_2();
                      OUTLINED_FUNCTION_4_21();
                      _os_log_error_impl(v50, v51, v52, v53, v54, v55);
                    }
                  }

                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    obfuscatedPointer(v69);
                    OUTLINED_FUNCTION_58_0();
                    OUTLINED_FUNCTION_48_2();
                    _os_log_impl(v33, v34, OS_LOG_TYPE_INFO, v35, v36, 0x32u);
                  }

                  v37 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
                  *v37 = 0;
                  if (gLogObjects && gNumLogObjects >= 32)
                  {
                    v38 = *(gLogObjects + 248);
                  }

                  else
                  {
                    v38 = &_os_log_default;
                    if (OUTLINED_FUNCTION_11())
                    {
                      OUTLINED_FUNCTION_4_6();
                      OUTLINED_FUNCTION_87_4();
                      OUTLINED_FUNCTION_4_21();
                      _os_log_error_impl(v56, v57, v58, v59, v60, v61);
                    }
                  }

                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    OUTLINED_FUNCTION_47_5();
                    OUTLINED_FUNCTION_87_4();
                    _os_log_debug_impl(v40, v41, OS_LOG_TYPE_DEBUG, v42, v43, 0x14u);
                  }

                  if (!iAP2FileTransferStart(v15, v69, v67, v67, a4, v37, 0, 0))
                  {
                    v39 = logObjectForModule_30();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      OUTLINED_FUNCTION_58_0();
                      OUTLINED_FUNCTION_59_1();
                      _os_log_error_impl(v62, v63, OS_LOG_TYPE_ERROR, v64, v65, 0xCu);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void *_artworkFileTransferEndHandler(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (!*result)
    {
      return 0;
    }

    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v11, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13, v14, v15, v16);
    }

    v4 = OUTLINED_FUNCTION_9_3();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 8u);
    }

    v10 = *(*v2 + 176);
    if (v10)
    {
      result = *(v10 + 16);
      if (result)
      {
        result = iap2_feature_getFeature(result, 0xEu);
        if (result)
        {
          return _handleFileTransferEnd(@"#Artwork", v2, (result + 8), a2);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _handleFileTransferEnd(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  if (!a3 || !*a2)
  {
    return v5;
  }

  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_4_21();
    _os_log_error_impl(v29, v30, v31, v32, v33, v34);
  }

  v8 = OUTLINED_FUNCTION_66_2();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_48_1();
    _os_log_impl(v10, v11, OS_LOG_TYPE_INFO, v12, v13, 0x34u);
  }

  v14 = *(a2 + 104);
  if ((v14 - 6) >= 2)
  {
    if (v14 == 5)
    {
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v61, v62, v63, v64, v65, v66);
      }

      v21 = OUTLINED_FUNCTION_76_5();
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_101_1(v23, v24, v25, v26, v27);
      }

      return 0;
    }

    if (v14 != 4)
    {
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v67, v68, v69, v70, v71, v72);
      }

      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v43, v44, v45, v46, v47, v48);
      }

      return 0;
    }
  }

  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  v15 = *(*a2 + 176);
  if (!v15)
  {
    return 0;
  }

  v16 = *(v15 + 16);
  if (!v16)
  {
    return 0;
  }

  v5 = iap2_sessionFileTransfer_removeTransferForFeature(v16, 14, a2);
  if (!v5)
  {
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v55, v56, v57, v58, v59, v60);
    }

    if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_48_2();
      _os_log_error_impl(v39, v40, OS_LOG_TYPE_ERROR, v41, v42, 0xCu);
    }
  }

  v17 = *(a2 + 109);
  v18 = *(a2 + 64);
  if (v18 == a4)
  {
    if (a4)
    {
      free(v18);
      *(a2 + 64) = 0;
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v19 = *(gLogObjects + 248);
    }

    else
    {
      v19 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v49, v50, v51, v52, v53, v54);
      }
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_48_2();
      _os_log_fault_impl(v35, v36, OS_LOG_TYPE_FAULT, v37, v38, 0x3Au);
    }
  }

  if (*a3 == 1 && v17 == *(a3 + 1))
  {
    v20 = *(a3 + 8);
    if (v20)
    {
      CFRelease(v20);
      *(a3 + 8) = 0;
    }

    *(a3 + 2) = 0;
    *a3 = 0;
  }

  return v5;
}

void *_playbackQueueFileTransferEndHandler(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (!*result)
    {
      return 0;
    }

    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v11, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13, v14, v15, v16);
    }

    v4 = OUTLINED_FUNCTION_76_5();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 8u);
    }

    v10 = *(*v2 + 176);
    if (v10)
    {
      result = *(v10 + 16);
      if (result)
      {
        result = iap2_feature_getFeature(result, 0xEu);
        if (result)
        {
          return _handleFileTransferEnd(@"#PlaybackQueueList", v2, (result + 15), a2);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void logObjectForModule_cold_1_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void iAP2FileTransferDelete_cold_2()
{
  OUTLINED_FUNCTION_1_28(__stack_chk_guard);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x54u);
}

void iAP2FileTransferCleanup_cold_2()
{
  OUTLINED_FUNCTION_1_28(__stack_chk_guard);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x54u);
}

void iAP2FileTransferSuccess_cold_2()
{
  OUTLINED_FUNCTION_1_28(__stack_chk_guard);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x54u);
}

void iAP2FileTransferSuccess_cold_4()
{
  OUTLINED_FUNCTION_5_30(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void iAP2FileTransferResume_cold_2()
{
  OUTLINED_FUNCTION_1_28(__stack_chk_guard);
  OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x44u);
}

void iAP2FileTransferResume_cold_4()
{
  OUTLINED_FUNCTION_5_30(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void iAP2FileTransferResume_cold_6()
{
  OUTLINED_FUNCTION_5_30(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void iAP2FileTransferCancel_cold_2()
{
  OUTLINED_FUNCTION_1_28(__stack_chk_guard);
  OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x44u);
}

void iAP2FileTransferCancel_cold_5()
{
  OUTLINED_FUNCTION_5_30(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void platform_usb_setUSBHostHIDInterface_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _getUSBHostPluginInstance_cold_2(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformUSBHostPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#USB] Could not find plugin conforming to %@!", &v3, 0xCu);
}

void platform_usb_clearUSBHostHIDInterfaces_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void platform_usb_configureUSBHostNCMInterface_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void platform_usb_setNeedOutZlp_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t genericMFi_appLaunch_create(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (genericMFi_endpoint_getFeature(result, 2u))
    {
      return 0;
    }

    result = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
    if (result)
    {
      v2 = result;
      if (genericMFi_endpoint_setFeature(v1, 2u, result))
      {
        return 1;
      }

      free(v2);
      return 0;
    }
  }

  return result;
}

uint64_t genericMFi_appLaunch_requestAppLaunch(uint64_t result, const __CFString *a2, int a3)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    v30 = logObjectForModule_33();
    result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    v42 = "genericMFi_appLaunch_requestAppLaunch";
    v31 = "%s: Missing appBundleID - ignoring request";
    v32 = v30;
    v33 = 12;
    goto LABEL_52;
  }

  v5 = result;
  if ((genericMFi_endpoint_certCapsValidForAppMatchLaunch(result) & 1) == 0)
  {
    v34 = logObjectForModule_33();
    result = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_1_30();
    v44 = a2;
    v31 = "%s: Certificate doesn't allow AppLaunch, Skip!!! appBundleID %@";
    v32 = v34;
    v33 = 22;
LABEL_52:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    return 0;
  }

  result = genericMFi_endpoint_getFeature(v5, 2u);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v9 = *(gLogObjects + 488);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v42 = v7;
      v43 = 1024;
      LODWORD(v44) = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_30();
    v44 = a2;
    v45 = 1024;
    LODWORD(v46) = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: bundleID %@, launchMethod %d", buf, 0x1Cu);
  }

  v10 = SBSCopyFrontmostApplicationDisplayIdentifier();
  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v13 = *(gLogObjects + 488);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v42 = v11;
      v43 = 1024;
      LODWORD(v44) = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_30();
    v44 = v10;
    v45 = v14;
    v46 = a2;
    v47 = 1024;
    v48 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: frontmostApp %@, bundleID %@, launchMethod %d", buf, 0x26u);
  }

  if (v10 && CFStringCompare(a2, v10, 0) == kCFCompareEqualTo)
  {
    v16 = gLogObjects;
    v17 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v18 = *(gLogObjects + 488);
    }

    else
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v42 = v16;
        v43 = 1024;
        LODWORD(v44) = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }
    }

    a3 = 1;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_1_30();
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: Application already in foreground (%@), launching without dialog...", buf, 0x16u);
    }

    v15 = 1;
  }

  else if (a3)
  {
    v15 = 0;
  }

  else
  {
    if (*(v6 + 8) == 1)
    {
      v35 = logObjectForModule_33();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = *(v5 + 8);
        *buf = 136315394;
        v42 = "genericMFi_appLaunch_requestAppLaunch";
        v43 = 2112;
        v44 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s: App Launch dialog is already active, ignoring app launch request for endpoint %@...", buf, 0x16u);
      }

      goto LABEL_44;
    }

    a3 = 0;
    v15 = 0;
    *(v6 + 8) = 1;
  }

  v19 = platform_externalAccessory_copyEAProtocolsForEndpointUUID(*(v5 + 8));
  if (v19)
  {
    v20 = v19;
    Count = CFArrayGetCount(v19);
    if (Count < 1)
    {
      v24 = 0;
    }

    else
    {
      v22 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
      v24 = 1;
      if (CFStringCompare(ValueAtIndex, @"com.apple.mfi.launch_notify_previous", 1uLL))
      {
        v25 = 1;
        do
        {
          v26 = v25;
          if (v22 == v25)
          {
            break;
          }

          v27 = CFArrayGetValueAtIndex(v20, v25);
          v28 = CFStringCompare(v27, @"com.apple.mfi.launch_notify_previous", 1uLL);
          v25 = v26 + 1;
        }

        while (v28);
        v24 = v26 < v22;
      }
    }

    CFRelease(v20);
  }

  else
  {
    v24 = 0;
  }

  CFRetain(a2);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __genericMFi_appLaunch_requestAppLaunch_block_invoke;
  block[3] = &__block_descriptor_tmp_6_4;
  v38 = a3;
  v39 = v15;
  v40 = v24;
  block[4] = a2;
  block[5] = v5;
  dispatch_async(global_queue, block);
LABEL_44:
  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

CFAbsoluteTime *configStream_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040239C79EBuLL);
    if (v2)
    {
      v3 = dispatch_queue_create("ConfigStreamQ", 0);
      *(v2 + 1) = v3;
      if (v3)
      {
        *v2 = a1;
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 57)
        {
          v6 = *(gLogObjects + 448);
        }

        else
        {
          v6 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            *v19 = 134218240;
            *&v19[4] = v4;
            OUTLINED_FUNCTION_3();
            v20 = v5;
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v14, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v19);
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 0;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "configStream initSession: ", v19, 2u);
        }

        v2[3] = CFAbsoluteTimeGetCurrent();
        *(v2 + 4) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        *(v2 + 16) = 0;
        if ((!gLogObjects || gNumLogObjects < 57) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v16, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v19);
        }

        if (OUTLINED_FUNCTION_93())
        {
          *v19 = 0;
          OUTLINED_FUNCTION_16_13(&_mh_execute_header, v7, v8, "configStream initSession: ", v9, v10, v11, v12, *v19);
        }
      }
    }
  }

  else
  {
    v18 = logObjectForModule_34();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v19, 2u);
    }

    return 0;
  }

  return v2;
}

uint64_t configStream_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      if ((!gLogObjects || gNumLogObjects < 57) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12);
      }

      if (OUTLINED_FUNCTION_93())
      {
        *v12 = 0;
        OUTLINED_FUNCTION_16_13(&_mh_execute_header, v3, v4, "configStream cleanupSession: ", v5, v6, v7, v8, *v12);
      }

      v9 = v2[4];
      if (v9)
      {
        CFRelease(v9);
        v2[4] = 0;
      }

      dispatch_sync(*(*v1 + 1), &__block_literal_global_31);
      dispatch_release(*(*v1 + 1));
      *(*v1 + 1) = 0;
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

uint64_t configStream_endpoint_processIncomingData(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_86_0();
    result = 0;
    if (v3)
    {
      if (*v2)
      {
        CFRetain(v1);
        v4 = v2[1];
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 0x40000000;
        v5[2] = __configStream_endpoint_processIncomingData_block_invoke;
        v5[3] = &__block_descriptor_tmp_2_2;
        v5[4] = v2;
        v5[5] = v1;
        dispatch_async(v4, v5);
        return 1;
      }
    }
  }

  return result;
}

void __configStream_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v6 = *(gLogObjects + 448);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v82 = v4;
      OUTLINED_FUNCTION_17_3();
      *&v82[10] = v5;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v17, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (v3 && *v3)
    {
      v16 = *(*v3 + 24);
    }

    else
    {
      v16 = 18;
    }

    *buf = 67109378;
    *v82 = v16;
    *&v82[4] = 2112;
    *&v82[6] = v2;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "configStream processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d dataIn %@", buf, 0x12u);
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  else if (!v3)
  {
    goto LABEL_26;
  }

  if (!v2)
  {
    goto LABEL_26;
  }

  v7 = *v3;
  if (!*v3)
  {
    goto LABEL_26;
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_26;
  }

  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  if (!BytePtr || Length < 0xC || Length < *(BytePtr + 3) + 12)
  {
    goto LABEL_26;
  }

  v11 = *BytePtr;
  if (!*BytePtr)
  {
    v3[16] = 1;
    platform_connectionInfo_configStreamCategoryListReady(*(v7 + 16), *v8);
    goto LABEL_26;
  }

  if (v11 == 5)
  {
    cf = _configStream_endpoint_copyAndRemoveFirstClientForRequest(v3, *(BytePtr + 1), BytePtr[4]);
    if (!cf)
    {
      v51 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v13 = *(gLogObjects + 448);
      }

      else
      {
        v13 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *buf = 134218240;
          *v82 = v51;
          OUTLINED_FUNCTION_6_29();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_93())
      {
        goto LABEL_26;
      }

      goto LABEL_106;
    }

    v71 = v8;
    if (*(BytePtr + 3))
    {
      v78 = v3;
      if (*(BytePtr + 6) >= 9u)
      {
        v70 = logObjectForModule_34();
        if (OUTLINED_FUNCTION_80(v70))
        {
          OUTLINED_FUNCTION_18_15();
          OUTLINED_FUNCTION_23_8();
          OUTLINED_FUNCTION_17_3();
          *&v82[10] = 8;
          _os_log_impl(&_mh_execute_header, BytePtr, OS_LOG_TYPE_DEFAULT, "configStream processIncomingData for endpoint: %@, contained more than max number of %d categories", buf, 0x12u);
        }

        v69 = cf;
        goto LABEL_114;
      }

      theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (*(BytePtr + 6))
      {
        v23 = 0;
        v24 = (BytePtr + 18);
        v73 = v7;
        while (1)
        {
          v77 = v23;
          v25 = &BytePtr[20 * v23 + 14];
          v80 = *v25;
          v26 = *(v25 + 1);
          if (v26 >= 0x11)
          {
            break;
          }

          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, *(v25 + 1), &kCFTypeArrayCallBacks);
          v76 = v24;
          if (v26)
          {
            while (1)
            {
              v35 = *v24++;
              valuePtr = v35;
              v36 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
              CFArrayAppendValue(Mutable, v36);
              v37 = gLogObjects;
              v38 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 57)
              {
                v39 = *(gLogObjects + 448);
              }

              else
              {
                v39 = &_os_log_default;
                if (OUTLINED_FUNCTION_27())
                {
                  *buf = 134218240;
                  *v82 = v37;
                  OUTLINED_FUNCTION_17_3();
                  *&v82[10] = v38;
                  OUTLINED_FUNCTION_70_4();
                  _os_log_error_impl(v31, v32, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34, 0x12u);
                  v39 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                break;
              }

              if (v36)
              {
                goto LABEL_52;
              }

LABEL_53:
              if (!--v26)
              {
                goto LABEL_54;
              }
            }

            OUTLINED_FUNCTION_18_15();
            OUTLINED_FUNCTION_23_8();
            *&v82[8] = 2112;
            OUTLINED_FUNCTION_29_7();
            WORD2(v83[0]) = v28;
            *(v83 + 6) = v29;
            WORD1(v83[1]) = v30;
            *(&v83[1] + 4) = Mutable;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "configStream processIncomingData for endpoint: %@, clientUID %@, creating property list for categoryID 0x%x, propertyID %u, properties %@", buf, 0x2Cu);
            if (!v36)
            {
              goto LABEL_53;
            }

LABEL_52:
            CFRelease(v36);
            goto LABEL_53;
          }

LABEL_54:
          v40 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v80);
          CFDictionarySetValue(theDict, v40, Mutable);
          v41 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 57)
          {
            v42 = *(gLogObjects + 448);
          }

          else
          {
            v42 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              *buf = 134218240;
              *v82 = v41;
              OUTLINED_FUNCTION_6_29();
              OUTLINED_FUNCTION_70_4();
              _os_log_error_impl(v44, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, 0x12u);
              v42 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_18_15();
            OUTLINED_FUNCTION_23_8();
            *&v82[8] = 2112;
            OUTLINED_FUNCTION_29_7();
            WORD2(v83[0]) = v43;
            *(v83 + 6) = theDict;
            _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "configStream processIncomingData for endpoint: %@, clientUID %@, creating category list, categoryID 0x%x, categories %@", buf, 0x26u);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          v3 = v78;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v23 = v77 + 1;
          v24 = v76 + 20;
          v7 = v73;
          if (v77 + 1 >= *(BytePtr + 6))
          {
            goto LABEL_90;
          }
        }

        v66 = logObjectForModule_34();
        if (OUTLINED_FUNCTION_80(v66))
        {
          OUTLINED_FUNCTION_18_15();
          OUTLINED_FUNCTION_23_8();
          OUTLINED_FUNCTION_17_3();
          *&v82[10] = v67;
          *&v82[14] = v68;
          *&v82[16] = 16;
          _os_log_impl(&_mh_execute_header, BytePtr, OS_LOG_TYPE_DEFAULT, "configStream processIncomingData for endpoint: %@, property list for categoryID 0x%x contained more than max number of %d properties", buf, 0x18u);
        }

        CFRelease(cf);
        v69 = theDict;
        if (!theDict)
        {
          goto LABEL_26;
        }

LABEL_114:
        CFRelease(v69);
        goto LABEL_26;
      }
    }

    else
    {
      theDict = 0;
    }

LABEL_90:
    v57 = v7;
    v58 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v59 = *(gLogObjects + 448);
    }

    else
    {
      v59 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        *buf = 134218240;
        *v82 = v58;
        OUTLINED_FUNCTION_6_29();
        OUTLINED_FUNCTION_24_2(&_mh_execute_header, v60, v61, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_23_8();
      *&v82[8] = 2112;
      *&v82[10] = cf;
      *&v82[18] = 2112;
      v83[0] = theDict;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "configStream processIncomingData for endpoint: %@, call configStreamPropertyResponse: clientUID %@, categories %@", buf, 0x20u);
    }

    platform_connectionInfo_configStreamCategoriesResponse(cf, *(v57 + 16), *v71, theDict, *(BytePtr + 2) == 0);
    if (theDict)
    {
      CFRelease(theDict);
    }

    if (CFArrayGetCount(*(v3 + 4)) >= 1)
    {
      _configStream_endpoint_sendNextClientRequest(v3);
    }

    v56 = cf;
    goto LABEL_102;
  }

  if (v11 == 6)
  {
    v19 = _configStream_endpoint_copyAndRemoveFirstClientForRequest(v3, *(BytePtr + 1), BytePtr[4]);
    if (v19)
    {
      v20 = v19;
      v21 = v7;
      if (*(BytePtr + 3))
      {
        v22 = CFDataCreate(kCFAllocatorDefault, BytePtr + 12, *(BytePtr + 3));
      }

      else
      {
        v22 = 0;
      }

      v72 = v1;
      v52 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v53 = *(gLogObjects + 448);
      }

      else
      {
        v53 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v82 = v52;
          OUTLINED_FUNCTION_6_29();
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_23_8();
        *&v82[8] = 2112;
        *&v82[10] = v20;
        *&v82[18] = 1024;
        LODWORD(v83[0]) = v54;
        WORD2(v83[0]) = 1024;
        *(v83 + 6) = v55;
        WORD1(v83[1]) = 2112;
        *(&v83[1] + 4) = v22;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "configStream processIncomingData for endpoint: %@, call configStreamPropertyResponse: clientUID %@, categoryID 0x%x, propertyID %u, propertyValue %@", buf, 0x2Cu);
      }

      platform_connectionInfo_configStreamPropertyResponse(v20, *(v21 + 16), *v8, *(BytePtr + 1), BytePtr[4], v22, *(BytePtr + 2) == 0);
      if (CFArrayGetCount(*(v3 + 4)) >= 1)
      {
        _configStream_endpoint_sendNextClientRequest(v3);
      }

      CFRelease(v20);
      v1 = v72;
      if (!v22)
      {
        goto LABEL_26;
      }

      v56 = v22;
LABEL_102:
      CFRelease(v56);
      goto LABEL_26;
    }

    v50 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v13 = *(gLogObjects + 448);
    }

    else
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        *v82 = v50;
        OUTLINED_FUNCTION_6_29();
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_93())
    {
      goto LABEL_26;
    }

LABEL_106:
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_1_31();
    v14 = "configStream processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d, No client found, messageID %x, categoryID 0x%x, propertyID %u, paramLen %u";
    goto LABEL_25;
  }

  v12 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v13 = *(gLogObjects + 448);
  }

  else
  {
    v13 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      *v82 = v12;
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_93())
  {
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_1_31();
    v14 = "configStream processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d, Unknown messageID %x, categoryID 0x%x, propertyID %u, paramLen %u";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
  }

LABEL_26:
  v15 = *(v1 + 40);
  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t *configStream_endpoint_sendOutgoingData(uint64_t *a1, __int16 a2, __int16 a3, __int16 a4, const UInt8 *a5, unsigned int a6)
{
  v6 = a1;
  if (a1)
  {
    *bytes = a2;
    v13 = a3;
    v14 = a4;
    v15 = a6;
    v16 = 0;
    v9 = a6;
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, a6 + 12);
    CFDataAppendBytes(Mutable, bytes, 12);
    if (a5 && a6)
    {
      CFDataAppendBytes(Mutable, a5, v9);
    }

    v6 = acc_endpoint_sendOutgoingData(*v6, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v6;
}

void configStream_getCategories()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_86_0();
  if (!v2 || !*v1)
  {
    goto LABEL_27;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    v28 = logObjectForModule_34();
    if (OUTLINED_FUNCTION_80(v28))
    {
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_17_16();
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v29, v30, v31, v32, v33, 0x1Cu);
    }

    goto LABEL_27;
  }

  if (!v0)
  {
LABEL_27:
    LODWORD(v3) = 0;
    goto LABEL_15;
  }

  v3 = *v0;
  if (*v0)
  {
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v4 = *(gLogObjects + 448);
    }

    else
    {
      v4 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v7, v8, v9, v10);
        v3 = *v0;
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_19_12();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0x16u);
      v3 = *v0;
    }

    v15 = OUTLINED_FUNCTION_16_15();
    if (_configStream_endpoint_addClientRequest(v15, v3, v16, v17))
    {
      LODWORD(v3) = configStream_endpoint_sendOutgoingData(v1, 1, 0, 0, 0, 0);
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

LABEL_15:
  if ((!gLogObjects || gNumLogObjects < 57) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v22, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v24, v25, v26, v27);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 0x1Cu);
  }

  if (v3)
  {
    platform_configStream_deleteParams(v0);
  }

  OUTLINED_FUNCTION_56();
}

uint64_t _configStream_endpoint_addClientRequest(uint64_t a1, uint64_t a2, int a3, int a4)
{
  OUTLINED_FUNCTION_86_0();
  valuePtr = v8;
  v33 = v9;
  v10 = gLogObjects;
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v12 = *(gLogObjects + 448);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      *buf = 134218240;
      v36 = v10;
      v37 = 1024;
      v38 = v11;
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v26 = *v5;
      if (*v5)
      {
        v26 = *(v26 + 2);
      }
    }

    else
    {
      v26 = 0;
    }

    *buf = 138413058;
    v36 = v26;
    OUTLINED_FUNCTION_28_9();
    v39 = a3;
    v40 = v32;
    v41 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "configStream addClientRequest for endpoint: %@, client %@, categoryID 0x%x, propertyID %u", buf, 0x22u);
  }

  v15 = 0;
  if (v5 && v4 && v5[4])
  {
    keys[0] = @"ClientUID";
    keys[1] = @"CategoryID";
    keys[2] = @"PropertyID";
    values[0] = CFStringCreateCopy(kCFAllocatorDefault, v4);
    values[1] = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    values[2] = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v33);
    v16 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFArrayAppendValue(v5[4], v16);
    if (v16)
    {
      CFRelease(v16);
    }

    v15 = 1;
  }

  v17 = gLogObjects;
  v18 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v19 = *(gLogObjects + 448);
  }

  else
  {
    v19 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v36 = v17;
      v37 = 1024;
      v38 = v18;
      OUTLINED_FUNCTION_70_4();
      _os_log_error_impl(v27, v28, v29, v30, v31, 0x12u);
    }
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    if (v5)
    {
      if (*v5)
      {
        v20 = *(*v5 + 2);
      }

      else
      {
        v20 = 0;
      }

      v21 = valuePtr;
      v22 = v33;
      CFArrayGetCount(v5[4]);
    }

    else
    {
      v20 = 0;
      v21 = valuePtr;
      v22 = v33;
    }

    *buf = 138413570;
    v36 = v20;
    OUTLINED_FUNCTION_28_9();
    v39 = v21;
    v40 = v23;
    v41 = v22;
    v42 = v23;
    v43 = v15;
    v44 = 2048;
    v45 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "configStream addClientRequest for endpoint: %@, client %@, categoryID 0x%x, propertyID %u, success %d, requestList count %ld", buf, 0x32u);
  }

  return v15;
}

void configStream_getCachedPropertyValue()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_86_0();
  if (!v2 || !*v1)
  {
    goto LABEL_27;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    v31 = logObjectForModule_34();
    if (OUTLINED_FUNCTION_80(v31))
    {
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_17_16();
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v32, v33, v34, v35, v36, 0x1Cu);
    }

    goto LABEL_27;
  }

  if (!v0)
  {
LABEL_27:
    LODWORD(v3) = 0;
    goto LABEL_15;
  }

  v3 = *v0;
  if (*v0)
  {
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v4 = *(gLogObjects + 448);
    }

    else
    {
      v4 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v7, v8, v9, v10);
        v3 = *v0;
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_19_12();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0x16u);
      v3 = *v0;
    }

    v15 = OUTLINED_FUNCTION_16_15();
    if (_configStream_endpoint_addClientRequest(v15, v3, v16, v17))
    {
      v22 = OUTLINED_FUNCTION_16_15();
      LODWORD(v3) = configStream_endpoint_sendOutgoingData(v22, 2, v23, v24, 0, 0);
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

LABEL_15:
  if ((!gLogObjects || gNumLogObjects < 57) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 0x1Cu);
  }

  if (v3)
  {
    platform_configStream_deleteParams(v0);
  }

  OUTLINED_FUNCTION_56();
}

void configStream_requestGetProperty()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_86_0();
  if (!v2 || !*v1)
  {
    goto LABEL_27;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    v28 = logObjectForModule_34();
    if (OUTLINED_FUNCTION_80(v28))
    {
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_17_16();
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v29, v30, v31, v32, v33, 0x1Cu);
    }

    goto LABEL_27;
  }

  if (!v0)
  {
LABEL_27:
    LODWORD(v3) = 0;
    goto LABEL_15;
  }

  v3 = *v0;
  if (*v0)
  {
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v4 = *(gLogObjects + 448);
    }

    else
    {
      v4 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7_22();
        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v7, v8, v9, v10);
        v3 = *v0;
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_19_12();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0x16u);
      v3 = *v0;
    }

    v15 = OUTLINED_FUNCTION_16_15();
    if (_configStream_endpoint_addClientRequest(v15, v3, v16, v17))
    {
      LODWORD(v3) = _configStream_endpoint_sendNextClientRequest(v1);
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

LABEL_15:
  if ((!gLogObjects || gNumLogObjects < 57) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v22, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v24, v25, v26, v27);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 0x28u);
  }

  if (v3)
  {
    platform_configStream_deleteParams(v0);
  }

  OUTLINED_FUNCTION_56();
}

uint64_t *_configStream_endpoint_sendNextClientRequest(CFArrayRef *a1)
{
  if (!a1 || !*a1)
  {
    goto LABEL_38;
  }

  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v4 = *(gLogObjects + 448);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v36 = v2;
      v37 = 1024;
      *v38 = v3;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(*a1 + 2);
    *buf = 138412290;
    v36 = v16;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "configStream sendNextClientRequest for endpoint: %@", buf, 0xCu);
  }

  v7 = a1[4];
  if (!v7)
  {
    goto LABEL_38;
  }

  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v9 = *(gLogObjects + 448);
  }

  else
  {
    v9 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_3_31();
      *v38 = v8;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      v7 = a1[4];
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(*a1 + 2);
    Count = CFArrayGetCount(v7);
    *buf = 138412546;
    v36 = v17;
    v37 = 2048;
    *v38 = Count;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "configStream sendNextClientRequest for endpoint: %@, requestList count %ld", buf, 0x16u);
    v7 = a1[4];
  }

  if (CFArrayGetCount(v7) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[4], 0);
    v11 = ValueAtIndex;
    if (ValueAtIndex)
    {
      valuePtr = -21846;
      v33 = -86;
      Value = CFDictionaryGetValue(ValueAtIndex, @"CategoryID");
      v20 = CFDictionaryGetValue(v11, @"PropertyID");
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      CFNumberGetValue(v20, kCFNumberIntType, &v33);
      v21 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v22 = *(gLogObjects + 448);
      }

      else
      {
        v22 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_3_31();
          *v38 = v21;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v29 = valuePtr;
        v30 = v33;
        CFDictionaryGetValue(v11, @"ClientUID");
        OUTLINED_FUNCTION_3_31();
        *v38 = v29;
        *&v38[4] = v31;
        *&v38[6] = v30;
        *&v38[10] = 2112;
        *&v38[12] = v32;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "configStream sendNextClientRequest for endpoint: %@, send RequestGetProperty: categoryID 0x%x, propertyID %u, client %@", buf, 0x22u);
      }

      v11 = configStream_endpoint_sendOutgoingData(a1, 3, valuePtr, v33, 0, 0);
    }
  }

  else
  {
LABEL_38:
    v11 = 0;
  }

  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v13 = *(gLogObjects + 448);
  }

  else
  {
    v13 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_3_31();
      *v38 = v12;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v23, v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      CFArrayGetCount(a1[4]);
    }

    OUTLINED_FUNCTION_3_31();
    *v38 = v11;
    *&v38[4] = 2048;
    *&v38[6] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "configStream sendNextClientRequest for endpoint: %@, success %d, requestList count %ld", buf, 0x1Cu);
  }

  return v11;
}

uint64_t *configStream_setPropertyValue()
{
  OUTLINED_FUNCTION_86_0();
  if (!v2 || !*v1)
  {
    goto LABEL_25;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    v34 = logObjectForModule_34();
    if (OUTLINED_FUNCTION_80(v34))
    {
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_17_16();
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v35, v36, v37, v38, v39, 0x1Cu);
    }

    goto LABEL_25;
  }

  if (!v0)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_14;
  }

  if (*v0)
  {
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v3 = *(gLogObjects + 448);
    }

    else
    {
      v3 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v40);
      }
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_19_12();
      OUTLINED_FUNCTION_9_0();
      v41 = v6;
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }

    v12 = *(v0 + 8);
    v13 = *(v0 + 10);
    BytePtr = CFDataGetBytePtr(*(v0 + 16));
    Length = CFDataGetLength(*(v0 + 16));
    v16 = configStream_endpoint_sendOutgoingData(v1, 4, v12, v13, BytePtr, Length);
  }

  else
  {
    v16 = 0;
  }

LABEL_14:
  v17 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 57) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_7_22();
    LODWORD(v41) = v17;
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v28, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v30, v31, v32, v33);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_9_0();
    v41 = v18;
    v42 = 1024;
    v43 = v19;
    v44 = 1024;
    v45 = v20;
    v46 = v21;
    v47 = v22;
    v48 = 1024;
    v49 = v16;
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v23, v24, OS_LOG_TYPE_INFO, v25, v26, 0x32u);
  }

  if (v16)
  {
    platform_configStream_deleteParams(v0);
  }

  return v16;
}

const void *_configStream_endpoint_copyAndRemoveFirstClientForRequest(uint64_t *a1, int a2, int a3)
{
  v4 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v5 = *(gLogObjects + 448);
  }

  else
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_5_24();
      *v46 = v4;
      OUTLINED_FUNCTION_70_4();
      _os_log_error_impl(v24, v25, v26, v27, v28, 0x12u);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      v23 = *a1;
      if (*a1)
      {
        v23 = *(v23 + 16);
      }
    }

    else
    {
      v23 = 0;
    }

    *buf = 138412802;
    v44 = v23;
    v45 = 1024;
    OUTLINED_FUNCTION_27_7();
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "configStream copyAndRemoveFirstClientForRequest for endpoint: %@, categoryID 0x%x, propertyID %u", buf, 0x18u);
  }

  if (!a1)
  {
    goto LABEL_45;
  }

  v6 = a1[4];
  if (!v6)
  {
    goto LABEL_45;
  }

  if (CFArrayGetCount(a1[4]) < 1)
  {
    LODWORD(v7) = -1;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        valuePtr = -21846;
        v41 = -86;
        Value = CFDictionaryGetValue(ValueAtIndex, @"ClientUID");
        v11 = CFDictionaryGetValue(v9, @"CategoryID");
        v12 = CFDictionaryGetValue(v9, @"PropertyID");
        CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
        CFNumberGetValue(v12, kCFNumberIntType, &v41);
        v13 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 57)
        {
          v14 = *(gLogObjects + 448);
        }

        else
        {
          v14 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_5_24();
            *v46 = v13;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v14 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = *a1;
          if (*a1)
          {
            v16 = *(v16 + 16);
          }

          *buf = 138413826;
          v44 = v16;
          v45 = 2112;
          *v46 = Value;
          *&v46[8] = 2112;
          *v47 = 0;
          *&v47[8] = 1024;
          *&v47[10] = valuePtr;
          *&v47[14] = 1024;
          *&v47[16] = a2;
          v48 = 1024;
          v49 = v41;
          v50 = 1024;
          v51 = a3;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "configStream findClientRequest for endpoint: %@, clientUID %@ ?= %@, categoryID 0x%x ?= %u, propertyID %u ?= %u", buf, 0x38u);
        }

        if (valuePtr == a2 && v41 == a3)
        {
          break;
        }
      }

      if (CFArrayGetCount(v6) <= ++v7)
      {
        LODWORD(v7) = -1;
        break;
      }
    }
  }

  v17 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v18 = *(gLogObjects + 448);
  }

  else
  {
    v18 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_24();
      *v46 = v17;
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    CFArrayGetCount(a1[4]);
    OUTLINED_FUNCTION_5_24();
    *v46 = a2;
    *&v46[4] = v31;
    *&v46[6] = a3;
    *v47 = v31;
    *&v47[2] = v7;
    *&v47[6] = 2048;
    *&v47[8] = v32;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "configStream findClientRequest for endpoint: %@, categoryID 0x%x, propertyID %u, foundIndex %d, requestList count %ld", buf, 0x28u);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
LABEL_45:
    v22 = 0;
    goto LABEL_46;
  }

  v19 = a1[4];
  v20 = v7;
  v21 = CFArrayGetValueAtIndex(v19, v7);
  if (!v21)
  {
    goto LABEL_45;
  }

  v22 = CFDictionaryGetValue(v21, @"ClientUID");
  CFRetain(v22);
  CFArrayRemoveValueAtIndex(v19, v20);
LABEL_46:
  v33 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v34 = *(gLogObjects + 448);
  }

  else
  {
    v34 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_24();
      *v46 = v33;
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      CFArrayGetCount(a1[4]);
    }

    OUTLINED_FUNCTION_5_24();
    OUTLINED_FUNCTION_27_7();
    *v47 = 2112;
    *&v47[2] = v22;
    *&v47[10] = 2048;
    *&v47[12] = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "configStream copyAndRemoveFirstClientForRequest for endpoint: %@, categoryID 0x%x, propertyID %u, client %@, requestList count %ld", buf, 0x2Cu);
  }

  return v22;
}

void logObjectForModule_cold_1_6(uint64_t a1)
{
  v2 = 134218240;
  v3 = a1;
  OUTLINED_FUNCTION_3();
  v4 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v2, 0x12u);
}

void qiAuth_protocol_start_cold_3()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_initMsg_GET_DIGESTS_cold_2()
{
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_timeoutForRequest_cold_2(uint64_t a1, int a2, NSObject *a3)
{
  v5 = *(a1 + 12);
  qiAuth_protocol_msgTypeString(a2);
  *v8 = 136316162;
  OUTLINED_FUNCTION_17_8();
  *&v8[7] = 2616;
  v8[9] = v6;
  v9 = v5;
  v10 = v6;
  v11 = a2;
  v12 = 2080;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s:%d TX: Unexpected MsgType!!! ver %d, msgType %d(%s)", v8, 0x28u);
}

void _qiAuth_protocol_timeoutCallback_cold_4()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_timeoutCallback_cold_6()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_processIncomingData_cold_2()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x34u);
}

void qiAuth_protocol_processIncomingData_cold_4(int a1, NSObject *a2)
{
  qiAuth_protocol_msgTypeString(a1);
  *v6 = 136315906;
  OUTLINED_FUNCTION_17_8();
  *&v6[7] = 425;
  v6[9] = v4;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%d SendData, outMsgType %u(%s)", v6, 0x22u);
}

void _qiAuth_protocol_handleResponse_DIGESTS_cold_2()
{
  OUTLINED_FUNCTION_14_13(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_DIGESTS_cold_5()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_CERTIFICATE_cold_2()
{
  OUTLINED_FUNCTION_14_13(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_CERTIFICATE_cold_7()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_handleResponse_CHALLENGE_AUTH_cold_2()
{
  OUTLINED_FUNCTION_14_13(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_ERROR_cold_2()
{
  OUTLINED_FUNCTION_14_13(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_ERROR_cold_8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

void qiAuth_protocol_authStateString_cold_2()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void qiAuth_protocol_saveDigest_cold_2()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

void qiAuth_protocol_saveCertNextSegment_cold_3()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

void qiAuth_protocol_calculateChallengeHash_cold_2()
{
  OUTLINED_FUNCTION_13_15(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_4()
{
  OUTLINED_FUNCTION_13_15(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_6()
{
  OUTLINED_FUNCTION_13_15(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_8()
{
  OUTLINED_FUNCTION_13_15(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_10()
{
  OUTLINED_FUNCTION_13_15(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_12()
{
  OUTLINED_FUNCTION_13_15(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_getCachedCertLengthFromHeader_cold_2()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_getCachedCertLengthFromHeader_cold_4()
{
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_2()
{
  OUTLINED_FUNCTION_14_13(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_4()
{
  OUTLINED_FUNCTION_13_15(__stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_6()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_finishAuth_cold_9()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_11()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_finishAuth_cold_12()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

uint64_t iap2_features_createFeatures(const __CFSet *a1, int a2)
{
  v2 = a2;
  v4 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 18;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (a2)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 144);
    }

    else
    {
      v7 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_11_15();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v113, v114, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v9 = "Creating required features...";
  }

  else
  {
    if (v6)
    {
      v7 = *(gLogObjects + 144);
    }

    else
    {
      v7 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_11_15();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v115, v116, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v9 = "Creating optional features that have been identified for...";
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
LABEL_21:
  v10 = a1 + 200;
  v11 = &off_1002298E0;
  v12 = 29;
  *&v8 = 67109120;
  v120 = v8;
  *&v8 = 134218240;
  v117 = v8;
  HIDWORD(v119) = v2;
  do
  {
    v13 = *v11;
    if (*v11 && *v13 && *(v13 + 34) == v2)
    {
      v14 = *(v11 - 2);
      if (a1 && *&v10[8 * v14])
      {
        v15 = v4[491];
        v16 = gNumLogObjects;
        if (v15 && gNumLogObjects >= 19)
        {
          v17 = *(v15 + 144);
        }

        else
        {
          v17 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = v117;
            v122 = v15;
            v123 = 1024;
            v124 = v16;
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v92, v93, v94, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v95, 0x12u);
          }
        }

        v24 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
        if (v24)
        {
          OUTLINED_FUNCTION_1_33(v24, v25, v26, v27, v28, v29, v30, v31, v117, *(&v117 + 1), v118, v119, v120);
          v33 = v17;
          v34 = OS_LOG_TYPE_INFO;
          v35 = "Feature already created: %{coreacc:iAP2Feature_t}d!";
LABEL_39:
          _os_log_impl(&_mh_execute_header, v33, v34, v35, v32, 8u);
        }
      }

      else if ((v2 & 1) != 0 || iap2_identification_isIdentifiedForFeature(a1))
      {
        v18 = a1;
        v19 = v10;
        v20 = v4;
        v21 = v4[491];
        v22 = gNumLogObjects;
        if (v21 && gNumLogObjects >= 19)
        {
          v23 = *(v21 + 144);
        }

        else
        {
          v23 = &_os_log_default;
          v36 = OUTLINED_FUNCTION_19_0();
          if (v36)
          {
            OUTLINED_FUNCTION_3_0(v36, v37, v38, v39, v40, v41, v42, v43, v117);
            v124 = v22;
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v96, v97, v98, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v99, 0x12u);
          }
        }

        v44 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
        if (v44)
        {
          OUTLINED_FUNCTION_1_33(v44, v45, v46, v47, v48, v49, v50, v51, v117, *(&v117 + 1), v118, v119, v120);
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Creating feature: %{coreacc:iAP2Feature_t}d...", v52, 8u);
        }

        v53 = **v13;
        v4 = v20;
        if (v53)
        {
          v54 = v18;
          v55 = (v53)(v18);
          v10 = v19;
          if (v55)
          {
            a1 = v18;
            v2 = HIDWORD(v119);
            if (v54)
            {
              *&v10[8 * v14] = v55;
            }
          }

          else
          {
            v59 = gNumLogObjects;
            if (v4[491] && gNumLogObjects >= 19)
            {
              a1 = v18;
            }

            else
            {
              v76 = OUTLINED_FUNCTION_19_0();
              a1 = v18;
              if (v76)
              {
                OUTLINED_FUNCTION_3_0(v76, v77, v78, v79, v80, v81, v82, v83, v117);
                v124 = v59;
                OUTLINED_FUNCTION_11_11();
                _os_log_error_impl(v108, v109, v110, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v111, 0x12u);
              }
            }

            v84 = OUTLINED_FUNCTION_19_0();
            v2 = HIDWORD(v119);
            if (v84)
            {
              OUTLINED_FUNCTION_1_33(v84, v85, v86, v87, v88, v89, v90, v91, v117, *(&v117 + 1), v118, v119, v120);
              OUTLINED_FUNCTION_11_11();
              _os_log_error_impl(v100, v101, v102, "Error creating feature: %{coreacc:iAP2Feature_t}d!", v103, 8u);
            }
          }
        }

        else
        {
          v56 = v20[491];
          v57 = gNumLogObjects;
          v10 = v19;
          if (v56 && gNumLogObjects >= 19)
          {
            v58 = *(v56 + 144);
            a1 = v18;
          }

          else
          {
            v58 = &_os_log_default;
            v60 = OUTLINED_FUNCTION_19_0();
            a1 = v18;
            if (v60)
            {
              OUTLINED_FUNCTION_3_0(v60, v61, v62, v63, v64, v65, v66, v67, v117);
              v124 = v57;
              OUTLINED_FUNCTION_11_11();
              _os_log_error_impl(v104, v105, v106, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v107, 0x12u);
            }
          }

          v68 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          v2 = HIDWORD(v119);
          if (v68)
          {
            OUTLINED_FUNCTION_1_33(v68, v69, v70, v71, v72, v73, v74, v75, v117, *(&v117 + 1), v118, v119, v120);
            v33 = v58;
            v34 = OS_LOG_TYPE_DEFAULT;
            v35 = "No create function for feature: %{coreacc:iAP2Feature_t}d!";
            goto LABEL_39;
          }
        }
      }
    }

    v11 += 2;
    --v12;
  }

  while (v12);
  return 0;
}

uint64_t iap2_features_createFeature(uint64_t a1, unsigned int a2)
{
  v3 = &off_1002298E0;
  v4 = 29;
  while (1)
  {
    v5 = *v3;
    v6 = *(v3 - 2) != a2 || v5 == 0;
    if (!v6 && *v5)
    {
      break;
    }

    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  v8 = a1 + 8 * a2;
  if (a1 && *(v8 + 200))
  {
    if (gLogObjects && gNumLogObjects >= 19)
    {
      v9 = *(gLogObjects + 144);
    }

    else
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v32, v33, v34, v35, v36, 0x12u);
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_14_14();
      v15 = "Feature already created: %{coreacc:iAP2Feature_t}d!";
      v16 = v9;
      v17 = OS_LOG_TYPE_INFO;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, &v47, 8u);
    }
  }

  else
  {
    v10 = gLogObjects;
    v11 = gNumLogObjects;
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 19;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v18 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        v47 = 134218240;
        v48 = v10;
        v49 = 1024;
        v50 = v11;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v47);
      }
    }

    else
    {
      v18 = *(gLogObjects + 144);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v19, v20, v21, v22, v23, 8u);
    }

    v24 = **v5;
    if (v24)
    {
      v25 = (v24)(a1);
      if (v25)
      {
        if (a1)
        {
          *(v8 + 200) = v25;
        }
      }

      else
      {
        if ((!gLogObjects || gNumLogObjects < 19) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v42, v43, v44, v45, v46, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_14_14();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v27, v28, v29, v30, v31, 8u);
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 19)
      {
        v26 = *(gLogObjects + 144);
      }

      else
      {
        v26 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v37, v38, v39, v40, v41, 0x12u);
        }
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_14();
        v15 = "No create function for feature: %{coreacc:iAP2Feature_t}d!";
        v16 = v26;
        v17 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_25;
      }
    }
  }

  return 0;
}

uint64_t iap2_features_startFeaturesFromDevice(const __CFSet *a1, int a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 18;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (a2)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 144);
    }

    else
    {
      v6 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v8 = "Auto-starting required features...";
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 144);
    }

    else
    {
      v6 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v57, v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v8 = "Auto-starting optional features...";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
LABEL_21:
  v9 = &off_1002298E0;
  v10 = 29;
  *&v7 = 67109120;
  v60 = v7;
  *&v7 = 134218240;
  v59 = v7;
  do
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = *v11;
      if (*v11)
      {
        if (*(v11 + 34) == a2)
        {
          if ((a2 & 1) == 0)
          {
            if (!iap2_identification_isIdentifiedForFeature(a1))
            {
              goto LABEL_48;
            }

            v12 = *v11;
          }

          v13 = v12[2];
          if (gLogObjects)
          {
            v14 = gNumLogObjects <= 18;
          }

          else
          {
            v14 = 1;
          }

          v15 = !v14;
          if (v13)
          {
            if (v15)
            {
              v16 = *(gLogObjects + 144);
            }

            else
            {
              v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              v16 = &_os_log_default;
              if (v18)
              {
                OUTLINED_FUNCTION_7_25(v18, v19, v20, v21, v22, v23, v24, v25, v59);
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, 0x12u);
                v16 = &_os_log_default;
              }
            }

            v26 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
            if (v26)
            {
              OUTLINED_FUNCTION_17_17(v26, v27, v28, v29, v30, v31, v32, v33, v59, *(&v59 + 1), v60);
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Auto-starting feature: %{coreacc:iAP2Feature_t}d...", v34, 8u);
            }

            (v13)(a1);
          }

          else
          {
            if (v15)
            {
              v17 = *(gLogObjects + 144);
            }

            else
            {
              v35 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              v17 = &_os_log_default;
              if (v35)
              {
                OUTLINED_FUNCTION_7_25(v35, v36, v37, v38, v39, v40, v41, v42, v59);
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, 0x12u);
                v17 = &_os_log_default;
              }
            }

            v43 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            if (v43)
            {
              OUTLINED_FUNCTION_17_17(v43, v44, v45, v46, v47, v48, v49, v50, v59, *(&v59 + 1), v60);
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No auto-start function for feature: %{coreacc:iAP2Feature_t}d!", v51, 8u);
            }
          }
        }
      }
    }

LABEL_48:
    v9 += 2;
    --v10;
  }

  while (v10);
  return 0;
}

uint64_t iap2_features_startFeatureFromDevice(const __CFSet *a1, uint64_t a2)
{
  v2 = a2;
  v4 = &off_1002298E0;
  v5 = 29;
  while (1)
  {
    v6 = *v4;
    if (*(v4 - 2) == a2 && v6 != 0)
    {
      v8 = *v6;
      if (*v6)
      {
        break;
      }
    }

    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  if ((*(v6 + 34) & 1) == 0)
  {
    if (!iap2_identification_isIdentifiedForFeature(a1))
    {
      return 0;
    }

    v8 = *v6;
  }

  v9 = v8[2];
  if (v9)
  {
    v10 = gLogObjects;
    v11 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 19)
    {
      v12 = *(gLogObjects + 144);
    }

    else
    {
      v12 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        v21 = 134218240;
        v22 = v10;
        v23 = 1024;
        v24 = v11;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v21);
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = 67109120;
      LODWORD(v22) = v2;
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v15, v16, v17, v18, v19, 8u);
    }

    (v9)(a1);
  }

  return 0;
}

_BYTE *iap2_feature_getFeatureInfoEntries(_BYTE *result)
{
  if (result)
  {
    *result = 29;
    return &_kiAP2FeatureInfoEntries;
  }

  return result;
}

void iap2_features_registerMessageHandlers_cold_2(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(&_kiAP2FeatureInfoEntries + 4 * a2);
  *buf = 67109120;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Registering message handlers for %{coreacc:iAP2Feature_t}d...", buf, 8u);
}

void iap2_features_registerMessageHandlers_cold_3()
{
  v1 = OUTLINED_FUNCTION_8_25();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_16(*v0, 1.5047e-36);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_15_20();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }
}

void iap2_features_registerMessageHandlers_cold_4()
{
  v1 = OUTLINED_FUNCTION_8_25();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_16_16(*v0, 1.5047e-36);
    OUTLINED_FUNCTION_15_20();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void iap2_features_registerIdentificationParamHandlers_cold_2(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(&_kiAP2FeatureInfoEntries + 4 * a2);
  *buf = 67109120;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Registering identification param handlers for %{coreacc:iAP2Feature_t}d...", buf, 8u);
}

void iap2_features_registerIdentificationParamHandlers_cold_3()
{
  v1 = OUTLINED_FUNCTION_8_25();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_16(*v0, 1.5047e-36);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_15_20();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }
}

void iap2_sessionRouter_processSessionData_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 1);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received incoming packet for session type: %{coreacc:iAP2PacketServiceType_t}d", v3, 8u);
}

uint64_t _startCallStateUpdatesHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 6u);
    if (Feature)
    {
      v5 = Feature;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v6 = *(gLogObjects + 312);
      }

      else
      {
        v6 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_24_9();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v84, v85, v86, v87, v88, v89);
        }
      }

      if (OUTLINED_FUNCTION_65())
      {
        *buf = 0;
        OUTLINED_FUNCTION_38_3(&_mh_execute_header, v6, v7, "Start Call State Updates!", buf);
      }

      theSet = CFSetCreateMutable(kCFAllocatorDefault, 13, 0);
      v8 = OUTLINED_FUNCTION_21_1();
      FirstParam = iAP2MsgGetFirstParam(v8, v9);
      if (FirstParam)
      {
        NextParam = FirstParam;
        v104 = v5;
        v13 = 0;
        v14 = 0;
        *&v11 = 67109120;
        v106 = v11;
        *&v11 = 67109376;
        v107 = v11;
        *&v11 = 134218240;
        v105 = v11;
        do
        {
          ParamID = iAP2MsgGetParamID(NextParam);
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v16 = *(gLogObjects + 312);
          }

          else
          {
            v17 = OUTLINED_FUNCTION_13();
            v16 = &_os_log_default;
            if (v17)
            {
              OUTLINED_FUNCTION_31_10(v17, v18, v19, v20, v21, v22, v23, v24, v103, v104, v105);
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v44, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, 0x12u);
              v16 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v106;
            LODWORD(v110) = ParamID;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "paramID: %d", buf, 8u);
          }

          if (ParamID > 0xC)
          {
            if (gLogObjects && gNumLogObjects >= 40)
            {
              v25 = *(gLogObjects + 312);
            }

            else
            {
              v26 = OUTLINED_FUNCTION_13();
              v25 = &_os_log_default;
              if (v26)
              {
                OUTLINED_FUNCTION_31_10(v26, v27, v28, v29, v30, v31, v32, v33, v103, v104, v105);
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v48, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, 0x12u);
                v25 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              MsgID = iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_39_6(MsgID, v35, v36, v37, v38, v39, v40, v41, v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107);
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
            }
          }

          else
          {
            if (!iAP2MsgIsDataVoid(NextParam))
            {
              v83 = logObjectForModule_37();
              if (OUTLINED_FUNCTION_16(v83))
              {
                v90 = iAP2MsgGetMsgID(a2);
                OUTLINED_FUNCTION_39_6(v90, v91, v92, v93, v94, v95, v96, v97, v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107);
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v98, v99, v100, v101, v102, 0xEu);
              }

              v2 = 0;
              goto LABEL_59;
            }

            CFSetAddValue(theSet, ParamID);
            v14 |= ParamID == 5;
            v13 |= ParamID != 5;
          }

          v42 = OUTLINED_FUNCTION_21_1();
          NextParam = iAP2MsgGetNextParam(v42, v43, NextParam);
        }

        while (NextParam);
        if (v13)
        {
          v52 = 0;
          v5 = v104;
          v53 = theSet;
          goto LABEL_35;
        }

        v5 = v104;
      }

      else
      {
        v14 = 0;
      }

      v53 = theSet;
      v54 = OUTLINED_FUNCTION_22();
      CFSetAddValue(v54, v55);
      v52 = 1;
      CFSetAddValue(theSet, 1);
      CFSetAddValue(theSet, 2);
      CFSetAddValue(theSet, 3);
      CFSetAddValue(theSet, 4);
LABEL_35:
      _removeSubscriberForSubFeature(v5, 0);
      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      if (v53)
      {
        v56 = CFRetain(v53);
      }

      else
      {
        v56 = 0;
      }

      *v5 = v56;
      *(v5 + 10) = 1;
      *(v5 + 8) = v52;
      *(v5 + 9) = v14 & 1;
      if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_24_9();
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v57, v58, v59, v60, v61, v62);
      }

      if (OUTLINED_FUNCTION_82())
      {
        v63 = "NO";
        if (*(v5 + 8))
        {
          v64 = "YES";
        }

        else
        {
          v64 = "NO";
        }

        if (*(v5 + 9))
        {
          v63 = "YES";
        }

        *buf = 136315394;
        v110 = v64;
        v111 = 2080;
        v112 = v63;
        OUTLINED_FUNCTION_6_16();
        _os_log_impl(v65, v66, OS_LOG_TYPE_INFO, v67, v68, 0x16u);
      }

      if (gLogObjects && gNumLogObjects >= 40)
      {
        v69 = *(gLogObjects + 312);
      }

      else
      {
        v69 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_24_9();
          OUTLINED_FUNCTION_6_16();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v70, v71, v72, v73, v74, v75);
        }
      }

      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        Count = CFSetGetCount(*v5);
        *buf = 134217984;
        v110 = Count;
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_30_7(v77, v78, v79, v80, v81);
      }

      _addSubscriberForSubFeature(v5, 0);
      v2 = 1;
LABEL_59:
      if (theSet)
      {
        CFRelease(theSet);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void _removeSubscriberForSubFeature(uint64_t a1, int a2)
{
  if (!a1)
  {
    return;
  }

  if (a2 != 3)
  {
    if (a2 == 1)
    {
      if (*(a1 + 24) != 1)
      {
        return;
      }

      v5 = *(a1 + 16);
      if (!v5 || CFSetGetCount(v5) <= 0)
      {
        return;
      }

      v4 = kCFACCCommunications_SubscriberList_CommunicationsUpdates;
    }

    else
    {
      if (a2)
      {
        return;
      }

      if (*(a1 + 10) != 1)
      {
        return;
      }

      v3 = *a1;
      if (!*a1 || CFSetGetCount(v3) <= 0)
      {
        return;
      }

      v4 = kCFACCCommunications_SubscriberList_CallStateUpdates;
    }

    goto LABEL_20;
  }

  if (*(a1 + 67) == 1)
  {
    if (*(a1 + 46) == 1)
    {
      v6 = kCFACCCommunications_SubscriberList_ListUpdates_Recents_Coalesced;
      if (!*(a1 + 42))
      {
        v6 = kCFACCCommunications_SubscriberList_ListUpdates_Recents;
      }

      platform_communications_removeSubscriber(*v6);
    }

    if (*(a1 + 61) == 1)
    {
      v4 = kCFACCCommunications_SubscriberList_ListUpdates_Favorites;
LABEL_20:
      v7 = *v4;

      platform_communications_removeSubscriber(v7);
    }
  }
}

void _addSubscriberForSubFeature(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2 == 3)
    {
      if (*(a1 + 67) == 1)
      {
        if (*(a1 + 46) == 1)
        {
          v5 = kCFACCCommunications_SubscriberList_ListUpdates_Recents_Coalesced;
          if (!*(a1 + 42))
          {
            v5 = kCFACCCommunications_SubscriberList_ListUpdates_Recents;
          }

          platform_communications_addSubscriber(*v5);
          platform_communications_triggerListUpdate(0, *(a1 + 42));
        }

        if (*(a1 + 61) == 1)
        {
          platform_communications_addSubscriber(@"ListUpdates_Favorites");

          platform_communications_triggerListUpdate(1, 0);
        }
      }
    }

    else if (a2 == 1)
    {
      if (*(a1 + 24) == 1)
      {
        v4 = *(a1 + 16);
        if (v4)
        {
          if (CFSetGetCount(v4) >= 1)
          {
            platform_communications_addSubscriber(@"CommunicationsUpdates");

            platform_communications_triggerCommunicationsUpdate();
          }
        }
      }
    }

    else if (!a2 && *(a1 + 10) == 1)
    {
      v3 = *a1;
      if (*a1)
      {
        if (CFSetGetCount(v3) >= 1)
        {
          platform_communications_addSubscriber(@"CallStateUpdates");

          platform_communications_triggerCallStateUpdates();
        }
      }
    }
  }
}

uint64_t _stopCallStateUpdatesHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 6u);
      if (result)
      {
        v4 = result;
        if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v5, v6, v7, v8, v9, v10);
        }

        if (OUTLINED_FUNCTION_65())
        {
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_38_3(v11, v12, v13, v14, v15);
        }

        _removeSubscriberForSubFeature(v4, 0);
        *(v4 + 10) = 0;
        result = 1;
        *(v4 + 8) = 1;
        if (*v4)
        {
          CFRelease(*v4);
          *v4 = 0;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t _startCommunicationsUpdatesHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  Feature = iap2_feature_getFeature(a1, 6u);
  if (!Feature)
  {
    return 0;
  }

  v5 = Feature;
  if (gLogObjects && gNumLogObjects >= 40)
  {
    v6 = *(gLogObjects + 312);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v68, v69, v70, v71, v72, v73);
    }
  }

  v88 = v5;
  if (OUTLINED_FUNCTION_65())
  {
    *buf = 0;
    OUTLINED_FUNCTION_38_3(&_mh_execute_header, v6, v7, "Start Communications Updates!", buf);
  }

  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 18, 0);
  v9 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v9, v10);
  if (!FirstParam)
  {
LABEL_31:
    v51 = OUTLINED_FUNCTION_66_2();
    _removeSubscriberForSubFeature(v51, v52);
    v53 = *(v88 + 16);
    if (v53)
    {
      CFRelease(v53);
      *(v88 + 16) = 0;
    }

    if (Mutable)
    {
      v54 = CFRetain(Mutable);
    }

    else
    {
      v54 = 0;
    }

    *(v88 + 16) = v54;
    *(v88 + 24) = 1;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v55 = *(gLogObjects + 312);
    }

    else
    {
      v55 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_49_6();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v56, v57, v58, v59, v60, v61);
      }
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      Count = CFSetGetCount(*(v88 + 16));
      *buf = 134217984;
      v93 = Count;
      OUTLINED_FUNCTION_30_7(&_mh_execute_header, v55, v63, "paramCount: %ld", buf);
    }

    v2 = 1;
    v64 = OUTLINED_FUNCTION_66_2();
    _addSubscriberForSubFeature(v64, v65);
    if (!Mutable)
    {
      return v2;
    }

    goto LABEL_44;
  }

  NextParam = FirstParam;
  *&v12 = 67109120;
  v90 = v12;
  *&v12 = 67109376;
  v91 = v12;
  *&v12 = 134218240;
  v89 = v12;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v15 = *(gLogObjects + 312);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_13();
      v15 = &_os_log_default;
      if (v16)
      {
        OUTLINED_FUNCTION_32_6(v16, v17, v18, v19, v20, v21, v22, v23, v87, v88, v89);
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v43, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v46, 0x12u);
        v15 = &_os_log_default;
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = v90;
      LODWORD(v93) = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "paramID: %d", buf, 8u);
    }

    if (ParamID > 0x11)
    {
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v24 = *(gLogObjects + 312);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_13();
        v24 = &_os_log_default;
        if (v25)
        {
          OUTLINED_FUNCTION_32_6(v25, v26, v27, v28, v29, v30, v31, v32, v87, v88, v89);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v47, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, 0x12u);
          v24 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        MsgID = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_40_7(MsgID, v34, v35, v36, v37, v38, v39, v40, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
      }

      goto LABEL_30;
    }

    if (!iAP2MsgIsDataVoid(NextParam))
    {
      break;
    }

    CFSetAddValue(Mutable, ParamID);
LABEL_30:
    v41 = OUTLINED_FUNCTION_21_1();
    NextParam = iAP2MsgGetNextParam(v41, v42, NextParam);
    if (!NextParam)
    {
      goto LABEL_31;
    }
  }

  v67 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v67))
  {
    v74 = iAP2MsgGetMsgID(a2);
    OUTLINED_FUNCTION_40_7(v74, v75, v76, v77, v78, v79, v80, v81, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v82, v83, v84, v85, v86, 0xEu);
  }

  v2 = 0;
  if (Mutable)
  {
LABEL_44:
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t _stopCommunicationsUpdatesHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 6u);
    if (Feature)
    {
      v4 = Feature;
      if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v5, v6, v7, v8, v9, v10);
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_38_3(v11, v12, v13, v14, v15);
      }

      v2 = 1;
      _removeSubscriberForSubFeature(v4, 1);
      *(v4 + 24) = 0;
      v16 = *(v4 + 16);
      if (v16)
      {
        CFRelease(v16);
        *(v4 + 16) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

id _initiateCallHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (FirstParam)
  {
    NextParam = FirstParam;
    v7 = 0;
    v2 = 4;
    DataAsU8 = 3;
    *&v5 = 67109376;
    v67 = v5;
    *&v5 = 134218240;
    v66 = v5;
    while (2)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      switch(ParamID)
      {
        case 0:
          v10 = OUTLINED_FUNCTION_68_6();
          DataAsU8 = iAP2MsgGetDataAsU8(v10, v11);
          goto LABEL_20;
        case 1:
          if (v7)
          {
            CFRelease(v7);
          }

          v17 = OUTLINED_FUNCTION_68_6();
          v7 = iAP2MsgCopyDataAsCFString(v17, v18);
          goto LABEL_20;
        case 2:
          v12 = OUTLINED_FUNCTION_68_6();
          v2 = iAP2MsgGetDataAsU8(v12, v13);
          goto LABEL_20;
        case 3:
          v14 = OUTLINED_FUNCTION_68_6();
          iAP2MsgCopyDataAsCFString(v14, v15);
          OUTLINED_FUNCTION_51_3();
          if (!v16)
          {
            goto LABEL_20;
          }

          v55 = logObjectForModule_37();
          if (!OUTLINED_FUNCTION_13_9(v55))
          {
            goto LABEL_42;
          }

          MsgID = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_57_5(MsgID, v58, v59, v60, v61, v62, v63, v64, v66, *(&v66 + 1), v67);
          LODWORD(v69) = 3;
          OUTLINED_FUNCTION_10_2();
          OUTLINED_FUNCTION_12_16();
          goto LABEL_41;
        default:
          v19 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v20 = *(gLogObjects + 312);
          }

          else
          {
            v20 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v66;
              v69 = v19;
              OUTLINED_FUNCTION_34_2();
              OUTLINED_FUNCTION_67_6();
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, 0x12u);
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_57_5(v21, v22, v23, v24, v25, v26, v27, v28, v66, *(&v66 + 1), v67);
            LODWORD(v69) = ParamID;
            OUTLINED_FUNCTION_10_2();
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
          }

LABEL_20:
          NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
          if (NextParam)
          {
            continue;
          }

          if (DataAsU8 >= 3)
          {
            goto LABEL_28;
          }

          if (!DataAsU8)
          {
            if (v7 && (v2 - 4) > 0xFFFFFFFC)
            {
              v38 = platform_communications_initiateCallToDestination(v7, v2, 0);
              goto LABEL_43;
            }

            v39 = gNumLogObjects;
            if (!gLogObjects || gNumLogObjects < 40)
            {
              v40 = OUTLINED_FUNCTION_27();
              if (v40)
              {
                OUTLINED_FUNCTION_3_0(v40, v41, v42, v43, v44, v45, v46, v47, v66);
                v70 = v39;
                OUTLINED_FUNCTION_13_16();
                _os_log_error_impl(v49, v50, v51, v52, v53, v54);
              }
            }

            if (OUTLINED_FUNCTION_27())
            {
              *buf = 138412546;
              v69 = v7;
              OUTLINED_FUNCTION_34_2();
              v70 = v2;
              OUTLINED_FUNCTION_13_16();
              goto LABEL_41;
            }

            goto LABEL_42;
          }

          if (!v7 && v2 == 4)
          {
            if (DataAsU8 == 2)
            {
              return platform_communications_initiateRedial();
            }

            else
            {
              return platform_communications_initiateCallToVoicemail();
            }
          }

          v65 = logObjectForModule_37();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          *buf = 138412802;
          v69 = v7;
          OUTLINED_FUNCTION_34_2();
          v70 = v2;
          v71 = 2112;
          v72 = 0;
          v32 = &_mh_execute_header;
          v33 = "Call type is not destination with destination ID: %@, service type: %d, addressBookID: %@ - ignoring message";
          v34 = buf;
          v35 = v65;
          v36 = OS_LOG_TYPE_ERROR;
          v37 = 28;
          break;
      }

      goto LABEL_41;
    }
  }

  v7 = 0;
  DataAsU8 = 3;
LABEL_28:
  v31 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_13_9(v31))
  {
    *buf = 67109120;
    LODWORD(v69) = DataAsU8;
    v32 = &_mh_execute_header;
    v33 = "Invalid call type: %d - ignoring message";
    v34 = buf;
    v35 = v2;
    v36 = OS_LOG_TYPE_ERROR;
    v37 = 8;
LABEL_41:
    _os_log_error_impl(v32, v35, v36, v33, v34, v37);
  }

LABEL_42:
  v38 = 0;
  v2 = 0;
  if (v7)
  {
LABEL_43:
    CFRelease(v7);
    return v38;
  }

  return v2;
}

id _swapCallHandler(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return platform_communications_swapCalls();
  }

  else
  {
    return 0;
  }
}

id _mergeCallHandler(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return platform_communications_mergeCalls();
  }

  else
  {
    return 0;
  }
}

uint64_t _stopListUpdatesHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 6u);
      if (result)
      {
        v4 = result;
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v5 = *(gLogObjects + 312);
        }

        else
        {
          v5 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v6, v7, v8, v9, v10, v11);
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v12, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
        }

        _removeSubscriberForSubFeature(v4, 3);
        v18 = *(v4 + 32);
        v17 = v4 + 32;
        v16 = v18;
        *(v17 + 35) = 0;
        *(v17 + 14) = 0;
        *(v17 + 29) = 0;
        if (v18)
        {
          CFRelease(v16);
          *v17 = 0;
        }

        v19 = *(v17 + 16);
        if (v19)
        {
          CFRelease(v19);
        }

        *v17 = 0;
        *(v17 + 8) = 0;
        result = 1;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
      }
    }
  }

  return result;
}

void iap2_communications_callStateUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v23;
  if (v24)
  {
    v25 = v22;
    if (v22)
    {
      OUTLINED_FUNCTION_50();
      if (v26)
      {
        v27 = &audioProductCerts_endpoint_publish_onceToken;
        v28 = gLogObjects;
        v29 = gNumLogObjects;
        v30 = &off_1001C3000;
        if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_17())
        {
          *v150 = 134218240;
          *&v150[4] = v28;
          OUTLINED_FUNCTION_17_0();
          v151 = v29;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v106, v107, v108, v109, v110, v111);
        }

        if (OUTLINED_FUNCTION_82())
        {
          v33 = *(v20 + 8);
          *v150 = 138412290;
          *&v150[4] = v33;
          OUTLINED_FUNCTION_43_7(&_mh_execute_header, v31, v32, "Received call state update for endpoint: %@", v150);
        }

        v34 = OUTLINED_FUNCTION_34_4();
        Feature = iap2_feature_getFeature(v34, v35);
        if (Feature)
        {
          v37 = Feature;
          if (*(Feature + 10) == 1)
          {
            iAP2MsgInit(v20 + 120, 16725, *(v20 + 192), 0xFFFF, 0, 0);
            if (*v37)
            {
              Count = CFSetGetCount(*v37);
              v146 = &v130;
              OUTLINED_FUNCTION_63_1();
              __chkstk_darwin(v39);
              OUTLINED_FUNCTION_27_8();
              v43 = (v41 - v42);
              if (v44)
              {
                memset((v41 - v42), 170, v40);
              }

              CFSetGetValues(*v37, v43);
              v45 = gNumLogObjects;
              if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_6_32(3.8521e-34);
                v151 = v45;
                OUTLINED_FUNCTION_4_21();
                _os_log_error_impl(v112, v113, v114, v115, v116, v117);
              }

              if (OUTLINED_FUNCTION_99())
              {
                RawValuesString = CFSetCreateRawValuesString(*v37, 0);
                v47 = gLogObjects;
                v48 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 40)
                {
                  v49 = *(gLogObjects + 312);
                }

                else
                {
                  v49 = &_os_log_default;
                  if (OUTLINED_FUNCTION_11())
                  {
                    *v150 = 134218240;
                    *&v150[4] = v47;
                    OUTLINED_FUNCTION_17_0();
                    v151 = v48;
                    OUTLINED_FUNCTION_4_21();
                    _os_log_error_impl(v118, v119, v120, v121, v122, v123);
                  }
                }

                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  *v150 = 138412290;
                  *&v150[4] = RawValuesString;
                  OUTLINED_FUNCTION_30_7(&_mh_execute_header, v49, v50, "callStateUpdates.subscriptionList:\n%@", v150);
                }

                v27 = &audioProductCerts_endpoint_publish_onceToken;
                if (RawValuesString)
                {
                  CFRelease(RawValuesString);
                }

                v51 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 40)
                {
                  v52 = *(gLogObjects + 312);
                  v30 = &off_1001C3000;
                }

                else
                {
                  v52 = &_os_log_default;
                  v30 = &off_1001C3000;
                  if (OUTLINED_FUNCTION_19_0())
                  {
                    OUTLINED_FUNCTION_6_32(3.8521e-34);
                    v151 = v51;
                    OUTLINED_FUNCTION_4_21();
                    _os_log_error_impl(v124, v125, v126, v127, v128, v129);
                  }
                }

                if (OUTLINED_FUNCTION_99())
                {
                  *v150 = 138412290;
                  *&v150[4] = v25;
                  OUTLINED_FUNCTION_30_7(&_mh_execute_header, v52, v53, "callState:\n%@", v150);
                }
              }

              Value = CFDictionaryGetValue(v25, @"Status");
              if (Value)
              {
                v149 = -1431655766;
                v55 = CFNumberGetValue(Value, kCFNumberIntType, &v149);
                v56 = v55 != 0;
                if (v55)
                {
                  v57 = CFDictionaryGetValue(v25, @"CallUUID");
                  v58 = CFDictionaryGetValue(v25, @"IsConferenced");
                  v147 = v58 && CFBooleanGetValue(v58) != 0;
                  if (Count >= 1)
                  {
                    v140 = v56;
                    v60 = 0;
                    v139 = @"StartTimestamp";
                    v135 = @"DisconnectReason";
                    v134 = @"ConferenceGroup";
                    v138 = @"Service";
                    v137 = @"Label";
                    v136 = @"AddressBookID";
                    v145 = @"Direction";
                    v144 = @"DisplayName";
                    v143 = @"RemoteID";
                    *&v59 = 67109376;
                    v133 = v59;
                    *&v59 = *(v30 + 71);
                    v132 = v59;
                    v141 = v37;
                    v142 = v20;
                    while (2)
                    {
                      v61 = *v43++;
                      switch(v61)
                      {
                        case 0:
                          if (v57 && CFStringGetLength(v57) > 0 || (OUTLINED_FUNCTION_72_4(), v62))
                          {
                            if (CFDictionaryGetValue(v25, v143))
                            {
                              v63 = OUTLINED_FUNCTION_8();
                              v66 = 0;
                              goto LABEL_93;
                            }

                            v92 = OUTLINED_FUNCTION_6_11();
                            v94 = 0;
                            goto LABEL_108;
                          }

                          goto LABEL_129;
                        case 1:
                          if (v57 && CFStringGetLength(v57) > 0 || (OUTLINED_FUNCTION_72_4(), v62))
                          {
                            if (CFDictionaryGetValue(v25, v144))
                            {
                              v63 = OUTLINED_FUNCTION_8();
                              v66 = 1;
                              goto LABEL_93;
                            }

                            v92 = OUTLINED_FUNCTION_6_11();
                            v94 = 1;
                            goto LABEL_108;
                          }

                          goto LABEL_129;
                        case 2:
                          v71 = v149;
                          if (*(v37 + 8) == 1)
                          {
                            v72 = v25;
                            if ((v149 - 1) > 5)
                            {
                              v73 = 0;
                            }

                            else
                            {
                              v73 = dword_1001C4008[v149 - 1];
                            }

                            v95 = v27[491];
                            v96 = gNumLogObjects;
                            if (v95 && gNumLogObjects >= 40)
                            {
                              v97 = *(v95 + 312);
                            }

                            else
                            {
                              v97 = &_os_log_default;
                              if (OUTLINED_FUNCTION_114())
                              {
                                OUTLINED_FUNCTION_9_23(&a15);
                                v151 = v96;
                                OUTLINED_FUNCTION_62_2();
                                _os_log_error_impl(v98, v99, v100, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v101, 0x12u);
                              }
                            }

                            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                            {
                              OUTLINED_FUNCTION_25_3(&a17);
                              *&v150[4] = v71;
                              OUTLINED_FUNCTION_66_3();
                              *&v150[10] = v73;
                              _os_log_debug_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEBUG, "Converted callStatus %d, to legacyCallStatus: %d", v150, 0xEu);
                            }

                            v25 = v72;
                            v37 = v141;
                            v20 = v142;
                            v27 = &audioProductCerts_endpoint_publish_onceToken;
                          }

                          else
                          {
                            LOBYTE(v73) = v149;
                          }

                          v88 = v20 + 120;
                          v91 = v73;
                          v89 = 0;
                          v90 = 2;
                          goto LABEL_126;
                        case 3:
                          if (!v57 || CFStringGetLength(v57) <= 0)
                          {
                            OUTLINED_FUNCTION_72_4();
                            if (!v62)
                            {
                              goto LABEL_129;
                            }
                          }

                          v79 = CFDictionaryGetValue(v25, v145);
                          if (v79)
                          {
                            v148 = -1431655766;
                            if (!CFNumberGetValue(v79, kCFNumberIntType, &v148))
                            {
                              goto LABEL_129;
                            }

                            v80 = v148;
                            if (*(v37 + 8) == 1)
                            {
                              v81 = v25;
                              v82 = 2 * (v148 != 1);
                              if (v148 == 2)
                              {
                                v82 = 1;
                              }

                              v131 = v82;
                              v83 = v27;
                              v84 = v27[491];
                              v85 = gNumLogObjects;
                              if (v84 && gNumLogObjects >= 40)
                              {
                                v86 = *(v84 + 312);
                              }

                              else
                              {
                                v86 = &_os_log_default;
                                if (OUTLINED_FUNCTION_114())
                                {
                                  OUTLINED_FUNCTION_9_23(&a15);
                                  v151 = v85;
                                  OUTLINED_FUNCTION_62_2();
                                  _os_log_error_impl(v102, v103, v104, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v105, 0x12u);
                                }
                              }

                              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
                              {
                                OUTLINED_FUNCTION_25_3(&a17);
                                *&v150[4] = v80;
                                OUTLINED_FUNCTION_66_3();
                                LOBYTE(v80) = v131;
                                *&v150[10] = v131;
                                _os_log_debug_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEBUG, "Converted direction %d, to legacyDirection: %d", v150, 0xEu);
                                v25 = v81;
                                v27 = v83;
                                v37 = v141;
                                v20 = v142;
                              }

                              else
                              {
                                v25 = v81;
                                v27 = v83;
                                v37 = v141;
                                v20 = v142;
                                LOBYTE(v80) = v131;
                              }
                            }

                            v88 = v20 + 120;
                            v91 = v80;
                            v89 = 0;
                            v90 = 3;
                          }

                          else
                          {
                            v88 = OUTLINED_FUNCTION_6_11();
                            v90 = 3;
                            v91 = 2;
                          }

                          goto LABEL_126;
                        case 4:
                          if (v57 && CFStringGetLength(v57) >= 1)
                          {
                            v63 = OUTLINED_FUNCTION_6_11();
                            v66 = 4;
                            v65 = v57;
LABEL_93:
                            v78 = iAP2MsgAddCFStringParam(v63, v64, v66, v65);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_72_4();
                            if (!v62)
                            {
                              goto LABEL_129;
                            }

                            v92 = OUTLINED_FUNCTION_6_11();
                            v94 = 4;
LABEL_108:
                            v78 = iAP2MsgAddStringParam(v92, v93, v94, "");
                          }

LABEL_127:
                          if (v78)
                          {
                            ++v60;
                          }

LABEL_129:
                          if (--Count)
                          {
                            continue;
                          }

                          if (v60)
                          {
                            OUTLINED_FUNCTION_53_2();
                          }

                          break;
                        case 6:
                          if (!v57 || CFStringGetLength(v57) < 1)
                          {
                            goto LABEL_129;
                          }

                          CFDictionaryGetValue(v25, v136);
                          v63 = OUTLINED_FUNCTION_8();
                          v66 = 6;
                          goto LABEL_93;
                        case 7:
                          if (!v57 || CFStringGetLength(v57) < 1)
                          {
                            goto LABEL_129;
                          }

                          CFDictionaryGetValue(v25, v137);
                          v63 = OUTLINED_FUNCTION_8();
                          v66 = 7;
                          goto LABEL_93;
                        case 8:
                          if (!v57 || CFStringGetLength(v57) < 1)
                          {
                            goto LABEL_129;
                          }

                          CFDictionaryGetValue(v25, v138);
                          v67 = OUTLINED_FUNCTION_8();
                          v70 = 8;
                          goto LABEL_98;
                        case 9:
                          if (!v57 || CFStringGetLength(v57) < 1)
                          {
                            goto LABEL_129;
                          }

                          v88 = OUTLINED_FUNCTION_6_11();
                          v90 = 9;
                          v91 = v147;
                          goto LABEL_126;
                        case 10:
                          if (!v57)
                          {
                            goto LABEL_129;
                          }

                          v87 = CFStringGetLength(v57) > 0;
                          if (!v87 || !v147)
                          {
                            goto LABEL_129;
                          }

                          if (CFDictionaryGetValue(v25, v134))
                          {
                            v67 = OUTLINED_FUNCTION_6_11();
                            v70 = 10;
LABEL_98:
                            v78 = iAP2MsgAddCFU8Param(v67, v68, v70, v69);
                          }

                          else
                          {
                            v88 = OUTLINED_FUNCTION_6_11();
                            v90 = 10;
LABEL_126:
                            v78 = iAP2MsgAddU8Param(v88, v89, v90, v91);
                          }

                          goto LABEL_127;
                        case 11:
                          if (!v57 || CFStringGetLength(v57) < 1 || v149)
                          {
                            goto LABEL_129;
                          }

                          CFDictionaryGetValue(v25, v135);
                          v67 = OUTLINED_FUNCTION_8();
                          v70 = 11;
                          goto LABEL_98;
                        case 12:
                          if (!v57)
                          {
                            goto LABEL_129;
                          }

                          if (CFStringGetLength(v57) < 1)
                          {
                            goto LABEL_129;
                          }

                          v74 = CFDictionaryGetValue(v25, v139);
                          if (!v74)
                          {
                            goto LABEL_129;
                          }

                          *v150 = 0;
                          if (!CFNumberGetValue(v74, kCFNumberLongLongType, v150) || !*v150)
                          {
                            goto LABEL_129;
                          }

                          v75 = OUTLINED_FUNCTION_6_11();
                          v78 = iAP2MsgAddU64Param(v75, v76, 12, v77);
                          goto LABEL_127;
                        default:
                          goto LABEL_129;
                      }

                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void iap2_communications_communicationsUpdateHandler()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v2 = v1;
    v3 = v0;
    if (v1)
    {
      if (*v0)
      {
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_17())
        {
          v80 = 134218240;
          v81 = v4;
          v82 = 1024;
          v83 = v5;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v42, v43, v44, v45, v46, v47);
        }

        if (OUTLINED_FUNCTION_82())
        {
          v8 = v3[1];
          v80 = 138412290;
          v81 = v8;
          OUTLINED_FUNCTION_43_7(&_mh_execute_header, v6, v7, "Received communications update for endpoint: %@", &v80);
        }

        v9 = OUTLINED_FUNCTION_34_4();
        Feature = iap2_feature_getFeature(v9, v10);
        if (Feature)
        {
          v12 = Feature;
          if (*(Feature + 24) == 1)
          {
            iAP2MsgInit((v3 + 15), 16728, v3[24], 0xFFFF, 0, 0);
            v13 = *(v12 + 16);
            if (v13)
            {
              Count = CFSetGetCount(v13);
              v79 = &v66;
              OUTLINED_FUNCTION_63_1();
              __chkstk_darwin(v15);
              OUTLINED_FUNCTION_27_8();
              v19 = (v17 - v18);
              if (v20)
              {
                memset((v17 - v18), 170, v16);
              }

              CFSetGetValues(*(v12 + 16), v19);
              if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_52_6(3.8521e-34);
                OUTLINED_FUNCTION_4_21();
                _os_log_error_impl(v48, v49, v50, v51, v52, v53);
              }

              if (!OUTLINED_FUNCTION_99())
              {
                goto LABEL_35;
              }

              RawValuesString = CFSetCreateRawValuesString(*(v12 + 16), 0);
              if (gLogObjects && gNumLogObjects >= 40)
              {
                v22 = *(gLogObjects + 312);
              }

              else
              {
                v22 = &_os_log_default;
                if (OUTLINED_FUNCTION_19_0())
                {
                  OUTLINED_FUNCTION_52_6(3.8521e-34);
                  OUTLINED_FUNCTION_4_21();
                  _os_log_error_impl(v54, v55, v56, v57, v58, v59);
                }
              }

              if (OUTLINED_FUNCTION_99())
              {
                v80 = 138412290;
                v81 = RawValuesString;
                OUTLINED_FUNCTION_30_7(&_mh_execute_header, v22, v23, "communicationsUpdates.subscriptionList:\n%@", &v80);
                if (!RawValuesString)
                {
LABEL_28:
                  v24 = gLogObjects;
                  v25 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 40)
                  {
                    v26 = *(gLogObjects + 312);
                  }

                  else
                  {
                    v26 = &_os_log_default;
                    if (OUTLINED_FUNCTION_18())
                    {
                      v80 = 134218240;
                      v81 = v24;
                      v82 = 1024;
                      v83 = v25;
                      OUTLINED_FUNCTION_4_21();
                      _os_log_error_impl(v60, v61, v62, v63, v64, v65);
                    }
                  }

                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    v80 = 138412290;
                    v81 = v2;
                    OUTLINED_FUNCTION_30_7(&_mh_execute_header, v26, v27, "commStatus:\n%@", &v80);
                  }

LABEL_35:
                  if (Count >= 1)
                  {
                    v28 = 0;
                    v78 = @"HoldAvailable";
                    v77 = @"MergeAvailable";
                    v76 = @"SwapAvailable";
                    v75 = @"HoldAndAcceptAvailable";
                    v74 = @"EndAndAcceptAvailable";
                    v73 = @"InitiateCallAvailable";
                    v72 = @"NewVoicemailCount";
                    v71 = @"CurrentCallCount";
                    v70 = @"MuteStatus";
                    v69 = @"FaceTimeVideoEnabled";
                    v68 = @"FaceTimeAudioEnabled";
                    v67 = @"TelephonyEnabled";
                    v66 = @"CellularSupported";
                    do
                    {
                      v29 = *v19++;
                      switch(v29)
                      {
                        case 0:
                          CFDictionaryGetValue(v2, @"SignalStrength");
                          v30 = OUTLINED_FUNCTION_8();
                          v33 = 0;
                          goto LABEL_55;
                        case 1:
                          CFDictionaryGetValue(v2, @"RegistrationStatus");
                          v30 = OUTLINED_FUNCTION_8();
                          v33 = 1;
                          goto LABEL_55;
                        case 2:
                          CFDictionaryGetValue(v2, @"AirplaneModeStatus");
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 2;
                          goto LABEL_57;
                        case 3:
                          CFDictionaryGetValue(v2, @"TTYStatus");
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 3;
                          goto LABEL_57;
                        case 4:
                          CFDictionaryGetValue(v2, @"CarrierName");
                          v38 = OUTLINED_FUNCTION_8();
                          v41 = iAP2MsgAddCFStringParam(v38, v39, 4, v40);
                          goto LABEL_58;
                        case 5:
                          CFDictionaryGetValue(v2, v66);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 5;
                          goto LABEL_57;
                        case 6:
                          CFDictionaryGetValue(v2, v67);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 6;
                          goto LABEL_57;
                        case 7:
                          CFDictionaryGetValue(v2, v68);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 7;
                          goto LABEL_57;
                        case 8:
                          CFDictionaryGetValue(v2, v69);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 8;
                          goto LABEL_57;
                        case 9:
                          CFDictionaryGetValue(v2, v70);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 9;
                          goto LABEL_57;
                        case 10:
                          CFDictionaryGetValue(v2, v71);
                          v30 = OUTLINED_FUNCTION_8();
                          v33 = 10;
                          goto LABEL_55;
                        case 11:
                          CFDictionaryGetValue(v2, v72);
                          v30 = OUTLINED_FUNCTION_8();
                          v33 = 11;
LABEL_55:
                          v41 = iAP2MsgAddCFU8Param(v30, v31, v33, v32);
                          goto LABEL_58;
                        case 12:
                          CFDictionaryGetValue(v2, v73);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 12;
                          goto LABEL_57;
                        case 13:
                          CFDictionaryGetValue(v2, v74);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 13;
                          goto LABEL_57;
                        case 14:
                          CFDictionaryGetValue(v2, v75);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 14;
                          goto LABEL_57;
                        case 15:
                          CFDictionaryGetValue(v2, v76);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 15;
                          goto LABEL_57;
                        case 16:
                          CFDictionaryGetValue(v2, v77);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 16;
                          goto LABEL_57;
                        case 17:
                          CFDictionaryGetValue(v2, v78);
                          v34 = OUTLINED_FUNCTION_8();
                          v37 = 17;
LABEL_57:
                          v41 = iAP2MsgAddCFBooleanParam(v34, v35, v37, v36);
LABEL_58:
                          if (v41)
                          {
                            ++v28;
                          }

                          break;
                        default:
                          break;
                      }

                      --Count;
                    }

                    while (Count);
                    if (v28)
                    {
                      OUTLINED_FUNCTION_53_2();
                    }
                  }

                  goto LABEL_63;
                }
              }

              else if (!RawValuesString)
              {
                goto LABEL_28;
              }

              CFRelease(RawValuesString);
              goto LABEL_28;
            }
          }
        }
      }
    }
  }

LABEL_63:
  OUTLINED_FUNCTION_29();
}

void iap2_communications_recentsListUpdateHandler(void *result, uint64_t a2)
{
  if (result && *result)
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_17())
    {
      *v21 = 134218240;
      *&v21[4] = v4;
      OUTLINED_FUNCTION_3();
      *&v21[14] = v5;
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v15, v16, v17, v18, v19, v20);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v8 = result[1];
      *v21 = 138412290;
      *&v21[4] = v8;
      OUTLINED_FUNCTION_43_7(&_mh_execute_header, v6, v7, "Received recents list update for endpoint: %@", v21);
    }

    Feature = iap2_feature_getFeature(result, 6u);
    if (Feature)
    {
      if ((*(Feature + 42) & 1) == 0)
      {
        _recentsListUpdateHandler(result, a2, 0, v10, v11, v12, v13, v14, *v21, *&v21[8], *&v21[16], v22, v23, v24, v25, v26, v27, v28, vars0, vars8);
      }
    }
  }
}

void _recentsListUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  if (!v23)
  {
    goto LABEL_118;
  }

  OUTLINED_FUNCTION_50();
  if (!v26)
  {
    goto LABEL_118;
  }

  v27 = v25;
  v28 = v24;
  v29 = OUTLINED_FUNCTION_34_4();
  Feature = iap2_feature_getFeature(v29, v30);
  if (!Feature)
  {
    goto LABEL_118;
  }

  v32 = Feature;
  if (*(Feature + 67) != 1)
  {
    goto LABEL_118;
  }

  if (*(Feature + 66))
  {
    v33 = &audioProductCerts_endpoint_publish_onceToken;
    v34 = &audioProductCerts_endpoint_publish_onceToken;
    v35 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_6_32(3.8521e-34);
      *v188 = v35;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v62, v63, v64, v65, v66, v67);
    }

    v36 = OUTLINED_FUNCTION_66_2();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = "YES";
      if (!v28)
      {
        v38 = "NO";
      }

      v186 = 136315138;
      *v187 = v38;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_73_0(v39, v40, v41, v42, v43);
    }

    v44 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_6_32(3.8521e-34);
      *v188 = v44;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v68, v69, v70, v71, v72, v73);
    }

    v45 = OUTLINED_FUNCTION_66_2();
    if (os_log_type_enabled(v45, v46))
    {
      if (v28)
      {
        Count = CFArrayGetCount(v28);
      }

      else
      {
        Count = 0;
      }

      v186 = 134217984;
      *v187 = Count;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_73_0(v48, v49, v50, v51, v52);
    }

    if (!v28)
    {
      OUTLINED_FUNCTION_3_32();
      v53 = OUTLINED_FUNCTION_6_11();
      if (iAP2MsgAddU8Param(v53, v54, 0, 0))
      {
        OUTLINED_FUNCTION_53_2();
      }

      goto LABEL_118;
    }

    v55 = _calculateListCap_0(v20, v32, v28, 0);
    OUTLINED_FUNCTION_3_32();
    v56 = OUTLINED_FUNCTION_6_11();
    v58 = iAP2MsgAddU8Param(v56, v57, 0, 1);
    v59 = v58;
    if (*(v32 + 44) == 1)
    {
      v60 = OUTLINED_FUNCTION_6_11();
      if (!(iAP2MsgAddU16Param(v60, v61, 2, v55) | v59))
      {
        goto LABEL_31;
      }
    }

    else if (!v58)
    {
LABEL_31:
      if (*(v32 + 45) != 1)
      {
        goto LABEL_118;
      }

      v167 = v55;
      CFSetGetCount(*(v32 + 32));
      v163 = v162;
      OUTLINED_FUNCTION_63_1();
      __chkstk_darwin(v74);
      OUTLINED_FUNCTION_27_8();
      v78 = (v76 - v77);
      v175 = v79;
      if (v79)
      {
        memset((v76 - v77), 170, v75);
      }

      v80 = *(v32 + 32);
      v169 = v78;
      CFSetGetValues(v80, v78);
      v81 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v82 = *(gLogObjects + 312);
      }

      else
      {
        v82 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          OUTLINED_FUNCTION_6_32(3.8521e-34);
          *v188 = v81;
          OUTLINED_FUNCTION_33_9();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v142, v143, v144, v145, v146, v147);
        }
      }

      if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_48;
      }

      RawValuesString = CFSetCreateRawValuesString(*(v32 + 32), 0);
      v84 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v85 = *(gLogObjects + 312);
      }

      else
      {
        v85 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          OUTLINED_FUNCTION_6_32(3.8521e-34);
          *v188 = v84;
          OUTLINED_FUNCTION_33_9();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v156, v157, v158, v159, v160, v161);
        }
      }

      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        v186 = 138412290;
        *v187 = RawValuesString;
        OUTLINED_FUNCTION_33_9();
        OUTLINED_FUNCTION_30_7(v148, v149, v150, v151, v152);
        if (!RawValuesString)
        {
          goto LABEL_48;
        }
      }

      else if (!RawValuesString)
      {
LABEL_48:
        v173 = _iAP2MessageCutoffSize_0(v20);
        OUTLINED_FUNCTION_3_32();
        if (!v167)
        {
          v170 = 1;
          goto LABEL_118;
        }

        v87 = 0;
        v168 = 0;
        v88 = 0;
        v184 = @"Occurrences";
        v176 = @"Duration";
        v183 = @"UnixTimestamp";
        v182 = @"Type";
        v164 = @"Service";
        v181 = @"AddressBookID";
        v180 = @"Label";
        v171 = v167 - 1;
        v166 = v171;
        v179 = @"DisplayName";
        v174 = v167;
        v178 = @"RemoteID";
        *&v86 = 67109120;
        v162[0] = v86;
        *&v86 = 134218240;
        v162[2] = v86;
        *&v86 = 67109376;
        v162[1] = v86;
        *&v86 = 67109632;
        v165 = v86;
        v170 = 1;
        v172 = v28;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v28, v87);
          if (ValueAtIndex)
          {
            v90 = ValueAtIndex;
            v91 = iAP2MsgAddGroupParam((v20 + 15), 1);
            if (v91)
            {
              ++v88;
            }

            v177 = v88;
            if (v175 >= 1)
            {
              v92 = v91;
              v93 = v175;
              v94 = v169;
              while (2)
              {
                v95 = *v94++;
                switch(v95)
                {
                  case 0:
                    iAP2MsgAddU16Param((v20 + 15), v92, 0, v87);
                    goto LABEL_83;
                  case 1:
                    CFDictionaryGetValue(v90, v178);
                    v99 = OUTLINED_FUNCTION_15_21();
                    v102 = 1;
                    goto LABEL_66;
                  case 2:
                    CFDictionaryGetValue(v90, v179);
                    v99 = OUTLINED_FUNCTION_15_21();
                    v102 = 2;
                    goto LABEL_66;
                  case 3:
                    CFDictionaryGetValue(v90, v180);
                    v99 = OUTLINED_FUNCTION_15_21();
                    v102 = 3;
                    goto LABEL_66;
                  case 4:
                    CFDictionaryGetValue(v90, v181);
                    v99 = OUTLINED_FUNCTION_15_21();
                    v102 = 4;
LABEL_66:
                    iAP2MsgAddCFStringParam(v99, v100, v102, v101);
                    goto LABEL_83;
                  case 5:
                    Value = CFDictionaryGetValue(v90, v164);
                    v120 = _convertACCCallServiceToiAP2CallService(Value);
                    v112 = (v20 + 15);
                    v115 = v120;
                    v113 = v92;
                    v114 = 5;
                    goto LABEL_82;
                  case 6:
                    v103 = CFDictionaryGetValue(v90, v182);
                    v185 = 0;
                    if (v103 && CFNumberGetValue(v103, kCFNumberIntType, &v185))
                    {
                      if ((v185 - 1) >= 3)
                      {
                        v116 = v34;
                        v117 = v33[491];
                        v118 = *(v116 + 984);
                        if ((!v117 || v118 < 40) && OUTLINED_FUNCTION_114())
                        {
                          OUTLINED_FUNCTION_9_23(&a9);
                          *v188 = v118;
                          OUTLINED_FUNCTION_62_2();
                          _os_log_error_impl(v125, v126, v127, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v128, 0x12u);
                        }

                        if (OUTLINED_FUNCTION_114())
                        {
                          v186 = v162[0];
                          *v187 = v185;
                          OUTLINED_FUNCTION_62_2();
                          _os_log_error_impl(v121, v122, v123, "Invalid ACCCommunications_ListUpdate_Recents_CallType_t: %d!", v124, 8u);
                        }

                        v104 = 0;
                        v33 = &audioProductCerts_endpoint_publish_onceToken;
                        v34 = &audioProductCerts_endpoint_publish_onceToken;
                      }

                      else
                      {
                        v104 = v185;
                      }
                    }

                    else
                    {
                      v104 = 0;
                    }

                    v112 = (v20 + 15);
                    v115 = v104;
                    v113 = v92;
                    v114 = 6;
                    goto LABEL_82;
                  case 7:
                    CFDictionaryGetValue(v90, v183);
                    v96 = OUTLINED_FUNCTION_15_21();
                    iAP2MsgAddCFU64Param(v96, v97, 7, v98);
                    goto LABEL_83;
                  case 8:
                    LOBYTE(v186) = 1;
                    if (!v27 || (v108 = CFDictionaryGetValue(v90, v184)) == 0 || (CFNumberGetValue(v108, kCFNumberCharType, &v186), v186 == 1))
                    {
                      CFDictionaryGetValue(v90, v176);
                      v109 = OUTLINED_FUNCTION_15_21();
                      iAP2MsgAddCFU32Param(v109, v110, 8, v111);
                    }

                    goto LABEL_83;
                  case 9:
                    if (v27)
                    {
                      CFDictionaryGetValue(v90, v184);
                      v105 = OUTLINED_FUNCTION_15_21();
                      iAP2MsgAddCFU8Param(v105, v106, 9, v107);
                    }

                    else
                    {
                      v112 = (v20 + 15);
                      v113 = v92;
                      v114 = 9;
                      v115 = 1;
LABEL_82:
                      iAP2MsgAddU8Param(v112, v113, v114, v115);
                    }

LABEL_83:
                    if (!--v93)
                    {
                      break;
                    }

                    continue;
                  default:
                    goto LABEL_83;
                }

                break;
              }
            }

            MsgLen = iAP2MsgGetMsgLen((v20 + 15));
            v130 = v33[491];
            v131 = *(v34 + 984);
            if (v130 && v131 >= 40)
            {
              v132 = *(v130 + 312);
            }

            else
            {
              v132 = &_os_log_default;
              if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_25_3(&a9);
                *v187 = v130;
                OUTLINED_FUNCTION_17_0();
                *v188 = v131;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v138, v139, v140, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v141, 0x12u);
              }
            }

            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
            {
              OUTLINED_FUNCTION_25_3(&v189);
              *v187 = MsgLen;
              OUTLINED_FUNCTION_66_3();
              *&v187[6] = v173;
              _os_log_debug_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", &v186, 0xEu);
            }

            v28 = v172;
            v133 = MsgLen > v173 || v87 == v171;
            v88 = v177;
            if (v133)
            {
              v134 = v33[491];
              v135 = gNumLogObjects;
              if (v134 && gNumLogObjects >= 40)
              {
                v136 = *(v134 + 312);
              }

              else
              {
                v136 = &_os_log_default;
                if (OUTLINED_FUNCTION_19_0())
                {
                  OUTLINED_FUNCTION_9_23(&a9);
                  *v188 = v135;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v186, 0x12u);
                }
              }

              if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
              {
                v137 = v168 + 1;
                OUTLINED_FUNCTION_30_9(v168, *&v165);
                *&v188[2] = v167;
                _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "Sending ListUpdate message (RecentsList %d, entry: %d/%d)", &v186, 0x14u);
                v168 = v137;
              }

              v33 = &audioProductCerts_endpoint_publish_onceToken;
              v34 = &audioProductCerts_endpoint_publish_onceToken;
              if (!v88)
              {
                goto LABEL_109;
              }

              v170 &= OUTLINED_FUNCTION_53_2();
              if (v87 < v166)
              {
                OUTLINED_FUNCTION_3_32();
LABEL_109:
                v88 = 0;
              }
            }

            else
            {
              v34 = &audioProductCerts_endpoint_publish_onceToken;
            }
          }

          if (++v87 == v174)
          {
            goto LABEL_118;
          }
        }
      }

      CFRelease(RawValuesString);
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_53_2();
    goto LABEL_31;
  }

  v153 = logObjectForModule_37();
  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v186) = 0;
    OUTLINED_FUNCTION_74_3(&_mh_execute_header, v154, v155, "Accessory is not paired to CarPlay, list updates are unavailable!");
  }

LABEL_118:
  OUTLINED_FUNCTION_29();
}

void iap2_communications_recentsListUpdateCoalescedHandler(void *a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_17())
    {
      *v21 = 134218240;
      *&v21[4] = v4;
      OUTLINED_FUNCTION_3();
      *&v21[14] = v5;
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v15, v16, v17, v18, v19, v20);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v8 = a1[1];
      *v21 = 138412290;
      *&v21[4] = v8;
      OUTLINED_FUNCTION_43_7(&_mh_execute_header, v6, v7, "Received recents list update (coalesced) for endpoint: %@", v21);
    }

    Feature = iap2_feature_getFeature(a1, 6u);
    if (Feature)
    {
      if (*(Feature + 42) == 1)
      {
        _recentsListUpdateHandler(a1, a2, 1, v10, v11, v12, v13, v14, *v21, *&v21[8], *&v21[16], v22, v23, v24, v25, v26, v27, v28, vars0, vars8);
      }
    }
  }
}

void iap2_communications_favoritesListUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  if (!v23)
  {
    goto LABEL_98;
  }

  OUTLINED_FUNCTION_50();
  if (!v25)
  {
    goto LABEL_98;
  }

  v26 = v24;
  v27 = OUTLINED_FUNCTION_34_4();
  Feature = iap2_feature_getFeature(v27, v28);
  if (!Feature)
  {
    goto LABEL_98;
  }

  v30 = Feature;
  if (*(Feature + 67) != 1)
  {
    goto LABEL_98;
  }

  if (*(Feature + 66))
  {
    v31 = &audioProductCerts_endpoint_publish_onceToken;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v32 = *(gLogObjects + 312);
    }

    else
    {
      v32 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_10_19(3.8521e-34);
        OUTLINED_FUNCTION_13_16();
        _os_log_error_impl(v48, v49, v50, v51, v52, v53);
      }
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v34 = "YES";
      if (!v26)
      {
        v34 = "NO";
      }

      v132 = 136315138;
      *v133 = v34;
      OUTLINED_FUNCTION_73_0(&_mh_execute_header, v32, v33, "favoritesListAvailable: %s", &v132);
    }

    if (gLogObjects && gNumLogObjects >= 40)
    {
      v35 = *(gLogObjects + 312);
    }

    else
    {
      v35 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_10_19(3.8521e-34);
        OUTLINED_FUNCTION_13_16();
        _os_log_error_impl(v54, v55, v56, v57, v58, v59);
      }
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      if (v26)
      {
        Count = CFArrayGetCount(v26);
      }

      else
      {
        Count = 0;
      }

      v132 = 134217984;
      *v133 = Count;
      OUTLINED_FUNCTION_73_0(&_mh_execute_header, v35, v36, "favoritesListCount: %ld", &v132);
    }

    if (!v26)
    {
      OUTLINED_FUNCTION_3_32();
      v38 = OUTLINED_FUNCTION_6_11();
      if (iAP2MsgAddU8Param(v38, v39, 5, 0))
      {
        OUTLINED_FUNCTION_53_2();
      }

      goto LABEL_98;
    }

    v40 = _calculateListCap_0(v20, v30, v26, 1);
    OUTLINED_FUNCTION_3_32();
    v41 = OUTLINED_FUNCTION_6_11();
    v43 = iAP2MsgAddU8Param(v41, v42, 5, 1);
    v44 = v43;
    if (*(v30 + 59) == 1)
    {
      v45 = OUTLINED_FUNCTION_6_11();
      v46 = v40;
      if (!(iAP2MsgAddU16Param(v45, v47, 7, v40) | v44))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v46 = v40;
      if (!v43)
      {
LABEL_33:
        if (*(v30 + 60) != 1)
        {
          goto LABEL_98;
        }

        CFSetGetCount(*(v30 + 48));
        v117 = v116;
        OUTLINED_FUNCTION_63_1();
        __chkstk_darwin(v60);
        OUTLINED_FUNCTION_27_8();
        v64 = (v62 - v63);
        v127 = v65;
        if (v65)
        {
          memset((v62 - v63), 170, v61);
        }

        v66 = *(v30 + 48);
        v123 = v64;
        CFSetGetValues(v66, v64);
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v67 = *(gLogObjects + 312);
        }

        else
        {
          v67 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_10_19(3.8521e-34);
            OUTLINED_FUNCTION_13_16();
            _os_log_error_impl(v101, v102, v103, v104, v105, v106);
          }
        }

        if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_50;
        }

        RawValuesString = CFSetCreateRawValuesString(*(v30 + 48), 0);
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v69 = *(gLogObjects + 312);
        }

        else
        {
          v69 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_10_19(3.8521e-34);
            OUTLINED_FUNCTION_13_16();
            _os_log_error_impl(v110, v111, v112, v113, v114, v115);
          }
        }

        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v132 = 138412290;
          *v133 = RawValuesString;
          OUTLINED_FUNCTION_30_7(&_mh_execute_header, v69, v70, "subscriptionListString:\n%@", &v132);
          if (!RawValuesString)
          {
            goto LABEL_50;
          }
        }

        else if (!RawValuesString)
        {
LABEL_50:
          v125 = _iAP2MessageCutoffSize_0(v20);
          OUTLINED_FUNCTION_3_32();
          if (!v46)
          {
            goto LABEL_98;
          }

          v72 = 0;
          v122 = 0;
          v128 = 0;
          v118 = @"Service";
          v131 = @"AddressBookID";
          v130 = @"Label";
          v129 = @"DisplayName";
          v124 = v46 - 1;
          v121 = v124;
          v120 = v46;
          v126 = v46;
          v73 = 1;
          *&v71 = 67109376;
          v116[1] = v71;
          *&v71 = 67109632;
          v119 = v71;
          *&v71 = 134218240;
          v116[0] = v71;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v26, v72);
            if (!ValueAtIndex)
            {
              goto LABEL_90;
            }

            v75 = ValueAtIndex;
            v76 = v31;
            v77 = iAP2MsgAddGroupParam((v20 + 15), 6);
            v78 = v128;
            if (v77)
            {
              v78 = v128 + 1;
            }

            v128 = v78;
            if (v127 >= 1)
            {
              v79 = v77;
              v80 = v127;
              v81 = v123;
              do
              {
                v82 = *v81++;
                switch(v82)
                {
                  case 0:
                    iAP2MsgAddU16Param((v20 + 15), v79, 0, v72);
                    break;
                  case 1:
                    CFDictionaryGetValue(v75, @"RemoteID");
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 1;
                    goto LABEL_63;
                  case 2:
                    CFDictionaryGetValue(v75, v129);
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 2;
                    goto LABEL_63;
                  case 3:
                    CFDictionaryGetValue(v75, v130);
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 3;
                    goto LABEL_63;
                  case 4:
                    CFDictionaryGetValue(v75, v131);
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 4;
LABEL_63:
                    iAP2MsgAddCFStringParam(v83, v85, v86, v84);
                    break;
                  case 5:
                    Value = CFDictionaryGetValue(v75, v118);
                    v88 = _convertACCCallServiceToiAP2CallService(Value);
                    iAP2MsgAddU8Param((v20 + 15), v79, 5, v88);
                    break;
                  default:
                    break;
                }

                --v80;
              }

              while (v80);
            }

            MsgLen = iAP2MsgGetMsgLen((v20 + 15));
            v90 = gLogObjects;
            v91 = *(v76 + 984);
            if (gLogObjects && v91 >= 40)
            {
              v92 = *(gLogObjects + 312);
            }

            else
            {
              v92 = &_os_log_default;
              if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_25_3(&a15);
                *v133 = v90;
                OUTLINED_FUNCTION_17_0();
                *v134 = v91;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v97, v98, v99, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v100, 0x12u);
              }
            }

            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              OUTLINED_FUNCTION_25_3(&a17);
              *v133 = MsgLen;
              OUTLINED_FUNCTION_66_3();
              *&v133[6] = v125;
              _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", &v132, 0xEu);
            }

            v93 = MsgLen > v125 || v72 == v124;
            v31 = v76;
            if (!v93)
            {
              goto LABEL_90;
            }

            v94 = *(v76 + 984);
            if (gLogObjects && v94 >= 40)
            {
              v95 = *(gLogObjects + 312);
            }

            else
            {
              v95 = &_os_log_default;
              if (OUTLINED_FUNCTION_27())
              {
                OUTLINED_FUNCTION_6_32(*v116);
                *v134 = v94;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v132, 0x12u);
              }
            }

            if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
            {
              v96 = v122 + 1;
              OUTLINED_FUNCTION_30_9(v122, *&v119);
              *&v134[2] = v120;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Sending ListUpdate message (FavoritesList %d, entry: %d/%d)", &v132, 0x14u);
              v122 = v96;
            }

            if (!v128)
            {
              goto LABEL_89;
            }

            v73 &= OUTLINED_FUNCTION_53_2();
            if (v72 < v121)
            {
              break;
            }

LABEL_90:
            if (++v72 == v126)
            {
              goto LABEL_98;
            }
          }

          OUTLINED_FUNCTION_3_32();
LABEL_89:
          v128 = 0;
          goto LABEL_90;
        }

        CFRelease(RawValuesString);
        goto LABEL_50;
      }
    }

    OUTLINED_FUNCTION_53_2();
    goto LABEL_33;
  }

  v107 = logObjectForModule_37();
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v132) = 0;
    OUTLINED_FUNCTION_74_3(&_mh_execute_header, v108, v109, "Accessory is not paired to CarPlay, list updates are unavailable!");
  }

LABEL_98:
  OUTLINED_FUNCTION_29();
}

uint64_t _calculateListCap_0(void *a1, uint64_t a2, const __CFArray *a3, int a4)
{
  if (a1)
  {
    v5 = 50;
    if (a2 && *a1)
    {
      isIdentifiedForCarPlay = iap2_identification_isIdentifiedForCarPlay(a1);
      v9 = 56;
      if (!a4)
      {
        v9 = 40;
      }

      v10 = *(a2 + v9);
      Count = CFArrayGetCount(a3);
      if (isIdentifiedForCarPlay)
      {
        v12 = 12;
      }

      else
      {
        v12 = 50;
      }

      if (v12 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v12;
      }

      v14 = v13;
      if (v13 >= v10)
      {
        v14 = v10;
      }

      if (v10)
      {
        v5 = v14;
      }

      else
      {
        v5 = v13;
      }

      if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v20, v21, v22, v23, v24, v25);
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v16, v17, OS_LOG_TYPE_DEBUG, v18, v19, 0x1Eu);
      }
    }
  }

  else
  {
    return 50;
  }

  return v5;
}

const __CFNumber *_convertACCCallServiceToiAP2CallService(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    if (result)
    {
      result = valuePtr;
      if (valuePtr - 1 >= 3)
      {
        v1 = gLogObjects;
        v2 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 40) && OUTLINED_FUNCTION_13())
        {
          v15 = 134218240;
          v16 = v1;
          v17 = 1024;
          v18 = v2;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v8, v9, v10, v11, v12, v13);
        }

        result = OUTLINED_FUNCTION_13();
        if (result)
        {
          v15 = 67109120;
          LODWORD(v16) = valuePtr;
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t iap2_communications_carPlayPairedVehiclesDidChangeHandler(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50();
    if (v3)
    {
      v4 = v2;
      v5 = OUTLINED_FUNCTION_34_4();
      Feature = iap2_feature_getFeature(v5, v6);
      if (Feature)
      {
        v8 = Feature;
        if ((v4 & 1) == 0)
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v11 = *(gLogObjects + 312);
          }

          else
          {
            v11 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              v39 = 134218240;
              v40 = v9;
              OUTLINED_FUNCTION_3();
              v41 = v10;
              OUTLINED_FUNCTION_13_16();
              _os_log_error_impl(v33, v34, v35, v36, v37, v38);
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v39) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CarPlay paired vehicles did change!", &v39, 2u);
          }
        }

        v12 = iap2_accAuthentication_copyCertificateSerial(v1);
        if (v12)
        {
          v13 = v12;
          isCarPlayPairedWithCertSerial = platform_CarPlay_isCarPlayPairedWithCertSerial(v12);
          CFRelease(v13);
          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v17 = *(gLogObjects + 312);
          }

          else
          {
            v17 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              v39 = 134218240;
              v40 = v15;
              OUTLINED_FUNCTION_3();
              v41 = v16;
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v27, v28, v29, v30, v31, v32);
            }
          }

          v18 = OUTLINED_FUNCTION_66_2();
          if (os_log_type_enabled(v18, v19))
          {
            v21 = "NO";
            if (isCarPlayPairedWithCertSerial)
            {
              v21 = "YES";
            }

            v39 = 136315138;
            v40 = v21;
            OUTLINED_FUNCTION_73_0(&_mh_execute_header, v17, v20, "carPlayPaired: %s", &v39);
          }

          if (v8[66] != isCarPlayPairedWithCertSerial || v4)
          {
            v8[66] = isCarPlayPairedWithCertSerial;
            if (!isCarPlayPairedWithCertSerial || (v4 & 1) != 0)
            {
              OUTLINED_FUNCTION_3_32();
              v22 = OUTLINED_FUNCTION_6_11();
              iAP2MsgAddU8Param(v22, v23, 0, 0);
              OUTLINED_FUNCTION_53_2();
              OUTLINED_FUNCTION_3_32();
              v24 = OUTLINED_FUNCTION_6_11();
              iAP2MsgAddU8Param(v24, v25, 5, 0);
              OUTLINED_FUNCTION_53_2();
            }

            else
            {
              if (v8[46] == 1)
              {
                platform_communications_triggerListUpdate(0, v8[42]);
              }

              if (v8[61] == 1)
              {
                platform_communications_triggerListUpdate(1, 0);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void *_createFeature_20(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0x48uLL, 0x10600405CCB10DDuLL);
  v2 = v1;
  if (v1)
  {
    *v1 = 0;
    v1[1] = 0;
    *(v1 + 8) = 1;
    *(v1 + 1) = 0u;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    v1[8] = 0;
    platform_communications_incrementUserCount();
  }

  return v2;
}

void **_destroyFeature_20(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      for (i = 0; i != 4; ++i)
      {
        _removeSubscriberForSubFeature(v2, i);
      }

      platform_communications_decrementUserCount();
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }

      v4 = *(v2 + 16);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 16) = 0;
      }

      v5 = *(v2 + 32);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 32) = 0;
      }

      v6 = *(v2 + 48);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 48) = 0;
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

uint64_t _checkIdentificationInfo_22(uint64_t a1)
{
  v9 = 0;
  result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgCallStateList, 3, &v9);
  if (!result)
  {
    v3 = v9;
    result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgCommunicationsList, 3, &v9);
    if (!result)
    {
      v4 = v9;
      result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgCallControlList, 11, &v9);
      if (!result)
      {
        v5 = v9;
        result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgListUpdatesList, 3, &v9);
        if (!result)
        {
          if (v4 | v3 | v5 | v9)
          {
            v6 = OUTLINED_FUNCTION_34_4();
            iap2_features_createFeature(v6, v7);
            v8 = OUTLINED_FUNCTION_34_4();
            iap2_identification_setIdentifiedForFeature(v8);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void _startListUpdatesHandler_cold_2(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_3(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_4(uint64_t a1, uint64_t a2)
{
  v3 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v3))
  {
    iAP2MsgGetMsgID(a2);
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x14u);
  }
}

void _startListUpdatesHandler_cold_5(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_6(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_7(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_8(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_9(uint64_t a1, uint64_t a2)
{
  v3 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v3))
  {
    iAP2MsgGetMsgID(a2);
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x14u);
  }
}

void _startListUpdatesHandler_cold_10(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void iAP2MsgGetNextParamWithError_cold_1(int a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "iAP2MsgGetNextParamWithError";
  v4 = 1024;
  v5 = 427;
  v6 = 1024;
  v7 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%d reached end of message buffer (%d bytes)\n", &v2, 0x18u);
}

void iAP2MsgGetNextParamWithError_cold_3(int a1, int a2, os_log_t log)
{
  v3 = 136315906;
  v4 = "iAP2MsgGetNextParamWithError";
  v5 = 1024;
  v6 = 422;
  v7 = 1024;
  v8 = a1;
  v9 = 1024;
  v10 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:%d reached end of parameter (%d bytes), grplen %d\n", &v3, 0x1Eu);
}

void _getSystemPluginInstance_cold_2(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformSystemPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#System] Could not find plugin conforming to %@!", &v3, 0xCu);
}

id _dataToUTF8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 length], (v4 = malloc_type_malloc((v3 + 1), 0x5503F490uLL)) != 0))
  {
    v5 = v4;
    memcpy(v4, [v2 bytes], v3);
    v3[v5] = 0;
    v6 = [NSString stringWithUTF8String:v5];
    free(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_1()
{
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_2(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 67109120;
  v3[1] = a1;
  OUTLINED_FUNCTION_3_33(&_mh_execute_header, &_os_log_default, a3, "Failed to retrieve next TLV!!! err %d", v3);
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_3(uint8_t *a1, int a2, _DWORD *a3)
{
  *a1 = 67109120;
  *a3 = a2;
  OUTLINED_FUNCTION_3_33(&_mh_execute_header, &_os_log_default, a3, "Failed to retrieve next TLV!!! err %d", a1);
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_4()
{
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _genericMFi_util_createTLVDescriptionForMessage_cold_1()
{
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _genericMFi_util_createTLVDescriptionForMessage_cold_4()
{
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void mfi4Auth_util_unpackFromTunnelDataiAP2Msg_cold_2(uint64_t a1, NSObject *a2)
{
  v4[0] = 67109376;
  v4[1] = iAP2MsgGetMsgID(a1);
  v5 = 1024;
  MsgLen = iAP2MsgGetMsgLen(a1);
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "mfi4Auth_util_unpackFromTunnelDataiAP2Msg: message 0x%04X, length %d", v4, 0xEu);
}

void *accAuthProtocol_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040E8ABEAB4uLL);
    if (v2)
    {
      v3 = dispatch_queue_create("ACCAuthProtocolQ", 0);
      v2[7] = v3;
      if (v3)
      {
        dispatch_set_context(v3, v2);
        dispatch_set_finalizer_f(v2[7], _accAuthProtocol_endpoint_dispatchQueueFinalizer);
        *v2 = a1;
        _accAuthProtocol_endpoint_initSession(v2);
        v4 = acc_auth_protocol_maxSizeofMessageData();
        *(v2 + 8) = v4;
        v2[3] = malloc_type_calloc(1uLL, v4, 0x1000040931E79F6uLL);
        *(v2 + 72) = 0;
      }
    }
  }

  else
  {
    v6 = logObjectForModule_1(0x36u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      OUTLINED_FUNCTION_5_32(&_mh_execute_header, v7, v8, "pProtocolEndpoint = NULL", v9);
    }

    return 0;
  }

  return v2;
}

uint64_t accAuthProtocol_endpoint_publish(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  result = *result;
  if (!result)
  {
    return result;
  }

  Protocol = acc_endpoint_getProtocol(result);
  v5 = acc_policies_allowACCAuthProtocolOnTransport(*(*v2 + 24));
  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v8 = *(gLogObjects + 432);
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v54 = v6;
      *&v54[8] = 1024;
      *v55 = v7;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*v2 + 24);
    *buf = 67109376;
    *v54 = v10;
    *&v54[4] = 1024;
    *&v54[6] = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accAuthProtocol publish: transportType %{coreacc:ACCEndpoint_TransportType_t}d, allowed %d ", buf, 0xEu);
  }

  if (Protocol != 10)
  {
    return 0;
  }

  isPublished = acc_endpoint_isPublished(*v2);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
  if (*v2)
  {
    v13 = *(*v2 + 16);
  }

  else
  {
    v13 = 0;
  }

  cf = Mutable;
  CFArrayAppendValue(Mutable, v13);
  v14 = acc_accInfo_copyAccessoryInfoDictionary(a2);
  if (v14)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v14);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v16 = MutableCopy;
  valuePtr = *(*(v2 + 16) + 1132);
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"NegotiatedAuthType", v17);
  v51 = *(*(v2 + 16) + 1128);
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v51);
  CFDictionaryAddValue(v16, @"NegotiatedCharacteristics", v18);
  AuthStatus = acc_connection_getAuthStatus(**v2, 1u);
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v20 = *(gLogObjects + 432);
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_23();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(v2 + 16);
    v22 = *(v21 + 1132);
    LODWORD(v21) = *(v21 + 1128);
    *buf = 67110146;
    *v54 = isPublished;
    *&v54[4] = 1024;
    *&v54[6] = v22;
    *v55 = 1024;
    *&v55[2] = v21;
    v56 = 2112;
    v57 = v16;
    v58 = 1024;
    v59 = AuthStatus;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "accAuthProtocol publish: wasPublished = %d, authType %d, characteristics %#10x, accInfoDict = %@, curAuthStatus %d ", buf, 0x24u);
  }

  if (AuthStatus == 1)
  {
    v23 = isPublished;
  }

  else
  {
    v23 = 0;
  }

  if (v23 == 1)
  {
    if (*(v2 + 8) == 1)
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v24 = *(gLogObjects + 432);
      }

      else
      {
        v24 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_9_24();
          OUTLINED_FUNCTION_10(v43, v44, v45, v46, v47);
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_8_26();
        *buf = 67109120;
        *v54 = v38;
        OUTLINED_FUNCTION_9_24();
        _os_log_debug_impl(v39, v40, OS_LOG_TYPE_DEBUG, v41, v42, 8u);
      }

      _accAuthProtocol_endpoint_cleanupSession(v2);
    }

    _accAuthProtocol_endpoint_initSession(v2);
    if (!OUTLINED_FUNCTION_7_27())
    {
      LOBYTE(isPublished) = 0;
      goto LABEL_47;
    }

    goto LABEL_69;
  }

  if (!OUTLINED_FUNCTION_7_27())
  {
    goto LABEL_47;
  }

  if ((isPublished & 1) == 0)
  {
LABEL_69:
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v27 = *(gLogObjects + 104);
    }

    else
    {
      v27 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_23();
        OUTLINED_FUNCTION_9_24();
        OUTLINED_FUNCTION_10(v29, v30, v31, v32, v33);
      }
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v54 = "accAuthProtocol_endpoint_publish";
      *&v54[8] = 1024;
      *v55 = 2;
      OUTLINED_FUNCTION_9_24();
      _os_log_impl(v34, v35, OS_LOG_TYPE_DEFAULT, v36, v37, 0x12u);
    }

    accAuthProtocol_endpoint_notifyAuthStatus(v2, 2);
    LOBYTE(isPublished) = 0;
    goto LABEL_35;
  }

  LOBYTE(isPublished) = 1;
LABEL_35:
  if (*(v2 + 8) == 1 && (acc_userDefaults_BOOLForKey(@"DontSkipInductiveAuthOnCTA") & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v25 = *(gLogObjects + 432);
    }

    else
    {
      v25 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_23();
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_8_26();
      *buf = 67109120;
      *v54 = v48;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "accAuthProtocol publish: acc_auth_protocol_endSession sessionID %d", buf, 8u);
    }

    _accAuthProtocol_endpoint_cleanupSession(v2);
  }

LABEL_47:
  if (OUTLINED_FUNCTION_7_27())
  {
    v26 = acc_userDefaults_BOOLForKey(@"DontSkipInductiveAuthOnCTA") & v5;
  }

  else
  {
    v26 = v5;
  }

  if (!(isPublished & 1 | ((v26 & 1) == 0)) && *(v2 + 8) == 1)
  {
    if (*(*v2 + 24) == 13)
    {
      if (accAuthProtocol_endpoint_publish_onceToken == -1)
      {
        if (!v14)
        {
          goto LABEL_59;
        }
      }

      else
      {
        dispatch_once(&accAuthProtocol_endpoint_publish_onceToken, &__block_literal_global_37);
        if (!v14)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_58;
    }

    _accAuthProtocol_endpoint_sendAuthSetupStart(v2);
  }

  if (v14)
  {
LABEL_58:
    CFRelease(v14);
  }

LABEL_59:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 1;
}

void accAuthProtocol_endpoint_notifyAuthStatus(uint64_t *result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = *result;
      if (*result)
      {
        CFAbsoluteTimeGetCurrent();
        if (a2 == 3)
        {
          acc_platform_packetLogging_logEvent(v3, "AUTH TIMEOUT", "ACCAuthProtocol accessory authentication Timed Out! (in %lf seconds)");
        }

        else if (a2 == 2)
        {
          acc_platform_packetLogging_logEvent(v3, "AUTH PASSED", "ACCAuthProtocol accessory authentication Passed! (in %lf seconds)");
        }

        else
        {
          acc_platform_packetLogging_logEvent(v3, "AUTH FAILED", "ACCAuthProtocol accessory authentication Failed! (in %lf seconds)");
        }

        if (*(v3 + 24) == 13)
        {

          acc_endpoint_setProperty();
        }
      }
    }
  }
}

uint64_t accAuthProtocol_endpoint_destroy(uint64_t **a1)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  acc_platform_packetLogging_logEvent(**a1, "DETACH", "ACCAuthProtocol accessory detached!");
  v2 = (*a1)[7];
  (*a1)[7] = 0;
  v3 = *a1;
  v4 = 1;
  *(v3 + 72) = 1;
  *a1 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __accAuthProtocol_endpoint_destroy_block_invoke;
  block[3] = &__block_descriptor_tmp_11_0;
  block[4] = v3;
  dispatch_sync(v2, block);
  dispatch_release(v2);
  return v4;
}

uint64_t accAuthProtocol_endpoint_processIncomingData(uint64_t result, CFTypeRef cf)
{
  if (result)
  {
    v2 = result;
    if (!*result || !*(result + 16) || *(result + 8) != 1)
    {
      return 0;
    }

    if (*(result + 72) != 1)
    {
      if (cf)
      {
        CFRetain(cf);
        v4 = *(v2 + 56);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 0x40000000;
        v8[2] = __accAuthProtocol_endpoint_processIncomingData_block_invoke;
        v8[3] = &__block_descriptor_tmp_12_0;
        v8[4] = v2;
        v8[5] = cf;
        dispatch_async(v4, v8);
        return 1;
      }

      return 0;
    }

    v5 = logObjectForModule_1(0x36u);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v9 = 0;
      OUTLINED_FUNCTION_5_32(&_mh_execute_header, v6, v7, "protocol shutting down", v9);
      return 0;
    }
  }

  return result;
}

uint64_t _accAuthProtocol_endpoint_processIncomingData(uint64_t a1, const __CFData *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = gLogObjects;
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v8 = *(gLogObjects + 432);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v48 = v6;
          OUTLINED_FUNCTION_2_1();
          *&v48[10] = v7;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_4_34();
        *&v48[10] = 2112;
        *&v48[12] = a2;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "accAuthProtocol processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d sessionID %d, dataIn %@", buf, 0x18u);
      }

      if (!acc_policies_allowACCAuthProtocolOnTransport(*(v5 + 24)))
      {
        return 0;
      }

      if (acc_policies_allowACCAuthProtocolOnAllTransport() && (__s2 = 39190527, v45 = -22016, v46 = 84, v9 = CFDataGetBytePtr(a2), v10 = CFDataGetLength(a2), v9) && v10 >= 6 && (v10 >= 7 && !memcmp(v9, &__s2, 7uLL) || !memcmp(v9, &__s2 + 1, 6uLL)))
      {
        v35 = gLogObjects;
        v36 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v37 = *(gLogObjects + 112);
        }

        else
        {
          v37 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v48 = v35;
            OUTLINED_FUNCTION_2_1();
            *&v48[10] = v36;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(v5 + 28);
          v41 = *(v5 + 16);
          *buf = 67109378;
          *v48 = v40;
          *&v48[4] = 2112;
          *&v48[6] = v41;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Protocol %{coreacc:ACCEndpoint_Protocol_t}d... got DETECT for endpoint %@! don't propagate.", buf, 0x12u);
        }

        return accAuthProtocol_endpoint_publish(*(v5 + 56), *(v5 + 64));
      }

      else
      {
        if (*v5 && *(a1 + 48))
        {
          platform_connectionInfo_handleInterceptData(*(v5 + 8), *(v5 + 16), a2);
          v11 = *(a1 + 48);
          v12 = __OFSUB__(v11, 1);
          v13 = v11 - 1;
          if (v13 < 0 == v12)
          {
            v3 = 0;
            *(a1 + 48) = v13;
            return v3;
          }

          return 0;
        }

        if (!*(a1 + 40))
        {
          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          *(a1 + 40) = Mutable;
          if (!Mutable)
          {
            return 0;
          }
        }

        BytePtr = CFDataGetBytePtr(a2);
        Length = CFDataGetLength(a2);
        if (!BytePtr)
        {
          return 0;
        }

        CFDataAppendBytes(*(a1 + 40), BytePtr, Length);
        v17 = CFDataGetBytePtr(*(a1 + 40));
        v18 = CFDataGetLength(*(a1 + 40));
        if (v18 < 4)
        {
          return 1;
        }

        v19 = v18;
        if (v18 < acc_auth_protocol_sizeofMessage(v17, v18, 0, 0))
        {
          return 1;
        }

        acc_platform_packetLogging_logAccAuthProtocolMsg(*a1, **(a1 + 16), a2, 1);
        range = 0;
        v20 = acc_auth_protocol_checkMessage(*(a1 + 16), v17, v19, &range);
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v23 = *(gLogObjects + 432);
        }

        else
        {
          v23 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v48 = v21;
            OUTLINED_FUNCTION_2_1();
            *&v48[10] = v22;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_8_26();
          OUTLINED_FUNCTION_4_34();
          *&v48[10] = v33;
          *&v48[12] = v20;
          *&v48[16] = 2112;
          *&v48[18] = a2;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "accAuthProtocol processIncomingData: after checkMessage, sessionID %d, skipBytes %d, msgLen %d,dataIn %@", buf, 0x1Eu);
        }

        v24.length = range;
        if (range)
        {
          v24.location = 0;
          CFDataDeleteBytes(*(a1 + 40), v24);
        }

        if (v20 < 4)
        {
          return 1;
        }

        if (acc_userDefaults_BOOLForKey(@"ForceAuthTimeout"))
        {
          v25 = gLogObjects;
          v26 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 55)
          {
            v27 = *(gLogObjects + 432);
          }

          else
          {
            v27 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v48 = v25;
              OUTLINED_FUNCTION_2_1();
              *&v48[10] = v26;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_8_26();
            *buf = 67109120;
            *v48 = v31;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "accAuthProtocol processIncomingData: ForceAuthTimeout, ignore incoming messages for sessionID %d, allow timeout to occur, if any", buf, 8u);
          }

          return 1;
        }

        v3 = 1;
        ACCAuthProtocol_PrintMessage(v17, v19, "\n----------------\n**** ACCAuthProtocol incoming handler ****: \nACCESSORY", 0, 1);
        v28 = acc_auth_protocol_handleMessage(*(a1 + 16), v17, v19, *(a1 + 24), *(a1 + 32));
        v49.length = v20;
        v49.location = 0;
        CFDataDeleteBytes(*(a1 + 40), v49);
        if (!v28)
        {
          v29 = OUTLINED_FUNCTION_6_33();
          ACCAuthProtocol_PrintMessage(v28, v29, "\n----------------\n**** ACCAuthProtocol outgoing handler ****: \nHOST", 0, 1);
          v30 = OUTLINED_FUNCTION_6_33();
          accAuthProtocol_endpoint_sendOutgoingData(a1, v28, v30);
        }
      }
    }
  }

  return v3;
}

uint64_t accAuthProtocol_endpoint_sendOutgoingData(uint64_t a1, const UInt8 *a2, unsigned int a3)
{
  if (!a1 || !*(a1 + 16))
  {
    return 0;
  }

  v5 = 0;
  if (!a2 || (*(a1 + 8) & 1) == 0)
  {
    return v5;
  }

  if (*(a1 + 72) == 1)
  {
    v10 = logObjectForModule_1(0x36u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      OUTLINED_FUNCTION_5_32(&_mh_execute_header, v11, v12, "protocol shutting down", v13);
    }

    return 0;
  }

  if (a3 < 4)
  {
    return 0;
  }

  v7 = *a1;
  if (!acc_auth_protocol_validMessageID(*a2) || acc_auth_protocol_sizeofMessage(a2, a3, 0, 0) > a3)
  {
    return 0;
  }

  v8 = CFDataCreate(kCFAllocatorDefault, a2, a3);
  acc_platform_packetLogging_logAccAuthProtocolMsg(v7, **(a1 + 16), v8, 0);
  v5 = acc_endpoint_sendOutgoingData(v7, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t ___accAuthProtocol_endpoint_sendAuthSetupStart_block_invoke_cold_2(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = acc_auth_protocol_sizeofMessage(v2, *(a1 + 32), 0, 0);
  return accAuthProtocol_endpoint_sendOutgoingData(a1, v2, v3);
}

unint64_t platform_usb_send_notification(uint64_t a1, const void *a2, const void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"USBMode", a2);
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"USBFaultState", a3);
    }

    v3 = accFeatureHandlers_invokeHandler(a1, 12, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v3;
}

void qiAuth_util_generateNonce_cold_2()
{
  LODWORD(v2) = 136315906;
  *(&v2 + 4) = "qiAuth_util_generateNonce";
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_27(&_mh_execute_header, v0, v1, "%s:%d role %d, nonceSize %d", v2, "qiAuth_util_generateNonce" >> 32, v3, v4);
}

void qiAuth_util_verifyCertificateChain_cold_5()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_verifyChallengeSignature_cold_5()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_verifyChallengeSignature_cold_8()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_verifyChallengeSignature_cold_10()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_policy_preferredSlot_cold_2()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d PreferredSlot: %d", v2, v3, v4, v5, v6);
}

void qiAuth_util_policy_challengeFirst_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315650;
  *&v8[4] = "qiAuth_util_policy_challengeFirst";
  *&v8[12] = 1024;
  *&v8[14] = 561;
  *&v8[18] = 1024;
  *&v8[20] = a1 & 1;
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, a2, a3, "%s:%d ChallengeFirst: %d", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16]);
}

void qiAuth_util_callbackOnTimer_cold_3()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void qiAuth_util_callbackOnTimer_cold_5()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v0, v1, "%s:%d ERROR: Timer not initialized!!!!", v2, v3, v4, v5, v6);
}

void qiAuth_util_cancelTimer_cold_2()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void platform_CarPlay_startSession_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#CarPlay] platform_CarPlay_startSession: startSessionProperties %@", &v2, 0xCu);
}

char *acc_accInfo_create()
{
  v0 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1060040C7FDF64DuLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init((v0 + 112), 0);
  }

  return v1;
}

BOOL acc_accInfo_destroy(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = acc_accInfo_reset(v2);
  pthread_mutex_destroy((*a1 + 112));
  if (*a1)
  {
    free(*a1);
    *a1 = 0;
  }

  return v3;
}

BOOL acc_accInfo_reset(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 112));
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 8) = 0;
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 16) = 0;
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 24) = 0;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 32) = 0;
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 40) = 0;
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 48) = 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 56) = 0;
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 72) = 0;
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 64) = 0;
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 80) = 0;
    }

    v12 = *(a1 + 88);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 88) = 0;
    }

    v13 = *(a1 + 96);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 96) = 0;
    }

    pthread_mutex_unlock((a1 + 112));
  }

  return a1 != 0;
}

uint64_t acc_accInfo_setAccessoryInfo(uint64_t *a1, uint64_t a2)
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
    acc_accInfo_reset(a1);
    pthread_mutex_lock((a2 + 112));
    pthread_mutex_lock((a1 + 14));
    if (*a2)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, *a2);
      v7 = ACCConnectionInfoCopyLocalizedAccessoryNameCFPrivate();
      if (v7)
      {
        v8 = v7;
        if (Copy)
        {
          CFRelease(Copy);
        }
      }

      else
      {
        v8 = Copy;
      }

      *a1 = v8;
    }

    v9 = *(a2 + 8);
    if (v9)
    {
      a1[1] = CFStringCreateCopy(kCFAllocatorDefault, v9);
    }

    v10 = *(a2 + 16);
    if (v10)
    {
      a1[2] = CFStringCreateCopy(kCFAllocatorDefault, v10);
    }

    v11 = *(a2 + 24);
    if (v11)
    {
      a1[3] = CFStringCreateCopy(kCFAllocatorDefault, v11);
    }

    v12 = *(a2 + 32);
    if (v12)
    {
      a1[4] = CFStringCreateCopy(kCFAllocatorDefault, v12);
    }

    v13 = *(a2 + 40);
    if (v13)
    {
      a1[5] = CFStringCreateCopy(kCFAllocatorDefault, v13);
    }

    v14 = *(a2 + 48);
    if (v14)
    {
      a1[6] = CFStringCreateCopy(kCFAllocatorDefault, v14);
    }

    v15 = *(a2 + 56);
    if (v15)
    {
      a1[7] = CFStringCreateCopy(kCFAllocatorDefault, v15);
    }

    v16 = *(a2 + 72);
    if (v16)
    {
      a1[9] = CFStringCreateCopy(kCFAllocatorDefault, v16);
    }

    v17 = *(a2 + 64);
    if (v17)
    {
      a1[8] = CFStringCreateCopy(kCFAllocatorDefault, v17);
    }

    v18 = *(a2 + 80);
    if (v18)
    {
      a1[10] = CFRetain(v18);
    }

    v19 = *(a2 + 88);
    if (v19)
    {
      a1[11] = CFRetain(v19);
    }

    v20 = *(a2 + 96);
    if (v20)
    {
      a1[12] = CFRetain(v20);
    }

    v21 = *(a2 + 104);
    if (v21)
    {
      a1[13] = CFRetain(v21);
    }

    v22 = gLogObjects;
    v23 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 12)
    {
      v24 = *(gLogObjects + 88);
    }

    else
    {
      v24 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v38 = 134218240;
        v39 = v22;
        v40 = 1024;
        v41 = v23;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v38, 0x12u);
      }
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *a1;
      v26 = a1[1];
      v27 = a1[2];
      v28 = a1[3];
      v29 = a1[4];
      v30 = a1[5];
      v31 = a1[6];
      v32 = a1[7];
      v33 = a1[9];
      v34 = a1[11];
      v35 = a1[12];
      v36 = a1[13];
      v38 = 136318978;
      v39 = "acc_accInfo_setAccessoryInfo";
      v40 = 1024;
      v41 = 211;
      v42 = 2112;
      v43 = v25;
      v44 = 2112;
      v45 = v26;
      v46 = 2112;
      v47 = v27;
      v48 = 2112;
      v49 = v28;
      v50 = 2112;
      v51 = v29;
      v52 = 2112;
      v53 = v30;
      v54 = 2112;
      v55 = v31;
      v56 = 2112;
      v57 = v32;
      v58 = 2112;
      v59 = v33;
      OUTLINED_FUNCTION_0_21(v34, v35, v36, &v38);
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[#Accessory Info] %s:%d Set accessory info: name: %@, manufacturer: %@, model: %@, serialNumber: %@, hardwareVersion: %@, firmwareVersionActive: %@, firmwareVersionPending: %@, ppid: %@ regionCode: %@, deviceUID: %@, deviceCompatibility: %@, vid/pid: %@/%@, accessoryPlatformID: %@", &v38, 0x9Eu);
    }

    pthread_mutex_unlock((a1 + 14));
    pthread_mutex_unlock((a2 + 112));
  }

  return v3;
}

uint64_t acc_accInfo_setAccessoryInfoWithDictionary(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  acc_accInfo_reset(a1);

  return acc_accInfo_updateAccessoryInfoWithDictionary(a1, a2);
}

uint64_t acc_accInfo_updateAccessoryInfoWithDictionary(uint64_t a1, const __CFDictionary *a2)
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
    pthread_mutex_lock((a1 + 112));
    Value = CFDictionaryGetValue(a2, kCFACCInfo_Name);
    if (Value)
    {
      v7 = CFRetain(Value);
      v8 = ACCConnectionInfoCopyLocalizedAccessoryNameCFPrivate();
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          CFRelease(v7);
        }
      }

      else
      {
        v9 = v7;
      }

      if (*a1)
      {
        CFRelease(*a1);
      }

      *a1 = v9;
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_Manufacturer))
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 8) = 0;
      }

      *(a1 + 8) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_Model))
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 16) = 0;
      }

      *(a1 + 16) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_SerialNumber))
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 24) = 0;
      }

      *(a1 + 24) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_HardwareVersion))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 32) = 0;
      }

      *(a1 + 32) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_FirmwareVersionActive))
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 40) = 0;
      }

      *(a1 + 40) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_FirmwareVersionPending))
    {
      v15 = *(a1 + 48);
      if (v15)
      {
        CFRelease(v15);
        *(a1 + 48) = 0;
      }

      *(a1 + 48) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_PPID))
    {
      v16 = *(a1 + 56);
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 56) = 0;
      }

      *(a1 + 56) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_RegionCode))
    {
      v17 = *(a1 + 72);
      if (v17)
      {
        CFRelease(v17);
        *(a1 + 72) = 0;
      }

      *(a1 + 72) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_AccessoryDeviceUID))
    {
      v18 = *(a1 + 64);
      if (v18)
      {
        CFRelease(v18);
        *(a1 + 64) = 0;
      }

      *(a1 + 64) = OUTLINED_FUNCTION_1_38();
    }

    v19 = CFDictionaryGetValue(a2, kCFACCInfo_DeviceCompatibility);
    if (v19)
    {
      v20 = v19;
      v21 = *(a1 + 80);
      if (v21)
      {
        CFRelease(v21);
        *(a1 + 80) = 0;
      }

      *(a1 + 80) = CFRetain(v20);
    }

    v22 = CFDictionaryGetValue(a2, kCFACCInfo_VendorID);
    if (v22)
    {
      v23 = v22;
      v24 = *(a1 + 88);
      if (v24)
      {
        CFRelease(v24);
        *(a1 + 88) = 0;
      }

      *(a1 + 88) = CFRetain(v23);
    }

    v25 = CFDictionaryGetValue(a2, kCFACCInfo_ProductID);
    if (v25)
    {
      v26 = v25;
      v27 = *(a1 + 96);
      if (v27)
      {
        CFRelease(v27);
        *(a1 + 96) = 0;
      }

      *(a1 + 96) = CFRetain(v26);
    }

    v28 = CFDictionaryGetValue(a2, kCFACCInfo_AccessoryPlatformID);
    if (v28)
    {
      v29 = v28;
      v30 = *(a1 + 104);
      if (v30)
      {
        CFRelease(v30);
        *(a1 + 104) = 0;
      }

      *(a1 + 104) = CFRetain(v29);
    }

    v31 = gLogObjects;
    v32 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 12)
    {
      v33 = *(gLogObjects + 88);
    }

    else
    {
      v33 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v47 = 134218240;
        v48 = v31;
        v49 = 1024;
        v50 = v32;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v47, 0x12u);
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v35 = *a1;
      v36 = *(a1 + 8);
      v37 = *(a1 + 16);
      v38 = *(a1 + 24);
      v39 = *(a1 + 32);
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      v42 = *(a1 + 56);
      v43 = *(a1 + 72);
      v44 = *(a1 + 88);
      v45 = *(a1 + 96);
      v46 = *(a1 + 104);
      v47 = 136318978;
      v48 = "acc_accInfo_updateAccessoryInfoWithDictionary";
      v49 = 1024;
      v50 = 381;
      v51 = 2112;
      v52 = v35;
      v53 = 2112;
      v54 = v36;
      v55 = 2112;
      v56 = v37;
      v57 = 2112;
      v58 = v38;
      v59 = 2112;
      v60 = v39;
      v61 = 2112;
      v62 = v40;
      v63 = 2112;
      v64 = v41;
      v65 = 2112;
      v66 = v42;
      v67 = 2112;
      v68 = v43;
      OUTLINED_FUNCTION_0_21(v44, v45, v46, &v47);
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[#Accessory Info] %s:%d Set accessory info: name: %@, manufacturer: %@, model: %@, serialNumber: %@, hardwareVersion: %@, firmwareVersionActive: %@, firmwareVersionPending: %@, ppid: %@ regionCode: %@, deviceUID: %@, deviceCompatibility: %@, vid/pid: %@/%@, accessoryPlatformID: %@", &v47, 0x9Eu);
    }

    pthread_mutex_unlock((a1 + 112));
  }

  return v3;
}