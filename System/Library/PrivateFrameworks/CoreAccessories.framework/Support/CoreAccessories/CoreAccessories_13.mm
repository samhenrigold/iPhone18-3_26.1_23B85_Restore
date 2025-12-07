BOOL iap2_sessionFileTransfer_init(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    BuffSize = iAP2ListArrayGetBuffSize(128, 24);
    v3 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
    *(v1 + 432) = v3;
    v4 = malloc_type_malloc(BuffSize, 0xC772888DuLL);
    *v3 = v4;
    LODWORD(v1) = iAP2ListArrayInit(v4, 128, 0x18u);
    v5 = malloc_type_malloc(BuffSize, 0xD6562240uLL);
    v3[1] = v5;
    v6 = iAP2ListArrayInit(v5, 128, 0x18u);
    v7 = malloc_type_malloc(BuffSize, 0xB7DE34D2uLL);
    v3[2] = v7;
    return (iAP2ListArrayInit(v7, 128, 0x18u) | v6 | v1) == 0;
  }

  return result;
}

uint64_t iap2_sessionFileTransfer_cleanup(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 432);
    if (v2)
    {
      if (gLogObjects)
      {
        v3 = gNumLogObjects < 24;
      }

      else
      {
        v3 = 1;
      }

      if (v3)
      {
        v10 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9);
        }
      }

      else
      {
        v10 = *(gLogObjects + 184);
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        iAP2ListArrayGetCount(*v2);
        iAP2ListArrayGetCount(v2[1]);
        iAP2ListArrayGetCount(v2[2]);
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_15_1();
        _os_log_impl(v11, v12, OS_LOG_TYPE_INFO, v13, v14, 0x1Eu);
      }

      iap2_sessionFileTransfer_cleanUpRemoveTransferList(v1);
      if (iAP2ListArrayGetCount(*v2) || iAP2ListArrayGetCount(v2[1]) || iAP2ListArrayGetCount(v2[2]))
      {
        if ((!gLogObjects || gNumLogObjects < 24) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v22, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v24, v25, v26, v27);
        }

        if (OUTLINED_FUNCTION_93())
        {
          iAP2ListArrayGetCount(*v2);
          iAP2ListArrayGetCount(v2[1]);
          iAP2ListArrayGetCount(v2[2]);
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_15_5();
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v15, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 0x1Eu);
        }
      }

      if (*v2)
      {
        free(*v2);
        *v2 = 0;
      }

      v19 = v2[1];
      if (v19)
      {
        free(v19);
        v2[1] = 0;
      }

      v20 = v2[2];
      if (v20)
      {
        free(v20);
        v2[2] = 0;
      }

      v21 = *(v1 + 432);
      if (v21)
      {
        free(v21);
        *(v1 + 432) = 0;
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

void iap2_sessionFileTransfer_cleanUpRemoveTransferList(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 432);
    if (v1)
    {
      v2 = gLogObjects;
      v3 = HIWORD(gNumLogObjects);
      if (gLogObjects)
      {
        v4 = gNumLogObjects < 24;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        v11 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *v36 = 134218240;
          *&v36[4] = v2;
          OUTLINED_FUNCTION_3();
          *&v36[16] = v3;
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v7, v8, v9, v10, *v36, HIDWORD(v2), *&v36[16]);
        }
      }

      else
      {
        v11 = *(gLogObjects + 184);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v22, v23, OS_LOG_TYPE_DEBUG, v24, v25, 0xCu);
      }

      v12 = *(v1 + 16);
      LastItemIndex = iAP2ListArrayGetLastItemIndex(v12);
      if (LastItemIndex != 255)
      {
        v14 = LastItemIndex;
        v15 = 0;
        do
        {
          v16 = iAP2ListArrayItemForIndex(v12, v14);
          iAP2FileTransferRelease(*(v16 + 8));
          v17 = *(v16 + 16);
          if (v17)
          {
            free(v17);
            *(v16 + 16) = 0;
          }

          iAP2ListArrayDeleteItem(v12, v14, 0);
          ++v15;
          v18 = iAP2ListArrayGetLastItemIndex(v12);
          v14 = v18;
        }

        while (v18 != 255);
      }

      v19 = gLogObjects;
      v20 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 24)
      {
        v21 = *(gLogObjects + 184);
      }

      else
      {
        v21 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *v36 = 134218240;
          *&v36[4] = v19;
          OUTLINED_FUNCTION_3();
          *&v36[14] = v20;
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v30, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v32, v33, v34, v35, *v36, *&v36[8], *&v36[16]);
        }
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v26, v27, OS_LOG_TYPE_DEBUG, v28, v29, 0x12u);
      }
    }
  }
}

uint64_t iap2_sessionFileTransfer_start(unsigned __int8 *a1)
{
  if (a1)
  {
    iap2_sessionFileTransfer_getVersion(a1);
    if (gLogObjects)
    {
      v1 = gNumLogObjects < 24;
    }

    else
    {
      v1 = 1;
    }

    if (v1)
    {
      v8 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v2, v3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v4, v5, v6, v7);
      }
    }

    else
    {
      v8 = *(gLogObjects + 184);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 8u);
    }
  }

  return 0;
}

unsigned __int8 *iap2_sessionFileTransfer_getVersion(unsigned __int8 *result)
{
  if (result)
  {
    v1 = *(result + 4);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {
        SessionForService = iAP2LinkGetSessionForService(*(v1 + 24), 1);
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

unint64_t iap2_sessionFileTransfer_handleDatagram(unint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v7 = *a2;
      result = iap2_sessionFileTransfer_findTransferEntry(a1, v7);
      if (result)
      {
        v8 = *(result + 8);
        if (v8)
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v11 = *(gLogObjects + 184);
          }

          else
          {
            v11 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v21 = 134218240;
              v22 = v9;
              OUTLINED_FUNCTION_3();
              v24 = v10;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v21);
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v18 = *(a1 + 8);
            v19 = *(v8 + 16);
            v20 = *(v8 + 109);
            v21 = 136316674;
            v22 = "iap2_sessionFileTransfer_handleDatagram";
            v23 = 1024;
            v24 = 158;
            v25 = 2112;
            v26 = v18;
            v27 = 2048;
            v28 = v8;
            v29 = 2048;
            v30 = v19;
            v31 = 1024;
            v32 = v20;
            v33 = 1024;
            v34 = v7;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s:%d pEndpoint %@, fileXfer %p (buffer %p, id 0x%x), bufferID 0x%x", &v21, 0x3Cu);
          }

          iAP2FileTransferHandleRecv(v8, a2, a3, v13, v14, v15, v16, v17);
          iap2_sessionFileTransfer_cleanUpRemoveTransferList(a1);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t iap2_sessionFileTransfer_findTransferEntry(unint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 432);
    if (v2)
    {
      if ((a2 & 0x80) != 0)
      {
        if (*v2)
        {
          v8 = gLogObjects;
          v9 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v10 = *(gLogObjects + 184);
          }

          else
          {
            v10 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v37 = 134218240;
              v38 = v8;
              OUTLINED_FUNCTION_5_0();
              v39 = v9;
              OUTLINED_FUNCTION_13_5();
              OUTLINED_FUNCTION_10(v29, v30, v31, v32, v33);
            }
          }

          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

LABEL_29:
          OUTLINED_FUNCTION_1_9();
          v39 = a2;
          OUTLINED_FUNCTION_13_5();
          _os_log_debug_impl(v20, v21, OS_LOG_TYPE_DEBUG, v22, v23, 0x12u);
LABEL_19:
          v11 = *v2;
          v36[0] = 0xAAAAAAAAAAAAAAAALL;
          v36[1] = 0;
          LOBYTE(v36[0]) = a2;
          v36[2] = 0;
          Item = iAP2ListArrayFindItem(v11, v36, _compareBufferID);
          if (Item != 255)
          {
            return iAP2ListArrayItemForIndex(v11, Item);
          }

          v13 = gLogObjects;
          v14 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 24) && OUTLINED_FUNCTION_21())
          {
            v37 = 134218240;
            v38 = v13;
            OUTLINED_FUNCTION_5_0();
            v39 = v14;
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v34, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v37);
          }

          if (OUTLINED_FUNCTION_93())
          {
            v37 = 67109120;
            LODWORD(v38) = a2;
            OUTLINED_FUNCTION_62();
            _os_log_impl(v15, v16, v17, v18, v19, 8u);
          }
        }
      }

      else
      {
        v4 = *(v2 + 8);
        v2 += 8;
        if (v4)
        {
          v5 = gLogObjects;
          v6 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v7 = *(gLogObjects + 184);
          }

          else
          {
            v7 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v37 = 134218240;
              v38 = v5;
              OUTLINED_FUNCTION_5_0();
              v39 = v6;
              OUTLINED_FUNCTION_13_5();
              OUTLINED_FUNCTION_10(v24, v25, v26, v27, v28);
            }
          }

          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL iap2_sessionFileTransfer_addTransferForFeature(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (!a1 || !a3)
  {
    return result;
  }

  v7 = *(a1 + 432);
  if (!v7)
  {
    return 0;
  }

  v10 = &audioProductCerts_endpoint_publish_onceToken;
  if ((*(a3 + 109) & 0x80000000) == 0)
  {
    v11 = v7 + 1;
    if (v7[1])
    {
      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 24) && OUTLINED_FUNCTION_18())
      {
        v65 = 134218240;
        *v66 = v12;
        OUTLINED_FUNCTION_5_0();
        v67 = v13;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_10(v44, v45, v46, v47, v48);
      }

      if (OUTLINED_FUNCTION_78_0())
      {
        OUTLINED_FUNCTION_16_5();
        OUTLINED_FUNCTION_0_6();
        v68 = v32;
        v69 = v33;
        OUTLINED_FUNCTION_17_1();
        _os_log_debug_impl(v34, v35, OS_LOG_TYPE_DEBUG, v36, v37, 0x1Eu);
      }

      v10 = &audioProductCerts_endpoint_publish_onceToken;
      goto LABEL_22;
    }

    return 0;
  }

  if (!*v7)
  {
    return 0;
  }

  v14 = gLogObjects;
  v15 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 24) && OUTLINED_FUNCTION_18())
  {
    v65 = 134218240;
    *v66 = v14;
    OUTLINED_FUNCTION_5_0();
    v67 = v15;
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_10(v54, v55, v56, v57, v58);
  }

  v11 = v7;
  if (OUTLINED_FUNCTION_78_0())
  {
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_0_6();
    v68 = v38;
    v69 = v39;
    OUTLINED_FUNCTION_17_1();
    _os_log_debug_impl(v40, v41, OS_LOG_TYPE_DEBUG, v42, v43, 0x1Eu);
    v11 = v7;
  }

LABEL_22:
  v16 = *v11;
  OUTLINED_FUNCTION_4_9();
  if (iAP2ListArrayFindItem(v16, v17, v18) == 255)
  {
    __src[0] = *(a3 + 109);
    v62 = a2;
    v63 = a3;
    v64 = a4;
    LastItemIndex = iAP2ListArrayGetLastItemIndex(v16);
    if (iAP2ListArrayAddItemAfter(v16, LastItemIndex, __src) != 255)
    {
      return 1;
    }

    v30 = v10[491];
    v31 = gNumLogObjects;
    if ((!v30 || gNumLogObjects < 24) && OUTLINED_FUNCTION_21())
    {
      v65 = 134218240;
      *v66 = v30;
      OUTLINED_FUNCTION_5_0();
      v67 = v31;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v59, v60, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v65);
    }

    result = OUTLINED_FUNCTION_93();
    if (result)
    {
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_62();
      v29 = 18;
      goto LABEL_32;
    }
  }

  else
  {
    v19 = v10[491];
    v20 = gNumLogObjects;
    if (v19 && gNumLogObjects >= 24)
    {
      v21 = *(v19 + 184);
    }

    else
    {
      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v65 = 134218240;
        *v66 = v19;
        OUTLINED_FUNCTION_5_0();
        v67 = v20;
        OUTLINED_FUNCTION_13_5();
        OUTLINED_FUNCTION_10(v49, v50, v51, v52, v53);
      }
    }

    result = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v23 = *(a3 + 109);
      v65 = 67109376;
      *v66 = v23;
      *&v66[4] = 1024;
      *&v66[6] = a2;
      OUTLINED_FUNCTION_13_5();
      v28 = OS_LOG_TYPE_DEFAULT;
      v29 = 14;
LABEL_32:
      _os_log_impl(v24, v25, v28, v26, v27, v29);
      return 0;
    }
  }

  return result;
}

BOOL iap2_sessionFileTransfer_removeTransferForFeature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (!a1 || !a3)
  {
    return result;
  }

  v5 = *(a1 + 432);
  if (!v5)
  {
    return 0;
  }

  if ((*(a3 + 109) & 0x80000000) == 0)
  {
    v6 = (v5 + 1);
    if (v5[1])
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 24)
      {
        v9 = *(gLogObjects + 184);
      }

      else
      {
        v9 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v48 = 134218240;
          v49 = v7;
          OUTLINED_FUNCTION_5_0();
          v50 = v8;
          OUTLINED_FUNCTION_18_6();
          OUTLINED_FUNCTION_10(v36, v37, v38, v39, v40);
        }
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_18_6();
        _os_log_debug_impl(v13, v14, OS_LOG_TYPE_DEBUG, v15, v16, 0x18u);
      }

      goto LABEL_21;
    }

    return 0;
  }

  if (!*v5)
  {
    return 0;
  }

  v10 = gLogObjects;
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 24)
  {
    v12 = *(gLogObjects + 184);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v48 = 134218240;
      v49 = v10;
      OUTLINED_FUNCTION_5_0();
      v50 = v11;
      OUTLINED_FUNCTION_18_6();
      OUTLINED_FUNCTION_10(v41, v42, v43, v44, v45);
    }
  }

  v6 = v5;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_18_6();
    _os_log_debug_impl(v32, v33, OS_LOG_TYPE_DEBUG, v34, v35, 0x18u);
    v6 = v5;
  }

LABEL_21:
  v17 = *v6;
  v18 = v5[2];
  OUTLINED_FUNCTION_4_9();
  Item = iAP2ListArrayFindItem(v17, v19, v20);
  if (Item != 255)
  {
    v22 = Item;
    LastItemIndex = iAP2ListArrayGetLastItemIndex(v18);
    v24 = iAP2ListArrayItemForIndex(v17, v22);
    iAP2ListArrayAddItemAfter(v18, LastItemIndex, v24);
    iAP2ListArrayDeleteItem(v17, v22, 0);
    return 1;
  }

  v25 = gLogObjects;
  v26 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 24) && OUTLINED_FUNCTION_21())
  {
    v48 = 134218240;
    v49 = v25;
    OUTLINED_FUNCTION_5_0();
    v50 = v26;
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v46, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v48);
  }

  result = OUTLINED_FUNCTION_93();
  if (result)
  {
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_62();
    _os_log_impl(v27, v28, v29, v30, v31, 0x12u);
    return 0;
  }

  return result;
}

unint64_t iap2_sessionFileTransfer_findTransferEntryForFeature(uint64_t a1, int a2, uint64_t a3, uint64_t (*a4)(unsigned __int8 *, uint64_t, uint64_t))
{
  result = 0;
  if (a1 && a3 && a4)
  {
    v8 = *(a1 + 432);
    if (v8)
    {
      if ((a2 & 0x80) != 0)
      {
        if (*v8)
        {
          v14 = gLogObjects;
          v15 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v13 = *(gLogObjects + 184);
          }

          else
          {
            v13 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              v34 = 134218240;
              v35 = v14;
              OUTLINED_FUNCTION_3();
              v36[0] = v15;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v34);
            }
          }

          if (!OUTLINED_FUNCTION_78_0())
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_3();
          v36[0] = a2;
          v16 = "iap2_sessionFileTransfer_findTransferEntryForFeature: %@ dir=%xh, use outTransferList";
          goto LABEL_33;
        }
      }

      else
      {
        v10 = v8[1];
        ++v8;
        if (v10)
        {
          v11 = gLogObjects;
          v12 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v13 = *(gLogObjects + 184);
          }

          else
          {
            v13 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              v34 = 134218240;
              v35 = v11;
              OUTLINED_FUNCTION_3();
              v36[0] = v12;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v34);
            }
          }

          if (!OUTLINED_FUNCTION_78_0())
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_3();
          v36[0] = a2;
          v16 = "iap2_sessionFileTransfer_findTransferEntryForFeature: %@ dir=%xh, use inTransferList";
LABEL_33:
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v16, &v34, 0x12u);
LABEL_21:
          v17 = *v8;
          Item = iAP2ListArrayFindItem(*v8, a3, a4);
          if (Item != 255)
          {
            return iAP2ListArrayItemForIndex(v17, Item);
          }

          if (gLogObjects && gNumLogObjects >= 24)
          {
            v19 = *(gLogObjects + 184);
          }

          else
          {
            v19 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_2_3();
              OUTLINED_FUNCTION_26_0(&_mh_execute_header, v28, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v30, v31, v32, v33);
            }
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_14_6();
            LOWORD(v36[0]) = v20;
            *(v36 + 2) = v21;
            OUTLINED_FUNCTION_15_1();
            _os_log_debug_impl(v22, v23, OS_LOG_TYPE_DEBUG, v24, v25, 0x14u);
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void iap2_sessionFileTransfer_deleteFileTransfer_cold_1(uint64_t a1)
{
  v3 = 134218240;
  v4 = a1;
  OUTLINED_FUNCTION_3();
  v5 = v1;
  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v2, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v3);
}

uint64_t platform_iapd_bridge_accessory_processIncomingData(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 24) == 7)
    {
      if (gLogObjects)
      {
        v3 = gNumLogObjects < 7;
      }

      else
      {
        v3 = 1;
      }

      if (v3)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_5_9();
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11, v12, v13, v14);
        }

        v8 = &_os_log_default;
        v4 = &_os_log_default;
      }

      else
      {
        v8 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(v2 + 24);
        v15[0] = 67109120;
        v15[1] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[#iapd Bridge] Dropping iAP1 bytes over %{coreacc:ACCEndpoint_TransportType_t}d!", v15, 8u);
      }

      return 1;
    }

    else
    {
      v6 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
      v7 = [v6 iapdAccessory:v2 dataArrivedFromAccessory:a2];

      return v7;
    }
  }

  return result;
}

void logObjectForModule_cold_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 134218240;
  *&v8[4] = gLogObjects;
  *&v8[12] = 1024;
  *&v8[14] = gNumLogObjects;
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, a3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16]);
}

void platform_iapd_bridge_accessory_connected_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

dispatch_object_t *audioProductCerts_endpoint_create(NSObject *a1)
{
  if (!a1)
  {
    v25 = logObjectForModule_10();
    if (!OUTLINED_FUNCTION_16(v25))
    {
      return 0;
    }

LABEL_26:
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v27, v28, v29, v30, v31, 2u);
    return 0;
  }

  if (!a1->isa)
  {
    v26 = logObjectForModule_10();
    if (!OUTLINED_FUNCTION_16(v26))
    {
      return 0;
    }

    goto LABEL_26;
  }

  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040CD29F606uLL);
  if (v2)
  {
    v3 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_3();
      *v33 = v3;
      OUTLINED_FUNCTION_16_6();
      _os_log_error_impl(v15, v16, v17, v18, v19, 0x12u);
    }

    if (OUTLINED_FUNCTION_81())
    {
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 8u);
    }

    v8 = dispatch_queue_create("AudioProductCertsQ", 0);
    v2[6] = v8;
    if (v8)
    {
      dispatch_set_context(v8, v2);
      dispatch_set_finalizer_f(v2[6], _audioProductCerts_endpoint_dispatchQueueFinalizer);
      *v2 = a1;
      _audioProductCerts_endpoint_initSession(v2);
      v9.isa = a1->isa;
      if (*(a1->isa + 2) && *(v9.isa + 2) == 2)
      {
        if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_7_5();
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v20, v21, v22, v23, v24, 0x12u);
          v9.isa = a1->isa;
        }

        if (OUTLINED_FUNCTION_81())
        {
          *v32 = 138412290;
          *&v32[4] = *(v9.isa + 2);
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v10, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 0xCu);
        }

        acc_endpoint_setProperty();
      }

      acc_platform_packetLogging_logEvent(*v2, "ATTACH", "AudioProductCerts accessory attached!", *v32, *&v32[8], *&v33[2]);
      acc_platform_audioProductCerts_accessoryAttach(a1[1].isa, a1[2].isa);
    }
  }

  return v2;
}

uint64_t audioProductCerts_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      if (*v2 && **v2)
      {
        if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
          v2 = *v1;
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 8u);
          v2 = *v1;
        }

        v7 = *v2;
        v8 = **v2;
        acc_platform_packetLogging_logEvent(v7, "DETACH", "AudioProductCerts accessory detached!");
        acc_platform_audioProductCerts_accessoryDetach(*v8, v7[2]);
        v2 = *v1;
      }

      dispatch_sync(*(v2 + 48), &__block_literal_global_8);
      v9 = *(*v1 + 48);
      *(*v1 + 48) = 0;
      dispatch_release(v9);
      *v1 = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t audioProductCerts_endpoint_processIncomingData(uint64_t result)
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
        OUTLINED_FUNCTION_44_1();
        v5[1] = 0x40000000;
        v5[2] = __audioProductCerts_endpoint_processIncomingData_block_invoke;
        v5[3] = &__block_descriptor_tmp_9_0;
        v5[4] = v2;
        v5[5] = v1;
        dispatch_async(v4, v5);
        return 1;
      }
    }
  }

  return result;
}

