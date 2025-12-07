void sub_10071E3B8(int a1, xpc_object_t xdict)
{
  v30 = 0;
  v29 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr");
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTestEnable");
    v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhRxTestReportPeriod");
    v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v15 = xpc_dictionary_get_uint64(v14, "kCBMsgArgEnhRxTestIs2G");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v16, "kCBMsgArgEnhRxTestModulationType");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v17, "kCBMsgArgEnhRxTestLogicalChan");
    v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v18, "kCBMsgArgEnhRxTestPacketType");
    v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v19, "kCBMsgArgEnhRxTestPacketLen");
    v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v20, "kCBMsgArgEnhRxTestBand");
    v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v21, "kCBMsgArgEnhRxTestOffset");
    v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v23 = xpc_dictionary_get_uint64(v22, "kCBMsgArgEnhRxTestFrequency");
    v25 = sub_10000C7D0(v23, v24);
    v11 = (*(*v25 + 1824))(v25, &v29, uint64, v15);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v27 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_release(v27);
  }
}

void sub_10071E634(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgEnhTxTestContHRBEnable");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgEnhTxTestContCarrierEnable");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgEnhTxTestContDualCore");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgEnhTxTestContAntennaSelection");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgEnhTxTestContMode");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v8, "kCBMsgArgEnhTxTestContModulationType");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v9, "kCBMsgArgEnhTxTestContTxPower");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v10, "kCBMsgArgEnhTxTestContTxPowerTableIdx");
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v11, "kCBMsgArgEnhTxTestContBand");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTxTestContFrequency2G");
  v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhTxTestContFrequencyHRB");
  v16 = sub_10000C7D0(uint64, v15);
  v17 = (*(*v16 + 1832))(v16);
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v19 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v17);

    xpc_release(v19);
  }
}

void sub_10071E884(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLERoleIsEnable");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgLERoleRoles");
  sub_1000031B0();
  if (uint64)
  {
    v15 = sub_1002D0844(v7);
  }

  else
  {
    v15 = sub_1002D08F0(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v16 = v15;
  sub_10000C198();
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v18 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);

    xpc_release(v18);
  }
}

void sub_10071E968(uint64_t a1, xpc_object_t xdict)
{
  v26 = 0;
  v25 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr");
  if (v11)
  {
    LODWORD(v12) = v11;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }

    v12 = v12;
  }

  else
  {
    v13 = sub_1000E1FE8(&v25);
    if (v13)
    {
      v14 = v13;
      v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      uint64 = xpc_dictionary_get_uint64(v15, "kCBMsgArgBTPerfTestType");
      v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v18 = xpc_dictionary_get_uint64(v17, "kCBMsgArgBTPerfTestDurationInSec");
      v19 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        buf.tv_sec = __PAIR64__(*v14, 67109888);
        LOWORD(buf.tv_usec) = 1024;
        *(&buf.tv_usec + 2) = uint64;
        *(&buf.tv_usec + 3) = 1024;
        v28 = 0;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_BTPerfTest handle=%x type=%d isSymmetric=%d durationInSec=%d\n", &buf, 0x1Au);
        v19 = qword_100BCE950;
      }

      qword_100BC7078 = v14;
      byte_100BC7080 = uint64;
      dword_100BC7088 = v18;
      dword_100BC706C = 0;
      dword_100BC7074 = 0;
      byte_100BC708C = 0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = word_1008C5170[uint64];
        LODWORD(buf.tv_sec) = 67109120;
        HIDWORD(buf.tv_sec) = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_BTPerfTest packetSize=%d\n", &buf, 8u);
      }

      buf.tv_sec = 0;
      *&buf.tv_usec = 0;
      gettimeofday(&buf, 0);
      *&qword_100BC7090 = buf.tv_usec / 1000.0 + (1000 * buf.tv_sec);
      v21 = dispatch_time(0, 0);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_after_f(v21, global_queue, 0, sub_1007246C8);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }

    v12 = 0;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v24 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v24);
    xpc_release(v24);
  }
}

void sub_10071EC7C(uint64_t a1, void *a2)
{
  byte_100BC7068 = 1;
  sub_1000031B0();
  v4 = sub_1002967FC(20545, sub_100723BC8);
  sub_10000C198();
  dword_100BC706C = 0;
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v4);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v6);

    xpc_release(v6);
  }
}

void sub_10071ED34(uint64_t a1, void *a2)
{
  sub_1000031B0();
  v4 = sub_1002969F8(20545);
  sub_10000C198();
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v4);
    if (byte_100BC7080 > 0xCu)
    {
      v9 = 0.0;
    }

    else
    {
      if (((1 << byte_100BC7080) & 0x1249) != 0)
      {
        v7 = (1000 * dword_100BC7088);
        v8 = 3.75;
      }

      else
      {
        v7 = (1000 * dword_100BC7088);
        if (((1 << byte_100BC7080) & 0x492) != 0)
        {
          v8 = 1.25;
        }

        else
        {
          v8 = 2.5;
        }
      }

      v9 = v7 / v8;
    }

    xpc_dictionary_set_double(v6, "kCBMsgArgBTPerfTestMaxPacket", v9);
    if (byte_100BC7068 == 1)
    {
      xpc_dictionary_set_uint64(v6, "kCBMsgArgBTPerfTestPacketRcvd", dword_100BC706C);
      dword_100BC706C = 0;
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v6);

    xpc_release(v6);
  }
}

void sub_10071EE90(uint64_t a1, xpc_object_t xdict)
{
  v16 = 0;
  v15 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr");
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    byte_100BC7068 = 0;
    sub_1000031B0();
    v12 = sub_10028F454(sub_100723D00, sub_100723DD8, sub_100723F24, 20545, &v15, &unk_1008C5120, &word_100BC7070, &unk_1008C5140);
    sub_10000C198();
  }

  dword_100BC7074 = 0;
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_10071EFDC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr");
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    sub_1000031B0();
    v12 = sub_10029104C(word_100BC7070, 436);
    sub_10000C198();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v12);
    if (byte_100BC7080 > 0xCu)
    {
      v17 = 0.0;
    }

    else
    {
      if (((1 << byte_100BC7080) & 0x1249) != 0)
      {
        v15 = (1000 * dword_100BC7088);
        v16 = 3.75;
      }

      else
      {
        v15 = (1000 * dword_100BC7088);
        if (((1 << byte_100BC7080) & 0x492) != 0)
        {
          v16 = 1.25;
        }

        else
        {
          v16 = 2.5;
        }
      }

      v17 = v15 / v16;
    }

    xpc_dictionary_set_double(v14, "kCBMsgArgBTPerfTestMaxPacket", v17);
    if ((byte_100BC7068 & 1) == 0)
    {
      xpc_dictionary_set_uint64(v14, "kCBMsgArgBTPerfTestPacketSent", dword_100BC7074);
      xpc_dictionary_set_double(v14, "kCBMsgArgBTPerfTestThroughput", ((word_1008C5170[byte_100BC7080] + 4) * dword_100BC7074) * 8.0 / (1000 * dword_100BC7088));
      dword_100BC7074 = 0;
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_10071F1E8(int a1, xpc_object_t xdict)
{
  v24 = 0;
  v23 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }

LABEL_4:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008692DC();
    }

    return;
  }

  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v10, "kCBMsgArgSniffIntervalMax");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v13 = xpc_dictionary_get_uint64(v12, "kCBMsgArgSniffIntervalMin");
  v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v14, "kCBMsgArgSniffAttempt");
  v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v15, "kCBMsgArgSniffTimeout");
  v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v17 = xpc_dictionary_get_BOOL(v16, "kCBMsgArgAoSStates");
  sub_1000031B0();
  v18 = sub_10024266C(&v23, uint64, v13);
  sub_10000C198();
  if (!v17 || v18)
  {
    if (!v18)
    {
      return;
    }

    goto LABEL_4;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10086934C();
  }

  v21 = v23;
  v22 = v24;
  v19 = sub_1000E6554(off_100B508E8, &v21, 1);
  if (v19)
  {
    v20 = v19;
    if (qword_100B50B60 != -1)
    {
      sub_100869374();
    }

    sub_100378E58(qword_100B50B58, 1, v20);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086939C();
  }
}

void sub_10071F418(int a1, xpc_object_t xdict)
{
  v18 = 0;
  v17 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }

LABEL_4:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008693D8();
    }

    return;
  }

  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = xpc_dictionary_get_BOOL(v10, "kCBMsgArgAoSStates");
  sub_1000031B0();
  v12 = sub_1002429D4(&v17);
  sub_10000C198();
  if (!v11 || v12)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_4;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10086934C();
  }

  v15 = v17;
  v16 = v18;
  v13 = sub_1000E6554(off_100B508E8, &v15, 1);
  if (v13)
  {
    v14 = v13;
    if (qword_100B50B60 != -1)
    {
      sub_100869374();
    }

    sub_100378E58(qword_100B50B58, 0, v14);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086939C();
  }
}

void sub_10071F5B4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869448();
    }
  }

  else
  {
    xpc_dictionary_get_uint64(value, "kCBMsgArgPhyStatsEnable");
    xpc_dictionary_get_uint64(value, "kCBMsgArgPhyStatsInterval");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgType");
    v11 = *sub_10000C7D0(uint64, v10);
    if ((*(v11 + 320))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008694B8();
    }
  }
}

void sub_10071F744(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v19 = 0;
    v18 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869564();
      }
    }

    else
    {
      v11 = sub_1000E1FE8(&v18);
      if (v11)
      {
        v17 = *v11;
        uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffInterval");
        v15 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMaxAge");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMaxRetry");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPacketMerge");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAudioDownlinkCID");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAudioUplinkCID");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPolicy");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffTimestampPeriod");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffCToPPacketSize");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPToCPacketSize");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMethod");
        v12 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAdvanceTime");
        v14 = sub_10000C7D0(v12, v13);
        if ((*(*v14 + 1840))(v14, v17, uint64, v15) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868CF0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869528();
  }
}

void sub_10071FA3C(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v16 = 0;
    v15 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869610();
      }
    }

    else
    {
      v11 = sub_1000E1FE8(&v15);
      if (v11)
      {
        v13 = *v11;
        v14 = sub_10000C7D0(v11, v12);
        if ((*(*v14 + 1848))(v14, v13, 1) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868CF0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008695D4();
  }
}

void sub_10071FBD8(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v15 = 0;
    v14 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_1008696BC();
      }
    }

    else if (sub_1000E1FE8(&v14))
    {
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffTimestampPeriod");
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffCToPPacketSize");
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPToCPacketSize");
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMaxAge");
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAudioUplinkCID");
      v13 = *sub_10000C7D0(uint64, v12);
      if ((*(v13 + 1856))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869680();
  }
}

void sub_10071FE0C(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v15 = 0;
    v14 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869768();
      }
    }

    else if (sub_1000E1FE8(&v14))
    {
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPToCMaxAge");
      v13 = *sub_10000C7D0(uint64, v12);
      if ((*(v13 + 1864))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086972C();
  }
}

void sub_10071FFD0(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v15 = 0;
    v14 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869814();
      }
    }

    else if (sub_1000E1FE8(&v14))
    {
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffLMPFlow");
      v13 = *sub_10000C7D0(uint64, v12);
      if ((*(v13 + 1872))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008697D8();
  }
}

void sub_100720194(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v15 = 0;
    v14 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_1008698C0();
      }
    }

    else if (sub_1000E1FE8(&v14))
    {
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffEmptyPacketReport");
      v13 = *sub_10000C7D0(uint64, v12);
      if ((*(v13 + 1880))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869884();
  }
}

void sub_100720358(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffControlAoS");
    v7 = *sub_10000C7D0(uint64, v6);
    if ((*(v7 + 1888))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10086996C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869930();
  }
}

void sub_10072046C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgBTSCPageScanEnable");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgBTSCPageScanInterval");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgBTSCPageScanWindow");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgBTSCPageScanInterlaced");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgBTSCPageScanElnaMode");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v8, "kCBMsgArgBTSCPageScanUseAuxScanParams");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v9, "kCBMsgArgBTSCPageScanEnableAuxScan");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v10, "kCBMsgArgBTSCPageScanPreemptAuxScan");
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v11, "kCBMsgArgBTSCPageScanAuxScanDurationInMs");
  v14 = sub_10000C7D0(uint64, v13);
  if ((*(*v14 + 4008))(v14))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008699DC();
    }
  }
}

void sub_100720664(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgQoSsessionID");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v80 = xpc_dictionary_get_uint64(v4, "kCBMsgArgQoSalarmL1Priority");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v79 = xpc_dictionary_get_uint64(v5, "kCBMsgArgQoSalarmL2Priority");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v78 = xpc_dictionary_get_uint64(v6, "kCBMsgArgQoSalarmL3Priority");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v77 = xpc_dictionary_get_uint64(v7, "kCBMsgArgQoSalarmL4Priority");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v76 = xpc_dictionary_get_uint64(v8, "kCBMsgArgQoSuseRxSkippedPercentage") != 0;
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v75 = xpc_dictionary_get_uint64(v9, "kCBMsgArgQoSuseRxPreemptedCount") != 0;
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v74 = xpc_dictionary_get_uint64(v10, "kCBMsgArgQoSuseRxCslPreemptedCount ") != 0;
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v73 = xpc_dictionary_get_uint64(v11, "kCBMsgArgQoSraisePriorityIfRxHeaderIsReceived") != 0;
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v72 = xpc_dictionary_get_uint64(v12, "kCBMsgArgQoSraisePriorityIfRxAckHeaderReceived") != 0;
  v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v71 = xpc_dictionary_get_uint64(v13, "kCBMsgArgQoSpriorityToRaiseForScheduledReception");
  v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v70 = xpc_dictionary_get_uint64(v14, "kCBMsgArgQoSuseRxCslCountInHighPriority") != 0;
  v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v69 = xpc_dictionary_get_uint64(v15, "kCBMsgArgQoSuseTxCslCountInHighPriority") != 0;
  v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v68 = xpc_dictionary_get_uint64(v16, "kCBMsgArgQoSuseTxPreemptedCount") != 0;
  v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v67 = xpc_dictionary_get_uint64(v17, "kCBMsgArgQoSuseTxCslPreemptedCount") != 0;
  v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v66 = xpc_dictionary_get_uint64(v18, "kCBMsgArgQoSuseTxDelay") != 0;
  v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v65 = xpc_dictionary_get_uint64(v19, "kCBMsgArgQoSrxSkippedPercentageL0");
  v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v64 = xpc_dictionary_get_uint64(v20, "kCBMsgArgQoSrxSkippedPercentageL1");
  v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v63 = xpc_dictionary_get_uint64(v21, "kCBMsgArgQoSrxSkippedPercentageL2");
  v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v62 = xpc_dictionary_get_uint64(v22, "kCBMsgArgQoSrxSkippedPercentageL3");
  v23 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v61 = xpc_dictionary_get_uint64(v23, "kCBMsgArgQoSrxPreemptedCountL0");
  v24 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v60 = xpc_dictionary_get_uint64(v24, "kCBMsgArgQoSrxPreemptedCountL1");
  v25 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v59 = xpc_dictionary_get_uint64(v25, "kCBMsgArgQoSrxPreemptedCountL2");
  v26 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v58 = xpc_dictionary_get_uint64(v26, "kCBMsgArgQoSrxPreemptedCountL3");
  v27 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v57 = xpc_dictionary_get_uint64(v27, "kCBMsgArgQoSrxCslCountInHighPriority");
  v28 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v56 = xpc_dictionary_get_uint64(v28, "kCBMsgArgQoSrxCslPreemptedCountL0");
  v29 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v55 = xpc_dictionary_get_uint64(v29, "kCBMsgArgQoSrxCslPreemptedCountL1");
  v30 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v54 = xpc_dictionary_get_uint64(v30, "kCBMsgArgQoSrxCslPreemptedCountL2");
  v31 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v53 = xpc_dictionary_get_uint64(v31, "kCBMsgArgQoSrxCslPreemptedCountL3");
  v32 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v32, "kCBMsgArgQoStxDelayL0");
  v33 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v33, "kCBMsgArgQoStxDelayL1");
  v34 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v34, "kCBMsgArgQoStxDelayL2");
  v35 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v35, "kCBMsgArgQoStxDelayL3");
  v36 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v36, "kCBMsgArgQoStxPreemptedCountL0");
  v37 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v37, "kCBMsgArgQoStxPreemptedCountL1");
  v38 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v38, "kCBMsgArgQoStxPreemptedCountL2");
  v39 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v39, "kCBMsgArgQoStxPreemptedCountL3");
  v40 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v40, "kCBMsgArgQoStxCslCountInHighPriority");
  v41 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v41, "kCBMsgArgQoStxCslPreemptedCountL0");
  v42 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v42, "kCBMsgArgQoStxCslPreemptedCountL1");
  v43 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v43, "kCBMsgArgQoStxCslPreemptedCountL2");
  v44 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v44, "kCBMsgArgQoStxCslPreemptedCountL3");
  v45 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v45, "kCBMsgArgQoStxDurationInHighPriority");
  v46 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v47 = xpc_dictionary_get_uint64(v46, "kCBMsgArgQoSCslPriority");
  v49 = sub_10000C7D0(v47, v48);
  v52 = v65;
  v51 = v66;
  HIBYTE(v50) = v67;
  BYTE6(v50) = v68;
  BYTE5(v50) = v69;
  BYTE4(v50) = v70;
  BYTE3(v50) = v71;
  BYTE2(v50) = v72;
  BYTE1(v50) = v73;
  LOBYTE(v50) = v74;
  if ((*(*v49 + 4024))(v49, uint64, v80, v79, v78, v77, v76, v75, v50, v51, __PAIR64__(v63, v64), __PAIR64__(v61, v62), __PAIR64__(v59, v60), __PAIR64__(v57, v58), __PAIR64__(v55, v56), __PAIR64__(v53, v54)))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869A4C();
    }
  }
}

void sub_100720D5C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgQoSsessionID");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 4032))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869A4C();
    }
  }
}

void sub_100720E0C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLeScanStatsReset");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 712))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869ABC();
    }
  }
}

void sub_100720EC0(uint64_t a1, void *a2)
{
  memset(v14, 0, sizeof(v14));
  v4 = sub_10000C7D0(a1, a2);
  v10 = (*(*v4 + 3504))(v4, 1, v14, v5, v6, v7, v8, v9);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v10);
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = 80;
      xpc_dictionary_set_data(v12, "kCBMsgArgSPMICoexBufferAddr", v14, 0x50uLL);
    }

    xpc_dictionary_set_uint64(v12, "kCBMsgArgSPMICoexBufferSize", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_100720FC0(int a1, xpc_object_t xdict)
{
  memset(v10, 0, sizeof(v10));
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSPMIPeripheralID");
  v5 = sub_10000C7D0(uint64, v4);
  if ((*(*v5 + 3512))(v5, uint64, 1, v10, v6, v7, v8, v9))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869B2C();
    }
  }
}

void sub_100721090(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSPMIPeripheralID");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexMsgPriority");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 3520))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869B9C();
    }
  }
}

void sub_1007211CC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSPMICoexTxType");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexTxID");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgSPMICoexTxControl");
  v8 = *sub_10000C7D0(uint64, v7);
  if ((*(v8 + 3528))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869C0C();
    }
  }
}

