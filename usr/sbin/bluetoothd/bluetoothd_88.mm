uint64_t sub_10064BE4C(uint64_t a1)
{
  *a1 = off_100B037D8;
  free(*(a1 + 248));
  free(*(a1 + 256));
  free(*(a1 + 264));

  return sub_10064B1C8(a1);
}

void sub_10064BEB8(uint64_t a1)
{
  sub_10064BE4C(a1);

  operator delete();
}

BOOL sub_10064BEF0(uint64_t *a1)
{
  v1 = a1 + 28;
  v2 = a1[28];
  v3 = a1[24];
  v4 = v3[3];
  v5 = 2 * v4 - v2;
  if (2 * v4 == v2)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855FE0();
    }

    return 1;
  }

  if ((v3[5] & 1) == 0)
  {
    v8 = sub_1003A2C24(a1[23], (a1[26] + v2), 2 * v4 - v2);
    a1[28] += v8;
    return v8 == v5;
  }

  v13 = 0;
  v14 = 0;
  if (v3[4])
  {
    if (!(2 * v4 % v5))
    {
      goto LABEL_14;
    }

    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855DAC();
    }

    result = 0;
    *v1 = 0;
    v1[1] = 0;
    return result;
  }

  if (v2)
  {
    return 1;
  }

  do
  {
LABEL_14:
    if (!sub_1003A2D04(a1[23], (a1[32] + (v2 >> 1)), &v14, v4 - (v2 >> 1), (a1[33] + (v2 >> 1)), &v13, v4 - (v2 >> 1)))
    {
      v11 = qword_100BCE8D0;
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_1008561A8(v1, v11);
      return 0;
    }

    if (!(v14 + v13))
    {
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      sub_100856304();
      return 0;
    }

    v9 = a1[24];
    if (!*(v9 + 4))
    {
      v12 = v13 + v14 + *v1;
      *v1 = v12;
      if (v12 > 2 * *(v9 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      return 1;
    }

    v4 = *(v9 + 3);
    v10 = v13 + v14;
    if (2 * v4 % (v13 + v14))
    {
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      sub_100856224();
      return 0;
    }

    v2 = *v1 + v10;
    *v1 = v2;
    v13 = 0;
    v14 = 0;
    v5 -= v10;
  }

  while (v5);
  if (v2 != 2 * *(v9 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
LABEL_21:
    sub_100856294();
  }

  return 1;
}

void *sub_10064C180(void *result)
{
  if ((*(result[24] + 5) & 1) == 0 && result[28] >= 2uLL)
  {
    v1 = 0;
    v2 = result[26];
    do
    {
      *(result[32] + v1) = *v2;
      *(result[33] + v1++) = v2[1];
      v2 += 2;
    }

    while (v1 < result[28] >> 1);
  }

  return result;
}

void sub_10064C1D0(void *result)
{
  v1 = result[24];
  if (*(v1 + 2) != 8)
  {
    if (result[28] != 2 * *(v1 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100856340();
    }

    sub_10064B44C(result, result[32]);
    sub_10064B44C(result, result[33]);
    result[28] = 2 * *(result[24] + 4);
  }
}

BOOL sub_10064C264(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  v5 = sub_100410864(v3, v4);
  if (*(*(a1 + 192) + 6) == 1)
  {
    v6 = *(a1 + 232);
    if (!v6)
    {
      v7 = (*(a1 + 224) - 1) / (*(a1 + 176) - 1);
      if (v7 >= 4u && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        sub_1008563C0();
      }

      **(a1 + 248) = v7 | (4 * *(a1 + 201));
      v6 = *(a1 + 232);
    }

    v8 = *(a1 + 224) - v6;
    v9 = *(a1 + 176) - 1;
    v10 = v8 <= v9;
    if (v8 >= v9)
    {
      v11 = *(a1 + 176) - 1;
    }

    else
    {
      v11 = *(a1 + 224) - v6;
    }

    memcpy((*(a1 + 248) + 1), (*(a1 + 208) + v6), v11);
    v12 = *(a1 + 248);
    LOWORD(v13) = v11 + 1;
    *(a1 + 232) += v11;
  }

  else
  {
    if (*(a1 + 232) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_10085601C();
    }

    v14 = *(a1 + 224);
    if (v14 > 2 * *(a1 + 176))
    {
      v15 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v27 = "fAudioBuffer.getFillLevel() <= (fMaxPacketSize * 2)";
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
        v14 = *(a1 + 224);
      }
    }

    v12 = 0;
    *(a1 + 232) += v14;
    v13 = v14 >> 1;
    v10 = 1;
  }

  v25 = 0;
  sub_1000216B4(&v25);
  if ((v5 & 1) != 0 || sub_10064B404(a1))
  {
    v16 = *(a1 + 168);
    v17 = *(v16 + 344);
    if (v17 != *(v16 + 352))
    {
      do
      {
        v18 = *v17;
        if (*(*v17 + 32) == 8 && *(v18 + 48) == 3)
        {
          v19 = *(a1 + 192);
          if ((*(v19 + 6) & 1) == 0 && *(v19 + 8) == 1)
          {
            if ((*(v18 + 72) & 8) != 0)
            {
              v20 = 264;
            }

            else
            {
              v20 = 256;
            }

            v12 = *(a1 + v20);
          }

          if (v12)
          {
            if (sub_1002EA5B0(*v18, v12, v13, *(a1 + 200), v5 ^ 1u) == 410 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
            {
              sub_10085615C(buf, &v27);
            }
          }

          else
          {
            v21 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
            {
              sub_100856434(&v23, v24, v21);
            }

            v12 = 0;
          }
        }

        ++v17;
      }

      while (v17 != *(*(a1 + 168) + 352));
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_10085611C();
  }

  sub_10002249C(&v25);
  return v10;
}

void sub_10064C89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void *sub_10064DBB0(void *result)
{
  v2 = result[4];
  v3 = *(result[5] + 64);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[5];
      v7 = *(v6 + 64);
      *(v6 + 64) = 0;
    }

    v8 = v4[5];

    return [v8 _update];
  }

  return result;
}

uint64_t sub_10064DCD4(uint64_t a1)
{
  *sub_100589578(a1, "LEAService", 0x10000) = &off_100B03878;
  if (qword_100B50920 != -1)
  {
    sub_1008564F8();
  }

  sub_100589880(a1, qword_100B50918);
  return a1;
}

uint64_t sub_10064DD64(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_100016250(&v5);
  *&v4 = v5;
  *(&v4 + 1) = SWORD2(v5);
  return sub_100539554(a2, 2u, 1, &v4, 0);
}

void sub_10064DDC0(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

void sub_10064DE64(uint64_t a1)
{
  v2 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v2 = *v2;
  }

  v3 = [NSString stringWithUTF8String:v2];
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10066945C;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10064DF4C(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v4 = reply;
    v5 = xpc_array_create(0, 0);
    v6 = xpc_dictionary_create(0, 0, 0);
    if (qword_100B508A0 != -1)
    {
      sub_100856798();
    }

    sub_100575E9C(off_100B50898);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    xpc_dictionary_set_string(v6, "Local Device", p_p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    xpc_array_append_value(v5, v6);
    xpc_release(v6);
    xpc_dictionary_set_value(v4, "kCBMsgArgs", v5);
    xpc_release(v5);
    xpc_connection_send_message(*(a1 + 16), v4);
    xpc_release(v4);
  }
}

void sub_10064E058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064E074(uint64_t a1, void *a2)
{
  if (*(a1 + 80) >= 2)
  {
    v4 = sub_10000E92C();
    if ((*(*v4 + 8))(v4))
    {
      value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      if (value)
      {
        v6 = value;
        int64 = xpc_dictionary_get_int64(value, "kCBMsgId");
        v8 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = int64;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling debug command %llu", buf, 0xCu);
        }

        v9 = xpc_dictionary_get_value(v6, "kCBMsgArgs");
        v17 = v9;
        switch(int64)
        {
          case 1:
            v18 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v20 = sub_10000C7D0(v18, v19);
            (*(*v20 + 552))(v20, v18 != 0, 0);
            return;
          case 2:
            v72 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v74 = sub_10009BD9C(v72, v73);
            (*(*v74 + 112))(v74, v72 != 0);
            return;
          case 3:
            v58 = sub_10000C7D0(v9, v10);
            (*(*v58 + 1296))(v58);
            return;
          case 4:
            LOWORD(v337[0]) = 0;
            LOWORD(length) = 0;
            LOWORD(v316[0]) = 0;
            LOWORD(v334) = 0;
            v65 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v66 = v65;
            v68 = sub_10000C7D0(v65, v67);
            v70 = *(v68 + 800);
            if ((v70 - 19) >= 0x7BD && (v70 - 5000) > 0x3E7)
            {
              v71 = sub_10000C7D0(v68, v69);
              (*(*v71 + 1200))(v71, v66, v337, &length, v316, &v334);
LABEL_121:
              v235 = 0;
              v236 = 0;
              v237 = 0;
              v238 = 0;
              v239 = 0;
              v240 = 0;
              v241 = 0;
              v242 = 0;
              v243 = 0;
              v244 = 0;
              v245 = 0;
              v246 = 0;
              v247 = 0;
              v248 = 0;
              v250 = 0;
              obja = 0;
              v160 = 0;
              v161 = 0;
              v162 = 0;
              v163 = 0;
              v164 = 0;
              v165 = 0;
              v166 = 0;
              v167 = 0;
              goto LABEL_122;
            }

            v354 = 0;
            v353 = 0u;
            v352 = 0u;
            v351 = 0u;
            v350 = 0u;
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v345 = 0u;
            memset(v344, 0, sizeof(v344));
            *v343 = 0u;
            *v342 = 0u;
            memset(buf, 0, sizeof(buf));
            v159 = sub_10000C7D0(v68, v69);
            if ((*(*v159 + 1208))(v159, v66, buf))
            {
              goto LABEL_121;
            }

            LOWORD(v337[0]) = *&buf[4];
            LOWORD(length) = *&buf[8];
            LOWORD(v316[0]) = *&buf[12];
            LOWORD(v334) = *&buf[16];
            v167 = DWORD2(v348);
            v166 = HIDWORD(v348);
            v165 = v349;
            v164 = WORD2(v349);
            v163 = WORD4(v349);
            v162 = WORD6(v349);
            v161 = v350;
            v160 = WORD2(v350);
            obja = WORD4(v350);
            v250 = WORD6(v350);
            v248 = v351;
            v247 = WORD2(v351);
            v246 = DWORD2(v351);
            v245 = HIDWORD(v351);
            v244 = v352;
            v243 = DWORD1(v352);
            v242 = DWORD2(v352);
            v241 = HIDWORD(v352);
            v240 = v353;
            v239 = WORD1(v353);
            v238 = WORD2(v353);
            v237 = WORD3(v353);
            v235 = v354;
            v236 = *(&v353 + 1);
LABEL_122:
            reply = xpc_dictionary_create_reply(a2);
            v169 = reply;
            if (reply)
            {
              xpc_dictionary_set_uint64(reply, "kCBTransmitStat", LOWORD(v337[0]));
              xpc_dictionary_set_uint64(v169, "kCBReceiveStat", length);
              xpc_dictionary_set_uint64(v169, "kCBSleepStat", LOWORD(v316[0]));
              xpc_dictionary_set_uint64(v169, "kCBOthersStat", v334);
              xpc_dictionary_set_uint64(v169, "kCBiPACounter", v167);
              xpc_dictionary_set_uint64(v169, "kCBePACounter", v166);
              xpc_dictionary_set_uint64(v169, "kCBlpScanCoreReceivePercentage", v165);
              xpc_dictionary_set_uint64(v169, "kCBtxbfTransmitPercentage", v164);
              xpc_dictionary_set_uint64(v169, "kCBmrcReceivePercentage", v163);
              xpc_dictionary_set_uint64(v169, "kCBepaTransmitPercentage", v162);
              xpc_dictionary_set_uint64(v169, "kCBtxbfEpaTransmitPercentage", v161);
              xpc_dictionary_set_uint64(v169, "kCBrxScanPercentage", v160);
              xpc_dictionary_set_uint64(v169, "mainCoreELNAOnPercentage", obja);
              xpc_dictionary_set_uint64(v169, "mainCoreELNAOffPercentage", v250);
              xpc_dictionary_set_uint64(v169, "scanCoreELNAOnPercentage", v248);
              xpc_dictionary_set_uint64(v169, "scanCoreELNAOffPercentage", v247);
              xpc_dictionary_set_uint64(v169, "kCBm154Tx", v246);
              xpc_dictionary_set_uint64(v169, "kCBm154Rx", v245);
              xpc_dictionary_set_uint64(v169, "kCBiPAThreadCounter", v244);
              xpc_dictionary_set_uint64(v169, "kCBePAThreadCounter", v243);
              xpc_dictionary_set_uint64(v169, "kCBiPA5gCounter", v242);
              xpc_dictionary_set_uint64(v169, "kCBePA5gCounter", v241);
              xpc_dictionary_set_uint64(v169, "kCBtxbf5gTxPct", v240);
              xpc_dictionary_set_uint64(v169, "kCBmrc5gRxPct", v239);
              xpc_dictionary_set_uint64(v169, "kCBepa5gTxPct", v238);
              xpc_dictionary_set_uint64(v169, "kCBtxbf5gEpaTxPct", v237);
              xpc_dictionary_set_uint64(v169, "kCBduration5gTx", v236);
              xpc_dictionary_set_uint64(v169, "kCBduration5gRx", v235);
              xpc_connection_send_message(*(a1 + 16), v169);
              xpc_release(v169);
            }

            break;
          case 5:
            v32 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v34 = sub_10000C7D0(v32, v33);
            v35 = sub_1004106D0(v34, 0xBB8u);
            if (v35)
            {
              memset(v344, 0, 28);
              *v343 = 0u;
              *v342 = 0u;
              memset(buf, 0, sizeof(buf));
              v37 = sub_10000C7D0(v35, v36);
              if (!(*(*v37 + 1648))(v37, v32, buf))
              {
                v38 = xpc_dictionary_create_reply(a2);
                v39 = v38;
                if (v38)
                {
                  xpc_dictionary_set_uint64(v38, "kCBTimeStamp", *buf);
                  xpc_dictionary_set_uint64(v39, "kCBActiveDuration", *&buf[4]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreTxPercentage", *&buf[8]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreRxPercentage", *&buf[10]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreSleepPercentage", *&buf[12]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreIdlePercentage", *&buf[14]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreRxScanPercentage", *&buf[16]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreElnaOnPercentage", *&buf[18]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreElnaOffPercentage", *&buf[20]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreMrcRxPercentage", *&buf[22]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreIpaTxPercentage", *&buf[24]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreEpaTxPercentage", *&buf[26]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreTxbfTxPercentage", *&buf[28]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreEpaTxbfTxPercentage", *&buf[30]);
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreM154TxPercentage", LOWORD(v342[0]));
                  xpc_dictionary_set_uint64(v39, "kCBMainCoreM154RxPercentage", WORD1(v342[0]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreTxPercentage", WORD2(v342[0]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreRxPercentage", HIWORD(v342[0]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreSleepPercentage", LOWORD(v342[1]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreIdlePercentage", WORD1(v342[1]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreRxScanPercentage", WORD2(v342[1]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreElnaOnPercentage", HIWORD(v342[1]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreElnaOffPercentage", LOWORD(v343[0]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreMrcRxPercentage", WORD1(v343[0]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreIpaTxPercentage", WORD2(v343[0]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreEpaTxPercentage", HIWORD(v343[0]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreTxbfTxPercentage", LOWORD(v343[1]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreEpaTxbfTxPercentage", WORD1(v343[1]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreM154TxPercentage", WORD2(v343[1]));
                  xpc_dictionary_set_uint64(v39, "kCBSecondaryCoreM154RxPercentage", HIWORD(v343[1]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreTxPercentage", LOWORD(v344[0]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreRxPercentage", WORD1(v344[0]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreSleepPercentage", WORD2(v344[0]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreIdlePercentage", HIWORD(v344[0]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreRxScanPercentage", LOWORD(v344[1]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreElnaOnPercentage", WORD1(v344[1]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreElnaOffPercentage", WORD2(v344[1]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreMrcRxPercentage", HIWORD(v344[1]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreIpaTxPercentage", LOWORD(v344[2]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreEpaTxPercentage", WORD1(v344[2]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreTxbfTxPercentage", WORD2(v344[2]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreEpaTxbfTxPercentage", HIWORD(v344[2]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreM154TxPercentage", LOWORD(v344[3]));
                  xpc_dictionary_set_uint64(v39, "kCBScanCoreM154RxPercentage", WORD1(v344[3]));
                  xpc_connection_send_message(*(a1 + 16), v39);
                  xpc_release(v39);
                }
              }
            }

            return;
          case 6:
            memset(buf, 0, 24);
            v234 = sub_10037CA58;
            v89 = sub_100013CA4(v9, 0, v11, v12, v13, v14, v15, v16, "kCBCSSetSchedulingShouldUse");
            if (v89)
            {
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_100856A08();
              }
            }

            else
            {
              v170 = sub_10000C7D0(v89, v90);
              LOBYTE(v234) = 0;
              HIDWORD(v233) = *&buf[20];
              LOWORD(v233) = *&buf[16];
              (*(*v170 + 1376))(v170, buf[0], buf[1], *&buf[2], *&buf[4], *&buf[8], *&buf[12], buf[14], v233, v234, buf, "kCBCSSetSchedulingShouldReject", sub_10037CA58, &buf[1], "kCBCSSetSchedulingConnEventCount", sub_10037CAD8, &buf[2], "kCBCSSetSchedulingOffsetMin", sub_1000DB500, &buf[4], "kCBCSSetSchedulingOffsetMax", sub_1000DB500, &buf[8], "kCBCSSetSchedulingEventInterval", sub_10037CAD8, &buf[12], "kCBCSSetSchedulingSubeventsPerEvent", sub_10037CA58, &buf[14], "kCBCSSetSchedulingSubeventInterval", sub_10037CAD8, &buf[16], "kCBCSSetSchedulingSubeventLenMax", sub_1000DB500, &buf[20], 0);
            }

            return;
          case 7:
            v111 = xpc_dictionary_get_int64(v9, "kCBMsgArgOptions");
            if (v111 > 6)
            {
              if (v111 <= 9)
              {
                if (v111 == 7)
                {
                  v199 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerCryptoVectorValidation", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CC744();
                }

                else if (v111 == 8)
                {
                  v215 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerGetCurrentAdvertisingPayload", buf, 2u);
                  }

                  *&buf[8] = 0;
                  *buf = 0;
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_10050F874(off_100B54768, buf);
                  v216 = xpc_dictionary_create_reply(a2);
                  if (v216)
                  {
                    v217 = sub_10000C5F8(buf);
                    v218 = sub_10000C5E0(buf);
                    xpc_dictionary_set_data(v216, "kCBMsgArgAdvertisingPayload", v217, v218);
                    xpc_connection_send_message(*(a1 + 16), v216);
                    xpc_release(v216);
                  }

                  *buf = &off_100AE0A78;
                  if (*&buf[8])
                  {
                    sub_10000C808(*&buf[8]);
                  }
                }

                else
                {
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  v249 = [*(off_100B54768 + 21) copy];
                  v144 = xpc_array_create(0, 0);
                  v328 = 0u;
                  v327 = 0u;
                  v326 = 0u;
                  v325 = 0u;
                  obj = v249;
                  v145 = [obj countByEnumeratingWithState:&v325 objects:v339 count:16];
                  if (v145)
                  {
                    v146 = *v326;
                    do
                    {
                      for (i = 0; i != v145; i = i + 1)
                      {
                        if (*v326 != v146)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v148 = *(*(&v325 + 1) + 8 * i);
                        v149 = xpc_dictionary_create(0, 0, 0);
                        v150 = [v148 objectForKey:@"RPIHistoryTime"];
                        v151 = v150;
                        xpc_dictionary_set_string(v149, "RPIHistoryTime", [v150 UTF8String]);

                        memset(buf, 0, 20);
                        v152 = [v148 objectForKey:@"RPIHistoryOTAPayload"];
                        [v152 getBytes:buf length:20];

                        xpc_dictionary_set_data(v149, "RPIHistoryOTAPayload", buf, 0x14uLL);
                        v153 = [v148 objectForKey:@"RPIHistoryAEMVersion"];
                        xpc_dictionary_set_int64(v149, "RPIHistoryAEMVersion", [v153 intValue]);

                        v154 = [v148 objectForKey:@"RPIHistoryAEMTxPower"];
                        xpc_dictionary_set_int64(v149, "RPIHistoryAEMTxPower", [v154 intValue]);

                        v155 = [v148 objectForKey:@"RPIHistorySecondsSince1970"];
                        xpc_dictionary_set_int64(v149, "RPIHistorySecondsSince1970", [v155 intValue]);

                        v156 = [v148 objectForKey:@"RPIHistoryENIntervalNumber"];
                        xpc_dictionary_set_int64(v149, "RPIHistoryENIntervalNumber", [v156 intValue]);

                        xpc_array_append_value(v144, v149);
                        xpc_release(v149);
                      }

                      v145 = [obj countByEnumeratingWithState:&v325 objects:v339 count:16];
                    }

                    while (v145);
                  }

                  v157 = xpc_dictionary_create_reply(a2);
                  v158 = v157;
                  if (v157)
                  {
                    xpc_dictionary_set_value(v157, "kCBMsgArgAdvertisingPayloadHistory", v144);
                    xpc_connection_send_message(*(a1 + 16), v158);
                    xpc_release(v158);
                  }
                }

                return;
              }

              switch(v111)
              {
                case 10:
                  v201 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerGetTEKHistory", buf, 2u);
                  }

                  v202 = xpc_dictionary_get_int64(v17, "kCBMsgArgToday");
                  v203 = xpc_dictionary_get_int64(v17, "KCBMsgArgForceRefresh");
                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  v204 = sub_1007CCF40(off_100B508B8, v202 != 0, v203 != 0);
                  v205 = xpc_array_create(0, 0);
                  v332 = 0u;
                  v331 = 0u;
                  v330 = 0u;
                  v329 = 0u;
                  v206 = v204;
                  v207 = [v206 countByEnumeratingWithState:&v329 objects:v340 count:16];
                  if (v207)
                  {
                    v208 = *v330;
                    do
                    {
                      for (j = 0; j != v207; j = j + 1)
                      {
                        if (*v330 != v208)
                        {
                          objc_enumerationMutation(v206);
                        }

                        v210 = *(*(&v329 + 1) + 8 * j);
                        memset(buf, 0, 21);
                        [v210 getBytes:buf length:21];
                        xpc_array_set_data(v205, 0xFFFFFFFFFFFFFFFFLL, buf, 0x15uLL);
                      }

                      v207 = [v206 countByEnumeratingWithState:&v329 objects:v340 count:16];
                    }

                    while (v207);
                  }

                  v211 = xpc_dictionary_create_reply(a2);
                  v212 = v211;
                  if (v211)
                  {
                    xpc_dictionary_set_value(v211, "kCBMsgArgTEKHistory", v205);
                    xpc_connection_send_message(*(a1 + 16), v212);
                    xpc_release(v212);
                  }

                  return;
                case 11:
                  v220 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerCalculateATTN", buf, 2u);
                  }

                  v221 = xpc_dictionary_get_int64(v17, "KCBMsgArgSaturated");
                  v222 = xpc_dictionary_get_int64(v17, "kCBMsgArgRSSI");
                  length = 0;
                  data = xpc_dictionary_get_data(v17, "kCBMsgArgTEK", &length);
                  v316[0] = 0;
                  v224 = xpc_dictionary_get_data(v17, "kCBMsgArgOTARpiAem", v316);
                  v335 = 0;
                  v334 = 0;
                  if (length == 16 && v316[0] == 20)
                  {
                    *buf = *data;
                    *v337 = *v224;
                    v333 = v224[4];
                    if (qword_100B54770 != -1)
                    {
                      sub_1008569E0();
                    }

                    sub_100511CC0(off_100B54768, buf, v337, &v333, v222, v221 != 0, &v334);
                  }

                  v225 = xpc_dictionary_create_reply(a2);
                  v226 = v225;
                  if (v225)
                  {
                    xpc_dictionary_set_uint64(v225, "kCBMsgArgATTN", v335);
                    xpc_connection_send_message(*(a1 + 16), v226);
                    xpc_release(v226);
                  }

                  return;
                case 12:
                  v173 = xpc_dictionary_get_int64(v17, "kCBMsgArgEKRollingPeriod");
                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CE098(off_100B508B8, v173);
                  return;
              }
            }

            else
            {
              if (v111 > 3)
              {
                if (v111 == 4)
                {
                  v200 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerDebugFillTEKHistory", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CD9B0(off_100B508B8, 30);
                }

                else if (v111 == 5)
                {
                  v219 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerForceTEKRotation", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CD2D8(off_100B508B8);
                }

                else
                {
                  v171 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerRunRPIBenchmarks", buf, 2u);
                  }

                  v172 = xpc_dictionary_get_int64(v17, "kCBMsgArgKeys");
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_10050F62C(off_100B54768, v172);
                }

                return;
              }

              switch(v111)
              {
                case 1:
                  v195 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerStart", buf, 2u);
                  }

                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_100612A00(off_100B54768 + 176, a1 + 160);
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  v196 = off_100B54768;
                  v197 = *(a1 + 96);
                  Current = CFAbsoluteTimeGetCurrent();
                  sub_1005101D4(v196, v197, Current);
                  return;
                case 2:
                  v213 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerStop", buf, 2u);
                  }

                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_1005105F0(off_100B54768, v214);
                  return;
                case 3:
                  v112 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerReset", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CCBEC(off_100B508B8);
                  return;
              }
            }

            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_142;
            }

            return;
          case 8:
            if (qword_100B50C68 != -1)
            {
              sub_100856880();
            }

            sub_10072D4E4(off_100B50C60, v10);
            return;
          case 9:
            v123 = xpc_dictionary_get_int64(v9, "kCBMsgArgOptions");
            if (v123 > 2)
            {
              if (v123 == 3)
              {
                v113 = sub_10037CDF8(v17, "kCBMsgArgDeviceUUID");
                if (v113)
                {
                  if (qword_100B512D8 != -1)
                  {
                    sub_100856954();
                  }

                  sub_100311628(off_100B512D0, v113);
                }

                goto LABEL_151;
              }

              if (v123 == 4)
              {
                if (qword_100B512D8 != -1)
                {
                  sub_100856954();
                }

                sub_1003119A8(off_100B512D0);
                return;
              }
            }

            else
            {
              if (v123 == 1)
              {
                memset(buf, 0, 24);
                if (qword_100B512D8 != -1)
                {
                  sub_100856954();
                }

                if (!sub_10031174C(off_100B512D0, buf))
                {
                  v227 = xpc_array_create(0, 0);
                  if (v227)
                  {
                    v228 = *buf;
                    v229 = *&buf[8];
                    while (v228 != v229)
                    {
                      v230 = sub_10005201C(*v228, *(a1 + 168), *(a1 + 80));
                      xpc_array_append_value(v227, v230);
                      xpc_release(v230);
                      ++v228;
                    }

                    v231 = xpc_dictionary_create_reply(a2);
                    v232 = v231;
                    if (v231)
                    {
                      xpc_dictionary_set_value(v231, "kCBMsgArgDevices", v227);
                      xpc_connection_send_message(*(a1 + 16), v232);
                      xpc_release(v232);
                    }
                  }
                }

                v337[0] = buf;
                sub_100506518(v337);
                return;
              }

              if (v123 == 2)
              {
                v113 = sub_10037CDF8(v17, "kCBMsgArgDeviceUUID");
                if (v113)
                {
                  if (qword_100B512D8 != -1)
                  {
                    sub_100856954();
                  }

                  sub_1003110A8(off_100B512D0, v113);
                }

                goto LABEL_151;
              }
            }

            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
LABEL_142:
              sub_10085697C();
            }

            return;
          case 10:
            v40 = xpc_dictionary_get_int64(v9, "kCBMsgArgOptions");
            v41 = sub_100013C04(v17, "kCBMsgArgApplicationID");
            if (_os_feature_enabled_impl())
            {
              if (v40 == 1)
              {
                v174 = sub_100066200(v17, "kCBMsgArgUUIDs");
                v175 = sub_10003ED64(v17, "kCBMsgArgNameSubstring");
                memset(buf, 0, 24);
                v176 = xpc_dictionary_get_value(v17, "kCBMsgArgServices");
                if (v176)
                {
                  sub_1000660D0(v176, buf);
                }

                v337[1] = 0;
                v337[0] = 0;
                v338 = 0;
                v177 = xpc_dictionary_get_value(v17, "kCBMsgArgMfgrIdentifiers");
                if (v177)
                {
                  sub_10037CC18(v177, v337);
                }

                v323 = 0;
                length = 0;
                v324 = 0;
                v318 = 0u;
                v319 = 0u;
                v320 = 0u;
                v321 = 0u;
                v178 = v175;
                v179 = [v178 countByEnumeratingWithState:&v318 objects:v336 count:16];
                if (v179)
                {
                  v180 = *v319;
                  do
                  {
                    for (k = 0; k != v179; k = k + 1)
                    {
                      if (*v319 != v180)
                      {
                        objc_enumerationMutation(v178);
                      }

                      v182 = *(*(&v318 + 1) + 8 * k);
                      v183 = v182;
                      sub_100007E30(v316, [v182 UTF8String]);
                      sub_10034A52C(&length, v316);
                      if (v317 < 0)
                      {
                        operator delete(v316[0]);
                      }
                    }

                    v179 = [v178 countByEnumeratingWithState:&v318 objects:v336 count:16];
                  }

                  while (v179);
                }

                if (qword_100B512F8 != -1)
                {
                  sub_1008565BC();
                }

                v184 = off_100B512F0;
                sub_10000CB74(v315, buf);
                __dst = 0;
                __p = 0;
                v314 = 0;
                if (v337[1] != v337[0])
                {
                  sub_1003C46A8(&__p, (v337[1] - v337[0]) >> 1);
                }

                memset(v311, 0, sizeof(v311));
                sub_10003E428(v311, length, v323, 0xAAAAAAAAAAAAAAABLL * ((v323 - length) >> 3));
                sub_1003C0BFC(v184, v41, v174, v315, &__p, v311);
                v316[0] = v311;
                sub_1000161FC(v316);
                if (__p)
                {
                  __dst = __p;
                  operator delete(__p);
                }

                if (v315[0])
                {
                  v315[1] = v315[0];
                  operator delete(v315[0]);
                }

                v316[0] = &length;
                sub_1000161FC(v316);
                if (v337[0])
                {
                  v337[1] = v337[0];
                  operator delete(v337[0]);
                }

                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }
              }

              else if (v40 == 2)
              {
                if (qword_100B512F8 != -1)
                {
                  sub_1008565BC();
                }

                sub_1003C1184(off_100B512F0, v41);
              }

              else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_1008568E4();
              }

              v185 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v40;
                *&buf[12] = 2112;
                *&buf[14] = v41;
                _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "CBDebugCommandDeviceAccessNotification opcode:%llu bundle:%@", buf, 0x16u);
              }
            }

            return;
          case 11:
            v117 = sub_10037CE6C(v9, "kCBMsgArgIRK");
            v118 = sub_10037CE6C(v17, "kCBMsgArgAddressBytes");
            v119 = qword_100BCE950;
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v118;
              *&buf[12] = 2112;
              *&buf[14] = v117;
              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "CBDebugCommandResolveLERandomAddressWithIRK address:%@ irk:%@", buf, 0x16u);
            }

            if (v117 && [v117 length] == 16 && v118 && objc_msgSend(v118, "length") == 6)
            {
              v120 = v117;
              v121 = [v117 bytes];
              *(v337 + 5) = 0;
              *(v337 + 1) = 0;
              LOBYTE(v337[0]) = 1;
              [v118 getBytes:v337 + 1 length:6];
              if (sub_100045978(v337, v121))
              {
                v122 = 0;
              }

              else
              {
                v186 = objc_opt_new();
                v187 = v121 + 15;
                v188 = 16;
                do
                {
                  [v186 appendBytes:v187-- length:1];
                  --v188;
                }

                while (v188);
                v189 = qword_100BCE950;
                if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v118;
                  *&buf[12] = 2112;
                  *&buf[14] = v186;
                  _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "CBDebugCommandResolveLERandomAddressWithIRK address:%@ irk:%@", buf, 0x16u);
                }

                v190 = v186;
                if (sub_100045978(v337, [v186 bytes]))
                {
                  v122 = 0;
                }

                else
                {
                  v122 = 2200;
                }
              }

              v191 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                v192 = sub_100063D0C((BYTE1(v337[0]) << 40) | (BYTE2(v337[0]) << 32) | (BYTE3(v337[0]) << 24) | (BYTE4(v337[0]) << 16) | (BYTE5(v337[0]) << 8) | BYTE6(v337[0]) | (LOBYTE(v337[0]) << 48));
                *buf = 138412546;
                *&buf[4] = v192;
                *&buf[12] = 1024;
                *&buf[14] = v122 & 0x98;
                _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "CBDebugCommandResolveLERandomAddressWithIRK LE_ResolveUsingIRK for address %@ returned %d", buf, 0x12u);
              }
            }

            else
            {
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_1008568A8();
              }

              if (v118 && [v118 length] == 6)
              {
                if (v117 && [v117 length] == 16)
                {
                  v122 = 0;
                }

                else
                {
                  v122 = 21;
                }
              }

              else
              {
                v122 = 8;
              }
            }

            v193 = xpc_dictionary_create_reply(a2);
            v194 = v193;
            if (v193)
            {
              xpc_dictionary_set_int64(v193, "kCBMsgArgResult", v122);
              xpc_connection_send_message(*(a1 + 16), v194);
              xpc_release(v194);
            }

            return;
          case 12:
            v29 = xpc_dictionary_get_int64(v9, "addressType");
            v30 = xpc_dictionary_get_int64(v17, "refreshIdentity");
            if (qword_100B50C68 != -1)
            {
              sub_100856880();
            }

            if (v29)
            {
              v31 = 2;
            }

            else
            {
              v31 = 3;
            }

            sub_10072D25C(off_100B50C60, 1, v31, v30 != 0);
            return;
          case 13:
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            *&buf[24] = xpc_dictionary_create_reply(a2);
            if (qword_100B508B0 != -1)
            {
              sub_10085681C();
            }

            v310[0] = _NSConcreteStackBlock;
            v310[1] = 3221225472;
            v310[2] = sub_10066A488;
            v310[3] = &unk_100B045A0;
            v310[5] = a1;
            v310[4] = buf;
            sub_100770BD0(off_100B508A8, v310);
            _Block_object_dispose(buf, 8);
            return;
          case 14:
            v104 = sub_10037CE6C(v9, "kCBFastLeConnectionInfoData");
            v105 = xpc_dictionary_get_int64(v17, "kCBFastLeConnectionInfoVersion");
            v106 = sub_10037CDF8(v17, "kCBMsgArgDeviceUUID");
            v108 = sub_100007EE8(v106, v107);
            v304[0] = _NSConcreteStackBlock;
            v304[1] = 3221225472;
            v304[2] = sub_10066A5BC;
            v304[3] = &unk_100B045C8;
            v307 = a1;
            v109 = v106;
            v305 = v109;
            v309 = v105;
            v110 = v104;
            v306 = v110;
            v308 = a2;
            sub_10000D334(v108, v304);

            return;
          case 15:
            v25 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v27 = sub_100007EE8(v25, v26);
            v300[0] = _NSConcreteStackBlock;
            v300[1] = 3221225472;
            v300[2] = sub_10066A67C;
            v300[3] = &unk_100AE0BC0;
            v302 = a1;
            v28 = v25;
            v301 = v28;
            v303 = a2;
            sub_10000D334(v27, v300);

            return;
          case 16:
            v59 = sub_10037CE6C(v9, "kCBMsgArgLTK");
            v60 = sub_10037CDF8(v17, "kCBMsgArgDeviceUUID");
            v62 = sub_100007EE8(v60, v61);
            v290[0] = _NSConcreteStackBlock;
            v290[1] = 3221225472;
            v290[2] = sub_10066A7F0;
            v290[3] = &unk_100B045F0;
            v293 = a1;
            v63 = v60;
            v291 = v63;
            v64 = v59;
            v292 = v64;
            v294 = a2;
            sub_10000D334(v62, v290);

            return;
          case 17:
            v21 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v23 = sub_100007EE8(v21, v22);
            v286[0] = _NSConcreteStackBlock;
            v286[1] = 3221225472;
            v286[2] = sub_10066A94C;
            v286[3] = &unk_100AE0BC0;
            v288 = a1;
            v24 = v21;
            v287 = v24;
            v289 = a2;
            sub_10000D334(v23, v286);

            return;
          case 18:
            v75 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v76 = xpc_dictionary_get_int64(v17, "kCBMsgArgOptions");
            v77 = v76;
            v79 = sub_100007EE8(v76, v78);
            v295[0] = _NSConcreteStackBlock;
            v295[1] = 3221225472;
            v295[2] = sub_10066A730;
            v295[3] = &unk_100AEDEF0;
            v297 = a1;
            v80 = v75;
            v299 = v77;
            v296 = v80;
            v298 = a2;
            sub_10000D334(v79, v295);

            return;
          case 19:
            v113 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            if (v113)
            {
              if (qword_100B508B0 != -1)
              {
                sub_10085681C();
              }

              v114 = off_100B508A8;
              sub_10004DFB4(buf, v113);
              v115 = sub_100756F48(v114, buf, 0, 0, 0, 0, 0);
              v116 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v113;
                *&buf[12] = 1024;
                *&buf[14] = v115;
                _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "CBDebugCommandDisableHostWakeupOnLinkDrop identifier:%@ returned %d", buf, 0x12u);
              }
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100856844();
            }

LABEL_151:

            return;
          case 20:
            v130 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v131 = xpc_dictionary_get_int64(v17, "kCBLePowerControlDisable");
            v132 = xpc_dictionary_get_int64(v17, "kCBLePowerControlRssiMin");
            v133 = xpc_dictionary_get_int64(v17, "kCBLePowerControlRssiMax");
            v134 = v133;
            v136 = sub_100007EE8(v133, v135);
            v263[0] = _NSConcreteStackBlock;
            v263[1] = 3221225472;
            v263[2] = sub_10066ACA8;
            v263[3] = &unk_100B04668;
            v265 = a1;
            v137 = v130;
            v267 = v131;
            v268 = v132;
            v269 = v134;
            v264 = v137;
            v266 = a2;
            sub_10000D334(v136, v263);

            return;
          case 21:
            v81 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v82 = sub_100013C04(v17, "operation");
            v83 = xpc_dictionary_get_int64(v17, "command");
            v84 = v83;
            v86 = sub_100007EE8(v83, v85);
            v280[0] = _NSConcreteStackBlock;
            v280[1] = 3221225472;
            v280[2] = sub_10066AA7C;
            v280[3] = &unk_100B04618;
            v283 = a1;
            v87 = v82;
            v281 = v87;
            v285 = v84;
            v88 = v81;
            v282 = v88;
            v284 = a2;
            sub_10000D334(v86, v280);

            return;
          case 22:
            v91 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v92 = xpc_dictionary_get_double(v17, "kCBMsgArgMinConnectionInterval");
            v93 = xpc_dictionary_get_double(v17, "kCBMsgArgPreferredConnectionInterval");
            v94 = xpc_dictionary_get_double(v17, "kCBMsgArgMaxConnectionInterval");
            v95 = xpc_dictionary_get_int64(v17, "kCBMsgArgPreferredConnectionLatency");
            v96 = xpc_dictionary_get_int64(v17, "kCBMsgArgMaxConnectionLatency");
            v97 = xpc_dictionary_get_int64(v17, "kCBMsgArgMinCELength");
            v98 = xpc_dictionary_get_int64(v17, "kCBMsgArgMaxCELength");
            v99 = xpc_dictionary_get_int64(v17, "kCBMsgArgSupervisionTimeout");
            v100 = v99;
            v102 = sub_100007EE8(v99, v101);
            v270[0] = _NSConcreteStackBlock;
            v270[1] = 3221225472;
            v270[2] = sub_10066ABFC;
            v270[3] = &unk_100B04640;
            v103 = v91;
            v271 = v103;
            *&v92 = v92;
            v272 = LODWORD(v92);
            *&v93 = v93;
            v273 = LODWORD(v93);
            *&v94 = v94;
            v274 = LODWORD(v94);
            v275 = v97;
            v276 = v98;
            v277 = v95;
            v278 = v96;
            v279 = v100;
            sub_10000CA94(v102, v270);

            return;
          case 23:
            v124 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v125 = xpc_dictionary_get_int64(v17, "command");
            v126 = v125;
            v128 = sub_100007EE8(v125, v127);
            v258[0] = _NSConcreteStackBlock;
            v258[1] = 3221225472;
            v258[2] = sub_10066AD74;
            v258[3] = &unk_100AEDEF0;
            v260 = a1;
            v262 = v126;
            v129 = v124;
            v259 = v129;
            v261 = a2;
            sub_10000D334(v128, v258);

            return;
          case 24:
            v138 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v139 = xpc_dictionary_get_int64(v17, "command");
            v140 = v139;
            v142 = sub_100007EE8(v139, v141);
            v253[0] = _NSConcreteStackBlock;
            v253[1] = 3221225472;
            v253[2] = sub_10066AEB4;
            v253[3] = &unk_100AEDEF0;
            v255 = a1;
            v257 = v140;
            v143 = v138;
            v254 = v143;
            v256 = a2;
            sub_10000D334(v142, v253);

            return;
          case 25:
            v50 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v52 = sub_10000C7D0(v50, v51);
            v53 = sub_1004106D0(v52, 0xBB8u);
            if (v53)
            {
              *v343 = 0u;
              *v342 = 0u;
              memset(buf, 0, sizeof(buf));
              v55 = sub_10000C7D0(v53, v54);
              if (!(*(*v55 + 1632))(v55, v50, buf))
              {
                v56 = xpc_dictionary_create_reply(a2);
                v57 = v56;
                if (v56)
                {
                  xpc_dictionary_set_uint64(v56, "kCBtxHciCompleted", *buf);
                  xpc_dictionary_set_uint64(v57, "kCBtxAclCompleted", *&buf[4]);
                  xpc_dictionary_set_uint64(v57, "kCBtxScoCompleted", *&buf[8]);
                  xpc_dictionary_set_uint64(v57, "kCBtxLeCompleted", *&buf[12]);
                  xpc_dictionary_set_uint64(v57, "kCBtxLeaCompleted", *&buf[16]);
                  xpc_dictionary_set_uint64(v57, "kCBtxLlaCompleted", *&buf[20]);
                  xpc_dictionary_set_uint64(v57, "kCBtxTsiCompleted", *&buf[24]);
                  xpc_dictionary_set_uint64(v57, "kCBrxHciQueued", *&buf[28]);
                  xpc_dictionary_set_uint64(v57, "kCBrxAclQueued", LODWORD(v342[0]));
                  xpc_dictionary_set_uint64(v57, "kCBrxScoQueued", HIDWORD(v342[0]));
                  xpc_dictionary_set_uint64(v57, "kCBrxLeQueued", LODWORD(v342[1]));
                  xpc_dictionary_set_uint64(v57, "kCBrxLeaQueued", HIDWORD(v342[1]));
                  xpc_dictionary_set_uint64(v57, "kCBrxLmpQueued", LODWORD(v343[0]));
                  xpc_dictionary_set_uint64(v57, "kCBrxTsiQueued", HIDWORD(v343[0]));
                  xpc_dictionary_set_uint64(v57, "kCBrxDebugQueued", LODWORD(v343[1]));
                  xpc_dictionary_set_uint64(v57, "kCBmsiMain", HIDWORD(v343[1]));
                  xpc_connection_send_message(*(a1 + 16), v57);
                  xpc_release(v57);
                }
              }
            }

            return;
          case 26:
            v42 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v44 = sub_10000C7D0(v42, v43);
            v45 = sub_1004106D0(v44, 0xBB8u);
            if (v45)
            {
              *&buf[8] = 0;
              *buf = 0;
              v47 = sub_10000C7D0(v45, v46);
              if (!(*(*v47 + 1640))(v47, v42, buf))
              {
                v48 = xpc_dictionary_create_reply(a2);
                v49 = v48;
                if (v48)
                {
                  xpc_dictionary_set_uint64(v48, "kCBiPACounter", *buf);
                  xpc_dictionary_set_uint64(v49, "kCBePACounter", *&buf[4]);
                  xpc_dictionary_set_uint64(v49, "kCBiPAThreadCounter", *&buf[8]);
                  xpc_dictionary_set_uint64(v49, "kCBePAThreadCounter", *&buf[12]);
                  xpc_connection_send_message(*(a1 + 16), v49);
                  xpc_release(v49);
                }
              }
            }

            return;
          case 27:
            *buf = 0;
            sub_1000C08D0(buf);
            if (sub_1002D2100(*buf, 0) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_1008567AC();
            }

            return;
          default:
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100856A78();
            }

            return;
        }
      }
    }
  }
}