uint64_t _audioProductCerts_endpoint_processIncomingData(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      if (*v2)
      {
        if (*(*v2 + 28) == 13)
        {
          if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_14();
            _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
          }

          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_84();
            OUTLINED_FUNCTION_14();
            _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
          }

          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void audioProductCerts_endpoint_propertyDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_0();
  a25 = v28;
  a26 = v30;
  v32 = v31;
  v34 = v33;
  v35 = v29;
  if (!v29)
  {
    goto LABEL_69;
  }

  v36 = *v29;
  if (!*v29 || !*v36)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_83_0();
  if (v26 && v27 >= 58)
  {
    v37 = *(v26 + 456);
  }

  else
  {
    v37 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_39(&_mh_execute_header, v102, v103, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
      v36 = *v35;
    }
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_73_1();
    WORD1(a12) = 2112;
    *(&a12 + 4) = v34;
    WORD6(a12) = 2112;
    *(&a12 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "PropertyDidchange: ENTER %@, state %d, %@ : %@", &buf, 0x26u);
    v36 = *v35;
  }

  v38 = 0;
  if (v32 && v34 && v36[2])
  {
    v39 = CFGetTypeID(v34);
    TypeID = CFStringGetTypeID();
    v41 = &off_1001C3000;
    if (v39 == TypeID)
    {
      v42 = OUTLINED_FUNCTION_77_1(TypeID, kCFACCProperties_Endpoint_AACP_CertificateSupported);
      if (v42 == kCFCompareEqualTo || OUTLINED_FUNCTION_77_1(v42, kCFACCProperties_Endpoint_AACP_FirstConnectionAfterPair) == kCFCompareEqualTo)
      {
        v43 = CFGetTypeID(v32);
        if (v43 == CFBooleanGetTypeID() || (v44 = CFGetTypeID(v32), v44 == CFNumberGetTypeID()))
        {
          OUTLINED_FUNCTION_72_0();
          if ((!&off_1001C3000 || v26 < 58) && OUTLINED_FUNCTION_27())
          {
            LODWORD(buf) = 134218240;
            *(&buf + 4) = &off_1001C3000;
            OUTLINED_FUNCTION_3_12();
            OUTLINED_FUNCTION_39(&_mh_execute_header, v126, v127, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
          }

          if (OUTLINED_FUNCTION_79())
          {
            v49 = CFGetTypeID(v32);
            v26 = v49 == CFNumberGetTypeID();
            v41 = CFGetTypeID(v32);
            v50 = CFBooleanGetTypeID();
            LODWORD(buf) = 136315906;
            *(&buf + 4) = "_audioProductCerts_endpoint_validKeyValueType";
            WORD6(buf) = 2112;
            *(&buf + 14) = v34;
            WORD3(a12) = 1024;
            DWORD2(a12) = v26;
            WORD6(a12) = 1024;
            *(&a12 + 14) = v41 == v50;
            OUTLINED_FUNCTION_28_1();
            v56 = 34;
LABEL_108:
            _os_log_debug_impl(v51, v52, v53, v54, v55, v56);
            goto LABEL_40;
          }

          goto LABEL_40;
        }
      }

      v45 = CFGetTypeID(v32);
      v46 = CFArrayGetTypeID();
      v27 = gLogObjects;
      v26 = gNumLogObjects;
      if (gLogObjects)
      {
        v47 = gNumLogObjects <= 57;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      if (v45 == v46)
      {
        if (!v48 && OUTLINED_FUNCTION_27())
        {
          LODWORD(buf) = 134218240;
          *(&buf + 4) = v27;
          OUTLINED_FUNCTION_3_12();
          OUTLINED_FUNCTION_39(&_mh_execute_header, v128, v129, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
        }

        if (OUTLINED_FUNCTION_79())
        {
          LODWORD(buf) = 136315394;
          *(&buf + 4) = "_audioProductCerts_endpoint_validKeyValueType";
          WORD6(buf) = 2112;
          *(&buf + 14) = v34;
          OUTLINED_FUNCTION_28_1();
          v56 = 22;
          goto LABEL_108;
        }

LABEL_40:
        OUTLINED_FUNCTION_72_0();
        if ((!v41 || v26 < 58) && OUTLINED_FUNCTION_27())
        {
          LODWORD(buf) = 134218240;
          *(&buf + 4) = v41;
          OUTLINED_FUNCTION_3_12();
          OUTLINED_FUNCTION_39(&_mh_execute_header, v104, v105, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
        }

        v57 = OUTLINED_FUNCTION_79();
        if (v57)
        {
          OUTLINED_FUNCTION_19_3();
          *(&buf + 14) = v34;
          WORD3(a12) = v70;
          *(&a12 + 1) = v32;
          OUTLINED_FUNCTION_28_1();
          _os_log_debug_impl(v71, v72, v73, v74, v75, 0x20u);
        }

        v58 = *(v35 + 10);
        if (!v58)
        {
          v57 = OUTLINED_FUNCTION_77_1(v57, kCFACCProperties_Endpoint_AACP_CertificateSerial);
          if (!v57)
          {
            OUTLINED_FUNCTION_31_0();
            _audioProductCerts_endpoint_handleCertSerialList();
            if (v109)
            {
              goto LABEL_63;
            }

            goto LABEL_69;
          }

          v58 = *(v35 + 10);
        }

        if (v58 == 2)
        {
          v57 = OUTLINED_FUNCTION_77_1(v57, kCFACCProperties_Endpoint_AACP_CertificateList);
          if (!v57)
          {
            OUTLINED_FUNCTION_31_0();
            _audioProductCerts_endpoint_handleCertList();
            if (v106)
            {
              OUTLINED_FUNCTION_31_0();
              _audioProductCerts_endpoint_handleAuthCertList();
              if (v107)
              {
                goto LABEL_63;
              }
            }

            goto LABEL_69;
          }

          v58 = *(v35 + 10);
        }

        if (v58 != 4)
        {
LABEL_55:
          if (v58 != 5 || OUTLINED_FUNCTION_77_1(v57, kCFACCProperties_Endpoint_AACP_CertificateList))
          {
            OUTLINED_FUNCTION_72_0();
            if ((!v41 || v26 < 58) && OUTLINED_FUNCTION_27())
            {
              LODWORD(buf) = 134218240;
              *(&buf + 4) = v41;
              OUTLINED_FUNCTION_3_12();
              OUTLINED_FUNCTION_39(&_mh_execute_header, v110, v111, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
            }

            if (OUTLINED_FUNCTION_79())
            {
              OUTLINED_FUNCTION_56_1();
              OUTLINED_FUNCTION_19_3();
              *(&buf + 14) = v34;
              WORD3(a12) = 1024;
              DWORD2(a12) = v76;
              OUTLINED_FUNCTION_28_1();
              _os_log_debug_impl(v77, v78, v79, v80, v81, 0x1Cu);
            }

            goto LABEL_63;
          }

          v64 = OUTLINED_FUNCTION_31_0();
          if (!_audioProductCerts_endpoint_handleMissingCertList(v64, v65, v66))
          {
            goto LABEL_69;
          }

          v67 = OUTLINED_FUNCTION_31_0();
          if ((_audioProductCerts_endpoint_handleAuthResponseWithMissingCert(v67, v68, v69) & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_63:
          v38 = 1;
          goto LABEL_70;
        }

        v57 = OUTLINED_FUNCTION_77_1(v57, kCFACCProperties_Endpoint_AudioProduct_AuthResponse);
        if (v57)
        {
          v58 = *(v35 + 10);
          goto LABEL_55;
        }

        v108 = OUTLINED_FUNCTION_31_0();
        if (_audioProductCerts_endpoint_handleAuthResponseList(v108))
        {
          goto LABEL_63;
        }

LABEL_69:
        v38 = 0;
        goto LABEL_70;
      }

      if (!v48 && OUTLINED_FUNCTION_27())
      {
        LODWORD(buf) = 134218240;
        *(&buf + 4) = v27;
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_39(&_mh_execute_header, v130, v131, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
      }

      if (!OUTLINED_FUNCTION_79())
      {
LABEL_67:
        v59 = logObjectForModule_10();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          OUTLINED_FUNCTION_28_1();
          _os_log_debug_impl(v112, v113, v114, v115, v116, 2u);
        }

        goto LABEL_69;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "_audioProductCerts_endpoint_validKeyValueType";
    }

    else
    {
      v132 = logObjectForModule_10();
      if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_67;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "_audioProductCerts_endpoint_validKeyValueType";
    }

    OUTLINED_FUNCTION_28_1();
    _os_log_debug_impl(v133, v134, v135, v136, v137, 0xCu);
    goto LABEL_67;
  }

LABEL_70:
  OUTLINED_FUNCTION_83_0();
  if ((!v26 || v27 < 58) && OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v82, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    OUTLINED_FUNCTION_73_1();
    WORD1(a12) = v86;
    DWORD1(a12) = v38;
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v87, v88, v89, v90, v91, 0x18u);
  }

  OUTLINED_FUNCTION_83_0();
  if ((!v26 || v27 < 58) && OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v84, v85, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    OUTLINED_FUNCTION_19_3();
    *(&buf + 14) = v34;
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v92, v93, v94, v95, v96, 0x16u);
  }

  v60 = gLogObjects;
  v61 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
  {
    LODWORD(buf) = 134218240;
    *(&buf + 4) = v60;
    WORD6(buf) = 1024;
    *(&buf + 14) = v61;
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    OUTLINED_FUNCTION_19_3();
    *(&buf + 14) = v32;
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v97, v98, v99, v100, v101, 0x16u);
    if (v38)
    {
      goto LABEL_94;
    }
  }

  else if (v38)
  {
    goto LABEL_94;
  }

  if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v117, v118, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    OUTLINED_FUNCTION_19_3();
    *(&buf + 14) = v119;
    WORD3(a12) = v120;
    *(&a12 + 1) = v32;
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v121, v122, v123, v124, v125, 0x20u);
  }

LABEL_94:
  OUTLINED_FUNCTION_96();
}

void _audioProductCerts_endpoint_handleCertSerialList()
{
  OUTLINED_FUNCTION_95_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50();
    if (v4)
    {
      if (*v4)
      {
        v5 = v3;
        v6 = v2;
        if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v31, v32, v33, v34, v35, 0x12u);
        }

        v7 = OUTLINED_FUNCTION_9_3();
        if (os_log_type_enabled(v7, v8))
        {
          OUTLINED_FUNCTION_45_2();
          OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_13_6();
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 0x30u);
        }

        if (v6)
        {
          if (v5)
          {
            v13 = CFGetTypeID(v6);
            if (v13 == CFStringGetTypeID())
            {
              v14 = CFGetTypeID(v5);
              if (v14 == CFArrayGetTypeID())
              {
                Copy = CFStringCreateCopy(kCFAllocatorDefault, *(*v0 + 16));
                if (gLogObjects && gNumLogObjects >= 58)
                {
                  v16 = *(gLogObjects + 456);
                }

                else
                {
                  v16 = &_os_log_default;
                  if (OUTLINED_FUNCTION_19_0())
                  {
                    OUTLINED_FUNCTION_44();
                    OUTLINED_FUNCTION_3();
                    OUTLINED_FUNCTION_40();
                    OUTLINED_FUNCTION_10(v36, v37, v38, v39, v40);
                  }
                }

                v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
                if (v17)
                {
                  OUTLINED_FUNCTION_43_0();
                  OUTLINED_FUNCTION_2_15();
                  OUTLINED_FUNCTION_40();
                  OUTLINED_FUNCTION_82_0(v26, v27, v28, v29, v30);
                }

                PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(v17, 1, v6, v5);
                acc_platform_packetLogging_logParsedData(*v0, v6, @"AudioProductCerts", PropertyDescription, 1);
                if (PropertyDescription)
                {
                  CFRelease(PropertyDescription);
                }

                if (gLogObjects && gNumLogObjects >= 58)
                {
                  v19 = *(gLogObjects + 456);
                }

                else
                {
                  v19 = &_os_log_default;
                  if (OUTLINED_FUNCTION_19_0())
                  {
                    OUTLINED_FUNCTION_44();
                    OUTLINED_FUNCTION_3();
                    OUTLINED_FUNCTION_40();
                    OUTLINED_FUNCTION_10(v41, v42, v43, v44, v45);
                  }
                }

                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_43_0();
                  OUTLINED_FUNCTION_10_9();
                  OUTLINED_FUNCTION_33_2();
                  OUTLINED_FUNCTION_40();
                  OUTLINED_FUNCTION_70_2(v20, v21, v22, v23, v24);
                }

                *(v0 + 40) = 1;
                v91.length = CFArrayGetCount(v5);
                v91.location = 0;
                CFArrayApplyFunction(v5, v91, _CFArrayApplierFunction_handleSerialList, v0);
                if (CFArrayGetCount(*(v0 + 16)))
                {
                  if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
                  {
                    OUTLINED_FUNCTION_8_1();
                    OUTLINED_FUNCTION_24_3(&_mh_execute_header, v46, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48, v49, v50, v51);
                  }

                  if (OUTLINED_FUNCTION_67_0())
                  {
                    OUTLINED_FUNCTION_15_6();
                    OUTLINED_FUNCTION_36();
                    _os_log_impl(v52, v53, OS_LOG_TYPE_DEFAULT, v54, v55, 0x20u);
                  }

                  v56 = CFArrayCreateCopy(kCFAllocatorDefault, *(v0 + 16));
                  audioProductCerts_endpoint_setProperty(v0, kCFACCProperties_Endpoint_AACP_CertificateRequired, v56);
                  if (v56)
                  {
                    CFRelease(v56);
                  }

                  if (gLogObjects && gNumLogObjects >= 58)
                  {
                    v57 = *(gLogObjects + 456);
                  }

                  else
                  {
                    v57 = &_os_log_default;
                    if (OUTLINED_FUNCTION_27())
                    {
                      OUTLINED_FUNCTION_7_5();
                      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v85, v86, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v87, v88, v89, v90);
                    }
                  }

                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_15_6();
                    OUTLINED_FUNCTION_57_1();
                    OUTLINED_FUNCTION_14_3();
                    OUTLINED_FUNCTION_70_2(v58, v59, v60, v61, v62);
                  }

                  *(v0 + 40) = 2;
                }

                else
                {
                  v25 = *(v0 + 24);
                  if (v25 && CFArrayGetCount(v25))
                  {
                    if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
                    {
                      OUTLINED_FUNCTION_8_1();
                      OUTLINED_FUNCTION_24_3(&_mh_execute_header, v63, v64, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v65, v66, v67, v68);
                    }

                    if (OUTLINED_FUNCTION_67_0())
                    {
                      OUTLINED_FUNCTION_15_6();
                      OUTLINED_FUNCTION_36();
                      _os_log_impl(v69, v70, OS_LOG_TYPE_DEFAULT, v71, v72, 0x20u);
                    }

                    if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
                    {
                      OUTLINED_FUNCTION_8_1();
                      OUTLINED_FUNCTION_24_3(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, v76, v77, v78);
                    }

                    if (OUTLINED_FUNCTION_67_0())
                    {
                      OUTLINED_FUNCTION_15_6();
                      OUTLINED_FUNCTION_57_1();
                      OUTLINED_FUNCTION_36();
                      OUTLINED_FUNCTION_70_2(v79, v80, v81, v82, v83);
                    }

                    *(v0 + 40) = 2;
                    v84 = CFArrayCreateCopy(kCFAllocatorDefault, *(v0 + 24));
                    audioProductCerts_endpoint_setProperty(v0, kCFACCProperties_Endpoint_AACP_CertificateList, v84);
                    if (v84)
                    {
                      CFRelease(v84);
                    }
                  }
                }

                if (Copy)
                {
                  CFRelease(Copy);
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_96();
}

void _audioProductCerts_endpoint_handleCertList()
{
  OUTLINED_FUNCTION_95_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50();
    if (v4)
    {
      if (*v4)
      {
        v5 = v3;
        v6 = v2;
        if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_7_5();
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v67, v68, v69, v70, v71, 0x12u);
        }

        v7 = OUTLINED_FUNCTION_9_3();
        if (os_log_type_enabled(v7, v8))
        {
          OUTLINED_FUNCTION_45_2();
          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_13_6();
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 0x30u);
        }

        if (v6)
        {
          if (v5)
          {
            v13 = CFGetTypeID(v6);
            if (v13 == CFStringGetTypeID())
            {
              v14 = CFGetTypeID(v5);
              if (v14 == CFArrayGetTypeID())
              {
                v15 = *v0;
                if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
                {
                  OUTLINED_FUNCTION_8_1();
                  OUTLINED_FUNCTION_24_3(&_mh_execute_header, v72, v73, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v74, v75, v76, v77);
                }

                v16 = OUTLINED_FUNCTION_78_0();
                if (v16)
                {
                  OUTLINED_FUNCTION_44();
                  OUTLINED_FUNCTION_2_15();
                  OUTLINED_FUNCTION_36();
                  OUTLINED_FUNCTION_82_0(v45, v46, v47, v48, v49);
                }

                PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(v16, 1, v6, v5);
                OUTLINED_FUNCTION_87_1(*v0, v6, @"AudioProductCerts");
                if (PropertyDescription)
                {
                  CFRelease(PropertyDescription);
                }

                if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
                {
                  OUTLINED_FUNCTION_8_1();
                  OUTLINED_FUNCTION_24_3(&_mh_execute_header, v78, v79, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v80, v81, v82, v83);
                }

                if (OUTLINED_FUNCTION_67_0())
                {
                  OUTLINED_FUNCTION_44();
                  OUTLINED_FUNCTION_10_9();
                  OUTLINED_FUNCTION_33_2();
                  OUTLINED_FUNCTION_36();
                  OUTLINED_FUNCTION_70_2(v18, v19, v20, v21, v22);
                }

                *(v0 + 40) = 3;
                v123.length = CFArrayGetCount(v5);
                v123.location = 0;
                CFArrayApplyFunction(v5, v123, _CFArrayApplierFunction_handleCertList, v0);
                Count = CFArrayGetCount(*(v0 + 24));
                if (gLogObjects)
                {
                  v24 = gNumLogObjects <= 57;
                }

                else
                {
                  v24 = 1;
                }

                v25 = !v24;
                if (Count)
                {
                  if (v25)
                  {
                    v26 = *(gLogObjects + 456);
                  }

                  else
                  {
                    v26 = &_os_log_default;
                    if (OUTLINED_FUNCTION_27())
                    {
                      OUTLINED_FUNCTION_8_1();
                      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v84, v85, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v86, v87, v88, v89);
                    }
                  }

                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_44();
                    OUTLINED_FUNCTION_10_9();
                    OUTLINED_FUNCTION_14_3();
                    _os_log_impl(v27, v28, OS_LOG_TYPE_DEFAULT, v29, v30, 0x20u);
                  }

                  v31 = acc_userDefaults_BOOLForKey(@"DisableAMSHookUp");
                  if (gLogObjects)
                  {
                    v32 = gNumLogObjects <= 57;
                  }

                  else
                  {
                    v32 = 1;
                  }

                  v33 = !v32;
                  if (v31)
                  {
                    if (!v33 && OUTLINED_FUNCTION_21())
                    {
                      OUTLINED_FUNCTION_43_0();
                      OUTLINED_FUNCTION_12_7();
                      OUTLINED_FUNCTION_14();
                      _os_log_error_impl(v106, v107, v108, v109, v110, 0x12u);
                    }

                    if (OUTLINED_FUNCTION_93())
                    {
LABEL_61:
                      OUTLINED_FUNCTION_45_2();
                      OUTLINED_FUNCTION_9_6();
                      OUTLINED_FUNCTION_15_1();
                      OUTLINED_FUNCTION_78(v34, v35, v36, v37, v38);
                    }
                  }

                  else
                  {
                    if (!v33 && OUTLINED_FUNCTION_27())
                    {
                      OUTLINED_FUNCTION_43_0();
                      OUTLINED_FUNCTION_12_7();
                      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v111, v112, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v113, v114, v115, v116);
                    }

                    if (OUTLINED_FUNCTION_76_1())
                    {
                      OUTLINED_FUNCTION_44();
                      OUTLINED_FUNCTION_2_15();
                      OUTLINED_FUNCTION_30();
                      _os_log_impl(v39, v40, v41, v42, v43, 0x20u);
                    }

                    AccessoryInfo = acc_endpoint_getAccessoryInfo(v15);
                    if (!AccessoryInfo)
                    {
                      if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_27())
                      {
                        OUTLINED_FUNCTION_8_1();
                        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v117, v118, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v119, v120, v121, v122);
                      }

                      if (OUTLINED_FUNCTION_76_1())
                      {
                        OUTLINED_FUNCTION_44();
                        OUTLINED_FUNCTION_2_15();
                        OUTLINED_FUNCTION_30();
                        _os_log_impl(v50, v51, v52, v53, v54, 0x20u);
                      }

                      AccessoryInfo = acc_connection_getAccessoryInfo(*v15);
                    }

                    v55 = acc_accInfo_copyAccessoryInfoDescription(AccessoryInfo);
                    if (gLogObjects && gNumLogObjects >= 58)
                    {
                      v56 = *(gLogObjects + 456);
                    }

                    else
                    {
                      v56 = &_os_log_default;
                      if (OUTLINED_FUNCTION_19_0())
                      {
                        OUTLINED_FUNCTION_20_2();
                        OUTLINED_FUNCTION_40();
                        OUTLINED_FUNCTION_10(v95, v96, v97, v98, v99);
                      }
                    }

                    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                    {
                      OUTLINED_FUNCTION_44();
                      OUTLINED_FUNCTION_2_15();
                      OUTLINED_FUNCTION_40();
                      _os_log_impl(v57, v58, OS_LOG_TYPE_INFO, v59, v60, 0x2Au);
                    }

                    if (v55)
                    {
                      CFRelease(v55);
                    }

                    if (AccessoryInfo)
                    {
                      data = AccessoryInfo->data;
                    }

                    else
                    {
                      data = 0;
                    }

                    acc_platform_audioProductCerts_processAudioProductCerts(v15[1], v15[2], data, *(v0 + 24), *(v0 + 9));
                    if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_27())
                    {
                      OUTLINED_FUNCTION_7_5();
                      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v100, v101, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v102, v103, v104, v105);
                    }

                    if (OUTLINED_FUNCTION_76_1())
                    {
                      OUTLINED_FUNCTION_44();
                      OUTLINED_FUNCTION_10_9();
                      OUTLINED_FUNCTION_33_2();
                      OUTLINED_FUNCTION_30();
                      _os_log_impl(v62, v63, v64, v65, v66, 0x2Cu);
                    }

                    *(v0 + 40) = 6;
                  }
                }

                else
                {
                  if (!v25 && OUTLINED_FUNCTION_21())
                  {
                    OUTLINED_FUNCTION_8_1();
                    OUTLINED_FUNCTION_14();
                    _os_log_error_impl(v90, v91, v92, v93, v94, 0x12u);
                  }

                  if (OUTLINED_FUNCTION_93())
                  {
                    goto LABEL_61;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_96();
}

void _audioProductCerts_endpoint_handleAuthCertList()
{
  OUTLINED_FUNCTION_95_0();
  if (v0)
  {
    v3 = v0;
    if (*v0)
    {
      if (**v0)
      {
        v4 = v2;
        v5 = v1;
        if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_27())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_17_2(&_mh_execute_header, v21, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v23, v24, v25, v26);
        }

        if (OUTLINED_FUNCTION_76_1())
        {
          OUTLINED_FUNCTION_56_1();
          OUTLINED_FUNCTION_13_6();
          OUTLINED_FUNCTION_30();
          _os_log_impl(v6, v7, v8, v9, v10, 0x30u);
        }

        if (v5)
        {
          if (v4)
          {
            v11 = CFGetTypeID(v5);
            if (v11 == CFStringGetTypeID())
            {
              v12 = CFGetTypeID(v4);
              if (v12 == CFArrayGetTypeID())
              {
                if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_27())
                {
                  OUTLINED_FUNCTION_12_7();
                  OUTLINED_FUNCTION_17_2(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32);
                }

                if (OUTLINED_FUNCTION_79())
                {
                  OUTLINED_FUNCTION_2_15();
                  OUTLINED_FUNCTION_14_3();
                  OUTLINED_FUNCTION_82_0(v16, v17, v18, v19, v20);
                }

                if (acc_userDefaults_BOOLForKey(@"DisableAACPAuth"))
                {
                  v44 = logObjectForModule_10();
                  if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_32;
                  }
                }

                else
                {
                  v13 = OUTLINED_FUNCTION_9_3();
                  if (_audioProductCerts_endpoint_generateAuthChallenge(v13))
                  {
                    if (v3[12] && v3[13])
                    {
                      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
                      if (Mutable)
                      {
                        v33 = Mutable;
                        CFArrayAppendValue(Mutable, v3[12]);
                        *(v3 + 10) = 4;
                        audioProductCerts_endpoint_setProperty(v3, kCFACCProperties_Endpoint_AudioProduct_AuthChallenge, v33);
                      }

                      else
                      {
                        if (gLogObjects && gNumLogObjects >= 58)
                        {
                          v15 = *(gLogObjects + 456);
                        }

                        else
                        {
                          v15 = &_os_log_default;
                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                          {
                            OUTLINED_FUNCTION_3();
                            OUTLINED_FUNCTION_40_1();
                            _os_log_error_impl(v39, v40, v41, v42, v43, 0x12u);
                          }
                        }

                        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                        {
                          OUTLINED_FUNCTION_7_0();
                          OUTLINED_FUNCTION_40_1();
                          _os_log_error_impl(v34, v35, v36, v37, v38, 0x16u);
                        }
                      }
                    }

                    goto LABEL_32;
                  }

                  v45 = logObjectForModule_10();
                  if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_32;
                  }
                }

                OUTLINED_FUNCTION_2_15();
                OUTLINED_FUNCTION_16_6();
                _os_log_error_impl(v46, v47, v48, v49, v50, 0x2Au);
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_96();
}

uint64_t audioProductCerts_endpoint_propertiesDidChange(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    CFRetain(cf);
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v71 = v6;
      OUTLINED_FUNCTION_49_2();
      *v73 = v7;
      OUTLINED_FUNCTION_39(&_mh_execute_header, v59, v60, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_79())
    {
      OUTLINED_FUNCTION_56_1();
      *buf = 138412546;
      v71 = v52;
      v72 = 2112;
      *v73 = cf;
      OUTLINED_FUNCTION_59_3();
      _os_log_debug_impl(v53, v54, v55, v56, v57, v58);
    }

    valuePtr = 0;
    v8 = kCFACCProperties_Endpoint_AACP_CertificateSupported;
    Value = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_CertificateSupported);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (acc_userDefaults_BOOLForKey(@"DisableCertSupport"))
      {
        v10 = gLogObjects;
        v11 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
        {
          *buf = 134218240;
          v71 = v10;
          OUTLINED_FUNCTION_49_2();
          *v73 = v11;
          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_67_0())
        {
          OUTLINED_FUNCTION_56_1();
          OUTLINED_FUNCTION_32_1();
          *&v73[6] = 0;
          OUTLINED_FUNCTION_52_1();
          _os_log_impl(v12, v13, v14, v15, v16, 0x18u);
        }

        valuePtr = 0;
      }
    }

    v17 = valuePtr;
    if (*(a1 + 8) != (valuePtr != 0))
    {
      v18 = gLogObjects;
      v19 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_18())
      {
        *buf = 134218240;
        v71 = v18;
        OUTLINED_FUNCTION_49_2();
        *v73 = v19;
        OUTLINED_FUNCTION_24_2(&_mh_execute_header, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        v17 = valuePtr;
      }

      if (OUTLINED_FUNCTION_67_0())
      {
        OUTLINED_FUNCTION_56_1();
        OUTLINED_FUNCTION_32_1();
        *&v73[6] = v20;
        OUTLINED_FUNCTION_52_1();
        _os_log_impl(v21, v22, v23, v24, v25, 0x18u);
        v17 = valuePtr;
      }

      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"certRetrievalSupported: %d", v17);
      OUTLINED_FUNCTION_87_1(*a1, v8, @"AudioProductCerts");
      if (v26)
      {
        CFRelease(v26);
      }
    }

    *(a1 + 8) = valuePtr != 0;
    v27 = kCFACCProperties_Endpoint_AACP_FirstConnectionAfterPair;
    v28 = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_FirstConnectionAfterPair);
    if (v28)
    {
      v29 = CFBooleanGetValue(v28);
    }

    else
    {
      v29 = 0;
    }

    if (v29 != *(a1 + 9))
    {
      v30 = gLogObjects;
      v31 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v32 = *(gLogObjects + 456);
      }

      else
      {
        v32 = &_os_log_default;
        if (OUTLINED_FUNCTION_19_0())
        {
          *buf = 134218240;
          v71 = v30;
          OUTLINED_FUNCTION_49_2();
          *v73 = v31;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_56_1();
        OUTLINED_FUNCTION_32_1();
        *&v73[6] = v29;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "PropertiesDidchange: %@, firstConnectionAfterPair %d -> %d", buf, 0x18u);
      }

      v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"firstConnectionAfterPair: %d", v29);
      acc_platform_packetLogging_logParsedData(*a1, v27, @"AudioProductCerts", v33, 1);
      if (v33)
      {
        CFRelease(v33);
      }
    }

    *(a1 + 9) = v29 != 0;
    v34 = kCFACCProperties_Endpoint_AudioProduct_AuthSupported;
    v35 = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AudioProduct_AuthSupported);
    if (v35)
    {
      v36 = v35;
      if (CFArrayGetCount(v35) >= 1)
      {
        v37 = *(a1 + 64);
        if (v37)
        {
          CFRelease(v37);
          *(a1 + 64) = 0;
        }

        v38 = kCFAllocatorDefault;
        *(a1 + 64) = CFArrayCreateCopy(kCFAllocatorDefault, v36);
        if (CFArrayGetCount(v36) >= 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = a1 + 72;
          do
          {
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v36, v39);
              v68 = 0;
              CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v68);
              v43 = v68;
              if (*(v41 + v68))
              {
                break;
              }

              v66 = v38;
              v67 = v3;
              v44 = gLogObjects;
              v45 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 58)
              {
                v46 = *(gLogObjects + 456);
              }

              else
              {
                v46 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v71 = v44;
                  OUTLINED_FUNCTION_49_2();
                  *v73 = v45;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v43 = v68;
                }
              }

              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_56_1();
                *buf = 138413058;
                v71 = v47;
                OUTLINED_FUNCTION_49_2();
                *v73 = v43;
                *&v73[4] = v48;
                *&v73[6] = v49;
                v74 = v48;
                v75 = 1;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "PropertiesDidchange: %@, authSupported[%d] = %d -> %d ", buf, 0x1Eu);
                v43 = v68;
              }

              v3 = v67;
              v38 = v66;
              v40 = 1;
              *(v41 + v43) = 1;
              if (++v39 >= CFArrayGetCount(v36))
              {
                goto LABEL_64;
              }
            }

            ++v39;
          }

          while (v39 < CFArrayGetCount(v36));
          if ((v40 & 1) == 0)
          {
            goto LABEL_66;
          }