void sub_1007212D0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSPMICoexType53EnabledBitmask");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexType53Interval");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 3536))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869C7C();
    }
  }
}

void sub_1007213B4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSPMICoexType60ID2G");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v15 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexType60IDHRB1");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v16 = xpc_dictionary_get_uint64(v5, "kCBMsgArgSPMICoexType60IDHRB3");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v17 = xpc_dictionary_get_uint64(v6, "kCBMsgArgSPMICoexType60IDHRB4");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v18 = xpc_dictionary_get_uint64(v7, "kCBMsgArgSPMICoexType60IDHRB5A");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v19 = xpc_dictionary_get_uint64(v8, "kCBMsgArgSPMICoexType60IDHRB5B");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v20 = xpc_dictionary_get_uint64(v9, "kCBMsgArgSPMICoexType60IDHRB5C");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = xpc_dictionary_get_uint64(v10, "kCBMsgArgSPMICoexType60IDHRB5D");
  v21 = v11;
  v13 = *sub_10000C7D0(v11, v12);
  if ((*(v13 + 3544))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869CEC();
    }
  }
}

void sub_10072153C(uint64_t a1, void *a2)
{
  memset(v23, 0, 251);
  v4 = sub_10000E92C();
  v5 = (*(*v4 + 8))(v4);
  if (v5)
  {
    if ((*(sub_10000C7D0(v5, v6) + 800) - 22) > 0x7B9)
    {
      v11 = 0;
      LODWORD(uint64) = 0;
      v18 = 2;
    }

    else
    {
      value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgReadControllerRamAddr");
      v9 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      v10 = xpc_dictionary_get_uint64(v9, "kCBMsgArgReadControllerRamSize");
      v11 = v10;
      v13 = sub_10000C7D0(v10, v12);
      v18 = (*(*v13 + 4064))(v13, uint64, v11, v23, v14, v15, v16, v17);
      if (v18 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100869D5C();
      }
    }

    v20 = uint64;
    v19 = v11;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v18 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v22 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v18);
    if (!v18)
    {
      xpc_dictionary_set_uint64(v22, "kCBMsgArgReadControllerRamAddr", v20);
      xpc_dictionary_set_uint64(v22, "kCBMsgArgReadControllerRamSize", v19);
      xpc_dictionary_set_data(v22, "kCBMsgArgReadControllerRamData", v23, v19);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v22);
    xpc_release(v22);
  }
}

void sub_100721770(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgMinEncryptionKeySize");
  sub_1000031B0();
  v10 = sub_100018960(133, 0, v4, v5, v6, v7, v8, v9, uint64);
  sub_10000C198();
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869DCC();
    }
  }
}

void sub_100721804(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgCalSetTxPowerMode");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgTxFEConfigAntenna");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = xpc_dictionary_get_uint64(v8, "kCBMsgArgTxFEConfigCountryCode");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = xpc_dictionary_get_uint64(v10, "kCBMsgArgTxFEConfigPowerCap");
  if (uint64 == 80)
  {
    v17 = uint64;
    v18 = 0;
    v19 = v7;
    v20 = v9;
    v21 = v11;
    v13 = *sub_10000C7D0(v11, v12);
    LODWORD(v14) = (*(v13 + 496))();
    if (v14 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869EAC();
    }

    v14 = v14;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869E3C();
    }

    v14 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v16 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v16);
    xpc_release(v16);
  }
}

void sub_1007219BC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTAddr");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgAction");
  if (qword_100B508F0 != -1)
  {
    sub_100869F1C();
  }

  v8 = sub_1000504C8(off_100B508E8, uint64, 1);
  if (v8)
  {
    v9 = v8;
    if (v7 == 3)
    {
      *v39 = 393218;
      v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      LOBYTE(v40) = xpc_dictionary_get_uint64(v10, "kCBMsgArgBT2GEnable") & 7;
      v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      BYTE1(v40) = xpc_dictionary_get_int64(v11, "kCBMsgArgBT2GSigRssiThreshold");
      v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      BYTE2(v40) = xpc_dictionary_get_int64(v12, "kCBMsgArgBT2GiPABFRssiThreshold");
      v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      HIBYTE(v40) = xpc_dictionary_get_int64(v13, "kCBMsgArgBT2GePABFRssiThreshold");
      v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v41[0] = xpc_dictionary_get_int64(v14, "kCBMsgArgBT2GBFGainThreshold");
      *&v41[1] = 1537;
      v41[3] = 0;
      v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v41[4] = xpc_dictionary_get_uint64(v15, "kCBMsgArgHRBEnable") & 7;
      v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v41[5] = xpc_dictionary_get_int64(v16, "kCBMsgArgHRBSigRssiThreshold");
      v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      LOBYTE(v42) = xpc_dictionary_get_int64(v17, "kCBMsgArgHRBiPABFRssiThreshold");
      v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      HIBYTE(v42) = xpc_dictionary_get_int64(v18, "kCBMsgArgHRBePABFRssiThreshold");
      v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      LOBYTE(v43) = xpc_dictionary_get_int64(v19, "kCBMsgArgHRBBFGainThreshold");
      v20 = qword_100BCE950;
      v21 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO);
      if (v21)
      {
        *buf = 67109120;
        v49 = 3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Action:%d Multiband Setting\n", buf, 8u);
      }

      v23 = sub_10000C7D0(v21, v22);
      v24 = (*(*v23 + 128))(v23, v9, 17, v39);
    }

    else
    {
      v38 = a1;
      v25 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v26 = xpc_dictionary_get_uint64(v25, "kCBMsgArgPolicy");
      v27 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      int64 = xpc_dictionary_get_int64(v27, "kCBMsgArgiPABFThreshold");
      v29 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v30 = xpc_dictionary_get_int64(v29, "kCBMsgArgePABFThreshold");
      v31 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v32 = xpc_dictionary_get_uint64(v31, "kCBMsgArgeBFGainThreshold");
      v33 = qword_100BCE950;
      v34 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO);
      if (v34)
      {
        *v39 = 67110144;
        v40 = v7;
        *v41 = 1024;
        *&v41[2] = v26;
        v42 = 1024;
        v43 = int64;
        v44 = 1024;
        v45 = v30;
        v46 = 1024;
        v47 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Action:%d Policy:%d iPABFThreshold:%d ePABFThreshold:%d BFGainThreshold:%d\n", v39, 0x20u);
      }

      v36 = sub_10000C7D0(v34, v35);
      v24 = (*(*v36 + 112))(v36, v7, v9, v26, int64, v32, v30);
      a1 = v38;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086939C();
    }

    v24 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v24);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100721E2C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTAddr");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgAction");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = xpc_dictionary_get_uint64(v8, "kCBMsgArgPolicy");
  if (qword_100B508F0 != -1)
  {
    sub_100869F1C();
  }

  v10 = sub_1000504C8(off_100B508E8, uint64, 1);
  if (v10)
  {
    v11 = v10;
    v12 = qword_100BCE950;
    v13 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO);
    if (v13)
    {
      v18[0] = 67109376;
      v18[1] = v7;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "MRC logging: Action:%d Policy:%d \n", v18, 0xEu);
    }

    v15 = sub_10000C7D0(v13, v14);
    v16 = (*(*v15 + 136))(v15, v7, v11, v9 != 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086939C();
    }

    v16 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v16);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722038(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgBTAntennaAction");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = xpc_dictionary_get_uint64(v8, "kCBMsgArgBTAntennaCfg");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = xpc_dictionary_get_uint64(v10, "kCBMsgArgBTAntennaCfgParam1");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v13 = xpc_dictionary_get_uint64(v12, "kCBMsgArgBTAntennaCfgParam2");
  v14 = v13;
  v16 = *sub_10000C7D0(v13, v15);
  v17 = (*(v16 + 896))();
  if (v17)
  {
    v18 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67110144;
      v20[1] = uint64;
      v21 = 1024;
      v22 = v7;
      v23 = 1024;
      v24 = v9;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = v14;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to set BT antenna config; Handle: %d, Action: %d, Config: %d, Param1: %d, Param2: %d", v20, 0x20u);
    }
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v17);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722264(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  string = xpc_dictionary_get_string(value, "kCBMsgArgLoadMSFFilePath");
  v21 = 0;
  v20 = 0;
  if ((*(sub_10000C7D0(string, v6) + 800) - 5000) <= 0x3E7)
  {
    v7 = sub_10072443C(string);
    goto LABEL_18;
  }

  v8 = sub_100017E6C();
  sub_100007E30(__p, string);
  v9 = (*(*v8 + 440))(v8, __p, &v21, &v20);
  v7 = v9;
  if (v19 < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else if (!v9)
  {
LABEL_7:
    v11 = v21;
    v12 = v20;
    v13 = v20 / 230;
    do
    {
      if (v12 < 1)
      {
        v7 = 0;
        goto LABEL_16;
      }

      if (v12 >= 0xE6)
      {
        v14 = 230;
      }

      else
      {
        v14 = v12;
      }

      v15 = sub_10000C7D0(v9, v10);
      v9 = (*(*v15 + 4280))(v15, 3, v13, v11, v14, 1);
      v7 = v9;
      v11 += v14;
      --v13;
      v12 -= v14;
    }

    while (!v9);
    v16 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110144;
      v23 = 3;
      v24 = 1024;
      v25 = v12;
      v26 = 2048;
      v27 = v11;
      v28 = 1024;
      v29 = v14;
      v30 = 1024;
      v31 = v7;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error Downloading MSF File: transferType = %d, chunkLeft = %d,  payID = %p, dataLen = %d result = %d\n", buf, 0x24u);
    }
  }

LABEL_16:
  if (v21)
  {
    free(v21);
  }

LABEL_18:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v7);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_1007224E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100722508(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  string = xpc_dictionary_get_string(value, "kCBMsgArgLoadPwrRegulatoryFilePath");
  v14 = 0;
  v15 = 0;
  v7 = sub_10000C7D0(string, v6);
  if ((*(v7 + 800) - 5000) > 0x3E7)
  {
    v9 = sub_1007240F0(v7, string, &v15, &v14);
    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v12 = v14;
      if (v14 == 250 || v14 == 210)
      {
        v13 = sub_10000C7D0(v9, v10);
        v8 = (*(*v13 + 4288))(v13, v15, v12, 1);
        if (v8 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100869F30();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100869F6C();
        }

        v8 = 0;
      }
    }

    if (v15)
    {
      free(v15);
    }
  }

  else
  {
    v8 = sub_10072443C(string);
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v8);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722694(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  string = xpc_dictionary_get_string(value, "kCBMsgArgLoadPwrRegulatoryFilePathA3");
  v20 = 0;
  v21 = 0;
  v7 = sub_10000C7D0(string, v6);
  if ((*(v7 + 800) - 5000) > 0x3E7)
  {
    v9 = sub_1007240F0(v7, string, &v21, &v20);
    v11 = v21;
    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v13 = v20;
      if (v20 < 1)
      {
        v8 = 0;
      }

      else
      {
        v14 = v20 / 0xCFuLL;
        v15 = v21;
        v16 = v21;
        while (1)
        {
          v17 = sub_10000C7D0(v9, v10);
          v9 = (*(*v17 + 4296))(v17, v14, v16, v13, 1);
          v8 = v9;
          if (v9)
          {
            break;
          }

          v18 = v14-- < 1;
          if (!v18)
          {
            v16 += 207;
            v15 += 207;
            v18 = v13 <= 207;
            v13 -= 207;
            if (!v18)
            {
              continue;
            }
          }

          goto LABEL_5;
        }

        v19 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v23 = v14;
          v24 = 2048;
          v25 = v15;
          v26 = 1024;
          v27 = v13;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error Downloading Power Regulatory A3 File: chunkLeft = %d,  payID = %p, dataLen = %d\n", buf, 0x18u);
          v19 = qword_100BCE950;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100869FF4();
        }
      }
    }

LABEL_5:
    if (v11)
    {
      free(v11);
    }
  }

  else
  {
    v8 = sub_10072443C(string);
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v8);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_1007228F0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTAddr");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgTriggerULLM");
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTTest Command Low Latency Game received: %d\n", v13, 8u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_10086934C();
  }

  v9 = sub_1000504C8(off_100B508E8, uint64, 1);
  if (!v9)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086939C();
    }

    goto LABEL_15;
  }

  v10 = v9;
  if (!sub_1000C0348(v9))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A030();
    }

    goto LABEL_15;
  }

  if (!_os_feature_enabled_impl())
  {
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  if (qword_100B50940 != -1)
  {
    sub_10086A06C();
  }

  sub_10063A2C0(off_100B50938, v7 != 0, v10);
  v11 = 0;
LABEL_16:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722AF4(uint64_t a1, xpc_object_t xdict)
{
  v17 = 0;
  v16 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A094();
    }

    v11 = 1;
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v12, "kCBMsgArgBudswapCmd");
    if (uint64 == 2)
    {
      sub_1000031B0();
      v14 = sub_1001BA5F0(&v16);
    }

    else
    {
      if (uint64 != 1)
      {
        v11 = 0;
        goto LABEL_11;
      }

      sub_1000031B0();
      v14 = sub_1001B9F2C(&v16);
    }

    LODWORD(v11) = v14;
    sub_10000C198();
    v11 = v11;
  }

LABEL_11:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722C30(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSrsFwLogConfigLogLevel");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v6 = xpc_dictionary_get_uint64(v5, "kCBMsgArgSrsFwLogConfigLogPath");
  v8 = v6;
  if (uint64 && (v9 = sub_10000C7D0(v6, v7), v6 = (*(*v9 + 4208))(v9), v6))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A0D0();
    }
  }

  else
  {
    v10 = sub_10000C7D0(v6, v7);
    if ((*(*v10 + 4200))(v10, uint64, v8) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A14C();
    }
  }
}

void sub_100722D70(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = xpc_dictionary_get_BOOL(value, "kCBMsgArgLMPLogConfigEnable");
  v5 = *sub_10000C7D0(v3, v4);
  if ((*(v5 + 1304))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A1BC();
    }
  }
}

void sub_100722E20(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgInquiryMode");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPageMode");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 4216))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A22C();
    }
  }
}

void sub_100722EF0(uint64_t a1, xpc_object_t xdict)
{
  length = 0;
  LOWORD(v21) = 0;
  memset(bytes, 0, sizeof(bytes));
  v17 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10000E92C();
  if ((*(*v5 + 16))(v5))
  {
    LOWORD(v21) = 0;
    v6 = sub_10000E92C();
    sub_100007E30(&buf, "Device");
    sub_100007E30(__p, "RAWHCICMD");
    (*(*v6 + 72))(v6, &buf, __p, &v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (buf.__opaque[15] < 0)
    {
      operator delete(buf.__sig);
    }

    if (v17)
    {
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgOpcode");
      data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
      v9 = qword_100BCE950;
      v10 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        LODWORD(buf.__sig) = 136315394;
        *(&buf.__sig + 4) = "handleHciCmdMsg";
        *&buf.__opaque[4] = 1024;
        *&buf.__opaque[6] = uint64;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: %s opcode=%d", &buf, 0x12u);
      }

      v12 = sub_10000C7D0(v10, v11);
      v13 = (*(*v12 + 4232))(v12, uint64, data, length, sub_1007245C4, bytes);
      if (!v13)
      {
        memset(&buf, 0, sizeof(buf));
        sub_100044BBC(&buf);
        __p[0] = 0;
        __p[1] = 0;
        sub_100007F88(__p, &buf);
        if (sub_10002220C(&stru_100BCEB40, __p, 0x7D0uLL))
        {
          v13 = 0;
        }

        else
        {
          v13 = 316;
        }

        sub_1000088CC(__p);
        sub_10007A068(&buf);
      }
    }

    else
    {
      v13 = 12;
    }
  }

  else
  {
    v13 = 11;
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v13);
  xpc_dictionary_set_data(reply, "kCBMsgArgData", bytes, v21);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_1007231F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1000088CC(&__p);
  sub_10007A068(&a18);
  _Unwind_Resume(a1);
}

void sub_10072324C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseAction");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseHandle");
  xpc_dictionary_get_int64(value, "kCBMsgArgLEAdvTxPowerIncreaseTxDesiredPower");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseePAEnable");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseSARConfiguration");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 2232))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008694B8();
    }
  }
}

void sub_100723370(int a1, xpc_object_t xdict)
{
  v16 = 0;
  v15 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgBTAddr");
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v11 = sub_10000C7D0(v9, v10);
    v12 = (*(*v11 + 4304))(v11, &v15);
    v13 = qword_100BCE950;
    if (v12)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10086A2A8();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "BD Address was written successfully", buf, 2u);
    }
  }
}

void sub_1007234A0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgCrcErredPduReportEnable");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 2056))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A318();
    }
  }
}

void sub_100723554(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAppleExtendedAdvReportEnable");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 2048))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A388();
    }
  }
}

void sub_10072360C(unsigned int a1, unsigned __int16 *a2, int a3)
{
  if (a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_11;
  }

  v7 = &qword_100BCEB08;
  do
  {
    if (*(v6 + 32) >= 15)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < 15));
  }

  while (v6);
  if (v7 == &qword_100BCEB08 || *(v7 + 8) >= 16)
  {
LABEL_11:
    v7 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v7[5]);
  if (remote_connection)
  {
    v9 = remote_connection;
    reply = xpc_dictionary_create_reply(v7[5]);
    if (reply)
    {
      v11 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_dictionary_set_int64(v11, "kCBMsgArgConnHandle", v5);
      xpc_dictionary_set_int64(v11, "kCBMsgArgTransmitPowerLevel", a3);
      xpc_connection_send_message(v9, v11);
      xpc_release(v11);
    }

    xpc_release(v7[5]);
  }

  sub_10002717C(&qword_100BCEB00, v7);

  operator delete(v7);
}

void sub_100723734(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 23)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 23));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 24)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

void sub_100723818(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 24)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 24));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 25)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

void sub_1007238FC(unsigned int a1, unsigned int a2)
{
  v4 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v5 = &qword_100BCEB08;
  do
  {
    if (*(v4 + 32) >= 25)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < 25));
  }

  while (v4);
  if (v5 == &qword_100BCEB08 || *(v5 + 8) >= 26)
  {
LABEL_8:
    v5 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v5[5]);
  if (remote_connection)
  {
    v7 = remote_connection;
    reply = xpc_dictionary_create_reply(v5[5]);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_dictionary_set_int64(v9, "kCBMsgArgNumberOfPackets", a2);
      xpc_connection_send_message(v7, v9);
      xpc_release(v9);
    }
  }

  xpc_release(v5[5]);
  sub_10002717C(&qword_100BCEB00, v5);

  operator delete(v5);
}

void sub_100723A00(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 26)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 26));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 27)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

void sub_100723AE4(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 27)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 27));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 28)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

uint64_t sub_100723BC8(int a1, uint64_t a2, unsigned int a3)
{
  if (a1 != 20545)
  {
    sub_1000D660C();
  }

  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109632;
    v8[1] = byte_100BC7068;
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_perfClassicConnectionInd on role %d, psm %x, cid %x", v8, 0x14u);
  }

  result = sub_1000E1FE8(a2);
  if (result)
  {
    return sub_100290164(sub_100723D00, sub_100723DD8, sub_100723F24, a3, &unk_1008C5120, 1, &unk_1008C5140);
  }

  return result;
}

