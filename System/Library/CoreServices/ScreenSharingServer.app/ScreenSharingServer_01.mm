uint64_t sub_1000398E4(uint64_t a1, int a2, dispatch_semaphore_t *a3)
{
  if (!a1)
  {
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "RDCreateSemaphore";
        v14 = 1024;
        v15 = 17;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%s:%d] RDCreateSemaphore requires maximumValue > 0", &v12, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 17, "RDCreateSemaphore", 3, 0, "RDCreateSemaphore requires maximumValue > 0");
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v3 = sub_1000423E0();
    if (v3)
    {
      v4 = sub_100042E68(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "RDCreateSemaphore";
        v14 = 1024;
        v15 = 21;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] RDCreateSemaphore requires initialValue == 0", &v12, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 21, "RDCreateSemaphore", 3, 0, "RDCreateSemaphore requires initialValue == 0");
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "RDCreateSemaphore";
        v14 = 1024;
        v15 = 25;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%s:%d] RDCreateSemaphore requires semaphore != NULL", &v12, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 25, "RDCreateSemaphore", 3, 0, "RDCreateSemaphore requires semaphore != NULL");
    return 0xFFFFFFFFLL;
  }

  v9 = dispatch_semaphore_create((a1 - 1));
  *a3 = v9;
  if (v9)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100039B0C(NSObject *a1)
{
  if (a1)
  {
    dispatch_semaphore_signal(a1);
    dispatch_release(a1);
  }

  else
  {
    v2 = sub_1000423E0();
    if (v2)
    {
      v3 = sub_100042E68(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "RDDeleteSemaphore";
        v7 = 1024;
        v8 = 41;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] RDDeleteSemaphore called with NULL semaphore", &v5, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 41, "RDDeleteSemaphore", 7, 0, "RDDeleteSemaphore called with NULL semaphore");
  }

  return 0;
}

uint64_t sub_100039C0C(NSObject *a1)
{
  if (a1)
  {
    dispatch_semaphore_signal(a1);
  }

  else
  {
    v1 = sub_1000423E0();
    if (v1)
    {
      v2 = sub_100042E68(v1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315394;
        v5 = "RDSignalSemaphore";
        v6 = 1024;
        v7 = 57;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] RDSignalSemaphore called with NULL semaphore", &v4, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 57, "RDSignalSemaphore", 7, 0, "RDSignalSemaphore called with NULL semaphore");
  }

  return 0;
}

intptr_t sub_100039D00(NSObject *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 1000000 * a2);
  }

  else
  {
    v3 = -1;
  }

  return dispatch_semaphore_wait(a1, v3);
}

uint64_t sub_100039D58(size_t size, dispatch_semaphore_t **a2)
{
  v3 = size;
  *a2 = 0;
  v4 = malloc_type_malloc(size, 0xBB82CD9BuLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B00406AF97CF0uLL);
  if (!v6)
  {
    free(v5);
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *v6 = 1851946342;
  v6[2] = v5;
  v8 = sub_100005668();
  *(v7 + 5) = v8;
  if (!v8 || (result = sub_1000398E4(1, 0, v7 + 4), result))
  {
    sub_100039E1C(v7);
    return 0xFFFFFFFFLL;
  }

  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 6) = v3;
  *a2 = v7;
  return result;
}

uint64_t sub_100039E1C(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 1851946342)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 5);
  if (v2)
  {
    [v2 lock];

    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 4);
  if (v3)
  {
    sub_100039B0C(v3);
  }

  *a1 = 1851946282;
  free(*(a1 + 2));
  free(a1);
  return 0;
}