LABEL_64:
          v50 = CFStringCreateWithFormat(v38, 0, @"authSupported: %@", v36);
          OUTLINED_FUNCTION_87_1(*a1, v34, @"AudioProductCerts");
          if (v50)
          {
            CFRelease(v50);
          }
        }
      }
    }

LABEL_66:
    CFDictionaryApplyFunction(cf, _CFDictionaryApplierFunction_handlePropertiesChange, a1);
    CFRelease(cf);
  }

  return v3;
}

void _CFDictionaryApplierFunction_handlePropertiesChange(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a1 && a3)
  {
    if (*a3)
    {
      audioProductCerts_endpoint_propertyDidChange(a3, a1, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }
  }
}

uint64_t audioProductCerts_endpoint_setProperty(uint64_t *a1, const void *a2, const __CFArray *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (a1 && *a1 && *(*a1 + 16))
  {
    PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(a1, 1, a2, a3);
    acc_platform_packetLogging_logParsedData(*a1, a2, @"AudioProductCerts", PropertyDescription, 0);
    if (PropertyDescription)
    {
      CFRelease(PropertyDescription);
    }

    Copy = CFStringCreateCopy(kCFAllocatorDefault, *(*a1 + 16));
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    OUTLINED_FUNCTION_44_1();
    v11[1] = 0x40000000;
    v11[2] = __audioProductCerts_endpoint_setProperty_block_invoke;
    v11[3] = &unk_100226AB0;
    v11[4] = &v12;
    v11[5] = Copy;
    v11[6] = a2;
    v11[7] = a3;
    dispatch_async(v8, v11);
    v9 = *(v13 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v9 & 1;
}

void audioProductCerts_endpoint_removeProperty(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, int a10, int a11, const __CFDictionary *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (result)
  {
    OUTLINED_FUNCTION_86_0();
    PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(v28, 0, v26, 0);
    acc_platform_packetLogging_logParsedData(*v27, v26, @"AudioProductCerts", PropertyDescription, 0);
    if (PropertyDescription)
    {
      CFRelease(PropertyDescription);
    }

    v36 = *v27;

    acc_endpoint_removeProperty(v36, v26, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

void _audioProductCerts_endpoint_addCertEntryToList()
{
  OUTLINED_FUNCTION_95_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = acc_userDefaults_BOOLForKey(@"DisableSNOnly");
  if (!v7 || !v5 || !v3)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v10 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v11 = *(gLogObjects + 456);
  }

  else
  {
    v11 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v34, v35, v36, v37, v38, 0x12u);
    }
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_15_1();
    _os_log_debug_impl(v30, v31, OS_LOG_TYPE_DEBUG, v32, v33, 0x30u);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type, v5);
  CFDictionaryAddValue(Mutable, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial, v3);
  if (v1)
  {
    CFDictionaryAddValue(Mutable, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data, v1);
  }

  OUTLINED_FUNCTION_83_0();
  if (v10 < 58)
  {
    v13 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_24_3(&_mh_execute_header, v39, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41, v42, v43, v44);
    }
  }

  else
  {
    v13 = v5[57];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(v5) = *(v7 + 8);
    if (v1)
    {
      CFDataGetLength(v1);
    }

    OUTLINED_FUNCTION_36();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x18u);
  }

  if (v9)
  {
    OUTLINED_FUNCTION_72_0();
  }

  else
  {
    OUTLINED_FUNCTION_72_0();
    if (v1 || (*(v7 + 8) & 1) == 0)
    {
      if ((!v13 || v5 < 58) && OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7_5();
        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v50, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, v53, v54, v55);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_30();
        _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
      }

      v24 = 24;
      goto LABEL_39;
    }
  }

  if ((!v13 || v5 < 58) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_16_6();
    _os_log_error_impl(v45, v46, v47, v48, v49, 0x12u);
  }

  v18 = OUTLINED_FUNCTION_9_3();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v20, v21, OS_LOG_TYPE_INFO, v22, v23, 0xCu);
  }

  v24 = 16;
LABEL_39:
  CFArrayAppendValue(*(v7 + v24), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_41:
  OUTLINED_FUNCTION_96();
}

void ___audioProductCerts_endpoint_handlePropertiesDidChange_block_invoke(uint64_t a1)
{
  audioProductCerts_endpoint_propertiesDidChange(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void _CFArrayApplierFunction_parseEntries(const void *a1, __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = CFGetTypeID(a1);
    if (v5 != CFDictionaryGetTypeID() || (v6 = CFGetTypeID(a2), v6 != CFStringGetTypeID()))
    {
      v2 = 0;
      goto LABEL_18;
    }

    Value = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type);
    v8 = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial);
    v9 = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
    v10 = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AudioProduct_AuthData);
    v11 = gLogObjects;
    v12 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v13 = *(gLogObjects + 456);
    }

    else
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        *buf = 134218240;
        v19 = v11;
        v20 = 1024;
        LODWORD(v21) = v12;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v19 = Value;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      OUTLINED_FUNCTION_82_0(&_mh_execute_header, v13, v15, "_CFArrayApplierFunction_parseEntries: type %@, serial %@, data %@, authData %@", buf);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else if (v9)
    {
LABEL_12:
      CFStringAppendFormat(a2, 0, @"\t{type=%@, serial=%@, data=%@} \n", Value, v8, v9);
LABEL_17:
      v2 = a2;
      goto LABEL_18;
    }

    if (v10)
    {
      CFStringAppendFormat(a2, 0, @"\t{type=%@, serial=%@, authData=%@} \n", Value, v8, v10);
    }

    else
    {
      CFStringAppendFormat(a2, 0, @"\t{type=%@, serial=%@, no data} \n", Value, v8);
    }

    goto LABEL_17;
  }

LABEL_18:
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v16 = *(gLogObjects + 456);
  }

  else
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = v2;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "_CFArrayApplierFunction_parseEntries: outString %@", buf, 0xCu);
  }
}

CFIndex _audioProductCerts_endpoint_getSerialEntryIndexInCertList(const __CFArray *a1, const __CFString *a2)
{
  v2 = -1;
  if (a1 && a2 && CFArrayGetCount(a1) >= 1)
  {
    v2 = 0;
    v5 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v2);
      Value = CFDictionaryGetValue(ValueAtIndex, v5);
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v10 = *(gLogObjects + 456);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v22 = v8;
          v23 = 1024;
          LODWORD(v24) = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v10 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        Count = CFArrayGetCount(a1);
        *buf = 134218754;
        v22 = v2;
        v23 = 2048;
        v24 = Count;
        v25 = 2112;
        v26 = Value;
        v27 = 2112;
        v28 = a2;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_CFArrayApplierFunction_parseEntries: [%ld / %ld] serial %@ =?= %@", buf, 0x2Au);
        if (Value)
        {
LABEL_12:
          if (CFStringCompare(Value, a2, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }

      else if (Value)
      {
        goto LABEL_12;
      }

      if (++v2 >= CFArrayGetCount(a1))
      {
        v2 = -1;
        break;
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 58)
  {
    v12 = *(gLogObjects + 456);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "_audioProductCerts_endpoint_getSerialEntryIndexInCertList";
    v23 = 2048;
    v24 = v2;
    OUTLINED_FUNCTION_59_3();
    _os_log_debug_impl(v14, v15, v16, v17, v18, v19);
  }

  return v2;
}

uint64_t _audioProductCerts_endpoint_generateAuthChallenge(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_50();
    if (!v3 || !*v3)
    {
      return 0;
    }

    v4 = v2;
    if (acc_userDefaults_BOOLForKey(@"DisableAACPAuth"))
    {
      return 1;
    }

    Count = CFArrayGetCount(*(v1 + 88));
    v6 = gNumLogObjects;
    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 57;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (Count < 1)
    {
      if (!v8 && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_10_0();
        *&v73[14] = v6;
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v68, v69, v70, v71, v72, 0x12u);
      }

      if (OUTLINED_FUNCTION_93())
      {
        OUTLINED_FUNCTION_45_2();
        *v73 = 136315394;
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_78(v19, v20, v21, v22, v23);
      }

      return 1;
    }

    if (v8)
    {
      v9 = *(gLogObjects + 456);
    }

    else
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_10_0();
        *&v73[14] = v6;
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v63, v64, v65, v66, v67, 0x12u);
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_45_2();
      *v73 = 136315650;
      *&v73[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_10_9();
      *&v73[24] = v24;
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_78_1(v25, v26, v27, v28, v29);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 88), 0);
    if (ValueAtIndex)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, ValueAtIndex);
    }

    else
    {
      MutableCopy = 0;
    }

    v12 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_20_2();
      *&v73[14] = v12;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, v50, v51, v52);
    }

    if (OUTLINED_FUNCTION_79())
    {
      OUTLINED_FUNCTION_45_2();
      *v73 = 136315650;
      *&v73[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_78_1(v30, v31, v32, v33, v34);
      if (!MutableCopy)
      {
        goto LABEL_32;
      }
    }

    else if (!MutableCopy)
    {
      goto LABEL_32;
    }

    *(v1 + 96) = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
    if (v4)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v73 = v13;
      *&v73[16] = v13;
      arc4random_buf(v73, 0x20uLL);
      *(v1 + 104) = CFDataCreate(kCFAllocatorDefault, v73, 32);
    }

    CFDictionaryRemoveValue(MutableCopy, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
    v14 = kCFACCProperties_Endpoint_AudioProduct_AuthData;
    CFDictionarySetValue(MutableCopy, kCFACCProperties_Endpoint_AudioProduct_AuthData, *(v1 + 104));
    CFDictionarySetValue(*(v1 + 96), v14, *(v1 + 104));
LABEL_32:
    CFArrayRemoveValueAtIndex(*(v1 + 88), 0);
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v16 = *(gLogObjects + 456);
    }

    else
    {
      v16 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        *&v73[14] = v15;
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v53, v54, v55, v56, v57, 0x12u);
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_45_2();
      *v73 = 136315650;
      *&v73[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_10_9();
      *&v73[24] = v35;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_78_1(v36, v37, v38, v39, v40);
    }

    v17 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v18 = *(gLogObjects + 456);
    }

    else
    {
      v18 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        *&v73[14] = v17;
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v58, v59, v60, v61, v62, 0x12u);
      }
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_45_2();
      *v73 = 136315650;
      *&v73[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_10_9();
      *&v73[24] = v41;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_78_1(v42, v43, v44, v45, v46);
      if (!MutableCopy)
      {
        return 1;
      }
    }

    else if (!MutableCopy)
    {
      return 1;
    }

    CFRelease(MutableCopy);
    return 1;
  }

  return result;
}