float sub_100723D00(int a1, int a2, int a3, int a4)
{
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109888;
    v10[1] = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_perfClassicConnectCfm: cid %x inMTU %d outMTU %d result %d", v10, 0x1Au);
  }

  return result;
}

void sub_100723DD8(int a1, int a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109376;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_perfClassicDisconnectCB: cid %x result %d", &v9, 0xEu);
  }

  v5 = byte_100BC7068;
  v6 = qword_100BCE950;
  v7 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      return;
    }

    v9 = 67109120;
    v10 = dword_100BC706C;
    v8 = "_perfClassicDisconnectCB: Acceptor packetCountReceived=%d";
  }

  else
  {
    if (!v7)
    {
      return;
    }

    v9 = 67109120;
    v10 = dword_100BC7074;
    v8 = "_perfClassicDisconnectCB: Initiator packetCountSent=%d";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v9, 8u);
}

void sub_100723F24(unsigned int a1, uint64_t a2, int a3)
{
  v9 = 0;
  v5 = sub_10028DAA8(a1, &v9);
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v11 = byte_100BC7068;
    v12 = 1024;
    v13 = a1;
    v14 = 1024;
    v15 = a3;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_perfClassicRecvDataInd: role %d, cid %x, dataLen %d status=%d", buf, 0x1Au);
  }

  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A3F8();
    }
  }

  else if (byte_100BC7068 == 1)
  {
    v7 = 0;
    ++dword_100BC706C;
    while (word_1008C5170[v7] != a3)
    {
      if (++v7 == 13)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10086A468();
        }

        LOBYTE(v7) = 0;
        break;
      }
    }

    byte_100BC7080 = v7;
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = dword_100BC706C;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_perfClassicRecvDataInd: packetCountReceived=%d", buf, 8u);
    }
  }
}

uint64_t sub_1007240F0(uint64_t a1, const char *a2, void **a3, off_t *a4)
{
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    buf.st_dev = 136315138;
    *&buf.st_mode = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "loadFile: File Path %s\n", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  bzero(&buf, 0x90uLL);
  v8 = stat(a2, &buf);
  v9 = qword_100BCE950;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A4A4(v9);
    }

    return 1;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = ctime(&buf.st_mtimespec.tv_sec);
    v21 = 2048;
    st_size = buf.st_size;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "loadFile: File last changed:%s File size=%lld Bytes\n", &v19, 0x16u);
  }

  *a3 = malloc_type_malloc(buf.st_size, 0x100004077774924uLL);
  *a4 = buf.st_size;
  v11 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "loadFile: Open File\n", &v19, 2u);
  }

  v12 = fopen(a2, "r");
  v13 = qword_100BCE950;
  if (!v12)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A5E0();
    }

    return 1;
  }

  v14 = v12;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "loadFile: Read File to buffer\n", &v19, 2u);
  }

  v15 = fread(*a3, 1uLL, buf.st_size, v14);
  v16 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v19 = 134217984;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "loadFile: Read File to fileBuffer. readResult %zu.\n", &v19, 0xCu);
  }

  if (ferror(v14))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A534();
    }

    return 1;
  }

  v17 = feof(v14);
  v18 = qword_100BCE950;
  if (v17)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A570();
    }

    return 1;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "loadFile: Close File\n", &v19, 2u);
  }

  fclose(v14);
  return 0;
}

uint64_t sub_10072443C(char *a1)
{
  v14 = 0;
  v13 = 0;
  v2 = sub_100017E6C();
  sub_100007E30(__p, a1);
  v3 = (*(*v2 + 440))(v2, __p, &v14, &v13);
  v5 = v3;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  v6 = v14;
  v7 = v13;
  do
  {
    if (v7 < 1)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v7 >= 0xF0)
    {
      v8 = 240;
    }

    else
    {
      v8 = v7;
    }

    v7 -= v8;
    v9 = sub_10000C7D0(v3, v4);
    v3 = (*(*v9 + 4280))(v9, 0, v7, v6, v8, 1);
    v6 += v8;
  }

  while (!v3);
  v5 = v3;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086A650();
  }

LABEL_14:
  if (v14)
  {
    free(v14);
  }

  return v5;
}

void sub_1007245A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007245C4(int a1, const void *a2, unsigned int a3, void *__dst)
{
  if (__dst)
  {
    if (a3 >= 0xFF)
    {
      v6 = 255;
    }

    else
    {
      v6 = a3;
    }

    memcpy(__dst, a2, v6);
    *(__dst + 128) = v6;
    v4 = vars8;
  }

  sub_10002286C(&stru_100BCEB40);
}

void *sub_100724620(void *a1)
{
  *a1 = &off_100AF7B80;
  sub_10007A068((a1 + 1));
  return a1;
}

void sub_100724664(void *a1)
{
  *a1 = &off_100AF7B80;
  sub_10007A068((a1 + 1));

  operator delete();
}

void sub_1007246C8()
{
  memset(v10, 0, sizeof(v10));
  v11.tv_sec = 0;
  *&v11.tv_usec = 0;
  gettimeofday(&v11, 0);
  v0 = v11.tv_usec / 1000.0 + (1000 * v11.tv_sec) - *&qword_100BC7090;
  v1 = dword_100BC7088;
  v2 = (1000 * dword_100BC7088);
  v3 = qword_100BCE950;
  v4 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v0 <= v2)
  {
    if (v4)
    {
      v5 = dword_100BC7074++;
      LODWORD(v11.tv_sec) = 67109120;
      HIDWORD(v11.tv_sec) = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_writeAclDataCb packetCountSent: %d\n", &v11, 8u);
    }

    v6 = byte_100BC708C++;
    memset(byte_100BC7098, v6, word_1008C5170[byte_100BC7080]);
    sub_1000031B0();
    sub_10001FF10(v10, 1u);
    sub_10001F968(v10, byte_100BC7098, word_1008C5170[byte_100BC7080], 2u);
    v7 = sub_1000B7EDC(sub_100724960, word_100BC7070, qword_100BC7078, v10, 0);
    sub_1000B7B40(v10);
    sub_10000C198();
    if (v7 == 412)
    {
      v7 = 0;
    }

    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v9 = word_1008C5170[byte_100BC7080];
      LODWORD(v11.tv_sec) = 67109376;
      HIDWORD(v11.tv_sec) = v7;
      LOWORD(v11.tv_usec) = 1024;
      *(&v11.tv_usec + 2) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_writeAclDataCb result %d, length %d\n", &v11, 0xEu);
    }

    if (v7 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A6CC();
    }
  }

  else if (v4)
  {
    LODWORD(v11.tv_sec) = 67109120;
    HIDWORD(v11.tv_sec) = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished running the test after %d Sec", &v11, 8u);
  }
}

void sub_100724960(int a1, uint64_t a2, int a3, int a4)
{
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = a4;
    v11 = 1024;
    v12 = a1;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_perfWriteCB result=%d cid=%d\n sendCount=%d", v10, 0x14u);
  }

  v8 = dispatch_time(0, 0);
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_after_f(v8, global_queue, 0, sub_1007246C8);
}

uint64_t **sub_100724A64(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_100059420(&v19, *a2, *(a2 + 8));
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  v16 = a2;
  v14 = *a2;
  v15 = *(v16 + 8);
  while (1)
  {
    v17 = v13[1];
    if (v17 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }
    }

    else
    {
      v17 &= *&v8 - 1;
    }

    if (v17 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (v13[3] != v15 || memcmp(v13[2], v14, v15))
  {
    goto LABEL_19;
  }

  return v13;
}

uint64_t *sub_100724D48(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_100724F54()
{
  v0 = objc_autoreleasePoolPush();
  qword_100BCEB10 = 0;
  qword_100BCEB08 = 0;
  qword_100BCEB00 = &qword_100BCEB08;
  __cxa_atexit(sub_100714D34, &qword_100BCEB00, &_mh_execute_header);
  xmmword_100BCEB18 = 0u;
  *algn_100BCEB28 = 0u;
  dword_100BCEB38 = 1065353216;
  __cxa_atexit(sub_100714D60, &xmmword_100BCEB18, &_mh_execute_header);
  sub_100364534(&stru_100BCEB40);
  __cxa_atexit(sub_1003645A0, &stru_100BCEB40, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10072502C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2 || *(v2 + 16) <= a2)
  {
    v4 = sub_10000E92C();
    sub_100693F88(v4, 1);
    v5 = _os_log_pack_size();
    v6 = &v9 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "Assertion failed: %{public}s");
    *v8 = 136446210;
    *(v8 + 4) = "idx < getSize()";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  return *(v2 + a2 + 24);
}

BOOL sub_100725170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v3 < v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v4 + 16);
    }

    if (v3 < v5 && v2 != 0)
    {
      v6 = *(v2 + 16);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v8 = (v2 + 24);
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = (v4 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = memcmp(v8, v9, v6);
  if (v10)
  {
    return v10 >> 31;
  }

  if (!v2)
  {
    v12 = 0;
    if (v4)
    {
      goto LABEL_24;
    }

LABEL_26:
    v13 = 0;
    return v12 < v13;
  }

  v12 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_24:
  v13 = *(v4 + 16);
  return v12 < v13;
}

void sub_100725220(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AdvRSSIOffset");
  v2 = (*(*v1 + 88))(v1, buf, __p, &dword_100BC7AB0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = dword_100BC7AB0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: RSSI shall be reported after offset %d (dB) added", buf, 8u);
  }
}

void sub_100725358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100725394(uint64_t a1)
{
  v2 = (a1 + 64);
  *(a1 + 72) = *(a1 + 64);
  v3 = (a1 + 72);
  v24 = xmmword_1008A4DDC;
  v25 = 0;
  sub_10000D03C(&v26, &v24);
  v4 = *v3;
  v5 = *(a1 + 80);
  if (*v3 >= v5)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *v2) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1000C7698();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *v2) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100018404(v2, v11);
    }

    v12 = 20 * v8;
    v13 = v26;
    *(v12 + 16) = v27;
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = (v12 + v14 - v15);
    if (v14 != v15)
    {
      v17 = v16;
      do
      {
        v18 = *v14;
        *(v17 + 4) = *(v14 + 4);
        *v17 = v18;
        v17 += 20;
        v14 += 20;
      }

      while (v14 != v15);
      v14 = *v2;
    }

    *(a1 + 64) = v16;
    *(a1 + 72) = v7;
    *(a1 + 80) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v6 = v26;
    v4[1].n128_u32[0] = v27;
    *v4 = v6;
    v7 = v4[1].n128_i64 + 4;
  }

  *(a1 + 72) = v7;
  sub_10004CE24(a1 + 112, *(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 120;
  v20 = 0;
  v26 = 0uLL;
  v27 = 0;
  if (qword_100B54770 != -1)
  {
    sub_10086A750();
  }

  sub_10050F884(off_100B54768, &v26, 20, &v20);
  v22 = xmmword_1008A4DDC;
  v23 = 0;
  sub_10000D03C(&v24, &v22);
  sub_10000C704(&v22, &v26, 0x14uLL);
  v21 = &v24;
  v19 = sub_100099408((a1 + 112), &v24, &unk_1008A9BD0, &v21);
  sub_10000AE20(v19 + 56, &v22);
  *&v22 = &off_100AE0A78;
  if (*(&v22 + 1))
  {
    sub_10000C808(*(&v22 + 1));
  }

  *(a1 + 256) = v20;
  *(a1 + 364) = 1;
}

void sub_100725610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    sub_10000C808(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100725650(uint64_t a1)
{
  if (*(a1 + 264) == 2 && (*(a1 + 364) & 1) == 0)
  {
    sub_100725394(a1);
  }
}

uint64_t sub_10072566C(uint64_t result, unsigned int a2, char a3)
{
  if (a2 <= 3)
  {
    *(result + a2 + 392) = a3;
  }

  return result;
}

uint64_t sub_100725680(uint64_t a1, uint8x8_t a2)
{
  a2.i32[0] = *(a1 + 392);
  v2 = vmovl_u8(a2).u64[0];
  v2.i16[0] = vaddv_s16(v2);
  return v2.u32[0];
}

uint64_t sub_100725700(uint64_t a1)
{
  *(a1 + 100) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  atomic_store(0, (a1 + 96));
  atomic_store(0, (a1 + 17));
  *(a1 + 88) = 0;
  atomic_store(0, (a1 + 18));
  *(a1 + 100) = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007257AC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(&_dispatch_main_q, block);
  return a1;
}

void sub_1007257B4(uint64_t a1)
{
  v2 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering for WiFi Callback", buf, 2u);
  }

  v3 = WiFiManagerClientCreate();
  *a1 = v3;
  if (v3)
  {
    v4 = WiFiManagerClientCopyDevices();
    if (v4)
    {
      v5 = v4;
      if (CFArrayGetCount(v4))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
        *(a1 + 8) = ValueAtIndex;
        CFRetain(ValueAtIndex);
        if (*(a1 + 8))
        {
          v7 = WiFiDeviceClientGetPower() != 0;
          sub_100726448(a1, v7);
          v8 = WiFiDeviceClientCopyCurrentNetwork();
          if (v8)
          {
            v9 = v8;
            OperatingBand = WiFiNetworkGetOperatingBand();
            sub_1007264C8(a1, OperatingBand);
            if (atomic_load((a1 + 96)))
            {
              sub_100726548(a1, 1u);
            }

            CFRelease(v9);
          }
        }

        v12 = sub_100017E6C();
        (*(*v12 + 40))(v12);
      }

      CFRelease(v5);
    }
  }

  Main = CFRunLoopGetMain();
  pthread_mutex_lock((a1 + 24));
  *(a1 + 88) = Main;
  pthread_mutex_unlock((a1 + 24));
  if (*a1 && *(a1 + 88) && *(a1 + 8))
  {
    WiFiDeviceClientRegisterPowerCallback();
    WiFiDeviceClientRegisterExtendedLinkCallback();
    WiFiDeviceClientRegisterBssidChangeCallback();
    WiFiDeviceClientRegisterM1M4Handshake24GHzCountCallback();
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
    WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    WiFiManagerClientScheduleWithRunLoop();
    v14 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WiFi interface is up", buf, 2u);
    }
  }

  else
  {
    v15 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting up ReTry Timer to ensure WiFi is up", buf, 2u);
    }

    v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    if (v16)
    {
      v17 = v16;
      v18 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100726668;
      v19[3] = &unk_100AE0860;
      v19[4] = a1;
      v19[5] = v17;
      dispatch_source_set_event_handler(v17, v19);
      dispatch_activate(v17);
    }
  }
}

void sub_100725B18(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(buf, "COEXDEBUG");
  sub_100007E30(__p, "Enabled");
  (*(*v2 + 72))(v2, buf, __p, a1 + 100);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
  }

  if (*(a1 + 100) == 1)
  {
    v3 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WiFiDebugModeUpdated COEXDEBUG", buf, 2u);
    }

    v20 = 0;
    v4 = sub_10000E92C();
    sub_100007E30(buf, "COEXDEBUG");
    sub_100007E30(__p, "wifiStatePower");
    v5 = (*(*v4 + 72))(v4, buf, __p, &v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(*buf);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else if (!v5)
    {
      goto LABEL_15;
    }

    atomic_store(v20, (a1 + 16));
    v6 = atomic_load((a1 + 16));
    if ((v6 & 1) == 0)
    {
      atomic_store(0, (a1 + 96));
      atomic_store(0, (a1 + 18));
LABEL_42:
      v16 = sub_100017E6C();
      (*(*v16 + 40))(v16);
      return;
    }

LABEL_15:
    v19 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "COEXDEBUG");
    sub_100007E30(__p, "wifiStateBand");
    v8 = (*(*v7 + 88))(v7, buf, __p, &v19);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(*buf);
      if (!v8)
      {
LABEL_20:
        v18 = 0;
        v9 = sub_10000E92C();
        sub_100007E30(buf, "COEXDEBUG");
        sub_100007E30(__p, "UCMWifiStateBitmap");
        v10 = (*(*v9 + 144))(v9, buf, __p, &v18);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(*buf);
        }

        if (v18)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11 == 1)
        {
          atomic_store(1u, (a1 + 18));
        }

        v17 = 0;
        v12 = sub_10000E92C();
        sub_100007E30(buf, "COEXDEBUG");
        sub_100007E30(__p, "wifiStateCritical2_4");
        v13 = (*(*v12 + 72))(v12, buf, __p, &v17);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(*buf);
          if (!v13)
          {
            goto LABEL_34;
          }
        }

        else if (!v13)
        {
LABEL_34:
          v14 = atomic_load((a1 + 18));
          if ((v14 & 1) != 0 || (v15 = atomic_load((a1 + 96)), v15 | v19))
          {
            atomic_store(1u, (a1 + 16));
          }

          goto LABEL_42;
        }

        atomic_store(v17, (a1 + 18));
        goto LABEL_34;
      }
    }

    else if (!v8)
    {
      goto LABEL_20;
    }

    atomic_store(v19, (a1 + 96));
    goto LABEL_20;
  }
}

void sub_100725EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100725F48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v8, 2u);
    }
  }

  else
  {
    if (a2)
    {
      atomic_store(WiFiDeviceClientGetPower() != 0, (a1 + 16));
      v4 = WiFiDeviceClientCopyCurrentNetwork();
      if (v4)
      {
        v5 = v4;
        atomic_store(WiFiNetworkGetOperatingBand(), (a1 + 96));
        if (atomic_load((a1 + 96)))
        {
          atomic_store(1u, (a1 + 17));
        }

        CFRelease(v5);
      }

      else
      {
        atomic_store(0, (a1 + 96));
        atomic_store(0, (a1 + 17));
      }
    }

    v7 = *(*sub_100017E6C() + 40);

    v7();
  }
}

void sub_100726070(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 100) == 1)
  {
    v3 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v5, 2u);
    }
  }

  else
  {
    sub_100726130(a1, a3);
    v4 = *(*sub_100017E6C() + 40);

    v4();
  }
}

void sub_100726130(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (!os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v3 = "Ignoring real wifi updates";
    v4 = v2;
    v5 = 2;
  }

  else
  {
    v7 = (a1 + 20);
    atomic_store(a2, (a1 + 20));
    v8 = qword_100BCE8E0;
    if (!os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = atomic_load(v7);
    v10[0] = 67109376;
    v10[1] = v9;
    v11 = 1024;
    v12 = a2;
    v3 = "Callback triggered, M1M4HandshakeCount setting to: %u with wifihandshakecount: %u";
    v4 = v8;
    v5 = 14;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, v10, v5);
}

void sub_100726244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 100) == 1)
  {
    v3 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", &v12, 2u);
    }
  }

  else if (a2)
  {
    v4 = a3;
    v6 = atomic_load((a1 + 18));
    if ((v6 & 1) != a3)
    {
      v7 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "N";
        v9 = atomic_load((a1 + 18));
        if (v9)
        {
          v10 = "Y";
        }

        else
        {
          v10 = "N";
        }

        if (v4)
        {
          v8 = "Y";
        }

        v12 = 136315394;
        v13 = v10;
        v14 = 2080;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFi isInCriticalStateWiFi2_4GHz %s -> %s", &v12, 0x16u);
      }

      sub_1007263C8(a1, v4);
      v11 = sub_100017E6C();
      (*(*v11 + 40))(v11);
    }
  }
}

void sub_1007263C8(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 18));
  }
}

void sub_100726448(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 16));
  }
}