uint64_t sub_100039EA8(uint64_t a1, unsigned int a2, char *a3)
{
  if (!a1 || *a1 != 1851946342)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = [*(a1 + 40) lock];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v26 = "NetBufferRemoveData";
        v27 = 1024;
        v28 = 129;
        v29 = 1024;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 129, "NetBufferRemoveData", 7, 0, "*****net buff enter cr err %d", v7);
  }

  v11 = *(a1 + 4);
  v10 = *(a1 + 8);
  if (v11 >= v10)
  {
    if (v11 - v10 >= a2)
    {
      memcpy(a3, (*(a1 + 16) + v10), a2);
      v14 = *(a1 + 8) + a2;
      goto LABEL_28;
    }
  }

  else
  {
    v12 = *(a1 + 24) - v10;
    if (v12 + v11 >= a2)
    {
      v13 = *(a1 + 16);
      v14 = a2 - v12;
      if (a2 <= v12)
      {
        memcpy(a3, (v13 + v10), a2);
        if (*(a1 + 8) + a2 == *(a1 + 24))
        {
          v14 = 0;
        }

        else
        {
          v14 = *(a1 + 8) + a2;
        }
      }

      else
      {
        memcpy(a3, (v13 + v10), (*(a1 + 24) - v10));
        memcpy(&a3[v12], *(a1 + 16), a2 - v12);
      }

LABEL_28:
      *(a1 + 8) = v14;
      result = [*(a1 + 40) unlock];
      if (result)
      {
        v22 = result;
        v23 = sub_1000423E0();
        if (v23)
        {
          v24 = sub_100042E68(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v26 = "NetBufferRemoveData";
            v27 = 1024;
            v28 = 170;
            v29 = 1024;
            v30 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 170, "NetBufferRemoveData", 7, 0, "*****net buff enter cr err %d", v22);
        return 0;
      }

      return result;
    }
  }

  v16 = sub_1000423E0();
  if (v16)
  {
    v17 = sub_100042E68(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "NetBufferRemoveData";
      v27 = 1024;
      v28 = 177;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] bail NetBufferRemoveData", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 177, "NetBufferRemoveData", 7, 0, "bail NetBufferRemoveData");
  v18 = [*(a1 + 40) unlock];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000423E0();
    if (v20)
    {
      v21 = sub_100042E68(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v26 = "NetBufferRemoveData";
        v27 = 1024;
        v28 = 180;
        v29 = 1024;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 180, "NetBufferRemoveData", 7, 0, "*****net buff enter cr err %d", v19);
  }

  return 4294967294;
}

uint64_t sub_10003A284(uint64_t a1, unsigned int a2)
{
  if (!a1 || *a1 != 1851946342)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = [*(a1 + 40) lock];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "NetBufferSkipData";
        v23 = 1024;
        v24 = 210;
        v25 = 1024;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 210, "NetBufferSkipData", 7, 0, "*****net buff enter cr err %d", v5);
  }

  v9 = *(a1 + 4);
  v8 = *(a1 + 8);
  if (v9 >= v8)
  {
    if (v9 - v8 >= a2)
    {
      v12 = v8 + a2;
LABEL_25:
      *(a1 + 8) = v12;
      result = [*(a1 + 40) unlock];
      if (result)
      {
        v18 = result;
        v19 = sub_1000423E0();
        if (v19)
        {
          v20 = sub_100042E68(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v22 = "NetBufferSkipData";
            v23 = 1024;
            v24 = 242;
            v25 = 1024;
            v26 = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 242, "NetBufferSkipData", 7, 0, "*****net buff enter cr err %d", v18);
        return 0;
      }

      return result;
    }
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = v10 - v8;
    if (v10 - v8 + v9 >= a2)
    {
      v12 = v8 + a2;
      if (v12 == v10)
      {
        v12 = 0;
      }

      if (a2 > v11)
      {
        v12 = a2 - v11;
      }

      goto LABEL_25;
    }
  }

  v14 = [*(a1 + 40) unlock];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1000423E0();
    if (v16)
    {
      v17 = sub_100042E68(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "NetBufferSkipData";
        v23 = 1024;
        v24 = 248;
        v25 = 1024;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 248, "NetBufferSkipData", 7, 0, "*****net buff enter cr err %d", v15);
  }

  return 4294967294;
}