void sub_100650CD4(_Unwind_Exception *a1)
{
  STACK[0x5E0] = &STACK[0x700];
  sub_100506518(&STACK[0x5E0]);
  _Unwind_Resume(a1);
}

void sub_1006510B4(uint64_t a1, xpc_object_t xdict)
{
  v15 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 0, v4, v5, v6, v7, v8, v9, "kCBMsgArgProgrammaticPairing");
  if (!v10)
  {
    v12 = sub_100007EE8(v10, v11);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10066AFF0;
    v13[3] = &unk_100AE15D8;
    v13[4] = a1;
    v14 = 0;
    sub_10000D334(v12, v13);
    *(a1 + 168) = 1;
  }
}

void sub_100651190(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10066B04C;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

void sub_10065120C(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  v6 = sub_100007EE8(v4, v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10066B0A0;
  v9[3] = &unk_100AE0860;
  v9[4] = a1;
  v9[5] = v4;
  sub_10000D334(v6, v9);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v4);
    xpc_connection_send_message(*(a1 + 16), v8);
    xpc_release(v8);
  }

  xpc_release(v4);
}

void sub_1006512E0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 186) == 1)
  {
    v25 = 1;
    v26 = 1;
    v24 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
      {
        v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
        v13 = sub_100013CA4(v6, 0, v7, v8, v9, v10, v11, v12, "kCBMsgArgPairingOptionsUseMITMAuthentication");
        if (!v13)
        {
          v15 = sub_100007EE8(v13, v14);
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10066B200;
          v19[3] = &unk_100AEB858;
          v20 = v5;
          v21 = v26;
          v22 = v25;
          v23 = v24;
          sub_10000D334(v15, v19);
        }
      }

      else
      {
        v16 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 96);
          v18 = *(a1 + 48);
          *buf = 138412802;
          v28 = v17;
          v29 = 2112;
          v30 = v18;
          v31 = 2112;
          v32 = v5;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
        }
      }
    }
  }
}