uint64_t _audioProductCerts_endpoint_validateChallenge(uint64_t result, const __CFDictionary *a2)
{
  if (result)
  {
    v4 = result;
    v5 = *result;
    if (!*result)
    {
      return 0;
    }

    result = 0;
    if (a2)
    {
      if (*v5)
      {
        valuePtr = 0;
        v7 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Data;
        theDict = *(v4 + 96);
        Value = CFDictionaryGetValue(theDict, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
        v223 = *(v4 + 104);
        theData = Value;
        if (acc_userDefaults_BOOLForKey(@"UseCertDataPropertyForAuth"))
        {
          v9 = v7;
        }

        else
        {
          v9 = kCFACCProperties_Endpoint_AudioProduct_AuthData;
        }

        v10 = CFDictionaryGetValue(a2, v9);
        v11 = &audioProductCerts_endpoint_publish_onceToken;
        v225 = v10;
        if (v10)
        {
          v3 = v10;
          CFRetain(v10);
          if (CFDataGetLength(v3))
          {
            BytePtr = CFDataGetBytePtr(v3);
            if (BytePtr)
            {
              v13 = BytePtr;
              if (CFDataGetLength(v3) == 72 && *v13 == 48)
              {
                switch(v13[1])
                {
                  case 'B':
                    if (v13[68] || v13[69] || v13[70] || v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 68;
                    goto LABEL_24;
                  case 'C':
                    if (v13[69] || v13[70] || v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 69;
                    goto LABEL_24;
                  case 'D':
                    if (v13[70] || v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 70;
                    goto LABEL_24;
                  case 'E':
                    if (v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 71;
LABEL_24:
                    v15 = CFDataGetBytePtr(v3);
                    Copy = CFDataCreate(kCFAllocatorDefault, v15, v14);
                    v2 = gLogObjects;
                    if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
                    {
                      OUTLINED_FUNCTION_1_10();
                      OUTLINED_FUNCTION_11_4();
                      _os_log_error_impl(v143, v144, v145, v146, v147, 0x12u);
                    }

                    v3 = v225;
                    if (OUTLINED_FUNCTION_81())
                    {
                      v2 = &audioProductCerts_endpoint_publish_onceToken;
                      *buf = 136315650;
                      v229 = "_audioProductCerts_createTruncatedSignature";
                      v230 = 2048;
                      Length = CFDataGetLength(v225);
                      v232 = 2048;
                      *v233 = CFDataGetLength(Copy);
                      OUTLINED_FUNCTION_26_4();
                      _os_log_impl(v109, v110, v111, v112, v113, 0x20u);
                    }

                    break;
                  default:
LABEL_30:
                    Copy = CFDataCreateCopy(kCFAllocatorDefault, v3);
                    break;
                }

                if (Copy)
                {
                  goto LABEL_39;
                }
              }
            }
          }
        }

        OUTLINED_FUNCTION_46_0();
        if ((!v2 || v3 < 58) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v114, v115, v116, v117, v118, 0x12u);
        }

        v3 = v225;
        if (OUTLINED_FUNCTION_17())
        {
          *buf = 136315394;
          v229 = "_audioProductCerts_createTruncatedSignature";
          v230 = 2112;
          Length = v225;
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v99, v100, v101, v102, v103, 0x16u);
        }

        Copy = 0;
        v17 = 0;
        if (v225)
        {
LABEL_39:
          CFRelease(v3);
          v17 = Copy;
        }

        OUTLINED_FUNCTION_46_0();
        if ((!v2 || v3 < 58) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v104, v105, v106, v107, v108, 0x12u);
        }

        v18 = OUTLINED_FUNCTION_9_3();
        v20 = theData;
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 136315906;
          OUTLINED_FUNCTION_67_1();
          Length = v21;
          v232 = v22;
          *v233 = v23;
          *&v233[8] = v22;
          v234 = v17;
          OUTLINED_FUNCTION_66_0();
          _os_log_impl(v24, v25, v26, v27, v28, 0x2Au);
        }

        v226 = v17;
        if (CFDataGetLength(theData) < 1 || CFDataGetLength(v17) < 1 || CFDataGetLength(v223) < 1)
        {
          goto LABEL_130;
        }

        v219 = v4;
        if (v223 && CFDataGetLength(v223) == 32)
        {
          v29 = platform_systemInfo_copyBluetoothMACAddressData();
          v30 = v29;
          if (v29)
          {
            if (CFDataGetLength(v29) == 6)
            {
              v31 = CFDataGetLength(v223);
              Mutable = CFDataCreateMutable(kCFAllocatorDefault, v31 + 24);
              if (Mutable)
              {
                v33 = Mutable;
                CFDataAppendBytes(Mutable, "auth pairing state", 18);
                v34 = CFDataGetBytePtr(v223);
                v35 = CFDataGetLength(v223);
                CFDataAppendBytes(v33, v34, v35);
                v36 = CFDataGetBytePtr(v30);
                v37 = CFDataGetLength(v30);
                CFDataAppendBytes(v33, v36, v37);
                CFRelease(v30);
                v40 = v223;
                v220 = v33;
                if (!acc_platform_packetLogging_isLogPacketDataAsMsg(v38, v39))
                {
                  v222 = v5;
                  v41 = CFDataGetLength(theData);
                  v42 = CFDataGetBytePtr(theData);
                  CFDataGetLength(v223);
                  CFDataGetLength(v33);
                  CFDataGetLength(v225);
                  CFDataGetLength(v17);
                  if (v41 >= 1)
                  {
                    v44 = 0;
                    v45 = 500;
                    *&v43 = 134218240;
                    v218 = v43;
                    do
                    {
                      if (v45 >= v41 - v44)
                      {
                        v45 = v41 - v44;
                      }

                      v46 = gLogObjects;
                      v47 = *(v11 + 984);
                      if (gLogObjects && v47 >= 58)
                      {
                        v48 = *(gLogObjects + 456);
                      }

                      else
                      {
                        v48 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          *buf = v218;
                          v229 = v46;
                          v230 = 1024;
                          LODWORD(Length) = v47;
                          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                          v48 = &_os_log_default;
                        }
                      }

                      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136316674;
                        OUTLINED_FUNCTION_35_1();
                        v232 = 1024;
                        *v233 = v44;
                        *&v233[4] = 1024;
                        *&v233[6] = v41;
                        LOWORD(v234) = 1024;
                        *(&v234 + 2) = v45;
                        HIWORD(v234) = 1040;
                        v235 = v45;
                        v236 = 2096;
                        v237 = v42;
                        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: %@, certificate (%d of %d, show %d bytes):\n%{coreacc:bytes}.*P", buf, 0x38u);
                      }

                      v44 += v45;
                      v42 += v45;
                      v11 = &audioProductCerts_endpoint_publish_onceToken;
                    }

                    while (v44 < v41);
                  }

                  v49 = gLogObjects;
                  v50 = *(v11 + 984);
                  if (gLogObjects && v50 >= 58)
                  {
                    v5 = v222;
                  }

                  else
                  {
                    v5 = v222;
                    if (OUTLINED_FUNCTION_17())
                    {
                      OUTLINED_FUNCTION_1_10();
                      OUTLINED_FUNCTION_11_4();
                      _os_log_error_impl(v121, v122, v123, v124, v125, 0x12u);
                    }
                  }

                  if (OUTLINED_FUNCTION_81())
                  {
                    v49 = v5[2];
                    CFDataGetBytePtr(v223);
                    *buf = 136316162;
                    OUTLINED_FUNCTION_29_0();
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v51, v52, v53, v54, v55, 0x2Cu);
                  }

                  OUTLINED_FUNCTION_46_0();
                  v20 = theData;
                  if ((!v49 || v50 < 58) && OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_1_10();
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v126, v127, v128, v129, v130, 0x12u);
                  }

                  if (OUTLINED_FUNCTION_81())
                  {
                    v49 = v5[2];
                    CFDataGetBytePtr(v220);
                    *buf = 136316162;
                    OUTLINED_FUNCTION_29_0();
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v56, v57, v58, v59, v60, 0x2Cu);
                  }

                  OUTLINED_FUNCTION_46_0();
                  if ((!v49 || v50 < 58) && OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_1_10();
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v131, v132, v133, v134, v135, 0x12u);
                  }

                  if (OUTLINED_FUNCTION_81())
                  {
                    v49 = v5[2];
                    CFDataGetBytePtr(v225);
                    *buf = 136316162;
                    OUTLINED_FUNCTION_29_0();
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v61, v62, v63, v64, v65, 0x2Cu);
                  }

                  OUTLINED_FUNCTION_46_0();
                  if ((!v49 || v50 < 58) && OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_1_10();
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v136, v137, v138, v139, v140, 0x12u);
                  }

                  v40 = v223;
                  v33 = v220;
                  if (OUTLINED_FUNCTION_81())
                  {
                    v66 = v5[2];
                    CFDataGetBytePtr(v226);
                    *buf = 136316162;
                    v229 = "_audioProductCerts_endpoint_validateChallenge";
                    v230 = 2112;
                    Length = v66;
                    v33 = v220;
                    v232 = 1024;
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v67, v68, v69, v70, v71, 0x2Cu);
                  }
                }

                v72 = OUTLINED_FUNCTION_75_2();
                acc_platform_packetLogging_logData(v72, v73, v74, v40, -1);
                v75 = OUTLINED_FUNCTION_75_2();
                acc_platform_packetLogging_logData(v75, v76, v77, v33, -1);
                v78 = OUTLINED_FUNCTION_75_2();
                acc_platform_packetLogging_logData(v78, v79, v80, v225, -1);
                v81 = OUTLINED_FUNCTION_75_2();
                v3 = v33;
                v2 = v226;
                acc_platform_packetLogging_logData(v81, v82, v83, v226, -1);
                v84 = platform_auth_verifyNonceSignature(v20, v3, v226);
                OUTLINED_FUNCTION_46_0();
                v4 = v219;
                if ((!v226 || v3 < 58) && OUTLINED_FUNCTION_18())
                {
                  OUTLINED_FUNCTION_1_10();
                  OUTLINED_FUNCTION_24_2(&_mh_execute_header, v119, v120, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }

                if (OUTLINED_FUNCTION_67_0())
                {
                  *buf = 136315650;
                  OUTLINED_FUNCTION_35_1();
                  v232 = 1024;
                  *v233 = v84;
                  OUTLINED_FUNCTION_52_1();
                  _os_log_impl(v85, v86, v87, v88, v89, 0x1Cu);
                }

                if (v84)
                {
                  CFRelease(v220);
LABEL_107:
                  v98 = 2;
LABEL_131:
                  *(v4 + 112) = v98;
                  if (acc_userDefaults_BOOLForKey(@"ForceAuthFail"))
                  {
                    *(v4 + 112) = 1;
                  }

                  if (acc_userDefaults_BOOLForKey(@"IgnoreAACPAuthStatus"))
                  {
                    OUTLINED_FUNCTION_46_0();
                    if ((!v2 || v3 < 58) && OUTLINED_FUNCTION_17())
                    {
                      OUTLINED_FUNCTION_1_10();
                      OUTLINED_FUNCTION_11_4();
                      _os_log_error_impl(v186, v187, v188, v189, v190, 0x12u);
                    }

                    v148 = OUTLINED_FUNCTION_9_3();
                    if (os_log_type_enabled(v148, v149))
                    {
                      *buf = 136315906;
                      OUTLINED_FUNCTION_47_0();
                      OUTLINED_FUNCTION_66_0();
                      _os_log_impl(v150, v151, v152, v153, v154, 0x22u);
                    }
                  }

                  else
                  {
                    acc_connection_setAuthStatus(*v5, 1, *(v4 + 112));
                  }

                  v155 = *(v4 + 112);
                  valuePtr = v155 == 2;
                  v156 = gLogObjects;
                  v157 = *(v11 + 984);
                  if (gLogObjects && v157 >= 58)
                  {
                    v158 = v155;
                  }

                  else
                  {
                    v158 = v155;
                    if (OUTLINED_FUNCTION_17())
                    {
                      *buf = 134218240;
                      v229 = v156;
                      v230 = 1024;
                      LODWORD(Length) = v157;
                      OUTLINED_FUNCTION_11_4();
                      _os_log_error_impl(v181, v182, v183, v184, v185, 0x12u);
                      v158 = *(v4 + 112);
                    }
                  }

                  v159 = OUTLINED_FUNCTION_9_3();
                  if (os_log_type_enabled(v159, v160))
                  {
                    *buf = 136315906;
                    OUTLINED_FUNCTION_67_1();
                    Length = v161;
                    v232 = 1024;
                    *v233 = v158;
                    *&v233[4] = 1024;
                    *&v233[6] = v162;
                    OUTLINED_FUNCTION_66_0();
                    _os_log_impl(v163, v164, v165, v166, v167, 0x22u);
                    v158 = *(v4 + 112);
                  }

                  if (v158 == 3)
                  {
                    acc_platform_packetLogging_logEvent(v5, "AUTH TIMEOUT", "ACCAuthProtocol accessory authentication Timed Out!", v218);
                  }

                  else if (v158 == 2)
                  {
                    acc_platform_packetLogging_logEvent(v5, "AUTH PASSED", "ACCAuthProtocol accessory authentication Passed!", v218);
                  }

                  else
                  {
                    acc_platform_packetLogging_logEvent(v5, "AUTH FAILED", "ACCAuthProtocol accessory authentication Failed!");
                    CFDictionaryGetValue(theDict, kCFACCProperties_Endpoint_AudioProduct_AuthSerial);
                    if ((platform_auth_removeCertDataEntryFromCache() & 1) == 0)
                    {
                      if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
                      {
                        OUTLINED_FUNCTION_1_10();
                        OUTLINED_FUNCTION_11_4();
                        _os_log_error_impl(v193, v194, v195, v196, v197, 0x12u);
                      }

                      if (OUTLINED_FUNCTION_81())
                      {
                        *buf = 0;
                        OUTLINED_FUNCTION_26_4();
                        _os_log_impl(v176, v177, v178, v179, v180, 2u);
                      }
                    }
                  }

                  v168 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
                  if (v168)
                  {
                    v169 = v168;
                    if (acc_userDefaults_BOOLForKey(@"IgnoreAACPAuthStatus"))
                    {
                      if (gLogObjects && gNumLogObjects >= 58)
                      {
                        v170 = *(gLogObjects + 456);
                      }

                      else
                      {
                        v170 = &_os_log_default;
                        if (OUTLINED_FUNCTION_18())
                        {
                          OUTLINED_FUNCTION_1_10();
                          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v191, v192, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                        }
                      }

                      if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315906;
                        OUTLINED_FUNCTION_47_0();
                        _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_INFO, "%s: %@, Skip setting auth state property: authState %{coreacc:ACCAuthInfo_Status_t}d) -> %d) ", buf, 0x22u);
                      }
                    }

                    OUTLINED_FUNCTION_75_2();
                    acc_endpoint_setProperty();
                    v173 = v226;
                    CFRelease(v169);
                  }

                  else
                  {
                    v171 = gLogObjects;
                    v172 = gNumLogObjects;
                    v173 = v226;
                    if (gLogObjects && gNumLogObjects >= 58)
                    {
                      v174 = *(gLogObjects + 456);
                    }

                    else
                    {
                      v174 = &_os_log_default;
                      if (OUTLINED_FUNCTION_21())
                      {
                        *buf = 134218240;
                        v229 = v171;
                        v230 = 1024;
                        LODWORD(Length) = v172;
                        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v175, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }
                    }

                    if (OUTLINED_FUNCTION_21())
                    {
                      *buf = 136315394;
                      OUTLINED_FUNCTION_35_1();
                      _os_log_error_impl(&_mh_execute_header, v174, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create authState property value!", buf, 0x16u);
                    }
                  }

                  if (v173)
                  {
                    CFRelease(v173);
                  }

                  return 1;
                }

                v90 = platform_auth_verifyNonceSignatureForType(v20, v220, v226, 4u);
                OUTLINED_FUNCTION_46_0();
                if ((!v226 || v3 < 58) && OUTLINED_FUNCTION_18())
                {
                  OUTLINED_FUNCTION_1_10();
                  OUTLINED_FUNCTION_24_2(&_mh_execute_header, v141, v142, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }

                if (OUTLINED_FUNCTION_67_0())
                {
                  *buf = 136315906;
                  OUTLINED_FUNCTION_67_1();
                  Length = v91;
                  v232 = 1024;
                  *v233 = 4;
                  *&v233[4] = 1024;
                  *&v233[6] = v92;
                  OUTLINED_FUNCTION_52_1();
                  _os_log_impl(v93, v94, v95, v96, v97, 0x22u);
                }

                CFRelease(v220);
                if (v90)
                {
                  goto LABEL_107;
                }

LABEL_130:
                v98 = 1;
                goto LABEL_131;
              }
            }
          }
        }

        else
        {
          v30 = 0;
        }

        OUTLINED_FUNCTION_46_0();
        if ((!v2 || v3 < 58) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v208, v209, v210, v211, v212, 0x12u);
        }

        if (OUTLINED_FUNCTION_17())
        {
          *buf = 136315650;
          v229 = "_audioProductCerts_createBlobFromNonce";
          v230 = 2112;
          Length = v223;
          v232 = 2112;
          *v233 = v30;
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v198, v199, v200, v201, v202, 0x20u);
          if (!v30)
          {
LABEL_123:
            OUTLINED_FUNCTION_46_0();
            if (v2 && v3 >= 58)
            {
              v4 = v219;
            }

            else
            {
              v4 = v219;
              if (OUTLINED_FUNCTION_17())
              {
                OUTLINED_FUNCTION_1_10();
                OUTLINED_FUNCTION_11_4();
                _os_log_error_impl(v213, v214, v215, v216, v217, 0x12u);
              }
            }

            if (OUTLINED_FUNCTION_17())
            {
              *buf = 136315394;
              OUTLINED_FUNCTION_35_1();
              OUTLINED_FUNCTION_11_4();
              _os_log_error_impl(v203, v204, v205, v206, v207, 0x16u);
            }

            goto LABEL_130;
          }
        }

        else if (!v30)
        {
          goto LABEL_123;
        }

        CFRelease(v30);
        goto LABEL_123;
      }
    }
  }

  return result;
}

void _audioProductCerts_endpoint_handlePropertiesDidChange_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_59_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, v5);
}

void _audioProductCerts_endpoint_handlePropertiesDidChange_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_59_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, v5);
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_1()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_2()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_12()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_13()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_14()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_15()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_16()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_1()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_2()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_7()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_8()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_9()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_10()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_11()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_12()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_13()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _CFArrayApplierFunction_handleSerialList_cold_12()
{
  OUTLINED_FUNCTION_86_0();
  if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_16_6();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78(v0, v1, v2, v3, v4);
  }
}

void _CFArrayApplierFunction_handleCertList_cold_16()
{
  OUTLINED_FUNCTION_86_0();
  if ((!gLogObjects || gNumLogObjects < 58) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_16_6();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78(v0, v1, v2, v3, v4);
  }
}

void _audioProductCerts_endpoint_handlePrimaryBudMismatch_cold_1(uint64_t a1)
{
  *(a1 + 40) = 5;
  v1 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handlePrimaryBudMismatch_cold_2(uint64_t a1)
{
  *(a1 + 40) = 5;
  v1 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

uint64_t oobPairing_control_sendPairingInfo(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_4_11();
    if (v3)
    {
      if (*v2)
      {
        if (*v1 == 3)
        {
          if ((!gLogObjects || gNumLogObjects < 11) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18);
          }

          if (OUTLINED_FUNCTION_81())
          {
            OUTLINED_FUNCTION_5_10();
            OUTLINED_FUNCTION_0_7();
            OUTLINED_FUNCTION_2_16(&_mh_execute_header, v4, v5, "Send OOBPairing Info for endpoint: %@ bleUUID: %@", v6, v7, v8, v9);
          }

          v10 = oobPairing_bleToOobPairingType(*(v1 + 16));
          BytePtr = CFDataGetBytePtr(*(v1 + 24));
          Length = CFDataGetLength(*(v1 + 24));
          oobPairing_endpoint_sendOutgoingData(v2, 2u, v10, BytePtr, Length);
          platform_blePairing_deleteParams(v1);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t oobPairing_control_sendPairingData(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_4_11();
    if (v3)
    {
      if (*v2)
      {
        if (*v1 == 2)
        {
          if ((!gLogObjects || gNumLogObjects < 11) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18);
          }

          if (OUTLINED_FUNCTION_81())
          {
            OUTLINED_FUNCTION_5_10();
            OUTLINED_FUNCTION_0_7();
            OUTLINED_FUNCTION_2_16(&_mh_execute_header, v4, v5, "Send OOBPairing Data for endpoint: %@ bleUUID: %@", v6, v7, v8, v9);
          }

          v10 = oobPairing_bleToOobPairingType(*(v1 + 16));
          BytePtr = CFDataGetBytePtr(*(v1 + 24));
          Length = CFDataGetLength(*(v1 + 24));
          oobPairing_endpoint_sendOutgoingData(v2, 3u, v10, BytePtr, Length);
          platform_blePairing_deleteParams(v1);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t oobPairing_control_start(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_4_11();
    if (v3)
    {
      if (*v2)
      {
        if (*v1)
        {
          return 0;
        }

        else
        {
          if ((!gLogObjects || gNumLogObjects < 11) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12, v13, v14, v15);
          }

          if (OUTLINED_FUNCTION_81())
          {
            OUTLINED_FUNCTION_5_10();
            OUTLINED_FUNCTION_0_7();
            OUTLINED_FUNCTION_2_16(&_mh_execute_header, v4, v5, "OOBPairing start for endpoint: %@ bleUUID: %@", v6, v7, v8, v9);
          }

          oobPairing_endpoint_sendOutgoingData(v2, 0, 2, 0, 0);
          platform_blePairing_deleteParams(v1);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t oobPairing_control_stop(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (!a2 || !*a1)
  {
    return v3;
  }

  if (*a2 != 4)
  {
    return 0;
  }

  if ((!gLogObjects || gNumLogObjects < 11) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v12, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_2_16(&_mh_execute_header, v5, v6, "OOBPairing stop for endpoint: %@ bleUUID: %@", v7, v8, v9, v10);
  }

  v3 = 1;
  oobPairing_endpoint_sendOutgoingData(a1, 1u, 2, 0, 0);
  platform_blePairing_deleteParams(a2);
  return v3;
}

uint64_t oobPairing_control_deviceStateUpdate(uint64_t result, void *a2)
{
  if (result)
  {
    if (*result)
    {
      if (gLogObjects)
      {
        v3 = gNumLogObjects < 11;
      }

      else
      {
        v3 = 1;
      }

      if (v3 && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9);
      }

      if (OUTLINED_FUNCTION_81())
      {
        OUTLINED_FUNCTION_5_10();
        OUTLINED_FUNCTION_0_7();
        OUTLINED_FUNCTION_2_16(&_mh_execute_header, v10, v11, "OOBPairing deviceStateUpdate for endpoint: %@ bleUUID: %@", v12, v13, v14, v15);
      }

      platform_blePairing_deleteParams(a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *systemInfo_copyProductType()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void iAP2LinkProcessInOrderPacketCMD_cold_3(int a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "iAP2LinkProcessInOrderPacketCMD";
  v4 = 1024;
  v5 = 119;
  v6 = 1024;
  v7 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%d Unsupported control packet type=%d", &v2, 0x18u);
}

void iAP2LinkProcessInOrderPacketCMD_cold_5(unsigned __int8 *a1, unsigned __int8 a2, os_log_t log)
{
  v3 = *a1;
  v4 = 136316162;
  v5 = "iAP2LinkProcessInOrderPacketCMD";
  v6 = 1024;
  v7 = 100;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = a2;
  v12 = 1024;
  v13 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:%d linkVer=%d cmdID=%xh(%d) not supported link version!", &v4, 0x24u);
}

void mfi4Auth_protocol_cleanupNVMContext(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 48) = 0;
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 56) = 0;
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 64) = 0;
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 72) = 0;
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 80) = 0;
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 88) = 0;
    }

    v9 = *(a1 + 96);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 96) = 0;
    }

    v10 = *(a1 + 104);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 104) = 0;
    }

    v11 = *(a1 + 112);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 112) = 0;
    }

    v12 = *(a1 + 120);
    if (v12)
    {
      free(v12);
      *(a1 + 120) = 0;
    }
  }
}