void sub_1007264C8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 96));
  }
}

void sub_100726548(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 17));
  }
}

void sub_100726668(uint64_t a1)
{
  sub_1007257B4(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 40);

    dispatch_release(v3);
  }
}

void *sub_1007266BC(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = sub_1005ADAE8(a1, a2, a3);
  *result = &off_100B0A998;
  return result;
}

void sub_1007266F0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a2;
    if (*(a1 + 216))
    {
      if (*a2 > 0xBFu)
      {
        if (*a2 <= 0xFBu)
        {
          if (v5 == 192)
          {
            v8 = -13;
            goto LABEL_36;
          }

          if (v5 != 198 && v5 != 224)
          {
            goto LABEL_46;
          }

          goto LABEL_18;
        }

        if ((v5 - 252) > 2)
        {
          goto LABEL_46;
        }

        sub_1005AE1BC(a1, a2, a3);
      }

      else
      {
        if (*a2 > 0x4Fu)
        {
          v7 = v5 - 96;
          if ((v5 - 96) > 0x3B)
          {
            goto LABEL_8;
          }

          if (((1 << v7) & 0x380001) == 0)
          {
            if (((1 << v7) & 0xC01000000000000) == 0)
            {
LABEL_8:
              if (v5 != 80)
              {
LABEL_46:
                if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
                {
                  sub_10085DA24();
                }

                return;
              }

              goto LABEL_35;
            }

LABEL_18:
            v8 = -16;
LABEL_36:
            buf[0] = v8;
            if (!sub_1000C0430((a1 + 192), buf))
            {
LABEL_41:
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
              {
                sub_10085D9B0();
              }

              return;
            }

            v17 = v8;
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (*a2 > 0x2Fu)
        {
          if ((v5 - 48) >= 2)
          {
            goto LABEL_46;
          }

          goto LABEL_35;
        }

        switch(v5)
        {
          case 2:
LABEL_35:
            v8 = -15;
            goto LABEL_36;
          case 19:
            v16 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = 19;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received power-off notice input report (ID %u)", buf, 8u);
            }

            break;
          case 20:
            v9 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
            {
              v10 = (*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40));
              *buf = 67109376;
              *&buf[4] = 20;
              v20 = 1024;
              v21 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received exit suspend input report (ID %u), should undim %d", buf, 0xEu);
            }

            if (!(*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40)))
            {
              v12 = 0;
              goto LABEL_50;
            }

            v11 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Waking screen with spoofed click", buf, 2u);
            }

            buf[0] = -15;
            if (sub_1000C0430((a1 + 192), buf))
            {
              v17 = -15;
              *buf = &v17;
              v12 = sub_100314704((a1 + 192), &v17, &unk_1008A9BD0, buf)[3];
              *buf = 258;
              v13 = mach_absolute_time();
              IOHIDUserDeviceHandleReportWithTimeStamp(v12, v13, buf, 8);
              *report = 2;
              v14 = mach_absolute_time();
              IOHIDUserDeviceHandleReportWithTimeStamp(v12, v14, report, 8);
LABEL_50:
              buf[0] = -14;
              if (!sub_1000C0430((a1 + 192), buf))
              {
LABEL_39:
                if (v12)
                {
                  v15 = mach_absolute_time();
                  IOHIDUserDeviceHandleReportWithTimeStamp(v12, v15, a2, a3);
                  return;
                }

                goto LABEL_41;
              }

              v17 = -14;
LABEL_38:
              *buf = &v17;
              v12 = sub_100314704((a1 + 192), &v17, &unk_1008A9BD0, buf)[3];
              goto LABEL_39;
            }

            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
            {
              sub_10086A778();
            }

            break;
          default:
            goto LABEL_46;
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100817A60();
    }
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A7B4();
  }
}

uint64_t sub_100726BA0(uint64_t a1, void *a2)
{
  sub_1005AE020(a1, a2);
  sub_100726C84(a1, a2);
  sub_100726DF8(a1, a2);
  sub_100726F50(a1, a2);
  v4 = a2;
  v5 = [v4 valueForKey:@"ProductID"];
  v6 = [v5 intValue];
  v9 = 24;
  v7 = *sub_1003141CC(&unk_100BCE698, &v9);

  if (v6 != v7)
  {
    sub_100727050(a1, v4);
  }

  return 1;
}

uint64_t sub_100726C84(uint64_t a1, void *a2)
{
  v8 = xmmword_1008C51C0;
  v9 = unk_1008C51D0;
  *v10 = xmmword_1008C51E0;
  v6 = xmmword_1008C51A0;
  v7 = unk_1008C51B0;
  *&v10[15] = -1073577627;
  *(a1 + 304) = a1;
  *(a1 + 312) = -16;
  v3 = [a2 mutableCopy];
  [v3 setObject:@"Trackpad" forKeyedSubscript:@"Accessory Category"];
  [v3 setObject:&off_100B34648 forKeyedSubscript:@"ExtendedData"];
  v4 = sub_1005ADE88(a1, v3, &v6, 83, *(a1 + 312), 0);
  if (v4)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A7F0();
  }

  return v4;
}

uint64_t sub_100726DF8(uint64_t a1, void *a2)
{
  v10 = xmmword_1008C5233;
  v11[0] = unk_1008C5243;
  *(v11 + 14) = unk_1008C5251;
  v6 = xmmword_1008C51F3;
  v7 = unk_1008C5203;
  v8 = xmmword_1008C5213;
  v9 = unk_1008C5223;
  *(a1 + 320) = a1;
  *(a1 + 328) = -15;
  v3 = [a2 mutableCopy];
  [v3 setObject:&off_100B34660 forKeyedSubscript:@"ExtendedData"];
  v4 = sub_1005ADE88(a1, v3, &v6, 110, *(a1 + 328), 1);
  if (v4)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A82C();
  }

  return v4;
}

uint64_t sub_100726F50(uint64_t a1, void *a2)
{
  v4[0] = xmmword_1008C5261;
  v4[1] = algn_1008C5271;
  v5 = -1073573632;
  *(a1 + 336) = a1;
  *(a1 + 344) = -14;
  v2 = sub_1005ADE88(a1, a2, v4, 36, 242, 2);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A868();
  }

  return v2;
}

uint64_t sub_100727050(uint64_t a1, void *a2)
{
  v4[0] = xmmword_1008C5285;
  *(v4 + 11) = *(&xmmword_1008C5285 + 11);
  *(a1 + 352) = a1;
  *(a1 + 360) = -13;
  v2 = sub_1005ADE88(a1, a2, v4, 27, 243, 3);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A8A4();
  }

  return v2;
}

uint64_t sub_10072717C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 178 && a1[8] == 240)
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FW update detected; invalidating SDP cache", v12, 2u);
    }

    (*(**(*a1 + 8) + 24))(*(*a1 + 8));
  }

  return (*(**a1 + 120))(*a1, a2, a3, a4, a5, a1[8]);
}

void sub_100727288(uint64_t a1)
{
  sub_1005ADBAC(a1);

  operator delete();
}

uint64_t sub_1007272C0(uint64_t a1)
{
  *a1 = off_100B0AA28;
  *(a1 + 8) = off_100B0AAE8;
  *(a1 + 16) = &off_100B0AB18;
  *(a1 + 24) = off_100B0AB30;
  *(a1 + 32) = off_100B0AB90;
  *(a1 + 40) = off_100B0ABC0;
  *(a1 + 49) = 0;
  sub_100044BBC((a1 + 64));
  *(a1 + 128) = 0;
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  *(a1 + 144) = 0;
  *(a1 + 16920) = 0u;
  *(a1 + 16912) = a1 + 16920;
  *(a1 + 16936) = a1 + 16936;
  *(a1 + 16944) = a1 + 16936;
  *(a1 + 16952) = 0;
  *(a1 + 16960) = 0;
  *(a1 + 16962) = 0;
  *(a1 + 16976) = 0u;
  *(a1 + 16968) = a1 + 16976;
  *(a1 + 16994) = 7;
  *(a1 + 17000) = 3600;
  *(a1 + 17008) = 0;
  *(a1 + 17024) = 0;
  *(a1 + 17032) = 0;
  *(a1 + 17080) = 0;
  *(a1 + 17064) = 0u;
  *(a1 + 17053) = 0;
  *(a1 + 17090) = 0u;
  *(a1 + 17040) = 0u;
  *(a1 + 17104) = 0;
  *(a1 + 17112) = a1 + 17112;
  *(a1 + 17120) = a1 + 17112;
  *(a1 + 17128) = 0;
  *(a1 + 17160) = 0;
  *(a1 + 17164) = vdup_n_s32(0x12Cu);
  *(a1 + 17172) = 0;
  *(a1 + 56) = sub_100007EE8(v2, v3);
  bzero((a1 + 152), 0x4178uLL);
  *(a1 + 17040) = 0;
  *(a1 + 17048) = 0;
  *(a1 + 17009) = 0;
  *(a1 + 17017) = 0;
  return a1;
}

void sub_1007274B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10072F914(v5);
  sub_1000161FC(va);

  sub_10000CEDC(v3 + 16968, *(v3 + 16976));
  sub_100028EB4(v4);
  sub_10008667C(v3 + 16912, *(v3 + 16920));
  sub_10007A068(v3 + 64);
  _Unwind_Resume(a1);
}

void sub_100727524(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_10086A8E0();
  }

  sub_1006D6828(off_100B512F0 + 192, a1);
  if (qword_100B50AA0 != -1)
  {
    sub_10086A8F4();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  if (qword_100B50910 != -1)
  {
    sub_10086A908();
  }

  sub_1005BB5D4(off_100B50908, a1 + 24);
  v4 = sub_1000154A8(v2, v3);
  v5 = (*(*v4 + 128))(v4, a1 + 40);
  if ((*(sub_10000C7D0(v5, v6) + 160) & 1) == 0)
  {
    v7 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using a single advertising instance", buf, 2u);
    }

    *(a1 + 144) = 1;
  }

  v124 = 0;
  v8 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "EnableBackgroundExtendedAdvertising");
  v9 = (*(*v8 + 88))(v8, buf, __p, &v124);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = a1 + 0x4000;
  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_37;
    }
  }

  else if (!v9)
  {
    goto LABEL_37;
  }

  v11 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: Enabled Background advertising with extended advertising", buf, 2u);
  }

  *(a1 + 16962) = v124 != 0;
  v121 = 0;
  v12 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "MaxAdvertisingBackgroundSessions");
  v13 = (*(*v12 + 88))(v12, buf, __p, &v121);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v13)
    {
      goto LABEL_28;
    }
  }

  else if (!v13)
  {
    goto LABEL_28;
  }

  v14 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v121;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: Overriding max background advertising sessions to %d", buf, 8u);
  }

  *(a1 + 16994) = v121;
LABEL_28:
  v120 = 0;
  v15 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "MaxBackgroundAdvertisingTimeForSession");
  v16 = (*(*v15 + 88))(v15, buf, __p, &v120);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else if (!v16)
  {
    goto LABEL_37;
  }

  v17 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v120 / 1000;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Warning: Overriding max background advertising time for session to %lld seconds", buf, 0xCu);
  }

  *(a1 + 17000) = v120;
  *(a1 + 17008) = 1;
LABEL_37:
  v121 = 0;
  v18 = sub_10000E92C();
  sub_100007E30(buf, "ADVDEBUG");
  sub_100007E30(__p, "FakeBusyErrorOnADVStartCount");
  v19 = (*(*v18 + 88))(v18, buf, __p, &v121);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_46;
    }
  }

  else if (!v19)
  {
    goto LABEL_46;
  }

  v20 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v121;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Enabling fake OI_BUSY_FAIL on ADV start every %d start attempts", buf, 8u);
  }

  *(a1 + 17058) = v121;
LABEL_46:
  v21 = sub_10000E92C();
  sub_100007E30(buf, "ADVDEBUG");
  sub_100007E30(__p, "FakeADVUnsettledStateCount");
  v22 = (*(*v21 + 88))(v21, buf, __p, &v121);
  v24 = v22;
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v24)
    {
      goto LABEL_55;
    }
  }

  else if (!v24)
  {
    goto LABEL_55;
  }

  v25 = qword_100BCE9A8;
  v22 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    *buf = 67109120;
    *&buf[4] = v121;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: Enabling fake advertising unsettled state on ADV start every %d start attempts", buf, 8u);
  }

  *(a1 + 17056) = v121;
LABEL_55:
  v26 = sub_10000C798(v22, v23);
  if (((*(*v26 + 440))(v26) & 1) == 0)
  {
    v27 = sub_100017E6C();
    sub_100532818(v27 + 744, a1 + 16);
  }

  v28 = sub_100017E6C();
  (*(*v28 + 160))(v28, a1 + 48);
  v120 = 0;
  v29 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvertisementInterval");
  v30 = (*(*v29 + 88))(v29, buf, __p, &v120);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v30)
    {
      goto LABEL_67;
    }
  }

  else if (!v30)
  {
    goto LABEL_67;
  }

  v31 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "AdvertisementInterval defaults is now obsolete. Please use ConnectableAdvInt, NonConnectableAdvInt, ObjectDiscoveryAdvInt and ExtAdvInt instead", buf, 2u);
    v31 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10086A91C();
  }

LABEL_67:
  v32 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ConnectableAdvInt");
  v33 = (*(*v32 + 88))(v32, buf, __p, &v120);
  if (v120)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v34)
    {
      goto LABEL_79;
    }
  }

  else if (!v34)
  {
    goto LABEL_79;
  }

  v35 = qword_100BCE9A8;
  v36 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v37 = v120;
  if (v36)
  {
    *buf = 67109120;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for connectable advertisement interval", buf, 8u);
    v37 = v120;
  }

  *(v10 + 708) = v37;
LABEL_79:
  v38 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "SwupAdvInterval");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v120);
  if (v120)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v40)
    {
      goto LABEL_91;
    }
  }

  else if (!v40)
  {
    goto LABEL_91;
  }

  v41 = qword_100BCE9A8;
  v42 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v43 = v120;
  if (v42)
  {
    *buf = 67109120;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for all SWUP advertisement interval", buf, 8u);
    v43 = v120;
  }

  *(v10 + 706) = v43;
LABEL_91:
  v44 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "NonConnectableAdvInt");
  v45 = (*(*v44 + 88))(v44, buf, __p, &v120);
  if (v120)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v46)
    {
      goto LABEL_103;
    }
  }

  else if (!v46)
  {
    goto LABEL_103;
  }

  v47 = qword_100BCE9A8;
  v48 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v49 = v120;
  if (v48)
  {
    *buf = 67109120;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for non connectable advertisement interval", buf, 8u);
    v49 = v120;
  }

  *(v10 + 710) = v49;
LABEL_103:
  v50 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "NonConnectableSecondaryAdvInt");
  v51 = (*(*v50 + 88))(v50, buf, __p, &v120);
  if (v120)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v52)
    {
      goto LABEL_115;
    }
  }

  else if (!v52)
  {
    goto LABEL_115;
  }

  v53 = qword_100BCE9A8;
  v54 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v55 = v120;
  if (v54)
  {
    *buf = 67109120;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for non connectable secondary advertisement interval", buf, 8u);
    v55 = v120;
  }

  *(v10 + 712) = v55;
LABEL_115:
  v56 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ObjectDiscoveryAdvInt");
  v57 = (*(*v56 + 88))(v56, buf, __p, &v120);
  if (v120)
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v58)
    {
      goto LABEL_131;
    }
  }

  else if (!v58)
  {
    goto LABEL_131;
  }

  v59 = v120;
  v60 = qword_100BCE9A8;
  if (v120 <= 289)
  {
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v59;
      *&buf[8] = 1024;
      *&buf[10] = 290;
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Cannot advertise with this interval (%d) for Object Discovery advertisement, setting this to %d", buf, 0xEu);
      v60 = qword_100BCE9A8;
    }

    v59 = 290;
    v120 = 290;
  }

  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v59;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for Object Discovery advertisement interval", buf, 8u);
    LOWORD(v59) = v120;
  }

  *(v10 + 714) = v59;
LABEL_131:
  v61 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ExtAdvInt");
  v62 = (*(*v61 + 88))(v61, buf, __p, &v120);
  if (v120)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v63)
    {
      goto LABEL_143;
    }
  }

  else if (!v63)
  {
    goto LABEL_143;
  }

  v64 = qword_100BCE9A8;
  v65 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v66 = v120;
  if (v65)
  {
    *buf = 67109120;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for Extended advertisement interval", buf, 8u);
    v66 = v120;
  }

  *(v10 + 716) = v66;
LABEL_143:
  v67 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ContactAdvInt");
  v68 = (*(*v67 + 88))(v67, buf, __p, &v120);
  if (v120)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v69)
    {
      goto LABEL_155;
    }
  }

  else if (!v69)
  {
    goto LABEL_155;
  }

  v70 = qword_100BCE9A8;
  v71 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v72 = v120;
  if (v71)
  {
    *buf = 67109120;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for Contact advertisement interval", buf, 8u);
    v72 = v120;
  }

  *(v10 + 718) = v72;