void sub_10065152C(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v13 = sub_100013CA4(v6, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgPairingType");
  if (!v13 && v5)
  {
    *&v23 = 0;
    v15 = sub_100007EE8(v13, v14);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10066B2DC;
    v16[3] = &unk_100AEB858;
    v18 = a1;
    v17 = v5;
    v19 = v21;
    v20 = v23;
    sub_10000D334(v15, v16);
  }
}

void sub_100651938(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 186) == 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_10037CEF8(value, "kCBUnpairOptionForceDisconnect");
    v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      v6 = sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48));
      v7 = qword_100BCE950;
      if (v6)
      {
        v8 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          v10 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v10 = *v10;
          }

          *buf = 136446722;
          v19 = v10;
          if (v4)
          {
            v11 = "YES";
          }

          else
          {
            v11 = "NO";
          }

          v20 = 2112;
          v21 = v5;
          v22 = 2080;
          v23 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to unpair device %@ forceDisconnect:%s", buf, 0x20u);
        }

        v12 = sub_100007EE8(v8, v9);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10066B348;
        v15[3] = &unk_100AE1750;
        v16 = v5;
        v17 = v4;
        sub_10000D334(v12, v15);
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 96);
        v14 = *(a1 + 48);
        *buf = 138412802;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }
}

void sub_100651BA8(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgUseOOBPairing");
  v13 = sub_100007EE8(v11, v12);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10066B40C;
  v15[3] = &unk_100AE0BC0;
  v17 = a1;
  v14 = v4;
  v16 = v14;
  v18 = v19;
  sub_10000D334(v13, v15);
}

void sub_100651CD0(uint64_t a1, xpc_object_t xdict)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_100007EE8(v5, v6);
  length_2[0] = _NSConcreteStackBlock;
  length_2[1] = 3221225472;
  length_2[2] = sub_10066B474;
  length_2[3] = &unk_100AF5598;
  v14 = &v16;
  v15 = a1;
  v8 = v5;
  v13 = v8;
  sub_10000D334(v7, length_2);
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = v17[3];
    if (v10)
    {
      length = 0;
      sub_1007B5DC8(v10, &length);
    }

    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }

  _Block_object_dispose(&v16, 8);
}

void sub_100651E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100651E80(uint64_t a1, void *a2)
{
  if (_os_feature_enabled_impl() && *(a1 + 86) == 1)
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v5 = sub_10037CE6C(value, "kCBGlobalTemporaryLTK");
    if ([v5 length])
    {
      v16 = 0;
      v6 = xpc_dictionary_get_value(a2, "kCBOptionUseCase");
      if (v6)
      {
        sub_100013DE8(v6, &v16);
      }

      if (qword_100B508C0 != -1)
      {
        sub_1008569B8();
      }

      v7 = off_100B508B8;
      v8 = v5;
      v9 = [v5 bytes];
      v10 = [v5 length];
      v11 = sub_1007C7334(v7, v9, v10, v16);
      v12 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v13 = *v13;
        }

        v14 = [v5 length];
        v15 = sub_10002C70C(v16);
        *buf = 136446978;
        v18 = v13;
        v19 = 1024;
        v20 = v14;
        v21 = 2080;
        v22 = v15;
        v23 = 1024;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to set LTK size %d useCase %s result %d", buf, 0x22u);
      }
    }
  }
}

uint64_t sub_100652068(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result && *(a1 + 86) == 1)
  {
    v3 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v4 = *v4;
      }

      v5 = 136446210;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to clear LTK", &v5, 0xCu);
    }

    if (qword_100B508C0 != -1)
    {
      sub_1008569B8();
    }

    return sub_1007BCDBC(off_100B508B8);
  }

  return result;
}

void sub_100652164(uint64_t result, xpc_object_t xdict)
{
  if (*(result + 80) >= 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_1000C9AAC(value, "kCBMsgArgReasonEnum");
    v5 = [v4 intValue];

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856B74(result, v5);
    }
  }
}

void sub_10065220C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgResourceKey");
  v6 = sub_100013C04(value, "kCBMsgArgResourceSubKey");
  if (*(a1 + 80) >= 1)
  {
    if (v5 && [v5 length])
    {
      v7 = [v5 isEqualToString:CBManagerResourceADVBufferCount];
      if (v7)
      {
        v9 = sub_10000C798(v7, v8);
        v10 = (*(*v9 + 744))(v9);
        if (qword_100B51078 != -1)
        {
          sub_100856D04();
        }

        v11 = 0;
        v12 = v10;
        v13 = v10 - sub_1007A5C58(off_100B51070);
        goto LABEL_14;
      }

      if ([v5 isEqualToString:CBManagerResourceConnectionUsecaseCount])
      {
        v16 = objc_alloc_init(NSNumberFormatter);
        [v16 setNumberStyle:1];
        v17 = [v16 numberFromString:v6];
        if (qword_100B54208 != -1)
        {
          sub_100856CF0();
        }

        v18 = sub_1007F024C(qword_100B54200, [v17 unsignedIntegerValue]);
        if (qword_100B54208 != -1)
        {
          sub_100856CF0();
        }

        v12 = v18;
        v13 = v18 - sub_1007F0440(qword_100B54200, [v17 unsignedIntegerValue]);

        v11 = 0;
        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100856C7C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856D18();
    }

    v13 = 0;
    v12 = 0;
    v11 = 3;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856C40();
  }

  v13 = 0;
  v12 = 0;
  v11 = 17;
LABEL_14:
  reply = xpc_dictionary_create_reply(xdict);
  v15 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResourceTotalCount", v12);
    xpc_dictionary_set_int64(v15, "kCBMsgArgResourceRemainingCount", v13);
    xpc_dictionary_set_int64(v15, "kCBMsgArgResult", v11);
    xpc_connection_send_message(*(a1 + 16), v15);
    xpc_release(v15);
  }
}

void sub_100652530(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgApplicationID");
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  reply = xpc_dictionary_create_reply(xdict);
  v16 = reply;
  if (v14[3])
  {
    v8 = sub_100007EE8(reply, v7);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10066B9C4;
    v9[3] = &unk_100B046B8;
    v12 = a1;
    v10 = v5;
    v11 = &v13;
    sub_10000CA94(v8, v9);
  }

  _Block_object_dispose(&v13, 8);
}

void sub_100652634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100652668(uint64_t a1, xpc_object_t xdict)
{
  v42 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  reply = xpc_dictionary_create_reply(xdict);
  if (*(a1 + 80) >= 1 && ([&off_100B345A0 containsObject:*(a1 + 96)] & 1) != 0)
  {
    if (reply && !v11)
    {
      v37 = sub_10003ED64(v42, "kCBOptionStateDetailList");
      if (v37 && [v37 count])
      {
        v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v37 count]);
        if ([v37 containsObject:@"kCBMsgArgIsA2DPSessionActive"])
        {
          v13 = [NSNumber numberWithInt:0];
          [v36 addObject:v13];
        }

        if ([v37 containsObject:@"kCBMsgArgIsHFPSessionActive"])
        {
          v14 = [NSNumber numberWithInt:1];
          [v36 addObject:v14];
        }

        if ([v37 containsObject:@"kCBMsgArgIsISOPipeSessionActive"])
        {
          v15 = [NSNumber numberWithInt:2];
          [v36 addObject:v15];
        }

        if ([v37 containsObject:@"kCBMsgArgIsLEASessionActive"])
        {
          v16 = [NSNumber numberWithInt:3];
          [v36 addObject:v16];
        }

        if ([v37 containsObject:@"kCBMsgArgIsWatchConnected"])
        {
          v17 = [NSNumber numberWithInt:4];
          [v36 addObject:v17];
        }

        if ([v37 containsObject:@"kCBMsgArgClassicDevicesConnectedCount"])
        {
          v18 = [NSNumber numberWithInt:5];
          [v36 addObject:v18];
        }

        if ([v37 containsObject:@"kCBMsgArgLeDevicesConnectedCount"])
        {
          v19 = [NSNumber numberWithInt:6];
          [v36 addObject:v19];
        }

        if ([v37 containsObject:@"kCBMsgArgClassicHIDDevicesConnectedCount"])
        {
          v20 = [NSNumber numberWithInt:7];
          [v36 addObject:v20];
        }

        if ([v37 containsObject:@"kCBMsgArgLeHIDDevicesConnectedCount"])
        {
          v21 = [NSNumber numberWithInt:8];
          [v36 addObject:v21];
        }

        if ([v37 containsObject:@"kCBMsgArgIsConnectionPrioritizationSupported"])
        {
          v22 = [NSNumber numberWithInt:9];
          [v36 addObject:v22];
        }

        if ([v37 containsObject:@"kCBMsgArgIsProtectLEA"])
        {
          v23 = [NSNumber numberWithInt:10];
          [v36 addObject:v23];
        }

        v24 = objc_opt_new();
        v26 = sub_10000F034(v24, v25);
        (*(*v26 + 656))(v26, v36, v24);
        if ([v24 count])
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v27 = v24;
          v28 = [v27 countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (!v28)
          {
            goto LABEL_61;
          }

          v29 = *v39;
          while (1)
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v39 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v38 + 1) + 8 * i);
              v32 = [v31 intValue];
              if (v32 <= 4)
              {
                if (v32 <= 1)
                {
                  if (v32)
                  {
                    if (v32 != 1)
                    {
                      continue;
                    }

                    v33 = [v27 objectForKeyedSubscript:v31];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsHFPSessionActive", [v33 BOOLValue]);
                  }

                  else
                  {
                    v33 = [v27 objectForKeyedSubscript:v31];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsA2DPSessionActive", [v33 BOOLValue]);
                  }
                }

                else if (v32 == 2)
                {
                  v33 = [v27 objectForKeyedSubscript:v31];
                  xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsISOPipeSessionActive", [v33 BOOLValue]);
                }

                else if (v32 == 3)
                {
                  v33 = [v27 objectForKeyedSubscript:v31];
                  xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsLEASessionActive", [v33 BOOLValue]);
                }

                else
                {
                  v33 = [v27 objectForKeyedSubscript:v31];
                  xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsWatchConnected", [v33 BOOLValue]);
                }
              }

              else if (v32 > 7)
              {
                switch(v32)
                {
                  case 8:
                    v33 = [v27 objectForKeyedSubscript:v31];
                    xpc_dictionary_set_int64(reply, "kCBMsgArgLeHIDDevicesConnectedCount", [v33 intValue]);
                    break;
                  case 9:
                    v33 = [v27 objectForKeyedSubscript:v31];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsConnectionPrioritizationSupported", [v33 BOOLValue]);
                    break;
                  case 10:
                    v33 = [v27 objectForKeyedSubscript:v31];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsProtectLEA", [v33 BOOLValue]);
                    break;
                  default:
                    continue;
                }
              }

              else if (v32 == 5)
              {
                v33 = [v27 objectForKeyedSubscript:v31];
                xpc_dictionary_set_int64(reply, "kCBMsgArgClassicDevicesConnectedCount", [v33 intValue]);
              }

              else if (v32 == 6)
              {
                v33 = [v27 objectForKeyedSubscript:v31];
                xpc_dictionary_set_int64(reply, "kCBMsgArgLeDevicesConnectedCount", [v33 intValue]);
              }

              else
              {
                v33 = [v27 objectForKeyedSubscript:v31];
                xpc_dictionary_set_int64(reply, "kCBMsgArgClassicHIDDevicesConnectedCount", [v33 intValue]);
              }
            }

            v28 = [v27 countByEnumeratingWithState:&v38 objects:v43 count:16];
            if (!v28)
            {
LABEL_61:

              v34 = 0;
              goto LABEL_72;
            }
          }
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100856D54();
        }

        v34 = 3;
LABEL_72:
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100856D90();
        }

        v34 = 3;
      }

      xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v34);
      xpc_connection_send_message(*(a1 + 16), reply);
      xpc_release(reply);
    }
  }

  else
  {
    v35 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856DCC(a1, v35);
    }

    if (reply)
    {
      xpc_dictionary_set_int64(reply, "kCBMsgArgResult", 13);
      xpc_connection_send_message(*(a1 + 16), reply);
      xpc_release(reply);
    }
  }
}

void sub_100652FFC(uint64_t a1, void *a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_1006533A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18, ...)
{
  va_start(va, a18);

  if (a18)
  {
    sub_10000C808(a18);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100653430(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10066D6B8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
  sub_10004DFB8(a1, 54, 0, 0);
}

void sub_1006534C0(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &off_100AE0A78;
  *v17 = 0u;
  v18 = 0u;
  v19 = &off_100AE0A78;
  v20 = 0;
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_10066D70C(a1, value, &v15);
    *(v22 + 6) = v4;
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100856EF8();
      }
    }

    else
    {
      v6 = sub_100007EE8(v4, v5);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3321888768;
      v8[2] = sub_10066D97C;
      v8[3] = &unk_100B04718;
      v8[4] = &v21;
      v8[5] = a1;
      v9 = v15;
      v10 = &off_100AE0A78;
      v11 = v17[0];
      if (v17[0])
      {
        sub_10000C69C(v17[0]);
      }

      sub_10000CB74(__p, &v17[1]);
      v13 = &off_100AE0A78;
      v14 = v20;
      if (v20)
      {
        sub_10000C69C(v20);
      }

      sub_10000D334(v6, v8);
      v13 = &off_100AE0A78;
      if (v14)
      {
        sub_10000C808(v14);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v10 = &off_100AE0A78;
      if (v11)
      {
        sub_10000C808(v11);
      }
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "kCBMsgArgResult", *(v22 + 6));
    sub_10004DFB8(a1, 55, v7, 1);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856F68();
  }

  v19 = &off_100AE0A78;
  if (v20)
  {
    sub_10000C808(v20);
  }

  if (v17[1])
  {
    *&v18 = v17[1];
    operator delete(v17[1]);
  }

  v16 = &off_100AE0A78;
  if (v17[0])
  {
    sub_10000C808(v17[0]);
  }

  _Block_object_dispose(&v21, 8);
}

void sub_100653784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_10000C808(a17);
  }

  sub_10066DB48(va);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1006537E8(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &off_100AE0A78;
  *v17 = 0u;
  v18 = 0u;
  v19 = &off_100AE0A78;
  v20 = 0;
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_10066D70C(a1, value, &v15);
    *(v22 + 6) = v4;
    v6 = sub_100007EE8(v4, v5);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3321888768;
    v8[2] = sub_10066DBD4;
    v8[3] = &unk_100B04718;
    v8[4] = &v21;
    v8[5] = a1;
    v9 = v15;
    v10 = &off_100AE0A78;
    v11 = v17[0];
    if (v17[0])
    {
      sub_10000C69C(v17[0]);
    }

    sub_10000CB74(__p, &v17[1]);
    v13 = &off_100AE0A78;
    v14 = v20;
    if (v20)
    {
      sub_10000C69C(v20);
    }

    sub_10000D334(v6, v8);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "kCBMsgArgResult", *(v22 + 6));
    sub_10004DFB8(a1, 56, v7, 1);
    v13 = &off_100AE0A78;
    if (v14)
    {
      sub_10000C808(v14);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = &off_100AE0A78;
    if (v11)
    {
      sub_10000C808(v11);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856FA4();
  }

  v19 = &off_100AE0A78;
  if (v20)
  {
    sub_10000C808(v20);
  }

  if (v17[1])
  {
    *&v18 = v17[1];
    operator delete(v17[1]);
  }

  v16 = &off_100AE0A78;
  if (v17[0])
  {
    sub_10000C808(v17[0]);
  }

  _Block_object_dispose(&v21, 8);
}

void sub_100653A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_10000C808(a17);
  }

  sub_10066DB48(va);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100653ADC(uint64_t a1, void *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v23 = 0uLL;
  v24 = 0;
  v4 = sub_10003A364(&v23);
  v6 = sub_10000F034(v4, v5);
  (*(*v6 + 664))(v6, *(a1 + 96), 3);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v14 = sub_100013CA4(value, 1, v8, v9, v10, v11, v12, v13, "kCBMsgArgAttributeID");
  *(v18 + 6) = v14;
  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856FE0();
    }
  }

  else
  {
    if (qword_100B541E8 != -1)
    {
      sub_1000E7B38();
    }

    if (sub_1004EB220(qword_100B541E0, &v23, *(a1 + 184)))
    {
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v15 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v15 = *v15;
      }

      sub_10003B85C(&v23, &v21);
      sub_10085701C(v15, &v21, v22);
    }

    *(v18 + 6) = 905;
  }

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v16, "kCBMsgArgAttributeID", 0);
  xpc_dictionary_set_int64(v16, "kCBMsgArgResult", *(v18 + 6));
  sub_10004DFB8(a1, 57, v16, 1);
  _Block_object_dispose(&v17, 8);
}

void sub_100654040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Block_object_dispose((v36 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1006540BC(uint64_t a1, xpc_object_t xdict)
{
  v14 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgAttributeID");
  if (!v10)
  {
    v12 = sub_100007EE8(v10, v11);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10066E26C;
    v13[3] = &unk_100AE0860;
    v13[4] = a1;
    v13[5] = v14;
    sub_10000D334(v12, v13);
  }
}

void sub_100654180(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10066E2C8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

void sub_1006541FC(uint64_t a1, xpc_object_t xdict)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = &off_100AE0A78;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgTransactionID");
  if (!v10)
  {
    v12 = sub_100007EE8(v10, v11);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3321888768;
    v13[2] = sub_10066E31C;
    v13[3] = &unk_100B04748;
    v13[4] = a1;
    v13[5] = v21;
    v13[6] = v19;
    v14 = &off_100AE0A78;
    v15 = v18;
    v16 = v20;
    sub_10000D334(v12, v13);
    v14 = &off_100AE0A78;
    if (v15)
    {
      sub_10000C808(v15);
    }
  }

  v17 = &off_100AE0A78;
  if (v18)
  {
    sub_10000C808(v18);
  }
}

void sub_100654398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, atomic_uint *a30)
{
  if (a30)
  {
    sub_10000C808(a30);
  }

  *(v31 - 72) = v30;
  v33 = *(v31 - 64);
  if (v33)
  {
    sub_10000C808(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006543CC(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 0;
  v20 = &off_100AE0A78;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100066200(value, "kCBMsgArgUUIDs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgAttributeID");
  if (!v11 && v4)
  {
    v13 = sub_100007EE8(v11, v12);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3321888768;
    v14[2] = sub_10066E3EC;
    v14[3] = &unk_100B04780;
    v16 = a1;
    v15 = v4;
    v17 = v22;
    v18 = &off_100AE0A78;
    v19 = v21;
    sub_10000D334(v13, v14);
    v18 = &off_100AE0A78;
    if (v19)
    {
      sub_10000C808(v19);
    }
  }

  v20 = &off_100AE0A78;
  if (v21)
  {
    sub_10000C808(v21);
  }
}

void sub_100654574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  *(v23 - 72) = v21;
  v25 = *(v23 - 64);
  if (v25)
  {
    sub_10000C808(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1006545CC(uint64_t a1, void *a2)
{
  v4 = *(sub_10000C7D0(a1, a2) + 160);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_BOOL(reply, "kCBMsgArgData", v4);
    xpc_connection_send_message(*(a1 + 16), v6);

    xpc_release(v6);
  }
}

void sub_100654650(int a1, xpc_object_t xdict)
{
  v12 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = 0;
  v11 = 0;
  sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgDeviceUUID");
  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = v12;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enable private mode for time %lld for client session : %@", buf, 0x16u);
  }
}

void sub_100654960(uint64_t a1, void *a2)
{
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v4 = qword_100BCE950;
  v5 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Publish L2CAP channel request", buf, 2u);
  }

  v7 = sub_10000F034(v5, v6);
  (*(*v7 + 664))(v7, *(a1 + 96), 5);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v9, v10, v11, v12, v13, v14, "kCBMsgArgPSM"))
  {
    v33 = 0;
    *buf = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v21 = sub_100013CA4(v36, 0, v15, v16, v17, v18, v19, v20, "kCBL2CAPChannelInMTU");
    if (v37 >= 0x10000)
    {
      v23 = 1800;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!v35)
      {
        return;
      }

      v24 = sub_100007EE8(v21, v22);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10066E920;
      v26[3] = &unk_100AE0880;
      v26[4] = a1;
      v26[5] = v37;
      v27 = v23;
      v25 = v26;
    }

    else
    {
      v24 = sub_100007EE8(v21, v22);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10066E888;
      v28[3] = &unk_100B04850;
      v28[4] = a1;
      v28[5] = v37;
      v28[6] = v35;
      v28[7] = v38;
      v28[8] = *buf;
      v28[9] = v33;
      v28[10] = v31;
      v28[11] = v30;
      v28[12] = v29;
      v25 = v28;
    }

    sub_10000D334(v24, v25);
  }
}

