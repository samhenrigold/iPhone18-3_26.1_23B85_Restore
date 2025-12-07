@interface CKLStreamTrafficObserver
- (CKLStreamTrafficObserver)initWithLogTypes:(unint64_t)types;
- (id)parserFromConfigurationMessage:(id)message;
- (void)eventMatched:(id)matched;
- (void)finish;
- (void)parseRequestArrayAndPrint:(id)print;
@end

@implementation CKLStreamTrafficObserver

- (CKLStreamTrafficObserver)initWithLogTypes:(unint64_t)types
{
  v12.receiver = self;
  v12.super_class = CKLStreamTrafficObserver;
  v3 = [(CKLStreamObserver *)&v12 initWithLogTypes:types];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestDictionary = v3->_requestDictionary;
    v3->_requestDictionary = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.cloudkitlog.parseandprint", v6);
    printQueue = v3->_printQueue;
    v3->_printQueue = v7;

    v9 = objc_alloc_init(CKDTrafficLogParser);
    parser = v3->_parser;
    v3->_parser = v9;
  }

  return v3;
}

- (void)eventMatched:(id)matched
{
  v119[1] = *MEMORY[0x277D85DE8];
  matchedCopy = matched;
  v101 = objc_msgSend_category(matchedCopy, v4, v5);
  v8 = objc_msgSend_composedMessage(matchedCopy, v6, v7);
  if ((objc_msgSend_isEqualToString_(v101, v9, @"LogFacilityTraffic") & 1) != 0 || objc_msgSend_isEqualToString_(v101, v10, @"Traffic"))
  {
    if (objc_msgSend_hasPrefix_(v8, v10, @"SIM: "))
    {
      v12 = objc_msgSend_substringFromIndex_(v8, v11, 5);

      v8 = v12;
    }

    hasPrefix = objc_msgSend_hasPrefix_(v8, v11, @"traff-cont: ");
    v16 = objc_msgSend_printQueue(self, v14, v15);
    if (hasPrefix)
    {
      v17 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22519F2A4;
      block[3] = &unk_278545A00;
      v8 = v8;
      block[4] = v8;
      dispatch_async(v16, block);
    }

    else
    {
      v17 = v116;
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = sub_22519F334;
      v116[3] = &unk_278545A00;
      v8 = v8;
      v116[4] = v8;
      dispatch_async(v16, v116);
    }

    v18 = v17[4];
    goto LABEL_9;
  }

  if ((objc_msgSend_isEqualToString_(v101, v10, @"LogFacilityTrafficBinary") & 1) != 0 || objc_msgSend_isEqualToString_(v101, v19, @"TrafficBinary"))
  {
    v21 = [CKLTrafficLogMessageFragment alloc];
    v24 = objc_msgSend_composedMessage(matchedCopy, v22, v23);
    v18 = objc_msgSend_initWithMessage_(v21, v25, v24);

    if (v18)
    {
      v28 = objc_msgSend_requestDictionary(self, v26, v27);
      v31 = objc_msgSend_uuid(v18, v29, v30);
      v33 = objc_msgSend_objectForKeyedSubscript_(v28, v32, v31);

      if (v33)
      {
        if (objc_msgSend_type(v18, v34, v35) == 6)
        {
          v114[0] = 0;
          v114[1] = v114;
          v114[2] = 0x3032000000;
          v114[3] = sub_225073FC0;
          v114[4] = sub_22507356C;
          selfCopy = self;
          v115 = selfCopy;
          v39 = objc_msgSend_printQueue(selfCopy, v37, v38);
          v111[0] = MEMORY[0x277D85DD0];
          v111[1] = 3221225472;
          v111[2] = sub_22519F3A4;
          v111[3] = &unk_278546448;
          v113 = v114;
          v112 = v33;
          dispatch_async(v39, v111);

          v42 = objc_msgSend_requestDictionary(selfCopy, v40, v41);
          v45 = objc_msgSend_uuid(v18, v43, v44);
          objc_msgSend_removeObjectForKey_(v42, v46, v45);

          _Block_object_dispose(v114, 8);
        }

        else
        {
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = sub_22519F3B4;
          v109[3] = &unk_2785486A0;
          v77 = v18;
          v110 = v77;
          v79 = objc_msgSend_indexOfObjectWithOptions_passingTest_(v33, v78, 2, v109);
          if (v79 == 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_msgSend_insertObject_atIndex_(v33, v80, v77, 0);
          }

          else
          {
            objc_msgSend_insertObject_atIndex_(v33, v80, v77, v79 + 1);
          }
        }
      }

      else
      {
        v67 = objc_alloc(MEMORY[0x277CBEB18]);
        v69 = objc_msgSend_initWithObjects_(v67, v68, v18, 0);
        v72 = objc_msgSend_requestDictionary(self, v70, v71);
        v75 = objc_msgSend_uuid(v18, v73, v74);
        objc_msgSend_setObject_forKeyedSubscript_(v72, v76, v69, v75);
      }
    }

    goto LABEL_9;
  }

  if (!objc_msgSend_isEqualToString_(v101, v20, @"TrafficCompressed"))
  {
    goto LABEL_10;
  }

  v49 = objc_msgSend_parser(self, v47, v48);
  v119[0] = v8;
  v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, v119, 1);
  v108 = 0;
  v53 = objc_msgSend_parse_error_(v49, v52, v51, &v108);
  v18 = v108;

  if (v53)
  {
    v56 = objc_msgSend_parser(self, v54, v55);
    v107 = v18;
    v100 = objc_msgSend_consumeParsedTrafficLogsAndReturnError_(v56, v57, &v107);
    v99 = v107;

    if (v99)
    {
      v60 = objc_alloc(MEMORY[0x277CCACA8]);
      v62 = objc_msgSend_initWithFormat_(v60, v61, @"cloudkitlog consume parsed logs error: %@", v99);
      v63 = v62;
      v66 = objc_msgSend_UTF8String(v62, v64, v65);
      puts(v66);
    }

    else
    {
      v18 = objc_msgSend_requestParsedBlock(self, v58, v59);

      if (!v18)
      {
        goto LABEL_29;
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v62 = v100;
      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v87, &v103, v118, 16);
      if (v90)
      {
        v91 = *v104;
        do
        {
          for (i = 0; i != v90; ++i)
          {
            if (*v104 != v91)
            {
              objc_enumerationMutation(v62);
            }

            v93 = *(*(&v103 + 1) + 8 * i);
            v94 = objc_msgSend_logMessageFilter(self, v88, v89);
            if (v94)
            {
              v95 = objc_msgSend_logMessageFilter(self, v88, v89);
              v97 = objc_msgSend_evaluateWithObject_(v95, v96, v93);

              if (!v97)
              {
                continue;
              }
            }

            v98 = objc_msgSend_requestParsedBlock(self, v88, v89);
            v98[2](v98, v93);
          }

          v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v88, &v103, v118, 16);
        }

        while (v90);
      }
    }

    v18 = v99;
  }

  else
  {
    v81 = objc_alloc(MEMORY[0x277CCACA8]);
    v100 = objc_msgSend_initWithFormat_(v81, v82, @"cloudkitlog parse error: %@", v18);
    v83 = v100;
    v86 = objc_msgSend_UTF8String(v100, v84, v85);
    puts(v86);
  }

