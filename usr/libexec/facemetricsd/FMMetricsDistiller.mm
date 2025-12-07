@interface FMMetricsDistiller
+ (id)packetFromMetrics:(id)metrics withSessionId:(unint64_t)id andUnlockSessionId:(unint64_t)sessionId withSecondsFromStart:(double)start andMessageSessionId:(unint64_t)messageSessionId withSecondsFromStart:(double)fromStart;
@end

@implementation FMMetricsDistiller

+ (id)packetFromMetrics:(id)metrics withSessionId:(unint64_t)id andUnlockSessionId:(unint64_t)sessionId withSecondsFromStart:(double)start andMessageSessionId:(unint64_t)messageSessionId withSecondsFromStart:(double)fromStart
{
  metricsCopy = metrics;
  v14 = metricsCopy;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  memset(v157, 0, sizeof(v157));
  v156 = 0u;
  v155 = 0u;
  memset(v154, 0, sizeof(v154));
  v153 = 5;
  v15 = sessionId != 0;
  v16 = 2;
  if (sessionId)
  {
    v16 = 3;
  }

  if (messageSessionId)
  {
    v15 = v16;
  }

  *(&v154[1] + 12) = v15;
  *(&v154[1] + 4) = id;
  *(&v154[2] + 4) = sessionId;
  *(&v154[2] + 12) = start;
  *(&v154[3] + 4) = messageSessionId;
  *(&v154[3] + 12) = fromStart;
  v17 = sub_100004784(metricsCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    sessionIdCopy = sessionId;
    v145 = 2048;
    startCopy = start;
    v147 = 2048;
    messageSessionIdCopy = messageSessionId;
    v149 = 2048;
    fromStartCopy = fromStart;
    v151 = 2048;
    idCopy = id;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "lock_session_id = %llu, seconds from device unlocked to packet = %f, message_session_id = %llu, seconds from message app session start to packet = %f, session_id = %llu", buf, 0x34u);
  }

  v18 = [v14 objectForKeyedSubscript:kCVAFaceTracking_TrackedFacesArray];
  firstObject = [v18 firstObject];

  if (firstObject)
  {
    v21 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_FailureType];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 isEqualToNumber:&off_10000C7E8];
      if ((v23 & 1) == 0)
      {
        v25 = sub_100004784(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          intValue = [v22 intValue];
          *buf = 67109120;
          LODWORD(sessionIdCopy) = intValue;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "kCVAFaceTracking_FailureType => %d", buf, 8u);
        }

        v118 = 0;
        goto LABEL_149;
      }
    }

    isKindOfClass = [firstObject objectForKeyedSubscript:kCVAFaceTracking_FaceID];
    v25 = isKindOfClass;
    if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
    {
      v27 = sub_100004784(isKindOfClass);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000067A0();
      }

      v118 = 0;
      goto LABEL_148;
    }

    v26 = [[NSUUID alloc] initWithUUIDString:v25];
    v27 = v26;
    if (!v26)
    {
      v28 = sub_100004784(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10000676C();
      }

      v118 = 0;
      goto LABEL_147;
    }

    [v26 getUUIDBytes:v154];
    v28 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_Identity];
    if (v28)
    {
      v29 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_RawData];
      v30 = v29;
      if (v29)
      {
        v31 = [v29 objectForKeyedSubscript:kCVAFaceTracking_Pose];
        v142 = [v31 objectForKeyedSubscript:kCVAFaceTracking_Rotation];
        if (!v142)
        {
          v38 = sub_100004784(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            sub_100006704();
          }

          v118 = 0;
          goto LABEL_145;
        }

        v140 = v28;
        v141 = v31;
        v139 = v30;
        v32 = 0;
        v33 = &v154[4] + 4;
        do
        {
          v34 = [v142 objectAtIndexedSubscript:v32];
          for (i = 0; i != 3; ++i)
          {
            v36 = [v34 objectAtIndexedSubscript:i];
            [v36 floatValue];
            *&v33[4 * i] = v37;
          }

          ++v32;
          v33 += 12;
        }

        while (v32 != 3);
        v31 = v141;
        v38 = [v141 objectForKeyedSubscript:kCVAFaceTracking_Translation];
        if (!v38)
        {
          sub_100004784(0);
          v138 = v28 = v140;
          if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
          {
            sub_1000066D0();
          }

          v118 = 0;
          v30 = v139;
          goto LABEL_144;
        }

        v39 = 0;
        v28 = v140;
        do
        {
          v40 = [v38 objectAtIndexedSubscript:v39];
          [v40 floatValue];
          *(&v155 + v39 + 2) = v41;

          ++v39;
        }

        while (v39 != 3);
        v42 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_SmoothData];
        v138 = v42;
        if (!v42)
        {
          v137 = sub_100004784(0);
          v31 = v141;
          if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
          {
            sub_10000669C();
          }

          v118 = 0;
          v30 = v139;
          goto LABEL_143;
        }

        v136 = v38;
        v137 = [v42 objectForKeyedSubscript:kCVAFaceTracking_Geometry];
        v43 = [v137 objectForKeyedSubscript:kCVAFaceTracking_GeometryLeftEye];
        v135 = v43;
        if (!v43)
        {
          v48 = sub_100004784(0);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            sub_100006668();
          }

          v118 = 0;
          v30 = v139;
          v31 = v141;
          goto LABEL_142;
        }

        v44 = 0;
        v45 = v43;
        do
        {
          v46 = [v45 objectAtIndexedSubscript:v44];
          [v46 floatValue];
          v157[v44 - 3] = v47;

          ++v44;
        }

        while (v44 != 3);
        v48 = [v137 objectForKeyedSubscript:kCVAFaceTracking_GeometryRightEye];
        if (!v48)
        {
          v134 = sub_100004784(0);
          if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
          {
            sub_100006634();
          }

          v118 = 0;
          v30 = v139;
          v31 = v141;
          goto LABEL_141;
        }

        for (j = 0; j != 3; ++j)
        {
          v50 = [v48 objectAtIndexedSubscript:j];
          [v50 floatValue];
          v157[j] = v51;
        }

        v30 = v139;
        v52 = [v139 objectForKeyedSubscript:kCVAFaceTracking_Animation];
        v134 = v52;
        if (!v52)
        {
          v133 = sub_100004784(0);
          v31 = v141;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
          {
            sub_100006600();
          }

          v118 = 0;
          goto LABEL_140;
        }

        v53 = v52;
        v54 = [v52 objectForKeyedSubscript:kCVAFaceTracking_AnimationLeftEyePitch];
        v31 = v141;
        v133 = v54;
        if (!v54)
        {
          v132 = sub_100004784(0);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
          {
            sub_1000065CC();
          }

          v118 = 0;
          goto LABEL_139;
        }

        [v54 floatValue];
        v157[3] = v55;
        v56 = [v53 objectForKeyedSubscript:kCVAFaceTracking_AnimationLeftEyeYaw];
        v132 = v56;
        if (!v56)
        {
          v131 = sub_100004784(0);
          if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
          {
            sub_100006598();
          }

          v118 = 0;
          goto LABEL_138;
        }

        [v56 floatValue];
        v157[4] = v57;
        v58 = [v53 objectForKeyedSubscript:kCVAFaceTracking_AnimationRightEyePitch];
        v131 = v58;
        if (!v58)
        {
          v130 = sub_100004784(0);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
          {
            sub_100006564();
          }

          v118 = 0;
          goto LABEL_137;
        }

        [v58 floatValue];
        v157[5] = v59;
        v60 = [v53 objectForKeyedSubscript:kCVAFaceTracking_AnimationRightEyeYaw];
        v130 = v60;
        if (!v60)
        {
          v129 = sub_100004784(0);
          if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
          {
            sub_100006530();
          }

          v118 = 0;
          goto LABEL_136;
        }

        [v60 floatValue];
        v157[6] = v61;
        v62 = [v53 objectForKeyedSubscript:kCVAFaceTracking_AnimationGaze];
        v129 = v62;
        if (!v62)
        {
          v68 = sub_100004784(0);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            sub_1000064FC();
          }

          v118 = 0;
          v30 = v139;
          goto LABEL_135;
        }

        v63 = 0;
        v64 = v62;
        do
        {
          v65 = [v64 objectAtIndexedSubscript:v63];
          [v65 floatValue];
          v157[v63 + 7] = v66;

          ++v63;
        }

        while (v63 != 3);
        v67 = [v134 objectForKeyedSubscript:kCVAFaceTracking_AnimationBlendshapes];
        v68 = v67;
        if (v67)
        {
          v69 = [v67 length];
          if (v69 == 204)
          {
            [v68 getBytes:&v157[10] length:204];
            v128 = [v139 objectForKeyedSubscript:kCVA_djFOfwkPKZLtBeTcoU4KH4u1];
            if (!v128)
            {
              v71 = sub_100004784(0);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                sub_100006494();
              }

              v118 = 0;
              goto LABEL_133;
            }

            v70 = [v128 objectForKeyedSubscript:kCVA_aZUZUIKi1SJ7vFd5h8tqxqYH];
            v71 = v70;
            if (v70)
            {
              v72 = [v70 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_0];
              if (v72)
              {
                v73 = v72;
                [v72 floatValue];
                DWORD1(v158) = v74;
                v75 = [v71 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_1];

                if (v75)
                {
                  [v75 floatValue];
                  DWORD2(v158) = v77;
                  v78 = [v71 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_4];

                  if (v78)
                  {
                    [v78 floatValue];
                    HIDWORD(v158) = v80;
                    v81 = [v71 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_5];

                    if (v81)
                    {
                      [v81 floatValue];
                      LODWORD(v159) = v83;
                      v84 = [v71 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_7];

                      if (v84)
                      {
                        [v84 floatValue];
                        DWORD1(v159) = v86;
                        v87 = [v71 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_8];

                        if (v87)
                        {
                          [v87 floatValue];
                          DWORD2(v159) = v89;
                          v90 = [v71 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_9];

                          v124 = v90;
                          if (v90)
                          {
                            [v90 floatValue];
                            HIDWORD(v159) = v92;
                            v93 = [v128 objectForKeyedSubscript:kCVA_wiynFaZQYeLg1fqOn2pZOXAG];
                            v94 = v93;
                            if (v93)
                            {
                              v95 = [v93 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_0];

                              if (v95)
                              {
                                [v95 floatValue];
                                LODWORD(v160) = v97;
                                v125 = [v94 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_1];

                                if (v125)
                                {
                                  [v125 floatValue];
                                  DWORD1(v160) = v99;
                                  v100 = [v94 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_2];

                                  if (v100)
                                  {
                                    v122 = v100;
                                    [v100 floatValue];
                                    DWORD2(v160) = v102;
                                    v103 = [v94 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_3];

                                    if (v103)
                                    {
                                      v126 = v103;
                                      [v103 floatValue];
                                      HIDWORD(v160) = v105;
                                      v106 = [v94 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_4];

                                      if (v106)
                                      {
                                        v123 = v106;
                                        [v106 floatValue];
                                        LODWORD(v161) = v108;
                                        v109 = [v94 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_5];

                                        if (v109)
                                        {
                                          v127 = v109;
                                          [v109 floatValue];
                                          DWORD1(v161) = v111;
                                          v112 = [v94 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_6];

                                          if (v112)
                                          {
                                            [v112 floatValue];
                                            DWORD2(v161) = v114;
                                            v124 = [v94 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_7];

                                            if (v124)
                                            {
                                              [v124 floatValue];
                                              HIDWORD(v161) = v116;
                                              v117 = dword_100011200++;
                                              LODWORD(v154[1]) = v117;
                                              v118 = [NSData dataWithBytes:&v153 length:436];
LABEL_173:

                                              goto LABEL_132;
                                            }

                                            v124 = sub_100004784(v115);
                                            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                            {
                                              sub_100006120();
                                            }
                                          }

                                          else
                                          {
                                            v124 = sub_100004784(v113);
                                            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                            {
                                              sub_100006154();
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v124 = sub_100004784(v110);
                                          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                          {
                                            sub_100006188();
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v124 = sub_100004784(v107);
                                        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                        {
                                          sub_1000061BC();
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v124 = sub_100004784(v104);
                                      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                      {
                                        sub_1000061F0();
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v124 = sub_100004784(v101);
                                    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                    {
                                      sub_100006224();
                                    }
                                  }
                                }

                                else
                                {
                                  v124 = sub_100004784(v98);
                                  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_100006258();
                                  }
                                }
                              }

                              else
                              {
                                v124 = sub_100004784(v96);
                                if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                                {
                                  sub_10000628C();
                                }
                              }
                            }

                            else
                            {
                              v121 = sub_100004784(0);
                              if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                              {
                                sub_1000062C0();
                              }
                            }

                            v118 = 0;
                            goto LABEL_173;
                          }

                          v94 = sub_100004784(v91);
                          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                          {
                            sub_1000062F4();
                          }
                        }

                        else
                        {
                          v94 = sub_100004784(v88);
                          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                          {
                            sub_100006328();
                          }
                        }
                      }

                      else
                      {
                        v94 = sub_100004784(v85);
                        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                        {
                          sub_10000635C();
                        }
                      }
                    }

                    else
                    {
                      v94 = sub_100004784(v82);
                      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                      {
                        sub_100006390();
                      }
                    }
                  }

                  else
                  {
                    v94 = sub_100004784(v79);
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000063C4();
                    }
                  }
                }

                else
                {
                  v94 = sub_100004784(v76);
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000063F8();
                  }
                }
              }

              else
              {
                v94 = sub_100004784(0);
                if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  sub_10000642C();
                }
              }
            }

            else
            {
              v94 = sub_100004784(0);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                sub_100006460();
              }
            }

            v118 = 0;
LABEL_132:

LABEL_133:
            goto LABEL_134;
          }

          v128 = sub_100004784(v69);
          if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
          {
            sub_100006084(v68, v128);
          }
        }

        else
        {
          v128 = sub_100004784(0);
          if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
          {
            sub_1000064C8();
          }
        }

        v118 = 0;
LABEL_134:
        v30 = v139;
        v31 = v141;

LABEL_135:
LABEL_136:

LABEL_137:
LABEL_138:

LABEL_139:
LABEL_140:

LABEL_141:
LABEL_142:

        v38 = v136;
        v28 = v140;
LABEL_143:

LABEL_144:
LABEL_145:

        goto LABEL_146;
      }
    }

    else
    {
      v30 = sub_100004784(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_100006738();
      }
    }

    v118 = 0;
LABEL_146:

LABEL_147:
LABEL_148:

LABEL_149:
    goto LABEL_150;
  }

  v22 = sub_100004784(v20);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1000067D4();
  }

  v118 = 0;
LABEL_150:

  return v118;
}

@end