void sub_100654C44(uint64_t a1, void *a2)
{
  v17 = 0;
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpublish L2CAP channel request", buf, 2u);
  }

  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgPSM");
  if (!v12 && !(v17 >> 16))
  {
    v14 = sub_100007EE8(v12, v13);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10066E95C;
    v15[3] = &unk_100AE0860;
    v15[4] = a1;
    v15[5] = v17;
    sub_10000D334(v14, v15);
  }
}

void sub_100654D60(uint64_t a1, void *a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Override local LE Address", buf, 2u);
  }

  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v6 = sub_100013C04(value, "kCBMsgArgAddressString");
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Address is %@", buf, 0xCu);
  }

  v8 = [v6 length];
  if (v8 && *(a1 + 80) == 2)
  {
    v10 = sub_100007EE8(v8, v9);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10066E9B8;
    v11[3] = &unk_100ADF820;
    v12 = v6;
    sub_10000D334(v10, v11);
  }
}

void sub_100654F1C(uint64_t a1, void *a2)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008570BC();
    }
  }

  else if (_os_feature_enabled_impl())
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    array = xpc_dictionary_get_array(value, "kCBMsgArgData");
    if (array)
    {
      v5 = array;
      if (xpc_get_type(array) == &_xpc_type_array)
      {
        v7[0] = 0;
        v7[1] = v7;
        v7[2] = 0x2020000000;
        v8 = 0;
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_10066EA14;
        applier[3] = &unk_100AF56D8;
        applier[4] = v7;
        xpc_array_apply(v5, applier);
        if (qword_100B512D8 != -1)
        {
          sub_100856954();
        }

        sub_10031206C(off_100B512D0, 255, 0, -1);
        _Block_object_dispose(v7, 8);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857080();
  }
}

void sub_10065509C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006550B4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CE6C(value, "kCBMsgArgAddressBytes");
  v5 = [v4 copy];

  if ([&off_100B345B8 containsObject:*(a1 + 96)])
  {
    if ([v5 length] == 6 || objc_msgSend(v5, "length") == 7)
    {
      *&v18[3] = 0;
      *v18 = 0;
      if ([v5 length] == 6)
      {
        v6 = 0;
        v18[0] = 1;
      }

      else
      {
        v6 = 1;
        [v5 getBytes:v18 length:1];
      }

      v7 = [v5 getBytes:&v18[1] range:{v6, 6}];
      if (*(a1 + 80) == 2)
      {
        v9 = v18[1];
        v10 = v18[2];
        v11 = v18[3];
        v12 = v18[4];
        v13 = v18[5];
        v14 = v18[6];
        v15 = v18[0];
        v16 = sub_100007EE8(v7, v8);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10066ED08;
        v17[3] = &unk_100ADF8F8;
        v17[4] = (v9 << 40) | (v10 << 32) | (v11 << 24) | (v12 << 16) | (v13 << 8) | v14 | (v15 << 48);
        sub_10000D334(v16, v17);
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857168((a1 + 96), v18, [v5 length]);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008570F8();
  }
}

void sub_100655314(uint64_t a1, xpc_object_t original)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  reply = xpc_dictionary_create_reply(original);
  if (*(a1 + 80) >= 1 && ([&off_100B345D0 containsObject:*(a1 + 96)] & 1) != 0)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100856880();
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10066ED5C;
    v4[3] = &unk_100AF34C0;
    v4[4] = &v6;
    v4[5] = a1;
    sub_10072B778(off_100B50C60, v4);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(*(a1 + 128), v5);
      sub_1008571C0();
    }

    v3 = v7[3];
    if (v3)
    {
      xpc_dictionary_set_int64(v3, "kCBMsgArgResult", 13);
      xpc_connection_send_message(*(a1 + 16), v7[3]);
      xpc_release(v7[3]);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void sub_10065549C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006554C4(uint64_t a1, xpc_object_t original)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  reply = xpc_dictionary_create_reply(original);
  if (*(a1 + 80) >= 1 && ([&off_100B345E8 containsObject:*(a1 + 96)] & 1) != 0)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100856880();
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10066EDDC;
    v4[3] = &unk_100B04878;
    v4[4] = &v6;
    v4[5] = a1;
    sub_10072B8A0(off_100B50C60, v4);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(*(a1 + 128), v5);
      sub_10085721C();
    }

    v3 = v7[3];
    if (v3)
    {
      xpc_dictionary_set_int64(v3, "kCBMsgArgResult", 13);
      xpc_dictionary_set_int64(v7[3], "kCBMsgArgTimeoutInMS", 0);
      xpc_connection_send_message(*(a1 + 16), v7[3]);
      xpc_release(v7[3]);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void sub_100655664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065568C(uint64_t a1, void *a2)
{
  xarray = xpc_array_create(0, 0);
  original = a2;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v19 = sub_100066200(value, "kCBMsgArgUUIDs");
  if (v19)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_10003EF30(off_100B508C8);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v19;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:{16, a2}];
    if (v6)
    {
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (!sub_1007868D4(off_100B508C8, v9))
          {
            v11 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 138412290;
            v26 = v9;
            v12 = v11;
            v13 = "Device %@ does not exist";
            goto LABEL_25;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v9) & 1) == 0)
          {
            v14 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 138412290;
            v26 = v9;
            v12 = v14;
            v13 = "Cannot access device %@";
            goto LABEL_25;
          }

          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (sub_10004FF0C(off_100B508C8, v9, *(a1 + 96), *(a1 + 48)))
          {
            v10 = sub_10005201C(v9, *(a1 + 168), *(a1 + 80));
            xpc_array_append_value(xarray, v10);
            xpc_release(v10);
            goto LABEL_26;
          }

          v15 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v9;
            v12 = v15;
            v13 = "Session not allowed for device %@";
LABEL_25:
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
          }

LABEL_26:
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v6);
    }
  }

  reply = xpc_dictionary_create_reply(original);
  v17 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", xarray);
    xpc_connection_send_message(*(a1 + 16), v17);
    xpc_release(v17);
  }

  xpc_release(xarray);
}

void sub_1006559F8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgUUID");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  v6 = sub_1007868D4(off_100B508C8, v5);
  if (!v6 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857278();
  }

  if (*(a1 + 80) >= 1 && *(a1 + 183) == 1)
  {
    v13 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v7 = off_100B508A8;
    sub_10004DFB4(v14, v5);
    sub_1000C4FCC(v7, v14, &v13);
    if (v13)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = *v13;
      reply = xpc_dictionary_create_reply(xdict);
      v11 = reply;
      if (reply)
      {
        xpc_dictionary_set_int64(reply, "kCBMsgArgConnectionHandle", v9);
        xpc_connection_send_message(*(a1 + 16), v11);
        xpc_release(v11);
        goto LABEL_20;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857324();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008572E8();
  }

  v12 = xpc_dictionary_create_reply(xdict);
  if (v12)
  {
    xpc_connection_send_message(*(a1 + 16), v12);
    xpc_release(v12);
  }

LABEL_20:
}

void sub_100655C14(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v6 = sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48));
    if (v6)
    {
      v8 = *(a1 + 80);
      if (v8 > 1 || v8 == 1 && (v6 = sub_100011EDC(a1), v6))
      {
        v9 = sub_100007EE8(v6, v7);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100673F80;
        v15[3] = &unk_100AE0BC0;
        v17 = a1;
        v16 = v5;
        v18 = xdict;
        sub_10000D334(v9, v15);
      }

      else
      {
        v12 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No privileges for running retrievePairingInfoForPeripheral without proper entitlement", buf, 2u);
        }
      }
    }

    else
    {
      v10 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 96);
        v14 = *(a1 + 48);
        *buf = 138412802;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v5;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857394();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }
}

void sub_100655E9C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v37 = sub_10003ED64(value, "kCBMsgArgFindMySerialNumberString");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10003EF30(off_100B508C8);
  v38 = +[NSMutableSet set];
  if (*(a1 + 80) >= 1 && *(a1 + 104) == 1)
  {
    if (v37 && [v37 count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v4 = v37;
      v5 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (!v5)
      {
        goto LABEL_57;
      }

      v6 = *v48;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v48 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v47 + 1) + 8 * v7);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v9 = sub_1000DFED0(off_100B508C8, v8);
          if (!v9)
          {
            v10 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = 141558275;
            v54 = 1752392040;
            v55 = 2113;
            v56 = v8;
            v11 = v10;
            v12 = "No device with SN %{private, mask.hash}@";
LABEL_26:
            v15 = 22;
LABEL_27:
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, v15);
            goto LABEL_29;
          }

          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if ((sub_10004FF0C(off_100B508C8, v9, *(a1 + 96), *(a1 + 48)) & 1) == 0)
          {
            v13 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            v14 = *(a1 + 96);
            *buf = 138543618;
            v54 = v14;
            v55 = 2114;
            v56 = v9;
            v11 = v13;
            v12 = "Bundle %{public}@ is not allowed to access device %{public}@";
            goto LABEL_26;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v9))
          {
            [v38 addObject:v9];
            goto LABEL_29;
          }

          v16 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = v9;
            v11 = v16;
            v12 = "Session cannot access device %{public}@";
            v15 = 12;
            goto LABEL_27;
          }

LABEL_29:

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v17 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
        v5 = v17;
        if (!v17)
        {
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_1007811A8(off_100B508C8);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v4 = v44 = 0u;
    v18 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (!v18)
    {
      goto LABEL_56;
    }

    v19 = *v44;
LABEL_38:
    v20 = 0;
    while (1)
    {
      if (*v44 != v19)
      {
        objc_enumerationMutation(v4);
      }

      v21 = *(*(&v43 + 1) + 8 * v20);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_10004FF0C(off_100B508C8, v21, *(a1 + 96), *(a1 + 48)))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v21))
        {
          [v38 addObject:v21];
        }

        else
        {
          v27 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = v21;
            v24 = v27;
            v25 = "Session cannot access device %{public}@";
            v26 = 12;
            goto LABEL_54;
          }
        }
      }

      else
      {
        v22 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 96);
          *buf = 138543618;
          v54 = v23;
          v55 = 2114;
          v56 = v21;
          v24 = v22;
          v25 = "Bundle %{public}@ is not allowed to access device %{public}@";
          v26 = 22;
LABEL_54:
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
        }
      }

      if (v18 == ++v20)
      {
        v28 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
        v18 = v28;
        if (!v28)
        {
LABEL_56:

          goto LABEL_57;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_58:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v30 = xpc_array_create(0, 0);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v38;
    v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v32)
    {
      v33 = *v40;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = sub_10005201C(*(*(&v39 + 1) + 8 * i), *(a1 + 168), *(a1 + 80));
          xpc_array_append_value(v30, v35);
          xpc_release(v35);
        }

        v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v32);
    }

    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v30);
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
    xpc_release(v30);
  }
}

void sub_100656578(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v37 = sub_100066200(value, "kCBMsgArgUUIDs");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10003EF30(off_100B508C8);
  v38 = +[NSMutableSet set];
  if (*(a1 + 80) >= 1 && *(a1 + 104) == 1)
  {
    if (v37 && [v37 count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v4 = v37;
      v5 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (!v5)
      {
        goto LABEL_57;
      }

      v6 = *v48;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v48 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v47 + 1) + 8 * v7);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v9 = sub_100782A90(off_100B508C8, v8);
          if (!v9)
          {
            v10 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = 141558275;
            v54 = 1752392040;
            v55 = 2113;
            v56 = v8;
            v11 = v10;
            v12 = "No device with FindMyID %{private, mask.hash}@";
LABEL_26:
            v15 = 22;
LABEL_27:
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, v15);
            goto LABEL_29;
          }

          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if ((sub_10004FF0C(off_100B508C8, v9, *(a1 + 96), *(a1 + 48)) & 1) == 0)
          {
            v13 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            v14 = *(a1 + 96);
            *buf = 138543618;
            v54 = v14;
            v55 = 2114;
            v56 = v9;
            v11 = v13;
            v12 = "Bundle %{public}@ is not allowed to access device %{public}@";
            goto LABEL_26;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v9))
          {
            [v38 addObject:v9];
            goto LABEL_29;
          }

          v16 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = v9;
            v11 = v16;
            v12 = "Session cannot access device %{public}@";
            v15 = 12;
            goto LABEL_27;
          }

LABEL_29:

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v17 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
        v5 = v17;
        if (!v17)
        {
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_1007811A8(off_100B508C8);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v4 = v44 = 0u;
    v18 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (!v18)
    {
      goto LABEL_56;
    }

    v19 = *v44;
LABEL_38:
    v20 = 0;
    while (1)
    {
      if (*v44 != v19)
      {
        objc_enumerationMutation(v4);
      }

      v21 = *(*(&v43 + 1) + 8 * v20);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_10004FF0C(off_100B508C8, v21, *(a1 + 96), *(a1 + 48)))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v21))
        {
          [v38 addObject:v21];
        }

        else
        {
          v27 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = v21;
            v24 = v27;
            v25 = "Session cannot access device %@";
            v26 = 12;
            goto LABEL_54;
          }
        }
      }

      else
      {
        v22 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 96);
          *buf = 138543618;
          v54 = v23;
          v55 = 2114;
          v56 = v21;
          v24 = v22;
          v25 = "Bundle %{public}@ is not allowed to access device %{public}@";
          v26 = 22;
LABEL_54:
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
        }
      }

      if (v18 == ++v20)
      {
        v28 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
        v18 = v28;
        if (!v28)
        {
LABEL_56:

          goto LABEL_57;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_58:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v30 = xpc_array_create(0, 0);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v38;
    v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v32)
    {
      v33 = *v40;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = sub_10005201C(*(*(&v39 + 1) + 8 * i), *(a1 + 168), *(a1 + 80));
          xpc_array_append_value(v30, v35);
          xpc_release(v35);
        }

        v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v32);
    }

    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v30);
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
    xpc_release(v30);
  }
}

void sub_100656C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10067460C;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000D334(v4, v5);
}

void sub_100656CD4(uint64_t a1, xpc_object_t xdict)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions"))
  {
    sub_1005B2CE4(a1, 232, xdict, *(v33 + 6));
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857404();
    }
  }

  v30 = 2;
  v29 = 1;
  v18 = sub_100013CA4(v31, 0, v12, v13, v14, v15, v16, v17, "kCBLEMRCAction");
  *(v33 + 6) = v18;
  if (!v18 || (sub_1005B2CE4(a1, 232, xdict, v18), v18 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR), !v18))
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_100857474();
  if (v5)
  {
LABEL_7:
    v20 = sub_100007EE8(v18, v19);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100674798;
    v23[3] = &unk_100B04C78;
    v25 = &v32;
    v26 = a1;
    v24 = v5;
    v27 = v30;
    v28 = v29;
    sub_10000D334(v20, v23);
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  v22 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", *(v33 + 6));
    xpc_connection_send_message(*(a1 + 16), v22);
    xpc_release(v22);
  }

  _Block_object_dispose(&v32, 8);
}

void sub_100656F70(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  v6 = sub_100007EE8(v4, v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100674804;
  v9[3] = &unk_100AE0860;
  v9[4] = a1;
  v9[5] = v4;
  sub_10000D334(v6, v9);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v4);
    xpc_connection_send_message(*(a1 + 16), v8);
    xpc_release(v8);
  }

  xpc_release(v4);
}

void sub_100657044(uint64_t a1, xpc_object_t original)
{
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = xpc_dictionary_create_reply(original);
  v22 = 0;
  value = xpc_dictionary_get_value(original, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions"))
  {
    v21 = 0;
    v17 = sub_100013CA4(v22, 0, v11, v12, v13, v14, v15, v16, "kCBMsgArgLastMinutes");
    v19 = sub_100007EE8(v17, v18);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1006749A8;
    v20[3] = &unk_100AE0EB8;
    v20[5] = a1;
    v20[6] = v21;
    v20[4] = v23;
    sub_10000CA94(v19, v20);
  }

  _Block_object_dispose(v23, 8);
}

void sub_10065718C(uint64_t a1, xpc_object_t xdict)
{
  v149 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_10000F034(v5, v6);
  (*(*v7 + 664))(v7, *(a1 + 96), 1);
  if (sub_100013CA4(value, 1, v8, v9, v10, v11, v12, v13, "kCBMsgArgOptions"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857520();
    }

    v14 = 3;
    goto LABEL_33;
  }

  if (!v5)
  {
    goto LABEL_210;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  if (!sub_1007868D4(off_100B508C8, v5))
  {
LABEL_210:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    v14 = 8;
    goto LABEL_33;
  }

  if (qword_100B512F8 != -1)
  {
    sub_1008565BC();
  }

  if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v133 = 0;
      v132 = 0;
      v131 = 0;
      v130 = 0;
      v129 = 0;
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v124 = 0;
      v123 = 0;
      v122 = 0;
      v121 = 0;
      v120 = 0;
      v119 = 0;
      v118 = 0;
      v117 = 0;
      v116 = 0;
      v106 = sub_100013CA4(v149, 0, v15, v16, v17, v18, v19, v20, "kCBConnectOptionNotifyOnConnection");
      v21 = [ConnectOptions alertOptionsWithConnectionAlerts:"alertOptionsWithConnectionAlerts:disconnectionAlerts:notificationAlerts:delay:bridgeTransport:" disconnectionAlerts:0 notificationAlerts:0 delay:0 bridgeTransport:?];
      [v21 setWantsObjectDiscoveryData:0];
      [v21 setDisableLeGATT:0];
      [v21 setAncsRequired:0];
      [v21 setResetDisconnectionHistory:0];
      v22 = sub_10003ED64(v149, "kCBManagerListOfClients");
      [v21 setConnectingClients:v22];

      [v21 setRequiresLowLatency:0];
      v23 = [v21 connectingClients];
      LODWORD(v22) = v23 == 0;

      if (v22)
      {
        v24 = [NSArray arrayWithObjects:*(a1 + 96), 0, sub_100013DE8, &v148, "kCBConnectOptionNotifyOnDisconnection", sub_100013DE8, &v147, "kCBConnectOptionNotifyOnNotification", sub_100013DE8, &v146, "kCBConnectOptionStartDelay", sub_100013DE8, &v145, "kCBConnectOptionReceiveObjectDiscoveryData", sub_100013DE8, &v144, "kCBConnectOptionEnableTransportBridging", sub_100013DE8, &v143, "kCBConnectOptionsDisableLeGATT", sub_100013DE8, &v142, "kCBConnectOptionRequiresANCS", sub_100013DE8, &v141, "kCBConnectOptionHideFromBTSettings", sub_100013DE8, &v140, "kCBConnectOptionInitPHYs", sub_100013DE8, &v139, "kCBConnectOptionPHYOptions", sub_100013DE8, &v138, "kCBConnectOptionFirstApproachEnable", sub_100013DE8, &v137, "kCBConnectOptionGetControllerBTClock", sub_100013DE8, &v136, "kCBOptionUseCase", sub_100013DE8, &v134, "kCBConnectOptionGetLESynchronizationEvent", sub_100013DE8, &v135, "kCBConnectOptionMaxAllowedConnectionDelay", sub_100013DE8, &v133, "kCBConnectOptionMinRSSILevelForConnect", sub_100013DE8, &v132, "kCBConnectOptionConnectionCompleteOnPoll", sub_100013DE8, &v131, "kCBConnectOptionEnableScanCore", sub_100013DE8, &v130, "kCBConnectOptionLatencyCritical", sub_100013DE8, &v129];
        [v21 setConnectingClients:v24];
      }

      v25 = *(a1 + 190);
      if ((v25 & 1) == 0)
      {
        v26 = (a1 + 80);
        if (*(a1 + 80) < 1)
        {
          goto LABEL_35;
        }
      }

      v27 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v132;
        *&buf[12] = 1024;
        *&buf[14] = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "configuration for minRSSILevelForConnection to:%lld  fAllowScreenOffScanning=%d", buf, 0x12u);
      }

      [v21 setMinRSSILevelForConnection:v132];
      v26 = (a1 + 80);
      if (*(a1 + 80) >= 2)
      {
        [v21 setInitPHYs:v139];
        [v21 setPHYOptions:v138];
        [v21 setMinRSSILevelForConnection:v132];
        [v21 setWaitForConnectionPoll:v131 != 0];
        [v21 setEnableScanCore:v130 != 0];
        [v21 setCtkdChosenTransport:v128];
        [v21 setTxPowerConnectInd:v118];
        [v21 setTxPowerAuxConnectReq:v117];
        [v21 setMrcEnable:v116];
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        sub_100792058(off_100B508C8, v5, v123, v122, v121, v120, v119, v118, v117, v116);
      }

      else
      {
LABEL_35:
        [v21 setInitPHYs:1];
        [v21 setPHYOptions:0];
        [v21 setEnableScanCore:0];
      }

      v107 = v26;
      if (qword_100B6F818 != -1)
      {
        sub_1008575CC();
      }

      if (byte_100B6F816 == 1)
      {
        v29 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Warning: Override enableAutoReconnect for device %{public}@", buf, 0xCu);
        }

        [v21 setEnableAutoReconnect:1];
      }

      if (byte_100B6F815 == 1)
      {
        v30 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: Setting override connection parameters to device %{public}@", buf, 0xCu);
        }

        p_info = &OBJC_METACLASS___BTVCDevice.info;
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
          p_info = (&OBJC_METACLASS___BTVCDevice + 32);
        }

        sub_100792058(p_info[281], v5, byte_100B6F810, byte_100B6F811, 0, 0, 0, byte_100B6F812, word_100B6F813, SHIBYTE(word_100B6F813));
      }

      if (![v21 initPHYs])
      {
        [v21 setInitPHYs:{objc_msgSend(v21, "initPHYs") | 1}];
      }

      if (v137 == 1)
      {
        v32 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Enable coded PHY from first approach", buf, 2u);
        }

        [v21 setInitPHYs:{objc_msgSend(v21, "initPHYs") | 4}];
      }

      if (v136 == 1)
      {
        v33 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *v26;
          *buf = 67109120;
          *&buf[4] = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "configuration for enableControllerBTClockUpdates for AccessLevel:%d ", buf, 8u);
        }

        if (*v26 >= 1)
        {
          [v21 setEnableControllerBTClockUpdates:1];
        }
      }

      v35 = *v26;
      if (v135 == 1)
      {
        v36 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "configuration for enableLESynchronizationEvents for AccessLevel:%d ", buf, 8u);
          v35 = *v26;
        }

        if (v35 < 1)
        {
          goto LABEL_67;
        }

        [v21 setEnableLESynchronizationEvent:1];
        v35 = *v26;
      }

      if (v35 >= 1)
      {
        [v21 setOpportunistic:v126 != 0];
        [v21 setResetDisconnectionHistory:v127 != 0];
        v37 = sub_1000C9AAC(v149, "kCBConnectOptionConnectionScanDutyCycle");
        v38 = v37;
        if (v37)
        {
          v39 = [v37 intValue];
        }

        else
        {
          v39 = 0;
        }

        v41 = sub_1000C9AAC(v149, "kCBConnectOptionScreenOffConnectionScanDutyCycle");

        if (v41)
        {
          v40 = [v41 intValue];
        }

        else
        {
          v40 = 3;
        }

        v42 = sub_1000C9AAC(v149, "kCBConnectOptionDoNoDisconnectOnEncryptionFailure");
        v43 = [v42 BOOLValue];

        if (v43)
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          sub_100790068(off_100B508C8, v5, 1);
          if (qword_100B508B0 != -1)
          {
            sub_10085681C();
          }

          sub_10076E7B8(off_100B508A8, v5);
        }

        goto LABEL_81;
      }