LABEL_29:

LABEL_9:
LABEL_10:
}

- (void)parseRequestArrayAndPrint:(id)print
{
  v201 = *MEMORY[0x277D85DE8];
  printCopy = print;
  selfCopy = self;
  v7 = objc_msgSend_printQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v10 = objc_msgSend_firstObject(printCopy, v8, v9);
  v172 = objc_msgSend_uuid(v10, v11, v12);

  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v176 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [CKDProtobufResponseBodyParser alloc];
  v17 = objc_opt_class();
  v19 = objc_msgSend_initWithQoS_messageClass_parsingStandaloneMessage_(v16, v18, 25, v17, 0);
  v198[0] = MEMORY[0x277D85DD0];
  v198[1] = 3221225472;
  v198[2] = sub_22519FE88;
  v198[3] = &unk_2785486C8;
  v179 = v15;
  v199 = v179;
  v185 = v19;
  objc_msgSend_setObjectParsedBlock_(v19, v20, v198);
  v182 = objc_opt_new();
  v173 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  obj = printCopy;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v194, v200, 16);
  if (v22)
  {
    v25 = v22;
    v26 = 0;
    v183 = 0;
    v177 = v14;
    v178 = 0;
    v180 = 0;
    v181 = 0;
    v27 = *v195;
    v174 = 0;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v195 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v194 + 1) + 8 * i);
        if (objc_msgSend_seqNum(v29, v23, v24) != v26)
        {
          v32 = objc_alloc(MEMORY[0x277CCACA8]);
          v35 = objc_msgSend_uuid(v29, v33, v34);
          v38 = objc_msgSend_seqNum(v29, v36, v37);
          v40 = objc_msgSend_initWithFormat_(v32, v39, @"cloudkitlog parse error: A traffic log packet for request %@ was likely dropped. Was expecting sequence number %li but received %li. Will attempt to parse but might be unsuccessful", v35, v26, v38, context);
          v41 = v40;
          v44 = objc_msgSend_UTF8String(v41, v42, v43);
          puts(v44);

          v26 = objc_msgSend_seqNum(v29, v45, v46);
        }

        v47 = objc_msgSend_dataString(v29, v30, v31);
        v50 = objc_msgSend_length(v47, v48, v49);

        v53 = objc_msgSend_type(v29, v51, v52);
        if (v53 > 3)
        {
          switch(v53)
          {
            case 4:
              objc_msgSend_setString_(v14, v54, &stru_28385ED00);
              v117 = objc_msgSend_dataString(v29, v115, v116);
              v119 = objc_msgSend_parserFromConfigurationMessage_(selfCopy, v118, v117);

              v190[0] = MEMORY[0x277D85DD0];
              v190[1] = 3221225472;
              v190[2] = sub_22519FF50;
              v190[3] = &unk_2785486C8;
              v191 = v176;
              objc_msgSend_setObjectParsedBlock_(v119, v120, v190);
              v61 = v191;
              v183 = v119;
              break;
            case 5:
              v86 = objc_msgSend_dataString(v29, v54, v55);
              objc_msgSend_appendString_(v14, v87, v86);

              v88 = objc_alloc(MEMORY[0x277CBEA90]);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v88, v89, v14, 0);
              if (v61)
              {
                objc_msgSend_setString_(v14, v90, &stru_28385ED00);
                objc_msgSend_processData_completionHandler_(v183, v91, v61, 0);
                objc_msgSend_appendData_(v173, v92, v61);
              }

              BYTE4(v174) = 1;
              break;
            case 7:
              ++v178;
              v64 = objc_alloc_init(MEMORY[0x277CBEB18]);

              v61 = v185;
              v65 = [CKDProtobufResponseBodyParser alloc];
              v68 = objc_msgSend_messageClass(v61, v66, v67);
              v71 = objc_msgSend_parsingStandaloneMessage(v61, v69, v70);
              v72 = v65;
              v14 = v177;
              v74 = objc_msgSend_initWithQoS_messageClass_parsingStandaloneMessage_(v72, v73, 25, v68, v71);

              v192[0] = MEMORY[0x277D85DD0];
              v192[1] = 3221225472;
              v192[2] = sub_22519FEEC;
              v192[3] = &unk_2785486C8;
              v179 = v64;
              v193 = v179;
              v185 = v74;
              objc_msgSend_setObjectParsedBlock_(v74, v75, v192);
              v76 = objc_opt_new();

              v182 = v76;
              break;
            default:
LABEL_49:
              __assert_rtn("[CKLStreamTrafficObserver parseRequestArrayAndPrint:]", "CKLStreamTrafficObserver.m", 276, "false");
          }
        }

        else
        {
          switch(v53)
          {
            case 1:
              v93 = v13;
              v94 = objc_alloc(MEMORY[0x277CBEA90]);
              v97 = objc_msgSend_dataString(v29, v95, v96);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v94, v98, v97, 0);

              v99 = MEMORY[0x277CCAAC8];
              v100 = objc_opt_class();
              v102 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v99, v101, v100, v61, 0);

              v105 = objc_msgSend_requestClassName(v102, v103, v104);
              v106 = v105;
              v107 = @"CKDPRequestOperation";
              if (v105)
              {
                v107 = v105;
              }

              v108 = v107;

              v110 = NSClassFromString(v108);
              if (!v110)
              {
                v110 = objc_opt_class();
              }

              objc_msgSend_setMessageClass_(v185, v109, v110);
              v113 = objc_msgSend_parsingStandaloneMessage(v102, v111, v112);
              objc_msgSend_setParsingStandaloneMessage_(v185, v114, v113);

              v180 = v102;
              v13 = v93;
              v14 = v177;
              break;
            case 2:
              v77 = objc_alloc(MEMORY[0x277CBEA90]);
              v80 = objc_msgSend_dataString(v29, v78, v79);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v77, v81, v80, 0);

              v82 = MEMORY[0x277CCAAC8];
              v83 = objc_opt_class();
              v85 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v82, v84, v83, v61, 0);

              v181 = v85;
              break;
            case 3:
              v56 = objc_msgSend_dataString(v29, v54, v55);
              objc_msgSend_appendString_(v13, v57, v56);

              v58 = objc_alloc(MEMORY[0x277CBEA90]);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v58, v59, v13, 0);
              if (v61)
              {
                objc_msgSend_setString_(v13, v60, &stru_28385ED00);
                objc_msgSend_processData_completionHandler_(v185, v62, v61, 0);
                objc_msgSend_appendData_(v182, v63, v61);
              }

              LOBYTE(v174) = 1;
              break;
            default:
              goto LABEL_49;
          }
        }

        v26 += v50;
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v194, v200, 16);
    }

    while (v25);
  }

  else
  {
    v174 = 0;
    v183 = 0;
    v178 = 0;
    v180 = 0;
    v181 = 0;
  }

  objc_autoreleasePoolPop(context);
  v121 = dispatch_group_create();
  dispatch_group_enter(v121);
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = sub_22519FFB4;
  v188[3] = &unk_2785470C0;
  v122 = v121;
  v189 = v122;
  objc_msgSend_finishWithCompletion_(v185, v123, v188);
  v124 = v183;
  if (v183)
  {
    dispatch_group_enter(v122);
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = sub_2251A0004;
    v186[3] = &unk_2785470C0;
    v187 = v122;
    objc_msgSend_finishWithCompletion_(v183, v125, v186);
  }

  v126 = dispatch_time(0, 5000000000);
  v129 = v179;
  if (dispatch_group_wait(v122, v126))
  {
    v130 = objc_alloc(MEMORY[0x277CCACA8]);
    v132 = objc_msgSend_initWithFormat_(v130, v131, @"cloudkitlog parse error: request object parser timed out for request %@. Likely lost some request object data logs.", v172);
    v133 = v132;
    v136 = objc_msgSend_UTF8String(v133, v134, v135);
    puts(v136);
  }

  if ((v174 & 1) != 0 && !objc_msgSend_count(v179, v127, v128))
  {
    v137 = objc_alloc(MEMORY[0x277CCACA8]);
    v139 = objc_msgSend_initWithFormat_(v137, v138, @"cloudkitlog parse error: received request object data for request %@ but wasn't able to parse a single request object", v172);
    v140 = v139;
    v143 = objc_msgSend_UTF8String(v140, v141, v142);
    puts(v143);

    v145 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v144, @"/tmp/%@.request.dat", v172);
    objc_msgSend_writeToFile_atomically_(v182, v146, v145, 0);
    NSLog(&cfstr_WroteRawReques.isa, v145);
  }

  if ((v174 & 0x100000000) != 0 && !objc_msgSend_count(v176, v127, v128))
  {
    v147 = objc_alloc(MEMORY[0x277CCACA8]);
    v149 = objc_msgSend_initWithFormat_(v147, v148, @"cloudkitlog parse error: received response object data for request %@ but wasn't able to parse a single response object", v172);
    v150 = v149;
    v153 = objc_msgSend_UTF8String(v150, v151, v152);
    puts(v153);

    v155 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v154, @"/tmp/%@.response.dat", v172);
    objc_msgSend_writeToFile_atomically_(v173, v156, v155, 0);
    NSLog(&cfstr_WroteRawRespon.isa, v155);
  }

  v157 = objc_msgSend_requestParsedBlock(selfCopy, v127, v128);

  if (v157)
  {
    v158 = [CKLTrafficLogMessage alloc];
    v160 = objc_msgSend_initWithUuid_requestMetadata_requestObjects_bodyStreamResetCount_responseMetadata_responseObjects_(v158, v159, v172, v180, v179, v178, v181, v176);
    v163 = objc_msgSend_logMessageFilter(selfCopy, v161, v162);
    if (!v163 || (v166 = v163, objc_msgSend_logMessageFilter(selfCopy, v164, v165), v167 = objc_claimAutoreleasedReturnValue(), v169 = objc_msgSend_evaluateWithObject_(v167, v168, v160), v167, v129 = v179, v166, v169))
    {
      v170 = objc_msgSend_requestParsedBlock(selfCopy, v164, v165);
      (v170)[2](v170, v160);
    }

    v124 = v183;
  }
}