uint64_t mfi4Auth_protocol_initMessage_RequestUserNVMRead(uint64_t a1, void *a2, uint64_t a3, int a4, char *a5, char *a6)
{
  if (!a2)
  {
    return 1;
  }

  LODWORD(v8) = a4;
  v11 = *(a1 + 200);
  v12 = OUTLINED_FUNCTION_6_7();
  *a2 = v12;
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v13, v11, 20784, v14, v15);
  if (*(a1 + 144) == 2)
  {
    if (a5)
    {
      v16 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v16, v17, 0, a5, 0x40u);
    }

    if (a6)
    {
      v18 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v18, v19, 1, a6, 0x10u);
    }
  }

  v20 = OUTLINED_FUNCTION_80_0();
  _convertUserVendorNVMRead(v20, v21);
  if (v8)
  {
    v8 = v8;
    do
    {
      OUTLINED_FUNCTION_27_2();
      --v8;
    }

    while (v8);
  }

  result = 0;
  *(a1 + 28) = 20784;
  return result;
}

void _handleNvmReadUserPublicKey()
{
  OUTLINED_FUNCTION_43_1();
  v3 = v1;
  if (!v1)
  {
    v75 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_21_0(v75))
    {
LABEL_70:

      goto LABEL_40;
    }

LABEL_74:
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v89, v90, v91, v92, v93, 0xCu);
    goto LABEL_70;
  }

  if (*(v1 + 30) == 1)
  {
    v76 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_21_0(v76))
    {
      goto LABEL_70;
    }

    goto LABEL_74;
  }

  v4 = v2;
  if (*v1)
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, *v1);
    if (Copy)
    {
      v6 = Copy;
      EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
      if (!EndpointWithUUID)
      {
LABEL_39:
        CFRelease(v6);
        goto LABEL_40;
      }

      v8 = EndpointWithUUID;
      if (1 << _convertNVMReadResponse(v3, 1, 0) != v4)
      {
        v12 = OUTLINED_FUNCTION_80_0();
        if (1 << _convertNVMReadResponse(v12, v13, 0) != v4)
        {
          goto LABEL_30;
        }

        if (gLogObjects && gNumLogObjects >= 56)
        {
          v14 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59, v60, v61, v62);
          }

          v14 = &_os_log_default;
          v25 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_26())
        {
          OUTLINED_FUNCTION_15_7(&_mh_execute_header, v26, v27, "NotPaired", v28, v29, v30, v31);
        }

        v23 = *v8;
        v24 = 1;
LABEL_29:
        acc_connection_setPairingStatus(v23, v24);
LABEL_30:
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v32 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41, v42, v43, v44);
          }

          v32 = &_os_log_default;
          v33 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_26())
        {
          OUTLINED_FUNCTION_15_7(&_mh_execute_header, v34, v35, "setProperty: NFC_InfoAvailable", v36, v37, v38, v39);
        }

        acc_endpoint_setProperty();
        goto LABEL_39;
      }

      v9 = *(*(v3 + 712) + 80);
      if (!v9)
      {
        v82 = logObjectForModule_12();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_15_7(&_mh_execute_header, v83, v84, "_handleNvmReadUserPublicKey: !serialNumberString", v85, v86, v87, v88);
        }

        goto LABEL_30;
      }

      v10 = mfi4Auth_protocol_nvm_copyUserPublicKeyForSerialNumber(v9);
      if (v10)
      {
        PublicKey = _extractPublicKey(v10);
        if (!PublicKey)
        {
          goto LABEL_30;
        }

        v46 = PublicKey;
        CachedUserPublicKey = _getCachedUserPublicKey(v3);
        if (!CachedUserPublicKey)
        {
          goto LABEL_30;
        }

        v48 = memcmp(v46, CachedUserPublicKey, 0x40uLL);
        if (gLogObjects)
        {
          v49 = gNumLogObjects <= 55;
        }

        else
        {
          v49 = 1;
        }

        v50 = !v49;
        if (!v48)
        {
          if (v50)
          {
            v56 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v78, v79, v80, v81);
            }

            v56 = &_os_log_default;
            v63 = &_os_log_default;
          }

          if (OUTLINED_FUNCTION_26())
          {
            OUTLINED_FUNCTION_15_7(&_mh_execute_header, v64, v65, "PairedToCurrentUser", v66, v67, v68, v69);
          }

          v23 = *v8;
          v24 = 2;
          goto LABEL_29;
        }

        if (v50)
        {
          v11 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v71, v72, v73, v74);
          }

          v11 = &_os_log_default;
          v57 = &_os_log_default;
        }

        if (!OUTLINED_FUNCTION_26())
        {
          goto LABEL_22;
        }

        v22 = "PairedToAnotherUser";
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v11 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, v53, v54, v55);
          }

          v11 = &_os_log_default;
          v15 = &_os_log_default;
        }

        if (!OUTLINED_FUNCTION_26())
        {
          goto LABEL_22;
        }

        v22 = "PairedToAnotherUser (!keyRef)";
      }

      OUTLINED_FUNCTION_15_7(&_mh_execute_header, v16, v17, v22, v18, v19, v20, v21);
LABEL_22:

      v23 = *v8;
      v24 = 3;
      goto LABEL_29;
    }
  }

LABEL_40:
  if ((*(v3 + 89) & 1) == 0)
  {
    notify_post("com.apple.accessories.connection.passedMFi4Auth");
    *(v3 + 89) = 1;
  }

  OUTLINED_FUNCTION_44_2();
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMAuthStart(uint64_t a1)
{
  if (!a1)
  {
    v25 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v25))
    {
LABEL_17:

      return 1;
    }

    *v33 = 136315138;
    *&v33[4] = "mfi4Auth_protocol_initMessage_RequestNVMAuthStart";
LABEL_21:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v27, v28, v29, v30, v31, v32);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_8_6();
  if (v4)
  {
    v26 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v26))
    {
      goto LABEL_17;
    }

    *v33 = 136315138;
    *&v33[4] = "mfi4Auth_protocol_initMessage_RequestNVMAuthStart";
    goto LABEL_21;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1[100];
  v8 = gLogObjects;
  v9 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v10 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v33 = 134218240;
      *&v33[4] = v8;
      OUTLINED_FUNCTION_3();
      *&v33[14] = v9;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v21, v22, v23, v24, *v33, *&v33[16]);
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v10, v12, "initMessage_RequestNVMAuthStart", v33);
  }

  if (!v6)
  {
    return 1;
  }

  v13 = OUTLINED_FUNCTION_6_7();
  *v6 = v13;
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v14, v7, 20797, v15, v16);
  v17 = OUTLINED_FUNCTION_19_4();
  iAP2MsgAddU16Param(v17, v18, 0, v5);
  result = 0;
  v1[14] = 20797;
  return result;
}

const __CFData *_generateUserSignature(__SecKey *a1, __int128 *a2, __int128 *a3)
{
  error = 0;
  data = 2;
  v10 = *a2;
  v11 = *a3;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *md = v4;
  v8 = v4;
  CC_SHA256(&data, 0x21u, md);
  if (!a1)
  {
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, md, 32);
  if (result)
  {
    return SecKeyCreateSignature(a1, kSecKeyAlgorithmECDSASignatureRFC4754, result, &error);
  }

  return result;
}

UInt8 *_extractPublicKey(__SecKey *a1)
{
  error = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = SecKeyCopyPublicKey(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v3 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v3, v5, "_extractPublicKey: SecKeyCopyExternalRepresentation", buf);
  }

  v6 = SecKeyCopyExternalRepresentation(v2, &error);
  if (error)
  {
    v20 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_18_2(v20))
    {
      Code = CFErrorGetCode(error);
      *buf = 134217984;
      v25 = Code;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "cfError: 0x%ld", buf, 0xCu);
    }

    return 0;
  }

  v7 = v6;
  if (!v6)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v8 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v8, v10, "_extractPublicKey: CFDataGetLength", buf);
  }

  Length = CFDataGetLength(v7);
  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v14 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v25 = v12;
      v26 = 1024;
      v27 = v13;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v14 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = Length;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_extractPublicKey: keyDataLength:%ld", buf, 0xCu);
  }

  if (Length != 65)
  {
    return 0;
  }

  v17 = malloc_type_calloc(0x40uLL, 1uLL, 0x795296FCuLL);
  v28.location = 1;
  v28.length = 64;
  CFDataGetBytes(v7, v28, v17);
  return v17;
}

void mfi4Auth_protocol_initMessage_RequestUserNVMWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  OUTLINED_FUNCTION_43_1();
  if (!v24)
  {
    v51 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v51))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v25 = v24;
  OUTLINED_FUNCTION_16_7();
  if (v33)
  {
    v52 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v52))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v34 = v28;
  if (!v28)
  {
    v53 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v53))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v35 = v29;
  if (!v29)
  {
    v54 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v54))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v23 = v30;
  if (!v30)
  {
    v55 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v55))
    {
LABEL_27:
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v56, v57, v58, v59, v60, v61);
    }

LABEL_28:

    goto LABEL_17;
  }

  v36 = v27;
  if (v27)
  {
    v37 = v32;
    v38 = v31;
    v39 = v26;
    v40 = OUTLINED_FUNCTION_6_7();
    *v36 = v40;
    if (v40)
    {
      OUTLINED_FUNCTION_29_1(v40, v39, 20787, *(v25 + 16), *(v25 + 24));
      if (*(v25 + 144) == 2)
      {
        if (v37)
        {
          OUTLINED_FUNCTION_20_3();
          iAP2MsgAddArrayU8Param(v41, v42, v43, v37, 0x40u);
        }

        if (a23)
        {
          iAP2MsgAddArrayU8Param(*v36, 0, 1, a23, 0x10u);
        }
      }

      v44 = _convertUserNVMWrite(v25, 2);
      if (v38)
      {
        v45 = v44;
        v46 = v38;
        do
        {
          v47 = iAP2MsgAddGroupParam(*v36, v45);
          v48 = *v34++;
          iAP2MsgAddU16Param(*v36, v47, 0, v48);
          v50 = *v35++;
          v49 = v50;
          LODWORD(v50) = *v23++;
          iAP2MsgAddArrayU8Param(*v36, v47, 1, v49, v50);
          --v46;
        }

        while (v46);
      }

      *(v25 + 28) = 20787;
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_44_2();
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMWritePublicKey(uint64_t a1)
{
  if (!a1)
  {
    v25 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v25))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8)
  {
    v26 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v26))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v9 = v4;
  if (!v4)
  {
    v27 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v27))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v10 = v6;
  if (!v6)
  {
    v28 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v28))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = v7;
  if (!v7)
  {
    v29 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v29))
    {
LABEL_18:
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v30, v31, v32, v33, v34, v35);
    }

LABEL_19:

    return 1;
  }

  v12 = v2;
  if (!v2)
  {
    return 1;
  }

  v13 = v5;
  v14 = v3;
  v15 = v1[100];
  v16 = OUTLINED_FUNCTION_6_7();
  *v12 = v16;
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v17, v15, 20795, v18, v19);
  OUTLINED_FUNCTION_20_3();
  iAP2MsgAddU16Param(v20, v21, v22, v14);
  iAP2MsgAddArrayU8Param(*v12, 0, 1, v11, 0x40u);
  iAP2MsgAddArrayU8Param(*v12, 0, 2, v10, 0x10u);
  v23 = iAP2MsgAddGroupParam(*v12, 3);
  iAP2MsgAddU16Param(*v12, v23, 0, v14);
  iAP2MsgAddArrayU8Param(*v12, v23, 1, v9, v13);
  result = 0;
  v1[14] = 20795;
  return result;
}

void mfi4Auth_protocol_initMessage_RequestNVMErasePublicKey()
{
  OUTLINED_FUNCTION_43_1();
  if (!v1)
  {
    v27 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v27))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8)
  {
    v28 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v28))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = v6;
  if (!v6)
  {
    v29 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v29))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v10 = v7;
  if (!v7)
  {
    v30 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v30))
    {
LABEL_16:
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v31, v32, v33, v34, v35, v36);
    }

LABEL_17:

    goto LABEL_8;
  }

  v11 = v3;
  if (v3)
  {
    v12 = v5;
    v13 = v4;
    v14 = v2;
    v15 = OUTLINED_FUNCTION_6_7();
    *v11 = v15;
    if (v15)
    {
      OUTLINED_FUNCTION_21_4();
      OUTLINED_FUNCTION_29_1(v16, v14, 20796, v17, v18);
      v19 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddU16Param(v19, v20, 0, v13);
      v21 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v21, v22, 1, v10, 0x40u);
      v23 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v23, v24, 2, v9, 0x10u);
      v25 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddU16Param(v25, v26, 3, v12);
      v0[14] = 20796;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_44_2();
}

uint64_t mfi4Auth_protocol_handle_NVMAuthStart(uint64_t a1)
{
  inited = 1;
  v35 = 0;
  v39 = 0;
  __dst = 0u;
  v38 = 0u;
  if (!a1)
  {
    v30 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v30))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_16_7();
  if (v5)
  {
    v31 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v31))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
    goto LABEL_47;
  }

  v6 = v3;
  if (!v3)
  {
    v32 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v32))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
    goto LABEL_47;
  }

  if (!v4)
  {
    v33 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v33))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
LABEL_47:
    OUTLINED_FUNCTION_2_17();
LABEL_38:
    _os_log_error_impl(v24, v25, v26, v27, v28, v29);
LABEL_35:

    return inited;
  }

  v34 = v2;
  FirstParam = iAP2MsgGetFirstParam(v3, 0);
  v8 = 0;
  v9 = 0;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v11 = gLogObjects;
    v12 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v13 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v41 = v11;
        v42 = 1024;
        v43 = v12;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v14 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v41) = ParamID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handle_NVMAuthStart: paramID: %d", buf, 8u);
    }

    switch(ParamID)
    {
      case 2:
        DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, &__dst, 33);
        if (inited || DataAsArrayU8 != 33)
        {
          return inited;
        }

        v9 |= 4u;
        break;
      case 1:
        DataAsU16 = iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          return inited;
        }

        v8 = DataAsU16;
        v9 |= 2u;
        break;
      case 0:
        iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          return inited;
        }

        v9 |= 1u;
        break;
    }

    FirstParam = iAP2MsgGetNextParamWithError(v6, 0, FirstParam, &v35);
    if (v35)
    {
      return inited;
    }
  }

  if (v9 == 7)
  {
    v17 = *(v34 + 712);
    *(v17 + 136) = v8;
    v18 = v38;
    *(v17 + 138) = __dst;
    *(v17 + 154) = v18;
    *(v17 + 170) = v39;
    inited = mfi4Auth_protocol_initSigmaContextNvm(v34);
    v19 = gLogObjects;
    v20 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v1 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v41 = v19;
        v42 = 1024;
        v43 = v20;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      v1 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    OUTLINED_FUNCTION_13_0();
    v29 = 2;
    goto LABEL_38;
  }

  return inited;
}

uint64_t mfi4Auth_protocol_handle_NVMAuthFinish(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  inited = 1;
  HIBYTE(v417) = 0;
  v423 = 0u;
  memset(v424, 0, sizeof(v424));
  v421 = 0u;
  v422 = 0u;
  *bytes = 0u;
  memcpy(__dst, &unk_1001C37B0, sizeof(__dst));
  if (!a1)
  {
    v348 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v348))
    {
      goto LABEL_170;
    }

    goto LABEL_171;
  }

  if (*(a1 + 30) == 1)
  {
    v349 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v349))
    {
      goto LABEL_170;
    }

    goto LABEL_171;
  }

  if (!a2)
  {
    v350 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v350))
    {
      goto LABEL_170;
    }

    goto LABEL_171;
  }

  if (!a4)
  {
    v351 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v351))
    {
LABEL_170:
      v425 = 136315138;
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v352, v353, v354, v355, v356, v357);
    }

