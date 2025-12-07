@interface CLFindMyAccessoryUserStats
+ (id)batteryStateToString:(int64_t)string;
- (CLFindMyAccessoryUserStats)init;
- (CLFindMyAccessoryUserStats)initWithCoder:(id)coder;
- (CLFindMyAccessoryUserStats)initWithOverflowFlag:(unint64_t)flag crashCount:(unint64_t)count multiTime:(unint64_t)time nearOwnerTime:(unint64_t)ownerTime wildTime:(unint64_t)wildTime soundCount:(unint64_t)soundCount soundTime:(unint64_t)soundTime rangingCount:(unint64_t)self0 rangingTime:(unint64_t)self1 multiLeashTime:(unint64_t)self2 multiConnectionTime:(unint64_t)self3 nearOwnerTimeV2:(unint64_t)self4 singleLeashTime:(unint64_t)self5 singleConnectionTime:(unint64_t)self6 dualConnectionTime:(unint64_t)self7 dualLeashTime:(unint64_t)self8 utAccelCount:(unint64_t)self9 lastClear:(unint64_t)clear roseOnTime:(unint64_t)onTime ownerLongSoundCount:(unint64_t)longSoundCount ownerShortSoundCount:(unint64_t)shortSoundCount utLongSoundCount:(unint64_t)utLongSoundCount utShortSoundCount:(unint64_t)utShortSoundCount bomSoundCount:(unint64_t)bomSoundCount fc1ndRangingCount:(unint64_t)fc1ndRangingCount fc1ndRangingTime:(unint64_t)fc1ndRangingTime lastPIn:(unint64_t)in batteryState:(int64_t)flag0 nbmmsRangingTime:(unint64_t)flag1 abandonedFwUpdateCount:(unint64_t)flag2 abandonedFwUpdateTime:(unint64_t)flag3 roseInitCount:(unint64_t)flag4 pairingAttemptsCount:(unint64_t)flag5 tempVeryLowCount:(unint64_t)flag6 tempLowCount:(unint64_t)flag7 tempOkCount:(unint64_t)flag8 tempHighCount:(unint64_t)flag9 proxPairingTime:(unint64_t)count0 tempLastPIn:(unint64_t)count1 nbmmsRangingCount:(unint64_t)count2 version:(unint64_t)count3;
- (CLFindMyAccessoryUserStats)initWithPayloadV1:(id)v1;
- (CLFindMyAccessoryUserStats)initWithPayloadV2:(id)v2;
- (CLFindMyAccessoryUserStats)initWithPayloadV3:(id)v3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryUserStats

- (CLFindMyAccessoryUserStats)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, v2);

  return 0;
}

- (CLFindMyAccessoryUserStats)initWithPayloadV1:(id)v1
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(v1, a2, v1, v3) == 19)
  {
    v9 = objc_msgSend_bytes(v1, v6, v7, v8);
    return objc_msgSend_initWithOverflowFlag_crashCount_multiTime_nearOwnerTime_wildTime_soundCount_soundTime_rangingCount_rangingTime_multiLeashTime_multiConnectionTime_nearOwnerTimeV2_singleLeashTime_singleConnectionTime_dualConnectionTime_dualLeashTime_utAccelCount_lastClear_roseOnTime_ownerLongSoundCount_ownerShortSoundCount_utLongSoundCount_utShortSoundCount_bomSoundCount_fc1ndRangingCount_fc1ndRangingTime_lastPIn_batteryState_nbmmsRangingTime_abandonedFwUpdateCount_abandonedFwUpdateTime_roseInitCount_pairingAttemptsCount_tempVeryLowCount_tempLowCount_tempOkCount_tempHighCount_proxPairingTime_tempLastPIn_nbmmsRangingCount_version_(self, v10, *v9, v9[1], *(v9 + 1) | (v9[4] << 16), *(v9 + 5) | (v9[7] << 16), *(v9 + 4) | (v9[10] << 16), *(v9 + 11), *(v9 + 13), *(v9 + 15), *(v9 + 17), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
  }

  else
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v12 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "Payload size does not match userstats version 1 response size", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }

      v15[0] = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4700, 16, "Payload size does not match userstats version 1 response size", v15, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryUserStats initWithPayloadV1:]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    return 0;
  }
}

- (CLFindMyAccessoryUserStats)initWithPayloadV2:(id)v2
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(v2, a2, v2, v3) == 60)
  {
    v9 = objc_msgSend_bytes(v2, v6, v7, v8);
    v10 = *(v9 + 25);
    v11 = *(v9 + 26);
    return objc_msgSend_initWithOverflowFlag_crashCount_multiTime_nearOwnerTime_wildTime_soundCount_soundTime_rangingCount_rangingTime_multiLeashTime_multiConnectionTime_nearOwnerTimeV2_singleLeashTime_singleConnectionTime_dualConnectionTime_dualLeashTime_utAccelCount_lastClear_roseOnTime_ownerLongSoundCount_ownerShortSoundCount_utLongSoundCount_utShortSoundCount_bomSoundCount_fc1ndRangingCount_fc1ndRangingTime_lastPIn_batteryState_nbmmsRangingTime_abandonedFwUpdateCount_abandonedFwUpdateTime_roseInitCount_pairingAttemptsCount_tempVeryLowCount_tempLowCount_tempOkCount_tempHighCount_proxPairingTime_tempLastPIn_nbmmsRangingCount_version_(self, *(v9 + 24), 0, 0, v9[1] + *v9, v9[4] + v9[2] + v9[5], v9[3], (v11 + v10 + *(v9 + 28)), 3 * v11 - (*(v9 + 27) + v10) + 8 * (*(v9 + 27) + v10), *(v9 + 24), v9[11], *v9, v9[1], v9[2], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v10, v11, *(v9 + 27), *(v9 + 28), *(v9 + 29), *(v9 + 24), v9[11], 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);
  }

  else
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v13 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "Payload size does not match userstats version 2 response size", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }

      v16[0] = 0;
      v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4700, 16, "Payload size does not match userstats version 2 response size", v16, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryUserStats initWithPayloadV2:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return 0;
  }
}