- (void)finish
{
  v3 = objc_msgSend_printQueue(self, a2, v2);
  dispatch_sync(v3, &unk_28385D320);
}

- (id)parserFromConfigurationMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc(MEMORY[0x277CBEA90]);
  v6 = objc_msgSend_initWithBase64EncodedString_options_(v4, v5, messageCopy, 0);
  v7 = MEMORY[0x277CCAAC8];
  v8 = objc_opt_class();
  v10 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0);
  v12 = objc_msgSend_substringWithRange_(v10, v11, 0, 1);
  v15 = objc_msgSend_integerValue(v12, v13, v14);

  if (v15 <= 1)
  {
    if (!v15)
    {
LABEL_9:
      v18 = objc_msgSend_substringFromIndex_(v10, v16, 2);
      v19 = v18;
      if (v18)
      {
        v20 = NSClassFromString(v18);
        v21 = [CKDProtobufResponseBodyParser alloc];
        v23 = objc_msgSend_initWithQoS_messageClass_parsingStandaloneMessage_(v21, v22, 25, v20, v15 == 4);
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_16;
    }

    if (v15 != 1)
    {
      goto LABEL_19;
    }

    v17 = CKDJSONResponseBodyParser;
  }

  else
  {
    switch(v15)
    {
      case 2:
        v17 = CKDPlistResponseBodyParser;
        break;
      case 3:
        v17 = CKDPlaintextResponseBodyParser;
        break;
      case 4:
        goto LABEL_9;
      default:
LABEL_19:
        __assert_rtn("[CKLStreamTrafficObserver parserFromConfigurationMessage:]", "CKLStreamTrafficObserver.m", 366, "false");
    }
  }

  v24 = [v17 alloc];
  v23 = objc_msgSend_initWithQoS_(v24, v25, 25);
LABEL_16:

  return v23;
}

@end