LABEL_171:

    v30 = 0;
    goto LABEL_91;
  }

  v395 = a3;
  v399 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  allocator = kCFAllocatorDefault;
  *&v12 = 67109120;
  *v411 = v12;
  *&v12 = 67109378;
  *v404 = v12;
  *&v12 = 134218240;
  *v401 = v12;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        OUTLINED_FUNCTION_18_1(v16, v17, v18, v19, v20, v21, v22, v23, v24, v387, v391, v395, v399, v25);
        OUTLINED_FUNCTION_39_1();
        *(v50 + 158) = v14;
        v51 = OUTLINED_FUNCTION_38_2();
        _os_log_error_impl(v51, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, 0x12u);
      }

      v26 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (OUTLINED_FUNCTION_24())
    {
      v425 = v411[0];
      *v426 = ParamID;
      v27 = OUTLINED_FUNCTION_38_2();
      _os_log_impl(v27, v15, OS_LOG_TYPE_DEFAULT, "handle_NVMAuthFinish: paramID: %d", v28, 8u);
    }

    if (ParamID == 2)
    {
      if (v10)
      {
        free(v10);
      }

      if ((v11 & 4) != 0)
      {
LABEL_158:
        inited = 22;
        goto LABEL_162;
      }

      ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
      v32 = ParamValueLen;
      if (ParamValueLen <= 0x15)
      {
        v338 = logObjectForModule_12();
        if (OUTLINED_FUNCTION_18_2(v338))
        {
          v425 = 67109376;
          *v426 = v32;
          *&v426[4] = 1024;
          *&v426[6] = 22;
          OUTLINED_FUNCTION_7_6();
          _os_log_impl(v339, v340, v341, v342, v343, 0xEu);
        }

        goto LABEL_161;
      }

      v10 = OUTLINED_FUNCTION_34_1(ParamValueLen);
      DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, v10, v32);
      if (inited || DataAsArrayU8 != v32)
      {
        goto LABEL_162;
      }

      v34 = CFDataCreate(kCFAllocatorDefault, v10, v32);
      v30 = _dumpSimpleHex(v34);

      v35 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v36 = *(gLogObjects + 440);
      }

      else
      {
        v37 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v37)
        {
          OUTLINED_FUNCTION_18_1(v37, v38, v39, v40, v41, v42, v43, v44, v45, v387, v391, v395, v399, v46);
          OUTLINED_FUNCTION_39_1();
          *(v53 + 158) = v35;
          v54 = OUTLINED_FUNCTION_38_2();
          _os_log_error_impl(v54, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v55, 0x12u);
        }

        v47 = &_os_log_default;
        v36 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        v425 = v404[0];
        *v426 = v32;
        *&v426[4] = 2112;
        *&v426[6] = v30;
        v48 = OUTLINED_FUNCTION_38_2();
        _os_log_impl(v48, v36, OS_LOG_TYPE_DEFAULT, "handle_NVMAuthFinish: A_c1[%d]: %@", v49, 0x12u);
      }

      v11 |= 4u;
    }

    else
    {
      if (ParamID == 1)
      {
        if ((v11 & 2) != 0)
        {
          goto LABEL_158;
        }

        v29 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, v424, 80);
        if (inited || v29 != 80)
        {
          goto LABEL_162;
        }

        v11 |= 2u;
      }

      else if (!ParamID)
      {
        if (v11)
        {
          goto LABEL_158;
        }

        iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          goto LABEL_162;
        }

        v11 |= 1u;
      }

      v30 = v9;
    }

    FirstParam = iAP2MsgGetNextParamWithError(a2, 0, FirstParam, &v417 + 7);
    v9 = v30;
    if (HIBYTE(v417))
    {
      goto LABEL_91;
    }
  }

  if (v11 != 7)
  {
    goto LABEL_162;
  }

  v56 = v399;
  v57 = *(v399 + 712);
  v58 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v15 = *(gLogObjects + 440);
  }

  else
  {
    v59 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v59)
    {
      OUTLINED_FUNCTION_1_11(v59, v60, v61, v62, v63, v64, v65, v66, v67, v387, v391, v395, v399, v68);
      *(v163 + 158) = v58;
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v164, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v15 = &_os_log_default;
    v69 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_24())
  {
    LOWORD(v425) = 0;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v70, v71, v72, v73, v74, 2u);
  }

  if (inited)
  {
    v358 = logObjectForModule_12();
    v359 = OUTLINED_FUNCTION_16(v358);
    if (!v359)
    {
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_3_15(v359, v360, v361, v362, v363, v364, v365, v366, v367, v387, v391, v395, v399, v401[0], v401[1], v404[0], v404[1], v407, kCFAllocatorDefault, v368, v411[0], v411[1], v414, v416);
    OUTLINED_FUNCTION_13_0();
    v374 = 8;
  }

  else
  {
    v75 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      v76 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v76)
      {
        OUTLINED_FUNCTION_1_11(v76, v77, v78, v79, v80, v81, v82, v83, v84, v387, v391, v395, v399, v85);
        *(v165 + 158) = v75;
        OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v166, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
      }

      v15 = &_os_log_default;
      v86 = &_os_log_default;
    }

    if (OUTLINED_FUNCTION_24())
    {
      LOWORD(v425) = 0;
      OUTLINED_FUNCTION_7_6();
      _os_log_impl(v87, v88, v89, v90, v91, 2u);
    }

    inited = ccsigma_import_peer_verification_key(*v57, 65, __dst);
    if (!inited)
    {
      v92 = *(v56 + 712);
      printSessionKeys(*v92, 1);
      v93 = CFDataCreate(kCFAllocatorDefault, bytes, 64);
      v30 = _dumpSimpleHex(v93);

      v94 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v95 = *(gLogObjects + 440);
      }

      else
      {
        v96 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v96)
        {
          OUTLINED_FUNCTION_1_11(v96, v97, v98, v99, v100, v101, v102, v103, v104, v387, v391, v395, v399, v105);
          *(v167 + 158) = v94;
          OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v168, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
        }

        v95 = &_os_log_default;
        v106 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        v425 = 138412290;
        *v426 = v30;
        OUTLINED_FUNCTION_7_6();
        _os_log_impl(v107, v108, v109, v110, v111, 0xCu);
      }

      v112 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v113 = *(gLogObjects + 440);
      }

      else
      {
        v114 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v114)
        {
          OUTLINED_FUNCTION_1_11(v114, v115, v116, v117, v118, v119, v120, v121, v122, v387, v391, v395, v399, v123);
          *(v169 + 158) = v112;
          OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v170, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
        }

        v113 = &_os_log_default;
        v124 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        LOWORD(v425) = 0;
        OUTLINED_FUNCTION_7_6();
        _os_log_impl(v125, v126, v127, v128, v129, 2u);
      }

      inited = ccsigma_verify(*v92, bytes, 64, &__dst[1]);
      if (inited)
      {
        v376 = logObjectForModule_12();
        v295 = OUTLINED_FUNCTION_16(v376);
        if (v295)
        {
          goto LABEL_181;
        }
      }

      else
      {
        v130 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v113 = *(gLogObjects + 440);
        }

        else
        {
          v131 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v131)
          {
            OUTLINED_FUNCTION_1_11(v131, v132, v133, v134, v135, v136, v137, v138, v139, v387, v391, v395, v399, v140);
            *(v171 + 158) = v130;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v172, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v113 = &_os_log_default;
          v141 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_24())
        {
          LOWORD(v425) = 0;
          OUTLINED_FUNCTION_7_6();
          _os_log_impl(v142, v143, v144, v145, v146, 2u);
        }

        if (!inited)
        {
          v147 = *(v56 + 32);
          if (v147 == 8)
          {
            v160 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v113 = *(gLogObjects + 440);
            }

            else
            {
              v192 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (v192)
              {
                OUTLINED_FUNCTION_1_11(v192, v193, v194, v195, v196, v197, v198, v199, v200, v387, v391, v395, v399, v201);
                *(v202 + 158) = v160;
                OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v203, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
              }

              v113 = &_os_log_default;
              v204 = &_os_log_default;
            }

            if (OUTLINED_FUNCTION_24())
            {
              LOWORD(v425) = 0;
              OUTLINED_FUNCTION_7_6();
              _os_log_impl(v205, v206, v207, v208, v209, 2u);
            }

            mfi4Auth_protocol_initMessage_RequestUserNVMWrite(v56, *(v57 + 136), &v416, *(v56 + 40), *(v56 + 48), *(v56 + 56), *(v56 + 36), 0, 0, v391, v395, v399, v401[0], v401[1], v404[0], v404[1], v407, kCFAllocatorDefault, v411[0], v411[1], v414, 0, v417);
            inited = v210;
            if (v210)
            {
              v384 = logObjectForModule_12();
              v328 = OUTLINED_FUNCTION_16(v384);
              if (!v328)
              {
                goto LABEL_180;
              }
            }

            else
            {
              v211 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v113 = *(gLogObjects + 440);
              }

              else
              {
                v242 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                if (v242)
                {
                  OUTLINED_FUNCTION_1_11(v242, v243, v244, v245, v246, v247, v248, v249, v250, v388, v392, v396, v400, v251);
                  *(v346 + 158) = v211;
                  OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v347, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
                }

                v113 = &_os_log_default;
                v252 = &_os_log_default;
              }

              if (OUTLINED_FUNCTION_24())
              {
                LOWORD(v425) = 0;
                OUTLINED_FUNCTION_7_6();
                _os_log_impl(v253, v254, v255, v256, v257, 2u);
              }

              if (inited)
              {
                v386 = logObjectForModule_12();
                v328 = OUTLINED_FUNCTION_16(v386);
                if (!v328)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                MsgLen = iAP2MsgGetMsgLen(v416);
                v259 = OUTLINED_FUNCTION_30_1(MsgLen);
                v261 = malloc_type_calloc(v259, v260, 0xEDA7B82EuLL);
                OUTLINED_FUNCTION_41_1(v261, v262, v263, v264, v265, v266, v267, v268, v388, v392, v396, v400, v402, v403, v405, v406, v408, allocatora, v412, v413, v415, v416);
                v269 = gLogObjects;
                v270 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 56)
                {
                  v271 = *(gLogObjects + 440);
                }

                else
                {
                  v305 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                  if (v305)
                  {
                    OUTLINED_FUNCTION_18_1(v305, v306, v307, v308, v309, v310, v311, v312, v313, v390, v394, v398, v400, v314);
                    *v426 = v269;
                    OUTLINED_FUNCTION_17_0();
                    *(v315 + 158) = v270;
                    OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v316, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
                  }

                  v271 = &_os_log_default;
                  v317 = &_os_log_default;
                }

                if (OUTLINED_FUNCTION_26())
                {
                  LOWORD(v425) = 0;
                  OUTLINED_FUNCTION_9(&_mh_execute_header, v271, v318, "handle_NVMAuthFinish: initMessage_RequestNVMOperation", &v425);
                }

                inited = OUTLINED_FUNCTION_42_1(v319, v320, v321, v322, v323, v324, v325, v326, v390, v394, v398);
                if (!inited)
                {
                  goto LABEL_90;
                }

                v327 = logObjectForModule_12();
                v328 = OUTLINED_FUNCTION_16(v327);
                if (!v328)
                {
                  goto LABEL_180;
                }
              }
            }

            OUTLINED_FUNCTION_3_15(v328, v329, v330, v331, v332, v333, v334, v335, v336, v388, v392, v396, v400, v402, v403, v405, v406, v408, allocatora, v337, v412, v413, v415, v416);
            goto LABEL_182;
          }

          if (v147 != 5)
          {
LABEL_90:
            inited = 0;
            goto LABEL_91;
          }

          v159 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v113 = *(gLogObjects + 440);
          }

          else
          {
            v173 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            if (v173)
            {
              OUTLINED_FUNCTION_1_11(v173, v174, v175, v176, v177, v178, v179, v180, v181, v387, v391, v395, v399, v182);
              *(v183 + 158) = v159;
              OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v184, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }

            v113 = &_os_log_default;
            v185 = &_os_log_default;
          }

          if (OUTLINED_FUNCTION_24())
          {
            LOWORD(v425) = 0;
            OUTLINED_FUNCTION_7_6();
            _os_log_impl(v186, v187, v188, v189, v190, 2u);
          }

          v416 = 0;
          inited = mfi4Auth_protocol_initMessage_RequestNVMPublicKeyChallenge(v56);
          if (inited)
          {
            v383 = logObjectForModule_12();
            v295 = OUTLINED_FUNCTION_16(v383);
            if (!v295)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v191 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v113 = *(gLogObjects + 440);
            }

            else
            {
              v212 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (v212)
              {
                OUTLINED_FUNCTION_1_11(v212, v213, v214, v215, v216, v217, v218, v219, v220, v387, v391, v395, v399, v221);
                *(v344 + 158) = v191;
                OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v345, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
              }

              v113 = &_os_log_default;
              v222 = &_os_log_default;
            }

            if (OUTLINED_FUNCTION_24())
            {
              LOWORD(v425) = 0;
              OUTLINED_FUNCTION_7_6();
              _os_log_impl(v223, v224, v225, v226, v227, 2u);
            }

            if (inited)
            {
              v385 = logObjectForModule_12();
              v295 = OUTLINED_FUNCTION_16(v385);
              if (!v295)
              {
                goto LABEL_180;
              }
            }

            else
            {
              v228 = iAP2MsgGetMsgLen(v416);
              v229 = OUTLINED_FUNCTION_30_1(v228);
              v231 = malloc_type_calloc(v229, v230, 0x8932F791uLL);
              OUTLINED_FUNCTION_41_1(v231, v232, v233, v234, v235, v236, v237, v238, v387, v391, v395, v399, v401[0], v401[1], v404[0], v404[1], v407, kCFAllocatorDefault, v411[0], v411[1], v414, v416);
              v239 = gLogObjects;
              v240 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v241 = *(gLogObjects + 440);
              }

              else
              {
                v272 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                if (v272)
                {
                  OUTLINED_FUNCTION_18_1(v272, v273, v274, v275, v276, v277, v278, v279, v280, v389, v393, v397, v399, v281);
                  *v426 = v239;
                  OUTLINED_FUNCTION_17_0();
                  *(v282 + 158) = v240;
                  OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v283, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
                }

                v241 = &_os_log_default;
                v284 = &_os_log_default;
              }

              if (OUTLINED_FUNCTION_26())
              {
                LOWORD(v425) = 0;
                OUTLINED_FUNCTION_9(&_mh_execute_header, v241, v285, "handle_NVMAuthFinish: initMessage_RequestNVMOperation", &v425);
              }

              inited = OUTLINED_FUNCTION_42_1(v286, v287, v288, v289, v290, v291, v292, v293, v389, v393, v397);
              if (!inited)
              {
                goto LABEL_90;
              }

              v294 = logObjectForModule_12();
              v295 = OUTLINED_FUNCTION_16(v294);
              if (!v295)
              {
                goto LABEL_180;
              }
            }
          }

LABEL_181:
          OUTLINED_FUNCTION_3_15(v295, v296, v297, v298, v299, v300, v301, v302, v303, v387, v391, v395, v399, v401[0], v401[1], v404[0], v404[1], v407, allocator, v304, v411[0], v411[1], v414, v416);
LABEL_182:
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v378, v379, v380, v381, v382, 8u);
          goto LABEL_180;
        }

        v377 = logObjectForModule_12();
        v295 = OUTLINED_FUNCTION_16(v377);
        if (v295)
        {
          goto LABEL_181;
        }
      }

LABEL_180:

      goto LABEL_91;
    }

    v375 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v375))
    {
      goto LABEL_161;
    }

    LOWORD(v425) = 0;
    OUTLINED_FUNCTION_13_0();
    v374 = 2;
  }

  _os_log_error_impl(v369, v370, v371, v372, v373, v374);
LABEL_161:

LABEL_162:
  v30 = v9;
LABEL_91:
  v148 = gLogObjects;
  v149 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v150 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v425 = 134218240;
      *v426 = v148;
      OUTLINED_FUNCTION_17_0();
      *(v161 + 158) = v149;
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v162, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v150 = &_os_log_default;
    v151 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_24())
  {
    LOWORD(v425) = 0;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v152, v153, v154, v155, v156, 2u);
  }

  v157 = inited;
  return v157;
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMPublicKeyChallenge(uint64_t a1)
{
  if (!a1)
  {
    v16 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v16))
    {
LABEL_9:

      return 1;
    }

LABEL_12:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v18, v19, v20, v21, v22, v23);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_6();
  if (v5)
  {
    v17 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v17))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = v3;
  if (!v3)
  {
    return 1;
  }

  v7 = v4;
  v8 = v2;
  v9 = OUTLINED_FUNCTION_6_7();
  *v6 = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v10, v8, 20793, v11, v12);
  v13 = OUTLINED_FUNCTION_19_4();
  iAP2MsgAddU16Param(v13, v14, 0, v7);
  result = 0;
  v1[14] = 20793;
  return result;
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMOperation(uint64_t a1)
{
  if (!a1)
  {
    v18 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v18))
    {
      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  OUTLINED_FUNCTION_8_6();
  if (v5)
  {
    v19 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v19))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v6 = v3;
  if (!v3)
  {
    v20 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v20))
    {
      goto LABEL_12;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v21, v22, v23, v24, v25, v26);
    goto LABEL_12;
  }

  v7 = v2;
  if (!v2)
  {
    return 1;
  }

  v8 = v4;
  v9 = v1[100];
  v10 = OUTLINED_FUNCTION_6_7();
  *v7 = v10;
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v11, v9, 20809, v12, v13);
  OUTLINED_FUNCTION_20_3();
  iAP2MsgAddArrayU8Param(v14, v15, v16, v6, v8);
  return OUTLINED_FUNCTION_36_1();
}

uint64_t mfi4Auth_protocol_handle_NVMOperationResponse(uint64_t a1)
{
  inited = 1;
  if (!a1)
  {
    v36 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v36))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_16_7();
  if (v5)
  {
    v37 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v37))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
    goto LABEL_48;
  }

  v6 = v3;
  if (!v3)
  {
    v38 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v38))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
    goto LABEL_48;
  }

  if (!v4)
  {
    v39 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v39))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
LABEL_48:
    OUTLINED_FUNCTION_2_17();
    goto LABEL_49;
  }

  v56 = v4;
  v57 = v2;
  v59 = 0;
  FirstParam = iAP2MsgGetFirstParam(v3, 0);
  v8 = 0;
  v9 = 0;
  LOWORD(ParamValueLen) = -21846;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v12 = gLogObjects;
    v13 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v14 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v13;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v17, v18, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v20, 0x12u);
      }

      v15 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = ParamID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handle_NVMOperationResponse: paramID: %d", buf, 8u);
    }

    if (ParamID || (ParamValueLen = iAP2MsgGetParamValueLen(FirstParam), v9 = 1, v8 = OUTLINED_FUNCTION_34_1(ParamValueLen), DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, v8, ParamValueLen), !inited) && DataAsArrayU8 == ParamValueLen)
    {
      FirstParam = iAP2MsgGetNextParamWithError(v6, 0, FirstParam, &v59);
      if ((v59 & 1) == 0)
      {
        continue;
      }
    }

    return inited;
  }

  if (v9 == 1)
  {
    v1 = CFDataCreate(kCFAllocatorDefault, v8, ParamValueLen);
    v64 = 0xAAAAAAAAAAAAAAAALL;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v62 = v21;
    v63 = v21;
    *buf = v21;
    *&buf[16] = v21;
    v58 = 0;
    v22 = *(*(v57 + 712) + 136);
    v23 = mfi4Auth_protocol_parse(v57, buf, v1, v22);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v25 = gLogObjects;
      v26 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v27 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v65 = 134218240;
          *&v65[4] = v25;
          OUTLINED_FUNCTION_17_0();
          v66 = v26;
          OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
        }

        v27 = &_os_log_default;
        v28 = &_os_log_default;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 67109120;
        *&v65[4] = v22;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "handle_NVMOperationResponse: Found no message starting with: %x", v65, 8u);
      }

      v29 = mfi4Auth_protocol_parse(v57, buf, v1, 0);
      if (!v29)
      {
        inited = -1;
        v46 = logObjectForModule_12();
        if (OUTLINED_FUNCTION_18_2(v46))
        {
          *v65 = 67109120;
          OUTLINED_FUNCTION_7_6();
          _os_log_impl(v47, v48, v49, v50, v51, 8u);
        }

        goto LABEL_59;
      }

      v24 = v29;
      v22 = 0;
    }

    if (inited)
    {
      v52 = logObjectForModule_12();
      if (!OUTLINED_FUNCTION_16(v52))
      {
        goto LABEL_59;
      }

      *v65 = 0;
    }

    else if (mfi4Auth_protocol_processIncomingMessageExtra(v57, v22, v24, &v58, v56))
    {
      if (!v58)
      {
        return 0;
      }

      if (inited)
      {
        v54 = logObjectForModule_12();
        if (!OUTLINED_FUNCTION_16(v54))
        {
          goto LABEL_59;
        }

        *v65 = 0;
      }

      else
      {
        MsgLen = iAP2MsgGetMsgLen(v58);
        v31 = OUTLINED_FUNCTION_30_1(MsgLen);
        v33 = malloc_type_calloc(v31, v32, 0xD15EB07BuLL);
        memcpy(v33, *(v58 + 24), v1);
        inited = mfi4Auth_protocol_initMessage_RequestNVMOperation(v57);
        if (!inited)
        {
          return 0;
        }

        v55 = logObjectForModule_12();
        if (!OUTLINED_FUNCTION_16(v55))
        {
LABEL_59:

          return inited;
        }

        *v65 = 0;
      }
    }

    else
    {
      v53 = logObjectForModule_12();
      if (!OUTLINED_FUNCTION_16(v53))
      {
        goto LABEL_59;
      }

      *v65 = 0;
    }

    OUTLINED_FUNCTION_13_0();
    v45 = 2;
LABEL_49:
    _os_log_error_impl(v40, v41, v42, v43, v44, v45);
    goto LABEL_59;
  }

  return inited;
}

uint64_t mfi4Auth_protocol_initMessage_RequestVendorNVMRead(uint64_t a1)
{
  if (!a1)
  {
    v16 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v16))
    {
      goto LABEL_18;
    }

LABEL_15:

    return 1;
  }

  OUTLINED_FUNCTION_8_6();
  if (v5)
  {
    v17 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v17))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    v18 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v18))
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
    goto LABEL_15;
  }

  v6 = v2;
  if (!v2)
  {
    return 1;
  }

  LODWORD(v7) = v4;
  v8 = v1[100];
  v9 = OUTLINED_FUNCTION_6_7();
  *v6 = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v10, v8, 20785, v11, v12);
  v13 = OUTLINED_FUNCTION_80_0();
  _convertUserVendorNVMRead(v13, v14);
  if (v7)
  {
    v7 = v7;
    do
    {
      OUTLINED_FUNCTION_27_2();
      --v7;
    }

    while (v7);
  }

  return OUTLINED_FUNCTION_36_1();
}

uint64_t mfi4Auth_protocol_initMessage_RequestManufacturerNVMRead(uint64_t a1)
{
  if (!a1)
  {
    v16 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v16))
    {
      goto LABEL_18;
    }

LABEL_15:

    return 1;
  }

  OUTLINED_FUNCTION_8_6();
  if (v5)
  {
    v17 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v17))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    v18 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v18))
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
    goto LABEL_15;
  }

  v6 = v2;
  if (!v2)
  {
    return 1;
  }

  LODWORD(v7) = v4;
  v8 = v1[100];
  v9 = OUTLINED_FUNCTION_6_7();
  *v6 = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v10, v8, 20802, v11, v12);
  v13 = OUTLINED_FUNCTION_80_0();
  _convertUserVendorNVMRead(v13, v14);
  if (v7)
  {
    v7 = v7;
    do
    {
      OUTLINED_FUNCTION_27_2();
      --v7;
    }

    while (v7);
  }

  return OUTLINED_FUNCTION_36_1();
}

void mfi4Auth_protocol_requestNvmErasePublicKey(uint64_t a1)
{
  if (!a1)
  {
    v8 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v8))
    {
LABEL_13:

      return;
    }

    v19 = 136315138;
    v20 = "mfi4Auth_protocol_requestNvmErasePublicKey";
LABEL_16:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v10, v11, v12, v13, v14, v15);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_7();
  if (v5)
  {
    v9 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v9))
    {
      goto LABEL_13;
    }

    v19 = 136315138;
    v20 = "mfi4Auth_protocol_requestNvmErasePublicKey";
    goto LABEL_16;
  }

  *buffer = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  if (v4)
  {
    v6 = v2;
    if (v2)
    {
      v7 = v3;
      if (v3)
      {
        if (CFDataGetLength(v2) == 16 && CFDataGetLength(v7) == 64)
        {
          v21.location = 0;
          v21.length = 16;
          CFDataGetBytes(v6, v21, buffer);
          v22.location = 0;
          v22.length = 64;
          CFDataGetBytes(v7, v22, v16);
          mfi4Auth_protocol_initMessage_RequestNVMErasePublicKey();
        }
      }
    }
  }
}

void _generateUserAccessoryInfoPayload(uint64_t a1)
{
  if (!a1)
  {
    v14 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v14))
    {
      goto LABEL_15;
    }

LABEL_13:

    return;
  }

  OUTLINED_FUNCTION_16_7();
  if (v6)
  {
    v15 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v15))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v7 = v5;
  if (!v5)
  {
    v16 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v16))
    {
      goto LABEL_13;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v17, v18, v19, v20, v21, v22);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = v3;
  v10 = OUTLINED_FUNCTION_6_7();
  *v7 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_29_1(v10, 0, 0, *(a1 + 16), *(a1 + 24));
    OUTLINED_FUNCTION_20_3();

    iAP2MsgAddArrayU8Param(v11, v12, v13, v9, v8);
  }
}

void _convertUserVendorNVMRead_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertUserVendorNVMRead_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_3()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_4()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_5()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_11()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_12()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_13()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMEraseResponse_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMEraseResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_3()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_4()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

BOOL mfi4Auth_protocol_handle_NVMReadResponse_cold_11(_WORD *a1, uint64_t a2, void *a3)
{
  *v3 = OUTLINED_FUNCTION_24_4(a1, a2, a3);
  free(v4);
  return *v3 == 0;
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_18()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_19()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_20()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMReadResponse_cold_3()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMReadResponse_cold_4()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _handleNvmReadAccessoryInfo_cold_15()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _handleNvmReadAccessoryInfo_cold_16()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _copyOrCreateUserPublicKeyForSerialNumber_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_5()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_6()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_7()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_8(_DWORD *a1, _DWORD *a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v14 = 134218240;
      *&v14[4] = v4;
      OUTLINED_FUNCTION_3();
      *&v14[14] = v5;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, *v14, *&v14[16]);
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v6, v8, "mfi4Auth_protocol_handle_NVMWriteResponse: error", v14);
  }

  *a2 = *a1;
}