- (CLFindMyAccessoryUserStats)initWithPayloadV3:(id)v3
{
  *&v313[5] = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
  }

  v5 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v305 = 0;
    v306 = 2082;
    v307 = "";
    v308 = 2114;
    v3Copy = v3;
    v310 = 1026;
    *v311 = objc_msgSend_length(v3, v6, v7, v8);
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #userstats initWithPayloadV3, payload:%{public, location:escape_only}@, size:%{public}d}", buf, 0x22u);
  }

  if (!v3 || !objc_msgSend_length(v3, v6, v7, v8))
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v262 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289538;
      v305 = 0;
      v306 = 2082;
      v307 = "";
      v308 = 2082;
      v3Copy = "empty payload, no stats";
      v310 = 2114;
      *v311 = v3;
      _os_log_impl(&dword_19B873000, v262, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }
    }

    v263 = qword_1EAFE4700;
    if (os_signpost_enabled(qword_1EAFE4700))
    {
      *buf = 68289538;
      v305 = 0;
      v306 = 2082;
      v307 = "";
      v308 = 2082;
      v3Copy = "empty payload, no stats";
      v310 = 2114;
      *v311 = v3;
      v264 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@}";
      v265 = v263;
      v266 = 38;
LABEL_254:
      _os_signpost_emit_with_name_impl(&dword_19B873000, v265, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian #userstats", v264, buf, v266);
    }

    return 0;
  }

  v303.receiver = self;
  v303.super_class = CLFindMyAccessoryUserStats;
  v12 = [(CLFindMyAccessoryUserStats *)&v303 init];
  if (v12)
  {
    v302 = objc_msgSend_bytes(v3, v9, v10, v11);
    if (!objc_msgSend_length(v3, v13, v14, v15))
    {
LABEL_257:
      v268 = *(v12 + 21);
      v269 = *(v12 + 22);
      *(v12 + 7) = v269 + v268 + *(v12 + 23);
      *(v12 + 8) = 3 * v269 - v268 + 8 * v268;
      v270 = *(v12 + 12) + *(v12 + 11);
      *(v12 + 3) = 0;
      *(v12 + 4) = v270;
      *(v12 + 5) = *(v12 + 14) + *(v12 + 13) + *(v12 + 15);
      *(v12 + 72) = *(v12 + 13);
      *(v12 + 1) = 3;
      *(v12 + 2) = 0;
      return v12;
    }

    v20 = 0;
    *&v19 = 68290562;
    v301 = v19;
    while (1)
    {
      v21 = v20 + 2;
      if (v20 + 2 >= objc_msgSend_length(v3, v16, v17, v18, v301))
      {
        break;
      }

      v25 = *(v302 + v20 + 1);
      if ((v25 - 5) <= 0xFFFFFFFB)
      {
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
        }

        v281 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
        {
          v285 = objc_msgSend_length(v3, v282, v283, v284);
          *buf = 68290050;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "invalid length";
          v310 = 2114;
          *v311 = v3;
          *&v311[8] = 1026;
          *&v311[10] = v20 + 2;
          *&v311[14] = 1026;
          *&v311[16] = v285;
          _os_log_impl(&dword_19B873000, v281, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}", buf, 0x32u);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }
        }

        v276 = qword_1EAFE4700;
        if (!os_signpost_enabled(qword_1EAFE4700))
        {
          return 0;
        }

        v289 = objc_msgSend_length(v3, v286, v287, v288);
        *buf = 68290050;
        v305 = 0;
        v306 = 2082;
        v307 = "";
        v308 = 2082;
        v3Copy = "invalid length";
        v310 = 2114;
        *v311 = v3;
        *&v311[8] = 1026;
        *&v311[10] = v20 + 2;
        *&v311[14] = 1026;
        *&v311[16] = v289;
        v264 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}";
        goto LABEL_279;
      }

      v26 = *(v302 + v20);
      v20 = v21 + v25;
      if (v21 + v25 > objc_msgSend_length(v3, v22, v23, v24))
      {
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
        }

        v290 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
        {
          v294 = objc_msgSend_length(v3, v291, v292, v293);
          *buf = 68290050;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "malformed TLV, offset + length > payload";
          v310 = 2114;
          *v311 = v3;
          *&v311[8] = 1026;
          *&v311[10] = v21;
          *&v311[14] = 1026;
          *&v311[16] = v294;
          _os_log_impl(&dword_19B873000, v290, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}", buf, 0x32u);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }
        }

        v276 = qword_1EAFE4700;
        if (os_signpost_enabled(qword_1EAFE4700))
        {
          v298 = objc_msgSend_length(v3, v295, v296, v297);
          *buf = 68290050;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "malformed TLV, offset + length > payload";
          v310 = 2114;
          *v311 = v3;
          *&v311[8] = 1026;
          *&v311[10] = v21;
          *&v311[14] = 1026;
          *&v311[16] = v298;
          v264 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}";
          goto LABEL_279;
        }

        return 0;
      }

      v28 = objc_msgSend_subdataWithRange_(v3, v27, v21, v25);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }

      v29 = qword_1EAFE4700;
      if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
      {
        *buf = v301;
        v305 = 0;
        v306 = 2082;
        v307 = "";
        v308 = 2082;
        v3Copy = "TLV";
        v310 = 1026;
        *v311 = v21;
        *&v311[4] = 2114;
        *&v311[6] = v28;
        *&v311[14] = 1026;
        *&v311[16] = v26;
        v312 = 1026;
        v313[0] = v25;
        LOWORD(v313[1]) = 2114;
        *(&v313[1] + 2) = v28;
        _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #userstats, type:%{public, location:escape_only}s, offset:%{public}d, typeHex:%{public, location:escape_only}@, type:%{public}d, length:%{public}d, valueHex:%{public, location:escape_only}@}", buf, 0x42u);
      }

      switch(v26)
      {
        case 0:
          v33 = objc_msgSend_bytes(v28, v30, v31, v32);
          v37 = objc_msgSend_length(v28, v34, v35, v36);
          *(v12 + 11) = 0;
          if (v37 >= 8)
          {
            v38 = 8;
          }

          else
          {
            v38 = v37;
          }

          memcpy(v12 + 88, v33, v38);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v43 = *(v12 + 11);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "multiLeashTime";
          v310 = 1026;
          *v311 = 0;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v43;
          break;
        case 1:
          v135 = objc_msgSend_bytes(v28, v30, v31, v32);
          v139 = objc_msgSend_length(v28, v136, v137, v138);
          *(v12 + 12) = 0;
          if (v139 >= 8)
          {
            v140 = 8;
          }

          else
          {
            v140 = v139;
          }

          memcpy(v12 + 96, v135, v140);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v141 = *(v12 + 12);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "multiConnectionTime";
          v310 = 1026;
          *v311 = 1;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v141;
          break;
        case 2:
          v107 = objc_msgSend_bytes(v28, v30, v31, v32);
          v111 = objc_msgSend_length(v28, v108, v109, v110);
          *(v12 + 13) = 0;
          if (v111 >= 8)
          {
            v112 = 8;
          }

          else
          {
            v112 = v111;
          }

          memcpy(v12 + 104, v107, v112);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v113 = *(v12 + 13);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "nearOwnerTime";
          v310 = 1026;
          *v311 = 2;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v113;
          break;
        case 3:
          v121 = objc_msgSend_bytes(v28, v30, v31, v32);
          v125 = objc_msgSend_length(v28, v122, v123, v124);
          *(v12 + 6) = 0;
          if (v125 >= 8)
          {
            v126 = 8;
          }

          else
          {
            v126 = v125;
          }

          memcpy(v12 + 48, v121, v126);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v127 = *(v12 + 6);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "wildTime";
          v310 = 1026;
          *v311 = 3;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v127;
          break;
        case 4:
          v72 = objc_msgSend_bytes(v28, v30, v31, v32);
          v76 = objc_msgSend_length(v28, v73, v74, v75);
          *(v12 + 14) = 0;
          if (v76 >= 8)
          {
            v77 = 8;
          }

          else
          {
            v77 = v76;
          }

          memcpy(v12 + 112, v72, v77);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v78 = *(v12 + 14);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "singleLeashTime";
          v310 = 1026;
          *v311 = 4;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v78;
          break;
        case 5:
          v163 = objc_msgSend_bytes(v28, v30, v31, v32);
          v167 = objc_msgSend_length(v28, v164, v165, v166);
          *(v12 + 15) = 0;
          if (v167 >= 8)
          {
            v168 = 8;
          }

          else
          {
            v168 = v167;
          }

          memcpy(v12 + 120, v163, v168);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v169 = *(v12 + 15);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "singleConnectionTime";
          v310 = 1026;
          *v311 = 5;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v169;
          break;
        case 6:
          v184 = objc_msgSend_bytes(v28, v30, v31, v32);
          v188 = objc_msgSend_length(v28, v185, v186, v187);
          *(v12 + 16) = 0;
          if (v188 >= 8)
          {
            v189 = 8;
          }

          else
          {
            v189 = v188;
          }

          memcpy(v12 + 128, v184, v189);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v190 = *(v12 + 16);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "dualConnectionTime";
          v310 = 1026;
          *v311 = 6;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v190;
          break;
        case 7:
          v128 = objc_msgSend_bytes(v28, v30, v31, v32);
          v132 = objc_msgSend_length(v28, v129, v130, v131);
          *(v12 + 17) = 0;
          if (v132 >= 8)
          {
            v133 = 8;
          }

          else
          {
            v133 = v132;
          }

          memcpy(v12 + 136, v128, v133);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v134 = *(v12 + 17);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "dualLeashTime";
          v310 = 1026;
          *v311 = 7;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v134;
          break;
        case 8:
          v205 = objc_msgSend_bytes(v28, v30, v31, v32);
          v209 = objc_msgSend_length(v28, v206, v207, v208);
          *(v12 + 18) = 0;
          if (v209 >= 8)
          {
            v210 = 8;
          }

          else
          {
            v210 = v209;
          }

          memcpy(v12 + 144, v205, v210);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v211 = *(v12 + 18);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "utAccelCount";
          v310 = 1026;
          *v311 = 8;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v211;
          break;
        case 9:
          v86 = objc_msgSend_bytes(v28, v30, v31, v32);
          v90 = objc_msgSend_length(v28, v87, v88, v89);
          *(v12 + 19) = 0;
          if (v90 >= 8)
          {
            v91 = 8;
          }

          else
          {
            v91 = v90;
          }

          memcpy(v12 + 152, v86, v91);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v92 = *(v12 + 19);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "lastClear";
          v310 = 1026;
          *v311 = 9;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v92;
          break;
        case 10:
          v198 = objc_msgSend_bytes(v28, v30, v31, v32);
          v202 = objc_msgSend_length(v28, v199, v200, v201);
          *(v12 + 20) = 0;
          if (v202 >= 8)
          {
            v203 = 8;
          }

          else
          {
            v203 = v202;
          }

          memcpy(v12 + 160, v198, v203);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v204 = *(v12 + 20);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "roseOnTime";
          v310 = 1026;
          *v311 = 10;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v204;
          break;
        case 11:
          v65 = objc_msgSend_bytes(v28, v30, v31, v32);
          v69 = objc_msgSend_length(v28, v66, v67, v68);
          *(v12 + 27) = 0;
          if (v69 >= 8)
          {
            v70 = 8;
          }

          else
          {
            v70 = v69;
          }

          memcpy(v12 + 216, v65, v70);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v71 = *(v12 + 27);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "fc1ndRangingTime";
          v310 = 1026;
          *v311 = 11;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v71;
          break;
        case 12:
          v79 = objc_msgSend_bytes(v28, v30, v31, v32);
          v83 = objc_msgSend_length(v28, v80, v81, v82);
          *(v12 + 26) = 0;
          if (v83 >= 8)
          {
            v84 = 8;
          }

          else
          {
            v84 = v83;
          }

          memcpy(v12 + 208, v79, v84);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v85 = *(v12 + 26);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "fc1ndRangingCount";
          v310 = 1026;
          *v311 = 12;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v85;
          break;
        case 13:
          v177 = objc_msgSend_bytes(v28, v30, v31, v32);
          v181 = objc_msgSend_length(v28, v178, v179, v180);
          *(v12 + 21) = 0;
          if (v181 >= 8)
          {
            v182 = 8;
          }

          else
          {
            v182 = v181;
          }

          memcpy(v12 + 168, v177, v182);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v183 = *(v12 + 21);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "ownerLongSoundCount";
          v310 = 1026;
          *v311 = 13;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v183;
          break;
        case 14:
          v58 = objc_msgSend_bytes(v28, v30, v31, v32);
          v62 = objc_msgSend_length(v28, v59, v60, v61);
          *(v12 + 22) = 0;
          if (v62 >= 8)
          {
            v63 = 8;
          }

          else
          {
            v63 = v62;
          }

          memcpy(v12 + 176, v58, v63);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v64 = *(v12 + 22);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "ownerShortSoundCount";
          v310 = 1026;
          *v311 = 14;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v64;
          break;
        case 15:
          v114 = objc_msgSend_bytes(v28, v30, v31, v32);
          v118 = objc_msgSend_length(v28, v115, v116, v117);
          *(v12 + 23) = 0;
          if (v118 >= 8)
          {
            v119 = 8;
          }

          else
          {
            v119 = v118;
          }

          memcpy(v12 + 184, v114, v119);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v120 = *(v12 + 23);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "utLongSoundCount";
          v310 = 1026;
          *v311 = 15;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v120;
          break;
        case 16:
          v51 = objc_msgSend_bytes(v28, v30, v31, v32);
          v55 = objc_msgSend_length(v28, v52, v53, v54);
          *(v12 + 24) = 0;
          if (v55 >= 8)
          {
            v56 = 8;
          }

          else
          {
            v56 = v55;
          }

          memcpy(v12 + 192, v51, v56);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v57 = *(v12 + 24);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "utShortSoundCount";
          v310 = 1026;
          *v311 = 16;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v57;
          break;
        case 17:
          v149 = objc_msgSend_bytes(v28, v30, v31, v32);
          v153 = objc_msgSend_length(v28, v150, v151, v152);
          *(v12 + 25) = 0;
          if (v153 >= 8)
          {
            v154 = 8;
          }

          else
          {
            v154 = v153;
          }

          memcpy(v12 + 200, v149, v154);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v155 = *(v12 + 25);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "bomSoundCount";
          v310 = 1026;
          *v311 = 17;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v155;
          break;
        case 18:
          v191 = objc_msgSend_bytes(v28, v30, v31, v32);
          v195 = objc_msgSend_length(v28, v192, v193, v194);
          *(v12 + 28) = 0;
          if (v195 >= 8)
          {
            v196 = 8;
          }

          else
          {
            v196 = v195;
          }

          memcpy(v12 + 224, v191, v196);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v197 = *(v12 + 28);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "lastPIn";
          v310 = 1026;
          *v311 = 18;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v197;
          break;
        case 19:
          v226 = objc_msgSend_bytes(v28, v30, v31, v32);
          v230 = objc_msgSend_length(v28, v227, v228, v229);
          *(v12 + 29) = 0;
          if (v230 >= 8)
          {
            v231 = 8;
          }

          else
          {
            v231 = v230;
          }

          memcpy(v12 + 232, v226, v231);
          v232 = *(v12 + 29);
          if (v232 >= 4)
          {
            v232 = -1;
          }

          *(v12 + 29) = v232;
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v233 = *(v12 + 29);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "batteryState";
          v310 = 1026;
          *v311 = 19;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v233;
          break;
        case 20:
          v156 = objc_msgSend_bytes(v28, v30, v31, v32);
          v160 = objc_msgSend_length(v28, v157, v158, v159);
          *(v12 + 30) = 0;
          if (v160 >= 8)
          {
            v161 = 8;
          }

          else
          {
            v161 = v160;
          }

          memcpy(v12 + 240, v156, v161);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v162 = *(v12 + 30);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "nbmmsRangingTime";
          v310 = 1026;
          *v311 = 20;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v162;
          break;
        case 21:
          v170 = objc_msgSend_bytes(v28, v30, v31, v32);
          v174 = objc_msgSend_length(v28, v171, v172, v173);
          *(v12 + 31) = 0;
          if (v174 >= 8)
          {
            v175 = 8;
          }

          else
          {
            v175 = v174;
          }

          memcpy(v12 + 248, v170, v175);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v176 = *(v12 + 31);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "abandonedFwUpdateCount";
          v310 = 1026;
          *v311 = 21;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v176;
          break;
        case 22:
          v219 = objc_msgSend_bytes(v28, v30, v31, v32);
          v223 = objc_msgSend_length(v28, v220, v221, v222);
          *(v12 + 32) = 0;
          if (v223 >= 8)
          {
            v224 = 8;
          }

          else
          {
            v224 = v223;
          }

          memcpy(v12 + 256, v219, v224);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v225 = *(v12 + 32);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "abandonedFwUpdateTime";
          v310 = 1026;
          *v311 = 22;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v225;
          break;
        case 23:
          v234 = objc_msgSend_bytes(v28, v30, v31, v32);
          v238 = objc_msgSend_length(v28, v235, v236, v237);
          *(v12 + 33) = 0;
          if (v238 >= 8)
          {
            v239 = 8;
          }

          else
          {
            v239 = v238;
          }

          memcpy(v12 + 264, v234, v239);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v240 = *(v12 + 33);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "roseInitCount";
          v310 = 1026;
          *v311 = 23;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v240;
          break;
        case 24:
          v100 = objc_msgSend_bytes(v28, v30, v31, v32);
          v104 = objc_msgSend_length(v28, v101, v102, v103);
          *(v12 + 34) = 0;
          if (v104 >= 8)
          {
            v105 = 8;
          }

          else
          {
            v105 = v104;
          }

          memcpy(v12 + 272, v100, v105);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v106 = *(v12 + 34);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "pairingAttemptsCount";
          v310 = 1026;
          *v311 = 24;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v106;
          break;
        case 25:
          v93 = objc_msgSend_bytes(v28, v30, v31, v32);
          v97 = objc_msgSend_length(v28, v94, v95, v96);
          *(v12 + 35) = 0;
          if (v97 >= 8)
          {
            v98 = 8;
          }

          else
          {
            v98 = v97;
          }

          memcpy(v12 + 280, v93, v98);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v99 = *(v12 + 35);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "tempVeryLowCount";
          v310 = 1026;
          *v311 = 25;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v99;
          break;
        case 26:
          v255 = objc_msgSend_bytes(v28, v30, v31, v32);
          v259 = objc_msgSend_length(v28, v256, v257, v258);
          *(v12 + 36) = 0;
          if (v259 >= 8)
          {
            v260 = 8;
          }

          else
          {
            v260 = v259;
          }

          memcpy(v12 + 288, v255, v260);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v261 = *(v12 + 36);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "tempLowCount";
          v310 = 1026;
          *v311 = 26;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v261;
          break;
        case 27:
          v44 = objc_msgSend_bytes(v28, v30, v31, v32);
          v48 = objc_msgSend_length(v28, v45, v46, v47);
          *(v12 + 37) = 0;
          if (v48 >= 8)
          {
            v49 = 8;
          }

          else
          {
            v49 = v48;
          }

          memcpy(v12 + 296, v44, v49);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v50 = *(v12 + 37);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "tempOkCount";
          v310 = 1026;
          *v311 = 27;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v50;
          break;
        case 28:
          v241 = objc_msgSend_bytes(v28, v30, v31, v32);
          v245 = objc_msgSend_length(v28, v242, v243, v244);
          *(v12 + 38) = 0;
          if (v245 >= 8)
          {
            v246 = 8;
          }

          else
          {
            v246 = v245;
          }

          memcpy(v12 + 304, v241, v246);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v247 = *(v12 + 38);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "tempHighCount";
          v310 = 1026;
          *v311 = 28;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v247;
          break;
        case 29:
          v248 = objc_msgSend_bytes(v28, v30, v31, v32);
          v252 = objc_msgSend_length(v28, v249, v250, v251);
          *(v12 + 39) = 0;
          if (v252 >= 8)
          {
            v253 = 8;
          }

          else
          {
            v253 = v252;
          }

          memcpy(v12 + 312, v248, v253);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v254 = *(v12 + 39);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "proxPairingTime";
          v310 = 1026;
          *v311 = 29;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v254;
          break;
        case 30:
          v212 = objc_msgSend_bytes(v28, v30, v31, v32);
          v216 = objc_msgSend_length(v28, v213, v214, v215);
          *(v12 + 40) = 0;
          if (v216 >= 8)
          {
            v217 = 8;
          }

          else
          {
            v217 = v216;
          }

          memcpy(v12 + 320, v212, v217);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v218 = *(v12 + 40);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "tempLastPIn";
          v310 = 1026;
          *v311 = 30;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v218;
          break;
        case 31:
          v142 = objc_msgSend_bytes(v28, v30, v31, v32);
          v146 = objc_msgSend_length(v28, v143, v144, v145);
          *(v12 + 41) = 0;
          if (v146 >= 8)
          {
            v147 = 8;
          }

          else
          {
            v147 = v146;
          }

          memcpy(v12 + 328, v142, v147);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v39 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v148 = *(v12 + 41);
          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "nbmmsRangingCount";
          v310 = 1026;
          *v311 = 31;
          *&v311[4] = 1026;
          *&v311[6] = v25;
          *&v311[10] = 2114;
          *&v311[12] = v28;
          v312 = 2050;
          *v313 = v148;
          break;
        default:
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v299 = qword_1EAFE4700;
          if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
          {
            *buf = 68290306;
            v305 = 0;
            v306 = 2082;
            v307 = "";
            v308 = 2082;
            v3Copy = "unknown type";
            v310 = 2114;
            *v311 = v28;
            *&v311[8] = 1026;
            *&v311[10] = v26;
            *&v311[14] = 1026;
            *&v311[16] = v25;
            v312 = 2114;
            *v313 = v28;
            _os_log_impl(&dword_19B873000, v299, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, typeHexString:%{public, location:escape_only}@, type:%{public}d, length:%{public}d, valueHexString:%{public, location:escape_only}@}", buf, 0x3Cu);
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
            }
          }

          v300 = qword_1EAFE4700;
          if (!os_signpost_enabled(qword_1EAFE4700))
          {
            return 0;
          }

          *buf = 68290306;
          v305 = 0;
          v306 = 2082;
          v307 = "";
          v308 = 2082;
          v3Copy = "unknown type";
          v310 = 2114;
          *v311 = v28;
          *&v311[8] = 1026;
          *&v311[10] = v26;
          *&v311[14] = 1026;
          *&v311[16] = v25;
          v312 = 2114;
          *v313 = v28;
          v264 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, typeHexString:%{public, location:escape_only}@, type:%{public}d, length:%{public}d, valueHexString:%{public, location:escape_only}@}";
          v265 = v300;
          v266 = 60;
          goto LABEL_254;
      }

      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #userstats, type:%{public, location:escape_only}s, typeByte:%{public}d, length:%{public}d, valueHex:%{public, location:escape_only}@, value:%{public}lu}", buf, 0x3Cu);