uint64_t sub_10003A56C(uint64_t a1, unsigned int a2, char *a3)
{
  if (!a1 || *a1 != 1851946342)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = [*(a1 + 40) lock];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v26 = "NetBufferViewData";
        v27 = 1024;
        v28 = 277;
        v29 = 1024;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 277, "NetBufferViewData", 7, 0, "*****net buff enter cr err %d", v7);
  }

  v11 = *(a1 + 4);
  v10 = *(a1 + 8);
  if (v11 >= v10)
  {
    if (v11 - v10 >= a2)
    {
      v13 = *(a1 + 16);
      goto LABEL_22;
    }
  }

  else
  {
    v12 = *(a1 + 24) - v10;
    if (v12 + v11 >= a2)
    {
      v13 = *(a1 + 16);
      if (a2 > v12)
      {
        memcpy(a3, (v13 + v10), (*(a1 + 24) - v10));
        v14 = &a3[v12];
        v15 = *(a1 + 16);
        v16 = a2 - v12;
        goto LABEL_23;
      }

LABEL_22:
      v16 = a2;
      v15 = (v13 + v10);
      v14 = a3;
LABEL_23:
      memcpy(v14, v15, v16);
      result = [*(a1 + 40) unlock];
      if (result)
      {
        v22 = result;
        v23 = sub_1000423E0();
        if (v23)
        {
          v24 = sub_100042E68(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v26 = "NetBufferViewData";
            v27 = 1024;
            v28 = 308;
            v29 = 1024;
            v30 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 308, "NetBufferViewData", 7, 0, "*****net buff enter cr err %d", v22);
        return 0;
      }

      return result;
    }
  }

  v18 = [*(a1 + 40) unlock];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000423E0();
    if (v20)
    {
      v21 = sub_100042E68(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v26 = "NetBufferViewData";
        v27 = 1024;
        v28 = 314;
        v29 = 1024;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 314, "NetBufferViewData", 7, 0, "*****net buff enter cr err %d", v19);
  }

  return 4294967294;
}

uint64_t sub_10003A880(uint64_t a1, unsigned int a2, char *a3)
{
  if (!a1 || *a1 != 1851946342)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = [*(a1 + 40) lock];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "NetBufferAddData";
        v25 = 1024;
        v26 = 346;
        v27 = 1024;
        v28 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 346, "NetBufferAddData", 7, 0, "*****net buff enter cr err %d", v7);
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 8);
  if (v11 <= v10)
  {
    v14 = *(a1 + 24) - v10;
    if (v14 + v11 > a2)
    {
      v15 = *(a1 + 16);
      v12 = a2 - v14;
      if (a2 <= v14)
      {
        memcpy((v15 + v10), a3, a2);
        if (*(a1 + 4) + a2 == *(a1 + 24))
        {
          v12 = 0;
        }

        else
        {
          v12 = *(a1 + 4) + a2;
        }
      }

      else
      {
        memcpy((v15 + v10), a3, (*(a1 + 24) - v10));
        memcpy(*(a1 + 16), &a3[v14], a2 - v14);
      }

LABEL_25:
      *(a1 + 4) = v12;
      result = [*(a1 + 40) unlock];
      if (result)
      {
        v20 = result;
        v21 = sub_1000423E0();
        if (v21)
        {
          v22 = sub_100042E68(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v24 = "NetBufferAddData";
            v25 = 1024;
            v26 = 385;
            v27 = 1024;
            v28 = v20;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 385, "NetBufferAddData", 7, 0, "*****net buff enter cr err %d", v20);
        return 0;
      }

      return result;
    }
  }

  else if (v11 - v10 > a2)
  {
    memcpy((*(a1 + 16) + v10), a3, a2);
    v12 = *(a1 + 4) + a2;
    goto LABEL_25;
  }

  v16 = [*(a1 + 40) unlock];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1000423E0();
    if (v18)
    {
      v19 = sub_100042E68(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "NetBufferAddData";
        v25 = 1024;
        v26 = 392;
        v27 = 1024;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 392, "NetBufferAddData", 7, 0, "*****net buff enter cr err %d", v17);
  }

  return 4294967294;
}

uint64_t sub_10003ABCC(uint64_t a1)
{
  if (!a1 || *a1 != 1851946342)
  {
    return 0;
  }

  v2 = [*(a1 + 40) lock];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "NetBufferAvailableData";
        v16 = 1024;
        v17 = 491;
        v18 = 1024;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 491, "NetBufferAvailableData", 7, 0, "*****net buff enter cr err %d", v3);
  }

  v6 = *(a1 + 4);
  v7 = *(a1 + 8);
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 = (v8 + *(a1 + 24));
  }

  v9 = [*(a1 + 40) unlock];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "NetBufferAvailableData";
        v16 = 1024;
        v17 = 500;
        v18 = 1024;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****net buff enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NetBuffer.c", 88, 500, "NetBufferAvailableData", 7, 0, "*****net buff enter cr err %d", v10);
  }

  return v8;
}