void _convertNVMWriteResponse_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMWriteResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_2()
{
  OUTLINED_FUNCTION_4_13();
  v2();
  v3 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_3()
{
  OUTLINED_FUNCTION_4_13();
  v2();
  v3 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_4()
{
  OUTLINED_FUNCTION_4_13();
  v2();
  v3 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_5()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_7()
{
  OUTLINED_FUNCTION_4_13();
  v2();
  v3 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_8()
{
  OUTLINED_FUNCTION_4_13();
  v2();
  v3 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_9()
{
  OUTLINED_FUNCTION_4_13();
  v2();
  v3 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_10()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_13()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_14()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_17()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_18()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_19()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_20()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_21()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_22(int *a1, int *a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v14 = 134218240;
      *&v14[4] = v4;
      OUTLINED_FUNCTION_3();
      *&v14[14] = v5;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, *v14, *&v14[16]);
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = *a1;
    *v14 = 67109120;
    *&v14[4] = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "handle_NVMPublicKeyChallenge: failed: %d", v14, 8u);
  }

  *a2 = *a1;
}

void _convertUserNVMWrite_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertUserNVMWrite_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_nvm_copyUserPublicKeyForSerialNumber_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void _getCachedUserPublicKey_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _getCachedUserPublicKey_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

_BYTE *_createFeature_5(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_5(_BYTE **a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *a1;
      if (v3)
      {
        if (*v3 != 1 || (platform_digitalAudio_accessoryDetached(*(a2 + 8)), (v3 = *a1) != 0))
        {
          free(v3);
          *a1 = 0;
        }
      }
    }
  }

  return 0;
}

uint64_t _startFeatureFromDevice_2(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = iap2_feature_getFeature(result, 9u);
    if (result)
    {
      v2 = *(v1 + 8);
      EndpointSampleRates = _getEndpointSampleRates(v1);
      platform_digitalAudio_accessoryAttached(v2, EndpointSampleRates);
      return 1;
    }
  }

  return result;
}

uint64_t iap2_digitalAudio_start(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 9u);
    if (Feature)
    {
      *Feature = 1;
      v2 = platform_digitalAudio_start();
      if (gLogObjects && gNumLogObjects >= 38)
      {
        v5 = *(gLogObjects + 296);
      }

      else
      {
        v5 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18);
        }
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LODWORD(v19) = 138412290;
        *(&v19 + 4) = *(a1 + 8);
        OUTLINED_FUNCTION_2_18(&_mh_execute_header, v6, v7, "Digital Audio started for EndpointUUID: %@", v8, v9, v10, v11, v19, DWORD2(v19));
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_digitalAudio_stop(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 9u);
    if (Feature)
    {
      *Feature = 0;
      v2 = platform_digitalAudio_stop();
      if (gLogObjects && gNumLogObjects >= 38)
      {
        v5 = *(gLogObjects + 296);
      }

      else
      {
        v5 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18);
        }
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LODWORD(v19) = 138412290;
        *(&v19 + 4) = *(a1 + 8);
        OUTLINED_FUNCTION_2_18(&_mh_execute_header, v6, v7, "Digital Audio stopped for EndpointUUID: %@", v8, v9, v10, v11, v19, DWORD2(v19));
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_digitalAudio_sendInformationUpdate(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 38)
  {
    v5 = *(gLogObjects + 296);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10_0();
      *&v22[10] = v4;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v15, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17, v18, v19, v20);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    *v22 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attributes: %@", &v21, 0xCu);
  }

  result = 0;
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a2, @"SampleRate");
    v8 = CFDictionaryGetValue(a2, @"VolumeLevel");
    v9 = CFDictionaryGetValue(a2, @"SoundCheck");
    iAP2MsgInit((a1 + 15), 55809, a1[24], 0xFFFF, 0, 0);
    if (Value)
    {
      LOBYTE(v21) = 0;
      CFNumberGetValue(Value, kCFNumberCharType, &v21);
      LODWORD(Value) = iAP2MsgAddU8Param((a1 + 15), 0, 0, v21) != 0;
    }

    if (v8)
    {
      v21 = 0;
      CFNumberGetValue(v8, kCFNumberIntType, &v21);
      iAP2MsgAddU32Param((a1 + 15), 0, 1, v21);
    }

    if (v9)
    {
      v21 = 0;
      CFNumberGetValue(v9, kCFNumberIntType, &v21);
      iAP2MsgAddU32Param((a1 + 15), 0, 2, v21);
    }

    if (Value)
    {
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 38)
      {
        v12 = *(gLogObjects + 296);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v21 = 134218240;
          *v22 = v10;
          *&v22[8] = 1024;
          *&v22[10] = v11;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v21, 0x12u);
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        MsgID = iAP2MsgGetMsgID((a1 + 15));
        v14 = a1[1];
        v21 = 67109378;
        *v22 = MsgID;
        *&v22[4] = 2112;
        *&v22[6] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Digital Audio sending msg: %xh for endpoint: %@", &v21, 0x12u);
      }

      return iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _getEndpointSampleRates_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "transportComponent is NULL", buf, 2u);
}

void t56_util_ios_getT56Endpoint_cold_2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v0, v1, "%s:%d ERROR: Endpoint not found!!!!", v2, v3, v4, v5, v6);
}

void t56_util_ios_getT56Endpoint_cold_4()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v0, v1, "%s:%d ERROR: Protocol context is NULL!!!!", v2, v3, v4, v5, v6);
}

void t56_util_callbackOnTimer_cold_3()
{
  *v2 = 136315650;
  OUTLINED_FUNCTION_17_8();
  *&v2[7] = 241;
  v2[9] = v0;
  v3 = 4;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s:%d ERROR: All available timers running!!!! %d", v2, 0x18u);
}

void t56_util_callbackOnTimer_cold_5()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v0, v1, "%s:%d ERROR: Timer not initialized!!!!", v2, v3, v4, v5, v6);
}

void t56_util_cancelTimer_cold_2()
{
  *v3 = 136315650;
  OUTLINED_FUNCTION_17_8();
  *&v3[7] = 261;
  v3[9] = v0;
  v4 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s:%d ERROR: Timer %d not running!!!!", v3, 0x18u);
}

void acc_connection_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_57();
  a24 = v25;
  a25 = v29;
  if (v26 <= 9)
  {
    v30 = v28;
    v31 = v27;
    v32 = v26;
    v33 = malloc_type_calloc(1uLL, 0x150uLL, 0x10E00404CB6175FuLL);
    v34 = v33;
    if (v33)
    {
      v33[137] = 0;
      v33[142] = 0;
      pthread_mutex_init((v33 + 272), 0);
      *v34 = CFCreateUUIDString();
      v35 = gLogSignpostObjects;
      v36 = gNumLogSignpostObjects;
      if (gLogSignpostObjects && gNumLogSignpostObjects >= 2)
      {
        v37 = *(gLogSignpostObjects + 8);
      }

      else
      {
        v37 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          OUTLINED_FUNCTION_7_8();
          *(&a10 + 2) = v35;
          OUTLINED_FUNCTION_34();
          HIDWORD(a10) = v36;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging_signposts() / init_logging()!\n module %d, gLogSignpostObjects: %p, gNumLogSignpostObjects: %d", &a9, 0x18u);
          v35 = gLogSignpostObjects;
          v36 = gNumLogSignpostObjects;
        }
      }

      if (v35 && v36 >= 2)
      {
        v38 = *(v35 + 8);
      }

      else
      {
        v38 = &_os_log_default;
        if (OUTLINED_FUNCTION_19_0())
        {
          OUTLINED_FUNCTION_7_8();
          *(&a10 + 2) = v35;
          OUTLINED_FUNCTION_34();
          HIDWORD(a10) = v36;
          OUTLINED_FUNCTION_18_0();
          _os_log_error_impl(v39, v40, v41, v42, v43, 0x18u);
        }
      }

      v44 = os_signpost_id_make_with_pointer(v38, v34);
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v45 = v44;
        if (os_signpost_enabled(v37))
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_3();
          *(&a10 + 6) = v32;
          WORD5(a10) = 2112;
          *(&a10 + 12) = v31;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, v45, "Connection", "Create connection %@, type %{coreacc:ACCConnection_Type_t}d, identifier %@", &a9, 0x1Cu);
        }
      }

      *(v34 + 2) = v32;
      if (v32 == 2)
      {
        OUTLINED_FUNCTION_44_3(0x28u);
      }

      if (v31)
      {
        v46 = CFRetain(v31);
      }

      else
      {
        v46 = 0;
      }

      v34[2] = v46;
      pthread_rwlock_wrlock(&_gAccConnectionLock);
      if (v30)
      {
        v47 = _Block_copy(v30);
      }

      else
      {
        v47 = 0;
      }

      v34[3] = v47;
      v34[4] = systemInfo_getCurrentUnixTimeMS();
      pthread_mutex_init((v34 + 18), 0);
      v34[5] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
      pthread_rwlock_unlock(&_gAccConnectionLock);
      acc_authInfo_init((v34 + 6));
      acc_nvmInfo_init(v34 + 28);
      v34[15] = 0;
      pthread_mutex_init((v34 + 26), 0);
      v34[16] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v34[2] && *(v34 + 2) == 2)
      {
        acc_connection_setProperty();
      }

      *(v34 + 136) = 0;
      *(v34 + 138) = 0;
      *(v34 + 70) = 0;
      v48 = acc_connection_copyDescription(v34);
      v49 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v50 = *(gLogObjects + 104);
      }

      else
      {
        v50 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_10_0();
          *(&a10 + 6) = v49;
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v56, v57, v58, v59, v60, 0x12u);
        }
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_79_0(v51, v52, v53, v54, v55);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      *(v34 + 137) = 1;
    }
  }

  OUTLINED_FUNCTION_56();
}

void acc_connection_setProperty()
{
  OUTLINED_FUNCTION_57();
  if (v0)
  {
    v3 = v1;
    if (v1)
    {
      v4 = v2;
      v5 = v0;
      v6 = gLogObjects;
      if (gLogObjects)
      {
        v7 = gNumLogObjects < 14;
      }

      else
      {
        v7 = 1;
      }

      if (v7 && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
      }

      if (OUTLINED_FUNCTION_82())
      {
        OUTLINED_FUNCTION_1_13();
        OUTLINED_FUNCTION_12_8(&_mh_execute_header, v13, v14, "Setting property %@ for connection %@...", v15, v16, v17, v18);
      }

      pthread_mutex_lock((v5 + 208));
      acc_properties_copyProperties(*(v5 + 128));
      v19 = OUTLINED_FUNCTION_17_9();
      acc_properties_setProperty(v19, v20, v4);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_50_0();
      if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_18_0();
        _os_log_error_impl(v27, v28, v29, v30, v31, 0x12u);
      }

      if (OUTLINED_FUNCTION_95())
      {
        OUTLINED_FUNCTION_1_13();
        OUTLINED_FUNCTION_53_0();
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_66(v21, v22, v23, v24, v25);
      }

      OUTLINED_FUNCTION_33_3();
      if (v26 && (*(v5 + 142) & 1) == 0)
      {
        if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_19_0())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_18_0();
          _os_log_error_impl(v42, v43, v44, v45, v46, 0x12u);
        }

        if (OUTLINED_FUNCTION_99())
        {
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_38_3(v32, v33, v34, v35, v36);
        }

        acc_manager_checkForWirelessCTA();
        if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_19_0())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_18_0();
          _os_log_error_impl(v47, v48, v49, v50, v51, 0x12u);
        }

        if (OUTLINED_FUNCTION_99())
        {
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_38_3(v37, v38, v39, v40, v41);
        }

        acc_manager_checkForInductiveCTA();
        if (CFEqual(v3, kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
        {
          acc_connection_mapAccessoryInfo(v5);
        }

        OUTLINED_FUNCTION_31_1();
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      OUTLINED_FUNCTION_40_3();
      if (v26)
      {
        platform_connectionInfo_accessoryConnectionInfoPropertyChanged(*v5);
      }

      if (CFStringCompare(v3, kCFACCProperties_Connection_TransportClient, 0) == kCFCompareEqualTo && *(v5 + 8) == 3)
      {
        platform_sleepAssertion_destroy(*v5);
      }
    }
  }

  OUTLINED_FUNCTION_56();
}

const char *acc_connection_copyDescription(const char *result)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    v16 = *v1;
    v2 = *(v1 + 8);
    if (v2 >= 0xA)
    {
      v3 = &kACCConnection_Type_Strings[11];
    }

    else
    {
      v3 = &kACCConnection_Type_Strings[v2];
    }

    v14 = *(v1 + 16);
    v15 = *v3;
    if (*(v1 + 24))
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v5 = *(v1 + 32);
    CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
    v7 = *(v1 + 32);
    NumEndpoints = acc_connection_getNumEndpoints(v1);
    if (acc_authInfo_isAuthenticated(v1 + 48, 6u))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = "YES";
    if (!*(v1 + 120))
    {
      v10 = "NO";
      if (*(v1 + 137) == 1)
      {
        acc_connection_mapAccessoryInfo(v1);
        if (*(v1 + 120))
        {
          v10 = "YES";
        }
      }
    }

    v11 = CurrentUnixTimeMS - v7;
    Count = *(v1 + 128);
    if (Count)
    {
      Count = CFDictionaryGetCount(Count);
    }

    if (*(v1 + 138))
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<ACCConnection_t: %@; connectionType: [%s]; identifier: %@; dataOutHandler: %s; creationTimestampMS: %llu; durationMS: %llu; numEndpoints: %ld; authenticated: %s; accessoryInfo: %s; numProperties: %ld; published: %s>", v16, v15, v14, v4, v5, v11, NumEndpoints, v9, v10, Count, v13);
    OUTLINED_FUNCTION_52_2();
    return "NO";
  }

  return result;
}

uint64_t acc_connection_publish(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_28_2();
  if (!v2 || (*(v1 + 142) & 1) != 0)
  {
    return 0;
  }

  v3 = *(v1 + 138);
  if ((v3 & 1) == 0)
  {
    platform_analytics_connectionWillBePublished(v1);
    platform_connectionInfo_accessoryConnectionAttached(*v1, *(v1 + 8));
  }

  LODWORD(v4) = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_5_13();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  if (OUTLINED_FUNCTION_76())
  {
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_73_0(v10, v11, v12, v13, v14);
  }

  pthread_mutex_lock((v1 + 144));
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(v1 + 40));
  pthread_mutex_unlock((v1 + 144));
  CFDictionaryApplyFunction(Copy, _CFDictionaryApplierFunction_publishEndpoint, 0);
  if (Copy)
  {
    CFRelease(Copy);
  }

  NumEndpoints = acc_connection_getNumEndpoints(v1);
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, NumEndpoints, &kCFTypeArrayCallBacks);
  acc_connection_endpointIterateForConnection(v1);
  if (*(v1 + 140))
  {
    OUTLINED_FUNCTION_27_3();
    if ((!Copy || v4 < 14) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v88, v89, v90, v91, v92, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      *buf = 0;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v17, v18, OS_LOG_TYPE_INFO, v19, v20, 2u);
    }

    platform_externalAccessory_removeEAAccessoryForPrimaryEndpoints(theArray);
    OUTLINED_FUNCTION_27_3();
    if ((!Copy || v4 < 14) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v93, v94, v95, v96, v97, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      *buf = 134217984;
      *v144 = CFArrayGetCount(theArray);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_73_0(v21, v22, v23, v24, v25);
    }

    OUTLINED_FUNCTION_27_3();
    if ((!Copy || v4 < 14) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v98, v99, v100, v101, v102, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_73_0(v26, v27, v28, v29, v30);
    }

    pthread_mutex_lock((v1 + 208));
    v31 = kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo;
    if (acc_properties_containsProperty(*(v1 + 128), kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
    {
      v32 = acc_properties_copyProperty(*(v1 + 128), v31);
    }

    else
    {
      v32 = 0;
    }

    pthread_mutex_unlock((v1 + 208));
    platform_externalAccessory_addEAAccessoryForEAEndpoints(theArray, v32);
    if (v32)
    {
      CFRelease(v32);
    }

    if (theArray)
    {
      *(v1 + 140) = CFArrayGetCount(theArray);
    }

    else
    {
      OUTLINED_FUNCTION_27_3();
      if ((!Copy || v4 < 14) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_0_8();
        OUTLINED_FUNCTION_5_13();
        _os_log_error_impl(v119, v120, v121, v122, v123, 0x12u);
      }

      if (OUTLINED_FUNCTION_21())
      {
        *buf = 0;
        OUTLINED_FUNCTION_5_13();
        _os_log_error_impl(v109, v110, v111, v112, v113, 2u);
      }
    }

    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v33 = *(Copy + 13);
    }

    else
    {
      v33 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_0_8();
        OUTLINED_FUNCTION_5_13();
        _os_log_error_impl(v103, v104, v105, v106, v107, 0x12u);
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v70 = *(v1 + 140);
      v71 = *v1;
      *buf = 67109378;
      *v144 = v70;
      *&v144[4] = 2112;
      *&v144[6] = v71;
      OUTLINED_FUNCTION_15_8();
      _os_log_debug_impl(v72, v73, OS_LOG_TYPE_DEBUG, v74, v75, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_3();
    if ((!Copy || v4 < 14) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v124, v125, v126, v127, v128, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      v53 = *(v1 + 140);
      *buf = 67109632;
      *v144 = 0;
      *&v144[4] = 1024;
      *&v144[6] = 0;
      *&v144[10] = 1024;
      *&v144[12] = v53;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v54, v55, OS_LOG_TYPE_INFO, v56, v57, 0x14u);
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if ((*(v1 + 142) & 1) == 0 && *v1 && *(v1 + 8) == 6)
  {
    pthread_mutex_lock((v1 + 208));
    v34 = acc_properties_copyProperty(*(v1 + 128), kCFACCProperties_Connection_ManagerParent);
    Copy = acc_properties_copyProperty(*(v1 + 128), kCFACCProperties_Connection_IsAdapter);
    pthread_mutex_unlock((v1 + 208));
    v35 = gLogObjects;
    v36 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v4 = *(gLogObjects + 104);
    }

    else
    {
      v4 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        *buf = 134218240;
        *v144 = v35;
        OUTLINED_FUNCTION_20_4();
        *&v144[10] = v36;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v81, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_56_2();
      *&v144[10] = 1715;
      *&v144[14] = 2112;
      *&v144[16] = v37;
      v145 = 2112;
      v146 = v34;
      v147 = 2112;
      v148[0] = Copy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d connection %@, managerParent %@, isAdapter %@", buf, 0x30u);
    }

    if (!v34)
    {
      goto LABEL_112;
    }

    if (*(v1 + 120))
    {
      valuePtr = 0;
      if (Copy && (CFNumberGetValue(Copy, kCFNumberIntType, &valuePtr), valuePtr))
      {
        ConnectionsThroughAdapter = acc_manager_findConnectionsThroughAdapter(*v1);
        if (ConnectionsThroughAdapter)
        {
          v4 = ConnectionsThroughAdapter;
          Count = CFArrayGetCount(ConnectionsThroughAdapter);
          if (Count)
          {
            v40 = Count;
            v138 = v3;
            values = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
            v41 = acc_accInfo_retainedProperty(*(v1 + 120), 11, 0);
            v42 = acc_accInfo_retainedProperty(*(v1 + 120), 12, 0);
            v43 = gLogObjects;
            v44 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 14)
            {
              v45 = *(gLogObjects + 104);
            }

            else
            {
              v45 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v144 = v43;
                OUTLINED_FUNCTION_20_4();
                *&v144[10] = v44;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v131, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
              }
            }

            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_14_1();
              *&v144[8] = 2048;
              *&v144[10] = v40;
              OUTLINED_FUNCTION_57_2();
              WORD1(v148[0]) = v58;
              *(v148 + 4) = v4;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%@ isAdapter: Found connectionsThroughAdapter count %ld, adapterVID %@, adapterPID %@, connectionUUIDs %@", buf, 0x34u);
            }

            cf = v41;
            if (v41 && v42 && values)
            {
              v149.location = 0;
              v149.length = v40;
              CFArrayGetValues(v4, v149, values);
              if (v40 >= 1)
              {
                v59 = values;
                do
                {
                  v60 = *v59++;
                  acc_manager_getConnectionWithUUID(v60);
                  acc_connection_setProperty();
                  acc_connection_setProperty();
                  --v40;
                }

                while (v40);
              }
            }

            else if (!values)
            {
LABEL_106:
              v3 = v138;
              goto LABEL_107;
            }

            free(values);
            goto LABEL_106;
          }

          v42 = v4;
LABEL_110:
          CFRelease(v42);
        }
      }

      else
      {
        AdapterForConnection = acc_manager_findAdapterForConnection(*v1);
        if (AdapterForConnection)
        {
          v4 = AdapterForConnection;
          ConnectionWithUUID = acc_manager_getConnectionWithUUID(AdapterForConnection);
          if (ConnectionWithUUID)
          {
            v48 = ConnectionWithUUID;
            v49 = ConnectionWithUUID[15];
            if (v49)
            {
              v139 = v3;
              v114 = acc_accInfo_retainedProperty(v49, 11, 0);
              v42 = acc_accInfo_retainedProperty(v48[15], 12, 0);
              v115 = gLogObjects;
              v116 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 14)
              {
                v117 = *(gLogObjects + 104);
              }

              else
              {
                v117 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v144 = v115;
                  OUTLINED_FUNCTION_20_4();
                  *&v144[10] = v116;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v129, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }
              }

              if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
              {
                OUTLINED_FUNCTION_14_1();
                *&v144[8] = 2112;
                *&v144[10] = v130;
                OUTLINED_FUNCTION_57_2();
                _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_INFO, "Found adapter %@ for connection %@, adapterVID %@, adapterPID %@", buf, 0x2Au);
              }

              cf = v114;
              acc_connection_setProperty();
              acc_connection_setProperty();
              v3 = v139;
LABEL_107:
              CFRelease(v4);
              if (cf)
              {
                CFRelease(cf);
              }

              if (!v42)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            }
          }

          v50 = gLogObjects;
          v51 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 14)
          {
            v52 = *(gLogObjects + 104);
          }

          else
          {
            v52 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              *buf = 134218240;
              *v144 = v50;
              OUTLINED_FUNCTION_20_4();
              *&v144[10] = v51;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v118, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (OUTLINED_FUNCTION_18())
          {
            OUTLINED_FUNCTION_56_2();
            *&v144[10] = 1776;
            *&v144[14] = 2112;
            *&v144[16] = v4;
            v145 = 2112;
            v146 = v108;
            _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s:%d Could not get adapterConnection for UUID %@ !!!  connection %@", buf, 0x26u);
          }

          v42 = v4;
          goto LABEL_110;
        }
      }
    }

LABEL_111:
    CFRelease(v34);
LABEL_112:
    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  *(v1 + 138) = 1;
  if (v3)
  {
    OUTLINED_FUNCTION_27_3();
    if ((!Copy || v4 < 14) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v83, v84, v85, v86, v87, 0x12u);
    }

    if (OUTLINED_FUNCTION_93())
    {
      v62 = *v1;
      v63 = acc_connection_getNumEndpoints(v1);
      *buf = 138412546;
      *v144 = v62;
      *&v144[8] = 2048;
      *&v144[10] = v63;
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_58_1();
      _os_log_impl(v64, v65, v66, v67, v68, v69);
    }
  }

  else
  {
    v61 = acc_connection_copyDescription(v1);
    OUTLINED_FUNCTION_27_3();
    if ((!Copy || v4 < 14) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v132, v133, v134, v135, v136, 0x12u);
    }

    if (OUTLINED_FUNCTION_93())
    {
      *buf = 138412290;
      *v144 = v61;
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_79_0(v76, v77, v78, v79, v80);
    }

    if (v61)
    {
      CFRelease(v61);
    }
  }

  return 1;
}