LABEL_67:
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      sub_100790068(off_100B508C8, v5, 0);
      v39 = 0;
      v40 = 3;
LABEL_81:
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v44 = v107;
      sub_10078FDAC(off_100B508C8, v5, v39);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
        v44 = v107;
      }

      sub_10078FEC4(off_100B508C8, v5, v40);
      v45 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        sub_100018384(*(a1 + 128), v155);
        v46 = v156 >= 0 ? v155 : *v155;
        *buf = 136315906;
        *&buf[4] = v46;
        *&buf[12] = 1024;
        *&buf[14] = v39;
        *&buf[18] = 1024;
        *&buf[20] = v40;
        *v151 = 2112;
        *&v151[2] = v5;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Session %s setting up connection scan level of %d (screenOff %d) for device %@", buf, 0x22u);
        if (v156 < 0)
        {
          operator delete(*v155);
        }
      }

      if (*v44 < 1)
      {
        v53 = 0;
        goto LABEL_171;
      }

      v47 = &OBJC_METACLASS___BTVCDevice.info;
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
        v47 = (&OBJC_METACLASS___BTVCDevice + 32);
      }

      v48 = sub_1000500A0(v47[281], v5);
      v49 = v48 == 0;

      if (v49)
      {
        v50 = sub_10037CE6C(v149, "kCBConnectOptionsTemporaryLTK");
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        v51 = sub_100046458(off_100B508C8, v5, 0);
        if ([v50 length])
        {
          v52 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "preparing a temporary LTK for device %@", buf, 0xCu);
          }

          if (v51)
          {
            [v21 setTemporaryLTK:v50];
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_1008575F4();
            }

            v106 = 8;
          }
        }
      }

      if (v140)
      {
        v56 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(*(a1 + 128), buf);
          if (buf[23] >= 0)
          {
            v57 = buf;
          }

          else
          {
            v57 = *buf;
          }

          *v155 = 136315394;
          *&v155[4] = v57;
          *&v155[12] = 2112;
          *&v155[14] = v5;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Session %s is asking to hide %@ from BT Settings menu", v155, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v58 = v140 != 0;
        }

        else
        {
          v58 = 1;
        }

        [v21 setHideFromBTSettings:v58];
      }

      v59 = sub_100013C04(v149, "kCBConnectOptionClientBundleID");
      v60 = sub_100013C04(v149, "kCBConnectOptionClientProcessID");
      v61 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v62 = @"NoClientBundleID";
        v63 = @"NoClientProcessID";
        if (v59)
        {
          v62 = v59;
        }

        if (v60)
        {
          v63 = v60;
        }

        *buf = 138413314;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = v63;
        *&buf[22] = 2048;
        *v151 = v134;
        *&v151[8] = 2048;
        v152 = v133;
        v153 = 2048;
        v154 = v129;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "clientBundleID %@ clientProcessID %@ connectionUseCase %lld maxAllowedConnectionDelay %lld isLatencyCritical %lld", buf, 0x34u);
      }

      [v21 setClientBundleID:v59];
      [v21 setClientProcessID:v60];
      [v21 setConnectionUseCase:v134];
      v64 = [v21 setMaxAllowedConnectionDelay:v133];
      if (v129 == 1 && *(a1 + 84) == 1)
      {
        v66 = sub_10000C798(v64, v65);
        if ((*(*v66 + 416))(v66))
        {
          v67 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v68 = @"NoClientBundleID";
            if (v59)
            {
              v68 = v59;
            }

            v69 = @"NoClientProcessID";
            if (v60)
            {
              v69 = v60;
            }

            *buf = 138412546;
            *&buf[4] = v68;
            *&buf[12] = 2112;
            *&buf[14] = v69;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "clientBundleID %@ clientProcessID %@ fLatencyCriticalRequest received", buf, 0x16u);
          }

          [v21 setIsLatencyCritical:1];
        }
      }

      v70 = sub_10006638C(v149, "kCBOptionUseCaseList");
      v71 = v70;
      if (v70)
      {
        if ([v70 count])
        {
          v72 = [NSSet setWithArray:v71];
          v73 = [v72 allObjects];

          v74 = [v73 sortedArrayUsingSelector:"compare:"];

          v75 = v74;
        }

        else
        {
          v75 = v71;
        }
      }

      else
      {
        v75 = 0;
      }

      [v21 setUseCaseList:v75];
      if (v75 && [v75 count])
      {
        v76 = sub_100670768(v75);
        v77 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v78 = [v76 componentsJoinedByString:{@", "}];
          *buf = 138412290;
          *&buf[4] = v78;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "connUseCaseList: %@", buf, 0xCu);
        }

        if (![v21 connectionUseCase])
        {
          v79 = [v75 firstObject];
          v80 = v79;
          if (v79)
          {
            [v21 setConnectionUseCase:{objc_msgSend(v79, "longLongValue")}];
            v81 = qword_100BCE950;
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
            {
              v82 = sub_10002C70C([v80 longLongValue]);
              *buf = 136315138;
              *&buf[4] = v82;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "default useCase derived from useCaseList: %s", buf, 0xCu);
            }
          }
        }
      }

      if (*v107 < 1)
      {
LABEL_170:
        v53 = v75;
LABEL_171:
        if (v106)
        {
          sub_1005B2CE4(a1, 92, xdict, v106);
LABEL_207:

          goto LABEL_34;
        }

        v95 = _os_feature_enabled_impl();
        if (!v95)
        {
          goto LABEL_205;
        }

        if (([*(a1 + 96) containsString:@"com.apple.deviceaccessd"] & 1) == 0 && (*(a1 + 178) & 1) == 0 && (*(a1 + 176) & 1) == 0 && (*(a1 + 177) & 1) == 0 && (*(a1 + 175) & 1) == 0)
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v97 = off_100B508C8;
          sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
          v95 = sub_10004EB40(v97, v5, __p);
          v98 = v95;
          if (v115 < 0)
          {
            operator delete(__p[0]);
            if ((v98 & 1) == 0)
            {
LABEL_205:
              v105 = sub_100007EE8(v95, v96);
              v108[0] = _NSConcreteStackBlock;
              v108[1] = 3221225472;
              v108[2] = sub_100671278;
              v108[3] = &unk_100AE25C8;
              v111 = a1;
              v109 = v5;
              v110 = v21;
              sub_10000D334(v105, v108);

              v83 = v109;
              v75 = v53;
LABEL_206:

              v53 = v75;
              goto LABEL_207;
            }
          }

          else if (!v95)
          {
            goto LABEL_205;
          }
        }

        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        v102 = off_100B508C8;
        sub_100007E30(v112, "ASK_ALLOW_HID");
        v95 = sub_10004EB40(v102, v5, v112);
        v103 = v95;
        if (v113 < 0)
        {
          operator delete(v112[0]);
        }

        if ((v103 & 1) == 0)
        {
          v104 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Warning: Blocking HID service on device %@", buf, 0xCu);
          }

          memset(buf, 0, 20);
          *v155 = xmmword_1008A4D28;
          *&v155[16] = 0;
          sub_10000D03C(buf, v155);
          if (qword_100B50900 != -1)
          {
            sub_10085771C();
          }

          sub_10070BCBC(qword_100B508F8, v5, buf);
        }

        goto LABEL_205;
      }

      v83 = sub_10037CE6C(v149, "kCBConnectOptionConnectionOptionTemporaryIRKValue");
      if (![v83 length])
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          sub_1008576A0();
        }

        goto LABEL_169;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v84 = sub_100046458(off_100B508C8, v5, 0);
      v85 = sub_10037CE6C(v149, "kCBConnectOptionConnectionOptionTemporaryIdentityAddress");
      v86 = [v85 copy];

      *&v155[3] = 0;
      *v155 = 0;
      if ([v86 length] == 6 || objc_msgSend(v86, "length") == 7)
      {
        v87 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v86;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "preparing a temporary IRK for device %@ for address %@", buf, 0x16u);
        }

        if ([v86 length] == 6)
        {
          v88 = 0;
          v155[0] = 1;
        }

        else
        {
          v88 = 1;
          [v86 getBytes:v155 length:1];
        }

        [v86 getBytes:&v155[1] range:{v88, 6}];
        v89 = sub_100063D0C((v155[1] << 40) | (v155[2] << 32) | (v155[3] << 24) | (v155[4] << 16) | (v155[5] << 8) | v155[6] | (v155[0] << 48));
        [v21 setTemporaryIdentityAddress:v89];
      }

      else
      {
        if (!v84)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_1008575F4();
          }

          v106 = 8;
LABEL_168:

LABEL_169:
          goto LABEL_170;
        }

        v99 = sub_1007774DC(v84);
        [v21 setTemporaryIdentityAddress:v99];

        v100 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v86;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "preparing a temporary IRK from device UUID %@ for address %@", buf, 0x16u);
        }

        v155[0] = 0;
        v101 = sub_1002D3618(v84);
        *&v155[1] = v101;
        *&v155[5] = WORD2(v101);
      }

      v90 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "setting up temporary IRK for device %@", buf, 0xCu);
      }

      [v21 setTemporaryIRK:v83];
      v91 = [v21 temporaryIRK];
      v92 = [v91 length];

      if (v92 != 16)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100857664();
        }

        goto LABEL_206;
      }

      *buf = 0;
      *&buf[8] = 0;
      v93 = [v21 temporaryIRK];
      v94 = v93;
      *buf = *[v93 bytes];

      if (qword_100B508C0 != -1)
      {
        sub_1008569B8();
      }

      sub_1007CA114(off_100B508B8, v155, buf, v5);
      goto LABEL_168;
    }

    v28 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v54 = *(a1 + 96);
      v55 = *(a1 + 48);
      *buf = 138412802;
      *&buf[4] = v54;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      *&buf[22] = 2112;
      *v151 = v5;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085755C();
  }

  v14 = 17;
LABEL_33:
  sub_1005B2CE4(a1, 92, xdict, v14);
LABEL_34:
}

void sub_100658CE8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  _Unwind_Resume(a1);
}

void sub_100658E94(uint64_t a1, xpc_object_t xdict)
{
  v33 = 0;
  v34 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v32 = 0;
  if (!sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions"))
  {
    if (!v5)
    {
      goto LABEL_31;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_31:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v12 = 8;
      goto LABEL_20;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
      {
        v19 = sub_100013CA4(v32, 0, v13, v14, v15, v16, v17, v18, "kCBCancelConnectOptionForce");
        v21 = v19;
        if (!v19)
        {
          v24 = sub_100007EE8(v19, v20);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100672628;
          v27[3] = &unk_100AEB858;
          v29 = a1;
          v28 = v5;
          v30 = v34;
          v31 = v33;
          sub_10000D334(v24, v27);

          goto LABEL_21;
        }

        v22 = 94;
        goto LABEL_27;
      }

      v23 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 96);
        v26 = *(a1 + 48);
        *buf = 138412802;
        v36 = v25;
        v37 = 2112;
        v38 = v26;
        v39 = 2112;
        v40 = v5;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085755C();
    }

    v21 = 17;
    v22 = 92;
LABEL_27:
    sub_1005B2CE4(a1, v22, xdict, v21);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857520();
  }

  v12 = 3;
LABEL_20:
  sub_1005B2CE4(a1, 92, xdict, v12);
LABEL_21:
}

void sub_1006591F4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgAddressString");
  if ((sub_100777FF4(v5) & 0xFFFFFFFFFFFFLL) != 0)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_10003EF30(off_100B508C8);
    *uu = 0;
    v29 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v6 = off_100B508C8;
    v7 = sub_100777FF4(v5);
    sub_1000498D4(v6, v7, 0, 1u, 0, 0, uu);
    if (uuid_is_null(uu))
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008569B8();
      }

      v8 = off_100B508B8;
      v9 = sub_100777FF4(v5);
      v10 = sub_1007C9980(v8, v9);
      sub_10004DFB4(&v22, v10);
      uuid_copy(uu, &v22);
    }

    if (!uuid_is_null(uu))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v11 = off_100B508C8;
      v12 = sub_10004DF60(uu);
      LOBYTE(v11) = sub_10004FF0C(v11, v12, *(a1 + 96), *(a1 + 48));

      if (v11)
      {
        v13 = sub_10004DF60(uu);
        v14 = sub_10005201C(v13, *(a1 + 168), *(a1 + 80));

        goto LABEL_20;
      }

      v16 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 96);
        v20 = *(a1 + 48);
        v21 = sub_10004DF60(uu);
        v22 = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v22, 0x20u);
      }
    }
  }

  else
  {
    v15 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: Invalid parameters, cannot retrieve a peripheral with address %@", &v22, 0xCu);
    }
  }

  v14 = 0;
LABEL_20:
  reply = xpc_dictionary_create_reply(xdict);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v14);
    xpc_connection_send_message(*(a1 + 16), v18);
    xpc_release(v18);
  }

  if (v14)
  {
    xpc_release(v14);
  }
}

void sub_10065954C(uint64_t a1, xpc_object_t xdict)
{
  v28 = a1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CE6C(value, "kCBAdvOptionInstanceRandomAddressBytes");
  v5 = [v4 copy];

  v29 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (*(v28 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857780();
    }

    goto LABEL_38;
  }

  *&v30[3] = 0;
  *v30 = 0;
  if ([v5 length] != 6 && objc_msgSend(v5, "length") != 7)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008577BC();
    }

    goto LABEL_38;
  }

  if ([v5 length] == 6)
  {
    v6 = 0;
    v30[0] = 1;
  }

  else
  {
    v6 = 1;
    [v5 getBytes:v30 length:1];
  }

  [v5 getBytes:&v30[1] range:{v6, 6}];
  if (v29)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_1007868D4(off_100B508C8, v29))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008577F8();
      }

LABEL_38:
      v24 = 0;
      goto LABEL_39;
    }
  }

  v7 = v30[1];
  v8 = v30[2];
  v9 = v30[3];
  v10 = v30[4];
  v11 = v30[5];
  v12 = v30[6];
  v13 = v30[0];
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_10003EF30(off_100B508C8);
  *uu = 0;
  v38 = 0;
  if (qword_100B508C0 != -1)
  {
    sub_1008569B8();
  }

  v14 = (v7 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (v11 << 8) | v12 | (v13 << 48);
  v15 = sub_1007C9980(off_100B508B8, v14);
  sub_10004DFB4(uu, v15);

  if (!uuid_is_null(uu))
  {
    v17 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1000D67B4(uu, src);
      v18 = v32;
      v19 = *src;
      v20 = sub_100063D0C(v14);
      v21 = v20;
      v22 = src;
      if (v18 < 0)
      {
        v22 = v19;
      }

      *buf = 136446466;
      v34 = v22;
      v35 = 2112;
      v36 = v20;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Device %{public}s for address %@ already exists, cannot create a new one", buf, 0x16u);
      if (v32 < 0)
      {
        operator delete(*src);
      }
    }

    goto LABEL_38;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_1000498D4(off_100B508C8, v14, 0, 1u, 0, 0, src);
  uuid_copy(uu, src);
  if (!uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v23 = sub_100063D0C(v14);
      sub_1000D67B4(uu, src);
      sub_1008578C8();
    }

    goto LABEL_38;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_1000498D4(off_100B508C8, v14, 1u, 1u, v29, 0, src);
  uuid_copy(uu, src);
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_100063D0C(v14);
      sub_1000D67B4(uu, src);
      sub_100857868();
    }

    goto LABEL_38;
  }

  v27 = sub_10004DF60(uu);
  v24 = sub_10005201C(v27, *(v28 + 168), *(v28 + 80));

LABEL_39:
  reply = xpc_dictionary_create_reply(xdict);
  v26 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v24);
    xpc_connection_send_message(*(v28 + 16), v26);
    xpc_release(v26);
  }

  if (v24)
  {
    xpc_release(v24);
  }
}

void sub_100659B0C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  reply = xpc_dictionary_create_reply(xdict);
  v16 = reply;
  if (v14[3])
  {
    v8 = sub_100007EE8(reply, v7);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10067269C;
    v9[3] = &unk_100B046B8;
    v12 = a1;
    v10 = v5;
    v11 = &v13;
    sub_10000CA94(v8, v9);
  }

  _Block_object_dispose(&v13, 8);
}

void sub_100659C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100659C44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 2)
  {
    v3 = sub_100007EE8(a1, a2);

    sub_10000D334(v3, &stru_100B04B88);
  }
}

void sub_100659C84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 2)
  {
    v3 = sub_100007EE8(a1, a2);

    sub_10000D334(v3, &stru_100B04B68);
  }
}

void sub_100659CC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 2)
  {
    v6[7] = v2;
    v6[8] = v3;
    v5 = sub_100007EE8(a1, a2);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1006729D4;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000D334(v5, v6);
  }
}

void sub_100659D50(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 2)
  {
    v6[7] = v2;
    v6[8] = v3;
    v5 = sub_100007EE8(a1, a2);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100672A38;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000D334(v5, v6);
  }
}

void sub_100659DDC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006712D4;
  v7[3] = &unk_100ADF820;
  v6 = v3;
  v8 = v6;
  sub_10000D334(v5, v7);
}

void sub_100659EBC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CE6C(value, "kCBMsgArgLeAFHMap");
  if ([v4 length] == 5)
  {
    v5 = qword_100BCE950;
    if (*(a1 + 80) <= 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(*(a1 + 128), __p);
        sub_100857AB4();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(*(a1 + 128), __p);
        v6 = v21 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v17 = v6;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session %s is trying to set LE AFH Map to %@", buf, 0x16u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v15 = 0;
      v14 = 0;
      [v4 getBytes:&v14 length:5];
      v13 = 0;
      sub_1000216B4(&v13);
      if (sub_100018960(180, sub_100671394, v7, v8, v9, v10, v11, v12, &v14) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(*(a1 + 128), __p);
        sub_100857A4C();
      }

      sub_10002249C(&v13);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    [v4 length];
    sub_100018384(*(a1 + 128), buf);
    sub_1008579D4();
  }
}

void sub_10065A12C(uint64_t a1, xpc_object_t xdict)
{
  v22 = 0;
  v23 = 1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 108, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857B10();
    }
  }

  v18 = sub_100013CA4(v22, 0, v12, v13, v14, v15, v16, v17, "kCBScanOptionAppleFilterTargetCore");
  if (v18)
  {
    sub_1005B2CE4(a1, 108, xdict, v18);
    v18 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      sub_100857B80();
    }
  }

  if (*(a1 + 80) == 2)
  {
    v20 = sub_100007EE8(v18, v19);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100671468;
    v21[3] = &unk_100AE0860;
    v21[4] = a1;
    v21[5] = v23;
    sub_10000D334(v20, v21);
  }
}

void sub_10065A2C0(uint64_t a1, xpc_object_t xdict)
{
  v27 = 1;
  v25 = 0;
  v26 = 2;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 109, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857BF0();
    }
  }

  v18 = sub_100013CA4(v25, 0, v12, v13, v14, v15, v16, v17, "kCBScanOptionAppleFilterTargetCore");
  if (v18)
  {
    sub_1005B2CE4(a1, 109, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857C60();
    }
  }

  v19 = sub_100013C04(v25, "kCBScanOptionPeers");
  v20 = sub_100777FF4(v19);
  if (*(a1 + 80) == 2)
  {
    v22 = v20;
    v23 = sub_100007EE8(v20, v21);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1006714C4;
    v24[3] = &unk_100AEC130;
    v24[4] = v26;
    v24[5] = v22;
    v24[6] = v27;
    sub_10000D334(v23, v24);
  }
}

void sub_10065A4A8(uint64_t a1, xpc_object_t xdict)
{
  v29 = 1;
  v27 = 0;
  v28 = 2;
  v26 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 110, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857CD0();
    }
  }

  v12 = sub_100066200(v27, "kCBScanOptionRemoveMultipleDupFilterEntryUUIDs");
  v19 = sub_100013CA4(v27, 0, v13, v14, v15, v16, v17, v18, "kCBScanOptionAppleFilterTargetCore");
  if (v19)
  {
    sub_1005B2CE4(a1, 110, xdict, v19);
    v19 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      sub_100857D40();
    }
  }

  if (*(a1 + 80) == 2)
  {
    v21 = sub_100007EE8(v19, v20);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100671520;
    v22[3] = &unk_100AE0BC0;
    v23 = v12;
    v24 = v29;
    v25 = v26;
    sub_10000D334(v21, v22);
  }
}