_DWORD *sub_10003ADC0(_DWORD *result)
{
  if (result)
  {
    if (*result == 1851946342)
    {
      v1 = result[6];
      return (v1 + ~sub_10003ABCC(result));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10003FE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FF18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = [a3 description];
    v8 = [v7 UTF8String];

    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = "MailUseCellularData_block_invoke";
        v17 = 1024;
        v18 = 813;
        v19 = 2080;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to get the policy for Mail %s", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 813, "MailUseCellularData_block_invoke", 7, 0, "Failed to get the policy for Mail %s", v8);
  }

  else if ([v5 count])
  {
    v11 = [v6 allObjects];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = off_100070718;
    v14 = [v12 bundleId];
    LODWORD(v13) = [(__CFString *)v13 isEqualToString:v14];

    if (v13 && ![v12 cellular])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000400E4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 description];
    v5 = [v4 UTF8String];

    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "FindMyDeviceEnabled_block_invoke";
        v10 = 1024;
        v11 = 782;
        v12 = 2080;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to get the FMD state error = %s", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 782, "FindMyDeviceEnabled_block_invoke", 7, 0, "Failed to get the FMD state error = %s", v5);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

CFTypeRef sub_100040228()
{
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    return 0;
  }

  v1 = IORegistryEntryFromPath(mainPort, "IOService:/");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  CFProperty = IORegistryEntryCreateCFProperty(v1, @"IOPlatformSerialNumber", kCFAllocatorDefault, 0);
  IOObjectRelease(v2);
  return CFProperty;
}

uint64_t sub_1000402B4(uint64_t *a1)
{
  info = 0;
  mach_timebase_info(&info);
  result = mach_absolute_time();
  *a1 = result * info.numer / info.denom / 0x3E8;
  return result;
}

uint64_t sub_100040350(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1000423E0();
  if (v2)
  {
    v3 = sub_100042E68(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "Pause_SetFlag";
      v7 = 1024;
      v8 = 17;
      v9 = 1024;
      v10 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] set pause flag to %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/Pause.c", 74, 17, "Pause_SetFlag", 7, 0, "set pause flag to %d", v1);
  _os_nospin_lock_lock();
  byte_100070AB0 = v1;
  return _os_nospin_lock_unlock();
}

uint64_t sub_100040464()
{
  _os_nospin_lock_lock();
  v0 = byte_100070AB0;
  _os_nospin_lock_unlock();
  return v0;
}

void sub_1000404E8(id a1)
{
  qword_100070AC0 = objc_alloc_init(SSAnnotationRenderer);

  _objc_release_x1();
}

intptr_t sub_10004077C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mainScreen init", v4, 2u);
  }

  v2 = +[UIScreen mainScreen];
  [*(a1 + 32) setMainScreen:v2];

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100040AB4(id a1, NSDictionary *a2, NSError *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSError *)a3 description];
    v5 = 136315138;
    v6 = [v4 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sent message  error %s", &v5, 0xCu);
  }
}

void sub_100041620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041640(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v1 = 1;
    atomic_compare_exchange_strong((*(a1 + 32) + 8), &v1, 0);
  }
}

void sub_100041668(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queuedMessage];

  if (v7)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_1000417D0;
    v11[4] = sub_1000417E0;
    v8 = [*(a1 + 32) queuedMessage];
    v12 = [v8 copy];

    [*(a1 + 32) setQueuedMessage:0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000417E8;
    v10[3] = &unk_100068F98;
    v10[4] = *(a1 + 32);
    v10[5] = v11;
    dispatch_async(&_dispatch_main_q, v10);
    _Block_object_dispose(v11, 8);
  }

  v9 = 1;
  atomic_compare_exchange_strong((*(a1 + 32) + 8), &v9, 0);
}

void sub_1000417B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000417D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000417E8(uint64_t a1)
{
  v2 = [*(a1 + 32) uiClient];
  [v2 sendAsynchronousMessage:*(*(*(a1 + 40) + 8) + 40) withIdentifier:1 targetAccessQueue:0 completion:0];
}

uint64_t sub_100042348(unsigned int a1)
{
  if (!qword_100070AC8)
  {
    _os_nospin_lock_lock();
    if (!qword_100070AC8)
    {
      sub_100042EF0();
    }

    _os_nospin_lock_unlock();
  }

  pthread_mutex_lock(&stru_100070780);
  v2 = qword_100070AC8;
  if (qword_100070AC8)
  {
    v3 = a1 >= 7 ? 7 : a1;
    *(qword_100070AC8 + 8) = v3;
    v4 = *(v2 + 16);
    if (v4)
    {
      sub_1000435E4(v4, v3);
    }
  }

  return pthread_mutex_unlock(&stru_100070780);
}