void _CFDictionaryApplierFunction_publishEndpoint(const void *a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (EndpointWithUUID)
  {

    acc_endpoint_publish(EndpointWithUUID, v2, v3, v4, v5, v6, v7, v8);
  }
}

CFIndex acc_connection_getNumEndpoints(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_2();
  if (!v2)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 144));
  Count = CFDictionaryGetCount(*(v1 + 40));
  pthread_mutex_unlock((v1 + 144));
  return Count;
}

void acc_connection_endpointIterateForConnection(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_28_2();
    if (v4)
    {
      v5 = v3;
      v6 = v2;
      pthread_mutex_lock((v1 + 144));
      CFDictionaryApplyFunction(*(v1 + 40), v6, v5);

      pthread_mutex_unlock((v1 + 144));
    }
  }
}

void _CFDictionaryApplierFunction_countEAServiceEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3 && (acc_endpoint_getProtocol(a2) == 5 || acc_endpoint_getProtocol(a2) == 7))
  {
    ++*a3;
    if (acc_endpoint_isPublished(a2))
    {
      ++*(a3 + 2);
    }

    v5 = *(a3 + 8);
    if (v5)
    {
      v6 = *(a2 + 16);

      CFArrayAppendValue(v5, v6);
    }
  }
}

uint64_t acc_connection_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = gLogSignpostObjects;
      v4 = gNumLogSignpostObjects;
      if (gLogSignpostObjects)
      {
        v5 = gNumLogSignpostObjects < 2;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        v11 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_7_8();
          *&v91[6] = v3;
          OUTLINED_FUNCTION_34();
          *&v91[16] = v4;
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
          v3 = gLogSignpostObjects;
          v4 = gNumLogSignpostObjects;
        }
      }

      else
      {
        v11 = *(gLogSignpostObjects + 8);
      }

      if (v3 && v4 >= 2)
      {
        v12 = *(v3 + 8);
      }

      else
      {
        v12 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          OUTLINED_FUNCTION_7_8();
          *&v91[6] = v3;
          OUTLINED_FUNCTION_34();
          *&v91[16] = v4;
          OUTLINED_FUNCTION_16_8();
          _os_log_error_impl(v13, v14, v15, v16, v17, 0x18u);
        }
      }

      v18 = os_signpost_id_make_with_pointer(v12, v2);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = v18;
        if (os_signpost_enabled(v11))
        {
          OUTLINED_FUNCTION_38();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Connection", "Create connection %@", &v90, 0xCu);
        }
      }

      v20 = acc_connection_copyDescription(v2);
      v21 = gLogObjects;
      v22 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v23 = *(gLogObjects + 104);
      }

      else
      {
        v23 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          v90 = 134218240;
          *v91 = v21;
          OUTLINED_FUNCTION_3();
          *&v91[10] = v22;
          OUTLINED_FUNCTION_16_8();
          _os_log_error_impl(v24, v25, v26, v27, v28, 0x12u);
        }
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v90 = 138412290;
        *v91 = v20;
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_79_0(v29, v30, v31, v32, v33);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      *(v2 + 142) = 1;
      acc_connection_setDataOutHandler(*v1, 0);
      if (*(v2 + 2) == 2)
      {
        OUTLINED_FUNCTION_44_3(0x2Cu);
      }

      CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
      v35 = v2[4];
      v36 = gLogObjects;
      v37 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v38 = *(gLogObjects + 104);
      }

      else
      {
        v38 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          v90 = 134218240;
          *v91 = v36;
          OUTLINED_FUNCTION_3();
          *&v91[10] = v37;
          OUTLINED_FUNCTION_16_8();
          _os_log_error_impl(v39, v40, v41, v42, v43, 0x12u);
        }
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_73_0(v44, v45, v46, v47, v48);
      }

      ACCUNManagerDismissNotificationsWithGroupIdentifier(*v2);
      acc_connection_removeAllEndpoints(v2);
      if (*(v2 + 138) == 1)
      {
        platform_analytics_connectionWillBeDestroyed();
        platform_connectionInfo_accessoryConnectionDetached(*v2);
      }

      if (*v2)
      {
        v49 = CFRetain(*v2);
      }

      else
      {
        v49 = 0;
      }

      pthread_mutex_lock((v2 + 34));
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }

      pthread_mutex_unlock((v2 + 34));
      pthread_mutex_destroy((v2 + 34));
      v50 = v2[2];
      if (v50)
      {
        CFRelease(v50);
        v2[2] = 0;
      }

      pthread_mutex_lock((v2 + 18));
      v51 = v2[5];
      if (v51)
      {
        CFRelease(v51);
        v2[5] = 0;
      }

      pthread_mutex_unlock((v2 + 18));
      pthread_mutex_destroy((v2 + 18));
      pthread_mutex_lock((v2 + 26));
      v52 = v2[16];
      if (v52)
      {
        CFRelease(v52);
        v2[16] = 0;
      }

      pthread_mutex_unlock((v2 + 26));
      pthread_mutex_destroy((v2 + 26));
      acc_nvmInfo_init(v2 + 28);
      acc_authInfo_cleanup((v2 + 6), 1);
      acc_accInfo_destroy(v2 + 15);
      if (*v1)
      {
        free(*v1);
        *v1 = 0;
      }

      v53 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v54 = *(gLogObjects + 104);
      }

      else
      {
        v54 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_3();
          *&v91[10] = v53;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_10(v75, v76, v77, v78, v79);
        }
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v90 = 138412546;
        *v91 = v49;
        *&v91[8] = 2048;
        *&v91[10] = (CurrentUnixTimeMS - v35) / 1000.0;
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_58_1();
        _os_log_impl(v55, v56, v57, v58, v59, v60);
      }

      if (v49)
      {
        CFRelease(v49);
      }

      v61 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v62 = *(gLogObjects + 104);
      }

      else
      {
        v62 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_3();
          *&v91[10] = v61;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_10(v80, v81, v82, v83, v84);
        }
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v90) = 0;
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_38_3(v65, v66, v67, v68, v69);
      }

      acc_manager_checkForWirelessCTA();
      v63 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v64 = *(gLogObjects + 104);
      }

      else
      {
        v64 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_3();
          *&v91[10] = v63;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_10(v85, v86, v87, v88, v89);
        }
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v90) = 0;
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_38_3(v70, v71, v72, v73, v74);
      }

      acc_manager_checkForInductiveCTA();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL acc_connection_setDataOutHandler(uint64_t a1, const void *a2)
{
  if (a1)
  {
    pthread_rwlock_wrlock(&_gAccConnectionLock);
    v4 = *(a1 + 24);
    if (v4)
    {
      _Block_release(v4);
    }

    if (a2)
    {
      v5 = _Block_copy(a2);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 24) = v5;
    pthread_rwlock_unlock(&_gAccConnectionLock);
  }

  return a1 != 0;
}

unint64_t acc_connection_getDurationMS(unint64_t result)
{
  if (result)
  {
    return systemInfo_getCurrentUnixTimeMS() - *(result + 32);
  }

  return result;
}

void acc_connection_removeAllEndpoints(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_28_2();
    if (v2)
    {
      pthread_rwlock_wrlock(&_gAccConnectionLock);
      pthread_mutex_lock((v1 + 144));
      Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(v1 + 40));
      CFDictionaryRemoveAllValues(*(v1 + 40));
      pthread_mutex_unlock((v1 + 144));
      pthread_rwlock_unlock(&_gAccConnectionLock);
      CFDictionaryApplyFunction(Copy, _CFDictionaryApplierFunction_destroyEndpoint, 0);
      if (Copy)
      {

        CFRelease(Copy);
      }
    }
  }
}

CFSetRef acc_connection_copyEndpointUUIDs(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_2();
  if (!v2)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 144));
  Count = CFDictionaryGetCount(*(v1 + 40));
  if (Count < 1)
  {
    v7 = CFSetCreate(kCFAllocatorDefault, 0, 0, &kCFTypeSetCallBacks);
  }

  else
  {
    v4 = Count;
    __chkstk_darwin(Count);
    v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v6, 170, v5);
    CFDictionaryGetKeysAndValues(*(v1 + 40), v6, 0);
    v7 = CFSetCreate(kCFAllocatorDefault, v6, v4, &kCFTypeSetCallBacks);
  }

  pthread_mutex_unlock((v1 + 144));
  return v7;
}

uint64_t _CFDictionaryApplierFunction_destroyEndpoint(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    return acc_endpoint_destroy(&v3);
  }

  return result;
}

BOOL acc_connection_containsEndpointUUID(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_2();
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  pthread_mutex_lock((v1 + 144));
  v5 = CFDictionaryContainsKey(*(v1 + 40), v4) != 0;
  pthread_mutex_unlock((v1 + 144));
  return v5;
}

void acc_connection_addEndpoint(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_28_2();
    if (v4)
    {
      v5 = v3;
      v6 = v2;
      pthread_mutex_lock((v1 + 144));
      CFDictionaryAddValue(*(v1 + 40), v6, v5);

      pthread_mutex_unlock((v1 + 144));
    }
  }
}

void acc_connection_removeEndpointUUID(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_28_2();
    if (v3)
    {
      v4 = v2;
      pthread_mutex_lock((v1 + 144));
      CFDictionaryRemoveValue(*(v1 + 40), v4);

      pthread_mutex_unlock((v1 + 144));
    }
  }
}

BOOL acc_connection_setAuthCertData(_BOOL8 result, const void *a2)
{
  if (result)
  {
    v3 = result;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 14;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v10 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
      }
    }

    else
    {
      v10 = *(gLogObjects + 104);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_79_0(v11, v12, v13, v14, v15);
    }

    return acc_authInfo_setCertData(v3 + 48, a2);
  }

  return result;
}

uint64_t acc_connection_setAuthStatus(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = acc_connection_copyUUID(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = gLogObjects;
  v9 = gNumLogObjects;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 14;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      *buf = 134218240;
      v41 = v8;
      OUTLINED_FUNCTION_2_1();
      v43 = v9;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  else
  {
    v12 = *(gLogObjects + 104);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v7;
    OUTLINED_FUNCTION_2_1();
    v43 = a2;
    v44 = v13;
    v45 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "acc_connection_setAuthStatus: %@, authType %{coreacc:ACCAuthInfo_Type_t}d, authStatus %{coreacc:ACCAuthInfo_Status_t}d", buf, 0x18u);
  }

  Status = acc_authInfo_getStatus(a1 + 48, a2);
  v15 = OUTLINED_FUNCTION_62_0();
  v16 = acc_authInfo_setStatus(a1 + 48, a2, a3);
  if (v16)
  {
    v17 = acc_authInfo_getStatus(a1 + 48, a2);
    v18 = OUTLINED_FUNCTION_62_0();
    if (v17 != Status)
    {
      v20 = v18;
      v21 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v22 = *(gLogObjects + 104);
      }

      else
      {
        v39 = gNumLogObjects;
        v22 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v41 = v21;
          OUTLINED_FUNCTION_2_1();
          v43 = v39;
          v22 = &_os_log_default;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = "NO";
        *buf = 138413570;
        v41 = v7;
        if (v15)
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        if (v20)
        {
          v24 = "YES";
        }

        v42 = 1024;
        v43 = Status;
        v44 = 1024;
        v45 = v17;
        v46 = 1024;
        v47 = a2;
        v48 = 2080;
        v49 = v25;
        v50 = 2080;
        v51 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Authentication status changed for connection %@! oldAuthStatus: %{coreacc:ACCAuthInfo_Status_t}d, newAuthStatus: %{coreacc:ACCAuthInfo_Status_t}d, authType: %{coreacc:ACCAuthInfo_Type_t}d, wasAuthenticated: %s, isAuthenticated: %s", buf, 0x32u);
      }

      platform_notifications_authenticationStatusDidChangeForConnectionUUID(v7, Status, v17, a2, v20, v15);
      acc_connection_endpointIterateForConnection(a1);
      if ((v17 & 0xFFFFFFFD) == 1)
      {
        platform_analytics_connectionAuthUnsuccessful(a1, v17);
      }

      else if (v17 == 2)
      {
        platform_analytics_connectionPassedAuth(a1);
        goto LABEL_34;
      }

      if (v17 != 2)
      {
LABEL_52:
        if (*(a1 + 138) == 1)
        {
          platform_connectionInfo_accessoryConnectionInfoPropertyChanged(v7);
        }

        goto LABEL_14;
      }

LABEL_34:
      v26 = *(a1 + 8);
      if (v26 == 2)
      {
        v27 = gLogObjects;
        v28 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 14)
        {
          v29 = *(gLogObjects + 104);
        }

        else
        {
          v29 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *buf = 134218240;
            v41 = v27;
            OUTLINED_FUNCTION_2_1();
            v43 = v28;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v35, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (OUTLINED_FUNCTION_79())
        {
          *buf = 0;
          OUTLINED_FUNCTION_38_3(&_mh_execute_header, v29, v30, "acc_connection_setAuthStatus: auth passed for BT connection, call acc_manager_checkForWirelessCTA", buf);
        }

        acc_manager_checkForWirelessCTA();
        v26 = *(a1 + 8);
      }

      if (v26 == 9)
      {
        v31 = gLogObjects;
        v32 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 14)
        {
          v33 = *(gLogObjects + 104);
        }

        else
        {
          v33 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *buf = 134218240;
            v41 = v31;
            OUTLINED_FUNCTION_2_1();
            v43 = v32;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (OUTLINED_FUNCTION_79())
        {
          *buf = 0;
          OUTLINED_FUNCTION_38_3(&_mh_execute_header, v33, v34, "acc_connection_setAuthStatus: auth passed for NFC connection, call acc_manager_checkForInductiveCTA", buf);
        }

        acc_manager_checkForInductiveCTA();
      }

      goto LABEL_52;
    }
  }

LABEL_14:
  CFRelease(v7);
  return v16;
}

CFTypeRef acc_connection_copyUUID(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 272));
  v2 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  pthread_mutex_unlock((a1 + 272));
  return v2;
}

void _CFDictionaryApplierFunction_findiAP2Endpoint(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3 && acc_endpoint_getProtocol(a2) == 4 && !*a3)
  {
    *a3 = a2;
  }
}

BOOL acc_connection_setAuthCTAAAllowed(_BOOL8 result, char a2)
{
  if (result)
  {
    return acc_authInfo_setCTAAllowed(result + 48, a2);
  }

  return result;
}

uint64_t acc_connection_getAuthStatus(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return acc_authInfo_getStatus(result + 48, a2);
  }

  return result;
}

BOOL acc_connection_isAuthenticated(_BOOL8 result, unsigned int a2)
{
  if (result)
  {
    return acc_authInfo_isAuthenticated(result + 48, a2);
  }

  return result;
}

uint64_t acc_connection_isAuthenticatedForInductivePowerIn(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  if (!OUTLINED_FUNCTION_62_0())
  {
    return 0;
  }

  v2 = acc_authInfo_copyCertCapabilities(v1 + 48);
  if (!v2)
  {
    v6 = logObjectForModule_3(0xDu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_79_0(v7, v8, v9, v10, v11);
    }

    return 0;
  }

  v3 = v2;
  CFDataGetBytePtr(v2);
  if (CFDataGetLength(v3) < 32)
  {
    v1 = 0;
  }

  else
  {
    if (*(v1 + 68) == 4)
    {
      canChargeInductiveFromAccessory = platform_auth_mfi4_canChargeInductiveFromAccessory();
    }

    else
    {
      canChargeInductiveFromAccessory = platform_auth_canChargeInductive();
    }

    v1 = canChargeInductiveFromAccessory;
  }

  CFRelease(v3);
  return v1;
}

uint64_t acc_connection_isAuthenticatedForAppMatchLaunch(uint64_t a1)
{
  if (!a1 || !acc_authInfo_isAuthenticated(a1 + 48, 6u))
  {
    return 0;
  }

  v2 = acc_authInfo_copyCertCapabilities(a1 + 48);
  if (!v2)
  {
    v8 = logObjectForModule_3(0xDu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_79_0(v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v3 = v2;
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v3);
  canAppMatchAppLaunch = 0;
  if (BytePtr && Length >= 32)
  {
    if (*(a1 + 68) == 4)
    {
      canAppMatchAppLaunch = platform_auth_mfi4_canAppMatchAppLaunch();
    }

    else
    {
      canAppMatchAppLaunch = 0;
    }
  }

  CFRelease(v3);
  return canAppMatchAppLaunch;
}

uint64_t acc_connection_getAccessoryInfo(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 120);
    if (!result)
    {
      OUTLINED_FUNCTION_33_3();
      if (v2)
      {
        acc_connection_mapAccessoryInfo(v1);
        return *(v1 + 120);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFTypeRef acc_connection_copyIdentifier(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

void acc_connection_mapAccessoryInfo(uint64_t a1)
{
  if (a1)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 14;
    }

    else
    {
      v2 = 1;
    }

    if (v2 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_19_5(3.8521e-34);
      OUTLINED_FUNCTION_6_9();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      v8 = *a1;
      v76 = 138412290;
      v77 = v8;
      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_73_0(v9, v10, v11, v12, v13);
    }

    if (acc_connection_getNumEndpoints(a1) >= 1)
    {
      if (*(a1 + 142) == 1)
      {
        v61 = logObjectForModule_3(0xDu);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          LOWORD(v76) = 0;
          v29 = &_mh_execute_header;
          v32 = "Skipped mapping accessory info since connection is being destroyed.";
          v33 = &v76;
          v30 = v61;
          v31 = OS_LOG_TYPE_INFO;
          goto LABEL_56;
        }
      }

      else
      {
        v75 = 0;
        pthread_mutex_lock((a1 + 208));
        v14 = kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo;
        if (acc_properties_containsProperty(*(a1 + 128), kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
        {
          v15 = acc_properties_copyProperty(*(a1 + 128), v14);
          EndpointWithUUID = acc_manager_getEndpointWithUUID(v15);
          v75 = EndpointWithUUID;
          if (v15)
          {
            CFRelease(v15);
            EndpointWithUUID = v75;
          }

          if (gLogObjects)
          {
            v17 = gNumLogObjects <= 13;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          if (EndpointWithUUID)
          {
            if (!v18 && OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_9_7(3.8521e-34);
              OUTLINED_FUNCTION_6_9();
              _os_log_error_impl(v48, v49, v50, v51, v52, 0x12u);
            }

            if (OUTLINED_FUNCTION_93())
            {
              LOWORD(v76) = 0;
              OUTLINED_FUNCTION_18_7();
              _os_log_impl(v19, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
            }
          }

          else
          {
            if (!v18 && OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_9_7(3.8521e-34);
              OUTLINED_FUNCTION_6_9();
              _os_log_error_impl(v54, v55, v56, v57, v58, 0x12u);
            }

            if (OUTLINED_FUNCTION_21())
            {
              LOWORD(v76) = 0;
              OUTLINED_FUNCTION_6_9();
              _os_log_error_impl(v43, v44, v45, v46, v47, 2u);
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_45_3();
        }

        pthread_mutex_unlock((a1 + 208));
        v23 = v75;
        if (v75)
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_45_3();
        OUTLINED_FUNCTION_45_3();
        if (gLogObjects)
        {
          v59 = gNumLogObjects <= 13;
        }

        else
        {
          v59 = 1;
        }

        v60 = !v59;
        if (!v60 && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_9_7(3.8521e-34);
          OUTLINED_FUNCTION_6_9();
          _os_log_error_impl(v62, v63, v64, v65, v66, 0x12u);
        }

        if (OUTLINED_FUNCTION_76())
        {
          LOWORD(v76) = 0;
          OUTLINED_FUNCTION_18_7();
          _os_log_impl(v67, v68, OS_LOG_TYPE_INFO, v69, v70, 2u);
        }

        NumEndpoints = acc_connection_getNumEndpoints(a1);
        if (NumEndpoints >= 1)
        {
          __chkstk_darwin(NumEndpoints);
          v73 = (&v74 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
          memset(v73, 170, v72);
          pthread_mutex_lock((a1 + 144));
          CFDictionaryGetKeysAndValues(*(a1 + 40), 0, v73);
          pthread_mutex_unlock((a1 + 144));
          v75 = *v73;
        }

        v23 = v75;
        if (v75)
        {
LABEL_36:
          v24 = *(a1 + 120);
          if (!v24)
          {
            v24 = acc_accInfo_create();
            *(a1 + 120) = v24;
            v23 = v75;
          }

          acc_accInfo_setAccessoryInfo(v24, v23[8]);
          v25 = gLogObjects;
          v26 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_21())
          {
            v76 = 134218240;
            v77 = v25;
            v78 = 1024;
            LODWORD(v79) = v26;
            OUTLINED_FUNCTION_6_9();
            _os_log_error_impl(v35, v36, v37, v38, v39, 0x12u);
          }

          if (OUTLINED_FUNCTION_93())
          {
            v27 = *a1;
            v28 = v75[2];
            v76 = 138412546;
            v77 = v27;
            v78 = 2112;
            v79 = v28;
            OUTLINED_FUNCTION_18_7();
            OUTLINED_FUNCTION_58_1();
LABEL_44:
            _os_log_impl(v29, v30, v31, v32, v33, v34);
          }
        }

        else
        {
          v40 = gLogObjects;
          v41 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 14)
          {
            v42 = *(gLogObjects + 104);
          }

          else
          {
            v42 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              v76 = 134218240;
              v77 = v40;
              v78 = 1024;
              LODWORD(v79) = v41;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v76);
            }
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v76) = 0;
            v29 = &_mh_execute_header;
            v32 = "Couldn't find an endpoint to map accessory info to!";
            v33 = &v76;
            v30 = v42;
            v31 = OS_LOG_TYPE_DEFAULT;
LABEL_56:
            v34 = 2;
            goto LABEL_44;
          }
        }
      }
    }
  }
}