LABEL_155:
  v119 = 0;
  v73 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsInstance1");
  v74 = (*(*v73 + 88))(v73, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v75 = v119;
  if (!v74)
  {
    v75 = 0;
  }

  *(v10 + 752) = v75;
  v76 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsEnable1");
  v77 = (*(*v76 + 88))(v76, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v78 = v119;
  if (!v77)
  {
    v78 = 1;
  }

  *(v10 + 753) = v78;
  v79 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsReset1");
  v80 = (*(*v79 + 88))(v79, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v81 = v119;
  if (!v80)
  {
    v81 = 1;
  }

  *(v10 + 754) = v81;
  v82 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsPeriod1");
  v83 = (*(*v82 + 88))(v82, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v84 = v119;
  if (!v83)
  {
    v84 = 60;
  }

  *(v10 + 756) = v84;
  v85 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsCanWakeUpAP1");
  v86 = (*(*v85 + 88))(v85, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (v86)
    {
      goto LABEL_183;
    }

LABEL_185:
    *(v10 + 760) = 0;
    if (((v83 | v80 | v77 | v74) & 1) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_186;
  }

  if (!v86)
  {
    goto LABEL_185;
  }

LABEL_183:
  v86 = v119;
  *(v10 + 760) = v119;
LABEL_186:
  v87 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v88 = *(v10 + 752);
    if (*(v10 + 753))
    {
      v89 = "Y";
    }

    else
    {
      v89 = "N";
    }

    if (*(v10 + 754))
    {
      v90 = "Y";
    }

    else
    {
      v90 = "N";
    }

    v91 = *(v10 + 756);
    *buf = 67110146;
    *&buf[4] = v88;
    *&buf[8] = 2080;
    *&buf[10] = v89;
    v126 = 2080;
    v127 = v90;
    v128 = 1024;
    v129 = v91;
    v130 = 1024;
    v131 = v86;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Enabling Adv Stats for instance %d enable %s reset %s period %d (secs) canWakeUpAP %d", buf, 0x28u);
  }

LABEL_194:
  v92 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsInstance2");
  v93 = (*(*v92 + 88))(v92, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v94 = v119;
  if (!v93)
  {
    v94 = 1;
  }

  *(v10 + 764) = v94;
  v95 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsEnable2");
  v96 = (*(*v95 + 88))(v95, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v97 = v119;
  if (!v96)
  {
    v97 = 1;
  }

  *(v10 + 765) = v97;
  v98 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsReset2");
  v99 = (*(*v98 + 88))(v98, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v100 = v119;
  if (!v99)
  {
    v100 = 1;
  }

  *(v10 + 766) = v100;
  v101 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsPeriod2");
  v102 = (*(*v101 + 88))(v101, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v103 = v119;
  if (!v102)
  {
    v103 = 60;
  }

  *(v10 + 768) = v103;
  v104 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsCanWakeUpAP2");
  v105 = (*(*v104 + 88))(v104, buf, __p, &v119);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (v105)
    {
      goto LABEL_222;
    }

LABEL_224:
    *(v10 + 772) = 0;
    if (((v102 | v99 | v96 | v93) & 1) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_225;
  }

  if (!v105)
  {
    goto LABEL_224;
  }

LABEL_222:
  v105 = v119;
  *(v10 + 772) = v119;
LABEL_225:
  v106 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v107 = *(v10 + 764);
    if (*(v10 + 765))
    {
      v108 = "Y";
    }

    else
    {
      v108 = "N";
    }

    if (*(v10 + 766))
    {
      v109 = "Y";
    }

    else
    {
      v109 = "N";
    }

    v110 = *(v10 + 768);
    *buf = 67110146;
    *&buf[4] = v107;
    *&buf[8] = 2080;
    *&buf[10] = v108;
    v126 = 2080;
    v127 = v109;
    v128 = 1024;
    v129 = v110;
    v130 = 1024;
    v131 = v105;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Enabling Adv Stats for instance %d enable %s reset %s period %d (secs) canWakeUpAP %d", buf, 0x28u);
  }

LABEL_233:
  v111 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "HoldStablePrivateAddressThreshold");
  v112 = (*(*v111 + 128))(v111, buf, __p, v10 + 780);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v112)
    {
      goto LABEL_241;
    }
  }

  else if (!v112)
  {
    goto LABEL_241;
  }

  v113 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v114 = *(v10 + 780);
    *buf = 67109120;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Warning: HoldStablePrivateAddressThreshold overridden to %u", buf, 8u);
  }

LABEL_241:
  v115 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "LeExtendStablePrivateAddressInterval");
  v116 = (*(*v115 + 128))(v115, buf, __p, v10 + 784);
  if (v123 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
    if (!v116)
    {
      return;
    }
  }

  else if (!v116)
  {
    return;
  }

  v117 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v118 = *(v10 + 784);
    *buf = 67109120;
    *&buf[4] = v118;
    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Warning: LeExtendStablePrivateAddressInterval overriden to %u", buf, 8u);
  }
}

void sub_100728C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100728D18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  result = (*(*v3 + 3920))(v3);
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    if (v7 >= v5)
    {
      break;
    }

    v9 = v8;
    v10 = (a1 + 17136 + 12 * v6);
    if (v10[1])
    {
      v11 = qword_100BCE9A8;
      v12 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        v14 = *v10;
        if (v10[2])
        {
          v15 = "Y";
        }

        else
        {
          v15 = "N";
        }

        v16 = *(v10 + 1);
        if (v10[8])
        {
          v17 = "Y";
        }

        else
        {
          v17 = "N";
        }

        *buf = 67110402;
        v20 = v7;
        v21 = 1024;
        v22 = v14;
        v23 = 2080;
        v24 = "Y";
        v25 = 2080;
        v26 = v15;
        v27 = 1024;
        v28 = v16;
        v29 = 2080;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Start %dth Adv Stats for instance %d enable %s reset %s period %d (secs) canWakeUpAP %s", buf, 0x32u);
      }

      v18 = sub_10000C7D0(v12, v13);
      result = (*(*v18 + 1904))(v18, *v10, v10[1], v10[2], *(v10 + 1), v10[8]);
      ++v7;
      *(a1 + 17160) = 1;
    }

    v8 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  return result;
}

_BYTE *sub_100728F08(uint64_t a1)
{
  v31 = 0;
  sub_1000216B4(&v31);
  v2 = sub_1002D359C();
  if (v2)
  {
    if (*(a1 + 17058))
    {
      sub_1002B42F0(*(a1 + 17058));
    }

    v4 = sub_10000C798(v2, v3);
    v5 = (*(*v4 + 520))(v4);
    *(a1 + 16961) = v5;
    *(a1 + 16962) &= v5;
    v6 = sub_10000E92C();
    *(a1 + 17060) = (*(*v6 + 808))(v6, a1 + 17064);
    sub_10008E164(a1, 0);
    v9 = sub_10000C798(v7, v8);
    v10 = (*(*v9 + 440))(v9);
    *(a1 + 17032) = 0;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    if (sub_1002D0EB0(v11, 1, (*(a1 + 144) & 0xFFFFFFFD) == 0, sub_10072926C) && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086A958();
    }

    *(a1 + 17017) = 0;
    *(a1 + 17009) = 0;
    v12 = *(a1 + 16961);
    v13 = qword_100BCE9A8;
    v14 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
    if (v12 == 1)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skip Reading Legacy controller LE Advertising TX Power, will wait.", buf, 2u);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reading Legacy controller LE Advertising TX Power", buf, 2u);
      }

      sub_10024D0E4(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    v22 = sub_100017E6C();
    sub_1003128B0(v22 + 384, a1 + 32);
    *(a1 + 17033) = 0;
    v23 = sub_1002D300C(sub_100729300, sub_1007293BC);
    v25 = v23;
    if (v23)
    {
      v23 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR);
      if (v23)
      {
        sub_10086A9C0();
      }
    }

    v26 = sub_10000C798(v23, v24);
    v27 = (*(*v26 + 992))(v26);
    v28 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = "disabled";
      if (v27)
      {
        v29 = "enabled";
      }

      *buf = 136315138;
      v33 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Secondary non-connectable advertising instance is: %s", buf, 0xCu);
    }

    sub_1002D224C(v27);
    if (v25)
    {
      sub_1000D660C();
    }
  }

  return sub_10002249C(&v31);
}

void sub_10072926C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = sub_100007EE8(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10072D204;
  v7[3] = &unk_100AF2A50;
  v8 = v5;
  v7[4] = a2;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

void sub_100729300(int a1, int a2)
{
  v4 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109376;
    v5[1] = a2;
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "periodicAdvStartedCb advHandle=%d, status=%d", v5, 0xEu);
  }
}

void sub_1007293BC(int a1, int a2)
{
  v4 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109376;
    v5[1] = a2;
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "periodicAdvStoppedCb advHandle=%d, status=%d", v5, 0xEu);
  }
}

void sub_100729480(uint64_t a1)
{
  v1 = a1 + 0x4000;
  sub_10008E164(a1, 0);
  *(v1 + 648) = 0;
  *(v1 + 776) = 0;
}

void sub_1007294B0(uint64_t a1)
{
  v1 = a1 + 0x4000;
  sub_10008E164(a1 - 8, 0);
  *(v1 + 640) = 0;
  *(v1 + 768) = 0;
}

void sub_1007294E4(uint64_t a1)
{
  if (!*(a1 + 17024))
  {
    sub_100088DD4(0, 1, 0);
  }
}

_BYTE *sub_1007295D8(uint64_t a1)
{
  v5 = 0;
  sub_1000216B4(&v5);
  if (sub_1002D359C())
  {
    if (sub_1002D0518(sub_1007296D0))
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10086AA28();
      }
    }

    else
    {
      v2 = *(a1 + 56);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100729830;
      v4[3] = &unk_100ADF8F8;
      v4[4] = a1;
      sub_10000CA94(v2, v4);
    }
  }

  return sub_10002249C(&v5);
}

void sub_1007296D0()
{
  *&v15[3] = 0;
  *v15 = 0;
  sub_1000841FC(v15);
  v14 = v15[1];
  v13 = v15[2];
  v12 = v15[3];
  v11 = v15[4];
  v0 = v15[5];
  v1 = v15[6];
  v2 = v15[0];
  sub_1002D2704(1, v15);
  v3 = v15[1];
  v4 = v15[2];
  v5 = v15[3];
  v6 = v15[4];
  v7 = v15[5];
  v8 = v15[6];
  v9 = v15[0];
  if (qword_100B50C68 != -1)
  {
    sub_10086AA90();
  }

  v10 = *(off_100B50C60 + 7);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100729A54;
  v16[3] = &unk_100AF2780;
  v16[4] = off_100B50C60;
  v16[5] = (v14 << 40) | (v13 << 32) | (v12 << 24) | (v11 << 16) | (v0 << 8) | v1 | (v2 << 48);
  v16[6] = (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8 | (v9 << 48);
  v16[7] = 0;
  sub_10000CA94(v10, v16);
}

uint64_t sub_100729830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, (v1 + 8));
  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  sub_1000690B8(&v14, (v1 + 2114));
  v2 = v14;
  if (v14 != v15)
  {
    do
    {
      if (*(v2[6] + 264) == 2)
      {
        v3 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removing EN ADV", &v12, 2u);
        }

        v4 = v2[4];
        sub_100069110(v1, v4);
        v12 = 0;
        v13[0] = 0;
        v13[1] = 0;
        sub_100097CBC(&v12, (v1 + 2121));
        v5 = v12;
        if (v12 != v13)
        {
          do
          {
            (*(*v5[4] + 8))(v5[4], v4, 116);
            v6 = v5[1];
            if (v6)
            {
              do
              {
                v7 = v6;
                v6 = *v6;
              }

              while (v6);
            }

            else
            {
              do
              {
                v7 = v5[2];
                v8 = *v7 == v5;
                v5 = v7;
              }

              while (!v8);
            }

            v5 = v7;
          }

          while (v7 != v13);
        }

        sub_10000CEDC(&v12, v13[0]);
      }

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v8 = *v10 == v2;
          v2 = v10;
        }

        while (!v8);
      }

      v2 = v10;
    }

    while (v10 != v15);
  }

  sub_10008667C(&v14, v15[0]);
  return sub_1000088CC(v16);
}

void sub_100729A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100729A54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, v2 + 64);
  if (*(v2 + 17032) == 1)
  {
    v16 = 0;
    v17[0] = 0;
    v17[1] = 0;
    sub_1000690B8(&v16, v2 + 16912);
    v3 = v16;
    if (v16 != v17)
    {
      do
      {
        if (*(v3[6] + 307) == 1)
        {
          v4 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v3[4], &__p);
            v5 = v15 >= 0 ? &__p : __p;
            *buf = 136446210;
            v20 = v5;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notifying session %{public}s that advertising stopped due to address change", buf, 0xCu);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p);
            }
          }

          v6 = v3[4];
          sub_100069110(v2, v6);
          __p = 0;
          v14 = 0;
          v15 = 0;
          sub_100097CBC(&__p, v2 + 16968);
          v7 = __p;
          if (__p != &v14)
          {
            do
            {
              (*(*v7[4] + 8))(v7[4], v6, 116);
              v8 = v7[1];
              if (v8)
              {
                do
                {
                  v9 = v8;
                  v8 = *v8;
                }

                while (v8);
              }

              else
              {
                do
                {
                  v9 = v7[2];
                  v10 = *v9 == v7;
                  v7 = v9;
                }

                while (!v10);
              }

              v7 = v9;
            }

            while (v9 != &v14);
          }

          sub_10000CEDC(&__p, v14);
        }

        v11 = v3[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v3[2];
            v10 = *v12 == v3;
            v3 = v12;
          }

          while (!v10);
        }

        v3 = v12;
      }

      while (v12 != v17);
    }

    sub_10008667C(&v16, v17[0]);
  }

  *(v2 + 17032) = 0;
  sub_100729D74(v2, *(a1 + 40), 0);
}

void sub_100729D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100729D74(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4[1] = a2;
  v4[0] = a3;
  v4[2] = +[NSDate now];
  sub_100729E70(a1 + 17112, v4);
}

uint64_t sub_100729E18()
{
  if (qword_100B50C68 != -1)
  {
    sub_10086ABE0();
  }

  v0 = off_100B50C60;

  return sub_100086C20(v0);
}

void sub_100729EE0(id **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  *(v3 + 8) = v2;
  *v2 = v3;
  a1[2] = (a1[2] - 1);

  operator delete(v1);
}

void sub_100729F34(uint64_t a1, int *a2)
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v4 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    sub_10004D9B0(*(a2 + 1));
    if (v12 >= 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11;
    }

    v7 = [v3 stringFromDate:*(a2 + 2)];
    sub_10072A114(*a2, __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 67109891;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2081;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ADV Instance:%d address:%s time:%@ (%{private}s)", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }
  }
}

void sub_10072A0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10072A128(uint64_t a1)
{
  v2 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeBroadcaster::stackWillStop enter", buf, 2u);
  }

  v15 = 0;
  sub_1000216B4(&v15);
  if (sub_1002D359C())
  {
    sub_100097D14(a1, 0);
    sub_100097D14(a1, 1);
    v3 = sub_100017E6C();
    sub_10036F1AC(v3 + 384, a1 + 32);
    sub_1002D19A8();
    sub_100022214(&v15);
    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, a1 + 64);
    sub_10008E164(a1, 0);
    bzero((a1 + 152), 0x4178uLL);
    *buf = 0;
    v13[0] = 0;
    v13[1] = 0;
    sub_100097CBC(buf, a1 + 16968);
    *(a1 + 49) = 0;
    sub_10000801C(v14);
    v4 = *buf;
    if (*buf != v13)
    {
      do
      {
        (**v4[4])(v4[4], 0);
        v5 = v4[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        v4 = v6;
      }

      while (v6 != v13);
    }

    sub_100099094(a1);
    sub_1000C10E8(a1, v8);
    v9 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LeBroadcaster::stackWillStop exit", v11, 2u);
    }

    sub_10000CEDC(buf, v13[0]);
    sub_1000088CC(v14);
  }

  return sub_10002249C(&v15);
}

void sub_10072A310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  sub_10002249C((v11 - 33));
  _Unwind_Resume(a1);
}

uint64_t sub_10072A35C(uint64_t a1, unint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 64);
  sub_1000452CC(a1 + 16968, &v5, &v5);
  return sub_1000088CC(v4);
}

void sub_10072A3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A3C8(uint64_t a1, unint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 64);
  sub_100075DC4((a1 + 16968), &v5);
  return sub_1000088CC(v4);
}

void sub_10072A41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(v5 + 440);
  v7 = *(v5 + 480);
  v9 = v7;
  v10 = 0;
  if (v6 >= 1114112)
  {
    if ((v6 - 2147418126) < 4)
    {
      if (v7)
      {
        v27 = [v7 allKeys];
        if ([v27 count])
        {
          v28 = [v9 objectForKey:@"INTERNAL_TEST_SERVICE_DATA"];

          if (v28)
          {
            v20 = objc_opt_new();
            v29 = [v9 objectForKeyedSubscript:@"INTERNAL_TEST_SERVICE_DATA"];
            [v20 appendData:v29];

            if ([v20 length] < 0x1C)
            {
              v30 = *(a3 + 8);
              v81 = xmmword_1008A4F98;
              v82 = 0;
              sub_10000D03C(buf, &v81);
              v31 = v20;
              sub_10000C704(&v81, [v20 bytes], objc_msgSend(v20, "length"));
              v76 = buf;
              v32 = sub_100099408((v30 + 112), buf, &unk_1008A9BD0, &v76);
              sub_10000AE20(v32 + 56, &v81);
              *&v81 = &off_100AE0A78;
              if (*(&v81 + 1))
              {
                sub_10000C808(*(&v81 + 1));
              }

              v33 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                v34 = sub_10002D1A4(v6);
                *buf = 136315394;
                v78 = v34;
                v79 = 2112;
                v80 = v20;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "usecase %s service data:%@", buf, 0x16u);
              }

              goto LABEL_17;
            }

            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
            {
              [v20 length];
              sub_10086AFE8(v6);
            }

            goto LABEL_72;
          }
        }

        else
        {
        }
      }

      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
LABEL_80:
        sub_10086B03C(v9, v6);
      }

LABEL_86:
      v10 = 3;
      goto LABEL_87;
    }

    if (v6 == 1114112)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      if (Int64Ranged)
      {
        CFDataGetTypeID();
        v58 = CFDictionaryGetTypedValue();
        if ([v58 length] < 0xA)
        {
          v59 = objc_opt_new();
          [v59 appendBytes:&Int64Ranged length:1];
          if ([v58 length])
          {
            [v59 appendData:v58];
          }

          v60 = *(a3 + 8);
          v81 = xmmword_1008A4DF0;
          v82 = 0;
          sub_10000D03C(buf, &v81);
          v61 = v59;
          sub_10000C704(&v81, [v59 bytes], objc_msgSend(v59, "length"));
          v76 = buf;
          v62 = sub_100099408((v60 + 112), buf, &unk_1008A9BD0, &v76);
          sub_10000AE20(v62 + 56, &v81);
          *&v81 = &off_100AE0A78;
          if (*(&v81 + 1))
          {
            sub_10000C808(*(&v81 + 1));
          }

          v63 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v78 = "ProximityServiceDeviceSetup";
            v79 = 2112;
            v80 = v59;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s builder output:%@", buf, 0x16u);
          }

          goto LABEL_59;
        }

        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086AF10(buf, [v58 length]);
        }
      }

      else if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086AF68();
      }

      goto LABEL_86;
    }
  }

  else
  {
    if ((v6 - 983040) <= 7 && ((1 << v6) & 0xCF) != 0)
    {
      v12 = _os_feature_enabled_impl();
      if ((v12 & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086B0C4(v6);
        }

        goto LABEL_86;
      }

      v14 = sub_10000C798(v12, v13);
      v15 = (*(*v14 + 384))(v14);
      if ((v15 & 1) == 0)
      {
        v17 = sub_10000C798(v15, v16);
        if (((*(*v17 + 408))(v17) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
          {
            sub_10086B144(v6);
          }

          goto LABEL_86;
        }
      }

      if (v9)
      {
        v18 = [v9 allKeys];
        if ([v18 count])
        {
          v19 = [v9 objectForKey:@"SOS_BEACON_SERVICE_DATA"];

          if (v19)
          {
            v20 = objc_opt_new();
            v21 = [v9 objectForKeyedSubscript:@"SOS_BEACON_SERVICE_DATA"];
            [v20 appendData:v21];

            if ([v20 length] < 0x1C)
            {
              v22 = *(a3 + 8);
              v81 = xmmword_1008A4F84;
              v82 = 0;
              sub_10000D03C(buf, &v81);
              v23 = v20;
              sub_10000C704(&v81, [v20 bytes], objc_msgSend(v20, "length"));
              v76 = buf;
              v24 = sub_100099408((v22 + 112), buf, &unk_1008A9BD0, &v76);
              sub_10000AE20(v24 + 56, &v81);
              *&v81 = &off_100AE0A78;
              if (*(&v81 + 1))
              {
                sub_10000C808(*(&v81 + 1));
              }

              v25 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                v26 = sub_10002D1A4(v6);
                *buf = 136315394;
                v78 = v26;
                v79 = 2112;
                v80 = v20;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "usecase %s service data:%@", buf, 0x16u);
              }

LABEL_17:

LABEL_59:
              v10 = 0;
              goto LABEL_87;
            }

            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
            {
              [v20 length];
              sub_10086AFE8(v6);
            }

LABEL_72:

            goto LABEL_86;
          }
        }

        else
        {
        }
      }

      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      goto LABEL_86;
    }

    if ((v6 - 851968) < 2)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086B1C4(v6);
        }

        goto LABEL_86;
      }

      v35 = sub_10000C798(v7, v8);
      v36 = (*(*v35 + 392))(v35);
      if ((v36 & 1) == 0)
      {
        v38 = sub_10000C798(v36, v37);
        if (((*(*v38 + 384))(v38) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
          {
            sub_10086B244(v6);
          }

          goto LABEL_86;
        }
      }

      if (v9)
      {
        v39 = [v9 allKeys];
        if ([v39 count] && (objc_msgSend(v9, "objectForKey:", @"DCT_USECASE_SESSIONID"), (v40 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v41 = [v9 objectForKey:@"DCT_USECASE_PSM"];

          if (v41)
          {
            v42 = objc_opt_new();
            v74 = 32;
            [v42 appendBytes:&v74 length:1];
            v73 = 97;
            [v42 appendBytes:&v73 length:1];
            v43 = [v9 objectForKeyedSubscript:@"DCT_USECASE_SESSIONID"];
            [v42 appendData:v43];

            v72 = 18;
            v71 = 2;
            [v42 appendBytes:&v72 length:1];
            v44 = [v42 appendBytes:&v71 length:1];
            v70 = 19;
            v69 = 0;
            v46 = sub_10000C798(v44, v45);
            v47 = (*(*v46 + 392))(v46);
            if (v47 || (v49 = sub_10000C798(v47, v48), (*(*v49 + 384))(v49)))
            {
              v69 = 7;
            }

            [v42 appendBytes:&v70 length:1];
            [v42 appendBytes:&v69 length:1];
            v68 = 36;
            [v42 appendBytes:&v68 length:1];
            v50 = [v9 objectForKey:@"DCT_USECASE_PSM"];
            v51 = [v50 intValue];

            v67 = v51;
            [v42 appendBytes:&v67 length:2];
            v66 = 22;
            if (v6 == 851968)
            {
              v52 = 1;
            }

            else
            {
              v52 = 2;
            }

            v65 = v52;
            [v42 appendBytes:&v66 length:1];
            [v42 appendBytes:&v65 length:1];
            v53 = *(a3 + 8);
            v81 = xmmword_1008A4F70;
            v82 = 0;
            sub_10000D03C(buf, &v81);
            v54 = v42;
            sub_10000C704(&v81, [v42 bytes], objc_msgSend(v42, "length"));
            v76 = buf;
            v55 = sub_100099408((v53 + 112), buf, &unk_1008A9BD0, &v76);
            sub_10000AE20(v55 + 56, &v81);
            *&v81 = &off_100AE0A78;
            if (*(&v81 + 1))
            {
              sub_10000C808(*(&v81 + 1));
            }

            v56 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
            {
              v57 = sub_10002D1A4(v6);
              *buf = 136315394;
              v78 = v57;
              v79 = 2112;
              v80 = v42;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "DCT protocol usecase %s builder output:%@", buf, 0x16u);
            }

            *(*(a3 + 8) + 307) = 1;

            goto LABEL_59;
          }
        }

        else
        {
        }
      }

      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      goto LABEL_86;
    }
  }