LABEL_245:
      if (v20 >= objc_msgSend_length(v3, v40, v41, v42))
      {
        goto LABEL_257;
      }
    }

    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v271 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      v275 = objc_msgSend_length(v3, v272, v273, v274);
      *buf = 68290050;
      v305 = 0;
      v306 = 2082;
      v307 = "";
      v308 = 2082;
      v3Copy = "malformed TLV, offset + 2 >= length";
      v310 = 2114;
      *v311 = v3;
      *&v311[8] = 1026;
      *&v311[10] = v20;
      *&v311[14] = 1026;
      *&v311[16] = v275;
      _os_log_impl(&dword_19B873000, v271, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}", buf, 0x32u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }
    }

    v276 = qword_1EAFE4700;
    if (!os_signpost_enabled(qword_1EAFE4700))
    {
      return 0;
    }

    v280 = objc_msgSend_length(v3, v277, v278, v279);
    *buf = 68290050;
    v305 = 0;
    v306 = 2082;
    v307 = "";
    v308 = 2082;
    v3Copy = "malformed TLV, offset + 2 >= length";
    v310 = 2114;
    *v311 = v3;
    *&v311[8] = 1026;
    *&v311[10] = v20;
    *&v311[14] = 1026;
    *&v311[16] = v280;
    v264 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}";