uint64_t sub_1000423E0()
{
  if (qword_100070AC8 && *(qword_100070AC8 + 12) == 1)
  {
    v0 = byte_100070B10 ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_100042414(uint64_t result)
{
  v1 = result;
  v2 = qword_100070AC8;
  if (qword_100070AC8)
  {
    goto LABEL_5;
  }

  _os_nospin_lock_lock();
  if (!qword_100070AC8)
  {
    sub_100042EF0();
  }

  result = _os_nospin_lock_unlock();
  v2 = qword_100070AC8;
  if (qword_100070AC8)
  {
LABEL_5:
    *(v2 + 12) = v1;
  }

  return result;
}

void sub_100042470(CFStringRef *a1, CFStringRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"ProductBuildVersion"];
    if (v7)
    {
      *a2 = CFStringCreateCopy(kCFAllocatorDefault, v7);
    }

    v8 = [v6 objectForKey:@"ProductVersion"];
    if (v8)
    {
      *a1 = CFStringCreateCopy(kCFAllocatorDefault, v8);
    }
  }

  objc_autoreleasePoolPop(v4);
}

__CFBundle *sub_10004254C()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetInfoDictionary(result);
    if (result)
    {
      v1 = result;
      value = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      CFDictionaryGetValueIfPresent(result, @"CFBundleVersion", &value);
      CFDictionaryGetValueIfPresent(v1, @"CFBundleShortVersionString", &v14);
      sub_100042470(&v12, &v11);
      v2 = v11;
      v3 = v12;
      v4 = CFStringCreateWithFormat(0, 0, @"START LOGGING: OSVersion=%@ OSBuildVersion=%@ CFBundleVersion=%@ CFBundleShortVersionString=%@", v12, v11, value, v14);
      CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
      if (qword_100070AC8)
      {
        v6 = *(qword_100070AC8 + 8);
      }

      else
      {
        v6 = 5;
      }

      v7 = sub_100042348(6u);
      if (!qword_100070AC8 || *(qword_100070AC8 + 12) != 1 || (byte_100070B10 & 1) == 0)
      {
        v8 = sub_100042E68(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          if (CStringPtr)
          {
            v9 = CStringPtr;
          }

          else
          {
            v9 = "START LOGGING: (error, no log string)";
          }

          v16 = "ardlog_log_version_info";
          v17 = 1024;
          v18 = 278;
          v19 = 2080;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s", buf, 0x1Cu);
        }
      }

      if (CStringPtr)
      {
        v10 = CStringPtr;
      }

      else
      {
        v10 = "START LOGGING: (error, no log string)";
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/Log.m", 79, 278, "ardlog_log_version_info", 6, 0, "%s", v10);
      if (v4)
      {
        CFRelease(v4);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      if (v2)
      {
        CFRelease(v2);
      }

      return sub_100042348(v6);
    }
  }

  return result;
}

void sub_100042760(unint64_t a1, int a2, uint64_t a3, const char *a4, char a5, const char *a6, char *a7, ...)
{
  va_start(va, a7);
  v14 = qword_100070AC8;
  if (!qword_100070AC8)
  {
    _os_nospin_lock_lock();
    if (!qword_100070AC8)
    {
      sub_100042EF0();
    }

    _os_nospin_lock_unlock();
    v14 = qword_100070AC8;
  }

  if (a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = "General";
  }

  sub_1000429D4(v14, a5 & 7, a1, a2, a3, 0, a4, v15, a7, va);
}

__CFBundle *sub_100042824(const char *a1)
{
  if (!qword_100070AC8)
  {
    _os_nospin_lock_lock();
    if (!qword_100070AC8)
    {
      sub_100042EF0();
    }

    _os_nospin_lock_unlock();
  }

  pthread_mutex_lock(&stru_100070780);
  if (qword_100070AC8 && !*(qword_100070AC8 + 16))
  {
    v2 = sub_1000434BC(a1);
    v3 = qword_100070AC8;
    *(qword_100070AC8 + 16) = v2;
    if (v2)
    {
      sub_1000435E4(v2, *(v3 + 8));
      *(qword_100070AC8 + 24) = strdup(a1);
    }

    else
    {
      syslog(3, "ardlog_open_logfile - LFOpen failed on file '%s'", a1);
    }
  }

  pthread_mutex_unlock(&stru_100070780);

  return sub_10004254C();
}