LABEL_87:

  return v10;
}

void sub_10072B234(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  sub_100097CBC(&v7, a1 + 16968);
  v3 = v7;
  if (v7 != v8)
  {
    do
    {
      (*(*v3[4] + 24))(v3[4], a2);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v8);
  }

  sub_10000CEDC(&v7, v8[0]);
}

uint64_t sub_10072B31C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 64);
  for (i = *(a1 + 16944); ; i = *(i + 8))
  {
    if (i == a1 + 16936)
    {
      if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_100018384(a2, v6);
        sub_10086B53C();
      }

      operator new();
    }

    if (*(i + 16) == a2)
    {
      break;
    }
  }

  return sub_1000088CC(v7);
}

void sub_10072B730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10072B778(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10072B844;
  v7[3] = &unk_100B0AC00;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

uint64_t sub_10072B844(uint64_t a1)
{
  sub_1002D28F4(*(*(a1 + 40) + 17164), *(*(a1 + 40) + 17168));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10072B8A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = sub_100007EE8(v2, v3);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10072B964;
  v6[3] = &unk_100B0AC28;
  v5 = v2;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10072B964(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:7];
  v15 = 0;
  if (sub_1002D2C80(&v15))
  {
    [NSNumber numberWithUnsignedLong:0];
  }

  else
  {
    [NSNumber numberWithUnsignedLong:v15];
  }
  v3 = ;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  sub_1002D2CD0(&v14 + 1, &v14, &v13, &v12, &v11, &v10);
  v4 = [NSNumber numberWithBool:HIBYTE(v14)];
  [v2 setObject:v4 forKeyedSubscript:@"kCBMsgArgHoldStableAddressState"];

  v5 = [NSNumber numberWithBool:v14];
  [v2 setObject:v5 forKeyedSubscript:@"kCBMsgArgOverrideLocalAddressState"];

  v6 = [NSNumber numberWithBool:v13];
  [v2 setObject:v6 forKeyedSubscript:@"kCBMsgArgPrivateModeState"];

  v7 = [NSNumber numberWithUnsignedShort:v12];
  [v2 setObject:v7 forKeyedSubscript:@"kCBMsgArgHoldStableAddressCount"];

  v8 = [NSNumber numberWithUnsignedInt:v11];
  [v2 setObject:v8 forKeyedSubscript:@"kCBMsgArgLePrivateAddressTimer"];

  v9 = [NSNumber numberWithUnsignedInt:v10];
  [v2 setObject:v9 forKeyedSubscript:@"kCBMsgArgLeHoldStablePrivateAddressTimer"];

  [v2 setObject:v3 forKeyedSubscript:@"kCBMsgArgTimeoutInMS"];
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10072BBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v46, 0x67CuLL);
  v43[0] = 0;
  v43[1] = 0;
  sub_100007F88(v43, a1 + 64);
  v42 = 0;
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
  *v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  sub_100007AD0(&v27);
  v6 = sub_100007774(&v28, "Received 'start advertising' request from session ", 51);
  sub_100018384(a2, &__p);
  if ((v26 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p;
  }

  if ((v26 & 0x80u) == 0)
  {
    v8 = v26;
  }

  else
  {
    v8 = v25;
  }

  v9 = sub_100007774(v6, p_p, v8);
  sub_100007774(v9, ", with ", 8);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v10 = sub_100007774(&v28, "advHandle ", 10);
  LOBYTE(__p) = *a3;
  v11 = sub_100007774(v10, &__p, 1);
  sub_100007774(v11, ", ", 2);
  sub_100007774(&v28, "interval ", 9);
  v12 = std::ostream::operator<<();
  sub_100007774(v12, ", ", 2);
  v13 = sub_10000C5E0(a3 + 48);
  v14 = sub_10000C5F8(a3 + 48);
  sub_100007774(&v28, "dataLen ", 8);
  v15 = std::ostream::operator<<();
  sub_100007774(v15, ", ", 2);
  v16 = sub_100007774(&v28, "data ", 5);
  v17 = strlen(v14);
  v18 = sub_100007774(v16, v14, v17);
  sub_100007774(v18, ", ", 2);
  v19 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    std::stringbuf::str();
    v20 = (v26 & 0x80u) == 0 ? &__p : __p;
    *buf = 136446210;
    v45 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }

  bzero(v46, 0x67CuLL);
  v46[0] = *a3;
  v47 = *(a3 + 2);
  v48 = 64;
  if (v13 - 1 <= 0x671)
  {
    memcpy(v50, v14, v13);
    v50[825] = 0;
    v49 = v13;
  }

  LOBYTE(__p) = 0;
  sub_1000216B4(&__p);
  v21 = sub_1002D30A0(v46);
  sub_100022214(&__p);
  if (v21 && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B76C();
  }

  sub_10002249C(&__p);
  *&v28 = v22;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_1000088CC(v43);
  return v21;
}

void sub_10072C014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_1007FC91C(&a16);
  sub_1000088CC(&a52);
  _Unwind_Resume(a1);
}

uint64_t sub_10072C07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[0] = 0;
  v35[1] = 0;
  sub_100007F88(v35, a1 + 64);
  v34 = 0;
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
  *v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  sub_100007AD0(&v19);
  v5 = sub_100007774(&v20, "Received 'stop advertising' request from session ", 50);
  sub_100018384(a2, &__p);
  if ((v18 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p;
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17;
  }

  v8 = sub_100007774(v5, p_p, v7);
  sub_100007774(v8, ", with ", 8);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v9 = sub_100007774(&v20, "advHandle ", 10);
  LOBYTE(__p) = a3;
  v10 = sub_100007774(v9, &__p, 1);
  sub_100007774(v10, ". ", 2);
  v11 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    std::stringbuf::str();
    v12 = (v18 & 0x80u) == 0 ? &__p : __p;
    *buf = 136446210;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  LOBYTE(__p) = 0;
  sub_1000216B4(&__p);
  v13 = sub_1002D31E8(a3);
  sub_100022214(&__p);
  if (v13 && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B7D4();
  }

  sub_10002249C(&__p);
  *&v20 = v14;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_1000088CC(v35);
  return v13;
}

void sub_10072C3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_1007FC91C(&a16);
  sub_1000088CC(v16 - 96);
  _Unwind_Resume(a1);
}

BOOL sub_10072C438(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 64);
  v2 = *(a1 + 128) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10072C488@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 64);
  v6 = *(a1 + 16920);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 16920;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 16920 && *(v7 + 32) <= a2)
  {
    v12 = *(v7 + 48);
    *a3 = &off_100AE0AB8;
    a3[1] = v12;
    if (v12)
    {
      sub_10000C69C(v12);
    }
  }

  else
  {
LABEL_9:
    *a3 = &off_100AE0AB8;
    a3[1] = 0;
  }

  return sub_1000088CC(v13);
}

id sub_10072C574(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v15 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 mutableCopy];
    }

    else
    {
      v8 = +[NSMutableData data];
    }

    v10 = v8;
    v11 = [v8 length];
    v12 = [v7 length];
    v14 = [v7 length] + 1;
    if (((v11 + v12 + 2) & 0xE0) == 0)
    {
      [v10 appendBytes:&v14 length:1];
      [v10 appendBytes:&v15 length:1];
      [v10 appendData:v7];
    }

    v9 = [v10 copy];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

id sub_10072C6A8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    if ([v4 length] >= 0x20)
    {
LABEL_4:
      v6 = v4;
      goto LABEL_23;
    }

    v7 = [v4 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableData data];
  }

  v8 = v7;
  v9 = [v7 length];
  v10 = [v8 bytes];
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v10[v11];
      if (&v9[-v11] < v14)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086B83C();
        }

        goto LABEL_18;
      }

      v15 = v13 + 1;
      if (v10[(v13 + 1)] == 255)
      {
        break;
      }

      v13 = v14 + v15;
      if (v9 > (v14 + v15))
      {
        v11 = (v14 + v15);
        if (v12++ < 0x31)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v17 = (v14 + 1);
    if ([v8 length] < v17 + v13)
    {
      goto LABEL_18;
    }

    v25 = [v8 subdataWithRange:{v13, v17}];
    v20 = [NSMutableData dataWithData:v25];

    [v8 replaceBytesInRange:v13 withBytes:v17 length:{0, 0}];
  }

  else
  {
LABEL_18:
    v27 = 76;
    v18 = [NSData dataWithBytes:&v27 length:2];
    v19 = sub_10072C574(v18, 0, 255, v18);
    v20 = [v19 mutableCopy];
  }

  v21 = [v8 length];
  v22 = [v20 length];
  if (((v22 + v21 + [v5 length]) & 0xE0) != 0)
  {
    v23 = v4;
  }

  else
  {
    [v20 appendData:v5];
    v26 = [v20 length] - 1;
    [v20 replaceBytesInRange:0 withBytes:1 length:{&v26, 1}];
    [v8 appendData:v20];
    v23 = [v8 copy];
  }

  v6 = v23;

LABEL_23:

  return v6;
}

id sub_10072C9A0(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 mutableCopy];
    }

    else
    {
      v17 = 26;
      v10 = [NSData dataWithBytes:&v17 length:1];
      v11 = sub_10072C574(v10, 0, 1, v10);
      v8 = [v11 mutableCopy];
    }

    v12 = +[NSMutableData data];
    v16[0] = a3;
    v16[1] = [v7 length];
    [v12 appendBytes:v16 length:2];
    v13 = sub_10072C6A8([v12 appendData:v7], v8, v12);
    v14 = [v13 mutableCopy];

    v9 = [v14 copy];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

void sub_10072CB48(void **result, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10072FD14(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 20 * a2;
  }
}

void *sub_10072CB84(void *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10072FEC4(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_10072CC0C(id a1)
{
  v1 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B964(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v11 = 0;
  sub_1000216B4(&v11);
  if (!sub_100018C6C())
  {
    sub_1002D0B38();
    sub_100022214(&v11);
    v9 = sub_10000E92C();
    sub_100007E30(&v10, "updateAdvertisement busy with address change timeout");
    sub_100693260(v9, 4074, &v10, 1);
  }

  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B9D8();
  }

  sub_10002249C(&v11);
}

void sub_10072CCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C((v14 - 17));
  _Unwind_Resume(a1);
}

_BYTE *sub_10072CCFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086BA14(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v23 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(v21, "LE");
  sub_100007E30(__p, "CrashOnAdvertisingWatchdog");
  v11 = (*(*v10 + 72))(v10, v21, __p, &v23);
  v12 = v23;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v11 & v12;
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v13)
  {
    v16 = sub_10000E92C();
    sub_100007E30(v18, "updateAdvertisement in unsettled state timeout");
    sub_100693260(v16, 4075, v18, 1);
  }

  LOBYTE(v21[0]) = 0;
  sub_1000216B4(v21);
  if (sub_100018C6C())
  {
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086B9D8();
    }
  }

  else
  {
    sub_100022214(v21);
    v14 = *(v1 + 56);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10072CF08;
    v17[3] = &unk_100ADF8F8;
    v17[4] = v1;
    sub_10008E008(v14, 200, v17);
  }

  return sub_10002249C(v21);
}

void sub_10072CEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10072CF08(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10008E164(v1, 0);
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002D0B38();
  sub_10008D888(1);
  sub_100022214(&v3);
  sub_100086C20(v1);
  return sub_10002249C(&v3);
}

uint64_t sub_10072CFB4(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    return result;
  }

  v5 = result;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, result + 64);
  *(v5 + 16960) = a4;
  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *(v5 + 144) = v6;
  v19 = 0;
  sub_1000216B4(&v19);
  *(v5 + 16992) = sub_1002B2C34();
  sub_100022214(&v19);
  v7 = *(v5 + 16992);
  if (v7 >= 0x673)
  {
    v8 = qword_100BCE9A8;
    if (!os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_FAULT))
    {
LABEL_7:
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10086BC34(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      *(v5 + 16992) = 1650;
      goto LABEL_10;
    }

    *buf = 67109120;
    v22 = v7;
    _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "fControllerMaxExtendedAdvertisingPayloadSize=%d", buf, 8u);
    v7 = *(v5 + 16992);
    if (v7 >= 0x673)
    {
      v8 = qword_100BCE9A8;
      goto LABEL_7;
    }
  }

LABEL_10:
  *(v5 + 49) = 1;
  sub_10000801C(v20);
  v15 = *(v5 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10072D1F8;
  v18[3] = &unk_100ADF8F8;
  v18[4] = v5;
  sub_10000CA94(v15, v18);
  v16 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    if (sub_100096908())
    {
      v17 = sub_100096908();
    }

    else
    {
      v17 = 1;
    }

    *buf = 67109120;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stack supports %d advertising instances", buf, 8u);
  }

  sub_10002249C(&v19);
  return sub_1000088CC(v20);
}

void sub_10072D1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10072D204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50C68 != -1)
  {
    sub_10086ABE0();
  }

  v4 = off_100B50C60;
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);

  return sub_10072CFB4(v4, v5, a3, v6);
}

uint64_t sub_10072D25C(uint64_t a1, int a2, int a3, int a4)
{
  v7 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = a2;
    v11 = 1024;
    v12 = a3;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setAddressTypeForInstance instance:%d addrType:%d refreshRootKeys:%d", v10, 0x14u);
  }

  if (a2 != 1)
  {
    return 3;
  }

  if ((a3 & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  if (a4)
  {
    v8 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAddressTypeForInstance requires refresh of identity info", v10, 2u);
    }

    if (qword_100B508C0 != -1)
    {
      sub_10086BCA4();
    }

    if (sub_1007B661C(off_100B508B8))
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086BCCC();
      }

      return 148;
    }
  }

  LOBYTE(v10[0]) = 0;
  sub_1000216B4(v10);
  if (!sub_1002D2590(a3, 1))
  {
    sub_10002249C(v10);
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086BD34();
  }

  sub_10002249C(v10);
  return 147;
}

void sub_10072D438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072D454(uint64_t a1, unint64_t a2)
{
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_1002D1164(a2);
  if (v3 && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086BD9C();
  }

  sub_10002249C(&v5);
  return v3;
}

void sub_10072D4E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100007EE8(a1, a2);

  sub_10000CA94(v2, &stru_100B0AC68);
}

void sub_10072D514(id a1)
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_1002D260C();
  sub_10002249C(&v1);
}

void sub_10072D564()
{
  v0 = qword_100BCE9A8;
  v1 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO);
  if (v1)
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Stream state changed, re-evaluating scan params", v4, 2u);
  }

  v3 = sub_100007EE8(v1, v2);
  sub_10000CA94(v3, &stru_100B0AC88);
}

void sub_10072D5DC(id a1)
{
  if (qword_100B50C68 != -1)
  {
    sub_10086ABE0();
  }

  v2 = off_100B50C60;

  sub_100086C20(v2);
}