LABEL_279:
    v265 = v276;
    v266 = 50;
    goto LABEL_254;
  }

  return v12;
}

- (CLFindMyAccessoryUserStats)initWithOverflowFlag:(unint64_t)flag crashCount:(unint64_t)count multiTime:(unint64_t)time nearOwnerTime:(unint64_t)ownerTime wildTime:(unint64_t)wildTime soundCount:(unint64_t)soundCount soundTime:(unint64_t)soundTime rangingCount:(unint64_t)self0 rangingTime:(unint64_t)self1 multiLeashTime:(unint64_t)self2 multiConnectionTime:(unint64_t)self3 nearOwnerTimeV2:(unint64_t)self4 singleLeashTime:(unint64_t)self5 singleConnectionTime:(unint64_t)self6 dualConnectionTime:(unint64_t)self7 dualLeashTime:(unint64_t)self8 utAccelCount:(unint64_t)self9 lastClear:(unint64_t)clear roseOnTime:(unint64_t)onTime ownerLongSoundCount:(unint64_t)longSoundCount ownerShortSoundCount:(unint64_t)shortSoundCount utLongSoundCount:(unint64_t)utLongSoundCount utShortSoundCount:(unint64_t)utShortSoundCount bomSoundCount:(unint64_t)bomSoundCount fc1ndRangingCount:(unint64_t)fc1ndRangingCount fc1ndRangingTime:(unint64_t)fc1ndRangingTime lastPIn:(unint64_t)in batteryState:(int64_t)flag0 nbmmsRangingTime:(unint64_t)flag1 abandonedFwUpdateCount:(unint64_t)flag2 abandonedFwUpdateTime:(unint64_t)flag3 roseInitCount:(unint64_t)flag4 pairingAttemptsCount:(unint64_t)flag5 tempVeryLowCount:(unint64_t)flag6 tempLowCount:(unint64_t)flag7 tempOkCount:(unint64_t)flag8 tempHighCount:(unint64_t)flag9 proxPairingTime:(unint64_t)count0 tempLastPIn:(unint64_t)count1 nbmmsRangingCount:(unint64_t)count2 version:(unint64_t)count3
{
  v50.receiver = self;
  v50.super_class = CLFindMyAccessoryUserStats;
  result = [(CLFindMyAccessoryUserStats *)&v50 init];
  if (result)
  {
    result->_version = version;
    result->_overflowFlag = flag;
    result->_crashCount = count;
    result->_multiTime = time;
    result->_nearOwnerTime = ownerTime;
    result->_wildTime = wildTime;
    result->_soundCount = soundCount;
    result->_soundTime = soundTime;
    result->_rangingCount = rangingCount;
    result->_rangingTime = rangingTime;
    result->_multiLeashTime = leashTime;
    result->_multiConnectionTime = connectionTime;
    result->_nearOwnerTimeV2 = v2;
    result->_singleLeashTime = singleLeashTime;
    result->_singleConnectionTime = singleConnectionTime;
    result->_dualConnectionTime = dualConnectionTime;
    result->_dualLeashTime = dualLeashTime;
    result->_utAccelCount = accelCount;
    result->_lastClear = clear;
    result->_roseOnTime = onTime;
    result->_ownerLongSoundCount = longSoundCount;
    result->_ownerShortSoundCount = shortSoundCount;
    result->_utLongSoundCount = utLongSoundCount;
    result->_utShortSoundCount = utShortSoundCount;
    result->_bomSoundCount = bomSoundCount;
    result->_fc1ndRangingCount = fc1ndRangingCount;
    result->_fc1ndRangingTime = fc1ndRangingTime;
    result->_lastPIn = in;
    result->_batteryState = state;
    result->_nbmmsRangingTime = nbmmsRangingTime;
    result->_abandonedFwUpdateCount = updateCount;
    result->_abandonedFwUpdateTime = updateTime;
    result->_roseInitCount = initCount;
    result->_pairingAttemptsCount = attemptsCount;
    result->_tempVeryLowCount = lowCount;
    result->_tempLowCount = tempLowCount;
    result->_tempOkCount = okCount;
    result->_tempHighCount = highCount;
    result->_proxPairingTime = pairingTime;
    result->_tempLastPIn = pIn;
    result->_nbmmsRangingCount = nbmmsRangingCount;
  }

  return result;
}