void sub_10065A6C4(uint64_t a1, void *a2)
{
  if (*(a1 + 80) == 2)
  {
    v11 = v2;
    v12 = v3;
    v10 = 0;
    v6 = sub_100007EE8(a1, a2);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100671680;
    v9[3] = &unk_100AE0860;
    v9[4] = &v10 + 1;
    v9[5] = &v10;
    sub_10000D334(v6, v9);
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v8 = reply;
      xpc_dictionary_set_uint64(reply, "kCBScanOptionTotalAdvMatchingRules", HIBYTE(v10));
      xpc_dictionary_set_uint64(v8, "kCBScanOptionRemainingAdvMatchingRules", v10);
      xpc_connection_send_message(*(a1 + 16), v8);
      xpc_release(v8);
    }
  }
}

void sub_10065A7A8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10037CE6C(value, "kCBMsgArgObjectDiscoveryData");
  v8 = v6;
  if (v6)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    sub_1005B2CE4(a1, 92, xdict, 1);
  }

  else
  {
    v10 = sub_100007EE8(v6, v7);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1006728F0;
    v11[3] = &unk_100AE25C8;
    v14 = a1;
    v12 = v5;
    v13 = v8;
    sub_10000D334(v10, v11);
  }
}

void sub_10065A8F8(uint64_t a1, xpc_object_t xdict)
{
  v70 = 2;
  v71 = 1;
  v68 = 1;
  v69 = 1;
  v66 = 0;
  v67 = 1;
  v64 = 0;
  v65 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 113, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857E90();
    }
  }

  v18 = sub_100013CA4(v64, 0, v12, v13, v14, v15, v16, v17, "kCBScanEnableOptionAppleFilterEnable");
  if (v18)
  {
    sub_1005B2CE4(a1, 113, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857F00();
    }
  }

  v25 = sub_100013CA4(v64, 0, v19, v20, v21, v22, v23, v24, "kCBScanEnableOptionAppleFilterType");
  if (v25)
  {
    sub_1005B2CE4(a1, 113, xdict, v25);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857F70();
    }
  }

  v32 = sub_100013CA4(v64, 0, v26, v27, v28, v29, v30, v31, "kCBScanOptionAppleFilterForceDups");
  if (v32)
  {
    sub_1005B2CE4(a1, 113, xdict, v32);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857FE0();
    }
  }

  v39 = sub_100013CA4(v64, 0, v33, v34, v35, v36, v37, v38, "kCBScanOptionAppleFilterBypassFilterDuplicate");
  if (v39)
  {
    sub_1005B2CE4(a1, 113, xdict, v39);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858050();
    }
  }

  v46 = sub_100013CA4(v64, 0, v40, v41, v42, v43, v44, v45, "kCBScanOptionAppleFilterTargetCore");
  if (v46)
  {
    sub_1005B2CE4(a1, 113, xdict, v46);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008580C0();
    }
  }

  v53 = sub_100013CA4(v64, 0, v47, v48, v49, v50, v51, v52, "kCBScanEnableOptionAppleFilterScanDuration");
  if (v53)
  {
    sub_1005B2CE4(a1, 113, xdict, v53);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858130();
    }
  }

  v60 = sub_100013CA4(v64, 0, v54, v55, v56, v57, v58, v59, "kCBScanEnableOptionAppleFilterScanPeriod");
  if (v60)
  {
    sub_1005B2CE4(a1, 113, xdict, v60);
    v60 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
    if (v60)
    {
      sub_1008581A0();
    }
  }

  if (*(a1 + 80) == 2)
  {
    v62 = sub_100007EE8(v60, v61);
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1006716D4;
    v63[3] = &unk_100B048E0;
    v63[4] = v71;
    v63[5] = v70;
    v63[6] = v69;
    v63[7] = v68;
    v63[8] = v67;
    v63[9] = v66;
    v63[10] = v65;
    sub_10000D334(v62, v63);
  }
}

void sub_10065AD3C(uint64_t a1, xpc_object_t xdict)
{
  v158 = 0;
  v159 = 1;
  v156 = 0;
  v157 = 1;
  v154 = 0;
  v155 = 0;
  v152 = 300;
  v153 = 300;
  v151 = 300;
  v149 = 30;
  v150 = 30;
  v147 = 1;
  v148 = 30;
  v145 = 30;
  v146 = 1;
  v143 = 30;
  v144 = 30;
  v142 = 0;
  if (*(a1 + 80) == 2)
  {
    v141 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    if (v11)
    {
      sub_1005B2CE4(a1, 114, xdict, v11);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858210();
      }
    }

    v18 = sub_100013CA4(v141, 0, v12, v13, v14, v15, v16, v17, "kCBSetScanParameterOwnAddress");
    if (v18)
    {
      sub_1005B2CE4(a1, 114, xdict, v18);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858280();
      }
    }

    v25 = sub_100013CA4(v141, 0, v19, v20, v21, v22, v23, v24, "kCBSetScanParameterScanningFilterPolicy");
    if (v25)
    {
      sub_1005B2CE4(a1, 114, xdict, v25);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008582F0();
      }
    }

    v32 = sub_100013CA4(v141, 0, v26, v27, v28, v29, v30, v31, "kCBSetScanParameterScanPHY");
    if (v32)
    {
      sub_1005B2CE4(a1, 114, xdict, v32);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858360();
      }
    }

    v39 = sub_100013CA4(v141, 0, v33, v34, v35, v36, v37, v38, "kCBSetScanParameterScanTypeLE1M");
    if (v39)
    {
      sub_1005B2CE4(a1, 114, xdict, v39);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008583D0();
      }
    }

    v46 = sub_100013CA4(v141, 0, v40, v41, v42, v43, v44, v45, "kCBSetScanParameterScanTypeLE2M");
    if (v46)
    {
      sub_1005B2CE4(a1, 114, xdict, v46);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858440();
      }
    }

    v53 = sub_100013CA4(v141, 0, v47, v48, v49, v50, v51, v52, "kCBSetScanParameterScanTypeLECoded");
    if (v53)
    {
      sub_1005B2CE4(a1, 114, xdict, v53);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008584B0();
      }
    }

    v60 = sub_100013CA4(v141, 0, v54, v55, v56, v57, v58, v59, "kCBSetScanParameterScanIntervalLE1M");
    if (v60)
    {
      sub_1005B2CE4(a1, 114, xdict, v60);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858520();
      }
    }

    v67 = sub_100013CA4(v141, 0, v61, v62, v63, v64, v65, v66, "kCBSetScanParameterScanIntervalLE2M");
    if (v67)
    {
      sub_1005B2CE4(a1, 114, xdict, v67);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858590();
      }
    }

    v74 = sub_100013CA4(v141, 0, v68, v69, v70, v71, v72, v73, "kCBSetScanParameterScanIntervalLECoded");
    if (v74)
    {
      sub_1005B2CE4(a1, 114, xdict, v74);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858600();
      }
    }

    v81 = sub_100013CA4(v141, 0, v75, v76, v77, v78, v79, v80, "kCBSetScanParameterScanWindowLE1M");
    if (v81)
    {
      sub_1005B2CE4(a1, 114, xdict, v81);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858670();
      }
    }

    v88 = sub_100013CA4(v141, 0, v82, v83, v84, v85, v86, v87, "kCBSetScanParameterScanWindowLE2M");
    if (v88)
    {
      sub_1005B2CE4(a1, 114, xdict, v88);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008586E0();
      }
    }

    v95 = sub_100013CA4(v141, 0, v89, v90, v91, v92, v93, v94, "kCBSetScanParameterScanWindowLECoded");
    if (v95)
    {
      sub_1005B2CE4(a1, 114, xdict, v95);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858750();
      }
    }

    v102 = sub_100013CA4(v141, 0, v96, v97, v98, v99, v100, v101, "kCBSetScanParameterScanIsLegacy");
    if (v102)
    {
      sub_1005B2CE4(a1, 114, xdict, v102);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008587C0();
      }
    }

    v109 = sub_100013CA4(v141, 0, v103, v104, v105, v106, v107, v108, "kCBSetScanParameterScanMaxWindowLE1M");
    if (v109)
    {
      sub_1005B2CE4(a1, 114, xdict, v109);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858830();
      }
    }

    v116 = sub_100013CA4(v141, 0, v110, v111, v112, v113, v114, v115, "kCBSetScanParameterScanMaxWindowLE2M");
    if (v116)
    {
      sub_1005B2CE4(a1, 114, xdict, v116);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008588A0();
      }
    }

    v123 = sub_100013CA4(v141, 0, v117, v118, v119, v120, v121, v122, "kCBSetScanParameterScanMaxWindowLECoded");
    if (v123)
    {
      sub_1005B2CE4(a1, 114, xdict, v123);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858910();
      }
    }

    v130 = sub_100013CA4(v141, 0, v124, v125, v126, v127, v128, v129, "kCBSetScanParameterScanTargetCore");
    if (v130)
    {
      sub_1005B2CE4(a1, 114, xdict, v130);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858980();
      }
    }

    v137 = sub_100013CA4(v141, 0, v131, v132, v133, v134, v135, v136, "kCBSetScanParameterPriorityConfiguration");
    if (v137)
    {
      sub_1005B2CE4(a1, 114, xdict, v137);
      v137 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      if (v137)
      {
        sub_1008589F0();
      }
    }

    v139 = sub_100007EE8(v137, v138);
    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_10067226C;
    v140[3] = &unk_100B04AB0;
    v140[4] = v156;
    v140[5] = v155;
    v140[6] = v154;
    v140[7] = v153;
    v140[8] = v152;
    v140[9] = v151;
    v140[10] = v150;
    v140[11] = v149;
    v140[12] = v148;
    v140[13] = v145;
    v140[14] = v144;
    v140[15] = v143;
    v140[16] = v159;
    v140[17] = v158;
    v140[18] = v157;
    v140[19] = v147;
    v140[20] = v146;
    v140[21] = v142;
    sub_10000D334(v139, v140);
  }
}

void sub_10065B678(uint64_t a1, xpc_object_t xdict)
{
  v108 = 0;
  v109 = 0;
  v106 = 0;
  v107 = &off_100AE0A78;
  v104 = 0;
  v105 = &off_100AE0A78;
  v102 = 1;
  v103 = 0;
  v100 = 1;
  v101 = 1;
  v99 = 2;
  v97 = 0;
  v98 = 0;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v17 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v17)
  {
    sub_1005B2CE4(a1, 115, xdict, v17);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858A60();
    }
  }

  v18 = sub_100013CA4(xdicta, 0, v11, v12, v13, v14, v15, v16, "kCBScanOptionAppleFilterPuckType");
  if (v18)
  {
    sub_1005B2CE4(a1, 115, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858AD0();
    }
  }

  v19 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayload");
  if ((v19 && sub_1000C9980(v19, &v107) || !sub_10000C5E0(&v107)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858B40();
  }

  v20 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayloadMask");
  if ((v20 && sub_1000C9980(v20, &v105) || !sub_10000C5E0(&v105)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858B7C();
  }

  v21 = sub_10000C5E0(&v107);
  v23 = sub_10000C7D0(v21, v22);
  if (v21 > (*(*v23 + 4128))(v23) || (v24 = sub_10000C5E0(&v105), v26 = sub_10000C7D0(v24, v25), v24 > (*(*v26 + 4128))(v26)))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v33 = sub_10000C5E0(&v107);
      v34 = sub_10000C5E0(&v105);
      sub_100858BB8(v110, v33, v34);
    }
  }

  if (sub_100013CA4(xdicta, 0, v27, v28, v29, v30, v31, v32, "kCBScanOptionAppleFilterRssi") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858C0C();
  }

  if (sub_100013CA4(xdicta, 0, v35, v36, v37, v38, v39, v40, "kCBScanOptionAppleFilterForceDups") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858C7C();
  }

  if (sub_100013CA4(xdicta, 0, v41, v42, v43, v44, v45, v46, "kCBScanOptionAppleFilterAddressType") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858CEC();
  }

  if (sub_100013CA4(xdicta, 0, v47, v48, v49, v50, v51, v52, "kCBScanOptionAppleFilterBypassFilterDuplicate") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858D5C();
  }

  if (sub_100013CA4(xdicta, 0, v53, v54, v55, v56, v57, v58, "kCBScanOptionAppleFilterTargetCore") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858AD0();
  }

  if (sub_100013CA4(xdicta, 0, v59, v60, v61, v62, v63, v64, "kCBScanOptionAppleFilterRSSIThresholdOrder") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858DCC();
  }

  if (sub_100013CA4(xdicta, 0, v65, v66, v67, v68, v69, v70, "kCBScanOption127dBmReport") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858E3C();
  }

  if (sub_100013CA4(xdicta, 0, v71, v72, v73, v74, v75, v76, "kCBScanOption27dBmReport") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858EAC();
  }

  v77 = sub_100013C04(xdicta, "kCBScanOptionAppleFilterAddress");
  v78 = sub_100777FF4(v77);

  if (*(a1 + 80) == 2)
  {
    v81 = sub_100007EE8(v79, v80);
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3321888768;
    v82[2] = sub_100672348;
    v82[3] = &unk_100B04AD0;
    v82[4] = a1;
    v83 = &off_100AE0A78;
    v84 = v108;
    if (v108)
    {
      sub_10000C69C(v108);
    }

    v85 = &off_100AE0A78;
    v86 = v106;
    if (v106)
    {
      sub_10000C69C(v106);
    }

    v87 = v104;
    v88 = v109;
    v89 = v99;
    v90 = v78;
    v91 = v102;
    v92 = v101;
    v93 = v100;
    v94 = v98;
    v95 = v97;
    sub_10000D334(v81, v82);
    v85 = &off_100AE0A78;
    if (v86)
    {
      sub_10000C808(v86);
    }

    v83 = &off_100AE0A78;
    if (v84)
    {
      sub_10000C808(v84);
    }
  }

  v105 = &off_100AE0A78;
  if (v106)
  {
    sub_10000C808(v106);
  }

  v107 = &off_100AE0A78;
  if (v108)
  {
    sub_10000C808(v108);
  }
}

void sub_10065BD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19, uint64_t a20, uint64_t a21)
{
  if (a19)
  {
    sub_10000C808(a19);
  }

  *(v23 - 136) = v22;
  v25 = *(v23 - 128);
  if (v25)
  {
    sub_10000C808(v25);
  }

  *(v23 - 120) = v21;
  v26 = *(v23 - 112);
  if (v26)
  {
    sub_10000C808(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_10065BE00(uint64_t a1, xpc_object_t xdict)
{
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = &off_100AE0A78;
  v77 = 0;
  v78 = &off_100AE0A78;
  v75 = 1;
  v76 = 0;
  v73 = 1;
  v74 = 1;
  v72 = 2;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 0, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858F1C();
  }

  if (sub_100013CA4(xdicta, 0, v10, v11, v12, v13, v14, v15, "kCBScanOptionAppleFilterPuckType") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858F8C();
  }

  v16 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayload");
  if ((v16 && sub_1000C9980(v16, &v80) || !sub_10000C5E0(&v80)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858FFC();
  }

  v17 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayloadMask");
  if ((v17 && sub_1000C9980(v17, &v78) || !sub_10000C5E0(&v78)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859038();
  }

  if (sub_100013CA4(xdicta, 0, v18, v19, v20, v21, v22, v23, "kCBScanOptionAppleFilterRssi") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859074();
  }

  if (sub_100013CA4(xdicta, 0, v24, v25, v26, v27, v28, v29, "kCBScanOptionAppleFilterForceDups") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008590E4();
  }

  if (sub_100013CA4(xdicta, 0, v30, v31, v32, v33, v34, v35, "kCBScanOptionAppleFilterAddressType") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859154();
  }

  if (sub_100013CA4(xdicta, 0, v36, v37, v38, v39, v40, v41, "kCBScanOptionAppleFilterBypassFilterDuplicate") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008591C4();
  }

  if (sub_100013CA4(xdicta, 0, v42, v43, v44, v45, v46, v47, "kCBScanOptionAppleFilterTargetCore") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858F8C();
  }

  if (sub_100013CA4(xdicta, 0, v48, v49, v50, v51, v52, v53, "kCBScanOptionAppleFilterRSSIThresholdOrder") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859234();
  }

  v54 = sub_100013C04(xdicta, "kCBScanOptionAppleFilterAddress");
  v55 = sub_100777FF4(v54);

  if (*(a1 + 80) == 2)
  {
    v58 = sub_100007EE8(v56, v57);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3321888768;
    v59[2] = sub_100672558;
    v59[3] = &unk_100B04B00;
    v59[4] = a1;
    v60 = &off_100AE0A78;
    v61 = v81;
    if (v81)
    {
      sub_10000C69C(v81);
    }

    v62 = &off_100AE0A78;
    v63 = v79;
    if (v79)
    {
      sub_10000C69C(v79);
    }

    v64 = v77;
    v65 = v82;
    v66 = v72;
    v67 = v55;
    v68 = v75;
    v69 = v74;
    v70 = v73;
    sub_10000D334(v58, v59);
    v62 = &off_100AE0A78;
    if (v63)
    {
      sub_10000C808(v63);
    }

    v60 = &off_100AE0A78;
    if (v61)
    {
      sub_10000C808(v61);
    }
  }

  v78 = &off_100AE0A78;
  if (v79)
  {
    sub_10000C808(v79);
  }

  v80 = &off_100AE0A78;
  if (v81)
  {
    sub_10000C808(v81);
  }
}

void sub_10065C364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19, uint64_t a20, uint64_t a21)
{
  if (a19)
  {
    sub_10000C808(a19);
  }

  *(v23 - 104) = v22;
  v25 = *(v23 - 96);
  if (v25)
  {
    sub_10000C808(v25);
  }

  *(v23 - 88) = v21;
  v26 = *(v23 - 80);
  if (v26)
  {
    sub_10000C808(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_10065C3D4(uint64_t a1, void *a2)
{
  if (*(a1 + 80) > 1)
  {
    v3 = +[NSMutableArray array];
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    array = xpc_dictionary_get_array(value, "kCBMsgArgRules");
    v7 = array;
    if (!array || (array = xpc_get_type(array), array != &_xpc_type_array) || (applier[0] = _NSConcreteStackBlock, applier[1] = 3221225472, applier[2] = sub_1006775D0, applier[3] = &unk_100B04D98, v13 = v3, v8 = xpc_array_apply(v7, applier), v13, v8))
    {
      v9 = sub_100007EE8(array, v6);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100677790;
      v10[3] = &unk_100ADF820;
      v11 = v3;
      sub_10000D334(v9, v10);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008592A4();
  }
}

void sub_10065C588(uint64_t a1, xpc_object_t xdict)
{
  v34 = 0;
  v35 = 0;
  v33 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (*(a1 + 80) == 2)
  {
    v18 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    if (v18)
    {
      sub_1005B2CE4(a1, 120, xdict, v18);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008592E0();
      }
    }

    v25 = sub_100013CA4(v33, 0, v12, v13, v14, v15, v16, v17, "kCBDataLengthMaxTxOctets");
    if (v25)
    {
      sub_1005B2CE4(a1, 120, xdict, v25);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859350();
      }
    }

    v26 = sub_100013CA4(v33, 0, v19, v20, v21, v22, v23, v24, "kCBDataLengthMaxTxTime");
    if (v26)
    {
      sub_1005B2CE4(a1, 120, xdict, v26);
      v26 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        sub_1008593C0();
      }
    }

    v28 = sub_100007EE8(v26, v27);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100671754;
    v29[3] = &unk_100AE0BC0;
    v30 = v11;
    v31 = v35;
    v32 = v34;
    sub_10000D334(v28, v29);
  }
}

void sub_10065C7E0(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (*(a1 + 80) > 1)
  {
    v3 = sub_10000C7D0(a1, a2);
    v4 = (*(*v3 + 3288))(v3);
    if (v4)
    {
      v6 = sub_100007EE8(v4, v5);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100671A48;
      v7[3] = &unk_100AE25F0;
      v7[4] = &v8;
      v7[5] = a1;
      sub_10000D334(v6, v7);
      if (*(v9 + 6) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085946C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859430();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008594DC();
  }

  _Block_object_dispose(&v8, 8);
}

void sub_10065C94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065C964(uint64_t a1, xpc_object_t xdict)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_10000C7D0(v5, v6);
  if ((*(*v7 + 3288))(v7))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v8 = sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48));
          if (v8)
          {
            if (*(a1 + 80) > 1)
            {
              v11 = sub_100007EE8(v8, v9);
              v14[0] = _NSConcreteStackBlock;
              v14[1] = 3221225472;
              v14[2] = sub_100671AA0;
              v14[3] = &unk_100AF5598;
              v16 = v18;
              v17 = a1;
              v15 = v5;
              sub_10000D334(v11, v14);
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100859518();
            }

            goto LABEL_25;
          }

          v10 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v12 = *(a1 + 96);
            v13 = *(a1 + 48);
            *buf = 138412802;
            v21 = v12;
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v5;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 122, xdict, 17);
        goto LABEL_25;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 122, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(v18, 8);
}

void sub_10065CC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065CCD8(uint64_t a1, xpc_object_t xdict)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_10000C7D0(v5, v6);
  if ((*(*v7 + 3288))(v7))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v8 = sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48));
          if (v8)
          {
            if (*(a1 + 80) <= 0)
            {
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_100859554();
              }
            }

            else
            {
              v10 = sub_100007EE8(v8, v9);
              v14[0] = _NSConcreteStackBlock;
              v14[1] = 3221225472;
              v14[2] = sub_100671B78;
              v14[3] = &unk_100AF5598;
              v16 = v18;
              v17 = a1;
              v15 = v5;
              sub_10000D334(v10, v14);
            }

            goto LABEL_24;
          }

          v11 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v12 = *(a1 + 96);
            v13 = *(a1 + 48);
            *buf = 138412802;
            v21 = v12;
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v5;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 124, xdict, 17);
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 124, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_24:

  _Block_object_dispose(v18, 8);
}