void sub_10072D630(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "POWER");
  sub_100007E30(__p, "ForceWakeADVConfig");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7AC2);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10072D6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10072D708(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v80 = v3;
  if (v3)
  {
    sub_10000C69C(v3);
    v3 = v80;
  }

  sub_1000987D4(v3, 2, __p);
  v4 = __p[0];
  v5 = __p[1];
  sub_1000987D4(v80, 4, __p);
  v7 = __p[0];
  v6 = __p[1];
  sub_1000987D4(v80, 16, __p);
  v8 = __p[0];
  v78 = __p[1];
  v9 = qword_100BCE9A8;
  v10 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v11 = v80;
  if (v10)
  {
    sub_100018384(*(a2 + 32), __p);
    if ((SBYTE7(v88) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (*(v80 + 12))
    {
      v13 = "";
    }

    else
    {
      v13 = "NON-";
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v84 = 2082;
    v85 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s %{public}sConnectable", buf, 0x16u);
    if (SBYTE7(v88) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v80;
  }

  if (*(v11 + 39) < 0)
  {
    sub_100008904(__p, *(v11 + 16), *(v11 + 24));
  }

  else
  {
    *__p = *(v11 + 16);
    *&v88 = *(v11 + 32);
  }

  if (SBYTE7(v88) < 0)
  {
    v14 = __p[1];
    operator delete(__p[0]);
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  else if (!BYTE7(v88))
  {
    goto LABEL_28;
  }

  v15 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v80 + 39) < 0)
    {
      sub_100008904(__p, *(v80 + 16), *(v80 + 24));
    }

    else
    {
      *__p = *(v80 + 16);
      *&v88 = *(v80 + 32);
    }

    v16 = __p;
    if (SBYTE7(v88) < 0)
    {
      v16 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:       Name: %s", buf, 0xCu);
    if (SBYTE7(v88) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_28:
  v17 = qword_100BCE9A8;
  v18 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v19 = v80;
  if (v18)
  {
    v20 = *(v80 + 264);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump:       instance:%d", __p, 8u);
    v19 = v80;
  }

  v21 = *(v19 + 256);
  if (v21)
  {
    v22 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_100063D0C(v21);
      LODWORD(__p[0]) = 138543362;
      *(__p + 4) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "statedump:       instanceAddress: %{public}@", __p, 0xCu);
    }
  }

  v79 = v7;
  v24 = v5 - v4;
  if (v5 != v4)
  {
    v25 = v4;
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    *v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v88, "      16-bit UUID(s): ", 22);
    if (0xCCCCCCCCCCCCCCCDLL * (v24 >> 2) <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 2);
    }

    v27 = v25;
    do
    {
      sub_10003B85C(v27, buf);
      if ((v86 & 0x80u) == 0)
      {
        v28 = buf;
      }

      else
      {
        LODWORD(v28) = *buf;
      }

      if ((v86 & 0x80u) == 0)
      {
        v29 = v86;
      }

      else
      {
        v29 = *&buf[8];
      }

      v30 = sub_100007774(&v88, v28, v29);
      sub_100007774(v30, " ", 1);
      if (v86 < 0)
      {
        operator delete(*buf);
      }

      v27 += 20;
      --v26;
    }

    while (v26);
    v31 = qword_100BCE9A8;
    v4 = v25;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v32 = (v86 & 0x80u) == 0 ? buf : *buf;
      *v81 = 136446210;
      *&v81[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v81, 0xCu);
      if (v86 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v88 = v33;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[1]);
    }

    std::locale::~locale(&v89);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  v34 = v6 - v79;
  if (v34)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    *v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v88, "      32-bit UUID(s): ", 22);
    if (0xCCCCCCCCCCCCCCCDLL * (v34 >> 2) <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 0xCCCCCCCCCCCCCCCDLL * (v34 >> 2);
    }

    v36 = v79;
    do
    {
      sub_10003B85C(v36, buf);
      if ((v86 & 0x80u) == 0)
      {
        v37 = buf;
      }

      else
      {
        LODWORD(v37) = *buf;
      }

      if ((v86 & 0x80u) == 0)
      {
        v38 = v86;
      }

      else
      {
        v38 = *&buf[8];
      }

      v39 = sub_100007774(&v88, v37, v38);
      sub_100007774(v39, " ", 1);
      if (v86 < 0)
      {
        operator delete(*buf);
      }

      v36 += 20;
      --v35;
    }

    while (v35);
    v40 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v41 = (v86 & 0x80u) == 0 ? buf : *buf;
      *v81 = 136446210;
      *&v81[4] = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v81, 0xCu);
      if (v86 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v88 = v42;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[1]);
    }

    std::locale::~locale(&v89);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  v43 = v78 - v8;
  if (v78 != v8)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    *v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v88, "      128-bit UUID(s): ", 23);
    if (0xCCCCCCCCCCCCCCCDLL * (v43 >> 2) <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xCCCCCCCCCCCCCCCDLL * (v43 >> 2);
    }

    v45 = v8;
    do
    {
      sub_10003B85C(v45, buf);
      if ((v86 & 0x80u) == 0)
      {
        v46 = buf;
      }

      else
      {
        LODWORD(v46) = *buf;
      }

      if ((v86 & 0x80u) == 0)
      {
        v47 = v86;
      }

      else
      {
        v47 = *&buf[8];
      }

      v48 = sub_100007774(&v88, v46, v47);
      sub_100007774(v48, " ", 1);
      if (v86 < 0)
      {
        operator delete(*buf);
      }

      v45 += 20;
      --v44;
    }

    while (v44);
    v49 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v50 = (v86 & 0x80u) == 0 ? buf : *buf;
      *v81 = 136446210;
      *&v81[4] = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v81, 0xCu);
      if (v86 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v88 = v51;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[1]);
    }

    std::locale::~locale(&v89);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  v52 = v80;
  if (*(v80 + 308) == 1)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    *v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v88, "      ObjectLocatorOnThisInstance(", 34);
    v53 = std::ostream::operator<<();
    sub_100007774(v53, ")", 1);
    v54 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v55 = (v86 & 0x80u) == 0 ? buf : *buf;
      *v81 = 136446210;
      *&v81[4] = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v81, 0xCu);
      if (v86 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v88 = v56;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[1]);
    }

    std::locale::~locale(&v89);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v52 = v80;
  }

  if (*(v52 + 360) == 1)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    *v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v88, "      PowerAssertion", 20);
    v57 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v58 = (v86 & 0x80u) == 0 ? buf : *buf;
      *v81 = 136446210;
      *&v81[4] = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v81, 0xCu);
      if (v86 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v88 = v59;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[1]);
    }

    std::locale::~locale(&v89);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v52 = v80;
  }

  if (*(v52 + 264) == 2)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    *v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v88, "      Exposure Notification", 27);
    v60 = qword_100BCEA40;
    if (os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v61 = (v86 & 0x80u) == 0 ? buf : *buf;
      *v81 = 136446210;
      *&v81[4] = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v81, 0xCu);
      if (v86 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v88 = v62;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[1]);
    }

    std::locale::~locale(&v89);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  if (*(v80 + 128))
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    *v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v88, "      serviceData(", 18);
    v63 = *(v80 + 112);
    if (v63 != (v80 + 120))
    {
      do
      {
        sub_10003B85C((v63 + 4), buf);
        if ((v86 & 0x80u) == 0)
        {
          v64 = buf;
        }

        else
        {
          LODWORD(v64) = *buf;
        }

        if ((v86 & 0x80u) == 0)
        {
          v65 = v86;
        }

        else
        {
          v65 = *&buf[8];
        }

        v66 = sub_100007774(&v88, v64, v65);
        v67 = sub_100007774(v66, "<", 1);
        sub_10000C250((v63 + 7), v81);
        if ((v82 & 0x80u) == 0)
        {
          v68 = v81;
        }

        else
        {
          LODWORD(v68) = *v81;
        }

        if ((v82 & 0x80u) == 0)
        {
          v69 = v82;
        }

        else
        {
          v69 = *&v81[8];
        }

        v70 = sub_100007774(v67, v68, v69);
        sub_100007774(v70, ">", 1);
        if (v82 < 0)
        {
          operator delete(*v81);
        }

        if (v86 < 0)
        {
          operator delete(*buf);
        }

        v71 = v63[1];
        if (v71)
        {
          do
          {
            v72 = v71;
            v71 = *v71;
          }

          while (v71);
        }

        else
        {
          do
          {
            v72 = v63[2];
            v73 = *v72 == v63;
            v63 = v72;
          }

          while (!v73);
        }

        v63 = v72;
      }

      while (v72 != (v80 + 120));
    }

    sub_100007774(&v88, ")", 1);
    v74 = sub_10000E92C();
    if ((*(*v74 + 176))(v74))
    {
      v75 = qword_100BCEA40;
      if (os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v76 = (v86 & 0x80u) == 0 ? buf : *buf;
        *v81 = 136446210;
        *&v81[4] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v81, 0xCu);
        if (v86 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    *&v88 = v77;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[1]);
    }

    std::locale::~locale(&v89);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  if (v80)
  {
    sub_10000C808(v80);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v79)
  {
    operator delete(v79);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

void sub_10072EB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a16)
  {
    sub_10000C808(a16);
    if (!v33)
    {
LABEL_3:
      if (!v32)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  operator delete(v33);
  if (!v32)
  {
LABEL_4:
    if (!v31)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(v32);
  if (!v31)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v31);
  goto LABEL_6;
}

void sub_10072ECA4(uint64_t a1)
{
  v2 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: -------------------- LE Broadcaster ---------------------", buf, 2u);
    v2 = qword_100BCE9A8;
  }

  v3 = a1 + 0x4000;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 128);
    if (v4 > 3)
    {
      v5 = "UNKNOWN";
    }

    else
    {
      v5 = off_100B0ADD8[v4];
    }

    v6 = (CFAbsoluteTimeGetCurrent() - *(a1 + 136));
    v7 = *(a1 + 17172);
    *buf = 136446978;
    *v65 = v5;
    *&v65[8] = 1024;
    *&v65[10] = v4;
    *&v65[14] = 1024;
    *&v65[16] = v6;
    LOWORD(v66) = 1024;
    *(&v66 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertisement state: %{public}s(%d) duration:%d seconds fSystemWillSleep: %d", buf, 0x1Eu);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 144);
    *buf = 67109120;
    *v65 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertisement tech: %d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "not";
    if (*(a1 + 16961))
    {
      v9 = "";
    }

    *buf = 136446210;
    *v65 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Extended advertising %{public}s supported", buf, 0xCu);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 16960);
    *buf = 67109120;
    *v65 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertisement # of instances: %d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "OFF";
    if (*(a1 + 49))
    {
      v11 = "ON";
    }

    *buf = 136446210;
    *v65 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Stack:%{public}s", buf, 0xCu);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 16992);
    *buf = 67109120;
    *v65 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fControllerMaxExtendedAdvertisingPayloadSize:%d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 16962);
    *buf = 67109120;
    *v65 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fHostSupportsBackgroundAdvertisingOnExtended:%d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 17104) != 0;
    *buf = 67109120;
    *v65 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fConfigAdvertisingPowerAssertion:%d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 17024);
    v16 = "NO";
    if (*(a1 + 17032))
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    if (*(a1 + 17033))
    {
      v16 = "YES";
    }

    *buf = 134218754;
    *v65 = v15;
    *&v65[8] = 2082;
    *&v65[10] = v17;
    *&v65[18] = 2082;
    v66 = v16;
    v67 = 2082;
    v68 = "YES";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fAdvertisingPowerAssertion:%llx fAddressChangeInProgress:%{public}s fDeferringUpdateAdvertisingState:%{public}s fAddressRefreshTimeoutCB created:%{public}s", buf, 0x2Au);
    v2 = qword_100BCE9A8;
  }

  if (*(a1 + 16960))
  {
    v18 = 0;
    v19 = a1 + 152;
    do
    {
      v20 = v3;
      v21 = a1 + 3352 * v18;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        _X8 = v21 + 6857;
        v23 = v19 + 3352 * v18;
        __asm { PRFM            #0, [X8] }

        LODWORD(_X8) = *(v23 + 1);
        LODWORD(v23) = *(v23 + 2);
        *buf = 67109632;
        *v65 = v18;
        *&v65[4] = 1024;
        *&v65[6] = _X8;
        *&v65[10] = 1024;
        *&v65[12] = v23;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: %d. type:%d interval:%d ", buf, 0x14u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        _X8 = v21 + 8512;
        v30 = v19 + 3352 * v18;
        __asm { PRFM            #0, [X8] }

        LODWORD(_X8) = *(v30 + 1656);
        *buf = 68158210;
        *v65 = _X8;
        *&v65[4] = 2096;
        *&v65[6] = v30 + 5;
        *&v65[14] = 1024;
        *&v65[16] = _X8;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     data:%.*P(%d)", buf, 0x18u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        _X8 = v21 + 10164;
        v33 = v19 + 3352 * v18;
        __asm { PRFM            #0, [X8] }

        LODWORD(_X8) = *(v33 + 3308);
        *buf = 68158210;
        *v65 = _X8;
        *&v65[4] = 2096;
        *&v65[6] = v33 + 1658;
        *&v65[14] = 1024;
        *&v65[16] = _X8;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     scanRspData:%.*P(%d)", buf, 0x18u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 17009 + v18);
        *buf = 67109120;
        *v65 = v35;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     fObjectLocatorResponseOnAdvertisingHandle:%d", buf, 8u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 17014 + v18);
        *buf = 67109120;
        *v65 = v36;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     fLEAdvTxEpaAdvertisingHandle:%d", buf, 8u);
        v2 = qword_100BCE9A8;
      }

      ++v18;
      v3 = v20;
    }

    while (v18 < *(v20 + 576));
  }

  v37 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v37)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertising sessions:", buf, 2u);
  }

  v38 = *(a1 + 16912);
  v39 = (a1 + 16920);
  if (v38 != a1 + 16920)
  {
    do
    {
      sub_10072D708(v37, v38);
      v40 = *(v38 + 8);
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = *(v38 + 16);
          _ZF = *v41 == v38;
          v38 = v41;
        }

        while (!_ZF);
      }

      v38 = v41;
    }

    while (v41 != v39);
  }

  v42 = sub_1000269D4();
  v43 = *(a1 + 16952);
  if (v43)
  {
    v44 = v42;
    v45 = a1 + 16936;
    v46 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v65 = v43;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "statedump: Backgrounded advertising sessions (%ld, sorted):", buf, 0xCu);
    }

    for (i = *(a1 + 16944); i != v45; i = *(i + 8))
    {
      v48 = *v39;
      if (!*v39)
      {
        goto LABEL_67;
      }

      v49 = *(i + 16);
      v50 = (a1 + 16920);
      do
      {
        v51 = v48[4];
        _CF = v51 >= v49;
        v52 = v51 < v49;
        if (_CF)
        {
          v50 = v48;
        }

        v48 = v48[v52];
      }

      while (v48);
      if (v50 == v39 || v49 < v50[4])
      {
LABEL_67:
        v50 = (a1 + 16920);
      }

      v53 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v50[4], __p);
        v54 = __p;
        if (v63 < 0)
        {
          v54 = __p[0];
        }

        v55 = v50[6];
        v56 = v44 - *(v55 + 320) / 0x3E8uLL;
        v57 = *(v55 + 328) / 0x3E8uLL;
        *buf = 136446722;
        *v65 = v54;
        *&v65[8] = 2048;
        *&v65[10] = v56;
        *&v65[18] = 2048;
        v66 = v57;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s for %llu seconds, timeout after %llu seconds", buf, 0x20u);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v58 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "statedump: ADV Instance address history (recent first):", buf, 2u);
  }

  for (j = *(a1 + 17120); j != a1 + 17112; j = *(j + 8))
  {
    v60 = *(j + 16);
    v61 = *(j + 32);
    sub_100729F34(a1, &v60);
  }
}

void sub_10072F5D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10072F650;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

void sub_10072F66C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10072F6E8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

void sub_10072F6E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  *(v3 + 17172) = 0;
  if (*(v3 + 49) == 1)
  {
    v5[5] = v1;
    v5[6] = v2;
    v4 = *(v3 + 56);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10072F774;
    v5[3] = &unk_100ADF8F8;
    v5[4] = v3;
    sub_10000CA94(v4, v5);
  }
}

uint64_t sub_10072F788(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10072F808;
  v5[3] = &unk_100AE0900;
  v6 = v2;
  sub_10000D334(v3, v5);
  return 1;
}

void sub_10072F808(uint64_t result)
{
  if (qword_100B512D8 != -1)
  {
    sub_10086BE04();
  }

  if (*(off_100B512D0 + 24) == 1 && *(off_100B512D0 + 25) == 1 && (*(off_100B512D0 + 27) & 1) == 0)
  {
    if (qword_100B512F8 != -1)
    {
      sub_10086A8E0();
    }

    v2 = off_100B512F0;
    v3 = *(result + 32);

    sub_1003BF718(v2, v3);
  }
}

void sub_10072F914(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_10072FC2C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[5] = &off_100AE0AB8;
    v3 = __p[6];
    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10072FD14(void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = &v5[20 * a2];
      v10 = 20 * a2;
      do
      {
        sub_10003A364(v5);
        v5 += 20;
        v10 -= 20;
      }

      while (v10);
      v5 = v9;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2) + a2;
    if (v6 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1000C7698();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      sub_100018404(a1, v8);
    }

    v11 = 4 * ((v5 - *a1) >> 2);
    v12 = 5 * a2;
    v13 = (v11 + 20 * a2);
    v14 = 4 * v12;
    v15 = v11;
    do
    {
      v15 = sub_10003A364(v15) + 20;
      v14 -= 20;
    }

    while (v14);
    v16 = *a1;
    v17 = a1[1];
    v18 = (v11 + *a1 - v17);
    if (v17 != *a1)
    {
      v19 = (v11 + *a1 - v17);
      do
      {
        v20 = *v16;
        *(v19 + 4) = v16[4];
        *v19 = v20;
        v19 += 20;
        v16 += 5;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v13;
    a1[2] = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void *sub_10072FEC4(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_10072FF54(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_100730134();
  }

  return result;
}

uint64_t *sub_10072FF54(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2)
  {
    v11 = *(a2 + 32);
    v12 = sub_10011327C(*a5);
    if (v12 <= sub_10011327C(v11))
    {
      v15 = *a5;
      v16 = sub_10011327C(*(a2 + 32));
      if (v16 <= sub_10011327C(v15))
      {
        *a3 = a2;
        *a4 = a2;
        return a4;
      }

      a4 = a2 + 1;
      v17 = a2[1];
      if (v17)
      {
        v18 = a2[1];
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v24 = a2;
        do
        {
          v19 = v24[2];
          v21 = *v19 == v24;
          v24 = v19;
        }

        while (!v21);
      }

      if (v19 != v9)
      {
        v25 = *(v19 + 32);
        v26 = sub_10011327C(*a5);
        if (v26 <= sub_10011327C(v25))
        {
          goto LABEL_28;
        }

        v17 = *a4;
      }

      if (v17)
      {
        *a3 = v19;
        return v19;
      }

      else
      {
        *a3 = a2;
      }

      return a4;
    }
  }

  if (*a1 == a2)
  {
    v14 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v14;
      return v14 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    do
    {
      v14 = v13;
      v13 = *(v13 + 8);
    }

    while (v13);
  }

  else
  {
    v20 = a2;
    do
    {
      v14 = v20[2];
      v21 = *v14 == v20;
      v20 = v14;
    }

    while (v21);
  }

  v22 = *a5;
  v23 = sub_10011327C(*(v14 + 32));
  if (v23 > sub_10011327C(v22))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1001131CC(a1, a3, a5);
}

void sub_1007301D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007301F0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007301F0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[5] = &off_100AE0A78;
    v3 = __p[6];
    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100730340(uint64_t result, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *(v3 + 12) = 2080;
  *(v3 + 14) = result;
  return result;
}

uint64_t sub_100730358(uint64_t a1)
{
  *a1 = off_100B0AE08;
  *(a1 + 8) = off_100B0AE68;
  *(a1 + 664) = 0;
  *(a1 + 672) = 5;
  *(a1 + 683) = 0;
  bzero((a1 + 16), 0x288uLL);
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  *(a1 + 680) = v4;
  v5 = sub_10000C798(v2, v3);
  v6 = (*(*v5 + 56))(v5, 1);
  if (v6)
  {
    v8 = sub_10000C7D0(v6, v7);
    v9 = (*(*v8 + 2888))(v8);
    v6 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v6)
      {
        sub_10086BE4C();
      }
    }

    else if (v6)
    {
      sub_10086BE18();
    }

    *(a1 + 664) |= 1u;
  }

  v10 = sub_10000C798(v6, v7);
  v11 = (*(*v10 + 56))(v10, 16);
  if (v11)
  {
    v11 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      sub_10086BE80();
    }

    *(a1 + 664) |= 0x10u;
  }

  v13 = sub_10000C798(v11, v12);
  v14 = (*(*v13 + 56))(v13, 0x80000);
  if (v14)
  {
    v14 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      sub_10086BEB4();
    }

    *(a1 + 664) |= 0x80000u;
  }

  v16 = sub_10000C798(v14, v15);
  v17 = (*(*v16 + 56))(v16, 8);
  if (v17)
  {
    v17 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      sub_10086BEE8();
    }

    *(a1 + 664) |= 8u;
  }

  v19 = sub_10000C798(v17, v18);
  v20 = (*(*v19 + 56))(v19, 0x100000);
  v21 = qword_100BCEAC0;
  if (v20)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Source supports GATT", buf, 2u);
      v21 = qword_100BCEAC0;
    }

    *(a1 + 664) |= 0x100000u;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 664);
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Source supported profiles = %x", buf, 8u);
  }

  v32 = 0;
  v23 = sub_10000E92C();
  if (((*(*v23 + 8))(v23) & 1) == 0)
  {
    v28 = *(a1 + 672);
LABEL_39:
    v28 |= 0x10uLL;
    *(a1 + 672) = v28;
    goto LABEL_40;
  }

  v24 = sub_10000E92C();
  sub_100007E30(buf, "FastConnect");
  sub_100007E30(__p, "DisableFastConnectAll");
  (*(*v24 + 72))(v24, buf, __p, &v32);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(*buf);
  }

  v25 = qword_100BCEAC0;
  v26 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
  v27 = v32;
  if (v26)
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "disableFastConnectAll = %d", buf, 8u);
    v27 = v32;
  }

  v28 = *(a1 + 672);
  if ((v27 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  *(a1 + 682) = (v28 & 0x10) != 0;
  return a1;
}

void sub_1007307C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  for (i = 632; i != 8; i -= 208)
  {
  }

  _Unwind_Resume(a1);
}