void sub_1000428F8(unint64_t a1, int a2, uint64_t a3, const char *a4, int a5, char *a6, ...)
{
  va_start(va, a6);
  if (!qword_100070AC8)
  {
    _os_nospin_lock_lock();
    if (!qword_100070AC8)
    {
      sub_100042EF0();
    }

    _os_nospin_lock_unlock();
  }

  if ((a5 - 8) > 0xA7)
  {
    v12 = "General";
  }

  else
  {
    v12 = *(&off_100069040 + ((a5 - 8) & 0xFFFFFFF8));
  }

  sub_1000429D4(qword_100070AC8, a5 & 7, a1, a2, a3, 1, a4, v12, a6, va);
}

void sub_1000429D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8, char *a9, va_list ap)
{
  v11 = a6;
  v12 = a2;
  v13 = a1;
  if (a1 || (v13 = qword_100070AC8) != 0)
  {
    if (*(v13 + 8) >= a2)
    {
      v26 = 0;
      if (*(v13 + 12) == 1)
      {
        v14 = a4 + a3 - 1;
        v15 = v14;
        do
        {
          v16 = *v15--;
          v17 = v16 != 47 && v14 >= a3;
          v14 = v15;
        }

        while (v17);
        asprintf(&v26, "%s:%d:%s: %s", v15 + 2, a5, a7, a9);
      }

      if (*(v13 + 16))
      {
        v25 = ap;
        if (v26)
        {
          v24 = 0;
          asprintf(&v24, "%-14s %s", a8, v26);
          if (v24)
          {
            sub_1000435EC(*(v13 + 16), v12, v24, v25);
            free(v24);
          }
        }

        else
        {
          sub_1000435EC(*(v13 + 16), v12, a9, v25);
        }
      }

      if (*(v13 + 48) == 1)
      {
        v24 = 0;
        v25 = ap;
        vasprintf(&v24, a9, ap);
        if (v24)
        {
          v18 = [NSString stringWithUTF8String:*(v13 + 32)];
          v19 = [NSString stringWithUTF8String:*(v13 + 40)];
          v20 = [NSString stringWithUTF8String:a8];
          DLCLogWithLevel();

          free(v24);
        }
      }

      if (v12 <= 5 && v11)
      {
        if (pthread_mutex_lock(&stru_100070780))
        {
          v21 = v26;
          if (!v26)
          {
            v21 = a9;
          }

          vsyslog(v12, v21, ap);
        }

        else
        {
          v22 = asl_new(0);
          asl_set(v22, "Facility", a8);
          v23 = v26;
          if (!v26)
          {
            v23 = a9;
          }

          asl_vlog(*v13, v22, v12, v23, ap);
          pthread_mutex_unlock(&stru_100070780);
          asl_free(v22);
        }
      }

      if (v26)
      {
        free(v26);
      }
    }
  }

  else
  {
    syslog(3, "ardlog - ardlog_initialize needs to be called", a3, a4, a5, a6, a7);
    vsyslog(v12, a9, ap);
  }
}

void sub_100042C68(uint64_t result, int a2, unsigned int a3, const char *a4, int a5, const char *a6, unsigned __int8 *a7, unint64_t a8)
{
  v20 = a7;
  *v21 = result;
  v24 = a4;
  v25 = a6;
  v26 = a5;
  v22 = a2;
  v23 = a3;
  v9 = qword_100070AC8;
  if (qword_100070AC8)
  {
    goto LABEL_22;
  }

  _os_nospin_lock_lock();
  if (!qword_100070AC8)
  {
    sub_100042EF0();
  }

  _os_nospin_lock_unlock();
  v9 = qword_100070AC8;
  if (qword_100070AC8)
  {
LABEL_22:
    if (*(v9 + 8) >= (v26 & 7u))
    {
      sub_1000428F8(*v21, v22, v23, v24, v26, " %s byte count: %zu", v25, a8);
      if (a8)
      {
        v19 = &v31 + 1;
        qmemcpy(v18, " BB CC DD EE FF 5 66 77 88 99 AA00 11 22 33 44 5abcdefghijklmnop", sizeof(v18));
        v10 = v20;
        do
        {
          v32 = 0;
          v31 = v18[3];
          *v27 = v18[2];
          v28 = v18[1];
          v29 = v18[0];
          v30 = 0;
          if (a8 >= 0x10)
          {
            v11 = 16;
          }

          else
          {
            v11 = a8;
          }

          v12 = v27;
          v13 = v11;
          v14 = v19;
          do
          {
            sprintf(v12, "%.2X ", *v10);
            v15 = *v10;
            if (v15 < 0)
            {
              v16 = __maskrune(*v10, 0x40000uLL);
            }

            else
            {
              v16 = _DefaultRuneLocale.__runetype[v15] & 0x40000;
            }

            if (v16)
            {
              v17 = v15;
            }

            else
            {
              v17 = 46;
            }

            *(v14 - 1) = v17;
            *v14++ = 0;
            ++v10;
            v12 += 3;
            --v13;
          }

          while (v13);
          a8 -= v11;
          sub_1000428F8(*v21, v22, v23, v24, v26, " %s %p:  %-48s | %-16s |", v25, v20, v27, &v31);
        }

        while (a8);
      }
    }
  }
}