- (CLFindMyAccessoryUserStats)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeObjectForKey_(coder, a2, @"overflowFlag", v3);
  v291 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8);
  v11 = objc_msgSend_decodeObjectForKey_(coder, v9, @"crashCount", v10);
  v290 = objc_msgSend_unsignedIntegerValue(v11, v12, v13, v14);
  v17 = objc_msgSend_decodeObjectForKey_(coder, v15, @"multiTime", v16);
  v289 = objc_msgSend_unsignedIntegerValue(v17, v18, v19, v20);
  v23 = objc_msgSend_decodeObjectForKey_(coder, v21, @"nearOwnerTime", v22);
  v288 = objc_msgSend_unsignedIntegerValue(v23, v24, v25, v26);
  v29 = objc_msgSend_decodeObjectForKey_(coder, v27, @"wildTime", v28);
  v287 = objc_msgSend_unsignedIntegerValue(v29, v30, v31, v32);
  v35 = objc_msgSend_decodeObjectForKey_(coder, v33, @"soundCount", v34);
  v286 = objc_msgSend_unsignedIntegerValue(v35, v36, v37, v38);
  v41 = objc_msgSend_decodeObjectForKey_(coder, v39, @"soundTime", v40);
  v285 = objc_msgSend_unsignedIntegerValue(v41, v42, v43, v44);
  v47 = objc_msgSend_decodeObjectForKey_(coder, v45, @"rangingCount", v46);
  v284 = objc_msgSend_unsignedIntegerValue(v47, v48, v49, v50);
  v53 = objc_msgSend_decodeObjectForKey_(coder, v51, @"rangingTime", v52);
  v283 = objc_msgSend_unsignedIntegerValue(v53, v54, v55, v56);
  v59 = objc_msgSend_decodeObjectForKey_(coder, v57, @"multiLeashTime", v58);
  v282 = objc_msgSend_unsignedIntegerValue(v59, v60, v61, v62);
  v65 = objc_msgSend_decodeObjectForKey_(coder, v63, @"multiConnectionTime", v64);
  v281 = objc_msgSend_unsignedIntegerValue(v65, v66, v67, v68);
  v71 = objc_msgSend_decodeObjectForKey_(coder, v69, @"nearOwnerTimeV2", v70);
  v280 = objc_msgSend_unsignedIntegerValue(v71, v72, v73, v74);
  v77 = objc_msgSend_decodeObjectForKey_(coder, v75, @"singleLeashTime", v76);
  v279 = objc_msgSend_unsignedIntegerValue(v77, v78, v79, v80);
  v83 = objc_msgSend_decodeObjectForKey_(coder, v81, @"singleConnectionTime", v82);
  v278 = objc_msgSend_unsignedIntegerValue(v83, v84, v85, v86);
  v89 = objc_msgSend_decodeObjectForKey_(coder, v87, @"dualConnectionTime", v88);
  v277 = objc_msgSend_unsignedIntegerValue(v89, v90, v91, v92);
  v95 = objc_msgSend_decodeObjectForKey_(coder, v93, @"dualLeashTime", v94);
  v276 = objc_msgSend_unsignedIntegerValue(v95, v96, v97, v98);
  v101 = objc_msgSend_decodeObjectForKey_(coder, v99, @"utAccelCount", v100);
  v275 = objc_msgSend_unsignedIntegerValue(v101, v102, v103, v104);
  v107 = objc_msgSend_decodeObjectForKey_(coder, v105, @"lastClear", v106);
  v274 = objc_msgSend_unsignedIntegerValue(v107, v108, v109, v110);
  v113 = objc_msgSend_decodeObjectForKey_(coder, v111, @"roseOnTime", v112);
  v273 = objc_msgSend_unsignedIntegerValue(v113, v114, v115, v116);
  v119 = objc_msgSend_decodeObjectForKey_(coder, v117, @"ownerLongSoundCount", v118);
  v272 = objc_msgSend_unsignedIntegerValue(v119, v120, v121, v122);
  v125 = objc_msgSend_decodeObjectForKey_(coder, v123, @"ownerShortSoundCount", v124);
  v271 = objc_msgSend_unsignedIntegerValue(v125, v126, v127, v128);
  v131 = objc_msgSend_decodeObjectForKey_(coder, v129, @"utLongSoundCount", v130);
  v270 = objc_msgSend_unsignedIntegerValue(v131, v132, v133, v134);
  v137 = objc_msgSend_decodeObjectForKey_(coder, v135, @"utShortSoundCount", v136);
  v269 = objc_msgSend_unsignedIntegerValue(v137, v138, v139, v140);
  v143 = objc_msgSend_decodeObjectForKey_(coder, v141, @"bomSoundCount", v142);
  v268 = objc_msgSend_unsignedIntegerValue(v143, v144, v145, v146);
  v149 = objc_msgSend_decodeObjectForKey_(coder, v147, @"fc1ndRangingCount", v148);
  v267 = objc_msgSend_unsignedIntegerValue(v149, v150, v151, v152);
  v155 = objc_msgSend_decodeObjectForKey_(coder, v153, @"fc1ndRangingTime", v154);
  v266 = objc_msgSend_unsignedIntegerValue(v155, v156, v157, v158);
  v161 = objc_msgSend_decodeObjectForKey_(coder, v159, @"lastPin", v160);
  v265 = objc_msgSend_unsignedIntegerValue(v161, v162, v163, v164);
  v167 = objc_msgSend_decodeObjectForKey_(coder, v165, @"batteryState", v166);
  v264 = objc_msgSend_unsignedIntegerValue(v167, v168, v169, v170);
  v173 = objc_msgSend_decodeObjectForKey_(coder, v171, @"nbmmsRangingTime", v172);
  v263 = objc_msgSend_unsignedIntegerValue(v173, v174, v175, v176);
  v179 = objc_msgSend_decodeObjectForKey_(coder, v177, @"abandonedFwUpdateCount", v178);
  v262 = objc_msgSend_unsignedIntegerValue(v179, v180, v181, v182);
  v185 = objc_msgSend_decodeObjectForKey_(coder, v183, @"abandonedFwUpdateTime", v184);
  v261 = objc_msgSend_unsignedIntegerValue(v185, v186, v187, v188);
  v191 = objc_msgSend_decodeObjectForKey_(coder, v189, @"roseInitCount", v190);
  v195 = objc_msgSend_unsignedIntegerValue(v191, v192, v193, v194);
  v198 = objc_msgSend_decodeObjectForKey_(coder, v196, @"proxPairingAttemptsCount", v197);
  v202 = objc_msgSend_unsignedIntegerValue(v198, v199, v200, v201);
  v205 = objc_msgSend_decodeObjectForKey_(coder, v203, @"tempVeryLowCount", v204);
  v209 = objc_msgSend_unsignedIntegerValue(v205, v206, v207, v208);
  v212 = objc_msgSend_decodeObjectForKey_(coder, v210, @"tempLowCount", v211);
  v216 = objc_msgSend_unsignedIntegerValue(v212, v213, v214, v215);
  v219 = objc_msgSend_decodeObjectForKey_(coder, v217, @"tempOkCount", v218);
  v223 = objc_msgSend_unsignedIntegerValue(v219, v220, v221, v222);
  v226 = objc_msgSend_decodeObjectForKey_(coder, v224, @"tempHighCount", v225);
  v230 = objc_msgSend_unsignedIntegerValue(v226, v227, v228, v229);
  v233 = objc_msgSend_decodeObjectForKey_(coder, v231, @"proxPairingTime", v232);
  v237 = objc_msgSend_unsignedIntegerValue(v233, v234, v235, v236);
  v240 = objc_msgSend_decodeObjectForKey_(coder, v238, @"lastPInTemperature", v239);
  v244 = objc_msgSend_unsignedIntegerValue(v240, v241, v242, v243);
  v247 = objc_msgSend_decodeObjectForKey_(coder, v245, @"nbmmsRangingCount", v246);
  v251 = objc_msgSend_unsignedIntegerValue(v247, v248, v249, v250);
  v254 = objc_msgSend_decodeObjectForKey_(coder, v252, @"version", v253);
  v258 = objc_msgSend_unsignedIntegerValue(v254, v255, v256, v257);
  return objc_msgSend_initWithOverflowFlag_crashCount_multiTime_nearOwnerTime_wildTime_soundCount_soundTime_rangingCount_rangingTime_multiLeashTime_multiConnectionTime_nearOwnerTimeV2_singleLeashTime_singleConnectionTime_dualConnectionTime_dualLeashTime_utAccelCount_lastClear_roseOnTime_ownerLongSoundCount_ownerShortSoundCount_utLongSoundCount_utShortSoundCount_bomSoundCount_fc1ndRangingCount_fc1ndRangingTime_lastPIn_batteryState_nbmmsRangingTime_abandonedFwUpdateCount_abandonedFwUpdateTime_roseInitCount_pairingAttemptsCount_tempVeryLowCount_tempLowCount_tempOkCount_tempHighCount_proxPairingTime_tempLastPIn_nbmmsRangingCount_version_(self, v259, v291, v290, v289, v288, v287, v286, v285, v284, v283, v282, v281, v280, v279, v278, v277, v276, v275, v274, v273, v272, v271, v270, v269, v268, v267, v266, v265, v264, v263, v262, v261, v195, v202, v209, v216, v223, v230, v237, v244, v251, v258);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, self->_overflowFlag, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"overflowFlag");
  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, self->_crashCount, v9);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"crashCount");
  v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v12, self->_multiTime, v13);
  objc_msgSend_encodeObject_forKey_(coder, v15, v14, @"multiTime");
  v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v16, self->_nearOwnerTime, v17);
  objc_msgSend_encodeObject_forKey_(coder, v19, v18, @"nearOwnerTime");
  v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v20, self->_wildTime, v21);
  objc_msgSend_encodeObject_forKey_(coder, v23, v22, @"wildTime");
  v26 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, self->_soundCount, v25);
  objc_msgSend_encodeObject_forKey_(coder, v27, v26, @"soundCount");
  v30 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v28, self->_soundTime, v29);
  objc_msgSend_encodeObject_forKey_(coder, v31, v30, @"soundTime");
  v34 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v32, self->_rangingCount, v33);
  objc_msgSend_encodeObject_forKey_(coder, v35, v34, @"rangingCount");
  v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v36, self->_rangingTime, v37);
  objc_msgSend_encodeObject_forKey_(coder, v39, v38, @"rangingTime");
  v42 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v40, self->_multiLeashTime, v41);
  objc_msgSend_encodeObject_forKey_(coder, v43, v42, @"multiLeashTime");
  v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v44, self->_multiConnectionTime, v45);
  objc_msgSend_encodeObject_forKey_(coder, v47, v46, @"multiConnectionTime");
  v50 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v48, self->_nearOwnerTimeV2, v49);
  objc_msgSend_encodeObject_forKey_(coder, v51, v50, @"nearOwnerTimeV2");
  v54 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v52, self->_singleLeashTime, v53);
  objc_msgSend_encodeObject_forKey_(coder, v55, v54, @"singleLeashTime");
  v58 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v56, self->_singleConnectionTime, v57);
  objc_msgSend_encodeObject_forKey_(coder, v59, v58, @"singleConnectionTime");
  v62 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v60, self->_dualConnectionTime, v61);
  objc_msgSend_encodeObject_forKey_(coder, v63, v62, @"dualConnectionTime");
  v66 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v64, self->_dualLeashTime, v65);
  objc_msgSend_encodeObject_forKey_(coder, v67, v66, @"dualLeashTime");
  v70 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v68, self->_utAccelCount, v69);
  objc_msgSend_encodeObject_forKey_(coder, v71, v70, @"utAccelCount");
  v74 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v72, self->_lastClear, v73);
  objc_msgSend_encodeObject_forKey_(coder, v75, v74, @"lastClear");
  v78 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v76, self->_roseOnTime, v77);
  objc_msgSend_encodeObject_forKey_(coder, v79, v78, @"roseOnTime");
  v82 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v80, self->_ownerLongSoundCount, v81);
  objc_msgSend_encodeObject_forKey_(coder, v83, v82, @"ownerLongSoundCount");
  v86 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v84, self->_ownerShortSoundCount, v85);
  objc_msgSend_encodeObject_forKey_(coder, v87, v86, @"ownerShortSoundCount");
  v90 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v88, self->_utLongSoundCount, v89);
  objc_msgSend_encodeObject_forKey_(coder, v91, v90, @"utLongSoundCount");
  v94 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v92, self->_utShortSoundCount, v93);
  objc_msgSend_encodeObject_forKey_(coder, v95, v94, @"utShortSoundCount");
  v98 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v96, self->_bomSoundCount, v97);
  objc_msgSend_encodeObject_forKey_(coder, v99, v98, @"bomSoundCount");
  v102 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v100, self->_fc1ndRangingCount, v101);
  objc_msgSend_encodeObject_forKey_(coder, v103, v102, @"fc1ndRangingCount");
  v106 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v104, self->_fc1ndRangingTime, v105);
  objc_msgSend_encodeObject_forKey_(coder, v107, v106, @"fc1ndRangingTime");
  v110 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v108, self->_lastPIn, v109);
  objc_msgSend_encodeObject_forKey_(coder, v111, v110, @"lastPin");
  v114 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v112, self->_batteryState, v113);
  objc_msgSend_encodeObject_forKey_(coder, v115, v114, @"batteryState");
  v118 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v116, self->_nbmmsRangingTime, v117);
  objc_msgSend_encodeObject_forKey_(coder, v119, v118, @"nbmmsRangingTime");
  v122 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v120, self->_abandonedFwUpdateCount, v121);
  objc_msgSend_encodeObject_forKey_(coder, v123, v122, @"abandonedFwUpdateCount");
  v126 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v124, self->_abandonedFwUpdateTime, v125);
  objc_msgSend_encodeObject_forKey_(coder, v127, v126, @"abandonedFwUpdateTime");
  v130 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v128, self->_roseInitCount, v129);
  objc_msgSend_encodeObject_forKey_(coder, v131, v130, @"roseInitCount");
  v134 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v132, self->_pairingAttemptsCount, v133);
  objc_msgSend_encodeObject_forKey_(coder, v135, v134, @"proxPairingAttemptsCount");
  v138 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v136, self->_tempVeryLowCount, v137);
  objc_msgSend_encodeObject_forKey_(coder, v139, v138, @"tempVeryLowCount");
  v142 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v140, self->_tempLowCount, v141);
  objc_msgSend_encodeObject_forKey_(coder, v143, v142, @"tempLowCount");
  v146 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v144, self->_tempOkCount, v145);
  objc_msgSend_encodeObject_forKey_(coder, v147, v146, @"tempOkCount");
  v150 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v148, self->_tempHighCount, v149);
  objc_msgSend_encodeObject_forKey_(coder, v151, v150, @"tempHighCount");
  v154 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v152, self->_proxPairingTime, v153);
  objc_msgSend_encodeObject_forKey_(coder, v155, v154, @"proxPairingTime");
  v158 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v156, self->_tempLastPIn, v157);
  objc_msgSend_encodeObject_forKey_(coder, v159, v158, @"lastPInTemperature");
  v162 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v160, self->_nbmmsRangingCount, v161);
  objc_msgSend_encodeObject_forKey_(coder, v163, v162, @"nbmmsRangingCount");
  v167 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v164, self->_version, v165);

  objc_msgSend_encodeObject_forKey_(coder, v166, v167, @"version");
}

+ (id)batteryStateToString:(int64_t)string
{
  if ((string + 1) > 4)
  {
    return @"Unset";
  }

  else
  {
    return off_1E753E850[string + 1];
  }
}

@end