void sub_10065D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065D04C(uint64_t a1, xpc_object_t xdict)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 3;
  v27 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v29 + 6) = v12;
  v14 = sub_10000C7D0(v12, v13);
  if ((*(*v14 + 3288))(v14))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
          {
            if (*(a1 + 80) > 1)
            {
              *&buf[8] = 0x10000;
              *&buf[16] = 0x100010001;
              *buf = 0;
              *&buf[24] = xmmword_1008AABE0;
              *&buf[40] = 0;
              *&buf[2] = 0x200000000;
              v16 = sub_100013CA4(v27, 0, &buf[20], &buf[24], &buf[26], &buf[28], &buf[30], &buf[32], "kCBCSWriteRemoteNumConfigSupported");
              *(v29 + 6) = v16;
              v18 = sub_100007EE8(v16, v17);
              v21[0] = _NSConcreteStackBlock;
              v21[1] = 3221225472;
              v21[2] = sub_100671AFC;
              v21[3] = &unk_100B04908;
              v24 = a1;
              v23 = &v28;
              v22 = v5;
              v25 = *buf;
              v26[0] = *&buf[16];
              *(v26 + 10) = *&buf[26];
              sub_10000D334(v18, v21);
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100859518();
            }

            goto LABEL_25;
          }

          v15 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 96);
            v20 = *(a1 + 48);
            *buf = 138412802;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            *&buf[22] = 2112;
            *&buf[24] = v5;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 124, xdict, 17);
        goto LABEL_25;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 124, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v28, 8);
}

void sub_10065D5F8(uint64_t a1, xpc_object_t xdict)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_10000C7D0(v5, v6);
  if ((*(*v7 + 3288))(v7))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v8 = sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48));
          if (v8)
          {
            if (*(a1 + 80) > 1)
            {
              v11 = sub_100007EE8(v8, v9);
              v14[0] = _NSConcreteStackBlock;
              v14[1] = 3221225472;
              v14[2] = sub_100671BD4;
              v14[3] = &unk_100AF5598;
              v16 = v18;
              v17 = a1;
              v15 = v5;
              sub_10000D334(v11, v14);
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100859518();
            }

            goto LABEL_25;
          }

          v10 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v12 = *(a1 + 96);
            v13 = *(a1 + 48);
            *buf = 138412802;
            v21 = v12;
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v5;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 125, xdict, 17);
        goto LABEL_25;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 125, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(v18, 8);
}

void sub_10065D92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065D96C(uint64_t a1, xpc_object_t xdict)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 3;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v35 + 6) = v12;
  v14 = sub_10000C7D0(v12, v13);
  if ((*(*v14 + 3288))(v14))
  {
    if (*(v35 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v15 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 126, xdict, v15);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_49;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_49:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v15 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v17 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 96);
        v30 = *(a1 + 48);
        *v45 = 138412802;
        *&v45[4] = v29;
        *&v45[12] = 2112;
        *&v45[14] = v30;
        *&v45[22] = 2112;
        *&v45[24] = v5;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", v45, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008596C8();
      }

LABEL_30:
      sub_1005B2CE4(a1, 126, xdict, 17);
      goto LABEL_25;
    }

    *v45 = xmmword_1008AABF0;
    *&v45[16] = 0;
    *&v45[20] = 1;
    *&v45[22] = -58720260;
    *&v45[30] = 0x1FFF;
    *&v45[32] = 0x3000000000001;
    *&v45[40] = 0;
    v18 = sub_100013CA4(xdicta, 0, &v45[20], &v45[32], &v45[34], &v45[36], &v45[38], v16, "kCBCSCreateConfigConfigID");
    *(v35 + 6) = v18;
    v19 = xpc_dictionary_get_value(xdicta, "kCBCSCreateConfigChannelMap");
    v21 = v19;
    if (v19)
    {
      v31 = &off_100AE0A78;
      v32 = 0;
      v22 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Raw bytes Channel map data found", buf, 2u);
      }

      v23 = sub_1000C9980(v21, &v31);
      *(v35 + 6) = v23;
      if (v23 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859590();
      }

      if (sub_10000C5E0(&v31) > 0xAuLL)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v26 = sub_10000C5E0(&v31);
          sub_100859600(v26, buf);
        }
      }

      else
      {
        v24 = sub_10000C5F8(&v31);
        v25 = sub_10000C5E0(&v31);
        memcpy(&v45[22], v24, v25);
      }

      v31 = &off_100AE0A78;
      v19 = v32;
      if (v32)
      {
        sub_10000C808(v32);
      }
    }

    v27 = *(v35 + 6);
    if (v27 || (v28 = sub_100007EE8(v19, v20), v38[0] = _NSConcreteStackBlock, v38[1] = 3221225472, v38[2] = sub_100671C30, v38[3] = &unk_100B04908, v40 = &v34, v41 = a1, v39 = v5, v42 = *v45, v43[0] = *&v45[16], *(v43 + 10) = *&v45[26], sub_10000D334(v28, v38), v39, (v27 = *(v35 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 126, xdict, v27);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859658();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v34, 8);
}

void sub_10065E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, atomic_uint *a60, uint64_t a61, char a62)
{
  if (a60)
  {
    sub_10000C808(a60);
  }

  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

void sub_10065E0B4(uint64_t a1, xpc_object_t xdict)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 3;
  v34 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v36 + 6) = v12;
  v14 = sub_10000C7D0(v12, v13);
  if ((*(*v14 + 3288))(v14))
  {
    if (*(v36 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v15 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 127, xdict, v15);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_37:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v15 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v22 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 96);
        v28 = *(a1 + 48);
        *buf = 138412802;
        v40 = v27;
        v41 = 2112;
        v42 = v28;
        v43 = 2112;
        v44 = v5;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859774();
      }

LABEL_30:
      sub_1005B2CE4(a1, 127, xdict, 17);
      goto LABEL_25;
    }

    buf[0] = 0;
    v23 = sub_100013CA4(v34, 0, v16, v17, v18, v19, v20, v21, "kCBCSCreateConfigConfigID");
    v25 = v23;
    *(v36 + 6) = v23;
    if (v23 || (v26 = sub_100007EE8(v23, v24), v29[0] = _NSConcreteStackBlock, v29[1] = 3221225472, v29[2] = sub_100671CD8, v29[3] = &unk_100AF5570, v31 = &v35, v32 = a1, v30 = v5, v33 = buf[0], sub_10000D334(v26, v29), v30, (v25 = *(v36 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 127, xdict, v25);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859704();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v35, 8);
}

void sub_10065E4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065E52C(uint64_t a1, xpc_object_t xdict)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 3;
  v37 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v35[3] = 0;
  v36 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v39 + 6) = v12;
  v14 = sub_10000C7D0(v12, v13);
  if ((*(*v14 + 3288))(v14))
  {
    if (*(v39 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v15 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 128, xdict, v15);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_37:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v15 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v22 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 96);
        v28 = *(a1 + 48);
        *buf = 138412802;
        v43 = v27;
        v44 = 2112;
        v45 = v28;
        v46 = 2112;
        v47 = v5;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859820();
      }

LABEL_30:
      sub_1005B2CE4(a1, 128, xdict, 17);
      goto LABEL_25;
    }

    v23 = sub_100013CA4(v37, 0, v16, v17, v18, v19, v20, v21, "kCBCSSetConfigID");
    v25 = v23;
    *(v39 + 6) = v23;
    if (v23 || (v26 = sub_100007EE8(v23, v24), v29[0] = _NSConcreteStackBlock, v29[1] = 3221225472, v29[2] = sub_100671D38, v29[3] = &unk_100B04930, v33 = a1, v31 = &v38, v30 = v5, v32 = v35, v34 = v36, sub_10000D334(v26, v29), v30, (v25 = *(v39 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 128, xdict, v25);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008597B0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v38, 8);
}

void sub_10065E9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10065E9FC(uint64_t a1, xpc_object_t xdict)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 3;
  v32 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v34 + 6) = v12;
  v14 = sub_10000C7D0(v12, v13);
  if ((*(*v14 + 3288))(v14))
  {
    if (*(v34 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v15 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 129, xdict, v15);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_37:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v15 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v19 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 96);
        v25 = *(a1 + 48);
        *buf = 138412802;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        *&buf[22] = 2112;
        *&buf[24] = v5;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008598CC();
      }

LABEL_30:
      sub_1005B2CE4(a1, 129, xdict, 17);
      goto LABEL_25;
    }

    memset(buf, 0, 32);
    *&buf[28] = 257;
    v20 = sub_100013CA4(v32, 0, &buf[22], &buf[24], &buf[28], v16, v17, v18, "kCBCSCreateConfigConfigID");
    v22 = v20;
    *(v34 + 6) = v20;
    if (v20 || (v23 = sub_100007EE8(v20, v21), v26[0] = _NSConcreteStackBlock, v26[1] = 3221225472, v26[2] = sub_100671DA4, v26[3] = &unk_100B04958, v28 = &v33, v29 = a1, v27 = v5, v30 = *buf, v31 = *&buf[16], sub_10000D334(v23, v26), v27, (v22 = *(v34 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 129, xdict, v22);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085985C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v33, 8);
}

void sub_10065EF84(uint64_t a1, xpc_object_t xdict)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 3;
  v25 = &off_100AE0A78;
  v26 = 0;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  *(v28 + 6) = v11;
  v13 = sub_10000C7D0(v11, v12);
  if ((*(*v13 + 3288))(v13))
  {
    if (*(v28 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      sub_1005B2CE4(a1, 130, xdict, 3);
      goto LABEL_8;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859978();
      }

      sub_1005B2CE4(a1, 130, xdict, 17);
      goto LABEL_8;
    }

    v14 = xpc_dictionary_get_value(xdicta, "kCBCSChannelClassification");
    v16 = v14;
    if (!v14)
    {
      if (*(v28 + 6))
      {
LABEL_25:
        v19 = *(v28 + 6);
        if (v19)
        {
          sub_1005B2CE4(a1, 130, xdict, v19);
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_100859908();
          }
        }

        goto LABEL_8;
      }

LABEL_21:
      v18 = sub_100007EE8(v14, v15);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_100671E18;
      v20[3] = &unk_100B04980;
      v20[4] = &v27;
      v20[5] = a1;
      v21 = &off_100AE0A78;
      v22 = v26;
      if (v26)
      {
        sub_10000C69C(v26);
      }

      sub_10000D334(v18, v20);
      v21 = &off_100AE0A78;
      if (v22)
      {
        sub_10000C808(v22);
      }

      goto LABEL_25;
    }

    v17 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Channel Classification data found", buf, 2u);
    }

    v14 = sub_1000C9980(v16, &v25);
    *(v28 + 6) = v14;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_8:
  v25 = &off_100AE0A78;
  if (v26)
  {
    sub_10000C808(v26);
  }

  _Block_object_dispose(&v27, 8);
}

void sub_10065F2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, atomic_uint *a20)
{
  if (a20)
  {
    sub_10000C808(a20);
  }

  *(v21 - 96) = v20;
  v23 = *(v21 - 88);
  if (v23)
  {
    sub_10000C808(v23);
  }

  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10065F304(uint64_t a1, xpc_object_t xdict)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 3;
  v34 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v32 = 0;
  v33 = 0;
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v36 + 6) = v12;
  v14 = sub_10000C7D0(v12, v13);
  if ((*(*v14 + 3288))(v14))
  {
    if (*(v36 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    v21 = sub_100013CA4(v34, 1, v15, v16, v17, v18, v19, v20, "kCBCSDefaultSettingsRoleEnable");
    *(v36 + 6) = v21;
    if (v21)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        sub_100857520();
      }

LABEL_10:
      sub_1005B2CE4(a1, 131, xdict, 3);
      goto LABEL_11;
    }

    if (*(a1 + 80) <= 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008599B4();
      }

      sub_1005B2CE4(a1, 131, xdict, 17);
    }

    else
    {
      v23 = sub_100007EE8(v21, v22);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100671ED8;
      v25[3] = &unk_100B049B8;
      v27 = &v35;
      v28 = a1;
      v26 = v5;
      v29 = v33;
      v30 = v32;
      v31 = 20;
      sub_10000D334(v23, v25);

      v24 = *(v36 + 6);
      if (v24)
      {
        sub_1005B2CE4(a1, 131, xdict, v24);
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100859908();
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_11:

  _Block_object_dispose(&v35, 8);
}

void sub_10065F634(uint64_t a1, void *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 3;
  v4 = sub_10000C7D0(a1, a2);
  v5 = (*(*v4 + 3288))(v4);
  if (v5)
  {
    v7 = sub_100007EE8(v5, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100671F40;
    v9[3] = &unk_100AE25F0;
    v9[4] = &v10;
    v9[5] = a1;
    sub_10000D334(v7, v9);
    v8 = *(v11 + 6);
    if (v8)
    {
      sub_1005B2CE4(a1, 132, a2, v8);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008599F0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

  _Block_object_dispose(&v10, 8);
}

void sub_10065F78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065F7A4(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_10000C7D0(v5, v6);
  if ((*(*v7 + 3288))(v7))
  {
    if (!v5)
    {
      goto LABEL_32;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_1007868D4(off_100B508C8, v5))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008565BC();
      }

      if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        goto LABEL_24;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v8 = sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48));
      if ((v8 & 1) == 0)
      {
        v10 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 96);
          v14 = *(a1 + 48);
          *buf = 138412802;
          v24 = v13;
          v25 = 2112;
          v26 = v14;
          v27 = 2112;
          v28 = v5;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
        }

        goto LABEL_24;
      }

      if (*(a1 + 80) <= 1)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008598CC();
        }

LABEL_24:
        sub_1005B2CE4(a1, 133, xdict, 17);
        goto LABEL_25;
      }

      v11 = sub_100007EE8(v8, v9);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100671F98;
      v15[3] = &unk_100AF5598;
      v17 = &v19;
      v18 = a1;
      v16 = v5;
      sub_10000D334(v11, v15);
      v12 = *(v20 + 6);
      if (v12)
      {
        sub_1005B2CE4(a1, 133, xdict, v12);
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085985C();
        }
      }
    }

    else
    {
LABEL_32:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      sub_1005B2CE4(a1, 133, xdict, 8);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v19, 8);
}

void sub_10065FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065FB6C(uint64_t a1, xpc_object_t xdict)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 3;
  v31 = &off_100AE0A78;
  v32 = 0;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_10000C7D0(v5, v6);
  if ((*(*v7 + 3288))(v7))
  {
    v14 = sub_100013CA4(value, 1, v8, v9, v10, v11, v12, v13, "kCBMsgArgOptions");
    *(v34 + 6) = v14;
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v15 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 134, xdict, v15);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_49;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_49:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v15 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_39;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v16 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 96);
        v23 = *(a1 + 48);
        *buf = 138412802;
        v38 = v22;
        v39 = 2112;
        v40 = v23;
        v41 = 2112;
        v42 = v5;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_39;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008598CC();
      }

LABEL_39:
      sub_1005B2CE4(a1, 134, xdict, 17);
      goto LABEL_25;
    }

    v17 = xpc_dictionary_get_value(xdicta, "kCBCSReflectorFAETable");
    if (!v17)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859AD0();
      }

      goto LABEL_39;
    }

    v18 = sub_1000C9980(v17, &v31);
    *(v34 + 6) = v18;
    if (v18)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859A60();
      }
    }

    else
    {
      v20 = sub_100007EE8(v18, v19);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3321888768;
      v24[2] = sub_100671FF4;
      v24[3] = &unk_100B049E0;
      v26 = &v33;
      v27 = a1;
      v25 = v5;
      v28 = &off_100AE0A78;
      v29 = v32;
      if (v32)
      {
        sub_10000C69C(v32);
      }

      sub_10000D334(v20, v24);
      v28 = &off_100AE0A78;
      if (v29)
      {
        sub_10000C808(v29);
      }

      v21 = *(v34 + 6);
      if (v21)
      {
        sub_1005B2CE4(a1, 134, xdict, v21);
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085985C();
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  v31 = &off_100AE0A78;
  if (v32)
  {
    sub_10000C808(v32);
  }

  _Block_object_dispose(&v33, 8);
}

void sub_100660068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, atomic_uint *a24, ...)
{
  va_start(va, a24);

  if (a24)
  {
    sub_10000C808(a24);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006600D4(uint64_t a1, xpc_object_t xdict)
{
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = *(a1 + 80);
  if (v12 == 2 || v12 == 1 && sub_100011EDC(a1))
  {
    v19 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    if (v19)
    {
      sub_1005B2CE4(a1, 135, xdict, v19);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859B0C();
      }
    }

    v26 = sub_100013CA4(v50, 0, v13, v14, v15, v16, v17, v18, "kCBLeSetPhyAllPhys");
    if (v26)
    {
      sub_1005B2CE4(a1, 135, xdict, v26);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859B7C();
      }
    }

    v33 = sub_100013CA4(v50, 0, v20, v21, v22, v23, v24, v25, "kCBLeSetPhyTxPhys");
    if (v33)
    {
      sub_1005B2CE4(a1, 135, xdict, v33);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859BEC();
      }
    }

    v40 = sub_100013CA4(v50, 0, v27, v28, v29, v30, v31, v32, "kCBLeSetPhyRxPhys");
    if (v40)
    {
      sub_1005B2CE4(a1, 135, xdict, v40);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859C5C();
      }
    }

    v41 = sub_100013CA4(v50, 0, v34, v35, v36, v37, v38, v39, "kCBLeSetPhyRxPhyOptions");
    if (v41)
    {
      sub_1005B2CE4(a1, 135, xdict, v41);
      v41 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        sub_100859CCC();
      }
    }

    v43 = sub_100007EE8(v41, v42);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100672054;
    v44[3] = &unk_100B04A18;
    v45 = v11;
    v46 = v54;
    v47 = v53;
    v48 = v52;
    v49 = v51;
    sub_10000D334(v43, v44);
  }
}

void sub_100660430(uint64_t a1, xpc_object_t xdict)
{
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 3;
  v89 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v88 = 0;
  v87 = 0;
  v86 = -120;
  v85 = -120;
  v84 = -120;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  if (*(a1 + 80) >= 1)
  {
    v12 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    *(v91 + 6) = v12;
    v19 = sub_100013CA4(v89, 0, v13, v14, v15, v16, v17, v18, "kCBRSSIStatisticAndDetectionEnable");
    *(v91 + 6) = v19;
    v31 = v88 != 0;
    v20 = v87;
    v21 = v86;
    v22 = v85;
    v42 = v84;
    v23 = v83;
    v41 = v82;
    v40 = v81;
    v38 = v79;
    v39 = v80;
    v36 = v77;
    v37 = v78;
    v35 = v76;
    v34 = v75;
    v33 = v74;
    v44 = v73;
    v32 = v71;
    v43 = v72;
    v24 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 96) UTF8String];
      *buf = 136384259;
      v95 = v25;
      v96 = 1024;
      v97 = v88 != 0;
      v98 = 1024;
      v99 = v87;
      v100 = 1024;
      v101 = v78;
      v102 = 1024;
      v103 = v77;
      v104 = 1024;
      v105 = v86;
      v106 = 1024;
      v107 = v85;
      v108 = 1024;
      v109 = v84;
      v110 = 1024;
      v111 = v83;
      v112 = 1024;
      v113 = v82;
      v114 = 1024;
      v115 = v81;
      v116 = 1024;
      v117 = v80;
      v118 = 1024;
      v119 = v79;
      v120 = 1024;
      v121 = v72;
      v122 = 1024;
      v123 = v73;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Initiate CBMsgIdConfigureRSSIDetectionAndStatistics by %{private}s enable=%d  window=%d mask=%d:%d Further=%d:%d:%d closer=%d:%d:%d var=%d:%d aopPath=%d Debug=%d", buf, 0x60u);
      v19 = *(v91 + 6);
    }

    if (v19)
    {
      sub_1005B2CE4(a1, 226, xdict, v19);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859D3C();
      }
    }

    if (v11)
    {
      v70 = 0;
      if (qword_100B508B0 != -1)
      {
        sub_10085681C();
      }

      v26 = off_100B508A8;
      sub_10004DFB4(buf, v11);
      v27 = sub_1000C4FCC(v26, buf, &v70);
      if (v27)
      {
        v29 = sub_100007EE8(v27, v28);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1006720F0;
        v45[3] = &unk_100B04A40;
        v48 = a1;
        v47 = &v90;
        v46 = v11;
        v49 = v31;
        v50 = v20;
        v51 = v21;
        v52 = v22;
        v53 = v42;
        v54 = v23;
        v55 = v41;
        v56 = v40;
        v57 = v39;
        v58 = v38;
        v59 = v37;
        v60 = v36;
        v61 = 0;
        v62 = v35;
        v63 = v34;
        v64 = v33;
        v65 = v44;
        v66 = v32;
        v67 = v43;
        v68 = 0;
        v69 = 0;
        sub_10000D334(v29, v45);
      }

      else
      {
        *(v91 + 6) = 312;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100859DAC();
        }
      }
    }

    v30 = *(v91 + 6);
    if (v30)
    {
      sub_1005B2CE4(a1, 226, xdict, v30);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859E28();
      }
    }
  }

  _Block_object_dispose(&v90, 8);
}

void sub_100660AF4(uint64_t a1, xpc_object_t xdict)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 3;
  v43 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  if (*(a1 + 80) >= 1)
  {
    v12 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    *(v45 + 6) = v12;
    v19 = sub_100013CA4(v43, 0, v13, v14, v15, v16, v17, v18, "kCBBluetoothUsageEnable");
    v20 = v45;
    *(v45 + 6) = v19;
    v21 = v41;
    v22 = v40;
    v23 = qword_100BCE950;
    v24 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      v26 = [*(a1 + 96) UTF8String];
      *buf = 67109635;
      v49 = v41;
      v50 = 1024;
      v51 = v40;
      v52 = 2081;
      v53 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Initiate CBMsgIdConfigureUsageDetection max=%d min=%d for app %{private}s\t", buf, 0x18u);
      v20 = v45;
      v19 = *(v45 + 6);
    }

    if (v19)
    {
      sub_1005B2CE4(a1, 227, xdict, v19);
      v27 = qword_100BCE950;
      v24 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      v20 = v45;
      if (v24)
      {
        v30 = *(v45 + 6);
        *buf = 67109120;
        v49 = v30;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to convertXPC options  for handleConfigureUsageNotification: %d", buf, 8u);
        v20 = v45;
      }
    }

    v28 = *(v20 + 6);
    if (!v28 && v11)
    {
      v29 = sub_100007EE8(v24, v25);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100672170;
      v31[3] = &unk_100B04A68;
      v33 = &v44;
      v34 = a1;
      v35 = v42;
      v37 = v21;
      v38 = v22;
      v32 = v11;
      v36 = v39;
      sub_10000D334(v29, v31);

      v28 = *(v45 + 6);
    }

    if (v28)
    {
      sub_1005B2CE4(a1, 227, xdict, v28);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859E98();
      }
    }
  }

  _Block_object_dispose(&v44, 8);
}