id sub_100042E68(uint64_t a1)
{
  if (qword_100070AD8 != -1)
  {
    sub_100043A74();
  }

  v2 = qword_100070AD0;

  return v2;
}

void sub_100042EAC(id a1)
{
  qword_100070AD0 = os_log_create("com.apple.screensharingserver", "server");

  _objc_release_x1();
}

void sub_100042EF0()
{
  byte_100070B10 = os_variant_has_internal_diagnostics();
  v0 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040E947A4D9uLL);
  if (v0)
  {
    v1 = asl_open(0, 0, 0);
    *v0 = v1;
    asl_set_filter(v1, 255);
    v0[2] = 5;
    *(v0 + 12) = 0;
  }

  else
  {
    if (!qword_100070AC8 || *(qword_100070AC8 + 12) != 1 || (byte_100070B10 & 1) == 0)
    {
      v2 = sub_100042E68(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "ardlog_open";
        v8 = 1024;
        v9 = 106;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[%s:%d] Couldn't allocate memory for ARD log.", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/Log.m", 79, 106, "ardlog_open", 3, 0, "Couldn't allocate memory for ARD log.");
  }

  qword_100070AC8 = v0;
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
    if (Identifier)
    {
      if (CFEqual(Identifier, @"com.apple.iChat"))
      {
        v5 = CFPreferencesCopyValue(@"ARDCollectLogs", @"com.apple.RemoteManagement", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
        if (v5 == kCFBooleanTrue)
        {
          sub_100042824("/private/tmp/iChat-ScreenSharing.log");
          sub_100042348(7u);
          sub_100042414(1);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }
    }
  }
}

id sub_1000430F0(uint64_t a1, unsigned __int8 *a2, double a3, double a4)
{
  if (qword_100070AF0 != -1)
  {
    sub_100043A88();
  }

  v8 = sub_1000423E0();
  if (a3 == 0.0 && a4 == 0.0 && !a1)
  {
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "ProcessAssistCursorMessage";
        v19 = 1024;
        v20 = 26;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] ssAnnotationRenderer hide", &v17, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAssistanceHelper.m", 111, 26, "ProcessAssistCursorMessage", 7, 0, "ssAnnotationRenderer hide");
    v10 = qword_100070AE8;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (v8)
    {
      v15 = sub_100042E68(v8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "ProcessAssistCursorMessage";
        v19 = 1024;
        v20 = 31;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] ssAnnotationRenderer handleSafeViewAnnotation", &v17, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAssistanceHelper.m", 111, 31, "ProcessAssistCursorMessage", 7, 0, "ssAnnotationRenderer handleSafeViewAnnotation");
    v10 = qword_100070AE8;
    v11 = *(a2 + 2);
    v12 = *(a2 + 10);
    v14 = *a2;
    v13 = a1;
  }

  return [v10 handleSafeViewAnnotation:v13 flags:v14 orientation:{v11, v12}];
}