void *sub_100730830(void *a1)
{
  *a1 = off_100B0AE08;
  a1[1] = off_100B0AE68;
  sub_100730EA8(a1);
  for (i = 79; i != 1; i -= 26)
  {
  }

  return a1;
}

void sub_1007308B4(_Unwind_Exception *a1)
{
  for (i = 632; i != 8; i -= 208)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1007308DC(void *a1)
{
  sub_100730830(a1);

  operator delete();
}

void sub_100730914(uint64_t a1)
{
  v7 = 0;
  v2 = sub_10000E92C();
  if ((*(*v2 + 8))(v2))
  {
    v3 = sub_10000E92C();
    sub_100007E30(buf, "FastConnect");
    sub_100007E30(__p, "DisableFastConnect");
    (*(*v3 + 72))(v3, buf, __p, &v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9 < 0)
    {
      operator delete(*buf);
    }

    v4 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "disableFastConnect = %d", buf, 8u);
      if (v7)
      {
        return;
      }
    }

    else if (v7)
    {
      return;
    }
  }

  sub_1002ADECC(sub_100730B2C);
  mach_timebase_info(&dword_100BC7AD4);
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  sub_1000F0D9C(off_100B508E8 + 240, a1 + 8);
}

void sub_100730AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100730C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = qword_100BCEAC0;
  v6 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = sub_100730F30(v6, *(a2 + 16));
    v8[0] = 68158466;
    v8[1] = 6;
    v9 = 2096;
    v10 = a2 + 8;
    v11 = 2080;
    v12 = v7;
    v13 = 2080;
    v14 = sub_100730F30(v7, v3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{bluetooth:BD_ADDR}.6P state changed from %s to %s", v8, 0x26u);
  }

  *(a2 + 16) = v3;
}

void sub_100730D34(uint64_t a1)
{
  v2 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Destroy all devices", v5, 2u);
  }

  for (i = 0; i != 624; i += 208)
  {
    sub_100730C34(a1, a1 + i + 16, 0);
    v4 = *(a1 + i + 216);
    *(a1 + i + 216) = 0;
  }
}

uint64_t sub_100730DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E6A38(a1, a2 + 128);
  if (!v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = a1 + v5;
      if (!*(a1 + v5 + 32))
      {
        break;
      }

      v5 += 208;
      if (v5 == 624)
      {
        return 0;
      }
    }

    *(v6 + 16) = 0u;
    v4 = v6 + 16;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    v7 = *(a2 + 128);
    *(v4 + 12) = *(a2 + 132);
    *(v4 + 8) = v7;
    sub_100730C34(a1, v4, 1);
    *(v4 + 20) = *(a1 + 664);
    v8 = sub_10054E230(a2);
    *(v4 + 53) = v8;
    *(v4 + 145) = 0;
    if (v8 != 2)
    {
      sub_10054E1E8(a2, 2);
    }
  }

  return v4;
}

void sub_100730EA8(uint64_t a1)
{
  sub_1002ADED8();
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF6C();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF80();
  }

  v2 = off_100B508E8 + 240;

  sub_10007A3F0(v2, a1 + 8);
}

const char *sub_100730F30(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return "Unknown State";
  }

  else
  {
    return off_100B0B130[a2];
  }
}

uint64_t sub_100730F54(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    v5 = v27 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Check Fast Connect Support for device %s", buf, 0xCu);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v20 = 0;
  sub_1000216B4(&v20);
  v6 = sub_1000E1FE8(a2 + 128);
  if (v6 && (v7 = *(v6 + 148), v7 >= 3))
  {
    sub_100022214(&v20);
    v9 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Killing Fast Connect attempt, already connected %d", __p, 8u);
    }

    v8 = 4506;
  }

  else
  {
    v8 = sub_10028E3EC(2u, &v21, 0);
    if (v8)
    {
      sub_100022214(&v20);
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086C1C4();
      }
    }

    else
    {
      v10 = *(a1 + 664);
      if (*(a2 + 1032) == 1)
      {
        v11 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest not in contacts removing HFP and GATT profiles from support", __p, 2u);
        }

        v10 &= 0xFFEFFFFE;
      }

      word_100BCEB70 = 1;
      word_100BCEB72 = *(a1 + 680);
      byte_100BCEB74 = *(v21 + 4);
      byte_100BCEB75 = *(v21 + 5);
      byte_100BCEB76 = *(sub_1000B12AC(v21) + 36);
      byte_100BCEB77 = *(sub_1000B12AC(v21) + 37);
      dword_100BCEB78 = v10;
      unk_100BCEB7C = *(a1 + 672);
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB84 = sub_1005A5338(off_100B50A98);
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB85 = sub_1005A5338(off_100B50A98) >> 8;
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB86 = sub_1005A5338(off_100B50A98) >> 16;
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB87 = sub_1005A5338(off_100B50A98) >> 24;
      byte_100BCEB88 = sub_1002F8128();
      byte_100BCEB89 = sub_1002F8128() >> 8;
      byte_100BCEB8A = sub_1002F8128() >> 16;
      byte_100BCEB8B = sub_1002F8128() >> 24;
      unk_100BCEB8C = 1;
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      v12 = sub_1005A5340(off_100B50A98);
      byte_100BCEB8E = BYTE4(v12);
      byte_100BCEB8F = BYTE5(v12);
      byte_100BCEB90 = BYTE6(v12);
      byte_100BCEB91 = HIBYTE(v12);
      word_100BCEB92 = v12;
      byte_100BCEB94 = BYTE2(v12);
      byte_100BCEB95 = BYTE3(v12);
      *(sub_1000B12AC(v21) + 88) = sub_1007314F0;
      v13 = v21;
      *(v21 + 4) = sub_100731580;
      *(sub_1000B12AC(v13) + 16) = 0;
      v8 = sub_1002AD274(sub_100731960, *(v21 + 2), (a2 + 128), &word_100BCEB70, 42);
      v14 = qword_100BCEAC0;
      v15 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v15)
        {
          sub_1000E5A58(a2, __p);
          v16 = v27 >= 0 ? __p : __p[0];
          *buf = 136446466;
          v23 = v16;
          v24 = 1024;
          v25 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to send Fast Connect Echo Request for device %{public}s with status %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10028E908(v21);
      }

      else
      {
        if (v15)
        {
          sub_1000E5A58(a2, __p);
          v17 = v27 >= 0 ? __p : __p[0];
          *buf = 136446466;
          v23 = v17;
          v24 = 1024;
          v25 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sent Fast Connect Echo Request for device %{public}s with status %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v18 = sub_1000E6A38(a1, a2 + 128);
        *v18 = a2;
        sub_100730C34(a1, v18, 2);
      }

      sub_100022214(&v20);
    }
  }

  sub_10002249C(&v20);
  return v8;
}

void sub_100731580(int a1, const void *a2, unsigned int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_10000C704(v13, a2, a3);
  memset(v12, 0, sizeof(v12));
  sub_10057C4B4(v12, 0, v13);
  v4 = sub_10057C548(v12);
  if (v4 == 6)
  {
    v11 = 0;
    if (qword_100B540E0 != -1)
    {
      sub_10086C234();
    }

    v6 = (off_100B540D8 + 64);
    v7 = 3;
    while (!*(v6 - 8) || *v6 != a1)
    {
      v6 += 104;
      if (!--v7)
      {
        v8 = 0;
        goto LABEL_10;
      }
    }

    v8 = v6 - 24;
LABEL_10:
    v9 = qword_100BCEAC0;
    v4 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup Complete received, setting all channels to OPEN", v10, 2u);
    }

    if (v8)
    {
      if (v8[32])
      {
        sub_1000ABC7C(v8[32], &v11);
        if (v11)
        {
          if (sub_1000B12AC(v11))
          {
            *(sub_1000B12AC(v11) + 16) = 4;
          }
        }
      }

      if (v8[27])
      {
        sub_1000ABC7C(v8[27], &v11);
        if (v11)
        {
          if (sub_1000B12AC(v11))
          {
            *(sub_1000B12AC(v11) + 16) = 4;
          }
        }
      }

      if (v8[37])
      {
        sub_1000ABC7C(v8[37], &v11);
        if (v11)
        {
          if (sub_1000B12AC(v11))
          {
            *(sub_1000B12AC(v11) + 16) = 4;
          }
        }
      }

      if (v8[42])
      {
        sub_1000ABC7C(v8[42], &v11);
        if (v11)
        {
          if (sub_1000B12AC(v11))
          {
            *(sub_1000B12AC(v11) + 16) = 4;
          }
        }
      }

      if (v8[57])
      {
        sub_1000ABC7C(v8[57], &v11);
        if (v11)
        {
          if (sub_1000B12AC(v11))
          {
            *(sub_1000B12AC(v11) + 16) = 4;
          }
        }
      }

      if (v8[47])
      {
        sub_1000ABC7C(v8[47], &v11);
        if (v11)
        {
          if (sub_1000B12AC(v11))
          {
            *(sub_1000B12AC(v11) + 16) = 4;
          }
        }
      }

      v4 = v8[62];
      if (v8[62])
      {
        sub_1000ABC7C(v4, &v11);
        v4 = v11;
        if (v11)
        {
          v4 = sub_1000B12AC(v11);
          if (v4)
          {
            v4 = sub_1000B12AC(v11);
            *(v4 + 16) = 4;
          }
        }
      }
    }
  }

  sub_100017F4C(v4, v5);
  operator new();
}

void sub_100731960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    sub_10086C25C();
  }

  sub_100017F4C(v7, v8);
  operator new();
}

uint64_t sub_100731A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100730DD8(a1, a2);
  v5 = v4;
  if (*(v4 + 16) < 2)
  {
    if (!*(v4 + 152))
    {
      *(v4 + 152) = mach_absolute_time();
    }

    *(v5 + 160) = mach_absolute_time();
    v8 = +[NSMutableDictionary dictionary];
    v9 = *(v5 + 200);
    *(v5 + 200) = v8;

    return sub_100730F54(a1, a2);
  }

  else
  {
    v6 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_1000C23E0(a2, __p);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = sub_100730F30(v10, *(v5 + 16));
      *buf = 136315394;
      v16 = v11;
      v17 = 2080;
      v18 = v12;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "PFC in progress for device %s, ignoring duplicate request - current state is %s", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 4508;
  }
}

void sub_100731BF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24) & *(a2 + 20);
  v6 = qword_100BCEAC0;
  if (v4 >= 4)
  {
    v7 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = sub_100730F30(v7, v4);
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Descriptor was already sent once! FCState %s", __p, 0xCu);
      v6 = qword_100BCEAC0;
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(*a2, __p);
    v8 = (SBYTE7(v53) & 0x80u) == 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Compose Profile Descriptor for device %s with supported profiles %x", buf, 0x12u);
    if (SBYTE7(v53) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(*a2 + 1032) == 1)
  {
    v9 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter this is a guest not in contacts device removing HFP / GATT profiles", __p, 2u);
    }

    v5 &= 0xFFEFFFFE;
  }

  if (v5)
  {
    *__p = 0u;
    v53 = 0u;
    sub_10057C6A8(__p, 0);
    v10 = *(a1 + 680);
    sub_10057C6D0(__p, 3);
    sub_10057C6D0(__p, 0);
    v11 = sub_10057C70C(__p, v10);
    sub_100732BD0(v11, __p, v12, a2);
    sub_10057C70C(__p, 2);
    v48 = 0;
    sub_1000216B4(&v48);
    if ((v5 & 0x10) != 0)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_10086BFF8();
      }

      v13 = sub_1004DF8F8(qword_100B50AD8, (*a2 + 128), (a2 + 54), (a2 + 64));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        if (qword_100B50AE0 != -1)
        {
          sub_10086BFF8();
        }

        v14 = sub_1004DF968(qword_100B50AD8, buf, (a2 + 54), (a2 + 64)) == 0;
      }

      sub_100022214(&v48);
      if (v14)
      {
        sub_10057C75C(__p, 0x10u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v15 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v15);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v16 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v17 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v16, v17);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B50AE0 != -1)
        {
          sub_10086BFF8();
        }

        sub_1004E0FE4(qword_100B50AD8, *a2, *(a2 + 54), *(a2 + 64), 0, *(a2 + 135));
        v5 &= ~0x10u;
        *(a2 + 54) = 0;
        *(a2 + 64) = 0;
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if (v5)
    {
      if (qword_100B50AD0 != -1)
      {
        sub_10086C05C();
      }

      if (sub_1005E6468(off_100B50AC8, (*a2 + 128), (a2 + 74), (a2 + 140)))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a2 + 145) != 1 || sub_100308ED4(*a2 + 128, (a2 + 124)) == 0;
      }

      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v18)
      {
        if (qword_100B50AD0 != -1)
        {
          sub_10086C05C();
        }

        LOBYTE(v18) = sub_1005E6558(off_100B50AC8, buf, *a2, (a2 + 74), (a2 + 140), *(a2 + 145)) == 0;
      }

      sub_100022214(&v48);
      if (v18)
      {
        sub_10057C75C(__p, 1u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v19 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v19);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v20 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v21 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v20, v21);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B50AD0 != -1)
        {
          sub_10086C05C();
        }

        sub_1005E64C8(off_100B50AC8, *a2 + 128, (a2 + 74), (a2 + 140));
        v5 &= ~1u;
        *(a2 + 74) = 0;
        if (*(a2 + 145) == 1)
        {
          sub_1000618AC(&v48);
          sub_100309078(*a2 + 128, *(a2 + 124));
          sub_100022214(&v48);
          *(a2 + 124) = 0;
        }
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if ((v5 & 0x80000) != 0)
    {
      if (qword_100B50950 != -1)
      {
        sub_10086C0FC();
      }

      v22 = sub_100358A40(off_100B50948, *a2 + 128, (a2 + 84));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        v23 = sub_100358AA8(off_100B50948, *a2, buf, (a2 + 84)) == 0;
      }

      sub_10054236C(*a2, v23);
      sub_100022214(&v48);
      if (v23)
      {
        sub_10057C75C(__p, 0x80000u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v24 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v24);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v25 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v26 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v25, v26);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        sub_10035B49C(off_100B50948, *a2, *(a2 + 84), 114);
        v5 &= ~0x80000u;
        *(a2 + 84) = 0;
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if ((v5 & 8) != 0)
    {
      if (qword_100B541D0 != -1)
      {
        sub_10086C160();
      }

      v27 = sub_1006CD320(off_100B541C8, *a2 + 128, (a2 + 94));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        if (qword_100B541D0 != -1)
        {
          sub_10086C160();
        }

        v28 = sub_1006CD38C(off_100B541C8, buf, (a2 + 94), (a2 + 104)) == 0;
      }

      sub_100022214(&v48);
      if (v28)
      {
        sub_10057C75C(__p, 8u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v29 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v29);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v30 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v31 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v30, v31);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B541D0 != -1)
        {
          sub_10086C160();
        }

        sub_1006CDBC8(off_100B541C8, *a2, *(a2 + 94), *(a2 + 104), 0);
        v5 &= ~8u;
        *(a2 + 94) = 0;
        *(a2 + 104) = 0;
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if ((v5 & 0x100000) != 0)
    {
      v32 = (a2 + 114);
      sub_1001BD074(*a2 + 128, (a2 + 114));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      v45 = 0;
      v44 = 0;
      v43 = 0;
      if (sub_1000C0D40(*(a2 + 114), &v43, &v45, &v44))
      {
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086C290();
        }

        sub_1001BD1BC(*a2 + 128, *(a2 + 114));
        v5 &= ~0x100000u;
        *v32 = 0;
      }

      else
      {
        sub_10057C6D0(buf, 1);
        sub_10057C6D0(buf, 7);
        sub_10057C70C(buf, *v32);
        sub_10057C70C(buf, v43);
        sub_10057C70C(buf, v45);
        sub_10057C6D0(buf, v44);
        sub_10057C75C(__p, 0x100000u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v33 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v33);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v34 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v35 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v34, v35);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if (*(a2 + 20) != v5)
    {
      *(a2 + 20) = v5;
    }

    v36 = *(a2 + 48);
    v37 = *a2;
    sub_10000C704(buf, __p[1], v53 - __p[1]);
    v38 = sub_10000C5F8(buf);
    sub_10000C704(v49, __p[1], v53 - __p[1]);
    v39 = sub_10000C5E0(v49);
    v40 = sub_10028E1F0(sub_100732EE4, v36, (v37 + 128), v38, v39);
    *v49 = &off_100AE0A78;
    if (v50)
    {
      sub_10000C808(v50);
    }

    *buf = &off_100AE0A78;
    if (*&buf[8])
    {
      sub_10000C808(*&buf[8]);
    }

    if (v40)
    {
      v41 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10000C704(buf, __p[1], v53 - __p[1]);
        v42 = sub_10000C5E0(buf);
        *v49 = 67109376;
        *&v49[4] = v40;
        LOWORD(v50) = 1024;
        *(&v50 + 2) = v42;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Fast Connect L2CAP Write failed with result %d for data size %d", v49, 0xEu);
        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }
      }

      sub_1000DE594(a1, *a2 + 128, v40);
    }

    else
    {
      sub_100730C34(a1, a2, 4);
    }

    sub_10002249C(&v48);
    if (__p[1])
    {
      *&v53 = __p[1];
      operator delete(__p[1]);
    }
  }
}