void sub_100660E88(uint64_t a1, xpc_object_t xdict)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 3;
  v40 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v39 = 0;
  v38 = 0;
  if (*(a1 + 80) >= 1)
  {
    v12 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    *(v42 + 6) = v12;
    v19 = sub_100013CA4(v40, 0, v13, v14, v15, v16, v17, v18, "kCBPhyStatsConfigEnable");
    v20 = v42;
    *(v42 + 6) = v19;
    v21 = qword_100BCE950;
    v22 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      v24 = [*(a1 + 96) UTF8String];
      *buf = 67109379;
      v46 = v38;
      v47 = 2081;
      v48 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Initiate CBMsgIdConfigureUsageStatistics Subrate=%d for App %{private}s", buf, 0x12u);
      v20 = v42;
      v19 = *(v42 + 6);
    }

    if (v19)
    {
      sub_1005B2CE4(a1, 228, xdict, v19);
      v25 = qword_100BCE950;
      v22 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      v20 = v42;
      if (v22)
      {
        v28 = *(v42 + 6);
        *buf = 67109120;
        v46 = v28;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to convertXPC options  for handleConfigureUsageNotification: %d", buf, 8u);
        v20 = v42;
      }
    }

    v26 = *(v20 + 6);
    if (!v26 && v11)
    {
      v27 = sub_100007EE8(v22, v23);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1006721E0;
      v29[3] = &unk_100B04A90;
      v31 = &v41;
      v32 = a1;
      v33 = v39;
      v30 = v11;
      v34 = v38;
      v35 = 0u;
      v36 = 0u;
      v37 = 0;
      sub_10000D334(v27, v29);

      v26 = *(v42 + 6);
    }

    if (v26)
    {
      sub_1005B2CE4(a1, 228, xdict, v26);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859F08();
      }
    }
  }

  _Block_object_dispose(&v41, 8);
}

void sub_1006611E8(uint64_t a1, xpc_object_t xdict)
{
  v42 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857520();
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_39;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_1007868D4(off_100B508C8, v4))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008565BC();
      }

      if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v4))
      {
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        if (sub_10004FF0C(off_100B508C8, v4, *(a1 + 96), *(a1 + 48)))
        {
          v40 = 0;
          v41 = 0;
          v17 = sub_100013CA4(v42, 0, v11, v12, v13, v14, v15, v16, "@kCBConnectOptionOpportunistic");
          v18 = [ConnectOptions alertOptionsWithConnectionAlerts:0 disconnectionAlerts:0 notificationAlerts:0 delay:0 bridgeTransport:0];
          v20 = v18;
          if (*(a1 + 80) >= 1 && ([v18 setOpportunistic:v41 != 0], sub_10006638C(v42, "kCBOptionUseCaseList"), v18 = objc_claimAutoreleasedReturnValue(), (v21 = v18) != 0))
          {
            v18 = [v18 count];
            if (v18)
            {
              v22 = [NSSet setWithArray:v21];
              v23 = [v22 allObjects];

              v21 = [v23 sortedArrayUsingSelector:"compare:"];

              [v20 setUseCaseList:v21];
              v24 = sub_100670768(v21);
              v25 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v24 componentsJoinedByString:{@", "}];
                *buf = 138412290;
                v44 = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "connUseCaseList: %@", buf, 0xCu);
              }

              if (![v20 connectionUseCase])
              {
                v27 = [v21 firstObject];
                v28 = v27;
                if (v27)
                {
                  [v20 setConnectionUseCase:{objc_msgSend(v27, "longLongValue")}];
                  v29 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = sub_10002C70C([v28 longLongValue]);
                    *buf = 136315138;
                    v44 = v30;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "default useCase derived from useCaseList: %s", buf, 0xCu);
                  }
                }
              }
            }

            v31 = v21;
          }

          else
          {
            v31 = 0;
          }

          if (!v17)
          {
            v35 = sub_100007EE8(v18, v19);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10067087C;
            v36[3] = &unk_100AE25C8;
            v39 = a1;
            v37 = v4;
            v38 = v20;
            sub_10000D334(v35, v36);
          }
        }

        else
        {
          v32 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v33 = *(a1 + 96);
            v34 = *(a1 + 48);
            *buf = 138412802;
            v44 = v33;
            v45 = 2112;
            v46 = v34;
            v47 = 2112;
            v48 = v4;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }
    }

    else
    {
LABEL_39:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }
    }
  }
}

void sub_100661790(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = v5;
  if (*(a1 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859F78();
    }

    v11 = 11;
    goto LABEL_21;
  }

  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A0AC();
    }

    goto LABEL_20;
  }

  v15 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v7 = off_100B508A8;
  sub_10004DFB4(buf, v6);
  if (!sub_1000C4FCC(v7, buf, &v15))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859FC8();
    }

    goto LABEL_20;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (!sub_1000ABD24(v15))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A038();
    }

    sub_10002249C(buf);
LABEL_20:
    v11 = 8;
    goto LABEL_21;
  }

  v8 = sub_100022214(buf);
  v10 = sub_10000C7D0(v8, v9);
  v11 = (*(*v10 + 3488))(v10, v15, 0xFFFFLL, 1, 1, 1);
  sub_10002249C(buf);
  if (!v11)
  {
    v12 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Counter events for %@ started", buf, 0xCu);
      v11 = 0;
    }

    goto LABEL_23;
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A0E8();
  }

LABEL_23:
  reply = xpc_dictionary_create_reply(xdict);
  v14 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v11);
    xpc_connection_send_message(*(a1 + 16), v14);
    xpc_release(v14);
  }
}

void sub_100661A60(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = v5;
  if (*(a1 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A158();
    }

    v11 = 11;
    goto LABEL_21;
  }

  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A0AC();
    }

    goto LABEL_20;
  }

  v15 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v7 = off_100B508A8;
  sub_10004DFB4(buf, v6);
  if (!sub_1000C4FCC(v7, buf, &v15))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859FC8();
    }

    goto LABEL_20;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (!sub_1000ABD24(v15))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A038();
    }

    sub_10002249C(buf);
LABEL_20:
    v11 = 8;
    goto LABEL_21;
  }

  v8 = sub_100022214(buf);
  v10 = sub_10000C7D0(v8, v9);
  v11 = (*(*v10 + 3488))(v10, v15, 0xFFFFLL, 1, 0, 1);
  sub_10002249C(buf);
  if (!v11)
  {
    v12 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Counter events for %@ stopped", buf, 0xCu);
      v11 = 0;
    }

    goto LABEL_23;
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A0E8();
  }

LABEL_23:
  reply = xpc_dictionary_create_reply(xdict);
  v14 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v11);
    xpc_connection_send_message(*(a1 + 16), v14);
    xpc_release(v14);
  }
}

void sub_100661D30(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_1000C9AAC(value, "kCBMsgArgDevices");
  v5 = sub_10037CEF8(value, "kCBMsgArgFakeLeDeviceIgnoreMaxLimit");
  v6 = sub_10037CEF8(value, "kCBMsgArgFakeLeDeviceSynced");
  if (*(a1 + 80) >= 2)
  {
    v7 = v6;
    for (i = 0; ; ++i)
    {
      v9 = [v4 longValue];
      if (v9 <= i)
      {
        break;
      }

      v11 = sub_100007EE8(v9, v10);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100673088;
      v12[3] = &unk_100AF59D0;
      v13 = v7;
      v14 = v5;
      sub_10000CA94(v11, v12);
      usleep(0x64u);
    }
  }
}

void sub_100661E70(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v8 = sub_1000C9AAC(value, "kCBMsgArgDevices");
  if (*(a1 + 80) >= 2)
  {
    for (i = 0; ; ++i)
    {
      v5 = [v8 longValue];
      if (v5 <= i)
      {
        break;
      }

      v7 = sub_100007EE8(v5, v6);
      sub_10000CA94(v7, &stru_100B04BF8);
      usleep(0x64u);
    }
  }
}

void sub_100661F2C(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v3 = sub_100013C04(value, "kCBSetIRKForAddressPublicAddress");
    v4 = sub_100777FF4(v3);
    v5 = sub_1002D3618(v4);
    v6 = sub_10037CE6C(value, "kCBSetIRKForAddressIRK");
    if ([v6 length] == 16)
    {
      v8 = sub_100007EE8(16, v7);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100677860;
      v9[3] = &unk_100AF7CE0;
      v10 = v6;
      v11 = 16;
      v12 = 0;
      v14 = WORD2(v5);
      v13 = v5;
      sub_10000D334(v8, v9);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857664();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A194();
  }
}

void sub_1006620CC(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v3 = sub_100013C04(value, "kCBSetIRKForAddressPublicAddress");
    v4 = sub_100777FF4(v3);
    v5 = sub_1002D3618(v4);
    v7 = sub_100007EE8(v5, v6);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100677900;
    v8[3] = &unk_100AFEBE0;
    v9 = 0;
    v10 = v5;
    v11 = WORD2(v5);
    sub_10000D334(v7, v8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A1D0();
  }
}

void sub_1006621D0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
    v5 = sub_100007EE8(v3, v4);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100677954;
    v7[3] = &unk_100ADF820;
    v6 = v3;
    v8 = v6;
    sub_10000D334(v5, v7);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A20C();
  }
}

void sub_1006622E8(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    if (*(a1 + 80) <= 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A248();
      }

      xpc_dictionary_set_int64(v5, "kCBMsgArgResult", 17);
      xpc_connection_send_message(*(a1 + 16), v5);
      xpc_release(v5);
    }

    else
    {
      value = xpc_dictionary_get_value(original, "kCBMsgArgs");
      array = xpc_dictionary_get_array(value, "kCBMsgArgAnyConnectedPeripheralsPerApp");
      if (array)
      {
        v8 = array;
        if (xpc_get_type(array) == &_xpc_type_array)
        {
          if (xpc_array_get_count(v8))
          {
            v9 = 0;
            do
            {
              string = xpc_array_get_string(v8, v9);
              if (string)
              {
                v11 = string;
                v12 = [NSString stringWithUTF8String:string];
                if (qword_100B512F8 != -1)
                {
                  sub_1000C10B4();
                }

                v13 = sub_1003ADFC4(off_100B512F0, v12);
                xpc_dictionary_set_BOOL(v5, v11, v13);
              }

              ++v9;
            }

            while (v9 < xpc_array_get_count(v8));
          }
        }
      }

      xpc_connection_send_message(*(a1 + 16), v5);

      xpc_release(v5);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A284();
  }
}

void sub_1006624D4(uint64_t a1, void *a2)
{
  if (*(a1 + 80) >= 1 && (v4 = sub_10000C798(a1, a2), v5 = (*(*v4 + 368))(v4), (v5 & 1) != 0))
  {
    memset(bytes, 0, sizeof(bytes));
    v7 = sub_10000C7D0(v5, v6);
    v8 = (*(*v7 + 4056))(v7, bytes, 32);
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      v12[0] = 68157954;
      v12[1] = 32;
      v13 = 2096;
      v14 = bytes;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "LPEM data: %.32P", v12, 0x12u);
    }

    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v11 = reply;
      xpc_dictionary_set_data(reply, "kCBMsgArgLPEMData", bytes, 0x20uLL);
      xpc_dictionary_set_int64(v11, "kCBMsgArgResult", v8);
      xpc_connection_send_message(*(a1 + 16), v11);
      xpc_release(v11);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A2C0();
  }
}

void sub_10066269C(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A2FC();
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v5 = sub_100013C04(value, "kCBMsgArgWhbStableIdentifier");
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1006779A8;
      v6[3] = &unk_100B04DB8;
      v6[4] = a1;
      v6[5] = xpc_dictionary_create_reply(xdict);
      [gCBDaemonServer optimalWhbDeviceForStableIdentifier:v5 completion:v6];
    }
  }
}

void sub_1006627B0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A338();
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v5 = sub_100013C04(value, "kCBMsgArgWhbStableIdentifier");
    if (v5)
    {
      v6 = [gCBDaemonServer localWhbDeviceForStableId:v5];
      reply = xpc_dictionary_create_reply(xdict);
      if (reply)
      {
        if (v6)
        {
          v8 = [NSUUID alloc];
          v9 = [v6 identifier];
          v10 = [v8 initWithUUIDString:v9];

          v11 = v10;
          v12 = v11;
          if (v11)
          {
            *uuid = 0;
            v14 = 0;
            [v11 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(reply, "kCBMsgArgDeviceUUID", uuid);
          }
        }

        xpc_connection_send_message(*(a1 + 16), reply);
        xpc_release(reply);
      }
    }
  }
}

void sub_100662970(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A39C();
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgUseCase");
    if (qword_100B54208 != -1)
    {
      sub_10085A374();
    }

    v11 = sub_1007F024C(qword_100B54200, 0);
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v13 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgUsecaseCount", v11);
      xpc_connection_send_message(*(a1 + 16), v13);
      xpc_release(v13);
    }
  }
}

void sub_100662A78(uint64_t a1)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A448();
    }
  }

  else
  {
    v2 = [&off_100B34600 containsObject:*(a1 + 96)];
    v3 = qword_100BCE950;
    if (v2)
    {
      v4 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO);
      if (v4)
      {
        v6 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v6 = *v6;
        }

        v8 = 136446210;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Refreshing NonConnectable Identity for session %{public}s ", &v8, 0xCu);
      }

      v7 = sub_100007EE8(v4, v5);
      sub_10000D334(v7, &stru_100B04DD8);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A3D8();
    }
  }
}

void sub_100662BB4(uint64_t a1, void *a2)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100042410;
  v27 = sub_100042678;
  v28 = 0;
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A448();
    }
  }

  else
  {
    v4 = [&off_100B34618 containsObject:*(a1 + 96)];
    v5 = qword_100BCE950;
    if (v4)
    {
      v6 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO);
      if (v6)
      {
        v8 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446210;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Retrieving NonConnectable Identity for session %{public}s ", buf, 0xCu);
      }

      v9 = sub_100007EE8(v6, v7);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100677B1C;
      v22[3] = &unk_100AE1120;
      v22[4] = &v23;
      sub_10000D334(v9, v22);
      reply = xpc_dictionary_create_reply(a2);
      if (reply)
      {
        v11 = v24[5];
        if (v11)
        {
          v12 = [v11 objectForKeyedSubscript:@"instance"];
          v13 = v12;
          if (v12 && [v12 unsignedShortValue] == 1)
          {
            v14 = [v24[5] objectForKeyedSubscript:@"identity"];
            v15 = v14;
            if (v14)
            {
              v16 = v14;
              xpc_dictionary_set_data(reply, "kCBMsgArgIdentityIRK", [v15 bytes], objc_msgSend(v15, "length"));
            }

            v17 = [v24[5] objectForKeyedSubscript:@"address"];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 unsignedLongLongValue];
              if (v19)
              {
                v20 = sub_100778224(v19);
                v21 = v20;
                xpc_dictionary_set_data(reply, "kCBMsgArgIdentityAddress", [v20 bytes], objc_msgSend(v20, "length"));
              }
            }
          }
        }

        xpc_connection_send_message(*(a1 + 16), reply);
        xpc_release(reply);
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A484();
    }
  }

  _Block_object_dispose(&v23, 8);
}

void sub_100662EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100662F28(uint64_t a1, xpc_object_t original)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v4[3] = xpc_dictionary_create_reply(original);
  if (qword_100B508B0 != -1)
  {
    sub_10085681C();
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100677EBC;
  v3[3] = &unk_100B045A0;
  v3[4] = v4;
  v3[5] = a1;
  sub_100770BD0(off_100B508A8, v3);
  _Block_object_dispose(v4, 8);
}

void sub_100662FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100663008(uint64_t a1)
{
  v1 = qword_100BCE950;
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A4F4();
    }
  }

  else
  {
    v3 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "XpcLeAttConnection::handleInitCISCentral", buf, 2u);
    }

    v5 = sub_100007EE8(v3, v4);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100677B88;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000CA94(v5, v6);
  }
}

void sub_1006630F4(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A564();
    }
  }

  else
  {
    v59 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgOptions");
    sub_100013CA4(0, 1, v9, v10, v11, v12, v13, v14, "kCBLEAudioArgSduIntervalPToC");
    array = xpc_dictionary_get_array(0, "kCBLEAudioArgCisMaxSduPToC");
    v16 = array;
    if (array)
    {
      if (xpc_get_type(array) == &_xpc_type_array && xpc_array_get_count(v16) == v57)
      {
        v49 = xpc_dictionary_get_array(v59, "kCBLEAudioArgCisMaxSduCToP");
        if (v49)
        {
          if (xpc_get_type(v49) == &_xpc_type_array && xpc_array_get_count(v49) == v57)
          {
            v17 = xpc_dictionary_get_array(v59, "kCBLEAudioArgCisId");
            v18 = v17;
            if (v17)
            {
              if (xpc_get_type(v17) == &_xpc_type_array && xpc_array_get_count(v18) == v57)
              {
                v48 = xpc_dictionary_get_array(v59, "kCBLEAudioArgCisPhyPToC");
                if (v48)
                {
                  if (xpc_get_type(v48) == &_xpc_type_array && xpc_array_get_count(v48) == v57)
                  {
                    v19 = xpc_dictionary_get_array(v59, "kCBLEAudioArgCisPhyCToP");
                    v20 = v19;
                    if (v19)
                    {
                      if (xpc_get_type(v19) == &_xpc_type_array && xpc_array_get_count(v20) == v57)
                      {
                        v21 = xpc_dictionary_get_array(v59, "kCBLEAudioArgCisRtnPToC");
                        v22 = v21;
                        if (v21)
                        {
                          if (xpc_get_type(v21) == &_xpc_type_array && xpc_array_get_count(v22) == v57)
                          {
                            v23 = xpc_dictionary_get_array(v59, "kCBLEAudioArgCisRtnCToP");
                            v24 = v23;
                            if (v23)
                            {
                              if (xpc_get_type(v23) == &_xpc_type_array && xpc_array_get_count(v24) == v57)
                              {
                                xarray = v18;
                                if (v57)
                                {
                                  v25 = 0;
                                  v44 = v16;
                                  v45 = v24;
                                  v46 = v22;
                                  do
                                  {
                                    int64 = xpc_array_get_int64(v16, v25);
                                    v27 = xpc_array_get_int64(v49, v25);
                                    v28 = xpc_array_get_int64(xarray, v25);
                                    v29 = xpc_array_get_int64(v48, v25);
                                    v30 = xpc_array_get_int64(v20, v25);
                                    v31 = xpc_array_get_int64(v46, v25);
                                    v32 = xpc_array_get_int64(v45, v25);
                                    v33 = v58;
                                    if (v58 >= *(&v58 + 1))
                                    {
                                      v35 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - *(&v57 + 1)) >> 1);
                                      v36 = v35 + 1;
                                      if (v35 + 1 > 0x1999999999999999)
                                      {
                                        sub_1000C7698();
                                      }

                                      if (0x999999999999999ALL * ((*(&v58 + 1) - *(&v57 + 1)) >> 1) > v36)
                                      {
                                        v36 = 0x999999999999999ALL * ((*(&v58 + 1) - *(&v57 + 1)) >> 1);
                                      }

                                      if (0xCCCCCCCCCCCCCCCDLL * ((*(&v58 + 1) - *(&v57 + 1)) >> 1) >= 0xCCCCCCCCCCCCCCCLL)
                                      {
                                        v37 = 0x1999999999999999;
                                      }

                                      else
                                      {
                                        v37 = v36;
                                      }

                                      if (v37)
                                      {
                                        sub_10067BC68(&v57 + 8, v37);
                                      }

                                      v38 = 2 * ((v58 - *(&v57 + 1)) >> 1);
                                      *v38 = v27;
                                      *(v38 + 2) = int64;
                                      *(v38 + 4) = v28;
                                      *(v38 + 5) = v30;
                                      *(v38 + 6) = v29;
                                      *(v38 + 7) = v32;
                                      *(v38 + 8) = v31;
                                      *(v38 + 9) = 0;
                                      v34 = 10 * v35 + 10;
                                      memcpy((10 * v35 - (v58 - *(&v57 + 1))), *(&v57 + 1), v58 - *(&v57 + 1));
                                      v39 = *(&v57 + 1);
                                      *(&v57 + 1) = 10 * v35 - (v58 - *(&v57 + 1));
                                      v58 = v34;
                                      if (v39)
                                      {
                                        operator delete(v39);
                                      }
                                    }

                                    else
                                    {
                                      *v58 = v27;
                                      *(v33 + 2) = int64;
                                      *(v33 + 4) = v28;
                                      *(v33 + 5) = v30;
                                      *(v33 + 6) = v29;
                                      *(v33 + 7) = v32;
                                      *(v33 + 8) = v31;
                                      v34 = v33 + 10;
                                      *(v33 + 9) = 0;
                                    }

                                    v16 = v44;
                                    *&v58 = v34;
                                    ++v25;
                                  }

                                  while (v25 < v57);
                                }

                                v40 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG);
                                if (v40)
                                {
                                  sub_10085A530();
                                }

                                v42 = sub_100007EE8(v40, v41);
                                v50[0] = _NSConcreteStackBlock;
                                v50[1] = 3321888768;
                                v50[2] = sub_100677BDC;
                                v50[3] = &unk_100B04DF8;
                                v50[4] = a1;
                                v51 = v56;
                                v52 = v57;
                                v54 = 0;
                                v55 = 0;
                                v53 = 0;
                                if (v58 != *(&v57 + 1))
                                {
                                  sub_10067BC20(&v53, 0xCCCCCCCCCCCCCCCDLL * ((v58 - *(&v57 + 1)) >> 1));
                                }

                                sub_10000CA94(v42, v50);
                                if (v53)
                                {
                                  v54 = v53;
                                  operator delete(v53);
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

    if (*(&v57 + 1))
    {
      *&v58 = *(&v57 + 1);
      operator delete(*(&v57 + 1));
    }
  }
}