void sub_1000432F8(id a1)
{
  v1 = sub_1000423E0();
  if (v1)
  {
    v2 = sub_100042E68(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v8 = "ProcessAssistCursorMessage_block_invoke";
      v9 = 1024;
      v10 = 18;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to init ssAnnotationRenderer", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAssistanceHelper.m", 111, 18, "ProcessAssistCursorMessage_block_invoke", 7, 0, "going to init ssAnnotationRenderer");
  v3 = +[SSAnnotationRenderer sharedRenderer];
  v4 = qword_100070AE8;
  qword_100070AE8 = v3;

  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "ProcessAssistCursorMessage_block_invoke";
      v9 = 1024;
      v10 = 21;
      v11 = 2048;
      v12 = qword_100070AE8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] ssAnnotationRenderer inited %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAssistanceHelper.m", 111, 21, "ProcessAssistCursorMessage_block_invoke", 7, 0, "ssAnnotationRenderer inited %p", qword_100070AE8);
}

char *sub_1000434BC(const char *a1)
{
  v2 = open(a1, 777, 438);
  if (v2 == -1)
  {
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    syslog(3, "LFOpen failed - Couldn't open '%s'. %d: %s", a1, v6, v8);
    return 0;
  }

  else
  {
    v3 = v2;
    v4 = fcntl(v2, 1, 0);
    v5 = v4;
    if (v4 < 0)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "Set_FD_CLOEXEC failed to read current file descriptor flags. %d %s", v5, v11);
    }

    else
    {
      fcntl(v3, 2, v4 | 1u);
    }

    fchmod(v3, 0x1B6u);
    v9 = malloc_type_calloc(1uLL, 0x68uLL, 0x1060040AB68CB19uLL);
    pthread_mutex_init((v9 + 16), 0);
    *(v9 + 2) = v3;
    *v9 = fdopen(v3, "a");
    *(v9 + 20) = 5;
    *(v9 + 12) = CFTimeZoneCopySystem();
  }

  return v9;
}

uint64_t sub_1000435EC(uint64_t result, signed int a2, const char *a3, va_list a4)
{
  if (*(result + 80) >= a2)
  {
    v7 = result;
    pthread_mutex_lock((result + 16));
    if ((*(v7 + 84) & 1) == 0)
    {
      *(v7 + 84) = 1;
      *(v7 + 88) = getpid();
    }

    if (a2 <= 7)
    {
      v8 = off_100069108[a2];
    }

    else
    {
      v8 = "UNKNOWN";
    }

    Current = CFAbsoluteTimeGetCurrent();
    GregorianDate = CFAbsoluteTimeGetGregorianDate(Current, *(v7 + 96));
    snprintf(__str, 0x64uLL, "%04d-%02d-%02d %02d:%02d:%07.4f", GregorianDate.year, (*&GregorianDate.year >> 8) >> 24, (*&GregorianDate.year >> 16) >> 24, (*&GregorianDate.year >> 24) >> 24, *&GregorianDate.month >> 24, GregorianDate.second);
    Main = CFRunLoopGetMain();
    if (Main == CFRunLoopGetCurrent())
    {
      v13 = "      Main      ";
    }

    else
    {
      v12 = pthread_self();
      v13 = v87;
      snprintf(v87, 0x32uLL, "%016zX", v12);
    }

    if (flock(*(v7 + 8), 2) == -1)
    {
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      syslog(3, "LFLogv - flock (lock) failed with %d. %s", v14, v16);
    }

    v17 = *v7;
    if (sub_1000423E0())
    {
      fprintf(v17, "%s %d[%s] %s ", __str, *(v7 + 88), v13, v8);
      vfprintf(v17, a3, a4);
      fputc(10, v17);
      fflush(v17);
    }

    else
    {
      v86 = 0u;
      v85 = 0u;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      *v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *v23 = 0u;
      fprintf(v17, "%s %d", __str, *(v7 + 88));
      snprintf(v55, 0x200uLL, "[%s] %s ", v13, v8);
      vsnprintf(v23, 0x200uLL, a3, a4);
      __strlcat_chk();
      fputs(v55, v17);
      fputc(10, v17);
      fflush(v17);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = v55;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }
    }

    if (flock(*(v7 + 8), 8) == -1)
    {
      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      syslog(3, "LFLogv - flock (unlock) failed with %d. %s", v18, v20);
    }

    return pthread_mutex_unlock((v7 + 16));
  }

  return result;
}

void sub_100043968(uint64_t a1)
{
  v1 = 134217984;
  v2 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "reject touch with index %ld", &v1, 0xCu);
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  GregorianDate = _CFAbsoluteTimeGetGregorianDate(at, tz);
  second = GregorianDate.second;
  v2 = *&GregorianDate.year;
  result.second = second;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}